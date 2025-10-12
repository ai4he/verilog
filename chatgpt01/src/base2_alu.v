`timescale 1ns/1ps
`include "common_opcodes.vh"

// Base-2 optimized ALU (fast for BIN_*; slower for DEC_* and DUO_*)
module base2_alu #(
  parameter LAT_BIN = 1,  // cycles when running BIN_* ops
  parameter LAT_DEC = 8,  // cycles when emulating DEC_* ops
  parameter LAT_DUO = 6   // cycles when emulating DUO_* ops
)(
  input  wire        clk,
  input  wire        rst,
  input  wire        start,
  input  wire [3:0]  opcode,
  input  wire [15:0] a,
  input  wire [15:0] b,
  output reg         busy,
  output reg         done,
  output reg  [31:0] result
);

  reg [7:0] countdown;
  wire [7:0] lat_sel =
      (opcode <= `OP_BIN_MUL) ? LAT_BIN :
      ((opcode <= `OP_DEC_MUL10) ? LAT_DEC : LAT_DUO);

  // simple compute in binary (numeric equivalence)
  wire [31:0] res_bin =
      (opcode==`OP_BIN_ADD)   ? (a + b) :
      (opcode==`OP_BIN_SUB)   ? (a - b) :
      (opcode==`OP_BIN_MUL)   ? (a * b) :
      (opcode==`OP_DEC_ADD)   ? (a + b) :
      (opcode==`OP_DEC_SUB)   ? (a - b) :
      (opcode==`OP_DEC_MUL10) ? (a * 16'd10) :
      (opcode==`OP_DUO_ADD12) ? (a + b) :
      (opcode==`OP_DUO_SUB12) ? (a - b) :
      (opcode==`OP_DUO_MUL3)  ? (a * 16'd3) : 32'd0;

  always @(posedge clk) begin
    if (rst) begin
      busy <= 1'b0; done <= 1'b0; countdown <= 8'd0; result <= 32'd0;
    end else begin
      done <= 1'b0;
      if (start && !busy) begin
        busy      <= 1'b1;
        countdown <= (lat_sel==0) ? 1 : lat_sel;
      end else if (busy) begin
        if (countdown > 8'd1) begin
          countdown <= countdown - 8'd1;
        end else begin
          // last cycle
          busy   <= 1'b0;
          done   <= 1'b1;
          result <= res_bin;
        end
      end
    end
  end
endmodule
