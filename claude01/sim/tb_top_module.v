// Testbench for Multi-Base Arithmetic Router - REVISED
// Verifies LED behavior and cycle counting

`timescale 1ns / 1ps

module tb_top_module;

    // Testbench signals
    reg clk;
    reg reset_n;
    reg start_btn;
    wire [3:0] led;
    wire [3:0] rgb_led;
    
    // Instantiate the Unit Under Test (UUT)
    top_module uut (
        .clk(clk),
        .reset_n(reset_n),
        .start_btn(start_btn),
        .led(led),
        .rgb_led(rgb_led)
    );
    
    // Clock generation - 125 MHz (8ns period)
    initial begin
        clk = 0;
        forever #4 clk = ~clk;
    end
    
    // Monitor LED changes
    always @(led) begin
        if (led != 4'b0000) begin
            $display("%0t ns - LED changed: %b", $time, led);
            case (led)
                4'b0001: $display("         *** BASE-2 WON ***");
                4'b0010: $display("         *** BASE-10 WON ***");
                4'b0100: $display("         *** BASE-12 WON ***");
                4'b1000: $display("         *** ROUTER WON ***");
                default: $display("         *** ERROR: Multiple LEDs on ***");
            endcase
        end
    end
    
    // Monitor RGB LED status
    always @(rgb_led) begin
        case (rgb_led)
            4'b0001: $display("%0t ns - Status: RUNNING (Blue)", $time);
            4'b0010: $display("%0t ns - Status: COMPLETE (Green)", $time);
            4'b0100: $display("%0t ns - Status: RESET (Red)", $time);
            4'b0000: $display("%0t ns - Status: IDLE (Off)", $time);
        endcase
    end
    
    // Test stimulus
    initial begin
        // Initialize signals
        reset_n = 1;
        start_btn = 0;
        
        $display("===========================================");
        $display("Multi-Base Arithmetic Router Testbench");
        $display("===========================================");
        $display("Time\t\tEvent");
        $display("-------------------------------------------");
        
        // Apply reset
        #100;
        $display("%0t ns\tApplying reset", $time);
        reset_n = 0;
        #200;
        reset_n = 1;
        #100;
        $display("%0t ns\tReset released", $time);
        
        // Wait a bit
        #500;
        
        // Start benchmark
        $display("%0t ns\tPressing start button", $time);
        start_btn = 1;
        #100;
        start_btn = 0;
        $display("%0t ns\tStart button released", $time);
        
        // Wait for completion (with timeout)
        $display("%0t ns\tWaiting for benchmark to complete...", $time);
        
        // Wait for done signal or timeout
        fork
            begin
                wait(rgb_led[1] == 1); // Wait for green LED (done)
                #1000;
                $display("%0t ns\tBenchmark COMPLETE", $time);
            end
            begin
                #50000000; // 50ms timeout
                $display("%0t ns\tERROR: Timeout waiting for completion", $time);
            end
        join_any
        
        // Display results
        #1000;
        $display("-------------------------------------------");
        $display("FINAL RESULTS:");
        $display("  LED Status: %b", led);
        $display("  LED[0] (Base-2):  %b", led[0]);
        $display("  LED[1] (Base-10): %b", led[1]);
        $display("  LED[2] (Base-12): %b", led[2]);
        $display("  LED[3] (Router):  %b", led[3]);
        $display("");
        
        // Display cycle counts
        $display("Performance Metrics:");
        $display("  Condition 1 (Base-2 only):  %0d cycles", 
                 uut.stored_cond1);
        $display("  Condition 2 (Base-10 only): %0d cycles", 
                 uut.stored_cond2);
        $display("  Condition 3 (Base-12 only): %0d cycles", 
                 uut.stored_cond3);
        $display("  Condition 4 (Router):       %0d cycles", 
                 uut.stored_cond4);
        $display("");
        
        // Determine and display winner
        if (led[0]) $display("  WINNER: Base-2 (Condition 1)");
        else if (led[1]) $display("  WINNER: Base-10 (Condition 2)");
        else if (led[2]) $display("  WINNER: Base-12 (Condition 3)");
        else if (led[3]) $display("  WINNER: Router (Condition 4) - EXPECTED!");
        else $display("  ERROR: No winner detected!");
        
        // Calculate speedups if router won
        if (led[3]) begin
            $display("");
            $display("Speedup Analysis:");
            if (uut.stored_cond4 > 0) begin
                $display("  Router vs Base-2:  %.2fx faster", 
                         real'(uut.stored_cond1) / real'(uut.stored_cond4));
                $display("  Router vs Base-10: %.2fx faster", 
                         real'(uut.stored_cond2) / real'(uut.stored_cond4));
                $display("  Router vs Base-12: %.2fx faster", 
                         real'(uut.stored_cond3) / real'(uut.stored_cond4));
            end
        end
        
        $display("===========================================");
        
        // Verify expected behavior
        if (led == 4'b0000) begin
            $display("FAIL: No LED turned on!");
            $display("Check: Are operations completing?");
            $display("Check: Is done signal working?");
        end else if ((led & (led-1)) != 0) begin
            $display("FAIL: Multiple LEDs on! (Should be only one)");
        end else begin
            $display("PASS: One LED is on as expected");
        end
        
        $display("===========================================");
        $display("Test completed!");
        $display("===========================================");
        
        #10000;
        $finish;
    end
    
    // Timeout watchdog
    initial begin
        #100000000; // 100ms absolute timeout
        $display("ERROR: Absolute simulation timeout!");
        $finish;
    end
    
    // Waveform dump for viewing in simulator
    initial begin
        $dumpfile("tb_top_module.vcd");
        $dumpvars(0, tb_top_module);
        // Dump internal signals for debugging
        $dumpvars(1, uut.benchmark_ctrl);
        $dumpvars(1, uut.benchmark_ctrl.main_router);
    end

endmodule