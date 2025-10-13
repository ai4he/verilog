// Top Module for Multi-Base Arithmetic Router - REVISED
// PYNQ Z2 Board Implementation with improved LED logic

module top_module (
    input wire clk,           // 125 MHz clock from PYNQ Z2
    input wire reset_n,       // Active-low reset (BTN0)
    input wire start_btn,     // Start benchmark (BTN1)
    output reg [3:0] led,     // LEDs: [base2, base10, base12, router]
    output reg [3:0] rgb_led  // RGB LEDs for status
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
    
    // Stored results (latch when done)
    reg [31:0] stored_cond1;
    reg [31:0] stored_cond2;
    reg [31:0] stored_cond3;
    reg [31:0] stored_cond4;
    reg [1:0] stored_winner;
    reg result_valid;
    
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
    
    // Button debouncing and edge detection
    reg [19:0] btn_counter;
    reg start_pulse;
    reg btn_prev;
    reg btn_stable;
    
    always @(posedge clk_50mhz or posedge reset) begin
        if (reset) begin
            btn_counter <= 20'd0;
            start_pulse <= 1'b0;
            btn_prev <= 1'b0;
            btn_stable <= 1'b0;
        end else begin
            btn_prev <= start_btn;
            
            // Debounce counter
            if (start_btn == btn_stable) begin
                btn_counter <= 20'd0;
            end else begin
                btn_counter <= btn_counter + 1'b1;
                if (btn_counter >= 20'd50000) begin // ~1ms at 50MHz
                    btn_stable <= start_btn;
                    btn_counter <= 20'd0;
                end
            end
            
            // Generate pulse on rising edge
            if (btn_stable && !btn_prev) begin
                start_pulse <= 1'b1;
            end else begin
                start_pulse <= 1'b0;
            end
        end
    end
    
    // Benchmark Controller
    benchmark_controller benchmark_ctrl (
        .clk(clk_50mhz),
        .reset(reset),
        .start(start_pulse),
        .cycle_count_cond1(cycle_count_cond1),
        .cycle_count_cond2(cycle_count_cond2),
        .cycle_count_cond3(cycle_count_cond3),
        .cycle_count_cond4(cycle_count_cond4),
        .done(benchmark_done),
        .winner(winner)
    );
    
    // Store results when benchmark completes
    always @(posedge clk_50mhz or posedge reset) begin
        if (reset) begin
            stored_cond1 <= 32'd0;
            stored_cond2 <= 32'd0;
            stored_cond3 <= 32'd0;
            stored_cond4 <= 32'd0;
            stored_winner <= 2'b00;
            result_valid <= 1'b0;
        end else begin
            if (benchmark_done && !result_valid) begin
                // Latch results
                stored_cond1 <= cycle_count_cond1;
                stored_cond2 <= cycle_count_cond2;
                stored_cond3 <= cycle_count_cond3;
                stored_cond4 <= cycle_count_cond4;
                stored_winner <= winner;
                result_valid <= 1'b1;
            end else if (start_pulse) begin
                // Clear results on new start
                result_valid <= 1'b0;
            end
        end
    end
    
    // LED Controller - Show winner (stays lit until reset or new test)
    always @(posedge clk_50mhz or posedge reset) begin
        if (reset) begin
            led <= 4'b0000;
        end else begin
            if (result_valid) begin
                case (stored_winner)
                    2'b00: led <= 4'b0001; // Base-2 fastest (LED0)
                    2'b01: led <= 4'b0010; // Base-10 fastest (LED1)
                    2'b10: led <= 4'b0100; // Base-12 fastest (LED2)
                    2'b11: led <= 4'b1000; // Router fastest (LED3)
                    default: led <= 4'b0000;
                endcase
            end else if (start_pulse) begin
                led <= 4'b0000; // Clear LEDs on new start
            end
        end
    end
    
    // RGB LED status indicators
    always @(posedge clk_50mhz or posedge reset) begin
        if (reset) begin
            rgb_led <= 4'b0100; // Red on reset
        end else begin
            if (result_valid) begin
                rgb_led <= 4'b0010; // Green when done
            end else if (start_pulse || (!benchmark_done && !result_valid && (stored_cond1 != 0))) begin
                rgb_led <= 4'b0001; // Blue when running
            end else begin
                rgb_led <= 4'b0000; // Off when idle
            end
        end
    end

endmodule
