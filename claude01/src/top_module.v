// Top Module for Multi-Base Arithmetic Router
// PYNQ Z2 Board Implementation

module top_module (
    input wire clk,           // 125 MHz clock from PYNQ Z2
    input wire reset_n,       // Active-low reset (BTN0)
    input wire start_btn,     // Start benchmark (BTN1)
    output wire [3:0] led,    // LEDs: [base2, base10, base12, router]
    output wire [3:0] rgb_led // RGB LEDs for status
);

    // Internal signals
    wire clk_50mhz;
    wire reset;
    wire [31:0] cycle_count_cond1;
    wire [31:0] cycle_count_cond2;
    wire [31:0] cycle_count_cond3;
    wire [31:0] cycle_count_cond4;
    wire benchmark_done;
    wire [1:0] winner;
    
    // Reset synchronization
    assign reset = ~reset_n;
    
    // Clock divider: 125 MHz to 50 MHz
    reg [1:0] clk_div;
    always @(posedge clk or posedge reset) begin
        if (reset)
            clk_div <= 2'b0;
        else
            clk_div <= clk_div + 1'b1;
    end
    assign clk_50mhz = clk_div[1];
    
    // Debounce start button
    reg [19:0] btn_counter;
    reg start_sync;
    reg start_prev;
    
    always @(posedge clk_50mhz or posedge reset) begin
        if (reset) begin
            btn_counter <= 20'b0;
            start_sync <= 1'b0;
            start_prev <= 1'b0;
        end else begin
            start_prev <= start_btn;
            
            if (start_btn && !start_prev) begin
                // Rising edge detected
                btn_counter <= 20'd1;
            end else if (btn_counter > 0 && btn_counter < 20'd1000000) begin
                btn_counter <= btn_counter + 1'b1;
            end else if (btn_counter >= 20'd1000000) begin
                start_sync <= 1'b1;
                btn_counter <= 20'b0;
            end
            
            if (benchmark_done)
                start_sync <= 1'b0;
        end
    end
    
    // Benchmark Controller
    benchmark_controller benchmark_ctrl (
        .clk(clk_50mhz),
        .reset(reset),
        .start(start_sync),
        .cycle_count_cond1(cycle_count_cond1),
        .cycle_count_cond2(cycle_count_cond2),
        .cycle_count_cond3(cycle_count_cond3),
        .cycle_count_cond4(cycle_count_cond4),
        .done(benchmark_done),
        .winner(winner)
    );
    
    // LED Controller - Show winner
    assign led[0] = benchmark_done && (winner == 2'b00); // Base-2 fastest
    assign led[1] = benchmark_done && (winner == 2'b01); // Base-10 fastest
    assign led[2] = benchmark_done && (winner == 2'b10); // Base-12 fastest
    assign led[3] = benchmark_done && (winner == 2'b11); // Router fastest
    
    // RGB LED status indicators
    assign rgb_led[0] = start_sync && !benchmark_done;  // Running (blue)
    assign rgb_led[1] = benchmark_done;                  // Done (green)
    assign rgb_led[2] = reset;                           // Reset (red)
    assign rgb_led[3] = 1'b0;                            // Unused

endmodule