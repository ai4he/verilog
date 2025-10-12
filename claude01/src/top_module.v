`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: top_module
// Description: Top-level module for Multi-Base Arithmetic Router Benchmark
// Target: PYNQ Z2 Board (Zynq-7020)
//////////////////////////////////////////////////////////////////////////////////

module top_module (
    input wire clk,           // 125 MHz system clock from PYNQ Z2
    input wire btnc,          // Center button (reset)
    output wire [3:0] led     // LEDs: [0]=Base2, [1]=Base10, [2]=Base12, [3]=Router
);

    // Clock divider for 50 MHz operation
    reg clk_50mhz;
    reg clk_div;

    always @(posedge clk) begin
        clk_div <= ~clk_div;
    end

    always @(posedge clk) begin
        if (clk_div)
            clk_50mhz <= ~clk_50mhz;
    end

    // Synchronized reset
    reg [1:0] reset_sync;
    wire reset;

    always @(posedge clk_50mhz) begin
        reset_sync <= {reset_sync[0], btnc};
    end

    assign reset = reset_sync[1];

    // Benchmark controller signals
    wire [15:0] operand_a;
    wire [15:0] operand_b;
    wire [3:0] operation;
    wire [1:0] base_select;
    wire [1:0] condition;
    wire compute_enable;
    wire benchmark_done;

    // ALU outputs
    wire [15:0] result_base2;
    wire [15:0] result_base10;
    wire [15:0] result_base12;
    wire [15:0] result_router;
    wire valid_base2;
    wire valid_base10;
    wire valid_base12;
    wire valid_router;

    // Timing results
    wire [31:0] cycles_base2;
    wire [31:0] cycles_base10;
    wire [31:0] cycles_base12;
    wire [31:0] cycles_router;

    // Instantiate benchmark controller
    benchmark_controller controller (
        .clk(clk_50mhz),
        .reset(reset),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .operation(operation),
        .base_select(base_select),
        .condition(condition),
        .compute_enable(compute_enable),
        .result_valid_base2(valid_base2),
        .result_valid_base10(valid_base10),
        .result_valid_base12(valid_base12),
        .result_valid_router(valid_router),
        .cycles_base2(cycles_base2),
        .cycles_base10(cycles_base10),
        .cycles_base12(cycles_base12),
        .cycles_router(cycles_router),
        .benchmark_done(benchmark_done),
        .winner_leds(led)
    );

    // Base-2 ALU (always uses base 2)
    base2_alu alu_base2 (
        .clk(clk_50mhz),
        .reset(reset),
        .enable(compute_enable && (condition == 2'b00)),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .operation(operation),
        .result(result_base2),
        .valid(valid_base2)
    );

    // Base-10 ALU (always uses base 10/BCD)
    base10_alu alu_base10 (
        .clk(clk_50mhz),
        .reset(reset),
        .enable(compute_enable && (condition == 2'b01)),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .operation(operation),
        .result(result_base10),
        .valid(valid_base10)
    );

    // Base-12 ALU (always uses base 12)
    base12_alu alu_base12 (
        .clk(clk_50mhz),
        .reset(reset),
        .enable(compute_enable && (condition == 2'b10)),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .operation(operation),
        .result(result_base12),
        .valid(valid_base12)
    );

    // Router (intelligently selects base)
    router router_inst (
        .clk(clk_50mhz),
        .reset(reset),
        .enable(compute_enable && (condition == 2'b11)),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .operation(operation),
        .result(result_router),
        .valid(valid_router)
    );

endmodule
