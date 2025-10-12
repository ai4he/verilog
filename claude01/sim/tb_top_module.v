`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Testbench: tb_top_module
// Description: Testbench for Multi-Base Arithmetic Router
//////////////////////////////////////////////////////////////////////////////////

module tb_top_module;

    // Inputs
    reg clk;
    reg btnc;

    // Outputs
    wire [3:0] led;

    // Instantiate the Unit Under Test (UUT)
    top_module uut (
        .clk(clk),
        .btnc(btnc),
        .led(led)
    );

    // Clock generation (125 MHz)
    initial begin
        clk = 0;
        forever #4 clk = ~clk;  // 125 MHz clock (8ns period)
    end

    // Test stimulus
    initial begin
        // Initialize signals
        btnc = 0;

        // Display header
        $display("=================================================");
        $display("Multi-Base Arithmetic Router Benchmark Testbench");
        $display("=================================================");
        $display("Time\t\tReset\tLED[3:0]\tStatus");
        $display("-------------------------------------------------");

        // Apply reset
        #100;
        btnc = 1;
        $display("%0t ns\tAssert\t%b\tReset Applied", $time, led);
        #100;
        btnc = 0;
        $display("%0t ns\tRelease\t%b\tReset Released", $time, led);

        // Wait for benchmark to complete
        // The benchmark will run through all operations and conditions
        $display("%0t ns\tRunning\t%b\tBenchmark Started", $time, led);

        // Monitor LED changes
        fork
            begin
                forever begin
                    @(led);
                    if (led != 4'b0000) begin
                        $display("%0t ns\tRunning\t%b\tWinner Detected!", $time, led);

                        if (led[0]) $display("         \t\t\t\t-> Base-2 (Binary) is optimal");
                        if (led[1]) $display("         \t\t\t\t-> Base-10 (Decimal) is optimal");
                        if (led[2]) $display("         \t\t\t\t-> Base-12 (Duodecimal) is optimal");
                        if (led[3]) $display("         \t\t\t\t-> Router (Intelligent) is optimal");
                    end
                end
            end
        join_none

        // Wait sufficient time for benchmark to complete
        #1000000;  // 1ms should be plenty

        // Final results
        $display("=================================================");
        $display("Benchmark Complete!");
        $display("=================================================");
        $display("Final LED State: %b", led);
        $display("");

        if (led[0]) $display("  LED0 ON: Base-2 (Binary) achieved best performance");
        if (led[1]) $display("  LED1 ON: Base-10 (Decimal) achieved best performance");
        if (led[2]) $display("  LED2 ON: Base-12 (Duodecimal) achieved best performance");
        if (led[3]) $display("  LED3 ON: Router (Intelligent) achieved best performance");

        $display("");
        $display("Expected Result: LED3 (Router) should be ON");
        $display("=================================================");

        // End simulation
        #1000;
        $finish;
    end

    // Optional: Dump waveforms for viewing in simulator
    initial begin
        $dumpfile("tb_top_module.vcd");
        $dumpvars(0, tb_top_module);
    end

    // Timeout watchdog
    initial begin
        #2000000;  // 2ms timeout
        $display("ERROR: Simulation timeout!");
        $finish;
    end

endmodule
