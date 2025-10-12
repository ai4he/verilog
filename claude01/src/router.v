`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: router
// Description: Intelligent router that selects optimal base for each operation
//              Demonstrates the Base-12 Framework concept
//////////////////////////////////////////////////////////////////////////////////

module router (
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

    // Selected base for routing
    reg [1:0] selected_base;  // 00=Base2, 01=Base10, 10=Base12

    // ALU instances
    wire [15:0] result_base2, result_base10, result_base12;
    wire valid_base2, valid_base10, valid_base12;

    // ALU enable signals
    reg enable_base2, enable_base10, enable_base12;

    // Instantiate all three ALUs
    base2_alu alu2 (
        .clk(clk),
        .reset(reset),
        .enable(enable_base2),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .operation(operation),
        .result(result_base2),
        .valid(valid_base2)
    );

    base10_alu alu10 (
        .clk(clk),
        .reset(reset),
        .enable(enable_base10),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .operation(operation),
        .result(result_base10),
        .valid(valid_base10)
    );

    base12_alu alu12 (
        .clk(clk),
        .reset(reset),
        .enable(enable_base12),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .operation(operation),
        .result(result_base12),
        .valid(valid_base12)
    );

    // Routing logic: Determine optimal base
    always @(*) begin
        // Default to base-2 (always works)
        selected_base = 2'b00;

        case (operation)
            OP_ADD, OP_SUB: begin
                // For addition/subtraction, prefer base-12 for numbers divisible by 12
                if ((operand_a % 12 == 0) && (operand_b % 12 == 0))
                    selected_base = 2'b10;  // Base-12
                else if ((operand_a % 10 == 0) && (operand_b % 10 == 0))
                    selected_base = 2'b01;  // Base-10
                else
                    selected_base = 2'b00;  // Base-2
            end

            OP_MUL: begin
                // For multiplication, base-12 excels with factors of 12
                if ((operand_a % 12 == 0) || (operand_b % 12 == 0))
                    selected_base = 2'b10;  // Base-12
                else if ((operand_a % 10 == 0) || (operand_b % 10 == 0))
                    selected_base = 2'b01;  // Base-10
                else
                    selected_base = 2'b00;  // Base-2
            end

            OP_DIV: begin
                // For division, base-12 is optimal for divisors that are factors of 12
                if ((operand_b == 12) || (operand_b == 6) || (operand_b == 4) || (operand_b == 3))
                    selected_base = 2'b10;  // Base-12
                else if ((operand_b == 10) || (operand_b == 5))
                    selected_base = 2'b01;  // Base-10
                else
                    selected_base = 2'b00;  // Base-2
            end

            OP_AND, OP_OR, OP_XOR, OP_SHL, OP_SHR: begin
                // Bitwise and shift operations are always fastest in base-2
                selected_base = 2'b00;  // Base-2
            end

            default: selected_base = 2'b00;  // Base-2
        endcase
    end

    // Enable control: Only enable the selected ALU
    always @(*) begin
        enable_base2 = 0;
        enable_base10 = 0;
        enable_base12 = 0;

        if (enable) begin
            case (selected_base)
                2'b00: enable_base2 = 1;
                2'b01: enable_base10 = 1;
                2'b10: enable_base12 = 1;
                default: enable_base2 = 1;
            endcase
        end
    end

    // Result multiplexing
    always @(posedge clk) begin
        if (reset) begin
            result <= 0;
            valid <= 0;
        end else begin
            case (selected_base)
                2'b00: begin
                    result <= result_base2;
                    valid <= valid_base2;
                end
                2'b01: begin
                    result <= result_base10;
                    valid <= valid_base10;
                end
                2'b10: begin
                    result <= result_base12;
                    valid <= valid_base12;
                end
                default: begin
                    result <= result_base2;
                    valid <= valid_base2;
                end
            endcase
        end
    end

endmodule
