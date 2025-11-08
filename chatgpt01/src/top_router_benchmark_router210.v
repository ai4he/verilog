`timescale 1ns/1ps

module top_router_benchmark_router210(
  input  wire        sysclk,
  input  wire [3:0]  btn,
  output wire [4:0]  led
);
  // sync reset from BTN0 (active-high)
  reg [3:0] rst_sync;
  always @(posedge sysclk) rst_sync <= {rst_sync[2:0], btn[0]};
  wire rst = rst_sync[3];

  // Generate a start pulse (power-up auto run + BTN0 retrigger)
  reg [7:0] pwrup_cnt;
  reg       started_once;
  always @(posedge sysclk) begin
    if (rst) begin
      pwrup_cnt    <= 8'd0;
      started_once <= 1'b0;
    end else if (!started_once) begin
      pwrup_cnt    <= pwrup_cnt + 8'd1;
      if (pwrup_cnt == 8'hFF) started_once <= 1'b1;
    end
  end
  wire autostart_pulse = (!started_once && pwrup_cnt==8'hFF);

  reg btn0_d1, btn0_d2;
  always @(posedge sysclk) begin
    btn0_d1 <= btn[0];
    btn0_d2 <= btn0_d1;
  end
  wire btn0_rise = btn0_d1 & ~btn0_d2;

  wire start = autostart_pulse | btn0_rise;

  // Benchmark engine variant with five conditions
  wire [4:0] led_onehot;    // cond0..4 internally
  wire [31:0] t0,t1,t2,t3,t4; // unused at top level
  wire [31:0] t_total;
  wire [31:0] t_runtime;
  wire [15:0] ops_per_condition;
  wire        done;
  wire [2:0]  winner_code;

  bench_engine_router210 u_bench (
    .clk(sysclk),
    .rst(rst),
    .start(start),
    .led_onehot(led_onehot),
    .t_cond0(t0), .t_cond1(t1), .t_cond2(t2), .t_cond3(t3), .t_cond4(t4),
    .t_total(t_total),
    .t_runtime(t_runtime),
    .ops_per_condition(ops_per_condition),
    .done(done),
    .winner_code(winner_code)
  );

  // LED remap request:
  // - LED0 shows Base-2 wins (cond0)
  // - LED1 shows Base-10 wins (cond1)
  // - LED2 shows Base-12 wins (cond2)
  // - LED3 shows Router (2&10&12) wins (cond3)
  // - LED0 & LED1 together show Router (2&10) wins (cond4)
  assign led[0] = led_onehot[0] | led_onehot[4];
  assign led[1] = led_onehot[1] | led_onehot[4];
  assign led[2] = led_onehot[2];
  assign led[3] = led_onehot[3];
  assign led[4] = 1'b0; // unused external pin kept for flexibility
endmodule
