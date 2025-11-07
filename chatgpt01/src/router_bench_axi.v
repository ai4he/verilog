`timescale 1ns/1ps
`include "common_opcodes.vh"

module router_bench_axi #(
  // same latency params exposed if you want to tweak post-synthesis
  parameter B2_LAT_BIN  = 1, B2_LAT_DEC  = 8, B2_LAT_DUO  = 6,
  parameter B10_LAT_DEC = 1, B10_LAT_BIN = 6, B10_LAT_DUO = 6,
  parameter B12_LAT_DUO = 1, B12_LAT_BIN = 6, B12_LAT_DEC = 8
)(
  // AXI4-Lite
  input  wire         s_axi_aclk,
  input  wire         s_axi_aresetn,
  input  wire [5:0]   s_axi_awaddr,
  input  wire         s_axi_awvalid,
  output reg          s_axi_awready,
  input  wire [31:0]  s_axi_wdata,
  input  wire [3:0]   s_axi_wstrb,
  input  wire         s_axi_wvalid,
  output reg          s_axi_wready,
  output reg  [1:0]   s_axi_bresp,
  output reg          s_axi_bvalid,
  input  wire         s_axi_bready,
  input  wire [5:0]   s_axi_araddr,
  input  wire         s_axi_arvalid,
  output reg          s_axi_arready,
  output reg [31:0]   s_axi_rdata,
  output reg  [1:0]   s_axi_rresp,
  output reg          s_axi_rvalid,
  input  wire         s_axi_rready,

  // LEDs out to board (after requested remap)
  output wire [3:0]   led
);
  wire clk = s_axi_aclk;
  // Internal power-on reset to allow standalone operation without PS reset
  reg [7:0] por_cnt = 8'd0;
  reg       por_active = 1'b1;
  always @(posedge clk) begin
    if (!por_active) begin
      // do nothing
    end else begin
      por_cnt    <= por_cnt + 8'd1;
      if (&por_cnt) por_active <= 1'b0; // deassert after 256 cycles
    end
  end
  wire rst = (~s_axi_aresetn) | por_active;

  // ----------------- Registers / address map -----------------
  // 0x00 CONTROL (W): bit0=start (self-clears), bit1=soft_clear (clears done)
  // 0x04 STATUS  (R): bit0=running, bit1=done, bits[3:2]=winner_code
  // 0x08 TCOND0 (R), 0x0C TCOND1 (R), 0x10 TCOND2 (R), 0x14 TCOND3 (R)
  // 0x18 WIN_ONEHOT (R): internal cond0..3 mapping (1-hot)
  // 0x1C TTOTAL   (R): sum of all condition cycle totals
  // 0x20 TRUNTIME (R): cycles from start→done (includes control overhead)
  // 0x24 INFO     (R): [15:0] operations executed per condition
  reg start_pulse;
  reg soft_clear;

  // ----------------- Auto-start pulse generation -----------------
  // Generate a start pulse automatically after reset deassertion
  // Use longer counter to ensure PS has stabilized
  reg [15:0] pwrup_cnt;
  reg        started_once;
  always @(posedge clk) begin
    if (rst) begin
      pwrup_cnt    <= 16'd0;
      started_once <= 1'b0;
    end else if (!started_once) begin
      if (pwrup_cnt == 16'hFFFF) begin
        started_once <= 1'b1;  // ~655 us @100MHz - wait for PS to stabilize
      end else begin
        pwrup_cnt    <= pwrup_cnt + 16'd1;
      end
    end
  end
  wire autostart_pulse = (!started_once && pwrup_cnt==16'hFFFF);
  wire running = (bench_st_running);
  reg  bench_done_latched;

  // Read handshake
  wire rd_hs = s_axi_arvalid && s_axi_arready;

  // Track outstanding write address between AW and W channels
  reg [5:0] wr_addr;
  reg       wr_addr_valid;

  // simple ready/valids
  always @(posedge clk) begin
    if (rst) begin
      s_axi_awready <= 1'b0; s_axi_wready <= 1'b0; s_axi_bvalid <= 1'b0; s_axi_bresp <= 2'b00;
      s_axi_arready <= 1'b0; s_axi_rvalid <= 1'b0; s_axi_rresp <= 2'b00; s_axi_rdata <= 32'd0;
      start_pulse <= 1'b0; soft_clear <= 1'b0; bench_done_latched <= 1'b0;
      wr_addr_valid <= 1'b0; wr_addr <= 6'd0;
    end else begin
      // defaults
      s_axi_awready <= 1'b0;
      s_axi_wready  <= 1'b0;
      s_axi_arready <= ~s_axi_arready && s_axi_arvalid;
      if (rd_hs) begin
        s_axi_rvalid <= 1'b1;
        s_axi_rresp  <= 2'b00;
      end else if (s_axi_rvalid && s_axi_rready) begin
        s_axi_rvalid <= 1'b0;
      end

      // decode write
      start_pulse <= 1'b0;
      soft_clear  <= 1'b0;
      if (!wr_addr_valid && s_axi_awvalid) begin
        s_axi_awready <= 1'b1;
        wr_addr       <= s_axi_awaddr;
        wr_addr_valid <= 1'b1;
      end

      if (wr_addr_valid && s_axi_wvalid && !s_axi_bvalid) begin
        s_axi_wready <= 1'b1;
        case (wr_addr[5:2])  // word offsets
          4'h0: begin // CONTROL
            if (s_axi_wdata[0]) start_pulse <= 1'b1;
            if (s_axi_wdata[1]) soft_clear  <= 1'b1;
          end
          default: ;
        endcase
        s_axi_bvalid <= 1'b1;
        s_axi_bresp  <= 2'b00;
        wr_addr_valid <= 1'b0;
      end else if (s_axi_bvalid && s_axi_bready) begin
        s_axi_bvalid <= 1'b0;
      end

      // latch done flag until soft_clear or new start
      if (soft_clear || start_pulse || rst) bench_done_latched <= 1'b0;
      else if (bench_done) bench_done_latched <= 1'b1;

      // decode read
      if (rd_hs) begin
        case (s_axi_araddr[5:2])
          4'h1: s_axi_rdata <= {28'd0, winner_code, bench_done_latched, running}; // STATUS
          4'h2: s_axi_rdata <= t0;
          4'h3: s_axi_rdata <= t1;
          4'h4: s_axi_rdata <= t2;
          4'h5: s_axi_rdata <= t3;
          4'h6: s_axi_rdata <= {28'd0, led_onehot_int}; // internal cond0..3
          4'h7: s_axi_rdata <= t_total;
          4'h8: s_axi_rdata <= t_runtime;
          4'h9: s_axi_rdata <= {16'd0, ops_per_condition};
          default: s_axi_rdata <= 32'h0000_0000; // CONTROL and unmapped reads
        endcase
      end
    end
  end

  // ----------------- Bench instance -----------------
  wire        bench_done;
  wire [31:0] t0,t1,t2,t3;
  wire [31:0] t_total;
  wire [31:0] t_runtime;
  wire [3:0]  led_onehot_int;   // cond0..3
  wire [1:0]  winner_code;
  wire [15:0] ops_per_condition;

  // Combine auto-start and AXI start pulses
  wire start = autostart_pulse | start_pulse;

  // Running indicator (simple)
  reg bench_st_running;
  always @(posedge clk) begin
    if (rst) bench_st_running <= 1'b0;
    else if (start) bench_st_running <= 1'b1;
    else if (bench_done)  bench_st_running <= 1'b0;
  end

  bench_engine #(
    .B2_LAT_BIN(B2_LAT_BIN), .B2_LAT_DEC(B2_LAT_DEC), .B2_LAT_DUO(B2_LAT_DUO),
    .B10_LAT_DEC(B10_LAT_DEC), .B10_LAT_BIN(B10_LAT_BIN), .B10_LAT_DUO(B10_LAT_DUO),
    .B12_LAT_DUO(B12_LAT_DUO), .B12_LAT_BIN(B12_LAT_BIN), .B12_LAT_DEC(B12_LAT_DEC)
  ) u_bench (
    .clk(clk),
    .rst(rst),
    .start(start),
    .led_onehot(led_onehot_int),
    .t_cond0(t0), .t_cond1(t1), .t_cond2(t2), .t_cond3(t3),
    .t_total(t_total),
    .t_runtime(t_runtime),
    .ops_per_condition(ops_per_condition),
    .done(bench_done),
    .winner_code(winner_code)
  );

  // ----------------- LED mapping (your requested order) -----------------
  // External board LEDs must show: LED0=Base12(cond2), LED1=Router(cond3),
  // LED2=Base10(cond1), LED3=Base2(cond0).
  assign led[0] = led_onehot_int[2];
  assign led[1] = led_onehot_int[3];
  assign led[2] = led_onehot_int[1];
  assign led[3] = led_onehot_int[0];
endmodule
