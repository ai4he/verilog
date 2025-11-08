`timescale 1ns/1ps
`include "common_opcodes.vh"

module router_bench_axi_router210 #(
  parameter B2_LAT_BIN  = 1, B2_LAT_DEC  = 8, B2_LAT_DUO  = 6,
  parameter B10_LAT_DEC = 1, B10_LAT_BIN = 6, B10_LAT_DUO = 6,
  parameter B12_LAT_DUO = 1, B12_LAT_BIN = 6, B12_LAT_DEC = 8
)(
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
  output wire [4:0]   led
);
  wire clk = s_axi_aclk;

  // Internal power-on reset for standalone PL clock usage
  reg [7:0] por_cnt = 8'd0;
  reg       por_active = 1'b1;
  always @(posedge clk) begin
    if (!por_active) begin
      // hold
    end else begin
      por_cnt    <= por_cnt + 8'd1;
      if (&por_cnt) por_active <= 1'b0;
    end
  end
  wire rst = (~s_axi_aresetn) | por_active;

  // Address map:
  // 0x00 CONTROL (W)  : bit0=start (self-clears), bit1=soft_clear
  // 0x04 STATUS  (R)  : bit0=running, bit1=done, bits[4:2]=winner_code
  // 0x08 TCOND0 (R)
  // 0x0C TCOND1 (R)
  // 0x10 TCOND2 (R)
  // 0x14 TCOND3 (R)
  // 0x18 TCOND4 (R)
  // 0x1C WIN_ONEHOT (R) : internal cond0..4
  // 0x20 TTOTAL (R)
  // 0x24 TRUNTIME (R)
  // 0x28 INFO (R) : [15:0] operations per condition
  reg start_pulse;
  reg soft_clear;

  reg [5:0] wr_addr;
  reg       wr_addr_valid;

  wire rd_hs = s_axi_arvalid && s_axi_arready;

  wire bench_done;
  wire [31:0] t0,t1,t2,t3,t4;
  wire [31:0] t_total;
  wire [31:0] t_runtime;
  wire [4:0]  led_onehot_int;
  wire [2:0]  winner_code;
  wire [15:0] ops_per_condition;

  reg  bench_done_latched;
  reg  bench_running;
  wire autostart_pulse;
  wire start   = autostart_pulse | start_pulse;
  wire running = bench_running;

  // Auto-start helper
  reg [15:0] pwrup_cnt;
  reg        started_once;
  always @(posedge clk) begin
    if (rst) begin
      pwrup_cnt    <= 16'd0;
      started_once <= 1'b0;
    end else if (!started_once) begin
      if (pwrup_cnt == 16'hFFFF) started_once <= 1'b1;
      else pwrup_cnt <= pwrup_cnt + 16'd1;
    end
  end
  assign autostart_pulse = (!started_once && pwrup_cnt==16'hFFFF);

  // Running tracker
  always @(posedge clk) begin
    if (rst) bench_running <= 1'b0;
    else if (start) bench_running <= 1'b1;
    else if (bench_done) bench_running <= 1'b0;
  end

  // Register/AXI handling
  always @(posedge clk) begin
    if (rst) begin
      s_axi_awready <= 1'b0; s_axi_wready <= 1'b0; s_axi_bvalid <= 1'b0; s_axi_bresp <= 2'b00;
      s_axi_arready <= 1'b0; s_axi_rvalid <= 1'b0; s_axi_rresp <= 2'b00; s_axi_rdata <= 32'd0;
      start_pulse <= 1'b0; soft_clear <= 1'b0; bench_done_latched <= 1'b0;
      wr_addr_valid <= 1'b0; wr_addr <= 6'd0;
    end else begin
      s_axi_awready <= 1'b0;
      s_axi_wready  <= 1'b0;
      s_axi_arready <= ~s_axi_arready && s_axi_arvalid;

      if (rd_hs) begin
        s_axi_rvalid <= 1'b1;
        s_axi_rresp  <= 2'b00;
      end else if (s_axi_rvalid && s_axi_rready) begin
        s_axi_rvalid <= 1'b0;
      end

      start_pulse <= 1'b0;
      soft_clear  <= 1'b0;

      if (!wr_addr_valid && s_axi_awvalid) begin
        s_axi_awready <= 1'b1;
        wr_addr       <= s_axi_awaddr;
        wr_addr_valid <= 1'b1;
      end

      if (wr_addr_valid && s_axi_wvalid && !s_axi_bvalid) begin
        s_axi_wready <= 1'b1;
        case (wr_addr[5:2])
          4'h0: begin
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

      if (soft_clear || start_pulse || rst) bench_done_latched <= 1'b0;
      else if (bench_done) bench_done_latched <= 1'b1;

      if (rd_hs) begin
        case (s_axi_araddr[5:2])
          4'h1: s_axi_rdata <= {27'd0, winner_code, bench_done_latched, running};
          4'h2: s_axi_rdata <= t0;
          4'h3: s_axi_rdata <= t1;
          4'h4: s_axi_rdata <= t2;
          4'h5: s_axi_rdata <= t3;
          4'h6: s_axi_rdata <= t4;
          4'h7: s_axi_rdata <= {27'd0, led_onehot_int};
          4'h8: s_axi_rdata <= t_total;
          4'h9: s_axi_rdata <= t_runtime;
          4'hA: s_axi_rdata <= {16'd0, ops_per_condition};
          default: s_axi_rdata <= 32'h0000_0000;
        endcase
      end
    end
  end

  bench_engine_router210 #(
    .B2_LAT_BIN(B2_LAT_BIN), .B2_LAT_DEC(B2_LAT_DEC), .B2_LAT_DUO(B2_LAT_DUO),
    .B10_LAT_DEC(B10_LAT_DEC), .B10_LAT_BIN(B10_LAT_BIN), .B10_LAT_DUO(B10_LAT_DUO),
    .B12_LAT_DUO(B12_LAT_DUO), .B12_LAT_BIN(B12_LAT_BIN), .B12_LAT_DEC(B12_LAT_DEC)
  ) u_bench (
    .clk(clk),
    .rst(rst),
    .start(start),
    .led_onehot(led_onehot_int),
    .t_cond0(t0), .t_cond1(t1), .t_cond2(t2), .t_cond3(t3), .t_cond4(t4),
    .t_total(t_total),
    .t_runtime(t_runtime),
    .ops_per_condition(ops_per_condition),
    .done(bench_done),
    .winner_code(winner_code)
  );

  // LED mapping identical to standalone top
  assign led[0] = led_onehot_int[0] | led_onehot_int[4];
  assign led[1] = led_onehot_int[1] | led_onehot_int[4];
  assign led[2] = led_onehot_int[2];
  assign led[3] = led_onehot_int[3];
  assign led[4] = 1'b0;
endmodule
