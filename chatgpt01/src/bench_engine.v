`timescale 1ns/1ps
`include "common_opcodes.vh"

module bench_engine #(
  parameter B2_LAT_BIN  = 1, B2_LAT_DEC  = 8, B2_LAT_DUO  = 6,
  parameter B10_LAT_DEC = 1, B10_LAT_BIN = 6, B10_LAT_DUO = 6,
  parameter B12_LAT_DUO = 1, B12_LAT_BIN = 6, B12_LAT_DEC = 8
)(
  input  wire        clk,
  input  wire        rst,
  input  wire        start,            // 1-cycle pulse to begin a full run
  output wire [3:0]  led_onehot,       // cond0..3 one-hot (internal order)
  output wire [31:0] t_cond0, t_cond1, t_cond2, t_cond3,
  output reg         done,             // high after run completes (clears on next start/reset)
  output reg  [1:0]  winner_code       // 0=Base2,1=Base10,2=Base12,3=Router
);

  // 9 ops (3 per "base family")
  reg [3:0]  ops [0:8];
  reg [15:0] opa [0:8];
  reg [15:0] opb [0:8];

  // Initialize on reset (so hardware & sim match)
  always @(posedge clk) begin
    if (rst) begin
      // ops
      ops[0] <= `OP_BIN_ADD;   ops[1] <= `OP_BIN_SUB;   ops[2] <= `OP_BIN_MUL;
      ops[3] <= `OP_DEC_ADD;   ops[4] <= `OP_DEC_SUB;   ops[5] <= `OP_DEC_MUL10;
      ops[6] <= `OP_DUO_ADD12; ops[7] <= `OP_DUO_SUB12; ops[8] <= `OP_DUO_MUL3;
      // operands
      opa[0]<=16'd1000; opb[0]<=16'd1234;
      opa[1]<=16'd3000; opb[1]<=16'd1234;
      opa[2]<=16'd73;   opb[2]<=16'd91;
      opa[3]<=16'd2345; opb[3]<=16'd6789;
      opa[4]<=16'd9000; opb[4]<=16'd1234;
      opa[5]<=16'd1234; opb[5]<=16'd0;
      opa[6]<=16'd1023; opb[6]<=16'd2047;
      opa[7]<=16'd5000; opb[7]<=16'd1337;
      opa[8]<=16'd4095; opb[8]<=16'd0;
    end
  end

  // Router under test
  reg         r_start;
  reg  [1:0]  r_cond;
  reg  [3:0]  r_opcode;
  reg  [15:0] r_a, r_b;
  wire        r_done;

  router #(
    .B2_LAT_BIN(B2_LAT_BIN),   .B2_LAT_DEC(B2_LAT_DEC),   .B2_LAT_DUO(B2_LAT_DUO),
    .B10_LAT_DEC(B10_LAT_DEC), .B10_LAT_BIN(B10_LAT_BIN), .B10_LAT_DUO(B10_LAT_DUO),
    .B12_LAT_DUO(B12_LAT_DUO), .B12_LAT_BIN(B12_LAT_BIN), .B12_LAT_DEC(B12_LAT_DEC)
  ) u_router (
    .clk(clk), .rst(rst), .start(r_start), .cond_sel(r_cond),
    .opcode(r_opcode), .op_a(r_a), .op_b(r_b),
    .busy(), .done(r_done), .result()
  );

  // cycle totals
  reg [31:0] time_cond [0:3];
  assign t_cond0 = time_cond[0];
  assign t_cond1 = time_cond[1];
  assign t_cond2 = time_cond[2];
  assign t_cond3 = time_cond[3];

  // FSM
  localparam S_IDLE=0, S_LOAD=1, S_START=2, S_WAIT=3, S_NEXT_OP=4, S_NEXT_COND=5, S_DONE=6;
  reg [2:0] st;
  reg [1:0] cond_idx;
  reg [3:0] op_idx;
  reg [31:0] cond_cycle_acc;

  // Winner compute + latch (no early LED0)
  reg [1:0] best_cond;
  wire [31:0] c0=time_cond[0], c1=time_cond[1], c2=time_cond[2], c3=time_cond[3];
  wire [3:0] winner_onehot_now = (best_cond==2'd0) ? 4'b0001 :
                                 (best_cond==2'd1) ? 4'b0010 :
                                 (best_cond==2'd2) ? 4'b0100 :
                                                      4'b1000;
  reg        winner_valid;
  reg [3:0]  winner_onehot_latched;

  // min-of-4 with deterministic tie-break: Router > Base12 > Base10 > Base2
  always @* begin : MINSEL
    reg [1:0] idx; reg [31:0] minv;
    idx = 2'd3; minv = c3;
    if (c2 <= minv) begin minv = c2; idx = 2'd2; end
    if (c1 <= minv) begin minv = c1; idx = 2'd1; end
    if (c0 <= minv) begin minv = c0; idx = 2'd0; end
    best_cond = idx;
  end

  // Drive LEDs only after DONE; otherwise off
  wire [3:0] led_onehot_internal = winner_valid ? winner_onehot_latched : 4'b0000;
  assign led_onehot = led_onehot_internal;

  // Sequential
  always @(posedge clk) begin
    if (rst) begin
      st <= S_IDLE; cond_idx <= 2'd0; op_idx <= 4'd0;
      r_start <= 1'b0; r_cond <= 2'd0; r_opcode <= 4'd0; r_a <= 16'd0; r_b <= 16'd0;
      time_cond[0] <= 32'd0; time_cond[1] <= 32'd0; time_cond[2] <= 32'd0; time_cond[3] <= 32'd0;
      cond_cycle_acc <= 32'd0;
      winner_valid <= 1'b0; winner_onehot_latched <= 4'b0000; done <= 1'b0; winner_code <= 2'd0;
    end else begin
      r_start <= 1'b0;

      case (st)
        S_IDLE: begin
          done <= 1'b0;
          winner_valid <= 1'b0;
          if (start) begin
            // clear accumulators and start condition 0
            cond_idx <= 2'd0; op_idx <= 4'd0; cond_cycle_acc <= 32'd0;
            time_cond[0] <= 32'd0; time_cond[1] <= 32'd0; time_cond[2] <= 32'd0; time_cond[3] <= 32'd0;
            st <= S_LOAD;
          end
        end

        S_LOAD: begin
          r_a      <= opa[op_idx];
          r_b      <= opb[op_idx];
          r_opcode <= ops[op_idx];
          r_cond   <= cond_idx;
          st       <= S_START;
        end

        S_START: begin
          r_start <= 1'b1;
          st      <= S_WAIT;
        end

        S_WAIT: begin
          cond_cycle_acc <= cond_cycle_acc + 32'd1;
          if (r_done) begin
            st <= S_NEXT_OP;
          end
        end

        S_NEXT_OP: begin
          if (op_idx == 4'd8) begin
            time_cond[cond_idx] <= cond_cycle_acc;
            st <= S_NEXT_COND;
          end else begin
            op_idx <= op_idx + 4'd1;
            st <= S_LOAD;
          end
        end

        S_NEXT_COND: begin
          if (cond_idx == 2'd3) begin
            // finalize winner
            winner_onehot_latched <= winner_onehot_now;
            winner_code           <= best_cond;
            winner_valid          <= 1'b1;
            done                  <= 1'b1;
            st <= S_DONE;
          end else begin
            cond_idx <= cond_idx + 2'd1;
            op_idx   <= 4'd0;
            cond_cycle_acc <= 32'd0;
            st <= S_LOAD;
          end
        end

        S_DONE: begin
          // wait for next start
          if (start) begin
            done <= 1'b0; winner_valid <= 1'b0;
            cond_idx <= 2'd0; op_idx <= 4'd0; cond_cycle_acc <= 32'd0;
            time_cond[0] <= 32'd0; time_cond[1] <= 32'd0; time_cond[2] <= 32'd0; time_cond[3] <= 32'd0;
            st <= S_LOAD;
          end
        end
        default: st <= S_IDLE;
      endcase
    end
  end
endmodule
