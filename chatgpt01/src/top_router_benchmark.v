`timescale 1ns/1ps

module top_router_benchmark(
  input  wire        sysclk,      // 125 MHz PL clock
  input  wire [3:0]  btn,         // BTN0 used to re-run
  output wire [3:0]  led          // LD0..LD3
);
  // sync reset from BTN0 (active-high)
  reg [3:0] rst_sync;
  always @(posedge sysclk) rst_sync <= {rst_sync[2:0], btn[0]};
  wire rst = rst_sync[3];

  // === Generate a start pulse ===
  // 1) one-shot a short time after reset deassertion
  reg [7:0] pwrup_cnt;
  reg       started_once;
  always @(posedge sysclk) begin
    if (rst) begin
      pwrup_cnt    <= 8'd0;
      started_once <= 1'b0;
    end else if (!started_once) begin
      pwrup_cnt    <= pwrup_cnt + 8'd1;
      if (pwrup_cnt == 8'hFF) started_once <= 1'b1; // ~2 us @125MHz
    end
  end
  wire autostart_pulse = (!started_once && pwrup_cnt==8'hFF);

  // 2) allow BTN0 rising edge to retrigger a run
  reg btn0_d1, btn0_d2;
  always @(posedge sysclk) begin
    btn0_d1 <= btn[0];
    btn0_d2 <= btn0_d1;
  end
  wire btn0_rise = btn0_d1 & ~btn0_d2;

  wire start = autostart_pulse | btn0_rise;

  // === Benchmark ===
  wire [3:0]  led_onehot;    // cond0..3 internally
  wire [31:0] t0,t1,t2,t3;   // (unused at top)
  wire [31:0] t_total;       // aggregate cycles
  wire [31:0] t_runtime;     // runtime cycles
  wire [15:0] ops_per_condition;
  wire        done;
  wire [1:0]  winner_code;

  bench_engine u_bench (
    .clk(sysclk),
    .rst(rst),
    .start(start),
    .led_onehot(led_onehot),
    .t_cond0(t0), .t_cond1(t1), .t_cond2(t2), .t_cond3(t3),
    .t_total(t_total),
    .t_runtime(t_runtime),
    .ops_per_condition(ops_per_condition),
    .done(done),
    .winner_code(winner_code)
  );

  // === LED remap you requested ===
  // LED0 = Base12 (cond2)
  // LED1 = Router (cond3)
  // LED2 = Base10 (cond1)
  // LED3 = Base2  (cond0)
  assign led[0] = led_onehot[2];
  assign led[1] = led_onehot[3];
  assign led[2] = led_onehot[1];
  assign led[3] = led_onehot[0];
endmodule
