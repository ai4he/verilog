`timescale 1ns/1ps
`include "common_opcodes.vh"

module bench_engine_router210 #(
  parameter B2_LAT_BIN  = 1, B2_LAT_DEC  = 8, B2_LAT_DUO  = 6,
  parameter B10_LAT_DEC = 1, B10_LAT_BIN = 6, B10_LAT_DUO = 6,
  parameter B12_LAT_DUO = 1, B12_LAT_BIN = 6, B12_LAT_DEC = 8
)(
  input  wire        clk,
  input  wire        rst,
  input  wire        start,
  output wire [4:0]  led_onehot,
  output wire [31:0] t_cond0, t_cond1, t_cond2, t_cond3, t_cond4,
  output reg  [31:0] t_total,
  output reg  [31:0] t_runtime,
  output wire [15:0] ops_per_condition,
  output reg         done,
  output reg  [2:0]  winner_code
);

  localparam integer NUM_OPS = 18;
  localparam integer OP_IDX_WIDTH = $clog2(NUM_OPS);

  // Operation ROM (six operations per base family to stress the router)
  reg [3:0]  ops [0:NUM_OPS-1];
  reg [15:0] opa [0:NUM_OPS-1];
  reg [15:0] opb [0:NUM_OPS-1];

  assign ops_per_condition = NUM_OPS;

  // Initialize on reset (so hardware & sim match)
  always @(posedge clk) begin
    if (rst) begin
      // ops
      ops[0] <= `OP_BIN_ADD;   ops[1] <= `OP_BIN_SUB;   ops[2] <= `OP_BIN_MUL;
      ops[3] <= `OP_DEC_ADD;   ops[4] <= `OP_DEC_SUB;   ops[5] <= `OP_DEC_MUL10;
      ops[6] <= `OP_DUO_ADD12; ops[7] <= `OP_DUO_SUB12; ops[8] <= `OP_DUO_MUL3;
      ops[9]  <= `OP_BIN_ADD;    ops[10] <= `OP_BIN_SUB;   ops[11] <= `OP_BIN_MUL;
      ops[12] <= `OP_DEC_ADD;    ops[13] <= `OP_DEC_SUB;   ops[14] <= `OP_DEC_MUL10;
      ops[15] <= `OP_DUO_ADD12;  ops[16] <= `OP_DUO_SUB12; ops[17] <= `OP_DUO_MUL3;
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
      opa[9]<=16'd45000;  opb[9]<=16'd12345;
      opa[10]<=16'd60000; opb[10]<=16'd15000;
      opa[11]<=16'd321;   opb[11]<=16'd123;
      opa[12]<=16'd7654;  opb[12]<=16'd3210;
      opa[13]<=16'd9876;  opb[13]<=16'd5432;
      opa[14]<=16'd4095;  opb[14]<=16'd0;
      opa[15]<=16'd3587;  opb[15]<=16'd2444;
      opa[16]<=16'd2777;  opb[16]<=16'd888;
      opa[17]<=16'd3333;  opb[17]<=16'd0;
    end
  end

  // Router under test
  reg         r_start;
  reg  [2:0]  r_cond;
  reg  [3:0]  r_opcode;
  reg  [15:0] r_a, r_b;
  wire        r_done;

  router_extended #(
    .B2_LAT_BIN(B2_LAT_BIN),   .B2_LAT_DEC(B2_LAT_DEC),   .B2_LAT_DUO(B2_LAT_DUO),
    .B10_LAT_DEC(B10_LAT_DEC), .B10_LAT_BIN(B10_LAT_BIN), .B10_LAT_DUO(B10_LAT_DUO),
    .B12_LAT_DUO(B12_LAT_DUO), .B12_LAT_BIN(B12_LAT_BIN), .B12_LAT_DEC(B12_LAT_DEC)
  ) u_router (
    .clk(clk), .rst(rst), .start(r_start), .cond_sel(r_cond),
    .opcode(r_opcode), .op_a(r_a), .op_b(r_b),
    .busy(), .done(r_done), .result()
  );

  // cycle totals
  reg [31:0] time_cond [0:4];
  assign t_cond0 = time_cond[0];
  assign t_cond1 = time_cond[1];
  assign t_cond2 = time_cond[2];
  assign t_cond3 = time_cond[3];
  assign t_cond4 = time_cond[4];

  // FSM
  localparam S_IDLE=0, S_LOAD=1, S_START=2, S_WAIT=3, S_NEXT_OP=4, S_NEXT_COND=5, S_DONE=6;
  reg [2:0] st;
  reg [2:0] cond_idx;
  reg [OP_IDX_WIDTH-1:0] op_idx;
  reg [31:0] cond_cycle_acc;

  reg        runtime_active;
  reg [31:0] runtime_counter;

  // Winner compute + latch
  reg [2:0] best_cond;
  wire [31:0] c0=time_cond[0], c1=time_cond[1], c2=time_cond[2], c3=time_cond[3], c4=time_cond[4];
  wire [4:0] winner_onehot_now = (best_cond==3'd0) ? 5'b0_0001 :
                                 (best_cond==3'd1) ? 5'b0_0010 :
                                 (best_cond==3'd2) ? 5'b0_0100 :
                                 (best_cond==3'd3) ? 5'b0_1000 :
                                                      5'b1_0000;
  reg        winner_valid;
  reg [4:0]  winner_onehot_latched;

  // min-of-5 with deterministic tie-break: Router(2&10&12) > Router(2&10) > Base12 > Base10 > Base2
  always @* begin : MINSEL
    reg [2:0] idx; reg [31:0] minv;
    idx = 3'd4; minv = c4;
    if (c3 <= minv) begin minv = c3; idx = 3'd3; end
    if (c2 <= minv) begin minv = c2; idx = 3'd2; end
    if (c1 <= minv) begin minv = c1; idx = 3'd1; end
    if (c0 <= minv) begin minv = c0; idx = 3'd0; end
    best_cond = idx;
  end

  // Drive LEDs only after DONE; otherwise off
  wire [4:0] led_onehot_internal = winner_valid ? winner_onehot_latched : 5'b0;
  assign led_onehot = led_onehot_internal;

  // Sequential
  always @(posedge clk) begin
    if (rst) begin
      st <= S_IDLE; cond_idx <= 3'd0; op_idx <= {OP_IDX_WIDTH{1'b0}};
      r_start <= 1'b0; r_cond <= 3'd0; r_opcode <= 4'd0; r_a <= 16'd0; r_b <= 16'd0;
      time_cond[0] <= 32'd0; time_cond[1] <= 32'd0; time_cond[2] <= 32'd0; time_cond[3] <= 32'd0; time_cond[4] <= 32'd0;
      cond_cycle_acc <= 32'd0;
      winner_valid <= 1'b0; winner_onehot_latched <= 5'd0; done <= 1'b0; winner_code <= 3'd0;
      t_total <= 32'd0; t_runtime <= 32'd0; runtime_active <= 1'b0; runtime_counter <= 32'd0;
    end else begin
      r_start <= 1'b0;
      if (runtime_active) runtime_counter <= runtime_counter + 32'd1;

      case (st)
        S_IDLE: begin
          done <= 1'b0;
          winner_valid <= 1'b0;
          if (start) begin
            cond_idx <= 3'd0; op_idx <= {OP_IDX_WIDTH{1'b0}}; cond_cycle_acc <= 32'd0;
            time_cond[0] <= 32'd0; time_cond[1] <= 32'd0; time_cond[2] <= 32'd0; time_cond[3] <= 32'd0; time_cond[4] <= 32'd0;
            t_total <= 32'd0; t_runtime <= 32'd0; runtime_active <= 1'b1; runtime_counter <= 32'd0;
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
          if (op_idx == (NUM_OPS-1)) begin
            time_cond[cond_idx] <= cond_cycle_acc;
            st <= S_NEXT_COND;
          end else begin
            op_idx <= op_idx + 1'b1;
            st <= S_LOAD;
          end
        end

        S_NEXT_COND: begin
          if (cond_idx == 3'd4) begin
            winner_onehot_latched <= winner_onehot_now;
            winner_code           <= best_cond;
            winner_valid          <= 1'b1;
            done                  <= 1'b1;
            t_total               <= time_cond[0] + time_cond[1] + time_cond[2] + time_cond[3] + cond_cycle_acc;
            t_runtime             <= runtime_counter + 32'd1;
            runtime_active        <= 1'b0;
            st <= S_DONE;
          end else begin
            cond_idx <= cond_idx + 3'd1;
            op_idx   <= {OP_IDX_WIDTH{1'b0}};
            cond_cycle_acc <= 32'd0;
            st <= S_LOAD;
          end
        end

        S_DONE: begin
          if (start) begin
            done <= 1'b0; winner_valid <= 1'b0;
            cond_idx <= 3'd0; op_idx <= {OP_IDX_WIDTH{1'b0}}; cond_cycle_acc <= 32'd0;
            time_cond[0] <= 32'd0; time_cond[1] <= 32'd0; time_cond[2] <= 32'd0; time_cond[3] <= 32'd0; time_cond[4] <= 32'd0;
            t_total <= 32'd0; t_runtime <= 32'd0; runtime_active <= 1'b1; runtime_counter <= 32'd0;
            st <= S_LOAD;
          end
        end
      endcase
    end
  end
endmodule
