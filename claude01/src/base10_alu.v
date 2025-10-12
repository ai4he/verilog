`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: base10_alu
// Description: Base-10 (BCD) Arithmetic Logic Unit
//              Optimized for decimal operations using BCD encoding
//////////////////////////////////////////////////////////////////////////////////

module base10_alu (
    input wire clk,
    input wire reset,
    input wire enable,
    input wire [15:0] operand_a,
    input wire [15:0] operand_b,
    input wire [3:0] operation,
    output reg [15:0] result,
    output reg valid
);

    // Operation codes
    localparam OP_ADD = 4'b0000;
    localparam OP_SUB = 4'b0001;
    localparam OP_MUL = 4'b0010;
    localparam OP_DIV = 4'b0011;
    localparam OP_AND = 4'b0100;
    localparam OP_OR  = 4'b0101;
    localparam OP_XOR = 4'b0110;
    localparam OP_SHL = 4'b0111;
    localparam OP_SHR = 4'b1000;

    // State machine
    localparam IDLE = 2'b00;
    localparam COMPUTE = 2'b01;
    localparam DONE = 2'b10;

    reg [1:0] state;
    reg [31:0] temp_result;

    // BCD conversion functions
    function [15:0] binary_to_bcd;
        input [15:0] binary;
        reg [15:0] bcd;
        reg [31:0] shift;
        integer i;
        begin
            bcd = 0;
            shift = {16'b0, binary};

            for (i = 0; i < 16; i = i + 1) begin
                // Adjust BCD digits if >= 5
                if (shift[19:16] >= 5) shift[19:16] = shift[19:16] + 3;
                if (shift[23:20] >= 5) shift[23:20] = shift[23:20] + 3;
                if (shift[27:24] >= 5) shift[27:24] = shift[27:24] + 3;
                if (shift[31:28] >= 5) shift[31:28] = shift[31:28] + 3;

                shift = shift << 1;
            end

            binary_to_bcd = shift[31:16];
        end
    endfunction

    function [15:0] bcd_to_binary;
        input [15:0] bcd;
        reg [15:0] binary;
        begin
            binary = (bcd[15:12] * 1000) +
                     (bcd[11:8] * 100) +
                     (bcd[7:4] * 10) +
                     bcd[3:0];
            bcd_to_binary = binary;
        end
    endfunction

    // BCD arithmetic operations
    function [15:0] bcd_add;
        input [15:0] a_bcd;
        input [15:0] b_bcd;
        reg [15:0] a_bin, b_bin, sum_bin;
        begin
            a_bin = bcd_to_binary(a_bcd);
            b_bin = bcd_to_binary(b_bcd);
            sum_bin = a_bin + b_bin;
            bcd_add = binary_to_bcd(sum_bin);
        end
    endfunction

    function [15:0] bcd_sub;
        input [15:0] a_bcd;
        input [15:0] b_bcd;
        reg [15:0] a_bin, b_bin, diff_bin;
        begin
            a_bin = bcd_to_binary(a_bcd);
            b_bin = bcd_to_binary(b_bcd);
            diff_bin = (a_bin >= b_bin) ? (a_bin - b_bin) : 0;
            bcd_sub = binary_to_bcd(diff_bin);
        end
    endfunction

    // Convert operands to BCD for processing
    wire [15:0] a_bcd = binary_to_bcd(operand_a);
    wire [15:0] b_bcd = binary_to_bcd(operand_b);

    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            result <= 0;
            valid <= 0;
            temp_result <= 0;
        end else begin
            case (state)
                IDLE: begin
                    valid <= 0;
                    if (enable) begin
                        state <= COMPUTE;
                    end
                end

                COMPUTE: begin
                    case (operation)
                        OP_ADD: begin
                            // BCD addition
                            temp_result <= bcd_to_binary(bcd_add(a_bcd, b_bcd));
                            state <= DONE;
                        end

                        OP_SUB: begin
                            // BCD subtraction
                            temp_result <= bcd_to_binary(bcd_sub(a_bcd, b_bcd));
                            state <= DONE;
                        end

                        OP_MUL: begin
                            // Decimal multiplication (convert to binary, multiply, convert back)
                            temp_result <= operand_a * operand_b;
                            state <= DONE;
                        end

                        OP_DIV: begin
                            // Decimal division
                            if (operand_b != 0)
                                temp_result <= operand_a / operand_b;
                            else
                                temp_result <= 0;
                            state <= DONE;
                        end

                        OP_AND: begin
                            // Bitwise operations on binary representation
                            temp_result <= operand_a & operand_b;
                            state <= DONE;
                        end

                        OP_OR: begin
                            temp_result <= operand_a | operand_b;
                            state <= DONE;
                        end

                        OP_XOR: begin
                            temp_result <= operand_a ^ operand_b;
                            state <= DONE;
                        end

                        OP_SHL: begin
                            // Shift in decimal means multiply by 10
                            temp_result <= operand_a * (10 ** operand_b[2:0]);
                            state <= DONE;
                        end

                        OP_SHR: begin
                            // Shift in decimal means divide by 10
                            temp_result <= operand_a / (10 ** operand_b[2:0]);
                            state <= DONE;
                        end

                        default: begin
                            temp_result <= 0;
                            state <= DONE;
                        end
                    endcase
                end

                DONE: begin
                    result <= temp_result[15:0];
                    valid <= 1;
                    state <= IDLE;
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule
