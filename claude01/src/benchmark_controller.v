`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: benchmark_controller
// Description: Orchestrates the benchmark test suite across all conditions
//////////////////////////////////////////////////////////////////////////////////

module benchmark_controller (
    input wire clk,
    input wire reset,

    // Outputs to ALUs
    output reg [15:0] operand_a,
    output reg [15:0] operand_b,
    output reg [3:0] operation,
    output reg [1:0] base_select,
    output reg [1:0] condition,      // 00=Base2, 01=Base10, 10=Base12, 11=Router
    output reg compute_enable,

    // Inputs from ALUs
    input wire result_valid_base2,
    input wire result_valid_base10,
    input wire result_valid_base12,
    input wire result_valid_router,

    // Timing outputs
    output reg [31:0] cycles_base2,
    output reg [31:0] cycles_base10,
    output reg [31:0] cycles_base12,
    output reg [31:0] cycles_router,

    // Status outputs
    output reg benchmark_done,
    output reg [3:0] winner_leds
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
    localparam IDLE         = 4'd0;
    localparam SETUP        = 4'd1;
    localparam COMPUTE      = 4'd2;
    localparam WAIT_VALID   = 4'd3;
    localparam NEXT_OP      = 4'd4;
    localparam NEXT_COND    = 4'd5;
    localparam ANALYZE      = 4'd6;
    localparam DONE         = 4'd7;

    reg [3:0] state;
    reg [3:0] op_index;
    reg [1:0] cond_index;
    reg [31:0] cycle_counter;
    reg [31:0] temp_cycles [0:3];  // Temporary cycle storage for each condition

    // Test operands (9 different test cases)
    reg [15:0] test_operands_a [0:8];
    reg [15:0] test_operands_b [0:8];
    reg [3:0] test_operations [0:8];

    // Initialize test cases
    initial begin
        // Test 0: ADD
        test_operands_a[0] = 16'd144;
        test_operands_b[0] = 16'd72;
        test_operations[0] = OP_ADD;

        // Test 1: SUB
        test_operands_a[1] = 16'd1000;
        test_operands_b[1] = 16'd234;
        test_operations[1] = OP_SUB;

        // Test 2: MUL
        test_operands_a[2] = 16'd12;
        test_operands_b[2] = 16'd12;
        test_operations[2] = OP_MUL;

        // Test 3: DIV
        test_operands_a[3] = 16'd144;
        test_operands_b[3] = 16'd12;
        test_operations[3] = OP_DIV;

        // Test 4: AND
        test_operands_a[4] = 16'hAAAA;
        test_operands_b[4] = 16'h5555;
        test_operations[4] = OP_AND;

        // Test 5: OR
        test_operands_a[5] = 16'hF0F0;
        test_operands_b[5] = 16'h0F0F;
        test_operations[5] = OP_OR;

        // Test 6: XOR
        test_operands_a[6] = 16'hFFFF;
        test_operands_b[6] = 16'hAAAA;
        test_operations[6] = OP_XOR;

        // Test 7: SHL
        test_operands_a[7] = 16'd100;
        test_operands_b[7] = 16'd2;
        test_operations[7] = OP_SHL;

        // Test 8: SHR
        test_operands_a[8] = 16'd1000;
        test_operands_b[8] = 16'd3;
        test_operations[8] = OP_SHR;
    end

    // Main state machine
    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            op_index <= 0;
            cond_index <= 0;
            compute_enable <= 0;
            benchmark_done <= 0;
            cycle_counter <= 0;
            cycles_base2 <= 0;
            cycles_base10 <= 0;
            cycles_base12 <= 0;
            cycles_router <= 0;
            winner_leds <= 4'b0000;
            condition <= 2'b00;
        end else begin
            case (state)
                IDLE: begin
                    state <= SETUP;
                    op_index <= 0;
                    cond_index <= 0;
                    temp_cycles[0] <= 0;
                    temp_cycles[1] <= 0;
                    temp_cycles[2] <= 0;
                    temp_cycles[3] <= 0;
                end

                SETUP: begin
                    operand_a <= test_operands_a[op_index];
                    operand_b <= test_operands_b[op_index];
                    operation <= test_operations[op_index];
                    condition <= cond_index;
                    cycle_counter <= 0;
                    state <= COMPUTE;
                end

                COMPUTE: begin
                    compute_enable <= 1;
                    cycle_counter <= cycle_counter + 1;
                    state <= WAIT_VALID;
                end

                WAIT_VALID: begin
                    cycle_counter <= cycle_counter + 1;

                    case (cond_index)
                        2'b00: if (result_valid_base2) state <= NEXT_OP;
                        2'b01: if (result_valid_base10) state <= NEXT_OP;
                        2'b10: if (result_valid_base12) state <= NEXT_OP;
                        2'b11: if (result_valid_router) state <= NEXT_OP;
                    endcase
                end

                NEXT_OP: begin
                    compute_enable <= 0;
                    temp_cycles[cond_index] <= temp_cycles[cond_index] + cycle_counter;

                    if (op_index == 8) begin
                        op_index <= 0;
                        state <= NEXT_COND;
                    end else begin
                        op_index <= op_index + 1;
                        state <= SETUP;
                    end
                end

                NEXT_COND: begin
                    // Store accumulated cycles
                    case (cond_index)
                        2'b00: cycles_base2 <= temp_cycles[0];
                        2'b01: cycles_base10 <= temp_cycles[1];
                        2'b10: cycles_base12 <= temp_cycles[2];
                        2'b11: cycles_router <= temp_cycles[3];
                    endcase

                    if (cond_index == 2'b11) begin
                        state <= ANALYZE;
                    end else begin
                        cond_index <= cond_index + 1;
                        state <= SETUP;
                    end
                end

                ANALYZE: begin
                    // Determine winner (lowest cycle count)
                    winner_leds <= 4'b0000;

                    // Find minimum cycles
                    if ((cycles_base2 <= cycles_base10) &&
                        (cycles_base2 <= cycles_base12) &&
                        (cycles_base2 <= cycles_router)) begin
                        winner_leds[0] <= 1;
                    end

                    if ((cycles_base10 <= cycles_base2) &&
                        (cycles_base10 <= cycles_base12) &&
                        (cycles_base10 <= cycles_router)) begin
                        winner_leds[1] <= 1;
                    end

                    if ((cycles_base12 <= cycles_base2) &&
                        (cycles_base12 <= cycles_base10) &&
                        (cycles_base12 <= cycles_router)) begin
                        winner_leds[2] <= 1;
                    end

                    if ((cycles_router <= cycles_base2) &&
                        (cycles_router <= cycles_base10) &&
                        (cycles_router <= cycles_base12)) begin
                        winner_leds[3] <= 1;
                    end

                    state <= DONE;
                end

                DONE: begin
                    benchmark_done <= 1;
                    // Stay in DONE state, or could restart
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule
