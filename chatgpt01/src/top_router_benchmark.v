`timescale 1ns/1ps

module top_router_benchmark(
  input  wire        sysclk,      // 125 MHz on PYNQ-Z2 PL (pin H16)
  input  wire [3:0]  btn,         // optional reset button: btn[0]
  output wire [3:0]  led          // user LEDs LD0..LD3
);
  // simple sync reset from BTN0 (active-high)
  reg [3:0] rst_sync;
  always @(posedge sysclk) begin
    rst_sync <= {rst_sync[2:0], btn[0]};
  end
  wire rst = rst_sync[3];

  wire [3:0] led_onehot;
  wire [31:0] t0,t1,t2,t3;

  bench_engine u_bench (
    .clk(sysclk),
    .rst(rst),
    .led_onehot(led_onehot),
    .t_cond0(t0), .t_cond1(t1), .t_cond2(t2), .t_cond3(t3)
  );

  assign led = led_onehot; // LD0 = cond0 (all base2), LD1 = cond1 (all base10), LD2 = cond2 (all base12), LD3 = cond3 (router)

endmodule
