`timescale 1ns/1ps
`include "common_opcodes.vh"

// cond_sel encodings (3 bits):
// 0 = force base-2 backend
// 1 = force base-10 backend
// 2 = force base-12 backend
// 3 = router across base-2 / base-10 / base-12 (original behaviour)
// 4 = router restricted to base-2 and base-10 (duodecimal ops fall back to
//     whichever backend has the shorter programmed duodecimal latency)
module router_extended #(
  // expose latencies to let you tweak in synthesis/bitstream builds
  parameter B2_LAT_BIN  = 1, B2_LAT_DEC  = 8, B2_LAT_DUO  = 6,
  parameter B10_LAT_DEC = 1, B10_LAT_BIN = 6, B10_LAT_DUO = 6,
  parameter B12_LAT_DUO = 1, B12_LAT_BIN = 6, B12_LAT_DEC = 8
)(
  input  wire        clk,
  input  wire        rst,
  input  wire        start,
  input  wire [2:0]  cond_sel,
  input  wire [3:0]  opcode,
  input  wire [15:0] op_a,
  input  wire [15:0] op_b,
  output reg         busy,
  output reg         done,
  output reg  [31:0] result
);

  // Decide whether to route or force a backend.
  localparam [1:0] ROUTE_SENTINEL = 2'd3;
  wire [1:0] forced_target = (cond_sel <= 3'd2) ? cond_sel[1:0] : ROUTE_SENTINEL;

  wire [1:0] full_router_target =
      (opcode <= `OP_BIN_MUL)   ? 2'd0 :
      (opcode <= `OP_DEC_MUL10) ? 2'd1 :
                                  2'd2;

  // When limited to base-2/base-10 choose the faster duodecimal emulator.
  localparam [1:0] DUO_FALLBACK_TARGET = (B10_LAT_DUO <= B2_LAT_DUO) ? 2'd1 : 2'd0;
  wire [1:0] router_210_target =
      (opcode <= `OP_BIN_MUL)   ? 2'd0 :
      (opcode <= `OP_DEC_MUL10) ? 2'd1 :
                                  DUO_FALLBACK_TARGET;

  wire [1:0] routed_target =
      (forced_target != ROUTE_SENTINEL) ? forced_target :
      (cond_sel == 3'd3) ? full_router_target :
      (cond_sel == 3'd4) ? router_210_target :
                           full_router_target; // default safety

  // Sub-ALUs
  reg  start_b2, start_b10, start_b12;
  wire busy_b2, done_b2;   wire [31:0] res_b2;
  wire busy_b10, done_b10; wire [31:0] res_b10;
  wire busy_b12, done_b12; wire [31:0] res_b12;

  base2_alu #(.LAT_BIN(B2_LAT_BIN), .LAT_DEC(B2_LAT_DEC), .LAT_DUO(B2_LAT_DUO)) u_b2(
    .clk(clk), .rst(rst), .start(start_b2), .opcode(opcode), .a(op_a), .b(op_b),
    .busy(busy_b2), .done(done_b2), .result(res_b2)
  );
  base10_alu #(.LAT_DEC(B10_LAT_DEC), .LAT_BIN(B10_LAT_BIN), .LAT_DUO(B10_LAT_DUO)) u_b10(
    .clk(clk), .rst(rst), .start(start_b10), .opcode(opcode), .a(op_a), .b(op_b),
    .busy(busy_b10), .done(done_b10), .result(res_b10)
  );
  base12_alu #(.LAT_DUO(B12_LAT_DUO), .LAT_BIN(B12_LAT_BIN), .LAT_DEC(B12_LAT_DEC)) u_b12(
    .clk(clk), .rst(rst), .start(start_b12), .opcode(opcode), .a(op_a), .b(op_b),
    .busy(busy_b12), .done(done_b12), .result(res_b12)
  );

  // Simple FSM to kick the chosen backend and wait for completion.
  localparam S_IDLE=0, S_WAIT=1;
  reg [0:0] st;

  always @(posedge clk) begin
    if (rst) begin
      st <= S_IDLE; busy <= 1'b0; done <= 1'b0;
      start_b2 <= 1'b0; start_b10 <= 1'b0; start_b12 <= 1'b0;
      result <= 32'd0;
    end else begin
      done <= 1'b0;
      start_b2 <= 1'b0; start_b10 <= 1'b0; start_b12 <= 1'b0;

      case (st)
        S_IDLE: begin
          if (start) begin
            busy <= 1'b1;
            if (routed_target==2'd0) start_b2  <= 1'b1;
            if (routed_target==2'd1) start_b10 <= 1'b1;
            if (routed_target==2'd2) start_b12 <= 1'b1;
            st <= S_WAIT;
          end
        end
        S_WAIT: begin
          if ( (routed_target==2'd0 && done_b2) ||
               (routed_target==2'd1 && done_b10) ||
               (routed_target==2'd2 && done_b12) ) begin
            result <= (routed_target==2'd0) ? res_b2 :
                      (routed_target==2'd1) ? res_b10 :
                                              res_b12;
            done   <= 1'b1;
            busy   <= 1'b0;
            st     <= S_IDLE;
          end
        end
      endcase
    end
  end
endmodule
