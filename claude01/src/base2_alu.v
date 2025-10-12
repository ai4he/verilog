`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: base2_alu
// Description: Base-2 (Binary) Arithmetic Logic Unit
//              Optimized for binary operations
//////////////////////////////////////////////////////////////////////////////////

module base2_alu (
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

    // State machine for multi-cycle operations
    localparam IDLE = 2'b00;
    localparam COMPUTE = 2'b01;
    localparam DONE = 2'b10;

    reg [1:0] state;
    reg [31:0] temp_result;
    reg [4:0] cycle_count;

    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            result <= 0;
            valid <= 0;
            temp_result <= 0;
            cycle_count <= 0;
        end else begin
            case (state)
                IDLE: begin
                    valid <= 0;
                    if (enable) begin
                        state <= COMPUTE;
                        cycle_count <= 0;
                    end
                end

                COMPUTE: begin
                    case (operation)
                        OP_ADD: begin
                            temp_result <= operand_a + operand_b;
                            state <= DONE;
                        end

                        OP_SUB: begin
                            temp_result <= operand_a - operand_b;
                            state <= DONE;
                        end

                        OP_MUL: begin
                            // Binary multiplication - native operation
                            temp_result <= operand_a * operand_b;
                            state <= DONE;
                        end

                        OP_DIV: begin
                            // Binary division - native operation
                            if (operand_b != 0)
                                temp_result <= operand_a / operand_b;
                            else
                                temp_result <= 0;
                            state <= DONE;
                        end

                        OP_AND: begin
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
                            temp_result <= operand_a << operand_b[3:0];
                            state <= DONE;
                        end

                        OP_SHR: begin
                            temp_result <= operand_a >> operand_b[3:0];
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
