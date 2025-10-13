// Benchmark Controller
// Executes 9 operations under 4 different conditions

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
    localparam IDLE = 3'd0;
    localparam COND1 = 3'd1;
    localparam COND2 = 3'd2;
    localparam COND3 = 3'd3;
    localparam COND4 = 3'd4;
    localparam COMPARE = 3'd5;
    
    reg [2:0] state, next_state;
    reg [3:0] op_counter;
    reg [31:0] timer;
    
    // ALU control signals
    reg [31:0] operand_a, operand_b;
    reg [3:0] alu_op;
    reg [1:0] base_select;
    wire [31:0] alu_result;
    wire alu_done;
    reg alu_enable;
    
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
    
    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end
    
    // Next state logic and operations
    always @(posedge clk or posedge reset) begin
        if (reset) begin
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
            next_state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    done <= 1'b0;
                    if (start) begin
                        next_state <= COND1;
                        op_counter <= 4'd0;
                        timer <= 32'd0;
                    end else begin
                        next_state <= IDLE;
                    end
                end
                
                COND1: begin // All operations on base-2
                    if (op_counter < 9) begin
                        operand_a <= test_a[op_counter];
                        operand_b <= test_b[op_counter];
                        alu_op <= op_counter;
                        base_select <= 2'd0; // Base-2
                        timer <= timer + 1;
                        
                        if (alu_done)
                            op_counter <= op_counter + 1;
                        
                        next_state <= COND1;
                    end else begin
                        cycle_count_cond1 <= timer;
                        next_state <= COND2;
                        op_counter <= 4'd0;
                        timer <= 32'd0;
                    end
                end
                
                COND2: begin // All operations on base-10
                    if (op_counter < 9) begin
                        operand_a <= test_a[op_counter];
                        operand_b <= test_b[op_counter];
                        alu_op <= op_counter;
                        base_select <= 2'd1; // Base-10
                        timer <= timer + 1;
                        
                        if (alu_done)
                            op_counter <= op_counter + 1;
                        
                        next_state <= COND2;
                    end else begin
                        cycle_count_cond2 <= timer;
                        next_state <= COND3;
                        op_counter <= 4'd0;
                        timer <= 32'd0;
                    end
                end
                
                COND3: begin // All operations on base-12
                    if (op_counter < 9) begin
                        operand_a <= test_a[op_counter];
                        operand_b <= test_b[op_counter];
                        alu_op <= op_counter;
                        base_select <= 2'd2; // Base-12
                        timer <= timer + 1;
                        
                        if (alu_done)
                            op_counter <= op_counter + 1;
                        
                        next_state <= COND3;
                    end else begin
                        cycle_count_cond3 <= timer;
                        next_state <= COND4;
                        op_counter <= 4'd0;
                        timer <= 32'd0;
                    end
                end
                
                COND4: begin // Router: optimal base per operation
                    if (op_counter < 9) begin
                        operand_a <= test_a[op_counter];
                        operand_b <= test_b[op_counter];
                        alu_op <= op_counter;
                        
                        // Route to optimal base
                        if (op_counter < 3)
                            base_select <= 2'd0; // base-2
                        else if (op_counter < 6)
                            base_select <= 2'd1; // base-10
                        else
                            base_select <= 2'd2; // base-12
                        
                        timer <= timer + 1;
                        
                        if (alu_done)
                            op_counter <= op_counter + 1;
                        
                        next_state <= COND4;
                    end else begin
                        cycle_count_cond4 <= timer;
                        next_state <= COMPARE;
                    end
                end
                
                COMPARE: begin
                    // Find winner (lowest cycle count)
                    if (cycle_count_cond1 <= cycle_count_cond2 && 
                        cycle_count_cond1 <= cycle_count_cond3 && 
                        cycle_count_cond1 <= cycle_count_cond4)
                        winner <= 2'b00;
                    else if (cycle_count_cond2 <= cycle_count_cond3 && 
                             cycle_count_cond2 <= cycle_count_cond4)
                        winner <= 2'b01;
                    else if (cycle_count_cond3 <= cycle_count_cond4)
                        winner <= 2'b10;
                    else
                        winner <= 2'b11;
                    
                    done <= 1'b1;
                    next_state <= IDLE;
                end
                
                default: next_state <= IDLE;
            endcase
        end
    end

endmodule