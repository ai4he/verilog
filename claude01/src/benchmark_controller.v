// Benchmark Controller - REVISED
// Executes 9 operations under 4 different conditions with proper cycle counting

module benchmark_controller (
    input wire clk,
    input wire reset,
    input wire start,
    output reg [31:0] cycle_count_cond1,
    output reg [31:0] cycle_count_cond2,
    output reg [31:0] cycle_count_cond3,
    output reg [31:0] cycle_count_cond4,
    output reg done,
    output reg [1:0] winner
);

    // State machine
    localparam IDLE = 4'd0;
    localparam INIT_COND1 = 4'd1;
    localparam RUN_COND1 = 4'd2;
    localparam INIT_COND2 = 4'd3;
    localparam RUN_COND2 = 4'd4;
    localparam INIT_COND3 = 4'd5;
    localparam RUN_COND3 = 4'd6;
    localparam INIT_COND4 = 4'd7;
    localparam RUN_COND4 = 4'd8;
    localparam COMPARE = 4'd9;
    localparam DONE_STATE = 4'd10;
    
    reg [3:0] state;
    reg [3:0] op_counter;
    reg [31:0] timer;
    reg op_active;
    reg [7:0] wait_counter;
    
    // ALU control signals
    reg [31:0] operand_a, operand_b;
    reg [3:0] alu_op;
    reg [1:0] base_select;
    wire [31:0] alu_result;
    wire alu_done;
    
    // Test data
    reg [31:0] test_a [0:8];
    reg [31:0] test_b [0:8];
    
    initial begin
        // Operations 0-2: best in base-2 (binary operations)
        test_a[0] = 32'h00001234;  // ADD
        test_b[0] = 32'h00005678;
        test_a[1] = 32'h0000FFFF;  // SUB
        test_b[1] = 32'h00001111;
        test_a[2] = 32'h000000FF;  // MUL
        test_b[2] = 32'h000000AA;
        
        // Operations 3-5: best in base-10 (decimal)
        test_a[3] = 32'd100;       // DIV by 10
        test_b[3] = 32'd10;
        test_a[4] = 32'd1000;      // AND
        test_b[4] = 32'd999;
        test_a[5] = 32'd50;        // OR
        test_b[5] = 32'd25;
        
        // Operations 6-8: best in base-12 (factors of 12)
        test_a[6] = 32'd12;        // XOR
        test_b[6] = 32'd6;
        test_a[7] = 32'd24;        // SHL
        test_b[7] = 32'd2;
        test_a[8] = 32'd144;       // SHR (144 = 12²)
        test_b[8] = 32'd4;
    end
    
    // Router instantiation
    router main_router (
        .clk(clk),
        .reset(reset),
        .operation(alu_op),
        .operand_a(operand_a),
        .operand_b(operand_b),
        .base_select(base_select),
        .result(alu_result),
        .done(alu_done)
    );
    
    // Main state machine with proper cycle counting
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            op_counter <= 4'd0;
            timer <= 32'd0;
            cycle_count_cond1 <= 32'd0;
            cycle_count_cond2 <= 32'd0;
            cycle_count_cond3 <= 32'd0;
            cycle_count_cond4 <= 32'd0;
            done <= 1'b0;
            winner <= 2'b00;
            operand_a <= 32'd0;
            operand_b <= 32'd0;
            alu_op <= 4'd0;
            base_select <= 2'd0;
            op_active <= 1'b0;
            wait_counter <= 8'd0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 1'b0;
                    op_counter <= 4'd0;
                    timer <= 32'd0;
                    op_active <= 1'b0;
                    
                    if (start) begin
                        state <= INIT_COND1;
                    end
                end
                
                // ==================== CONDITION 1: All Base-2 ====================
                INIT_COND1: begin
                    op_counter <= 4'd0;
                    timer <= 32'd0;
                    op_active <= 1'b0;
                    state <= RUN_COND1;
                end
                
                RUN_COND1: begin
                    if (op_counter < 9) begin
                        if (!op_active) begin
                            // Start new operation
                            operand_a <= test_a[op_counter];
                            operand_b <= test_b[op_counter];
                            alu_op <= op_counter;
                            base_select <= 2'd0; // Base-2
                            op_active <= 1'b1;
                            wait_counter <= 8'd0;
                        end else begin
                            // Count cycles while operation runs
                            timer <= timer + 1;
                            wait_counter <= wait_counter + 1;
                            
                            // Wait for operation to complete or timeout
                            if (alu_done || wait_counter > 50) begin
                                op_active <= 1'b0;
                                op_counter <= op_counter + 1;
                            end
                        end
                    end else begin
                        cycle_count_cond1 <= timer;
                        state <= INIT_COND2;
                    end
                end
                
                // ==================== CONDITION 2: All Base-10 ====================
                INIT_COND2: begin
                    op_counter <= 4'd0;
                    timer <= 32'd0;
                    op_active <= 1'b0;
                    state <= RUN_COND2;
                end
                
                RUN_COND2: begin
                    if (op_counter < 9) begin
                        if (!op_active) begin
                            operand_a <= test_a[op_counter];
                            operand_b <= test_b[op_counter];
                            alu_op <= op_counter;
                            base_select <= 2'd1; // Base-10
                            op_active <= 1'b1;
                            wait_counter <= 8'd0;
                        end else begin
                            timer <= timer + 1;
                            wait_counter <= wait_counter + 1;
                            
                            if (alu_done || wait_counter > 50) begin
                                op_active <= 1'b0;
                                op_counter <= op_counter + 1;
                            end
                        end
                    end else begin
                        cycle_count_cond2 <= timer;
                        state <= INIT_COND3;
                    end
                end
                
                // ==================== CONDITION 3: All Base-12 ====================
                INIT_COND3: begin
                    op_counter <= 4'd0;
                    timer <= 32'd0;
                    op_active <= 1'b0;
                    state <= RUN_COND3;
                end
                
                RUN_COND3: begin
                    if (op_counter < 9) begin
                        if (!op_active) begin
                            operand_a <= test_a[op_counter];
                            operand_b <= test_b[op_counter];
                            alu_op <= op_counter;
                            base_select <= 2'd2; // Base-12
                            op_active <= 1'b1;
                            wait_counter <= 8'd0;
                        end else begin
                            timer <= timer + 1;
                            wait_counter <= wait_counter + 1;
                            
                            if (alu_done || wait_counter > 50) begin
                                op_active <= 1'b0;
                                op_counter <= op_counter + 1;
                            end
                        end
                    end else begin
                        cycle_count_cond3 <= timer;
                        state <= INIT_COND4;
                    end
                end
                
                // ==================== CONDITION 4: Router (Optimal) ====================
                INIT_COND4: begin
                    op_counter <= 4'd0;
                    timer <= 32'd0;
                    op_active <= 1'b0;
                    state <= RUN_COND4;
                end
                
                RUN_COND4: begin
                    if (op_counter < 9) begin
                        if (!op_active) begin
                            operand_a <= test_a[op_counter];
                            operand_b <= test_b[op_counter];
                            alu_op <= op_counter;
                            
                            // Route to optimal base
                            if (op_counter < 3)
                                base_select <= 2'd0; // base-2 for ops 0-2
                            else if (op_counter < 6)
                                base_select <= 2'd1; // base-10 for ops 3-5
                            else
                                base_select <= 2'd2; // base-12 for ops 6-8
                            
                            op_active <= 1'b1;
                            wait_counter <= 8'd0;
                        end else begin
                            timer <= timer + 1;
                            wait_counter <= wait_counter + 1;
                            
                            if (alu_done || wait_counter > 50) begin
                                op_active <= 1'b0;
                                op_counter <= op_counter + 1;
                            end
                        end
                    end else begin
                        cycle_count_cond4 <= timer;
                        state <= COMPARE;
                    end
                end
                
                // ==================== COMPARE & DETERMINE WINNER ====================
                COMPARE: begin
                    // Find winner with proper comparison (handle ties by priority)
                    if ((cycle_count_cond1 <= cycle_count_cond2) && 
                        (cycle_count_cond1 <= cycle_count_cond3) && 
                        (cycle_count_cond1 <= cycle_count_cond4)) begin
                        winner <= 2'b00; // Base-2 wins
                    end
                    else if ((cycle_count_cond2 <= cycle_count_cond3) && 
                             (cycle_count_cond2 <= cycle_count_cond4)) begin
                        winner <= 2'b01; // Base-10 wins
                    end
                    else if (cycle_count_cond3 <= cycle_count_cond4) begin
                        winner <= 2'b10; // Base-12 wins
                    end
                    else begin
                        winner <= 2'b11; // Router wins
                    end
                    
                    state <= DONE_STATE;
                end
                
                // ==================== DONE STATE ====================
                DONE_STATE: begin
                    done <= 1'b1;
                    // Stay in this state until reset or new start
                    if (!start) begin
                        state <= IDLE;
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end

endmodule
