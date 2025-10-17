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

  // Desired mapping:
  // LED0 = Base12  -> condition 2
  // LED1 = Router  -> condition 3
  // LED2 = Base10  -> condition 1
  // LED3 = Base2   -> condition 0

  assign led[0] = led_onehot[2]; // cond2
  assign led[1] = led_onehot[3]; // cond3
  assign led[2] = led_onehot[1]; // cond1
  assign led[3] = led_onehot[0]; // cond0

endmodule
