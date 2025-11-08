// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Nov  7 19:46:11 2025
// Host        : DESKTOP-E4COIK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Carlos/Documents/projects/verilog/chatgpt01/scripts/vivado_pynq_router_bench_router210/pynq_router_bench_router210.gen/sources_1/bd/router210_bd/ip/router210_bd_bench_axi_0_0/router210_bd_bench_axi_0_0_sim_netlist.v
// Design      : router210_bd_bench_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "router210_bd_bench_axi_0_0,router_bench_axi_router210,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "router_bench_axi_router210,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module router210_bd_bench_axi_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN router210_bd_sysclk, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN router210_bd_sysclk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [5:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  output [4:0]led;

  wire \<const0> ;
  wire [3:0]\^led ;
  wire s_axi_aclk;
  wire [5:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign led[4] = \<const0> ;
  assign led[3:0] = \^led [3:0];
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  router210_bd_bench_axi_0_0_router_bench_axi_router210 inst
       (.led(\^led ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_reg_0(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[1:0]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "base10_alu" *) 
module router210_bd_bench_axi_0_0_base10_alu
   (\r_opcode_reg[1] ,
    \st_reg[0] ,
    \st_reg[0]_0 ,
    busy_reg_0,
    s_axi_aclk,
    \countdown_reg[0]_0 ,
    Q,
    \countdown_reg[1]_0 ,
    \st_reg[0]_1 ,
    routed_target__7,
    done_b12,
    done_b2,
    \st_reg[0]_2 );
  output \r_opcode_reg[1] ;
  output \st_reg[0] ;
  output \st_reg[0]_0 ;
  input busy_reg_0;
  input s_axi_aclk;
  input \countdown_reg[0]_0 ;
  input [3:0]Q;
  input \countdown_reg[1]_0 ;
  input \st_reg[0]_1 ;
  input [1:0]routed_target__7;
  input done_b12;
  input done_b2;
  input \st_reg[0]_2 ;

  wire [3:0]Q;
  wire busy0;
  wire busy_reg_0;
  wire busy_reg_n_0;
  wire \countdown[0]_i_1__0_n_0 ;
  wire \countdown[1]_i_1__0_n_0 ;
  wire \countdown[2]_i_1__0_n_0 ;
  wire \countdown[3]_i_1__0_n_0 ;
  wire \countdown[4]_i_1__0_n_0 ;
  wire \countdown[5]_i_1__0_n_0 ;
  wire \countdown[6]_i_1__0_n_0 ;
  wire \countdown[7]_i_1_n_0 ;
  wire \countdown[7]_i_2__1_n_0 ;
  wire \countdown[7]_i_3__0_n_0 ;
  wire \countdown[7]_i_4__0_n_0 ;
  wire \countdown[7]_i_5_n_0 ;
  wire \countdown_reg[0]_0 ;
  wire \countdown_reg[1]_0 ;
  wire \countdown_reg_n_0_[0] ;
  wire \countdown_reg_n_0_[1] ;
  wire \countdown_reg_n_0_[2] ;
  wire \countdown_reg_n_0_[3] ;
  wire \countdown_reg_n_0_[4] ;
  wire \countdown_reg_n_0_[5] ;
  wire \countdown_reg_n_0_[6] ;
  wire \countdown_reg_n_0_[7] ;
  wire done_b10;
  wire done_b12;
  wire done_b2;
  wire done_i_1__1_n_0;
  wire \r_opcode_reg[1] ;
  wire [1:0]routed_target__7;
  wire s_axi_aclk;
  wire \st[0]_i_2_n_0 ;
  wire \st_reg[0] ;
  wire \st_reg[0]_0 ;
  wire \st_reg[0]_1 ;
  wire \st_reg[0]_2 ;

  FDRE busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\countdown[7]_i_2__1_n_0 ),
        .Q(busy_reg_n_0),
        .R(busy_reg_0));
  LUT6 #(
    .INIT(64'h023000000230FFFF)) 
    \countdown[0]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(busy0),
        .I5(\countdown_reg_n_0_[0] ),
        .O(\countdown[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h990999F999F999F9)) 
    \countdown[1]_i_1__0 
       (.I0(\countdown_reg_n_0_[0] ),
        .I1(\countdown_reg_n_0_[1] ),
        .I2(\countdown_reg[0]_0 ),
        .I3(busy_reg_n_0),
        .I4(\countdown_reg[1]_0 ),
        .I5(\r_opcode_reg[1] ),
        .O(\countdown[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F70707F70707F)) 
    \countdown[2]_i_1__0 
       (.I0(\r_opcode_reg[1] ),
        .I1(\countdown_reg[1]_0 ),
        .I2(busy0),
        .I3(\countdown_reg_n_0_[0] ),
        .I4(\countdown_reg_n_0_[2] ),
        .I5(\countdown_reg_n_0_[1] ),
        .O(\countdown[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0E10000F0E1F0E1)) 
    \countdown[3]_i_1__0 
       (.I0(\countdown_reg_n_0_[1] ),
        .I1(\countdown_reg_n_0_[2] ),
        .I2(\countdown_reg_n_0_[3] ),
        .I3(\countdown_reg_n_0_[0] ),
        .I4(busy_reg_n_0),
        .I5(\countdown_reg[0]_0 ),
        .O(\countdown[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \countdown[3]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\r_opcode_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000FFFE0001)) 
    \countdown[4]_i_1__0 
       (.I0(\countdown_reg_n_0_[0] ),
        .I1(\countdown_reg_n_0_[2] ),
        .I2(\countdown_reg_n_0_[1] ),
        .I3(\countdown_reg_n_0_[3] ),
        .I4(\countdown_reg_n_0_[4] ),
        .I5(busy0),
        .O(\countdown[4]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \countdown[4]_i_2__0 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .O(busy0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    \countdown[5]_i_1__0 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .I2(\countdown[7]_i_5_n_0 ),
        .I3(\countdown_reg_n_0_[5] ),
        .O(\countdown[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDD00D00D)) 
    \countdown[6]_i_1__0 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .I2(\countdown_reg_n_0_[5] ),
        .I3(\countdown_reg_n_0_[6] ),
        .I4(\countdown[7]_i_5_n_0 ),
        .O(\countdown[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \countdown[7]_i_1 
       (.I0(busy_reg_0),
        .I1(busy_reg_n_0),
        .I2(\countdown_reg[0]_0 ),
        .O(\countdown[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \countdown[7]_i_2__1 
       (.I0(\countdown_reg_n_0_[7] ),
        .I1(\countdown_reg_n_0_[6] ),
        .I2(\countdown_reg_n_0_[5] ),
        .I3(\countdown[7]_i_4__0_n_0 ),
        .I4(busy_reg_n_0),
        .I5(\countdown_reg[0]_0 ),
        .O(\countdown[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC90000CCC9CCC9)) 
    \countdown[7]_i_3__0 
       (.I0(\countdown[7]_i_5_n_0 ),
        .I1(\countdown_reg_n_0_[7] ),
        .I2(\countdown_reg_n_0_[6] ),
        .I3(\countdown_reg_n_0_[5] ),
        .I4(busy_reg_n_0),
        .I5(\countdown_reg[0]_0 ),
        .O(\countdown[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \countdown[7]_i_4__0 
       (.I0(\countdown_reg_n_0_[3] ),
        .I1(\countdown_reg_n_0_[1] ),
        .I2(\countdown_reg_n_0_[2] ),
        .I3(\countdown_reg_n_0_[4] ),
        .O(\countdown[7]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \countdown[7]_i_5 
       (.I0(\countdown_reg_n_0_[4] ),
        .I1(\countdown_reg_n_0_[2] ),
        .I2(\countdown_reg_n_0_[1] ),
        .I3(\countdown_reg_n_0_[3] ),
        .I4(\countdown_reg_n_0_[0] ),
        .O(\countdown[7]_i_5_n_0 ));
  FDRE \countdown_reg[0] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_2__1_n_0 ),
        .D(\countdown[0]_i_1__0_n_0 ),
        .Q(\countdown_reg_n_0_[0] ),
        .R(busy_reg_0));
  FDRE \countdown_reg[1] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_2__1_n_0 ),
        .D(\countdown[1]_i_1__0_n_0 ),
        .Q(\countdown_reg_n_0_[1] ),
        .R(busy_reg_0));
  FDRE \countdown_reg[2] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_2__1_n_0 ),
        .D(\countdown[2]_i_1__0_n_0 ),
        .Q(\countdown_reg_n_0_[2] ),
        .R(busy_reg_0));
  FDRE \countdown_reg[3] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_2__1_n_0 ),
        .D(\countdown[3]_i_1__0_n_0 ),
        .Q(\countdown_reg_n_0_[3] ),
        .R(busy_reg_0));
  FDRE \countdown_reg[4] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_2__1_n_0 ),
        .D(\countdown[4]_i_1__0_n_0 ),
        .Q(\countdown_reg_n_0_[4] ),
        .R(\countdown[7]_i_1_n_0 ));
  FDRE \countdown_reg[5] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_2__1_n_0 ),
        .D(\countdown[5]_i_1__0_n_0 ),
        .Q(\countdown_reg_n_0_[5] ),
        .R(\countdown[7]_i_1_n_0 ));
  FDRE \countdown_reg[6] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_2__1_n_0 ),
        .D(\countdown[6]_i_1__0_n_0 ),
        .Q(\countdown_reg_n_0_[6] ),
        .R(\countdown[7]_i_1_n_0 ));
  FDRE \countdown_reg[7] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_2__1_n_0 ),
        .D(\countdown[7]_i_3__0_n_0 ),
        .Q(\countdown_reg_n_0_[7] ),
        .R(\countdown[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    done_i_1
       (.I0(busy_reg_0),
        .I1(\st_reg[0]_1 ),
        .I2(\st[0]_i_2_n_0 ),
        .O(\st_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    done_i_1__1
       (.I0(\countdown_reg_n_0_[7] ),
        .I1(\countdown_reg_n_0_[6] ),
        .I2(\countdown_reg_n_0_[5] ),
        .I3(\countdown[7]_i_4__0_n_0 ),
        .I4(busy_reg_0),
        .I5(busy_reg_n_0),
        .O(done_i_1__1_n_0));
  FDRE done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(done_i_1__1_n_0),
        .Q(done_b10),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \st[0]_i_1 
       (.I0(\st[0]_i_2_n_0 ),
        .I1(\st_reg[0]_1 ),
        .I2(\st_reg[0]_2 ),
        .O(\st_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \st[0]_i_2 
       (.I0(done_b10),
        .I1(routed_target__7[0]),
        .I2(done_b12),
        .I3(routed_target__7[1]),
        .I4(done_b2),
        .O(\st[0]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "base12_alu" *) 
module router210_bd_bench_axi_0_0_base12_alu
   (por_active_reg,
    done_b12,
    \r_opcode_reg[2] ,
    s_axi_aclk,
    \countdown_reg[0]_0 ,
    Q,
    E,
    s_axi_aresetn);
  output por_active_reg;
  output done_b12;
  output \r_opcode_reg[2] ;
  input s_axi_aclk;
  input \countdown_reg[0]_0 ;
  input [3:0]Q;
  input [0:0]E;
  input s_axi_aresetn;

  wire [0:0]E;
  wire [3:0]Q;
  wire busy0;
  wire busy_reg_n_0;
  wire \countdown[0]_i_1__1_n_0 ;
  wire \countdown[1]_i_1__1_n_0 ;
  wire \countdown[2]_i_1__1_n_0 ;
  wire \countdown[2]_i_2_n_0 ;
  wire \countdown[3]_i_1__1_n_0 ;
  wire \countdown[3]_i_2_n_0 ;
  wire \countdown[3]_i_3__0_n_0 ;
  wire \countdown[4]_i_1__1_n_0 ;
  wire \countdown[5]_i_1__1_n_0 ;
  wire \countdown[6]_i_1__1_n_0 ;
  wire \countdown[7]_i_1__0_n_0 ;
  wire \countdown[7]_i_2__0_n_0 ;
  wire \countdown[7]_i_3__1_n_0 ;
  wire \countdown[7]_i_4__1_n_0 ;
  wire \countdown_reg[0]_0 ;
  wire \countdown_reg_n_0_[0] ;
  wire \countdown_reg_n_0_[1] ;
  wire \countdown_reg_n_0_[2] ;
  wire \countdown_reg_n_0_[3] ;
  wire \countdown_reg_n_0_[4] ;
  wire \countdown_reg_n_0_[5] ;
  wire \countdown_reg_n_0_[6] ;
  wire \countdown_reg_n_0_[7] ;
  wire done_b12;
  wire done_i_1__2_n_0;
  wire por_active_reg;
  wire \r_opcode_reg[2] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  FDRE busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\countdown[7]_i_1__0_n_0 ),
        .Q(busy_reg_n_0),
        .R(por_active_reg));
  LUT6 #(
    .INIT(64'h500200005002FFFF)) 
    \countdown[0]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(busy0),
        .I5(\countdown_reg_n_0_[0] ),
        .O(\countdown[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h99009999990F9999)) 
    \countdown[1]_i_1__1 
       (.I0(\countdown_reg_n_0_[0] ),
        .I1(\countdown_reg_n_0_[1] ),
        .I2(\countdown[3]_i_3__0_n_0 ),
        .I3(busy_reg_n_0),
        .I4(\countdown_reg[0]_0 ),
        .I5(\r_opcode_reg[2] ),
        .O(\countdown[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDD00D00D)) 
    \countdown[2]_i_1__1 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .I2(\countdown_reg_n_0_[0] ),
        .I3(\countdown_reg_n_0_[2] ),
        .I4(\countdown_reg_n_0_[1] ),
        .I5(\countdown[2]_i_2_n_0 ),
        .O(\countdown[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020202)) 
    \countdown[2]_i_2 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\countdown[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0000C9C9C9C9)) 
    \countdown[3]_i_1__1 
       (.I0(\countdown_reg_n_0_[0] ),
        .I1(\countdown_reg_n_0_[3] ),
        .I2(\countdown[3]_i_2_n_0 ),
        .I3(\countdown[3]_i_3__0_n_0 ),
        .I4(\r_opcode_reg[2] ),
        .I5(busy0),
        .O(\countdown[3]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \countdown[3]_i_2 
       (.I0(\countdown_reg_n_0_[1] ),
        .I1(\countdown_reg_n_0_[2] ),
        .O(\countdown[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \countdown[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\r_opcode_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5002)) 
    \countdown[3]_i_3__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\countdown[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0001)) 
    \countdown[4]_i_1__1 
       (.I0(\countdown_reg_n_0_[0] ),
        .I1(\countdown_reg_n_0_[2] ),
        .I2(\countdown_reg_n_0_[1] ),
        .I3(\countdown_reg_n_0_[3] ),
        .I4(\countdown_reg_n_0_[4] ),
        .I5(busy0),
        .O(\countdown[4]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \countdown[4]_i_2__1 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .O(busy0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    \countdown[5]_i_1__1 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .I2(\countdown[7]_i_4__1_n_0 ),
        .I3(\countdown_reg_n_0_[5] ),
        .O(\countdown[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hDD00D00D)) 
    \countdown[6]_i_1__1 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .I2(\countdown_reg_n_0_[5] ),
        .I3(\countdown_reg_n_0_[6] ),
        .I4(\countdown[7]_i_4__1_n_0 ),
        .O(\countdown[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \countdown[7]_i_1__0 
       (.I0(\countdown_reg_n_0_[7] ),
        .I1(\countdown_reg_n_0_[6] ),
        .I2(\countdown_reg_n_0_[5] ),
        .I3(\countdown[7]_i_3__1_n_0 ),
        .I4(busy_reg_n_0),
        .I5(\countdown_reg[0]_0 ),
        .O(\countdown[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCC90000CCC9CCC9)) 
    \countdown[7]_i_2__0 
       (.I0(\countdown[7]_i_4__1_n_0 ),
        .I1(\countdown_reg_n_0_[7] ),
        .I2(\countdown_reg_n_0_[6] ),
        .I3(\countdown_reg_n_0_[5] ),
        .I4(busy_reg_n_0),
        .I5(\countdown_reg[0]_0 ),
        .O(\countdown[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \countdown[7]_i_3__1 
       (.I0(\countdown_reg_n_0_[3] ),
        .I1(\countdown_reg_n_0_[1] ),
        .I2(\countdown_reg_n_0_[2] ),
        .I3(\countdown_reg_n_0_[4] ),
        .O(\countdown[7]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \countdown[7]_i_4__1 
       (.I0(\countdown_reg_n_0_[4] ),
        .I1(\countdown_reg_n_0_[2] ),
        .I2(\countdown_reg_n_0_[1] ),
        .I3(\countdown_reg_n_0_[3] ),
        .I4(\countdown_reg_n_0_[0] ),
        .O(\countdown[7]_i_4__1_n_0 ));
  FDRE \countdown_reg[0] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__0_n_0 ),
        .D(\countdown[0]_i_1__1_n_0 ),
        .Q(\countdown_reg_n_0_[0] ),
        .R(por_active_reg));
  FDRE \countdown_reg[1] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__0_n_0 ),
        .D(\countdown[1]_i_1__1_n_0 ),
        .Q(\countdown_reg_n_0_[1] ),
        .R(por_active_reg));
  FDRE \countdown_reg[2] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__0_n_0 ),
        .D(\countdown[2]_i_1__1_n_0 ),
        .Q(\countdown_reg_n_0_[2] ),
        .R(por_active_reg));
  FDRE \countdown_reg[3] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__0_n_0 ),
        .D(\countdown[3]_i_1__1_n_0 ),
        .Q(\countdown_reg_n_0_[3] ),
        .R(por_active_reg));
  FDRE \countdown_reg[4] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__0_n_0 ),
        .D(\countdown[4]_i_1__1_n_0 ),
        .Q(\countdown_reg_n_0_[4] ),
        .R(por_active_reg));
  FDRE \countdown_reg[5] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__0_n_0 ),
        .D(\countdown[5]_i_1__1_n_0 ),
        .Q(\countdown_reg_n_0_[5] ),
        .R(por_active_reg));
  FDRE \countdown_reg[6] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__0_n_0 ),
        .D(\countdown[6]_i_1__1_n_0 ),
        .Q(\countdown_reg_n_0_[6] ),
        .R(por_active_reg));
  FDRE \countdown_reg[7] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__0_n_0 ),
        .D(\countdown[7]_i_2__0_n_0 ),
        .Q(\countdown_reg_n_0_[7] ),
        .R(por_active_reg));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    done_i_1__2
       (.I0(\countdown_reg_n_0_[7] ),
        .I1(\countdown_reg_n_0_[6] ),
        .I2(\countdown_reg_n_0_[5] ),
        .I3(\countdown[7]_i_3__1_n_0 ),
        .I4(por_active_reg),
        .I5(busy_reg_n_0),
        .O(done_i_1__2_n_0));
  FDRE done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(done_i_1__2_n_0),
        .Q(done_b12),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    s_axi_awready_i_1
       (.I0(E),
        .I1(s_axi_aresetn),
        .O(por_active_reg));
endmodule

(* ORIG_REF_NAME = "base2_alu" *) 
module router210_bd_bench_axi_0_0_base2_alu
   (done_b2,
    \r_opcode_reg[3] ,
    \countdown_reg[7]_0 ,
    s_axi_aclk,
    Q,
    \countdown_reg[0]_0 ,
    \countdown_reg[3]_0 ,
    \countdown_reg[3]_1 );
  output done_b2;
  output \r_opcode_reg[3] ;
  input \countdown_reg[7]_0 ;
  input s_axi_aclk;
  input [3:0]Q;
  input \countdown_reg[0]_0 ;
  input \countdown_reg[3]_0 ;
  input \countdown_reg[3]_1 ;

  wire [3:0]Q;
  wire busy0;
  wire busy_reg_n_0;
  wire [7:0]countdown;
  wire \countdown[3]_i_4_n_0 ;
  wire \countdown[7]_i_1__1_n_0 ;
  wire \countdown[7]_i_3_n_0 ;
  wire \countdown[7]_i_4_n_0 ;
  wire \countdown_reg[0]_0 ;
  wire \countdown_reg[3]_0 ;
  wire \countdown_reg[3]_1 ;
  wire \countdown_reg[7]_0 ;
  wire done_b2;
  wire done_i_1__0_n_0;
  wire [7:0]p_1_in;
  wire \r_opcode_reg[3] ;
  wire s_axi_aclk;

  FDRE busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\countdown[7]_i_1__1_n_0 ),
        .Q(busy_reg_n_0),
        .R(\countdown_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h011100000111FFFF)) 
    \countdown[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(busy0),
        .I5(countdown[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h99F99909)) 
    \countdown[1]_i_1 
       (.I0(countdown[0]),
        .I1(countdown[1]),
        .I2(\countdown_reg[0]_0 ),
        .I3(busy_reg_n_0),
        .I4(\r_opcode_reg[3] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hC9C9FFC9C9C900C9)) 
    \countdown[2]_i_1 
       (.I0(countdown[0]),
        .I1(countdown[2]),
        .I2(countdown[1]),
        .I3(\countdown_reg[0]_0 ),
        .I4(busy_reg_n_0),
        .I5(\r_opcode_reg[3] ),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'hEA)) 
    \countdown[2]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\r_opcode_reg[3] ));
  LUT6 #(
    .INIT(64'h8F8F80808F80808F)) 
    \countdown[3]_i_1 
       (.I0(\countdown_reg[3]_0 ),
        .I1(\countdown_reg[3]_1 ),
        .I2(busy0),
        .I3(countdown[0]),
        .I4(countdown[3]),
        .I5(\countdown[3]_i_4_n_0 ),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \countdown[3]_i_4 
       (.I0(countdown[1]),
        .I1(countdown[2]),
        .O(\countdown[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0001)) 
    \countdown[4]_i_1 
       (.I0(countdown[0]),
        .I1(countdown[2]),
        .I2(countdown[1]),
        .I3(countdown[3]),
        .I4(countdown[4]),
        .I5(busy0),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \countdown[4]_i_2 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .O(busy0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hD00D)) 
    \countdown[5]_i_1 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .I2(\countdown[7]_i_4_n_0 ),
        .I3(countdown[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hDD00D00D)) 
    \countdown[6]_i_1 
       (.I0(\countdown_reg[0]_0 ),
        .I1(busy_reg_n_0),
        .I2(countdown[5]),
        .I3(countdown[6]),
        .I4(\countdown[7]_i_4_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \countdown[7]_i_1__1 
       (.I0(countdown[7]),
        .I1(countdown[6]),
        .I2(countdown[5]),
        .I3(\countdown[7]_i_3_n_0 ),
        .I4(busy_reg_n_0),
        .I5(\countdown_reg[0]_0 ),
        .O(\countdown[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC90000CCC9CCC9)) 
    \countdown[7]_i_2 
       (.I0(\countdown[7]_i_4_n_0 ),
        .I1(countdown[7]),
        .I2(countdown[6]),
        .I3(countdown[5]),
        .I4(busy_reg_n_0),
        .I5(\countdown_reg[0]_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \countdown[7]_i_3 
       (.I0(countdown[3]),
        .I1(countdown[1]),
        .I2(countdown[2]),
        .I3(countdown[4]),
        .O(\countdown[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \countdown[7]_i_4 
       (.I0(countdown[4]),
        .I1(countdown[2]),
        .I2(countdown[1]),
        .I3(countdown[3]),
        .I4(countdown[0]),
        .O(\countdown[7]_i_4_n_0 ));
  FDRE \countdown_reg[0] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__1_n_0 ),
        .D(p_1_in[0]),
        .Q(countdown[0]),
        .R(\countdown_reg[7]_0 ));
  FDRE \countdown_reg[1] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__1_n_0 ),
        .D(p_1_in[1]),
        .Q(countdown[1]),
        .R(\countdown_reg[7]_0 ));
  FDRE \countdown_reg[2] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__1_n_0 ),
        .D(p_1_in[2]),
        .Q(countdown[2]),
        .R(\countdown_reg[7]_0 ));
  FDRE \countdown_reg[3] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__1_n_0 ),
        .D(p_1_in[3]),
        .Q(countdown[3]),
        .R(\countdown_reg[7]_0 ));
  FDRE \countdown_reg[4] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__1_n_0 ),
        .D(p_1_in[4]),
        .Q(countdown[4]),
        .R(\countdown_reg[7]_0 ));
  FDRE \countdown_reg[5] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__1_n_0 ),
        .D(p_1_in[5]),
        .Q(countdown[5]),
        .R(\countdown_reg[7]_0 ));
  FDRE \countdown_reg[6] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__1_n_0 ),
        .D(p_1_in[6]),
        .Q(countdown[6]),
        .R(\countdown_reg[7]_0 ));
  FDRE \countdown_reg[7] 
       (.C(s_axi_aclk),
        .CE(\countdown[7]_i_1__1_n_0 ),
        .D(p_1_in[7]),
        .Q(countdown[7]),
        .R(\countdown_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    done_i_1__0
       (.I0(countdown[7]),
        .I1(countdown[6]),
        .I2(countdown[5]),
        .I3(\countdown[7]_i_3_n_0 ),
        .I4(\countdown_reg[7]_0 ),
        .I5(busy_reg_n_0),
        .O(done_i_1__0_n_0));
  FDRE done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(done_i_1__0_n_0),
        .Q(done_b2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "bench_engine_router210" *) 
module router210_bd_bench_axi_0_0_bench_engine_router210
   (rst,
    winner_valid_reg_0,
    pwrup_cnt_reg_0_sp_1,
    led,
    D,
    winner_valid_reg_1,
    s_axi_aclk,
    data0,
    bench_done_latched_reg,
    bench_done_latched_reg_0,
    E,
    s_axi_aresetn,
    \FSM_sequential_st_reg[2]_0 ,
    pwrup_cnt_reg,
    \s_axi_rdata_reg[0] ,
    \s_axi_rdata_reg[0]_0 ,
    \s_axi_rdata_reg[0]_1 ,
    \s_axi_rdata_reg[0]_2 ,
    s_axi_araddr,
    \s_axi_rdata_reg[0]_3 ,
    \s_axi_rdata_reg[0]_4 ,
    \s_axi_rdata_reg[5] );
  output rst;
  output winner_valid_reg_0;
  output pwrup_cnt_reg_0_sp_1;
  output [3:0]led;
  output [31:0]D;
  output winner_valid_reg_1;
  input s_axi_aclk;
  input [1:0]data0;
  input bench_done_latched_reg;
  input bench_done_latched_reg_0;
  input [0:0]E;
  input s_axi_aresetn;
  input \FSM_sequential_st_reg[2]_0 ;
  input [15:0]pwrup_cnt_reg;
  input \s_axi_rdata_reg[0] ;
  input \s_axi_rdata_reg[0]_0 ;
  input \s_axi_rdata_reg[0]_1 ;
  input \s_axi_rdata_reg[0]_2 ;
  input [3:0]s_axi_araddr;
  input \s_axi_rdata_reg[0]_3 ;
  input \s_axi_rdata_reg[0]_4 ;
  input \s_axi_rdata_reg[5] ;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_sequential_st[1]_i_2_n_0 ;
  wire \FSM_sequential_st_reg[2]_0 ;
  wire [2:0]\MINSEL.idx ;
  wire \MINSEL.idx1_carry__0_i_10_n_0 ;
  wire \MINSEL.idx1_carry__0_i_11_n_0 ;
  wire \MINSEL.idx1_carry__0_i_12_n_0 ;
  wire \MINSEL.idx1_carry__0_i_13_n_0 ;
  wire \MINSEL.idx1_carry__0_i_14_n_0 ;
  wire \MINSEL.idx1_carry__0_i_15_n_0 ;
  wire \MINSEL.idx1_carry__0_i_16_n_0 ;
  wire \MINSEL.idx1_carry__0_i_1_n_0 ;
  wire \MINSEL.idx1_carry__0_i_2_n_0 ;
  wire \MINSEL.idx1_carry__0_i_3_n_0 ;
  wire \MINSEL.idx1_carry__0_i_4_n_0 ;
  wire \MINSEL.idx1_carry__0_i_5_n_0 ;
  wire \MINSEL.idx1_carry__0_i_6_n_0 ;
  wire \MINSEL.idx1_carry__0_i_7_n_0 ;
  wire \MINSEL.idx1_carry__0_i_8_n_0 ;
  wire \MINSEL.idx1_carry__0_i_9_n_0 ;
  wire \MINSEL.idx1_carry__0_n_0 ;
  wire \MINSEL.idx1_carry__0_n_1 ;
  wire \MINSEL.idx1_carry__0_n_2 ;
  wire \MINSEL.idx1_carry__0_n_3 ;
  wire \MINSEL.idx1_carry__1_i_10_n_0 ;
  wire \MINSEL.idx1_carry__1_i_11_n_0 ;
  wire \MINSEL.idx1_carry__1_i_12_n_0 ;
  wire \MINSEL.idx1_carry__1_i_13_n_0 ;
  wire \MINSEL.idx1_carry__1_i_14_n_0 ;
  wire \MINSEL.idx1_carry__1_i_15_n_0 ;
  wire \MINSEL.idx1_carry__1_i_16_n_0 ;
  wire \MINSEL.idx1_carry__1_i_1_n_0 ;
  wire \MINSEL.idx1_carry__1_i_2_n_0 ;
  wire \MINSEL.idx1_carry__1_i_3_n_0 ;
  wire \MINSEL.idx1_carry__1_i_4_n_0 ;
  wire \MINSEL.idx1_carry__1_i_5_n_0 ;
  wire \MINSEL.idx1_carry__1_i_6_n_0 ;
  wire \MINSEL.idx1_carry__1_i_7_n_0 ;
  wire \MINSEL.idx1_carry__1_i_8_n_0 ;
  wire \MINSEL.idx1_carry__1_i_9_n_0 ;
  wire \MINSEL.idx1_carry__1_n_0 ;
  wire \MINSEL.idx1_carry__1_n_1 ;
  wire \MINSEL.idx1_carry__1_n_2 ;
  wire \MINSEL.idx1_carry__1_n_3 ;
  wire \MINSEL.idx1_carry__2_i_10_n_0 ;
  wire \MINSEL.idx1_carry__2_i_11_n_0 ;
  wire \MINSEL.idx1_carry__2_i_12_n_0 ;
  wire \MINSEL.idx1_carry__2_i_13_n_0 ;
  wire \MINSEL.idx1_carry__2_i_14_n_0 ;
  wire \MINSEL.idx1_carry__2_i_15_n_0 ;
  wire \MINSEL.idx1_carry__2_i_16_n_0 ;
  wire \MINSEL.idx1_carry__2_i_1_n_0 ;
  wire \MINSEL.idx1_carry__2_i_2_n_0 ;
  wire \MINSEL.idx1_carry__2_i_3_n_0 ;
  wire \MINSEL.idx1_carry__2_i_4_n_0 ;
  wire \MINSEL.idx1_carry__2_i_5_n_0 ;
  wire \MINSEL.idx1_carry__2_i_6_n_0 ;
  wire \MINSEL.idx1_carry__2_i_7_n_0 ;
  wire \MINSEL.idx1_carry__2_i_8_n_0 ;
  wire \MINSEL.idx1_carry__2_i_9_n_0 ;
  wire \MINSEL.idx1_carry__2_n_0 ;
  wire \MINSEL.idx1_carry__2_n_1 ;
  wire \MINSEL.idx1_carry__2_n_2 ;
  wire \MINSEL.idx1_carry__2_n_3 ;
  wire \MINSEL.idx1_carry_i_10_n_0 ;
  wire \MINSEL.idx1_carry_i_11_n_0 ;
  wire \MINSEL.idx1_carry_i_12_n_0 ;
  wire \MINSEL.idx1_carry_i_13_n_0 ;
  wire \MINSEL.idx1_carry_i_14_n_0 ;
  wire \MINSEL.idx1_carry_i_15_n_0 ;
  wire \MINSEL.idx1_carry_i_16_n_0 ;
  wire \MINSEL.idx1_carry_i_1_n_0 ;
  wire \MINSEL.idx1_carry_i_2_n_0 ;
  wire \MINSEL.idx1_carry_i_3_n_0 ;
  wire \MINSEL.idx1_carry_i_4_n_0 ;
  wire \MINSEL.idx1_carry_i_5_n_0 ;
  wire \MINSEL.idx1_carry_i_6_n_0 ;
  wire \MINSEL.idx1_carry_i_7_n_0 ;
  wire \MINSEL.idx1_carry_i_8_n_0 ;
  wire \MINSEL.idx1_carry_i_9_n_0 ;
  wire \MINSEL.idx1_carry_n_0 ;
  wire \MINSEL.idx1_carry_n_1 ;
  wire \MINSEL.idx1_carry_n_2 ;
  wire \MINSEL.idx1_carry_n_3 ;
  wire \MINSEL.minv1_carry__0_i_1_n_0 ;
  wire \MINSEL.minv1_carry__0_i_2_n_0 ;
  wire \MINSEL.minv1_carry__0_i_3_n_0 ;
  wire \MINSEL.minv1_carry__0_i_4_n_0 ;
  wire \MINSEL.minv1_carry__0_i_5_n_0 ;
  wire \MINSEL.minv1_carry__0_i_6_n_0 ;
  wire \MINSEL.minv1_carry__0_i_7_n_0 ;
  wire \MINSEL.minv1_carry__0_i_8_n_0 ;
  wire \MINSEL.minv1_carry__0_n_0 ;
  wire \MINSEL.minv1_carry__0_n_1 ;
  wire \MINSEL.minv1_carry__0_n_2 ;
  wire \MINSEL.minv1_carry__0_n_3 ;
  wire \MINSEL.minv1_carry__1_i_1_n_0 ;
  wire \MINSEL.minv1_carry__1_i_2_n_0 ;
  wire \MINSEL.minv1_carry__1_i_3_n_0 ;
  wire \MINSEL.minv1_carry__1_i_4_n_0 ;
  wire \MINSEL.minv1_carry__1_i_5_n_0 ;
  wire \MINSEL.minv1_carry__1_i_6_n_0 ;
  wire \MINSEL.minv1_carry__1_i_7_n_0 ;
  wire \MINSEL.minv1_carry__1_i_8_n_0 ;
  wire \MINSEL.minv1_carry__1_n_0 ;
  wire \MINSEL.minv1_carry__1_n_1 ;
  wire \MINSEL.minv1_carry__1_n_2 ;
  wire \MINSEL.minv1_carry__1_n_3 ;
  wire \MINSEL.minv1_carry__2_i_1_n_0 ;
  wire \MINSEL.minv1_carry__2_i_2_n_0 ;
  wire \MINSEL.minv1_carry__2_i_3_n_0 ;
  wire \MINSEL.minv1_carry__2_i_4_n_0 ;
  wire \MINSEL.minv1_carry__2_i_5_n_0 ;
  wire \MINSEL.minv1_carry__2_i_6_n_0 ;
  wire \MINSEL.minv1_carry__2_i_7_n_0 ;
  wire \MINSEL.minv1_carry__2_i_8_n_0 ;
  wire \MINSEL.minv1_carry__2_n_0 ;
  wire \MINSEL.minv1_carry__2_n_1 ;
  wire \MINSEL.minv1_carry__2_n_2 ;
  wire \MINSEL.minv1_carry__2_n_3 ;
  wire \MINSEL.minv1_carry_i_1_n_0 ;
  wire \MINSEL.minv1_carry_i_2_n_0 ;
  wire \MINSEL.minv1_carry_i_3_n_0 ;
  wire \MINSEL.minv1_carry_i_4_n_0 ;
  wire \MINSEL.minv1_carry_i_5_n_0 ;
  wire \MINSEL.minv1_carry_i_6_n_0 ;
  wire \MINSEL.minv1_carry_i_7_n_0 ;
  wire \MINSEL.minv1_carry_i_8_n_0 ;
  wire \MINSEL.minv1_carry_n_0 ;
  wire \MINSEL.minv1_carry_n_1 ;
  wire \MINSEL.minv1_carry_n_2 ;
  wire \MINSEL.minv1_carry_n_3 ;
  wire \MINSEL.minv1_inferred__0/i__carry__0_n_0 ;
  wire \MINSEL.minv1_inferred__0/i__carry__0_n_1 ;
  wire \MINSEL.minv1_inferred__0/i__carry__0_n_2 ;
  wire \MINSEL.minv1_inferred__0/i__carry__0_n_3 ;
  wire \MINSEL.minv1_inferred__0/i__carry__1_n_0 ;
  wire \MINSEL.minv1_inferred__0/i__carry__1_n_1 ;
  wire \MINSEL.minv1_inferred__0/i__carry__1_n_2 ;
  wire \MINSEL.minv1_inferred__0/i__carry__1_n_3 ;
  wire \MINSEL.minv1_inferred__0/i__carry__2_n_0 ;
  wire \MINSEL.minv1_inferred__0/i__carry__2_n_1 ;
  wire \MINSEL.minv1_inferred__0/i__carry__2_n_2 ;
  wire \MINSEL.minv1_inferred__0/i__carry__2_n_3 ;
  wire \MINSEL.minv1_inferred__0/i__carry_n_0 ;
  wire \MINSEL.minv1_inferred__0/i__carry_n_1 ;
  wire \MINSEL.minv1_inferred__0/i__carry_n_2 ;
  wire \MINSEL.minv1_inferred__0/i__carry_n_3 ;
  wire [31:0]\MINSEL.minv__95 ;
  wire bench_done;
  wire bench_done_latched_reg;
  wire bench_done_latched_reg_0;
  wire [31:0]cond_cycle_acc;
  wire cond_cycle_acc0_carry__0_n_0;
  wire cond_cycle_acc0_carry__0_n_1;
  wire cond_cycle_acc0_carry__0_n_2;
  wire cond_cycle_acc0_carry__0_n_3;
  wire cond_cycle_acc0_carry__1_n_0;
  wire cond_cycle_acc0_carry__1_n_1;
  wire cond_cycle_acc0_carry__1_n_2;
  wire cond_cycle_acc0_carry__1_n_3;
  wire cond_cycle_acc0_carry__2_n_0;
  wire cond_cycle_acc0_carry__2_n_1;
  wire cond_cycle_acc0_carry__2_n_2;
  wire cond_cycle_acc0_carry__2_n_3;
  wire cond_cycle_acc0_carry__3_n_0;
  wire cond_cycle_acc0_carry__3_n_1;
  wire cond_cycle_acc0_carry__3_n_2;
  wire cond_cycle_acc0_carry__3_n_3;
  wire cond_cycle_acc0_carry__4_n_0;
  wire cond_cycle_acc0_carry__4_n_1;
  wire cond_cycle_acc0_carry__4_n_2;
  wire cond_cycle_acc0_carry__4_n_3;
  wire cond_cycle_acc0_carry__5_n_0;
  wire cond_cycle_acc0_carry__5_n_1;
  wire cond_cycle_acc0_carry__5_n_2;
  wire cond_cycle_acc0_carry__5_n_3;
  wire cond_cycle_acc0_carry__6_n_2;
  wire cond_cycle_acc0_carry__6_n_3;
  wire cond_cycle_acc0_carry_n_0;
  wire cond_cycle_acc0_carry_n_1;
  wire cond_cycle_acc0_carry_n_2;
  wire cond_cycle_acc0_carry_n_3;
  wire \cond_cycle_acc[31]_i_1_n_0 ;
  wire \cond_cycle_acc_reg_n_0_[0] ;
  wire \cond_cycle_acc_reg_n_0_[10] ;
  wire \cond_cycle_acc_reg_n_0_[11] ;
  wire \cond_cycle_acc_reg_n_0_[12] ;
  wire \cond_cycle_acc_reg_n_0_[13] ;
  wire \cond_cycle_acc_reg_n_0_[14] ;
  wire \cond_cycle_acc_reg_n_0_[15] ;
  wire \cond_cycle_acc_reg_n_0_[16] ;
  wire \cond_cycle_acc_reg_n_0_[17] ;
  wire \cond_cycle_acc_reg_n_0_[18] ;
  wire \cond_cycle_acc_reg_n_0_[19] ;
  wire \cond_cycle_acc_reg_n_0_[1] ;
  wire \cond_cycle_acc_reg_n_0_[20] ;
  wire \cond_cycle_acc_reg_n_0_[21] ;
  wire \cond_cycle_acc_reg_n_0_[22] ;
  wire \cond_cycle_acc_reg_n_0_[23] ;
  wire \cond_cycle_acc_reg_n_0_[24] ;
  wire \cond_cycle_acc_reg_n_0_[25] ;
  wire \cond_cycle_acc_reg_n_0_[26] ;
  wire \cond_cycle_acc_reg_n_0_[27] ;
  wire \cond_cycle_acc_reg_n_0_[28] ;
  wire \cond_cycle_acc_reg_n_0_[29] ;
  wire \cond_cycle_acc_reg_n_0_[2] ;
  wire \cond_cycle_acc_reg_n_0_[30] ;
  wire \cond_cycle_acc_reg_n_0_[31] ;
  wire \cond_cycle_acc_reg_n_0_[3] ;
  wire \cond_cycle_acc_reg_n_0_[4] ;
  wire \cond_cycle_acc_reg_n_0_[5] ;
  wire \cond_cycle_acc_reg_n_0_[6] ;
  wire \cond_cycle_acc_reg_n_0_[7] ;
  wire \cond_cycle_acc_reg_n_0_[8] ;
  wire \cond_cycle_acc_reg_n_0_[9] ;
  wire [2:1]cond_idx;
  wire \cond_idx[0]_i_1_n_0 ;
  wire \cond_idx[1]_i_1_n_0 ;
  wire \cond_idx[2]_i_1_n_0 ;
  wire \cond_idx[2]_i_3_n_0 ;
  wire \cond_idx[2]_i_4_n_0 ;
  wire \cond_idx_reg_n_0_[0] ;
  wire \cond_idx_reg_n_0_[1] ;
  wire \cond_idx_reg_n_0_[2] ;
  wire [1:0]data0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [31:1]in16;
  wire [31:0]in18;
  wire [3:0]led;
  wire [4:0]op_idx;
  wire \op_idx[4]_i_1_n_0 ;
  wire \op_idx[4]_i_3_n_0 ;
  wire \op_idx[4]_i_4_n_0 ;
  wire \op_idx_reg_n_0_[0] ;
  wire \op_idx_reg_n_0_[1] ;
  wire \op_idx_reg_n_0_[2] ;
  wire \op_idx_reg_n_0_[3] ;
  wire \op_idx_reg_n_0_[4] ;
  wire [3:0]ops;
  wire p_0_out_carry__0_i_1_n_0;
  wire p_0_out_carry__0_i_2_n_0;
  wire p_0_out_carry__0_i_3_n_0;
  wire p_0_out_carry__0_i_4_n_0;
  wire p_0_out_carry__0_i_5_n_0;
  wire p_0_out_carry__0_i_6_n_0;
  wire p_0_out_carry__0_i_7_n_0;
  wire p_0_out_carry__0_i_8_n_0;
  wire p_0_out_carry__0_n_0;
  wire p_0_out_carry__0_n_1;
  wire p_0_out_carry__0_n_2;
  wire p_0_out_carry__0_n_3;
  wire p_0_out_carry__1_i_1_n_0;
  wire p_0_out_carry__1_i_2_n_0;
  wire p_0_out_carry__1_i_3_n_0;
  wire p_0_out_carry__1_i_4_n_0;
  wire p_0_out_carry__1_i_5_n_0;
  wire p_0_out_carry__1_i_6_n_0;
  wire p_0_out_carry__1_i_7_n_0;
  wire p_0_out_carry__1_i_8_n_0;
  wire p_0_out_carry__1_n_0;
  wire p_0_out_carry__1_n_1;
  wire p_0_out_carry__1_n_2;
  wire p_0_out_carry__1_n_3;
  wire p_0_out_carry__2_i_1_n_0;
  wire p_0_out_carry__2_i_2_n_0;
  wire p_0_out_carry__2_i_3_n_0;
  wire p_0_out_carry__2_i_4_n_0;
  wire p_0_out_carry__2_i_5_n_0;
  wire p_0_out_carry__2_i_6_n_0;
  wire p_0_out_carry__2_i_7_n_0;
  wire p_0_out_carry__2_i_8_n_0;
  wire p_0_out_carry__2_n_0;
  wire p_0_out_carry__2_n_1;
  wire p_0_out_carry__2_n_2;
  wire p_0_out_carry__2_n_3;
  wire p_0_out_carry_i_1_n_0;
  wire p_0_out_carry_i_2_n_0;
  wire p_0_out_carry_i_3_n_0;
  wire p_0_out_carry_i_4_n_0;
  wire p_0_out_carry_i_5_n_0;
  wire p_0_out_carry_i_6_n_0;
  wire p_0_out_carry_i_7_n_0;
  wire p_0_out_carry_i_8_n_0;
  wire p_0_out_carry_n_0;
  wire p_0_out_carry_n_1;
  wire p_0_out_carry_n_2;
  wire p_0_out_carry_n_3;
  wire p_1_out_carry__0_i_1_n_0;
  wire p_1_out_carry__0_i_2_n_0;
  wire p_1_out_carry__0_i_3_n_0;
  wire p_1_out_carry__0_i_4_n_0;
  wire p_1_out_carry__0_i_5_n_0;
  wire p_1_out_carry__0_i_6_n_0;
  wire p_1_out_carry__0_i_7_n_0;
  wire p_1_out_carry__0_i_8_n_0;
  wire p_1_out_carry__0_n_0;
  wire p_1_out_carry__0_n_1;
  wire p_1_out_carry__0_n_2;
  wire p_1_out_carry__0_n_3;
  wire p_1_out_carry__1_i_1_n_0;
  wire p_1_out_carry__1_i_2_n_0;
  wire p_1_out_carry__1_i_3_n_0;
  wire p_1_out_carry__1_i_4_n_0;
  wire p_1_out_carry__1_i_5_n_0;
  wire p_1_out_carry__1_i_6_n_0;
  wire p_1_out_carry__1_i_7_n_0;
  wire p_1_out_carry__1_i_8_n_0;
  wire p_1_out_carry__1_n_0;
  wire p_1_out_carry__1_n_1;
  wire p_1_out_carry__1_n_2;
  wire p_1_out_carry__1_n_3;
  wire p_1_out_carry__2_i_1_n_0;
  wire p_1_out_carry__2_i_2_n_0;
  wire p_1_out_carry__2_i_3_n_0;
  wire p_1_out_carry__2_i_4_n_0;
  wire p_1_out_carry__2_i_5_n_0;
  wire p_1_out_carry__2_i_6_n_0;
  wire p_1_out_carry__2_i_7_n_0;
  wire p_1_out_carry__2_i_8_n_0;
  wire p_1_out_carry__2_n_0;
  wire p_1_out_carry__2_n_1;
  wire p_1_out_carry__2_n_2;
  wire p_1_out_carry__2_n_3;
  wire p_1_out_carry_i_1_n_0;
  wire p_1_out_carry_i_2_n_0;
  wire p_1_out_carry_i_3_n_0;
  wire p_1_out_carry_i_4_n_0;
  wire p_1_out_carry_i_5_n_0;
  wire p_1_out_carry_i_6_n_0;
  wire p_1_out_carry_i_7_n_0;
  wire p_1_out_carry_i_8_n_0;
  wire p_1_out_carry_n_0;
  wire p_1_out_carry_n_1;
  wire p_1_out_carry_n_2;
  wire p_1_out_carry_n_3;
  wire \pwrup_cnt[0]_i_5_n_0 ;
  wire \pwrup_cnt[0]_i_6_n_0 ;
  wire \pwrup_cnt[0]_i_7_n_0 ;
  wire [15:0]pwrup_cnt_reg;
  wire pwrup_cnt_reg_0_sn_1;
  wire r_cond;
  wire \r_cond_reg_n_0_[0] ;
  wire \r_cond_reg_n_0_[1] ;
  wire \r_cond_reg_n_0_[2] ;
  wire [3:0]r_opcode;
  wire r_start;
  wire r_start_reg_n_0;
  wire rst;
  wire runtime_active;
  wire runtime_active_reg_n_0;
  wire [31:0]runtime_counter;
  wire \runtime_counter[31]_i_1_n_0 ;
  wire \runtime_counter_reg_n_0_[0] ;
  wire \runtime_counter_reg_n_0_[10] ;
  wire \runtime_counter_reg_n_0_[11] ;
  wire \runtime_counter_reg_n_0_[12] ;
  wire \runtime_counter_reg_n_0_[13] ;
  wire \runtime_counter_reg_n_0_[14] ;
  wire \runtime_counter_reg_n_0_[15] ;
  wire \runtime_counter_reg_n_0_[16] ;
  wire \runtime_counter_reg_n_0_[17] ;
  wire \runtime_counter_reg_n_0_[18] ;
  wire \runtime_counter_reg_n_0_[19] ;
  wire \runtime_counter_reg_n_0_[1] ;
  wire \runtime_counter_reg_n_0_[20] ;
  wire \runtime_counter_reg_n_0_[21] ;
  wire \runtime_counter_reg_n_0_[22] ;
  wire \runtime_counter_reg_n_0_[23] ;
  wire \runtime_counter_reg_n_0_[24] ;
  wire \runtime_counter_reg_n_0_[25] ;
  wire \runtime_counter_reg_n_0_[26] ;
  wire \runtime_counter_reg_n_0_[27] ;
  wire \runtime_counter_reg_n_0_[28] ;
  wire \runtime_counter_reg_n_0_[29] ;
  wire \runtime_counter_reg_n_0_[2] ;
  wire \runtime_counter_reg_n_0_[30] ;
  wire \runtime_counter_reg_n_0_[31] ;
  wire \runtime_counter_reg_n_0_[3] ;
  wire \runtime_counter_reg_n_0_[4] ;
  wire \runtime_counter_reg_n_0_[5] ;
  wire \runtime_counter_reg_n_0_[6] ;
  wire \runtime_counter_reg_n_0_[7] ;
  wire \runtime_counter_reg_n_0_[8] ;
  wire \runtime_counter_reg_n_0_[9] ;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire \s_axi_rdata[0]_i_2_n_0 ;
  wire \s_axi_rdata[0]_i_3_n_0 ;
  wire \s_axi_rdata[0]_i_4_n_0 ;
  wire \s_axi_rdata[10]_i_2_n_0 ;
  wire \s_axi_rdata[10]_i_3_n_0 ;
  wire \s_axi_rdata[11]_i_2_n_0 ;
  wire \s_axi_rdata[11]_i_3_n_0 ;
  wire \s_axi_rdata[12]_i_2_n_0 ;
  wire \s_axi_rdata[12]_i_3_n_0 ;
  wire \s_axi_rdata[13]_i_2_n_0 ;
  wire \s_axi_rdata[13]_i_3_n_0 ;
  wire \s_axi_rdata[14]_i_2_n_0 ;
  wire \s_axi_rdata[14]_i_3_n_0 ;
  wire \s_axi_rdata[15]_i_2_n_0 ;
  wire \s_axi_rdata[15]_i_3_n_0 ;
  wire \s_axi_rdata[16]_i_2_n_0 ;
  wire \s_axi_rdata[16]_i_3_n_0 ;
  wire \s_axi_rdata[17]_i_2_n_0 ;
  wire \s_axi_rdata[17]_i_3_n_0 ;
  wire \s_axi_rdata[18]_i_2_n_0 ;
  wire \s_axi_rdata[18]_i_3_n_0 ;
  wire \s_axi_rdata[19]_i_2_n_0 ;
  wire \s_axi_rdata[19]_i_3_n_0 ;
  wire \s_axi_rdata[1]_i_2_n_0 ;
  wire \s_axi_rdata[1]_i_3_n_0 ;
  wire \s_axi_rdata[1]_i_4_n_0 ;
  wire \s_axi_rdata[1]_i_5_n_0 ;
  wire \s_axi_rdata[20]_i_2_n_0 ;
  wire \s_axi_rdata[20]_i_3_n_0 ;
  wire \s_axi_rdata[21]_i_2_n_0 ;
  wire \s_axi_rdata[21]_i_3_n_0 ;
  wire \s_axi_rdata[22]_i_2_n_0 ;
  wire \s_axi_rdata[22]_i_3_n_0 ;
  wire \s_axi_rdata[23]_i_2_n_0 ;
  wire \s_axi_rdata[23]_i_3_n_0 ;
  wire \s_axi_rdata[24]_i_2_n_0 ;
  wire \s_axi_rdata[24]_i_3_n_0 ;
  wire \s_axi_rdata[25]_i_2_n_0 ;
  wire \s_axi_rdata[25]_i_3_n_0 ;
  wire \s_axi_rdata[26]_i_2_n_0 ;
  wire \s_axi_rdata[26]_i_3_n_0 ;
  wire \s_axi_rdata[27]_i_2_n_0 ;
  wire \s_axi_rdata[27]_i_3_n_0 ;
  wire \s_axi_rdata[28]_i_2_n_0 ;
  wire \s_axi_rdata[28]_i_3_n_0 ;
  wire \s_axi_rdata[29]_i_2_n_0 ;
  wire \s_axi_rdata[29]_i_3_n_0 ;
  wire \s_axi_rdata[2]_i_2_n_0 ;
  wire \s_axi_rdata[2]_i_3_n_0 ;
  wire \s_axi_rdata[2]_i_4_n_0 ;
  wire \s_axi_rdata[30]_i_2_n_0 ;
  wire \s_axi_rdata[30]_i_3_n_0 ;
  wire \s_axi_rdata[31]_i_3_n_0 ;
  wire \s_axi_rdata[31]_i_6_n_0 ;
  wire \s_axi_rdata[3]_i_2_n_0 ;
  wire \s_axi_rdata[3]_i_3_n_0 ;
  wire \s_axi_rdata[3]_i_4_n_0 ;
  wire \s_axi_rdata[4]_i_2_n_0 ;
  wire \s_axi_rdata[4]_i_4_n_0 ;
  wire \s_axi_rdata[4]_i_5_n_0 ;
  wire \s_axi_rdata[4]_i_6_n_0 ;
  wire \s_axi_rdata[4]_i_7_n_0 ;
  wire \s_axi_rdata[5]_i_2_n_0 ;
  wire \s_axi_rdata[5]_i_3_n_0 ;
  wire \s_axi_rdata[6]_i_2_n_0 ;
  wire \s_axi_rdata[6]_i_3_n_0 ;
  wire \s_axi_rdata[7]_i_2_n_0 ;
  wire \s_axi_rdata[7]_i_3_n_0 ;
  wire \s_axi_rdata[8]_i_2_n_0 ;
  wire \s_axi_rdata[8]_i_3_n_0 ;
  wire \s_axi_rdata[9]_i_2_n_0 ;
  wire \s_axi_rdata[9]_i_3_n_0 ;
  wire \s_axi_rdata_reg[0] ;
  wire \s_axi_rdata_reg[0]_0 ;
  wire \s_axi_rdata_reg[0]_1 ;
  wire \s_axi_rdata_reg[0]_2 ;
  wire \s_axi_rdata_reg[0]_3 ;
  wire \s_axi_rdata_reg[0]_4 ;
  wire \s_axi_rdata_reg[5] ;
  wire [2:0]st;
  wire [2:2]st__0;
  wire start;
  wire [31:0]t0;
  wire [31:0]t1;
  wire [31:0]t2;
  wire [31:0]t3;
  wire [31:0]t4;
  wire [31:0]t_runtime;
  wire t_runtime0_carry__0_n_0;
  wire t_runtime0_carry__0_n_1;
  wire t_runtime0_carry__0_n_2;
  wire t_runtime0_carry__0_n_3;
  wire t_runtime0_carry__0_n_4;
  wire t_runtime0_carry__0_n_5;
  wire t_runtime0_carry__0_n_6;
  wire t_runtime0_carry__0_n_7;
  wire t_runtime0_carry__1_n_0;
  wire t_runtime0_carry__1_n_1;
  wire t_runtime0_carry__1_n_2;
  wire t_runtime0_carry__1_n_3;
  wire t_runtime0_carry__1_n_4;
  wire t_runtime0_carry__1_n_5;
  wire t_runtime0_carry__1_n_6;
  wire t_runtime0_carry__1_n_7;
  wire t_runtime0_carry__2_n_0;
  wire t_runtime0_carry__2_n_1;
  wire t_runtime0_carry__2_n_2;
  wire t_runtime0_carry__2_n_3;
  wire t_runtime0_carry__2_n_4;
  wire t_runtime0_carry__2_n_5;
  wire t_runtime0_carry__2_n_6;
  wire t_runtime0_carry__2_n_7;
  wire t_runtime0_carry__3_n_0;
  wire t_runtime0_carry__3_n_1;
  wire t_runtime0_carry__3_n_2;
  wire t_runtime0_carry__3_n_3;
  wire t_runtime0_carry__3_n_4;
  wire t_runtime0_carry__3_n_5;
  wire t_runtime0_carry__3_n_6;
  wire t_runtime0_carry__3_n_7;
  wire t_runtime0_carry__4_n_0;
  wire t_runtime0_carry__4_n_1;
  wire t_runtime0_carry__4_n_2;
  wire t_runtime0_carry__4_n_3;
  wire t_runtime0_carry__4_n_4;
  wire t_runtime0_carry__4_n_5;
  wire t_runtime0_carry__4_n_6;
  wire t_runtime0_carry__4_n_7;
  wire t_runtime0_carry__5_n_0;
  wire t_runtime0_carry__5_n_1;
  wire t_runtime0_carry__5_n_2;
  wire t_runtime0_carry__5_n_3;
  wire t_runtime0_carry__5_n_4;
  wire t_runtime0_carry__5_n_5;
  wire t_runtime0_carry__5_n_6;
  wire t_runtime0_carry__5_n_7;
  wire t_runtime0_carry__6_n_2;
  wire t_runtime0_carry__6_n_3;
  wire t_runtime0_carry__6_n_5;
  wire t_runtime0_carry__6_n_6;
  wire t_runtime0_carry__6_n_7;
  wire t_runtime0_carry_n_0;
  wire t_runtime0_carry_n_1;
  wire t_runtime0_carry_n_2;
  wire t_runtime0_carry_n_3;
  wire t_runtime0_carry_n_4;
  wire t_runtime0_carry_n_5;
  wire t_runtime0_carry_n_6;
  wire t_runtime0_carry_n_7;
  wire \t_runtime[0]_i_1_n_0 ;
  wire \t_runtime[10]_i_1_n_0 ;
  wire \t_runtime[11]_i_1_n_0 ;
  wire \t_runtime[12]_i_1_n_0 ;
  wire \t_runtime[13]_i_1_n_0 ;
  wire \t_runtime[14]_i_1_n_0 ;
  wire \t_runtime[15]_i_1_n_0 ;
  wire \t_runtime[16]_i_1_n_0 ;
  wire \t_runtime[17]_i_1_n_0 ;
  wire \t_runtime[18]_i_1_n_0 ;
  wire \t_runtime[19]_i_1_n_0 ;
  wire \t_runtime[1]_i_1_n_0 ;
  wire \t_runtime[20]_i_1_n_0 ;
  wire \t_runtime[21]_i_1_n_0 ;
  wire \t_runtime[22]_i_1_n_0 ;
  wire \t_runtime[23]_i_1_n_0 ;
  wire \t_runtime[24]_i_1_n_0 ;
  wire \t_runtime[25]_i_1_n_0 ;
  wire \t_runtime[26]_i_1_n_0 ;
  wire \t_runtime[27]_i_1_n_0 ;
  wire \t_runtime[28]_i_1_n_0 ;
  wire \t_runtime[29]_i_1_n_0 ;
  wire \t_runtime[2]_i_1_n_0 ;
  wire \t_runtime[30]_i_1_n_0 ;
  wire \t_runtime[31]_i_1_n_0 ;
  wire \t_runtime[3]_i_1_n_0 ;
  wire \t_runtime[4]_i_1_n_0 ;
  wire \t_runtime[5]_i_1_n_0 ;
  wire \t_runtime[6]_i_1_n_0 ;
  wire \t_runtime[7]_i_1_n_0 ;
  wire \t_runtime[8]_i_1_n_0 ;
  wire \t_runtime[9]_i_1_n_0 ;
  wire [31:0]t_total;
  wire t_total0__0_carry__0_i_1_n_0;
  wire t_total0__0_carry__0_i_2_n_0;
  wire t_total0__0_carry__0_i_3_n_0;
  wire t_total0__0_carry__0_i_4_n_0;
  wire t_total0__0_carry__0_i_5_n_0;
  wire t_total0__0_carry__0_i_6_n_0;
  wire t_total0__0_carry__0_i_7_n_0;
  wire t_total0__0_carry__0_i_8_n_0;
  wire t_total0__0_carry__0_n_0;
  wire t_total0__0_carry__0_n_1;
  wire t_total0__0_carry__0_n_2;
  wire t_total0__0_carry__0_n_3;
  wire t_total0__0_carry__0_n_4;
  wire t_total0__0_carry__0_n_5;
  wire t_total0__0_carry__0_n_6;
  wire t_total0__0_carry__0_n_7;
  wire t_total0__0_carry__1_i_1_n_0;
  wire t_total0__0_carry__1_i_2_n_0;
  wire t_total0__0_carry__1_i_3_n_0;
  wire t_total0__0_carry__1_i_4_n_0;
  wire t_total0__0_carry__1_i_5_n_0;
  wire t_total0__0_carry__1_i_6_n_0;
  wire t_total0__0_carry__1_i_7_n_0;
  wire t_total0__0_carry__1_i_8_n_0;
  wire t_total0__0_carry__1_n_0;
  wire t_total0__0_carry__1_n_1;
  wire t_total0__0_carry__1_n_2;
  wire t_total0__0_carry__1_n_3;
  wire t_total0__0_carry__1_n_4;
  wire t_total0__0_carry__1_n_5;
  wire t_total0__0_carry__1_n_6;
  wire t_total0__0_carry__1_n_7;
  wire t_total0__0_carry__2_i_1_n_0;
  wire t_total0__0_carry__2_i_2_n_0;
  wire t_total0__0_carry__2_i_3_n_0;
  wire t_total0__0_carry__2_i_4_n_0;
  wire t_total0__0_carry__2_i_5_n_0;
  wire t_total0__0_carry__2_i_6_n_0;
  wire t_total0__0_carry__2_i_7_n_0;
  wire t_total0__0_carry__2_i_8_n_0;
  wire t_total0__0_carry__2_n_0;
  wire t_total0__0_carry__2_n_1;
  wire t_total0__0_carry__2_n_2;
  wire t_total0__0_carry__2_n_3;
  wire t_total0__0_carry__2_n_4;
  wire t_total0__0_carry__2_n_5;
  wire t_total0__0_carry__2_n_6;
  wire t_total0__0_carry__2_n_7;
  wire t_total0__0_carry__3_i_1_n_0;
  wire t_total0__0_carry__3_i_2_n_0;
  wire t_total0__0_carry__3_i_3_n_0;
  wire t_total0__0_carry__3_i_4_n_0;
  wire t_total0__0_carry__3_i_5_n_0;
  wire t_total0__0_carry__3_i_6_n_0;
  wire t_total0__0_carry__3_i_7_n_0;
  wire t_total0__0_carry__3_i_8_n_0;
  wire t_total0__0_carry__3_n_0;
  wire t_total0__0_carry__3_n_1;
  wire t_total0__0_carry__3_n_2;
  wire t_total0__0_carry__3_n_3;
  wire t_total0__0_carry__3_n_4;
  wire t_total0__0_carry__3_n_5;
  wire t_total0__0_carry__3_n_6;
  wire t_total0__0_carry__3_n_7;
  wire t_total0__0_carry__4_i_1_n_0;
  wire t_total0__0_carry__4_i_2_n_0;
  wire t_total0__0_carry__4_i_3_n_0;
  wire t_total0__0_carry__4_i_4_n_0;
  wire t_total0__0_carry__4_i_5_n_0;
  wire t_total0__0_carry__4_i_6_n_0;
  wire t_total0__0_carry__4_i_7_n_0;
  wire t_total0__0_carry__4_i_8_n_0;
  wire t_total0__0_carry__4_n_0;
  wire t_total0__0_carry__4_n_1;
  wire t_total0__0_carry__4_n_2;
  wire t_total0__0_carry__4_n_3;
  wire t_total0__0_carry__4_n_4;
  wire t_total0__0_carry__4_n_5;
  wire t_total0__0_carry__4_n_6;
  wire t_total0__0_carry__4_n_7;
  wire t_total0__0_carry__5_i_1_n_0;
  wire t_total0__0_carry__5_i_2_n_0;
  wire t_total0__0_carry__5_i_3_n_0;
  wire t_total0__0_carry__5_i_4_n_0;
  wire t_total0__0_carry__5_i_5_n_0;
  wire t_total0__0_carry__5_i_6_n_0;
  wire t_total0__0_carry__5_i_7_n_0;
  wire t_total0__0_carry__5_i_8_n_0;
  wire t_total0__0_carry__5_n_0;
  wire t_total0__0_carry__5_n_1;
  wire t_total0__0_carry__5_n_2;
  wire t_total0__0_carry__5_n_3;
  wire t_total0__0_carry__5_n_4;
  wire t_total0__0_carry__5_n_5;
  wire t_total0__0_carry__5_n_6;
  wire t_total0__0_carry__5_n_7;
  wire t_total0__0_carry__6_i_1_n_0;
  wire t_total0__0_carry__6_i_2_n_0;
  wire t_total0__0_carry__6_i_3_n_0;
  wire t_total0__0_carry__6_i_4_n_0;
  wire t_total0__0_carry__6_i_5_n_0;
  wire t_total0__0_carry__6_i_6_n_0;
  wire t_total0__0_carry__6_i_7_n_0;
  wire t_total0__0_carry__6_n_1;
  wire t_total0__0_carry__6_n_2;
  wire t_total0__0_carry__6_n_3;
  wire t_total0__0_carry__6_n_4;
  wire t_total0__0_carry__6_n_5;
  wire t_total0__0_carry__6_n_6;
  wire t_total0__0_carry__6_n_7;
  wire t_total0__0_carry_i_1_n_0;
  wire t_total0__0_carry_i_2_n_0;
  wire t_total0__0_carry_i_3_n_0;
  wire t_total0__0_carry_i_4_n_0;
  wire t_total0__0_carry_i_5_n_0;
  wire t_total0__0_carry_i_6_n_0;
  wire t_total0__0_carry_i_7_n_0;
  wire t_total0__0_carry_n_0;
  wire t_total0__0_carry_n_1;
  wire t_total0__0_carry_n_2;
  wire t_total0__0_carry_n_3;
  wire t_total0__0_carry_n_4;
  wire t_total0__0_carry_n_5;
  wire t_total0__0_carry_n_6;
  wire t_total0__0_carry_n_7;
  wire t_total0__94_carry__0_i_1_n_0;
  wire t_total0__94_carry__0_i_2_n_0;
  wire t_total0__94_carry__0_i_3_n_0;
  wire t_total0__94_carry__0_i_4_n_0;
  wire t_total0__94_carry__0_i_5_n_0;
  wire t_total0__94_carry__0_i_6_n_0;
  wire t_total0__94_carry__0_i_7_n_0;
  wire t_total0__94_carry__0_i_8_n_0;
  wire t_total0__94_carry__0_n_0;
  wire t_total0__94_carry__0_n_1;
  wire t_total0__94_carry__0_n_2;
  wire t_total0__94_carry__0_n_3;
  wire t_total0__94_carry__1_i_1_n_0;
  wire t_total0__94_carry__1_i_2_n_0;
  wire t_total0__94_carry__1_i_3_n_0;
  wire t_total0__94_carry__1_i_4_n_0;
  wire t_total0__94_carry__1_i_5_n_0;
  wire t_total0__94_carry__1_i_6_n_0;
  wire t_total0__94_carry__1_i_7_n_0;
  wire t_total0__94_carry__1_i_8_n_0;
  wire t_total0__94_carry__1_n_0;
  wire t_total0__94_carry__1_n_1;
  wire t_total0__94_carry__1_n_2;
  wire t_total0__94_carry__1_n_3;
  wire t_total0__94_carry__2_i_1_n_0;
  wire t_total0__94_carry__2_i_2_n_0;
  wire t_total0__94_carry__2_i_3_n_0;
  wire t_total0__94_carry__2_i_4_n_0;
  wire t_total0__94_carry__2_i_5_n_0;
  wire t_total0__94_carry__2_i_6_n_0;
  wire t_total0__94_carry__2_i_7_n_0;
  wire t_total0__94_carry__2_i_8_n_0;
  wire t_total0__94_carry__2_n_0;
  wire t_total0__94_carry__2_n_1;
  wire t_total0__94_carry__2_n_2;
  wire t_total0__94_carry__2_n_3;
  wire t_total0__94_carry__3_i_1_n_0;
  wire t_total0__94_carry__3_i_2_n_0;
  wire t_total0__94_carry__3_i_3_n_0;
  wire t_total0__94_carry__3_i_4_n_0;
  wire t_total0__94_carry__3_i_5_n_0;
  wire t_total0__94_carry__3_i_6_n_0;
  wire t_total0__94_carry__3_i_7_n_0;
  wire t_total0__94_carry__3_i_8_n_0;
  wire t_total0__94_carry__3_n_0;
  wire t_total0__94_carry__3_n_1;
  wire t_total0__94_carry__3_n_2;
  wire t_total0__94_carry__3_n_3;
  wire t_total0__94_carry__4_i_1_n_0;
  wire t_total0__94_carry__4_i_2_n_0;
  wire t_total0__94_carry__4_i_3_n_0;
  wire t_total0__94_carry__4_i_4_n_0;
  wire t_total0__94_carry__4_i_5_n_0;
  wire t_total0__94_carry__4_i_6_n_0;
  wire t_total0__94_carry__4_i_7_n_0;
  wire t_total0__94_carry__4_i_8_n_0;
  wire t_total0__94_carry__4_n_0;
  wire t_total0__94_carry__4_n_1;
  wire t_total0__94_carry__4_n_2;
  wire t_total0__94_carry__4_n_3;
  wire t_total0__94_carry__5_i_1_n_0;
  wire t_total0__94_carry__5_i_2_n_0;
  wire t_total0__94_carry__5_i_3_n_0;
  wire t_total0__94_carry__5_i_4_n_0;
  wire t_total0__94_carry__5_i_5_n_0;
  wire t_total0__94_carry__5_i_6_n_0;
  wire t_total0__94_carry__5_i_7_n_0;
  wire t_total0__94_carry__5_i_8_n_0;
  wire t_total0__94_carry__5_n_0;
  wire t_total0__94_carry__5_n_1;
  wire t_total0__94_carry__5_n_2;
  wire t_total0__94_carry__5_n_3;
  wire t_total0__94_carry__6_i_1_n_0;
  wire t_total0__94_carry__6_i_2_n_0;
  wire t_total0__94_carry__6_i_3_n_0;
  wire t_total0__94_carry__6_i_4_n_0;
  wire t_total0__94_carry__6_i_5_n_0;
  wire t_total0__94_carry__6_i_6_n_0;
  wire t_total0__94_carry__6_i_7_n_0;
  wire t_total0__94_carry__6_n_1;
  wire t_total0__94_carry__6_n_2;
  wire t_total0__94_carry__6_n_3;
  wire t_total0__94_carry_i_1_n_0;
  wire t_total0__94_carry_i_2_n_0;
  wire t_total0__94_carry_i_3_n_0;
  wire t_total0__94_carry_i_4_n_0;
  wire t_total0__94_carry_i_5_n_0;
  wire t_total0__94_carry_i_6_n_0;
  wire t_total0__94_carry_i_7_n_0;
  wire t_total0__94_carry_n_0;
  wire t_total0__94_carry_n_1;
  wire t_total0__94_carry_n_2;
  wire t_total0__94_carry_n_3;
  wire [31:0]t_total0_in;
  wire \t_total[31]_i_1_n_0 ;
  wire [31:0]time_cond0_in;
  wire \time_cond[0][31]_i_1_n_0 ;
  wire \time_cond[0][31]_i_2_n_0 ;
  wire \time_cond[1][31]_i_1_n_0 ;
  wire \time_cond[1][31]_i_3_n_0 ;
  wire \time_cond[1][31]_i_4_n_0 ;
  wire \time_cond[2][31]_i_1_n_0 ;
  wire \time_cond[2][31]_i_2_n_0 ;
  wire \time_cond[3][31]_i_1_n_0 ;
  wire \time_cond[3][31]_i_2_n_0 ;
  wire \time_cond[4][31]_i_1_n_0 ;
  wire u_router_n_1;
  wire u_router_n_2;
  wire u_router_n_3;
  wire [1:0]winner_code;
  wire winner_onehot_latched;
  wire \winner_onehot_latched[0]_i_1_n_0 ;
  wire \winner_onehot_latched[1]_i_1_n_0 ;
  wire \winner_onehot_latched[2]_i_1_n_0 ;
  wire \winner_onehot_latched[3]_i_2_n_0 ;
  wire \winner_onehot_latched_reg_n_0_[0] ;
  wire \winner_onehot_latched_reg_n_0_[1] ;
  wire \winner_onehot_latched_reg_n_0_[2] ;
  wire \winner_onehot_latched_reg_n_0_[3] ;
  wire \winner_onehot_latched_reg_n_0_[4] ;
  wire winner_valid;
  wire winner_valid_i_1_n_0;
  wire winner_valid_reg_0;
  wire winner_valid_reg_1;
  wire [3:0]\NLW_MINSEL.idx1_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.idx1_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.idx1_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.idx1_carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.minv1_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.minv1_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.minv1_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.minv1_carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.minv1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.minv1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.minv1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_MINSEL.minv1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:2]NLW_cond_cycle_acc0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cond_cycle_acc0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_p_0_out_carry_O_UNCONNECTED;
  wire [3:0]NLW_p_0_out_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_p_0_out_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_p_0_out_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry_O_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_t_runtime0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_t_runtime0_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_t_total0__0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_t_total0__94_carry__6_CO_UNCONNECTED;

  assign pwrup_cnt_reg_0_sp_1 = pwrup_cnt_reg_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_st[1]_i_2 
       (.I0(\cond_idx_reg_n_0_[2] ),
        .I1(\cond_idx_reg_n_0_[0] ),
        .I2(\cond_idx_reg_n_0_[1] ),
        .O(\FSM_sequential_st[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00F05300)) 
    \FSM_sequential_st[2]_i_2 
       (.I0(\FSM_sequential_st[1]_i_2_n_0 ),
        .I1(\op_idx[4]_i_3_n_0 ),
        .I2(st[0]),
        .I3(st[2]),
        .I4(st[1]),
        .O(st__0));
  LUT3 #(
    .INIT(8'hF1)) 
    \FSM_sequential_st[2]_i_3 
       (.I0(\FSM_sequential_st_reg[2]_0 ),
        .I1(pwrup_cnt_reg_0_sn_1),
        .I2(bench_done_latched_reg_0),
        .O(start));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_START:010,S_WAIT:011,S_NEXT_OP:100,S_NEXT_COND:101,S_LOAD:001,S_DONE:110" *) 
  FDRE \FSM_sequential_st_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(u_router_n_3),
        .Q(st[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_START:010,S_WAIT:011,S_NEXT_OP:100,S_NEXT_COND:101,S_LOAD:001,S_DONE:110" *) 
  FDRE \FSM_sequential_st_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(u_router_n_2),
        .Q(st[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "S_IDLE:000,S_START:010,S_WAIT:011,S_NEXT_OP:100,S_NEXT_COND:101,S_LOAD:001,S_DONE:110" *) 
  FDRE \FSM_sequential_st_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(u_router_n_1),
        .Q(st[2]),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.idx1_carry 
       (.CI(1'b0),
        .CO({\MINSEL.idx1_carry_n_0 ,\MINSEL.idx1_carry_n_1 ,\MINSEL.idx1_carry_n_2 ,\MINSEL.idx1_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\MINSEL.idx1_carry_i_1_n_0 ,\MINSEL.idx1_carry_i_2_n_0 ,\MINSEL.idx1_carry_i_3_n_0 ,\MINSEL.idx1_carry_i_4_n_0 }),
        .O(\NLW_MINSEL.idx1_carry_O_UNCONNECTED [3:0]),
        .S({\MINSEL.idx1_carry_i_5_n_0 ,\MINSEL.idx1_carry_i_6_n_0 ,\MINSEL.idx1_carry_i_7_n_0 ,\MINSEL.idx1_carry_i_8_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.idx1_carry__0 
       (.CI(\MINSEL.idx1_carry_n_0 ),
        .CO({\MINSEL.idx1_carry__0_n_0 ,\MINSEL.idx1_carry__0_n_1 ,\MINSEL.idx1_carry__0_n_2 ,\MINSEL.idx1_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\MINSEL.idx1_carry__0_i_1_n_0 ,\MINSEL.idx1_carry__0_i_2_n_0 ,\MINSEL.idx1_carry__0_i_3_n_0 ,\MINSEL.idx1_carry__0_i_4_n_0 }),
        .O(\NLW_MINSEL.idx1_carry__0_O_UNCONNECTED [3:0]),
        .S({\MINSEL.idx1_carry__0_i_5_n_0 ,\MINSEL.idx1_carry__0_i_6_n_0 ,\MINSEL.idx1_carry__0_i_7_n_0 ,\MINSEL.idx1_carry__0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__0_i_1 
       (.I0(\MINSEL.idx1_carry__0_i_9_n_0 ),
        .I1(t0[15]),
        .I2(\MINSEL.idx1_carry__0_i_10_n_0 ),
        .I3(t0[14]),
        .O(\MINSEL.idx1_carry__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__0_i_10 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [15]),
        .I2(t1[15]),
        .I3(t2[15]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__0_i_11 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [12]),
        .I2(t1[12]),
        .I3(t2[12]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__0_i_12 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [13]),
        .I2(t1[13]),
        .I3(t2[13]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__0_i_13 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [10]),
        .I2(t1[10]),
        .I3(t2[10]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__0_i_14 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [11]),
        .I2(t1[11]),
        .I3(t2[11]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__0_i_15 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [8]),
        .I2(t1[8]),
        .I3(t2[8]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__0_i_16 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [9]),
        .I2(t1[9]),
        .I3(t2[9]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__0_i_17 
       (.I0(t3[14]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[14]),
        .O(\MINSEL.minv__95 [14]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__0_i_18 
       (.I0(t3[12]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[12]),
        .O(\MINSEL.minv__95 [12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__0_i_19 
       (.I0(t3[10]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[10]),
        .O(\MINSEL.minv__95 [10]));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__0_i_2 
       (.I0(\MINSEL.idx1_carry__0_i_11_n_0 ),
        .I1(t0[13]),
        .I2(\MINSEL.idx1_carry__0_i_12_n_0 ),
        .I3(t0[12]),
        .O(\MINSEL.idx1_carry__0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__0_i_20 
       (.I0(t3[8]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[8]),
        .O(\MINSEL.minv__95 [8]));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__0_i_3 
       (.I0(\MINSEL.idx1_carry__0_i_13_n_0 ),
        .I1(t0[11]),
        .I2(\MINSEL.idx1_carry__0_i_14_n_0 ),
        .I3(t0[10]),
        .O(\MINSEL.idx1_carry__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__0_i_4 
       (.I0(\MINSEL.idx1_carry__0_i_15_n_0 ),
        .I1(t0[9]),
        .I2(\MINSEL.idx1_carry__0_i_16_n_0 ),
        .I3(t0[8]),
        .O(\MINSEL.idx1_carry__0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__0_i_5 
       (.I0(\MINSEL.idx1_carry__0_i_9_n_0 ),
        .I1(\MINSEL.idx1_carry__0_i_10_n_0 ),
        .I2(t0[15]),
        .I3(t0[14]),
        .O(\MINSEL.idx1_carry__0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__0_i_6 
       (.I0(\MINSEL.idx1_carry__0_i_11_n_0 ),
        .I1(\MINSEL.idx1_carry__0_i_12_n_0 ),
        .I2(t0[13]),
        .I3(t0[12]),
        .O(\MINSEL.idx1_carry__0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__0_i_7 
       (.I0(\MINSEL.idx1_carry__0_i_13_n_0 ),
        .I1(\MINSEL.idx1_carry__0_i_14_n_0 ),
        .I2(t0[11]),
        .I3(t0[10]),
        .O(\MINSEL.idx1_carry__0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__0_i_8 
       (.I0(\MINSEL.idx1_carry__0_i_15_n_0 ),
        .I1(\MINSEL.idx1_carry__0_i_16_n_0 ),
        .I2(t0[9]),
        .I3(t0[8]),
        .O(\MINSEL.idx1_carry__0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__0_i_9 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [14]),
        .I2(t1[14]),
        .I3(t2[14]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__0_i_9_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.idx1_carry__1 
       (.CI(\MINSEL.idx1_carry__0_n_0 ),
        .CO({\MINSEL.idx1_carry__1_n_0 ,\MINSEL.idx1_carry__1_n_1 ,\MINSEL.idx1_carry__1_n_2 ,\MINSEL.idx1_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\MINSEL.idx1_carry__1_i_1_n_0 ,\MINSEL.idx1_carry__1_i_2_n_0 ,\MINSEL.idx1_carry__1_i_3_n_0 ,\MINSEL.idx1_carry__1_i_4_n_0 }),
        .O(\NLW_MINSEL.idx1_carry__1_O_UNCONNECTED [3:0]),
        .S({\MINSEL.idx1_carry__1_i_5_n_0 ,\MINSEL.idx1_carry__1_i_6_n_0 ,\MINSEL.idx1_carry__1_i_7_n_0 ,\MINSEL.idx1_carry__1_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__1_i_1 
       (.I0(\MINSEL.idx1_carry__1_i_9_n_0 ),
        .I1(t0[23]),
        .I2(\MINSEL.idx1_carry__1_i_10_n_0 ),
        .I3(t0[22]),
        .O(\MINSEL.idx1_carry__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__1_i_10 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [23]),
        .I2(t1[23]),
        .I3(t2[23]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__1_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__1_i_11 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [20]),
        .I2(t1[20]),
        .I3(t2[20]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__1_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__1_i_12 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [21]),
        .I2(t1[21]),
        .I3(t2[21]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__1_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__1_i_13 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [18]),
        .I2(t1[18]),
        .I3(t2[18]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__1_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__1_i_14 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [19]),
        .I2(t1[19]),
        .I3(t2[19]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__1_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__1_i_15 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [16]),
        .I2(t1[16]),
        .I3(t2[16]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__1_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__1_i_16 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [17]),
        .I2(t1[17]),
        .I3(t2[17]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__1_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__1_i_17 
       (.I0(t3[22]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[22]),
        .O(\MINSEL.minv__95 [22]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__1_i_18 
       (.I0(t3[20]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[20]),
        .O(\MINSEL.minv__95 [20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__1_i_19 
       (.I0(t3[18]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[18]),
        .O(\MINSEL.minv__95 [18]));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__1_i_2 
       (.I0(\MINSEL.idx1_carry__1_i_11_n_0 ),
        .I1(t0[21]),
        .I2(\MINSEL.idx1_carry__1_i_12_n_0 ),
        .I3(t0[20]),
        .O(\MINSEL.idx1_carry__1_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__1_i_20 
       (.I0(t3[16]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[16]),
        .O(\MINSEL.minv__95 [16]));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__1_i_3 
       (.I0(\MINSEL.idx1_carry__1_i_13_n_0 ),
        .I1(t0[19]),
        .I2(\MINSEL.idx1_carry__1_i_14_n_0 ),
        .I3(t0[18]),
        .O(\MINSEL.idx1_carry__1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__1_i_4 
       (.I0(\MINSEL.idx1_carry__1_i_15_n_0 ),
        .I1(t0[17]),
        .I2(\MINSEL.idx1_carry__1_i_16_n_0 ),
        .I3(t0[16]),
        .O(\MINSEL.idx1_carry__1_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__1_i_5 
       (.I0(\MINSEL.idx1_carry__1_i_9_n_0 ),
        .I1(\MINSEL.idx1_carry__1_i_10_n_0 ),
        .I2(t0[23]),
        .I3(t0[22]),
        .O(\MINSEL.idx1_carry__1_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__1_i_6 
       (.I0(\MINSEL.idx1_carry__1_i_11_n_0 ),
        .I1(\MINSEL.idx1_carry__1_i_12_n_0 ),
        .I2(t0[21]),
        .I3(t0[20]),
        .O(\MINSEL.idx1_carry__1_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__1_i_7 
       (.I0(\MINSEL.idx1_carry__1_i_13_n_0 ),
        .I1(\MINSEL.idx1_carry__1_i_14_n_0 ),
        .I2(t0[19]),
        .I3(t0[18]),
        .O(\MINSEL.idx1_carry__1_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__1_i_8 
       (.I0(\MINSEL.idx1_carry__1_i_15_n_0 ),
        .I1(\MINSEL.idx1_carry__1_i_16_n_0 ),
        .I2(t0[17]),
        .I3(t0[16]),
        .O(\MINSEL.idx1_carry__1_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__1_i_9 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [22]),
        .I2(t1[22]),
        .I3(t2[22]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__1_i_9_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.idx1_carry__2 
       (.CI(\MINSEL.idx1_carry__1_n_0 ),
        .CO({\MINSEL.idx1_carry__2_n_0 ,\MINSEL.idx1_carry__2_n_1 ,\MINSEL.idx1_carry__2_n_2 ,\MINSEL.idx1_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\MINSEL.idx1_carry__2_i_1_n_0 ,\MINSEL.idx1_carry__2_i_2_n_0 ,\MINSEL.idx1_carry__2_i_3_n_0 ,\MINSEL.idx1_carry__2_i_4_n_0 }),
        .O(\NLW_MINSEL.idx1_carry__2_O_UNCONNECTED [3:0]),
        .S({\MINSEL.idx1_carry__2_i_5_n_0 ,\MINSEL.idx1_carry__2_i_6_n_0 ,\MINSEL.idx1_carry__2_i_7_n_0 ,\MINSEL.idx1_carry__2_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__2_i_1 
       (.I0(\MINSEL.idx1_carry__2_i_9_n_0 ),
        .I1(t0[31]),
        .I2(\MINSEL.idx1_carry__2_i_10_n_0 ),
        .I3(t0[30]),
        .O(\MINSEL.idx1_carry__2_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__2_i_10 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [31]),
        .I2(t1[31]),
        .I3(t2[31]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__2_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__2_i_11 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [28]),
        .I2(t1[28]),
        .I3(t2[28]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__2_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__2_i_12 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [29]),
        .I2(t1[29]),
        .I3(t2[29]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__2_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__2_i_13 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [26]),
        .I2(t1[26]),
        .I3(t2[26]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__2_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__2_i_14 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [27]),
        .I2(t1[27]),
        .I3(t2[27]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__2_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__2_i_15 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [24]),
        .I2(t1[24]),
        .I3(t2[24]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__2_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__2_i_16 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [25]),
        .I2(t1[25]),
        .I3(t2[25]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__2_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__2_i_17 
       (.I0(t3[30]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[30]),
        .O(\MINSEL.minv__95 [30]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__2_i_18 
       (.I0(t3[28]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[28]),
        .O(\MINSEL.minv__95 [28]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__2_i_19 
       (.I0(t3[26]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[26]),
        .O(\MINSEL.minv__95 [26]));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__2_i_2 
       (.I0(\MINSEL.idx1_carry__2_i_11_n_0 ),
        .I1(t0[29]),
        .I2(\MINSEL.idx1_carry__2_i_12_n_0 ),
        .I3(t0[28]),
        .O(\MINSEL.idx1_carry__2_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry__2_i_20 
       (.I0(t3[24]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[24]),
        .O(\MINSEL.minv__95 [24]));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__2_i_3 
       (.I0(\MINSEL.idx1_carry__2_i_13_n_0 ),
        .I1(t0[27]),
        .I2(\MINSEL.idx1_carry__2_i_14_n_0 ),
        .I3(t0[26]),
        .O(\MINSEL.idx1_carry__2_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry__2_i_4 
       (.I0(\MINSEL.idx1_carry__2_i_15_n_0 ),
        .I1(t0[25]),
        .I2(\MINSEL.idx1_carry__2_i_16_n_0 ),
        .I3(t0[24]),
        .O(\MINSEL.idx1_carry__2_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__2_i_5 
       (.I0(\MINSEL.idx1_carry__2_i_9_n_0 ),
        .I1(\MINSEL.idx1_carry__2_i_10_n_0 ),
        .I2(t0[31]),
        .I3(t0[30]),
        .O(\MINSEL.idx1_carry__2_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__2_i_6 
       (.I0(\MINSEL.idx1_carry__2_i_11_n_0 ),
        .I1(\MINSEL.idx1_carry__2_i_12_n_0 ),
        .I2(t0[29]),
        .I3(t0[28]),
        .O(\MINSEL.idx1_carry__2_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__2_i_7 
       (.I0(\MINSEL.idx1_carry__2_i_13_n_0 ),
        .I1(\MINSEL.idx1_carry__2_i_14_n_0 ),
        .I2(t0[27]),
        .I3(t0[26]),
        .O(\MINSEL.idx1_carry__2_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry__2_i_8 
       (.I0(\MINSEL.idx1_carry__2_i_15_n_0 ),
        .I1(\MINSEL.idx1_carry__2_i_16_n_0 ),
        .I2(t0[25]),
        .I3(t0[24]),
        .O(\MINSEL.idx1_carry__2_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry__2_i_9 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [30]),
        .I2(t1[30]),
        .I3(t2[30]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry__2_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry_i_1 
       (.I0(\MINSEL.idx1_carry_i_9_n_0 ),
        .I1(t0[7]),
        .I2(\MINSEL.idx1_carry_i_10_n_0 ),
        .I3(t0[6]),
        .O(\MINSEL.idx1_carry_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry_i_10 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [7]),
        .I2(t1[7]),
        .I3(t2[7]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry_i_11 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [4]),
        .I2(t1[4]),
        .I3(t2[4]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry_i_12 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [5]),
        .I2(t1[5]),
        .I3(t2[5]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry_i_13 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [2]),
        .I2(t1[2]),
        .I3(t2[2]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry_i_14 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [3]),
        .I2(t1[3]),
        .I3(t2[3]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry_i_15 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [0]),
        .I2(t1[0]),
        .I3(t2[0]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry_i_16 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [1]),
        .I2(t1[1]),
        .I3(t2[1]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry_i_17 
       (.I0(t3[6]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[6]),
        .O(\MINSEL.minv__95 [6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry_i_18 
       (.I0(t3[4]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[4]),
        .O(\MINSEL.minv__95 [4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry_i_19 
       (.I0(t3[2]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[2]),
        .O(\MINSEL.minv__95 [2]));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry_i_2 
       (.I0(\MINSEL.idx1_carry_i_11_n_0 ),
        .I1(t0[5]),
        .I2(\MINSEL.idx1_carry_i_12_n_0 ),
        .I3(t0[4]),
        .O(\MINSEL.idx1_carry_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MINSEL.idx1_carry_i_20 
       (.I0(t3[0]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[0]),
        .O(\MINSEL.minv__95 [0]));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry_i_3 
       (.I0(\MINSEL.idx1_carry_i_13_n_0 ),
        .I1(t0[3]),
        .I2(\MINSEL.idx1_carry_i_14_n_0 ),
        .I3(t0[2]),
        .O(\MINSEL.idx1_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30B2)) 
    \MINSEL.idx1_carry_i_4 
       (.I0(\MINSEL.idx1_carry_i_15_n_0 ),
        .I1(t0[1]),
        .I2(\MINSEL.idx1_carry_i_16_n_0 ),
        .I3(t0[0]),
        .O(\MINSEL.idx1_carry_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry_i_5 
       (.I0(\MINSEL.idx1_carry_i_9_n_0 ),
        .I1(\MINSEL.idx1_carry_i_10_n_0 ),
        .I2(t0[7]),
        .I3(t0[6]),
        .O(\MINSEL.idx1_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry_i_6 
       (.I0(\MINSEL.idx1_carry_i_11_n_0 ),
        .I1(\MINSEL.idx1_carry_i_12_n_0 ),
        .I2(t0[5]),
        .I3(t0[4]),
        .O(\MINSEL.idx1_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry_i_7 
       (.I0(\MINSEL.idx1_carry_i_13_n_0 ),
        .I1(\MINSEL.idx1_carry_i_14_n_0 ),
        .I2(t0[3]),
        .I3(t0[2]),
        .O(\MINSEL.idx1_carry_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8241)) 
    \MINSEL.idx1_carry_i_8 
       (.I0(\MINSEL.idx1_carry_i_15_n_0 ),
        .I1(\MINSEL.idx1_carry_i_16_n_0 ),
        .I2(t0[1]),
        .I3(t0[0]),
        .O(\MINSEL.idx1_carry_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E4E4FF00E4E4)) 
    \MINSEL.idx1_carry_i_9 
       (.I0(p_1_out_carry__2_n_0),
        .I1(\MINSEL.minv__95 [6]),
        .I2(t1[6]),
        .I3(t2[6]),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I5(p_0_out_carry__2_n_0),
        .O(\MINSEL.idx1_carry_i_9_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.minv1_carry 
       (.CI(1'b0),
        .CO({\MINSEL.minv1_carry_n_0 ,\MINSEL.minv1_carry_n_1 ,\MINSEL.minv1_carry_n_2 ,\MINSEL.minv1_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\MINSEL.minv1_carry_i_1_n_0 ,\MINSEL.minv1_carry_i_2_n_0 ,\MINSEL.minv1_carry_i_3_n_0 ,\MINSEL.minv1_carry_i_4_n_0 }),
        .O(\NLW_MINSEL.minv1_carry_O_UNCONNECTED [3:0]),
        .S({\MINSEL.minv1_carry_i_5_n_0 ,\MINSEL.minv1_carry_i_6_n_0 ,\MINSEL.minv1_carry_i_7_n_0 ,\MINSEL.minv1_carry_i_8_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.minv1_carry__0 
       (.CI(\MINSEL.minv1_carry_n_0 ),
        .CO({\MINSEL.minv1_carry__0_n_0 ,\MINSEL.minv1_carry__0_n_1 ,\MINSEL.minv1_carry__0_n_2 ,\MINSEL.minv1_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\MINSEL.minv1_carry__0_i_1_n_0 ,\MINSEL.minv1_carry__0_i_2_n_0 ,\MINSEL.minv1_carry__0_i_3_n_0 ,\MINSEL.minv1_carry__0_i_4_n_0 }),
        .O(\NLW_MINSEL.minv1_carry__0_O_UNCONNECTED [3:0]),
        .S({\MINSEL.minv1_carry__0_i_5_n_0 ,\MINSEL.minv1_carry__0_i_6_n_0 ,\MINSEL.minv1_carry__0_i_7_n_0 ,\MINSEL.minv1_carry__0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__0_i_1 
       (.I0(t4[15]),
        .I1(t3[15]),
        .I2(t4[14]),
        .I3(t3[14]),
        .O(\MINSEL.minv1_carry__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__0_i_2 
       (.I0(t4[13]),
        .I1(t3[13]),
        .I2(t4[12]),
        .I3(t3[12]),
        .O(\MINSEL.minv1_carry__0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__0_i_3 
       (.I0(t4[11]),
        .I1(t3[11]),
        .I2(t4[10]),
        .I3(t3[10]),
        .O(\MINSEL.minv1_carry__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__0_i_4 
       (.I0(t4[9]),
        .I1(t3[9]),
        .I2(t4[8]),
        .I3(t3[8]),
        .O(\MINSEL.minv1_carry__0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__0_i_5 
       (.I0(t3[15]),
        .I1(t4[15]),
        .I2(t3[14]),
        .I3(t4[14]),
        .O(\MINSEL.minv1_carry__0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__0_i_6 
       (.I0(t3[13]),
        .I1(t4[13]),
        .I2(t3[12]),
        .I3(t4[12]),
        .O(\MINSEL.minv1_carry__0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__0_i_7 
       (.I0(t3[11]),
        .I1(t4[11]),
        .I2(t3[10]),
        .I3(t4[10]),
        .O(\MINSEL.minv1_carry__0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__0_i_8 
       (.I0(t3[9]),
        .I1(t4[9]),
        .I2(t3[8]),
        .I3(t4[8]),
        .O(\MINSEL.minv1_carry__0_i_8_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.minv1_carry__1 
       (.CI(\MINSEL.minv1_carry__0_n_0 ),
        .CO({\MINSEL.minv1_carry__1_n_0 ,\MINSEL.minv1_carry__1_n_1 ,\MINSEL.minv1_carry__1_n_2 ,\MINSEL.minv1_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\MINSEL.minv1_carry__1_i_1_n_0 ,\MINSEL.minv1_carry__1_i_2_n_0 ,\MINSEL.minv1_carry__1_i_3_n_0 ,\MINSEL.minv1_carry__1_i_4_n_0 }),
        .O(\NLW_MINSEL.minv1_carry__1_O_UNCONNECTED [3:0]),
        .S({\MINSEL.minv1_carry__1_i_5_n_0 ,\MINSEL.minv1_carry__1_i_6_n_0 ,\MINSEL.minv1_carry__1_i_7_n_0 ,\MINSEL.minv1_carry__1_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__1_i_1 
       (.I0(t4[23]),
        .I1(t3[23]),
        .I2(t4[22]),
        .I3(t3[22]),
        .O(\MINSEL.minv1_carry__1_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__1_i_2 
       (.I0(t4[21]),
        .I1(t3[21]),
        .I2(t4[20]),
        .I3(t3[20]),
        .O(\MINSEL.minv1_carry__1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__1_i_3 
       (.I0(t4[19]),
        .I1(t3[19]),
        .I2(t4[18]),
        .I3(t3[18]),
        .O(\MINSEL.minv1_carry__1_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__1_i_4 
       (.I0(t4[17]),
        .I1(t3[17]),
        .I2(t4[16]),
        .I3(t3[16]),
        .O(\MINSEL.minv1_carry__1_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__1_i_5 
       (.I0(t3[23]),
        .I1(t4[23]),
        .I2(t3[22]),
        .I3(t4[22]),
        .O(\MINSEL.minv1_carry__1_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__1_i_6 
       (.I0(t3[21]),
        .I1(t4[21]),
        .I2(t3[20]),
        .I3(t4[20]),
        .O(\MINSEL.minv1_carry__1_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__1_i_7 
       (.I0(t3[19]),
        .I1(t4[19]),
        .I2(t3[18]),
        .I3(t4[18]),
        .O(\MINSEL.minv1_carry__1_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__1_i_8 
       (.I0(t3[17]),
        .I1(t4[17]),
        .I2(t3[16]),
        .I3(t4[16]),
        .O(\MINSEL.minv1_carry__1_i_8_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.minv1_carry__2 
       (.CI(\MINSEL.minv1_carry__1_n_0 ),
        .CO({\MINSEL.minv1_carry__2_n_0 ,\MINSEL.minv1_carry__2_n_1 ,\MINSEL.minv1_carry__2_n_2 ,\MINSEL.minv1_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\MINSEL.minv1_carry__2_i_1_n_0 ,\MINSEL.minv1_carry__2_i_2_n_0 ,\MINSEL.minv1_carry__2_i_3_n_0 ,\MINSEL.minv1_carry__2_i_4_n_0 }),
        .O(\NLW_MINSEL.minv1_carry__2_O_UNCONNECTED [3:0]),
        .S({\MINSEL.minv1_carry__2_i_5_n_0 ,\MINSEL.minv1_carry__2_i_6_n_0 ,\MINSEL.minv1_carry__2_i_7_n_0 ,\MINSEL.minv1_carry__2_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__2_i_1 
       (.I0(t4[31]),
        .I1(t3[31]),
        .I2(t4[30]),
        .I3(t3[30]),
        .O(\MINSEL.minv1_carry__2_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__2_i_2 
       (.I0(t4[29]),
        .I1(t3[29]),
        .I2(t4[28]),
        .I3(t3[28]),
        .O(\MINSEL.minv1_carry__2_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__2_i_3 
       (.I0(t4[27]),
        .I1(t3[27]),
        .I2(t4[26]),
        .I3(t3[26]),
        .O(\MINSEL.minv1_carry__2_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry__2_i_4 
       (.I0(t4[25]),
        .I1(t3[25]),
        .I2(t4[24]),
        .I3(t3[24]),
        .O(\MINSEL.minv1_carry__2_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__2_i_5 
       (.I0(t3[31]),
        .I1(t4[31]),
        .I2(t3[30]),
        .I3(t4[30]),
        .O(\MINSEL.minv1_carry__2_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__2_i_6 
       (.I0(t3[29]),
        .I1(t4[29]),
        .I2(t3[28]),
        .I3(t4[28]),
        .O(\MINSEL.minv1_carry__2_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__2_i_7 
       (.I0(t3[27]),
        .I1(t4[27]),
        .I2(t3[26]),
        .I3(t4[26]),
        .O(\MINSEL.minv1_carry__2_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry__2_i_8 
       (.I0(t3[25]),
        .I1(t4[25]),
        .I2(t3[24]),
        .I3(t4[24]),
        .O(\MINSEL.minv1_carry__2_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry_i_1 
       (.I0(t4[7]),
        .I1(t3[7]),
        .I2(t4[6]),
        .I3(t3[6]),
        .O(\MINSEL.minv1_carry_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry_i_2 
       (.I0(t4[5]),
        .I1(t3[5]),
        .I2(t4[4]),
        .I3(t3[4]),
        .O(\MINSEL.minv1_carry_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry_i_3 
       (.I0(t4[3]),
        .I1(t3[3]),
        .I2(t4[2]),
        .I3(t3[2]),
        .O(\MINSEL.minv1_carry_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \MINSEL.minv1_carry_i_4 
       (.I0(t4[1]),
        .I1(t3[1]),
        .I2(t4[0]),
        .I3(t3[0]),
        .O(\MINSEL.minv1_carry_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry_i_5 
       (.I0(t3[7]),
        .I1(t4[7]),
        .I2(t3[6]),
        .I3(t4[6]),
        .O(\MINSEL.minv1_carry_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry_i_6 
       (.I0(t3[5]),
        .I1(t4[5]),
        .I2(t3[4]),
        .I3(t4[4]),
        .O(\MINSEL.minv1_carry_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry_i_7 
       (.I0(t3[3]),
        .I1(t4[3]),
        .I2(t3[2]),
        .I3(t4[2]),
        .O(\MINSEL.minv1_carry_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \MINSEL.minv1_carry_i_8 
       (.I0(t3[1]),
        .I1(t4[1]),
        .I2(t3[0]),
        .I3(t4[0]),
        .O(\MINSEL.minv1_carry_i_8_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.minv1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\MINSEL.minv1_inferred__0/i__carry_n_0 ,\MINSEL.minv1_inferred__0/i__carry_n_1 ,\MINSEL.minv1_inferred__0/i__carry_n_2 ,\MINSEL.minv1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_MINSEL.minv1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.minv1_inferred__0/i__carry__0 
       (.CI(\MINSEL.minv1_inferred__0/i__carry_n_0 ),
        .CO({\MINSEL.minv1_inferred__0/i__carry__0_n_0 ,\MINSEL.minv1_inferred__0/i__carry__0_n_1 ,\MINSEL.minv1_inferred__0/i__carry__0_n_2 ,\MINSEL.minv1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_MINSEL.minv1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.minv1_inferred__0/i__carry__1 
       (.CI(\MINSEL.minv1_inferred__0/i__carry__0_n_0 ),
        .CO({\MINSEL.minv1_inferred__0/i__carry__1_n_0 ,\MINSEL.minv1_inferred__0/i__carry__1_n_1 ,\MINSEL.minv1_inferred__0/i__carry__1_n_2 ,\MINSEL.minv1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_MINSEL.minv1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \MINSEL.minv1_inferred__0/i__carry__2 
       (.CI(\MINSEL.minv1_inferred__0/i__carry__1_n_0 ),
        .CO({\MINSEL.minv1_inferred__0/i__carry__2_n_0 ,\MINSEL.minv1_inferred__0/i__carry__2_n_1 ,\MINSEL.minv1_inferred__0/i__carry__2_n_2 ,\MINSEL.minv1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_MINSEL.minv1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  LUT5 #(
    .INIT(32'h0000000E)) 
    bench_done_latched_i_1
       (.I0(bench_done),
        .I1(data0[1]),
        .I2(bench_done_latched_reg),
        .I3(bench_done_latched_reg_0),
        .I4(rst),
        .O(winner_valid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    bench_running_i_1
       (.I0(start),
        .I1(bench_done),
        .I2(data0[0]),
        .O(winner_valid_reg_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cond_cycle_acc0_carry
       (.CI(1'b0),
        .CO({cond_cycle_acc0_carry_n_0,cond_cycle_acc0_carry_n_1,cond_cycle_acc0_carry_n_2,cond_cycle_acc0_carry_n_3}),
        .CYINIT(\cond_cycle_acc_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[4:1]),
        .S({\cond_cycle_acc_reg_n_0_[4] ,\cond_cycle_acc_reg_n_0_[3] ,\cond_cycle_acc_reg_n_0_[2] ,\cond_cycle_acc_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cond_cycle_acc0_carry__0
       (.CI(cond_cycle_acc0_carry_n_0),
        .CO({cond_cycle_acc0_carry__0_n_0,cond_cycle_acc0_carry__0_n_1,cond_cycle_acc0_carry__0_n_2,cond_cycle_acc0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[8:5]),
        .S({\cond_cycle_acc_reg_n_0_[8] ,\cond_cycle_acc_reg_n_0_[7] ,\cond_cycle_acc_reg_n_0_[6] ,\cond_cycle_acc_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cond_cycle_acc0_carry__1
       (.CI(cond_cycle_acc0_carry__0_n_0),
        .CO({cond_cycle_acc0_carry__1_n_0,cond_cycle_acc0_carry__1_n_1,cond_cycle_acc0_carry__1_n_2,cond_cycle_acc0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[12:9]),
        .S({\cond_cycle_acc_reg_n_0_[12] ,\cond_cycle_acc_reg_n_0_[11] ,\cond_cycle_acc_reg_n_0_[10] ,\cond_cycle_acc_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cond_cycle_acc0_carry__2
       (.CI(cond_cycle_acc0_carry__1_n_0),
        .CO({cond_cycle_acc0_carry__2_n_0,cond_cycle_acc0_carry__2_n_1,cond_cycle_acc0_carry__2_n_2,cond_cycle_acc0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[16:13]),
        .S({\cond_cycle_acc_reg_n_0_[16] ,\cond_cycle_acc_reg_n_0_[15] ,\cond_cycle_acc_reg_n_0_[14] ,\cond_cycle_acc_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cond_cycle_acc0_carry__3
       (.CI(cond_cycle_acc0_carry__2_n_0),
        .CO({cond_cycle_acc0_carry__3_n_0,cond_cycle_acc0_carry__3_n_1,cond_cycle_acc0_carry__3_n_2,cond_cycle_acc0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[20:17]),
        .S({\cond_cycle_acc_reg_n_0_[20] ,\cond_cycle_acc_reg_n_0_[19] ,\cond_cycle_acc_reg_n_0_[18] ,\cond_cycle_acc_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cond_cycle_acc0_carry__4
       (.CI(cond_cycle_acc0_carry__3_n_0),
        .CO({cond_cycle_acc0_carry__4_n_0,cond_cycle_acc0_carry__4_n_1,cond_cycle_acc0_carry__4_n_2,cond_cycle_acc0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[24:21]),
        .S({\cond_cycle_acc_reg_n_0_[24] ,\cond_cycle_acc_reg_n_0_[23] ,\cond_cycle_acc_reg_n_0_[22] ,\cond_cycle_acc_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cond_cycle_acc0_carry__5
       (.CI(cond_cycle_acc0_carry__4_n_0),
        .CO({cond_cycle_acc0_carry__5_n_0,cond_cycle_acc0_carry__5_n_1,cond_cycle_acc0_carry__5_n_2,cond_cycle_acc0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in16[28:25]),
        .S({\cond_cycle_acc_reg_n_0_[28] ,\cond_cycle_acc_reg_n_0_[27] ,\cond_cycle_acc_reg_n_0_[26] ,\cond_cycle_acc_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cond_cycle_acc0_carry__6
       (.CI(cond_cycle_acc0_carry__5_n_0),
        .CO({NLW_cond_cycle_acc0_carry__6_CO_UNCONNECTED[3:2],cond_cycle_acc0_carry__6_n_2,cond_cycle_acc0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cond_cycle_acc0_carry__6_O_UNCONNECTED[3],in16[31:29]}),
        .S({1'b0,\cond_cycle_acc_reg_n_0_[31] ,\cond_cycle_acc_reg_n_0_[30] ,\cond_cycle_acc_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cond_cycle_acc[0]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\cond_cycle_acc_reg_n_0_[0] ),
        .O(cond_cycle_acc[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[10]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[10]),
        .O(cond_cycle_acc[10]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[11]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[11]),
        .O(cond_cycle_acc[11]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[12]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[12]),
        .O(cond_cycle_acc[12]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[13]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[13]),
        .O(cond_cycle_acc[13]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[14]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[14]),
        .O(cond_cycle_acc[14]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[15]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[15]),
        .O(cond_cycle_acc[15]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[16]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[16]),
        .O(cond_cycle_acc[16]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[17]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[17]),
        .O(cond_cycle_acc[17]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[18]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[18]),
        .O(cond_cycle_acc[18]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[19]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[19]),
        .O(cond_cycle_acc[19]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[1]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[1]),
        .O(cond_cycle_acc[1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[20]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[20]),
        .O(cond_cycle_acc[20]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[21]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[21]),
        .O(cond_cycle_acc[21]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[22]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[22]),
        .O(cond_cycle_acc[22]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[23]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[23]),
        .O(cond_cycle_acc[23]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[24]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[24]),
        .O(cond_cycle_acc[24]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[25]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[25]),
        .O(cond_cycle_acc[25]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[26]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[26]),
        .O(cond_cycle_acc[26]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[27]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[27]),
        .O(cond_cycle_acc[27]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[28]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[28]),
        .O(cond_cycle_acc[28]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[29]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[29]),
        .O(cond_cycle_acc[29]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[2]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[2]),
        .O(cond_cycle_acc[2]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[30]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[30]),
        .O(cond_cycle_acc[30]));
  LUT5 #(
    .INIT(32'h4AA44A04)) 
    \cond_cycle_acc[31]_i_1 
       (.I0(st[0]),
        .I1(start),
        .I2(st[2]),
        .I3(st[1]),
        .I4(\FSM_sequential_st[1]_i_2_n_0 ),
        .O(\cond_cycle_acc[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[31]_i_2 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[31]),
        .O(cond_cycle_acc[31]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[3]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[3]),
        .O(cond_cycle_acc[3]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[4]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[4]),
        .O(cond_cycle_acc[4]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[5]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[5]),
        .O(cond_cycle_acc[5]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[6]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[6]),
        .O(cond_cycle_acc[6]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[7]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[7]),
        .O(cond_cycle_acc[7]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[8]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[8]),
        .O(cond_cycle_acc[8]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cond_cycle_acc[9]_i_1 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(in16[9]),
        .O(cond_cycle_acc[9]));
  FDRE \cond_cycle_acc_reg[0] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[0]),
        .Q(\cond_cycle_acc_reg_n_0_[0] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[10] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[10]),
        .Q(\cond_cycle_acc_reg_n_0_[10] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[11] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[11]),
        .Q(\cond_cycle_acc_reg_n_0_[11] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[12] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[12]),
        .Q(\cond_cycle_acc_reg_n_0_[12] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[13] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[13]),
        .Q(\cond_cycle_acc_reg_n_0_[13] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[14] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[14]),
        .Q(\cond_cycle_acc_reg_n_0_[14] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[15] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[15]),
        .Q(\cond_cycle_acc_reg_n_0_[15] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[16] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[16]),
        .Q(\cond_cycle_acc_reg_n_0_[16] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[17] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[17]),
        .Q(\cond_cycle_acc_reg_n_0_[17] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[18] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[18]),
        .Q(\cond_cycle_acc_reg_n_0_[18] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[19] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[19]),
        .Q(\cond_cycle_acc_reg_n_0_[19] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[1] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[1]),
        .Q(\cond_cycle_acc_reg_n_0_[1] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[20] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[20]),
        .Q(\cond_cycle_acc_reg_n_0_[20] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[21] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[21]),
        .Q(\cond_cycle_acc_reg_n_0_[21] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[22] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[22]),
        .Q(\cond_cycle_acc_reg_n_0_[22] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[23] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[23]),
        .Q(\cond_cycle_acc_reg_n_0_[23] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[24] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[24]),
        .Q(\cond_cycle_acc_reg_n_0_[24] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[25] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[25]),
        .Q(\cond_cycle_acc_reg_n_0_[25] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[26] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[26]),
        .Q(\cond_cycle_acc_reg_n_0_[26] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[27] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[27]),
        .Q(\cond_cycle_acc_reg_n_0_[27] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[28] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[28]),
        .Q(\cond_cycle_acc_reg_n_0_[28] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[29] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[29]),
        .Q(\cond_cycle_acc_reg_n_0_[29] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[2] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[2]),
        .Q(\cond_cycle_acc_reg_n_0_[2] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[30] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[30]),
        .Q(\cond_cycle_acc_reg_n_0_[30] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[31] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[31]),
        .Q(\cond_cycle_acc_reg_n_0_[31] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[3] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[3]),
        .Q(\cond_cycle_acc_reg_n_0_[3] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[4] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[4]),
        .Q(\cond_cycle_acc_reg_n_0_[4] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[5] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[5]),
        .Q(\cond_cycle_acc_reg_n_0_[5] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[6] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[6]),
        .Q(\cond_cycle_acc_reg_n_0_[6] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[7] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[7]),
        .Q(\cond_cycle_acc_reg_n_0_[7] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[8] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[8]),
        .Q(\cond_cycle_acc_reg_n_0_[8] ),
        .R(rst));
  FDRE \cond_cycle_acc_reg[9] 
       (.C(s_axi_aclk),
        .CE(\cond_cycle_acc[31]_i_1_n_0 ),
        .D(cond_cycle_acc[9]),
        .Q(\cond_cycle_acc_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hDFDF3CFF20200000)) 
    \cond_idx[0]_i_1 
       (.I0(\FSM_sequential_st[1]_i_2_n_0 ),
        .I1(st[1]),
        .I2(st[2]),
        .I3(start),
        .I4(st[0]),
        .I5(\cond_idx_reg_n_0_[0] ),
        .O(\cond_idx[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \cond_idx[1]_i_1 
       (.I0(cond_idx[1]),
        .I1(\cond_idx[2]_i_3_n_0 ),
        .I2(\cond_idx[2]_i_4_n_0 ),
        .I3(start),
        .I4(st[0]),
        .I5(\cond_idx_reg_n_0_[1] ),
        .O(\cond_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \cond_idx[1]_i_2 
       (.I0(st[2]),
        .I1(st[1]),
        .I2(\cond_idx_reg_n_0_[0] ),
        .I3(\cond_idx_reg_n_0_[1] ),
        .O(cond_idx[1]));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \cond_idx[2]_i_1 
       (.I0(cond_idx[2]),
        .I1(\cond_idx[2]_i_3_n_0 ),
        .I2(\cond_idx[2]_i_4_n_0 ),
        .I3(start),
        .I4(st[0]),
        .I5(\cond_idx_reg_n_0_[2] ),
        .O(\cond_idx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h04080C00)) 
    \cond_idx[2]_i_2 
       (.I0(\cond_idx_reg_n_0_[0] ),
        .I1(st[2]),
        .I2(st[1]),
        .I3(\cond_idx_reg_n_0_[2] ),
        .I4(\cond_idx_reg_n_0_[1] ),
        .O(cond_idx[2]));
  LUT6 #(
    .INIT(64'h0808080008080808)) 
    \cond_idx[2]_i_3 
       (.I0(st[0]),
        .I1(st[2]),
        .I2(st[1]),
        .I3(\cond_idx_reg_n_0_[1] ),
        .I4(\cond_idx_reg_n_0_[0] ),
        .I5(\cond_idx_reg_n_0_[2] ),
        .O(\cond_idx[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cond_idx[2]_i_4 
       (.I0(st[1]),
        .I1(st[2]),
        .O(\cond_idx[2]_i_4_n_0 ));
  FDRE \cond_idx_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cond_idx[0]_i_1_n_0 ),
        .Q(\cond_idx_reg_n_0_[0] ),
        .R(rst));
  FDRE \cond_idx_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cond_idx[1]_i_1_n_0 ),
        .Q(\cond_idx_reg_n_0_[1] ),
        .R(rst));
  FDRE \cond_idx_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cond_idx[2]_i_1_n_0 ),
        .Q(\cond_idx_reg_n_0_[2] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__0_i_1
       (.I0(\MINSEL.minv__95 [15]),
        .I1(t2[15]),
        .I2(t4[14]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[14]),
        .I5(t2[14]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__0_i_2
       (.I0(\MINSEL.minv__95 [13]),
        .I1(t2[13]),
        .I2(t4[12]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[12]),
        .I5(t2[12]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__0_i_3
       (.I0(\MINSEL.minv__95 [11]),
        .I1(t2[11]),
        .I2(t4[10]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[10]),
        .I5(t2[10]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__0_i_4
       (.I0(\MINSEL.minv__95 [9]),
        .I1(t2[9]),
        .I2(t4[8]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[8]),
        .I5(t2[8]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__0_i_5
       (.I0(t2[15]),
        .I1(\MINSEL.minv__95 [15]),
        .I2(t4[14]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[14]),
        .I5(t2[14]),
        .O(i__carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__0_i_6
       (.I0(t2[13]),
        .I1(\MINSEL.minv__95 [13]),
        .I2(t4[12]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[12]),
        .I5(t2[12]),
        .O(i__carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__0_i_7
       (.I0(t2[11]),
        .I1(\MINSEL.minv__95 [11]),
        .I2(t4[10]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[10]),
        .I5(t2[10]),
        .O(i__carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__0_i_8
       (.I0(t2[9]),
        .I1(\MINSEL.minv__95 [9]),
        .I2(t4[8]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[8]),
        .I5(t2[8]),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__1_i_1
       (.I0(\MINSEL.minv__95 [23]),
        .I1(t2[23]),
        .I2(t4[22]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[22]),
        .I5(t2[22]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__1_i_2
       (.I0(\MINSEL.minv__95 [21]),
        .I1(t2[21]),
        .I2(t4[20]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[20]),
        .I5(t2[20]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__1_i_3
       (.I0(\MINSEL.minv__95 [19]),
        .I1(t2[19]),
        .I2(t4[18]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[18]),
        .I5(t2[18]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__1_i_4
       (.I0(\MINSEL.minv__95 [17]),
        .I1(t2[17]),
        .I2(t4[16]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[16]),
        .I5(t2[16]),
        .O(i__carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__1_i_5
       (.I0(t2[23]),
        .I1(\MINSEL.minv__95 [23]),
        .I2(t4[22]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[22]),
        .I5(t2[22]),
        .O(i__carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__1_i_6
       (.I0(t2[21]),
        .I1(\MINSEL.minv__95 [21]),
        .I2(t4[20]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[20]),
        .I5(t2[20]),
        .O(i__carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__1_i_7
       (.I0(t2[19]),
        .I1(\MINSEL.minv__95 [19]),
        .I2(t4[18]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[18]),
        .I5(t2[18]),
        .O(i__carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__1_i_8
       (.I0(t2[17]),
        .I1(\MINSEL.minv__95 [17]),
        .I2(t4[16]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[16]),
        .I5(t2[16]),
        .O(i__carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__2_i_1
       (.I0(\MINSEL.minv__95 [31]),
        .I1(t2[31]),
        .I2(t4[30]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[30]),
        .I5(t2[30]),
        .O(i__carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__2_i_2
       (.I0(\MINSEL.minv__95 [29]),
        .I1(t2[29]),
        .I2(t4[28]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[28]),
        .I5(t2[28]),
        .O(i__carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__2_i_3
       (.I0(\MINSEL.minv__95 [27]),
        .I1(t2[27]),
        .I2(t4[26]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[26]),
        .I5(t2[26]),
        .O(i__carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry__2_i_4
       (.I0(\MINSEL.minv__95 [25]),
        .I1(t2[25]),
        .I2(t4[24]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[24]),
        .I5(t2[24]),
        .O(i__carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__2_i_5
       (.I0(t2[31]),
        .I1(\MINSEL.minv__95 [31]),
        .I2(t4[30]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[30]),
        .I5(t2[30]),
        .O(i__carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__2_i_6
       (.I0(t2[29]),
        .I1(\MINSEL.minv__95 [29]),
        .I2(t4[28]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[28]),
        .I5(t2[28]),
        .O(i__carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__2_i_7
       (.I0(t2[27]),
        .I1(\MINSEL.minv__95 [27]),
        .I2(t4[26]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[26]),
        .I5(t2[26]),
        .O(i__carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry__2_i_8
       (.I0(t2[25]),
        .I1(\MINSEL.minv__95 [25]),
        .I2(t4[24]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[24]),
        .I5(t2[24]),
        .O(i__carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry_i_1
       (.I0(\MINSEL.minv__95 [7]),
        .I1(t2[7]),
        .I2(t4[6]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[6]),
        .I5(t2[6]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry_i_2
       (.I0(\MINSEL.minv__95 [5]),
        .I1(t2[5]),
        .I2(t4[4]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[4]),
        .I5(t2[4]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry_i_3
       (.I0(\MINSEL.minv__95 [3]),
        .I1(t2[3]),
        .I2(t4[2]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[2]),
        .I5(t2[2]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    i__carry_i_4
       (.I0(\MINSEL.minv__95 [1]),
        .I1(t2[1]),
        .I2(t4[0]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[0]),
        .I5(t2[0]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry_i_5
       (.I0(t2[7]),
        .I1(\MINSEL.minv__95 [7]),
        .I2(t4[6]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[6]),
        .I5(t2[6]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry_i_6
       (.I0(t2[5]),
        .I1(\MINSEL.minv__95 [5]),
        .I2(t4[4]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[4]),
        .I5(t2[4]),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry_i_7
       (.I0(t2[3]),
        .I1(\MINSEL.minv__95 [3]),
        .I2(t4[2]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[2]),
        .I5(t2[2]),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    i__carry_i_8
       (.I0(t2[1]),
        .I1(\MINSEL.minv__95 [1]),
        .I2(t4[0]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[0]),
        .I5(t2[0]),
        .O(i__carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \led[0]_INST_0 
       (.I0(\winner_onehot_latched_reg_n_0_[0] ),
        .I1(\winner_onehot_latched_reg_n_0_[4] ),
        .I2(bench_done),
        .O(led[0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \led[1]_INST_0 
       (.I0(\winner_onehot_latched_reg_n_0_[1] ),
        .I1(\winner_onehot_latched_reg_n_0_[4] ),
        .I2(bench_done),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led[2]_INST_0 
       (.I0(bench_done),
        .I1(\winner_onehot_latched_reg_n_0_[2] ),
        .O(led[2]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led[3]_INST_0 
       (.I0(bench_done),
        .I1(\winner_onehot_latched_reg_n_0_[3] ),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \op_idx[0]_i_1 
       (.I0(st[0]),
        .I1(st[2]),
        .I2(st[1]),
        .I3(\op_idx_reg_n_0_[0] ),
        .O(op_idx[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    \op_idx[1]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(st[0]),
        .I3(\op_idx_reg_n_0_[0] ),
        .I4(\op_idx_reg_n_0_[1] ),
        .O(op_idx[1]));
  LUT6 #(
    .INIT(64'h0004040404000000)) 
    \op_idx[2]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(st[0]),
        .I3(\op_idx_reg_n_0_[1] ),
        .I4(\op_idx_reg_n_0_[0] ),
        .I5(\op_idx_reg_n_0_[2] ),
        .O(op_idx[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \op_idx[3]_i_1 
       (.I0(\op_idx_reg_n_0_[1] ),
        .I1(\op_idx_reg_n_0_[0] ),
        .I2(\op_idx_reg_n_0_[2] ),
        .I3(st[0]),
        .I4(winner_valid),
        .I5(\op_idx_reg_n_0_[3] ),
        .O(op_idx[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_idx[3]_i_2 
       (.I0(st[2]),
        .I1(st[1]),
        .O(winner_valid));
  LUT6 #(
    .INIT(64'h00F00000AACC00AA)) 
    \op_idx[4]_i_1 
       (.I0(start),
        .I1(\op_idx[4]_i_3_n_0 ),
        .I2(\FSM_sequential_st[1]_i_2_n_0 ),
        .I3(st[1]),
        .I4(st[2]),
        .I5(st[0]),
        .O(\op_idx[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \op_idx[4]_i_2 
       (.I0(\op_idx_reg_n_0_[1] ),
        .I1(\op_idx_reg_n_0_[0] ),
        .I2(\op_idx_reg_n_0_[2] ),
        .I3(\op_idx_reg_n_0_[3] ),
        .I4(\op_idx_reg_n_0_[4] ),
        .I5(\op_idx[4]_i_4_n_0 ),
        .O(op_idx[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \op_idx[4]_i_3 
       (.I0(\op_idx_reg_n_0_[0] ),
        .I1(\op_idx_reg_n_0_[2] ),
        .I2(\op_idx_reg_n_0_[1] ),
        .I3(\op_idx_reg_n_0_[4] ),
        .I4(\op_idx_reg_n_0_[3] ),
        .O(\op_idx[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \op_idx[4]_i_4 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(st[0]),
        .O(\op_idx[4]_i_4_n_0 ));
  FDRE \op_idx_reg[0] 
       (.C(s_axi_aclk),
        .CE(\op_idx[4]_i_1_n_0 ),
        .D(op_idx[0]),
        .Q(\op_idx_reg_n_0_[0] ),
        .R(rst));
  FDRE \op_idx_reg[1] 
       (.C(s_axi_aclk),
        .CE(\op_idx[4]_i_1_n_0 ),
        .D(op_idx[1]),
        .Q(\op_idx_reg_n_0_[1] ),
        .R(rst));
  FDRE \op_idx_reg[2] 
       (.C(s_axi_aclk),
        .CE(\op_idx[4]_i_1_n_0 ),
        .D(op_idx[2]),
        .Q(\op_idx_reg_n_0_[2] ),
        .R(rst));
  FDRE \op_idx_reg[3] 
       (.C(s_axi_aclk),
        .CE(\op_idx[4]_i_1_n_0 ),
        .D(op_idx[3]),
        .Q(\op_idx_reg_n_0_[3] ),
        .R(rst));
  FDRE \op_idx_reg[4] 
       (.C(s_axi_aclk),
        .CE(\op_idx[4]_i_1_n_0 ),
        .D(op_idx[4]),
        .Q(\op_idx_reg_n_0_[4] ),
        .R(rst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 p_0_out_carry
       (.CI(1'b0),
        .CO({p_0_out_carry_n_0,p_0_out_carry_n_1,p_0_out_carry_n_2,p_0_out_carry_n_3}),
        .CYINIT(1'b1),
        .DI({p_0_out_carry_i_1_n_0,p_0_out_carry_i_2_n_0,p_0_out_carry_i_3_n_0,p_0_out_carry_i_4_n_0}),
        .O(NLW_p_0_out_carry_O_UNCONNECTED[3:0]),
        .S({p_0_out_carry_i_5_n_0,p_0_out_carry_i_6_n_0,p_0_out_carry_i_7_n_0,p_0_out_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 p_0_out_carry__0
       (.CI(p_0_out_carry_n_0),
        .CO({p_0_out_carry__0_n_0,p_0_out_carry__0_n_1,p_0_out_carry__0_n_2,p_0_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_out_carry__0_i_1_n_0,p_0_out_carry__0_i_2_n_0,p_0_out_carry__0_i_3_n_0,p_0_out_carry__0_i_4_n_0}),
        .O(NLW_p_0_out_carry__0_O_UNCONNECTED[3:0]),
        .S({p_0_out_carry__0_i_5_n_0,p_0_out_carry__0_i_6_n_0,p_0_out_carry__0_i_7_n_0,p_0_out_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__0_i_1
       (.I0(t2[15]),
        .I1(t1[15]),
        .I2(t2[14]),
        .I3(t1[14]),
        .O(p_0_out_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__0_i_2
       (.I0(t2[13]),
        .I1(t1[13]),
        .I2(t2[12]),
        .I3(t1[12]),
        .O(p_0_out_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__0_i_3
       (.I0(t2[11]),
        .I1(t1[11]),
        .I2(t2[10]),
        .I3(t1[10]),
        .O(p_0_out_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__0_i_4
       (.I0(t2[9]),
        .I1(t1[9]),
        .I2(t2[8]),
        .I3(t1[8]),
        .O(p_0_out_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__0_i_5
       (.I0(t1[14]),
        .I1(t2[14]),
        .I2(t1[15]),
        .I3(t2[15]),
        .O(p_0_out_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__0_i_6
       (.I0(t1[12]),
        .I1(t2[12]),
        .I2(t1[13]),
        .I3(t2[13]),
        .O(p_0_out_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__0_i_7
       (.I0(t1[10]),
        .I1(t2[10]),
        .I2(t1[11]),
        .I3(t2[11]),
        .O(p_0_out_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__0_i_8
       (.I0(t1[8]),
        .I1(t2[8]),
        .I2(t1[9]),
        .I3(t2[9]),
        .O(p_0_out_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 p_0_out_carry__1
       (.CI(p_0_out_carry__0_n_0),
        .CO({p_0_out_carry__1_n_0,p_0_out_carry__1_n_1,p_0_out_carry__1_n_2,p_0_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_out_carry__1_i_1_n_0,p_0_out_carry__1_i_2_n_0,p_0_out_carry__1_i_3_n_0,p_0_out_carry__1_i_4_n_0}),
        .O(NLW_p_0_out_carry__1_O_UNCONNECTED[3:0]),
        .S({p_0_out_carry__1_i_5_n_0,p_0_out_carry__1_i_6_n_0,p_0_out_carry__1_i_7_n_0,p_0_out_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__1_i_1
       (.I0(t2[23]),
        .I1(t1[23]),
        .I2(t2[22]),
        .I3(t1[22]),
        .O(p_0_out_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__1_i_2
       (.I0(t2[21]),
        .I1(t1[21]),
        .I2(t2[20]),
        .I3(t1[20]),
        .O(p_0_out_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__1_i_3
       (.I0(t2[19]),
        .I1(t1[19]),
        .I2(t2[18]),
        .I3(t1[18]),
        .O(p_0_out_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__1_i_4
       (.I0(t2[17]),
        .I1(t1[17]),
        .I2(t2[16]),
        .I3(t1[16]),
        .O(p_0_out_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__1_i_5
       (.I0(t1[22]),
        .I1(t2[22]),
        .I2(t1[23]),
        .I3(t2[23]),
        .O(p_0_out_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__1_i_6
       (.I0(t1[20]),
        .I1(t2[20]),
        .I2(t1[21]),
        .I3(t2[21]),
        .O(p_0_out_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__1_i_7
       (.I0(t1[18]),
        .I1(t2[18]),
        .I2(t1[19]),
        .I3(t2[19]),
        .O(p_0_out_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__1_i_8
       (.I0(t1[16]),
        .I1(t2[16]),
        .I2(t1[17]),
        .I3(t2[17]),
        .O(p_0_out_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 p_0_out_carry__2
       (.CI(p_0_out_carry__1_n_0),
        .CO({p_0_out_carry__2_n_0,p_0_out_carry__2_n_1,p_0_out_carry__2_n_2,p_0_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({p_0_out_carry__2_i_1_n_0,p_0_out_carry__2_i_2_n_0,p_0_out_carry__2_i_3_n_0,p_0_out_carry__2_i_4_n_0}),
        .O(NLW_p_0_out_carry__2_O_UNCONNECTED[3:0]),
        .S({p_0_out_carry__2_i_5_n_0,p_0_out_carry__2_i_6_n_0,p_0_out_carry__2_i_7_n_0,p_0_out_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__2_i_1
       (.I0(t2[31]),
        .I1(t1[31]),
        .I2(t2[30]),
        .I3(t1[30]),
        .O(p_0_out_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__2_i_2
       (.I0(t2[29]),
        .I1(t1[29]),
        .I2(t2[28]),
        .I3(t1[28]),
        .O(p_0_out_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__2_i_3
       (.I0(t2[27]),
        .I1(t1[27]),
        .I2(t2[26]),
        .I3(t1[26]),
        .O(p_0_out_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry__2_i_4
       (.I0(t2[25]),
        .I1(t1[25]),
        .I2(t2[24]),
        .I3(t1[24]),
        .O(p_0_out_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__2_i_5
       (.I0(t1[30]),
        .I1(t2[30]),
        .I2(t1[31]),
        .I3(t2[31]),
        .O(p_0_out_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__2_i_6
       (.I0(t1[28]),
        .I1(t2[28]),
        .I2(t1[29]),
        .I3(t2[29]),
        .O(p_0_out_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__2_i_7
       (.I0(t1[26]),
        .I1(t2[26]),
        .I2(t1[27]),
        .I3(t2[27]),
        .O(p_0_out_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry__2_i_8
       (.I0(t1[24]),
        .I1(t2[24]),
        .I2(t1[25]),
        .I3(t2[25]),
        .O(p_0_out_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry_i_1
       (.I0(t2[7]),
        .I1(t1[7]),
        .I2(t2[6]),
        .I3(t1[6]),
        .O(p_0_out_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry_i_2
       (.I0(t2[5]),
        .I1(t1[5]),
        .I2(t2[4]),
        .I3(t1[4]),
        .O(p_0_out_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry_i_3
       (.I0(t2[3]),
        .I1(t1[3]),
        .I2(t2[2]),
        .I3(t1[2]),
        .O(p_0_out_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    p_0_out_carry_i_4
       (.I0(t2[1]),
        .I1(t1[1]),
        .I2(t2[0]),
        .I3(t1[0]),
        .O(p_0_out_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry_i_5
       (.I0(t1[6]),
        .I1(t2[6]),
        .I2(t1[7]),
        .I3(t2[7]),
        .O(p_0_out_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry_i_6
       (.I0(t1[4]),
        .I1(t2[4]),
        .I2(t1[5]),
        .I3(t2[5]),
        .O(p_0_out_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry_i_7
       (.I0(t1[2]),
        .I1(t2[2]),
        .I2(t1[3]),
        .I3(t2[3]),
        .O(p_0_out_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    p_0_out_carry_i_8
       (.I0(t2[0]),
        .I1(t1[0]),
        .I2(t2[1]),
        .I3(t1[1]),
        .O(p_0_out_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 p_1_out_carry
       (.CI(1'b0),
        .CO({p_1_out_carry_n_0,p_1_out_carry_n_1,p_1_out_carry_n_2,p_1_out_carry_n_3}),
        .CYINIT(1'b1),
        .DI({p_1_out_carry_i_1_n_0,p_1_out_carry_i_2_n_0,p_1_out_carry_i_3_n_0,p_1_out_carry_i_4_n_0}),
        .O(NLW_p_1_out_carry_O_UNCONNECTED[3:0]),
        .S({p_1_out_carry_i_5_n_0,p_1_out_carry_i_6_n_0,p_1_out_carry_i_7_n_0,p_1_out_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 p_1_out_carry__0
       (.CI(p_1_out_carry_n_0),
        .CO({p_1_out_carry__0_n_0,p_1_out_carry__0_n_1,p_1_out_carry__0_n_2,p_1_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out_carry__0_i_1_n_0,p_1_out_carry__0_i_2_n_0,p_1_out_carry__0_i_3_n_0,p_1_out_carry__0_i_4_n_0}),
        .O(NLW_p_1_out_carry__0_O_UNCONNECTED[3:0]),
        .S({p_1_out_carry__0_i_5_n_0,p_1_out_carry__0_i_6_n_0,p_1_out_carry__0_i_7_n_0,p_1_out_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__0_i_1
       (.I0(\MINSEL.minv__95 [15]),
        .I1(t1[15]),
        .I2(t4[14]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[14]),
        .I5(t1[14]),
        .O(p_1_out_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__0_i_10
       (.I0(t3[13]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[13]),
        .O(\MINSEL.minv__95 [13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__0_i_11
       (.I0(t3[11]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[11]),
        .O(\MINSEL.minv__95 [11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__0_i_12
       (.I0(t3[9]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[9]),
        .O(\MINSEL.minv__95 [9]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__0_i_2
       (.I0(\MINSEL.minv__95 [13]),
        .I1(t1[13]),
        .I2(t4[12]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[12]),
        .I5(t1[12]),
        .O(p_1_out_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__0_i_3
       (.I0(\MINSEL.minv__95 [11]),
        .I1(t1[11]),
        .I2(t4[10]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[10]),
        .I5(t1[10]),
        .O(p_1_out_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__0_i_4
       (.I0(\MINSEL.minv__95 [9]),
        .I1(t1[9]),
        .I2(t4[8]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[8]),
        .I5(t1[8]),
        .O(p_1_out_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__0_i_5
       (.I0(t1[15]),
        .I1(\MINSEL.minv__95 [15]),
        .I2(t4[14]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[14]),
        .I5(t1[14]),
        .O(p_1_out_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__0_i_6
       (.I0(t1[13]),
        .I1(\MINSEL.minv__95 [13]),
        .I2(t4[12]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[12]),
        .I5(t1[12]),
        .O(p_1_out_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__0_i_7
       (.I0(t1[11]),
        .I1(\MINSEL.minv__95 [11]),
        .I2(t4[10]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[10]),
        .I5(t1[10]),
        .O(p_1_out_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__0_i_8
       (.I0(t1[9]),
        .I1(\MINSEL.minv__95 [9]),
        .I2(t4[8]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[8]),
        .I5(t1[8]),
        .O(p_1_out_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__0_i_9
       (.I0(t3[15]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[15]),
        .O(\MINSEL.minv__95 [15]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 p_1_out_carry__1
       (.CI(p_1_out_carry__0_n_0),
        .CO({p_1_out_carry__1_n_0,p_1_out_carry__1_n_1,p_1_out_carry__1_n_2,p_1_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out_carry__1_i_1_n_0,p_1_out_carry__1_i_2_n_0,p_1_out_carry__1_i_3_n_0,p_1_out_carry__1_i_4_n_0}),
        .O(NLW_p_1_out_carry__1_O_UNCONNECTED[3:0]),
        .S({p_1_out_carry__1_i_5_n_0,p_1_out_carry__1_i_6_n_0,p_1_out_carry__1_i_7_n_0,p_1_out_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__1_i_1
       (.I0(\MINSEL.minv__95 [23]),
        .I1(t1[23]),
        .I2(t4[22]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[22]),
        .I5(t1[22]),
        .O(p_1_out_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__1_i_10
       (.I0(t3[21]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[21]),
        .O(\MINSEL.minv__95 [21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__1_i_11
       (.I0(t3[19]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[19]),
        .O(\MINSEL.minv__95 [19]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__1_i_12
       (.I0(t3[17]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[17]),
        .O(\MINSEL.minv__95 [17]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__1_i_2
       (.I0(\MINSEL.minv__95 [21]),
        .I1(t1[21]),
        .I2(t4[20]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[20]),
        .I5(t1[20]),
        .O(p_1_out_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__1_i_3
       (.I0(\MINSEL.minv__95 [19]),
        .I1(t1[19]),
        .I2(t4[18]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[18]),
        .I5(t1[18]),
        .O(p_1_out_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__1_i_4
       (.I0(\MINSEL.minv__95 [17]),
        .I1(t1[17]),
        .I2(t4[16]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[16]),
        .I5(t1[16]),
        .O(p_1_out_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__1_i_5
       (.I0(t1[23]),
        .I1(\MINSEL.minv__95 [23]),
        .I2(t4[22]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[22]),
        .I5(t1[22]),
        .O(p_1_out_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__1_i_6
       (.I0(t1[21]),
        .I1(\MINSEL.minv__95 [21]),
        .I2(t4[20]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[20]),
        .I5(t1[20]),
        .O(p_1_out_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__1_i_7
       (.I0(t1[19]),
        .I1(\MINSEL.minv__95 [19]),
        .I2(t4[18]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[18]),
        .I5(t1[18]),
        .O(p_1_out_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__1_i_8
       (.I0(t1[17]),
        .I1(\MINSEL.minv__95 [17]),
        .I2(t4[16]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[16]),
        .I5(t1[16]),
        .O(p_1_out_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__1_i_9
       (.I0(t3[23]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[23]),
        .O(\MINSEL.minv__95 [23]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 p_1_out_carry__2
       (.CI(p_1_out_carry__1_n_0),
        .CO({p_1_out_carry__2_n_0,p_1_out_carry__2_n_1,p_1_out_carry__2_n_2,p_1_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out_carry__2_i_1_n_0,p_1_out_carry__2_i_2_n_0,p_1_out_carry__2_i_3_n_0,p_1_out_carry__2_i_4_n_0}),
        .O(NLW_p_1_out_carry__2_O_UNCONNECTED[3:0]),
        .S({p_1_out_carry__2_i_5_n_0,p_1_out_carry__2_i_6_n_0,p_1_out_carry__2_i_7_n_0,p_1_out_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__2_i_1
       (.I0(\MINSEL.minv__95 [31]),
        .I1(t1[31]),
        .I2(t4[30]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[30]),
        .I5(t1[30]),
        .O(p_1_out_carry__2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__2_i_10
       (.I0(t3[29]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[29]),
        .O(\MINSEL.minv__95 [29]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__2_i_11
       (.I0(t3[27]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[27]),
        .O(\MINSEL.minv__95 [27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__2_i_12
       (.I0(t3[25]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[25]),
        .O(\MINSEL.minv__95 [25]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__2_i_2
       (.I0(\MINSEL.minv__95 [29]),
        .I1(t1[29]),
        .I2(t4[28]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[28]),
        .I5(t1[28]),
        .O(p_1_out_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__2_i_3
       (.I0(\MINSEL.minv__95 [27]),
        .I1(t1[27]),
        .I2(t4[26]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[26]),
        .I5(t1[26]),
        .O(p_1_out_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry__2_i_4
       (.I0(\MINSEL.minv__95 [25]),
        .I1(t1[25]),
        .I2(t4[24]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[24]),
        .I5(t1[24]),
        .O(p_1_out_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__2_i_5
       (.I0(t1[31]),
        .I1(\MINSEL.minv__95 [31]),
        .I2(t4[30]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[30]),
        .I5(t1[30]),
        .O(p_1_out_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__2_i_6
       (.I0(t1[29]),
        .I1(\MINSEL.minv__95 [29]),
        .I2(t4[28]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[28]),
        .I5(t1[28]),
        .O(p_1_out_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__2_i_7
       (.I0(t1[27]),
        .I1(\MINSEL.minv__95 [27]),
        .I2(t4[26]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[26]),
        .I5(t1[26]),
        .O(p_1_out_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry__2_i_8
       (.I0(t1[25]),
        .I1(\MINSEL.minv__95 [25]),
        .I2(t4[24]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[24]),
        .I5(t1[24]),
        .O(p_1_out_carry__2_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry__2_i_9
       (.I0(t3[31]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[31]),
        .O(\MINSEL.minv__95 [31]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry_i_1
       (.I0(\MINSEL.minv__95 [7]),
        .I1(t1[7]),
        .I2(t4[6]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[6]),
        .I5(t1[6]),
        .O(p_1_out_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry_i_10
       (.I0(t3[5]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[5]),
        .O(\MINSEL.minv__95 [5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry_i_11
       (.I0(t3[3]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[3]),
        .O(\MINSEL.minv__95 [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry_i_12
       (.I0(t3[1]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[1]),
        .O(\MINSEL.minv__95 [1]));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry_i_2
       (.I0(\MINSEL.minv__95 [5]),
        .I1(t1[5]),
        .I2(t4[4]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[4]),
        .I5(t1[4]),
        .O(p_1_out_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry_i_3
       (.I0(\MINSEL.minv__95 [3]),
        .I1(t1[3]),
        .I2(t4[2]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[2]),
        .I5(t1[2]),
        .O(p_1_out_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h22222222BBB222B2)) 
    p_1_out_carry_i_4
       (.I0(\MINSEL.minv__95 [1]),
        .I1(t1[1]),
        .I2(t4[0]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[0]),
        .I5(t1[0]),
        .O(p_1_out_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry_i_5
       (.I0(t1[7]),
        .I1(\MINSEL.minv__95 [7]),
        .I2(t4[6]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[6]),
        .I5(t1[6]),
        .O(p_1_out_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry_i_6
       (.I0(t1[5]),
        .I1(\MINSEL.minv__95 [5]),
        .I2(t4[4]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[4]),
        .I5(t1[4]),
        .O(p_1_out_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry_i_7
       (.I0(t1[3]),
        .I1(\MINSEL.minv__95 [3]),
        .I2(t4[2]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[2]),
        .I5(t1[2]),
        .O(p_1_out_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9990009000099909)) 
    p_1_out_carry_i_8
       (.I0(t1[1]),
        .I1(\MINSEL.minv__95 [1]),
        .I2(t4[0]),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(t3[0]),
        .I5(t1[0]),
        .O(p_1_out_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    p_1_out_carry_i_9
       (.I0(t3[7]),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(t4[7]),
        .O(\MINSEL.minv__95 [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \pwrup_cnt[0]_i_3 
       (.I0(\pwrup_cnt[0]_i_5_n_0 ),
        .I1(pwrup_cnt_reg[0]),
        .I2(pwrup_cnt_reg[1]),
        .I3(pwrup_cnt_reg[2]),
        .I4(pwrup_cnt_reg[3]),
        .I5(\pwrup_cnt[0]_i_6_n_0 ),
        .O(pwrup_cnt_reg_0_sn_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pwrup_cnt[0]_i_5 
       (.I0(pwrup_cnt_reg[4]),
        .I1(pwrup_cnt_reg[5]),
        .I2(pwrup_cnt_reg[6]),
        .I3(pwrup_cnt_reg[7]),
        .O(\pwrup_cnt[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \pwrup_cnt[0]_i_6 
       (.I0(pwrup_cnt_reg[11]),
        .I1(pwrup_cnt_reg[10]),
        .I2(pwrup_cnt_reg[9]),
        .I3(pwrup_cnt_reg[8]),
        .I4(\pwrup_cnt[0]_i_7_n_0 ),
        .O(\pwrup_cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pwrup_cnt[0]_i_7 
       (.I0(pwrup_cnt_reg[12]),
        .I1(pwrup_cnt_reg[13]),
        .I2(pwrup_cnt_reg[15]),
        .I3(pwrup_cnt_reg[14]),
        .O(\pwrup_cnt[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \r_cond[2]_i_1 
       (.I0(st[1]),
        .I1(st[0]),
        .I2(st[2]),
        .O(r_cond));
  FDRE \r_cond_reg[0] 
       (.C(s_axi_aclk),
        .CE(r_cond),
        .D(\cond_idx_reg_n_0_[0] ),
        .Q(\r_cond_reg_n_0_[0] ),
        .R(rst));
  FDRE \r_cond_reg[1] 
       (.C(s_axi_aclk),
        .CE(r_cond),
        .D(\cond_idx_reg_n_0_[1] ),
        .Q(\r_cond_reg_n_0_[1] ),
        .R(rst));
  FDRE \r_cond_reg[2] 
       (.C(s_axi_aclk),
        .CE(r_cond),
        .D(\cond_idx_reg_n_0_[2] ),
        .Q(\r_cond_reg_n_0_[2] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0F0E0FF0)) 
    \r_opcode[0]_i_1 
       (.I0(\op_idx_reg_n_0_[1] ),
        .I1(\op_idx_reg_n_0_[2] ),
        .I2(\op_idx_reg_n_0_[0] ),
        .I3(\op_idx_reg_n_0_[4] ),
        .I4(\op_idx_reg_n_0_[3] ),
        .O(ops[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h3C3F0E0C)) 
    \r_opcode[1]_i_1 
       (.I0(\op_idx_reg_n_0_[2] ),
        .I1(\op_idx_reg_n_0_[4] ),
        .I2(\op_idx_reg_n_0_[0] ),
        .I3(\op_idx_reg_n_0_[3] ),
        .I4(\op_idx_reg_n_0_[1] ),
        .O(ops[1]));
  LUT5 #(
    .INIT(32'h3333FD00)) 
    \r_opcode[2]_i_1 
       (.I0(\op_idx_reg_n_0_[3] ),
        .I1(\op_idx_reg_n_0_[0] ),
        .I2(\op_idx_reg_n_0_[1] ),
        .I3(\op_idx_reg_n_0_[2] ),
        .I4(\op_idx_reg_n_0_[4] ),
        .O(ops[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAAA0004)) 
    \r_opcode[3]_i_1 
       (.I0(\op_idx_reg_n_0_[0] ),
        .I1(\op_idx_reg_n_0_[3] ),
        .I2(\op_idx_reg_n_0_[1] ),
        .I3(\op_idx_reg_n_0_[2] ),
        .I4(\op_idx_reg_n_0_[4] ),
        .O(ops[3]));
  FDRE \r_opcode_reg[0] 
       (.C(s_axi_aclk),
        .CE(r_cond),
        .D(ops[0]),
        .Q(r_opcode[0]),
        .R(rst));
  FDRE \r_opcode_reg[1] 
       (.C(s_axi_aclk),
        .CE(r_cond),
        .D(ops[1]),
        .Q(r_opcode[1]),
        .R(rst));
  FDRE \r_opcode_reg[2] 
       (.C(s_axi_aclk),
        .CE(r_cond),
        .D(ops[2]),
        .Q(r_opcode[2]),
        .R(rst));
  FDRE \r_opcode_reg[3] 
       (.C(s_axi_aclk),
        .CE(r_cond),
        .D(ops[3]),
        .Q(r_opcode[3]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    r_start_i_1
       (.I0(st[2]),
        .I1(st[1]),
        .I2(st[0]),
        .O(r_start));
  FDRE r_start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(r_start),
        .Q(r_start_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    runtime_active_i_1
       (.I0(start),
        .I1(st[0]),
        .O(runtime_active));
  FDRE runtime_active_reg
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(runtime_active),
        .Q(runtime_active_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00001FFD)) 
    \runtime_counter[0]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(\runtime_counter_reg_n_0_[0] ),
        .O(runtime_counter[0]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[10]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__1_n_6),
        .O(runtime_counter[10]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[11]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__1_n_5),
        .O(runtime_counter[11]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[12]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__1_n_4),
        .O(runtime_counter[12]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[13]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__2_n_7),
        .O(runtime_counter[13]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[14]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__2_n_6),
        .O(runtime_counter[14]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[15]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__2_n_5),
        .O(runtime_counter[15]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[16]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__2_n_4),
        .O(runtime_counter[16]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[17]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__3_n_7),
        .O(runtime_counter[17]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[18]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__3_n_6),
        .O(runtime_counter[18]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[19]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__3_n_5),
        .O(runtime_counter[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[1]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry_n_7),
        .O(runtime_counter[1]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[20]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__3_n_4),
        .O(runtime_counter[20]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[21]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__4_n_7),
        .O(runtime_counter[21]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[22]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__4_n_6),
        .O(runtime_counter[22]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[23]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__4_n_5),
        .O(runtime_counter[23]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[24]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__4_n_4),
        .O(runtime_counter[24]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[25]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__5_n_7),
        .O(runtime_counter[25]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[26]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__5_n_6),
        .O(runtime_counter[26]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[27]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__5_n_5),
        .O(runtime_counter[27]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[28]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__5_n_4),
        .O(runtime_counter[28]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[29]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__6_n_7),
        .O(runtime_counter[29]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[2]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry_n_6),
        .O(runtime_counter[2]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[30]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__6_n_6),
        .O(runtime_counter[30]));
  LUT5 #(
    .INIT(32'h3FFF0082)) 
    \runtime_counter[31]_i_1 
       (.I0(start),
        .I1(st[2]),
        .I2(st[1]),
        .I3(st[0]),
        .I4(runtime_active_reg_n_0),
        .O(\runtime_counter[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[31]_i_2 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__6_n_5),
        .O(runtime_counter[31]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[3]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry_n_5),
        .O(runtime_counter[3]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[4]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry_n_4),
        .O(runtime_counter[4]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[5]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__0_n_7),
        .O(runtime_counter[5]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[6]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__0_n_6),
        .O(runtime_counter[6]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[7]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__0_n_5),
        .O(runtime_counter[7]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[8]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__0_n_4),
        .O(runtime_counter[8]));
  LUT5 #(
    .INIT(32'h1FFD0000)) 
    \runtime_counter[9]_i_1 
       (.I0(start),
        .I1(st[0]),
        .I2(st[1]),
        .I3(st[2]),
        .I4(t_runtime0_carry__1_n_7),
        .O(runtime_counter[9]));
  FDRE \runtime_counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[0]),
        .Q(\runtime_counter_reg_n_0_[0] ),
        .R(rst));
  FDRE \runtime_counter_reg[10] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[10]),
        .Q(\runtime_counter_reg_n_0_[10] ),
        .R(rst));
  FDRE \runtime_counter_reg[11] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[11]),
        .Q(\runtime_counter_reg_n_0_[11] ),
        .R(rst));
  FDRE \runtime_counter_reg[12] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[12]),
        .Q(\runtime_counter_reg_n_0_[12] ),
        .R(rst));
  FDRE \runtime_counter_reg[13] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[13]),
        .Q(\runtime_counter_reg_n_0_[13] ),
        .R(rst));
  FDRE \runtime_counter_reg[14] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[14]),
        .Q(\runtime_counter_reg_n_0_[14] ),
        .R(rst));
  FDRE \runtime_counter_reg[15] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[15]),
        .Q(\runtime_counter_reg_n_0_[15] ),
        .R(rst));
  FDRE \runtime_counter_reg[16] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[16]),
        .Q(\runtime_counter_reg_n_0_[16] ),
        .R(rst));
  FDRE \runtime_counter_reg[17] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[17]),
        .Q(\runtime_counter_reg_n_0_[17] ),
        .R(rst));
  FDRE \runtime_counter_reg[18] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[18]),
        .Q(\runtime_counter_reg_n_0_[18] ),
        .R(rst));
  FDRE \runtime_counter_reg[19] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[19]),
        .Q(\runtime_counter_reg_n_0_[19] ),
        .R(rst));
  FDRE \runtime_counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[1]),
        .Q(\runtime_counter_reg_n_0_[1] ),
        .R(rst));
  FDRE \runtime_counter_reg[20] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[20]),
        .Q(\runtime_counter_reg_n_0_[20] ),
        .R(rst));
  FDRE \runtime_counter_reg[21] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[21]),
        .Q(\runtime_counter_reg_n_0_[21] ),
        .R(rst));
  FDRE \runtime_counter_reg[22] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[22]),
        .Q(\runtime_counter_reg_n_0_[22] ),
        .R(rst));
  FDRE \runtime_counter_reg[23] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[23]),
        .Q(\runtime_counter_reg_n_0_[23] ),
        .R(rst));
  FDRE \runtime_counter_reg[24] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[24]),
        .Q(\runtime_counter_reg_n_0_[24] ),
        .R(rst));
  FDRE \runtime_counter_reg[25] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[25]),
        .Q(\runtime_counter_reg_n_0_[25] ),
        .R(rst));
  FDRE \runtime_counter_reg[26] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[26]),
        .Q(\runtime_counter_reg_n_0_[26] ),
        .R(rst));
  FDRE \runtime_counter_reg[27] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[27]),
        .Q(\runtime_counter_reg_n_0_[27] ),
        .R(rst));
  FDRE \runtime_counter_reg[28] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[28]),
        .Q(\runtime_counter_reg_n_0_[28] ),
        .R(rst));
  FDRE \runtime_counter_reg[29] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[29]),
        .Q(\runtime_counter_reg_n_0_[29] ),
        .R(rst));
  FDRE \runtime_counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[2]),
        .Q(\runtime_counter_reg_n_0_[2] ),
        .R(rst));
  FDRE \runtime_counter_reg[30] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[30]),
        .Q(\runtime_counter_reg_n_0_[30] ),
        .R(rst));
  FDRE \runtime_counter_reg[31] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[31]),
        .Q(\runtime_counter_reg_n_0_[31] ),
        .R(rst));
  FDRE \runtime_counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[3]),
        .Q(\runtime_counter_reg_n_0_[3] ),
        .R(rst));
  FDRE \runtime_counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[4]),
        .Q(\runtime_counter_reg_n_0_[4] ),
        .R(rst));
  FDRE \runtime_counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[5]),
        .Q(\runtime_counter_reg_n_0_[5] ),
        .R(rst));
  FDRE \runtime_counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[6]),
        .Q(\runtime_counter_reg_n_0_[6] ),
        .R(rst));
  FDRE \runtime_counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[7]),
        .Q(\runtime_counter_reg_n_0_[7] ),
        .R(rst));
  FDRE \runtime_counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[8]),
        .Q(\runtime_counter_reg_n_0_[8] ),
        .R(rst));
  FDRE \runtime_counter_reg[9] 
       (.C(s_axi_aclk),
        .CE(\runtime_counter[31]_i_1_n_0 ),
        .D(runtime_counter[9]),
        .Q(\runtime_counter_reg_n_0_[9] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_rdata[0]_i_1 
       (.I0(t1[0]),
        .I1(\s_axi_rdata_reg[0] ),
        .I2(t3[0]),
        .I3(\s_axi_rdata_reg[0]_0 ),
        .I4(\s_axi_rdata[0]_i_2_n_0 ),
        .I5(\s_axi_rdata[0]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[0]_i_2 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[0]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[0]),
        .I4(\winner_onehot_latched_reg_n_0_[0] ),
        .I5(\s_axi_rdata[4]_i_2_n_0 ),
        .O(\s_axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_rdata[0]_i_3 
       (.I0(\s_axi_rdata[0]_i_4_n_0 ),
        .I1(\s_axi_rdata_reg[0]_3 ),
        .I2(t2[0]),
        .I3(\s_axi_rdata_reg[0]_4 ),
        .I4(t4[0]),
        .O(\s_axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0C00000000)) 
    \s_axi_rdata[0]_i_4 
       (.I0(t_runtime[0]),
        .I1(data0[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[10]_i_1 
       (.I0(\s_axi_rdata[10]_i_2_n_0 ),
        .I1(t1[10]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[10]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[10]_i_3_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[10]_i_2 
       (.I0(t4[10]),
        .I1(t2[10]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[10]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[10]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[10]),
        .I4(t3[10]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[11]_i_1 
       (.I0(\s_axi_rdata[11]_i_2_n_0 ),
        .I1(t1[11]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[11]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[11]_i_3_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[11]_i_2 
       (.I0(t4[11]),
        .I1(t2[11]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[11]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[11]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[11]),
        .I4(t3[11]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[12]_i_1 
       (.I0(\s_axi_rdata[12]_i_2_n_0 ),
        .I1(t1[12]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[12]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[12]_i_3_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[12]_i_2 
       (.I0(t4[12]),
        .I1(t2[12]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[12]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[12]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[12]),
        .I4(t3[12]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[13]_i_1 
       (.I0(\s_axi_rdata[13]_i_2_n_0 ),
        .I1(t1[13]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[13]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[13]_i_3_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[13]_i_2 
       (.I0(t4[13]),
        .I1(t2[13]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[13]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[13]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[13]),
        .I4(t3[13]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[14]_i_1 
       (.I0(\s_axi_rdata[14]_i_2_n_0 ),
        .I1(t1[14]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[14]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[14]_i_3_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[14]_i_2 
       (.I0(t4[14]),
        .I1(t2[14]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[14]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[14]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[14]),
        .I4(t3[14]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[15]_i_1 
       (.I0(\s_axi_rdata[15]_i_2_n_0 ),
        .I1(t1[15]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[15]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[15]_i_3_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[15]_i_2 
       (.I0(t4[15]),
        .I1(t2[15]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[15]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[15]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[15]),
        .I4(t3[15]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[16]_i_1 
       (.I0(\s_axi_rdata[16]_i_2_n_0 ),
        .I1(t1[16]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[16]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[16]_i_3_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[16]_i_2 
       (.I0(t4[16]),
        .I1(t2[16]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[16]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[16]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[16]),
        .I4(t3[16]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[17]_i_1 
       (.I0(\s_axi_rdata[17]_i_2_n_0 ),
        .I1(t1[17]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[17]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[17]_i_3_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[17]_i_2 
       (.I0(t4[17]),
        .I1(t2[17]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[17]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[17]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[17]),
        .I4(t3[17]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[18]_i_1 
       (.I0(\s_axi_rdata[18]_i_2_n_0 ),
        .I1(t1[18]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[18]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[18]_i_3_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[18]_i_2 
       (.I0(t4[18]),
        .I1(t2[18]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[18]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[18]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[18]),
        .I4(t3[18]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[19]_i_1 
       (.I0(\s_axi_rdata[19]_i_2_n_0 ),
        .I1(t1[19]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[19]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[19]_i_3_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[19]_i_2 
       (.I0(t4[19]),
        .I1(t2[19]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[19]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[19]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[19]),
        .I4(t3[19]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_rdata[1]_i_1 
       (.I0(\winner_onehot_latched_reg_n_0_[1] ),
        .I1(\s_axi_rdata[4]_i_2_n_0 ),
        .I2(t3[1]),
        .I3(\s_axi_rdata_reg[0]_0 ),
        .I4(\s_axi_rdata[1]_i_2_n_0 ),
        .I5(\s_axi_rdata[1]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAAAAFAAAAAAAEA)) 
    \s_axi_rdata[1]_i_2 
       (.I0(\s_axi_rdata[1]_i_4_n_0 ),
        .I1(t0[1]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[1]_i_3 
       (.I0(\s_axi_rdata_reg[5] ),
        .I1(t_runtime[1]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t1[1]),
        .I4(\s_axi_rdata[1]_i_5_n_0 ),
        .O(\s_axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000002200)) 
    \s_axi_rdata[1]_i_4 
       (.I0(data0[1]),
        .I1(s_axi_araddr[1]),
        .I2(t_total[1]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[1]_i_5 
       (.I0(t4[1]),
        .I1(t2[1]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[20]_i_1 
       (.I0(\s_axi_rdata[20]_i_2_n_0 ),
        .I1(t1[20]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[20]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[20]_i_3_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[20]_i_2 
       (.I0(t4[20]),
        .I1(t2[20]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[20]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[20]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[20]),
        .I4(t3[20]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[21]_i_1 
       (.I0(\s_axi_rdata[21]_i_2_n_0 ),
        .I1(t1[21]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[21]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[21]_i_3_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[21]_i_2 
       (.I0(t4[21]),
        .I1(t2[21]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[21]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[21]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[21]),
        .I4(t3[21]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[22]_i_1 
       (.I0(\s_axi_rdata[22]_i_2_n_0 ),
        .I1(t1[22]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[22]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[22]_i_3_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[22]_i_2 
       (.I0(t4[22]),
        .I1(t2[22]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[22]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[22]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[22]),
        .I4(t3[22]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[23]_i_1 
       (.I0(\s_axi_rdata[23]_i_2_n_0 ),
        .I1(t1[23]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[23]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[23]_i_3_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[23]_i_2 
       (.I0(t4[23]),
        .I1(t2[23]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[23]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[23]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[23]),
        .I4(t3[23]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[24]_i_1 
       (.I0(\s_axi_rdata[24]_i_2_n_0 ),
        .I1(t1[24]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[24]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[24]_i_3_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[24]_i_2 
       (.I0(t4[24]),
        .I1(t2[24]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[24]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[24]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[24]),
        .I4(t3[24]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[25]_i_1 
       (.I0(\s_axi_rdata[25]_i_2_n_0 ),
        .I1(t1[25]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[25]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[25]_i_3_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[25]_i_2 
       (.I0(t4[25]),
        .I1(t2[25]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[25]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[25]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[25]),
        .I4(t3[25]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[26]_i_1 
       (.I0(\s_axi_rdata[26]_i_2_n_0 ),
        .I1(t1[26]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[26]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[26]_i_3_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[26]_i_2 
       (.I0(t4[26]),
        .I1(t2[26]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[26]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[26]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[26]),
        .I4(t3[26]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[27]_i_1 
       (.I0(\s_axi_rdata[27]_i_2_n_0 ),
        .I1(t1[27]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[27]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[27]_i_3_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[27]_i_2 
       (.I0(t4[27]),
        .I1(t2[27]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[27]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[27]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[27]),
        .I4(t3[27]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[28]_i_1 
       (.I0(\s_axi_rdata[28]_i_2_n_0 ),
        .I1(t1[28]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[28]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[28]_i_3_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[28]_i_2 
       (.I0(t4[28]),
        .I1(t2[28]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[28]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[28]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[28]),
        .I4(t3[28]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[29]_i_1 
       (.I0(\s_axi_rdata[29]_i_2_n_0 ),
        .I1(t1[29]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[29]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[29]_i_3_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[29]_i_2 
       (.I0(t4[29]),
        .I1(t2[29]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[29]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[29]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[29]),
        .I4(t3[29]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_rdata[2]_i_1 
       (.I0(t1[2]),
        .I1(\s_axi_rdata_reg[0] ),
        .I2(t3[2]),
        .I3(\s_axi_rdata_reg[0]_0 ),
        .I4(\s_axi_rdata[2]_i_2_n_0 ),
        .I5(\s_axi_rdata[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[2]_i_2 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[2]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[2]),
        .I4(\winner_onehot_latched_reg_n_0_[2] ),
        .I5(\s_axi_rdata[4]_i_2_n_0 ),
        .O(\s_axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_rdata[2]_i_3 
       (.I0(\s_axi_rdata[2]_i_4_n_0 ),
        .I1(\s_axi_rdata_reg[0]_3 ),
        .I2(t2[2]),
        .I3(\s_axi_rdata_reg[0]_4 ),
        .I4(t4[2]),
        .O(\s_axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0C00000000)) 
    \s_axi_rdata[2]_i_4 
       (.I0(t_runtime[2]),
        .I1(winner_code[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[30]_i_1 
       (.I0(\s_axi_rdata[30]_i_2_n_0 ),
        .I1(t1[30]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[30]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[30]_i_3_n_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[30]_i_2 
       (.I0(t4[30]),
        .I1(t2[30]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[30]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[30]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[30]),
        .I4(t3[30]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[31]_i_2 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(t1[31]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[31]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[31]_i_6_n_0 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[31]_i_3 
       (.I0(t4[31]),
        .I1(t2[31]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[31]_i_6 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[31]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[31]),
        .I4(t3[31]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_rdata[3]_i_1 
       (.I0(t1[3]),
        .I1(\s_axi_rdata_reg[0] ),
        .I2(t3[3]),
        .I3(\s_axi_rdata_reg[0]_0 ),
        .I4(\s_axi_rdata[3]_i_2_n_0 ),
        .I5(\s_axi_rdata[3]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[3]_i_2 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[3]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[3]),
        .I4(\winner_onehot_latched_reg_n_0_[3] ),
        .I5(\s_axi_rdata[4]_i_2_n_0 ),
        .O(\s_axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_rdata[3]_i_3 
       (.I0(\s_axi_rdata[3]_i_4_n_0 ),
        .I1(\s_axi_rdata_reg[0]_3 ),
        .I2(t2[3]),
        .I3(\s_axi_rdata_reg[0]_4 ),
        .I4(t4[3]),
        .O(\s_axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0C00000000)) 
    \s_axi_rdata[3]_i_4 
       (.I0(t_runtime[3]),
        .I1(winner_code[1]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_rdata[4]_i_1 
       (.I0(\winner_onehot_latched_reg_n_0_[4] ),
        .I1(\s_axi_rdata[4]_i_2_n_0 ),
        .I2(t3[4]),
        .I3(\s_axi_rdata_reg[0]_0 ),
        .I4(\s_axi_rdata[4]_i_4_n_0 ),
        .I5(\s_axi_rdata[4]_i_5_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \s_axi_rdata[4]_i_2 
       (.I0(bench_done),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .O(\s_axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAFAAAAAAAEA)) 
    \s_axi_rdata[4]_i_4 
       (.I0(\s_axi_rdata[4]_i_6_n_0 ),
        .I1(t0[4]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[4]_i_5 
       (.I0(\s_axi_rdata_reg[5] ),
        .I1(t_runtime[4]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t1[4]),
        .I4(\s_axi_rdata[4]_i_7_n_0 ),
        .O(\s_axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000002200)) 
    \s_axi_rdata[4]_i_6 
       (.I0(\winner_onehot_latched_reg_n_0_[4] ),
        .I1(s_axi_araddr[1]),
        .I2(t_total[4]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[4]_i_7 
       (.I0(t4[4]),
        .I1(t2[4]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[5]_i_1 
       (.I0(\s_axi_rdata[5]_i_2_n_0 ),
        .I1(t1[5]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[5]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[5]_i_3_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[5]_i_2 
       (.I0(t4[5]),
        .I1(t2[5]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[5]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[5]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[5]),
        .I4(t3[5]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[6]_i_1 
       (.I0(\s_axi_rdata[6]_i_2_n_0 ),
        .I1(t1[6]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[6]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[6]_i_3_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[6]_i_2 
       (.I0(t4[6]),
        .I1(t2[6]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[6]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[6]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[6]),
        .I4(t3[6]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[7]_i_1 
       (.I0(\s_axi_rdata[7]_i_2_n_0 ),
        .I1(t1[7]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[7]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[7]_i_3_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[7]_i_2 
       (.I0(t4[7]),
        .I1(t2[7]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[7]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[7]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[7]),
        .I4(t3[7]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[8]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(t1[8]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[8]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[8]_i_3_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[8]_i_2 
       (.I0(t4[8]),
        .I1(t2[8]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[8]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[8]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[8]),
        .I4(t3[8]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_rdata[9]_i_1 
       (.I0(\s_axi_rdata[9]_i_2_n_0 ),
        .I1(t1[9]),
        .I2(\s_axi_rdata_reg[0] ),
        .I3(t_runtime[9]),
        .I4(\s_axi_rdata_reg[5] ),
        .I5(\s_axi_rdata[9]_i_3_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \s_axi_rdata[9]_i_2 
       (.I0(t4[9]),
        .I1(t2[9]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[0]),
        .O(\s_axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_rdata[9]_i_3 
       (.I0(\s_axi_rdata_reg[0]_1 ),
        .I1(t_total[9]),
        .I2(\s_axi_rdata_reg[0]_2 ),
        .I3(t0[9]),
        .I4(t3[9]),
        .I5(\s_axi_rdata_reg[0]_0 ),
        .O(\s_axi_rdata[9]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_runtime0_carry
       (.CI(1'b0),
        .CO({t_runtime0_carry_n_0,t_runtime0_carry_n_1,t_runtime0_carry_n_2,t_runtime0_carry_n_3}),
        .CYINIT(\runtime_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({t_runtime0_carry_n_4,t_runtime0_carry_n_5,t_runtime0_carry_n_6,t_runtime0_carry_n_7}),
        .S({\runtime_counter_reg_n_0_[4] ,\runtime_counter_reg_n_0_[3] ,\runtime_counter_reg_n_0_[2] ,\runtime_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_runtime0_carry__0
       (.CI(t_runtime0_carry_n_0),
        .CO({t_runtime0_carry__0_n_0,t_runtime0_carry__0_n_1,t_runtime0_carry__0_n_2,t_runtime0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({t_runtime0_carry__0_n_4,t_runtime0_carry__0_n_5,t_runtime0_carry__0_n_6,t_runtime0_carry__0_n_7}),
        .S({\runtime_counter_reg_n_0_[8] ,\runtime_counter_reg_n_0_[7] ,\runtime_counter_reg_n_0_[6] ,\runtime_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_runtime0_carry__1
       (.CI(t_runtime0_carry__0_n_0),
        .CO({t_runtime0_carry__1_n_0,t_runtime0_carry__1_n_1,t_runtime0_carry__1_n_2,t_runtime0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({t_runtime0_carry__1_n_4,t_runtime0_carry__1_n_5,t_runtime0_carry__1_n_6,t_runtime0_carry__1_n_7}),
        .S({\runtime_counter_reg_n_0_[12] ,\runtime_counter_reg_n_0_[11] ,\runtime_counter_reg_n_0_[10] ,\runtime_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_runtime0_carry__2
       (.CI(t_runtime0_carry__1_n_0),
        .CO({t_runtime0_carry__2_n_0,t_runtime0_carry__2_n_1,t_runtime0_carry__2_n_2,t_runtime0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({t_runtime0_carry__2_n_4,t_runtime0_carry__2_n_5,t_runtime0_carry__2_n_6,t_runtime0_carry__2_n_7}),
        .S({\runtime_counter_reg_n_0_[16] ,\runtime_counter_reg_n_0_[15] ,\runtime_counter_reg_n_0_[14] ,\runtime_counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_runtime0_carry__3
       (.CI(t_runtime0_carry__2_n_0),
        .CO({t_runtime0_carry__3_n_0,t_runtime0_carry__3_n_1,t_runtime0_carry__3_n_2,t_runtime0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({t_runtime0_carry__3_n_4,t_runtime0_carry__3_n_5,t_runtime0_carry__3_n_6,t_runtime0_carry__3_n_7}),
        .S({\runtime_counter_reg_n_0_[20] ,\runtime_counter_reg_n_0_[19] ,\runtime_counter_reg_n_0_[18] ,\runtime_counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_runtime0_carry__4
       (.CI(t_runtime0_carry__3_n_0),
        .CO({t_runtime0_carry__4_n_0,t_runtime0_carry__4_n_1,t_runtime0_carry__4_n_2,t_runtime0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({t_runtime0_carry__4_n_4,t_runtime0_carry__4_n_5,t_runtime0_carry__4_n_6,t_runtime0_carry__4_n_7}),
        .S({\runtime_counter_reg_n_0_[24] ,\runtime_counter_reg_n_0_[23] ,\runtime_counter_reg_n_0_[22] ,\runtime_counter_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_runtime0_carry__5
       (.CI(t_runtime0_carry__4_n_0),
        .CO({t_runtime0_carry__5_n_0,t_runtime0_carry__5_n_1,t_runtime0_carry__5_n_2,t_runtime0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({t_runtime0_carry__5_n_4,t_runtime0_carry__5_n_5,t_runtime0_carry__5_n_6,t_runtime0_carry__5_n_7}),
        .S({\runtime_counter_reg_n_0_[28] ,\runtime_counter_reg_n_0_[27] ,\runtime_counter_reg_n_0_[26] ,\runtime_counter_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_runtime0_carry__6
       (.CI(t_runtime0_carry__5_n_0),
        .CO({NLW_t_runtime0_carry__6_CO_UNCONNECTED[3:2],t_runtime0_carry__6_n_2,t_runtime0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_t_runtime0_carry__6_O_UNCONNECTED[3],t_runtime0_carry__6_n_5,t_runtime0_carry__6_n_6,t_runtime0_carry__6_n_7}),
        .S({1'b0,\runtime_counter_reg_n_0_[31] ,\runtime_counter_reg_n_0_[30] ,\runtime_counter_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \t_runtime[0]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\runtime_counter_reg_n_0_[0] ),
        .O(\t_runtime[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[10]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__1_n_6),
        .O(\t_runtime[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[11]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__1_n_5),
        .O(\t_runtime[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[12]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__1_n_4),
        .O(\t_runtime[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[13]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__2_n_7),
        .O(\t_runtime[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[14]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__2_n_6),
        .O(\t_runtime[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[15]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__2_n_5),
        .O(\t_runtime[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[16]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__2_n_4),
        .O(\t_runtime[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[17]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__3_n_7),
        .O(\t_runtime[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[18]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__3_n_6),
        .O(\t_runtime[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[19]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__3_n_5),
        .O(\t_runtime[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[1]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry_n_7),
        .O(\t_runtime[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[20]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__3_n_4),
        .O(\t_runtime[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[21]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__4_n_7),
        .O(\t_runtime[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[22]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__4_n_6),
        .O(\t_runtime[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[23]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__4_n_5),
        .O(\t_runtime[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[24]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__4_n_4),
        .O(\t_runtime[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[25]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__5_n_7),
        .O(\t_runtime[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[26]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__5_n_6),
        .O(\t_runtime[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[27]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__5_n_5),
        .O(\t_runtime[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[28]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__5_n_4),
        .O(\t_runtime[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[29]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__6_n_7),
        .O(\t_runtime[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[2]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry_n_6),
        .O(\t_runtime[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[30]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__6_n_6),
        .O(\t_runtime[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[31]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__6_n_5),
        .O(\t_runtime[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[3]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry_n_5),
        .O(\t_runtime[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[4]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry_n_4),
        .O(\t_runtime[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[5]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__0_n_7),
        .O(\t_runtime[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[6]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__0_n_6),
        .O(\t_runtime[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[7]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__0_n_5),
        .O(\t_runtime[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[8]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__0_n_4),
        .O(\t_runtime[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_runtime[9]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(t_runtime0_carry__1_n_7),
        .O(\t_runtime[9]_i_1_n_0 ));
  FDRE \t_runtime_reg[0] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[0]_i_1_n_0 ),
        .Q(t_runtime[0]),
        .R(rst));
  FDRE \t_runtime_reg[10] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[10]_i_1_n_0 ),
        .Q(t_runtime[10]),
        .R(rst));
  FDRE \t_runtime_reg[11] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[11]_i_1_n_0 ),
        .Q(t_runtime[11]),
        .R(rst));
  FDRE \t_runtime_reg[12] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[12]_i_1_n_0 ),
        .Q(t_runtime[12]),
        .R(rst));
  FDRE \t_runtime_reg[13] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[13]_i_1_n_0 ),
        .Q(t_runtime[13]),
        .R(rst));
  FDRE \t_runtime_reg[14] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[14]_i_1_n_0 ),
        .Q(t_runtime[14]),
        .R(rst));
  FDRE \t_runtime_reg[15] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[15]_i_1_n_0 ),
        .Q(t_runtime[15]),
        .R(rst));
  FDRE \t_runtime_reg[16] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[16]_i_1_n_0 ),
        .Q(t_runtime[16]),
        .R(rst));
  FDRE \t_runtime_reg[17] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[17]_i_1_n_0 ),
        .Q(t_runtime[17]),
        .R(rst));
  FDRE \t_runtime_reg[18] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[18]_i_1_n_0 ),
        .Q(t_runtime[18]),
        .R(rst));
  FDRE \t_runtime_reg[19] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[19]_i_1_n_0 ),
        .Q(t_runtime[19]),
        .R(rst));
  FDRE \t_runtime_reg[1] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[1]_i_1_n_0 ),
        .Q(t_runtime[1]),
        .R(rst));
  FDRE \t_runtime_reg[20] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[20]_i_1_n_0 ),
        .Q(t_runtime[20]),
        .R(rst));
  FDRE \t_runtime_reg[21] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[21]_i_1_n_0 ),
        .Q(t_runtime[21]),
        .R(rst));
  FDRE \t_runtime_reg[22] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[22]_i_1_n_0 ),
        .Q(t_runtime[22]),
        .R(rst));
  FDRE \t_runtime_reg[23] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[23]_i_1_n_0 ),
        .Q(t_runtime[23]),
        .R(rst));
  FDRE \t_runtime_reg[24] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[24]_i_1_n_0 ),
        .Q(t_runtime[24]),
        .R(rst));
  FDRE \t_runtime_reg[25] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[25]_i_1_n_0 ),
        .Q(t_runtime[25]),
        .R(rst));
  FDRE \t_runtime_reg[26] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[26]_i_1_n_0 ),
        .Q(t_runtime[26]),
        .R(rst));
  FDRE \t_runtime_reg[27] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[27]_i_1_n_0 ),
        .Q(t_runtime[27]),
        .R(rst));
  FDRE \t_runtime_reg[28] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[28]_i_1_n_0 ),
        .Q(t_runtime[28]),
        .R(rst));
  FDRE \t_runtime_reg[29] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[29]_i_1_n_0 ),
        .Q(t_runtime[29]),
        .R(rst));
  FDRE \t_runtime_reg[2] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[2]_i_1_n_0 ),
        .Q(t_runtime[2]),
        .R(rst));
  FDRE \t_runtime_reg[30] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[30]_i_1_n_0 ),
        .Q(t_runtime[30]),
        .R(rst));
  FDRE \t_runtime_reg[31] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[31]_i_1_n_0 ),
        .Q(t_runtime[31]),
        .R(rst));
  FDRE \t_runtime_reg[3] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[3]_i_1_n_0 ),
        .Q(t_runtime[3]),
        .R(rst));
  FDRE \t_runtime_reg[4] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[4]_i_1_n_0 ),
        .Q(t_runtime[4]),
        .R(rst));
  FDRE \t_runtime_reg[5] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[5]_i_1_n_0 ),
        .Q(t_runtime[5]),
        .R(rst));
  FDRE \t_runtime_reg[6] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[6]_i_1_n_0 ),
        .Q(t_runtime[6]),
        .R(rst));
  FDRE \t_runtime_reg[7] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[7]_i_1_n_0 ),
        .Q(t_runtime[7]),
        .R(rst));
  FDRE \t_runtime_reg[8] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[8]_i_1_n_0 ),
        .Q(t_runtime[8]),
        .R(rst));
  FDRE \t_runtime_reg[9] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(\t_runtime[9]_i_1_n_0 ),
        .Q(t_runtime[9]),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__0_carry
       (.CI(1'b0),
        .CO({t_total0__0_carry_n_0,t_total0__0_carry_n_1,t_total0__0_carry_n_2,t_total0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__0_carry_i_1_n_0,t_total0__0_carry_i_2_n_0,t_total0__0_carry_i_3_n_0,1'b0}),
        .O({t_total0__0_carry_n_4,t_total0__0_carry_n_5,t_total0__0_carry_n_6,t_total0__0_carry_n_7}),
        .S({t_total0__0_carry_i_4_n_0,t_total0__0_carry_i_5_n_0,t_total0__0_carry_i_6_n_0,t_total0__0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__0_carry__0
       (.CI(t_total0__0_carry_n_0),
        .CO({t_total0__0_carry__0_n_0,t_total0__0_carry__0_n_1,t_total0__0_carry__0_n_2,t_total0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__0_carry__0_i_1_n_0,t_total0__0_carry__0_i_2_n_0,t_total0__0_carry__0_i_3_n_0,t_total0__0_carry__0_i_4_n_0}),
        .O({t_total0__0_carry__0_n_4,t_total0__0_carry__0_n_5,t_total0__0_carry__0_n_6,t_total0__0_carry__0_n_7}),
        .S({t_total0__0_carry__0_i_5_n_0,t_total0__0_carry__0_i_6_n_0,t_total0__0_carry__0_i_7_n_0,t_total0__0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__0_i_1
       (.I0(t0[6]),
        .I1(t3[6]),
        .I2(\cond_cycle_acc_reg_n_0_[6] ),
        .O(t_total0__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__0_i_2
       (.I0(t0[5]),
        .I1(t3[5]),
        .I2(\cond_cycle_acc_reg_n_0_[5] ),
        .O(t_total0__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__0_i_3
       (.I0(t0[4]),
        .I1(t3[4]),
        .I2(\cond_cycle_acc_reg_n_0_[4] ),
        .O(t_total0__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__0_i_4
       (.I0(t0[3]),
        .I1(t3[3]),
        .I2(\cond_cycle_acc_reg_n_0_[3] ),
        .O(t_total0__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__0_i_5
       (.I0(t0[7]),
        .I1(t3[7]),
        .I2(\cond_cycle_acc_reg_n_0_[7] ),
        .I3(t_total0__0_carry__0_i_1_n_0),
        .O(t_total0__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__0_i_6
       (.I0(t0[6]),
        .I1(t3[6]),
        .I2(\cond_cycle_acc_reg_n_0_[6] ),
        .I3(t_total0__0_carry__0_i_2_n_0),
        .O(t_total0__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__0_i_7
       (.I0(t0[5]),
        .I1(t3[5]),
        .I2(\cond_cycle_acc_reg_n_0_[5] ),
        .I3(t_total0__0_carry__0_i_3_n_0),
        .O(t_total0__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__0_i_8
       (.I0(t0[4]),
        .I1(t3[4]),
        .I2(\cond_cycle_acc_reg_n_0_[4] ),
        .I3(t_total0__0_carry__0_i_4_n_0),
        .O(t_total0__0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__0_carry__1
       (.CI(t_total0__0_carry__0_n_0),
        .CO({t_total0__0_carry__1_n_0,t_total0__0_carry__1_n_1,t_total0__0_carry__1_n_2,t_total0__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__0_carry__1_i_1_n_0,t_total0__0_carry__1_i_2_n_0,t_total0__0_carry__1_i_3_n_0,t_total0__0_carry__1_i_4_n_0}),
        .O({t_total0__0_carry__1_n_4,t_total0__0_carry__1_n_5,t_total0__0_carry__1_n_6,t_total0__0_carry__1_n_7}),
        .S({t_total0__0_carry__1_i_5_n_0,t_total0__0_carry__1_i_6_n_0,t_total0__0_carry__1_i_7_n_0,t_total0__0_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__1_i_1
       (.I0(t0[10]),
        .I1(t3[10]),
        .I2(\cond_cycle_acc_reg_n_0_[10] ),
        .O(t_total0__0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__1_i_2
       (.I0(t0[9]),
        .I1(t3[9]),
        .I2(\cond_cycle_acc_reg_n_0_[9] ),
        .O(t_total0__0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__1_i_3
       (.I0(t0[8]),
        .I1(t3[8]),
        .I2(\cond_cycle_acc_reg_n_0_[8] ),
        .O(t_total0__0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__1_i_4
       (.I0(t0[7]),
        .I1(t3[7]),
        .I2(\cond_cycle_acc_reg_n_0_[7] ),
        .O(t_total0__0_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__1_i_5
       (.I0(t0[11]),
        .I1(t3[11]),
        .I2(\cond_cycle_acc_reg_n_0_[11] ),
        .I3(t_total0__0_carry__1_i_1_n_0),
        .O(t_total0__0_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__1_i_6
       (.I0(t0[10]),
        .I1(t3[10]),
        .I2(\cond_cycle_acc_reg_n_0_[10] ),
        .I3(t_total0__0_carry__1_i_2_n_0),
        .O(t_total0__0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__1_i_7
       (.I0(t0[9]),
        .I1(t3[9]),
        .I2(\cond_cycle_acc_reg_n_0_[9] ),
        .I3(t_total0__0_carry__1_i_3_n_0),
        .O(t_total0__0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__1_i_8
       (.I0(t0[8]),
        .I1(t3[8]),
        .I2(\cond_cycle_acc_reg_n_0_[8] ),
        .I3(t_total0__0_carry__1_i_4_n_0),
        .O(t_total0__0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__0_carry__2
       (.CI(t_total0__0_carry__1_n_0),
        .CO({t_total0__0_carry__2_n_0,t_total0__0_carry__2_n_1,t_total0__0_carry__2_n_2,t_total0__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__0_carry__2_i_1_n_0,t_total0__0_carry__2_i_2_n_0,t_total0__0_carry__2_i_3_n_0,t_total0__0_carry__2_i_4_n_0}),
        .O({t_total0__0_carry__2_n_4,t_total0__0_carry__2_n_5,t_total0__0_carry__2_n_6,t_total0__0_carry__2_n_7}),
        .S({t_total0__0_carry__2_i_5_n_0,t_total0__0_carry__2_i_6_n_0,t_total0__0_carry__2_i_7_n_0,t_total0__0_carry__2_i_8_n_0}));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__2_i_1
       (.I0(t0[14]),
        .I1(t3[14]),
        .I2(\cond_cycle_acc_reg_n_0_[14] ),
        .O(t_total0__0_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__2_i_2
       (.I0(t0[13]),
        .I1(t3[13]),
        .I2(\cond_cycle_acc_reg_n_0_[13] ),
        .O(t_total0__0_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__2_i_3
       (.I0(t0[12]),
        .I1(t3[12]),
        .I2(\cond_cycle_acc_reg_n_0_[12] ),
        .O(t_total0__0_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__2_i_4
       (.I0(t0[11]),
        .I1(t3[11]),
        .I2(\cond_cycle_acc_reg_n_0_[11] ),
        .O(t_total0__0_carry__2_i_4_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__2_i_5
       (.I0(t0[15]),
        .I1(t3[15]),
        .I2(\cond_cycle_acc_reg_n_0_[15] ),
        .I3(t_total0__0_carry__2_i_1_n_0),
        .O(t_total0__0_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__2_i_6
       (.I0(t0[14]),
        .I1(t3[14]),
        .I2(\cond_cycle_acc_reg_n_0_[14] ),
        .I3(t_total0__0_carry__2_i_2_n_0),
        .O(t_total0__0_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__2_i_7
       (.I0(t0[13]),
        .I1(t3[13]),
        .I2(\cond_cycle_acc_reg_n_0_[13] ),
        .I3(t_total0__0_carry__2_i_3_n_0),
        .O(t_total0__0_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__2_i_8
       (.I0(t0[12]),
        .I1(t3[12]),
        .I2(\cond_cycle_acc_reg_n_0_[12] ),
        .I3(t_total0__0_carry__2_i_4_n_0),
        .O(t_total0__0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__0_carry__3
       (.CI(t_total0__0_carry__2_n_0),
        .CO({t_total0__0_carry__3_n_0,t_total0__0_carry__3_n_1,t_total0__0_carry__3_n_2,t_total0__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__0_carry__3_i_1_n_0,t_total0__0_carry__3_i_2_n_0,t_total0__0_carry__3_i_3_n_0,t_total0__0_carry__3_i_4_n_0}),
        .O({t_total0__0_carry__3_n_4,t_total0__0_carry__3_n_5,t_total0__0_carry__3_n_6,t_total0__0_carry__3_n_7}),
        .S({t_total0__0_carry__3_i_5_n_0,t_total0__0_carry__3_i_6_n_0,t_total0__0_carry__3_i_7_n_0,t_total0__0_carry__3_i_8_n_0}));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__3_i_1
       (.I0(t0[18]),
        .I1(t3[18]),
        .I2(\cond_cycle_acc_reg_n_0_[18] ),
        .O(t_total0__0_carry__3_i_1_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__3_i_2
       (.I0(t0[17]),
        .I1(t3[17]),
        .I2(\cond_cycle_acc_reg_n_0_[17] ),
        .O(t_total0__0_carry__3_i_2_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__3_i_3
       (.I0(t0[16]),
        .I1(t3[16]),
        .I2(\cond_cycle_acc_reg_n_0_[16] ),
        .O(t_total0__0_carry__3_i_3_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__3_i_4
       (.I0(t0[15]),
        .I1(t3[15]),
        .I2(\cond_cycle_acc_reg_n_0_[15] ),
        .O(t_total0__0_carry__3_i_4_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__3_i_5
       (.I0(t0[19]),
        .I1(t3[19]),
        .I2(\cond_cycle_acc_reg_n_0_[19] ),
        .I3(t_total0__0_carry__3_i_1_n_0),
        .O(t_total0__0_carry__3_i_5_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__3_i_6
       (.I0(t0[18]),
        .I1(t3[18]),
        .I2(\cond_cycle_acc_reg_n_0_[18] ),
        .I3(t_total0__0_carry__3_i_2_n_0),
        .O(t_total0__0_carry__3_i_6_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__3_i_7
       (.I0(t0[17]),
        .I1(t3[17]),
        .I2(\cond_cycle_acc_reg_n_0_[17] ),
        .I3(t_total0__0_carry__3_i_3_n_0),
        .O(t_total0__0_carry__3_i_7_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__3_i_8
       (.I0(t0[16]),
        .I1(t3[16]),
        .I2(\cond_cycle_acc_reg_n_0_[16] ),
        .I3(t_total0__0_carry__3_i_4_n_0),
        .O(t_total0__0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__0_carry__4
       (.CI(t_total0__0_carry__3_n_0),
        .CO({t_total0__0_carry__4_n_0,t_total0__0_carry__4_n_1,t_total0__0_carry__4_n_2,t_total0__0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__0_carry__4_i_1_n_0,t_total0__0_carry__4_i_2_n_0,t_total0__0_carry__4_i_3_n_0,t_total0__0_carry__4_i_4_n_0}),
        .O({t_total0__0_carry__4_n_4,t_total0__0_carry__4_n_5,t_total0__0_carry__4_n_6,t_total0__0_carry__4_n_7}),
        .S({t_total0__0_carry__4_i_5_n_0,t_total0__0_carry__4_i_6_n_0,t_total0__0_carry__4_i_7_n_0,t_total0__0_carry__4_i_8_n_0}));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__4_i_1
       (.I0(t0[22]),
        .I1(t3[22]),
        .I2(\cond_cycle_acc_reg_n_0_[22] ),
        .O(t_total0__0_carry__4_i_1_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__4_i_2
       (.I0(t0[21]),
        .I1(t3[21]),
        .I2(\cond_cycle_acc_reg_n_0_[21] ),
        .O(t_total0__0_carry__4_i_2_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__4_i_3
       (.I0(t0[20]),
        .I1(t3[20]),
        .I2(\cond_cycle_acc_reg_n_0_[20] ),
        .O(t_total0__0_carry__4_i_3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__4_i_4
       (.I0(t0[19]),
        .I1(t3[19]),
        .I2(\cond_cycle_acc_reg_n_0_[19] ),
        .O(t_total0__0_carry__4_i_4_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__4_i_5
       (.I0(t0[23]),
        .I1(t3[23]),
        .I2(\cond_cycle_acc_reg_n_0_[23] ),
        .I3(t_total0__0_carry__4_i_1_n_0),
        .O(t_total0__0_carry__4_i_5_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__4_i_6
       (.I0(t0[22]),
        .I1(t3[22]),
        .I2(\cond_cycle_acc_reg_n_0_[22] ),
        .I3(t_total0__0_carry__4_i_2_n_0),
        .O(t_total0__0_carry__4_i_6_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__4_i_7
       (.I0(t0[21]),
        .I1(t3[21]),
        .I2(\cond_cycle_acc_reg_n_0_[21] ),
        .I3(t_total0__0_carry__4_i_3_n_0),
        .O(t_total0__0_carry__4_i_7_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__4_i_8
       (.I0(t0[20]),
        .I1(t3[20]),
        .I2(\cond_cycle_acc_reg_n_0_[20] ),
        .I3(t_total0__0_carry__4_i_4_n_0),
        .O(t_total0__0_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__0_carry__5
       (.CI(t_total0__0_carry__4_n_0),
        .CO({t_total0__0_carry__5_n_0,t_total0__0_carry__5_n_1,t_total0__0_carry__5_n_2,t_total0__0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__0_carry__5_i_1_n_0,t_total0__0_carry__5_i_2_n_0,t_total0__0_carry__5_i_3_n_0,t_total0__0_carry__5_i_4_n_0}),
        .O({t_total0__0_carry__5_n_4,t_total0__0_carry__5_n_5,t_total0__0_carry__5_n_6,t_total0__0_carry__5_n_7}),
        .S({t_total0__0_carry__5_i_5_n_0,t_total0__0_carry__5_i_6_n_0,t_total0__0_carry__5_i_7_n_0,t_total0__0_carry__5_i_8_n_0}));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__5_i_1
       (.I0(t0[26]),
        .I1(t3[26]),
        .I2(\cond_cycle_acc_reg_n_0_[26] ),
        .O(t_total0__0_carry__5_i_1_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__5_i_2
       (.I0(t0[25]),
        .I1(t3[25]),
        .I2(\cond_cycle_acc_reg_n_0_[25] ),
        .O(t_total0__0_carry__5_i_2_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__5_i_3
       (.I0(t0[24]),
        .I1(t3[24]),
        .I2(\cond_cycle_acc_reg_n_0_[24] ),
        .O(t_total0__0_carry__5_i_3_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__5_i_4
       (.I0(t0[23]),
        .I1(t3[23]),
        .I2(\cond_cycle_acc_reg_n_0_[23] ),
        .O(t_total0__0_carry__5_i_4_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__5_i_5
       (.I0(t0[27]),
        .I1(t3[27]),
        .I2(\cond_cycle_acc_reg_n_0_[27] ),
        .I3(t_total0__0_carry__5_i_1_n_0),
        .O(t_total0__0_carry__5_i_5_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__5_i_6
       (.I0(t0[26]),
        .I1(t3[26]),
        .I2(\cond_cycle_acc_reg_n_0_[26] ),
        .I3(t_total0__0_carry__5_i_2_n_0),
        .O(t_total0__0_carry__5_i_6_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__5_i_7
       (.I0(t0[25]),
        .I1(t3[25]),
        .I2(\cond_cycle_acc_reg_n_0_[25] ),
        .I3(t_total0__0_carry__5_i_3_n_0),
        .O(t_total0__0_carry__5_i_7_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__5_i_8
       (.I0(t0[24]),
        .I1(t3[24]),
        .I2(\cond_cycle_acc_reg_n_0_[24] ),
        .I3(t_total0__0_carry__5_i_4_n_0),
        .O(t_total0__0_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__0_carry__6
       (.CI(t_total0__0_carry__5_n_0),
        .CO({NLW_t_total0__0_carry__6_CO_UNCONNECTED[3],t_total0__0_carry__6_n_1,t_total0__0_carry__6_n_2,t_total0__0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,t_total0__0_carry__6_i_1_n_0,t_total0__0_carry__6_i_2_n_0,t_total0__0_carry__6_i_3_n_0}),
        .O({t_total0__0_carry__6_n_4,t_total0__0_carry__6_n_5,t_total0__0_carry__6_n_6,t_total0__0_carry__6_n_7}),
        .S({t_total0__0_carry__6_i_4_n_0,t_total0__0_carry__6_i_5_n_0,t_total0__0_carry__6_i_6_n_0,t_total0__0_carry__6_i_7_n_0}));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__6_i_1
       (.I0(t0[29]),
        .I1(t3[29]),
        .I2(\cond_cycle_acc_reg_n_0_[29] ),
        .O(t_total0__0_carry__6_i_1_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__6_i_2
       (.I0(t0[28]),
        .I1(t3[28]),
        .I2(\cond_cycle_acc_reg_n_0_[28] ),
        .O(t_total0__0_carry__6_i_2_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry__6_i_3
       (.I0(t0[27]),
        .I1(t3[27]),
        .I2(\cond_cycle_acc_reg_n_0_[27] ),
        .O(t_total0__0_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h1EE1E11E78878778)) 
    t_total0__0_carry__6_i_4
       (.I0(t3[30]),
        .I1(t0[30]),
        .I2(\cond_cycle_acc_reg_n_0_[31] ),
        .I3(t0[31]),
        .I4(t3[31]),
        .I5(\cond_cycle_acc_reg_n_0_[30] ),
        .O(t_total0__0_carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__6_i_5
       (.I0(t_total0__0_carry__6_i_1_n_0),
        .I1(\cond_cycle_acc_reg_n_0_[30] ),
        .I2(t0[30]),
        .I3(t3[30]),
        .O(t_total0__0_carry__6_i_5_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__6_i_6
       (.I0(t0[29]),
        .I1(t3[29]),
        .I2(\cond_cycle_acc_reg_n_0_[29] ),
        .I3(t_total0__0_carry__6_i_2_n_0),
        .O(t_total0__0_carry__6_i_6_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry__6_i_7
       (.I0(t0[28]),
        .I1(t3[28]),
        .I2(\cond_cycle_acc_reg_n_0_[28] ),
        .I3(t_total0__0_carry__6_i_3_n_0),
        .O(t_total0__0_carry__6_i_7_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry_i_1
       (.I0(t0[2]),
        .I1(t3[2]),
        .I2(\cond_cycle_acc_reg_n_0_[2] ),
        .O(t_total0__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry_i_2
       (.I0(t0[1]),
        .I1(t3[1]),
        .I2(\cond_cycle_acc_reg_n_0_[1] ),
        .O(t_total0__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__0_carry_i_3
       (.I0(t0[0]),
        .I1(t3[0]),
        .I2(\cond_cycle_acc_reg_n_0_[0] ),
        .O(t_total0__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry_i_4
       (.I0(t0[3]),
        .I1(t3[3]),
        .I2(\cond_cycle_acc_reg_n_0_[3] ),
        .I3(t_total0__0_carry_i_1_n_0),
        .O(t_total0__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry_i_5
       (.I0(t0[2]),
        .I1(t3[2]),
        .I2(\cond_cycle_acc_reg_n_0_[2] ),
        .I3(t_total0__0_carry_i_2_n_0),
        .O(t_total0__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    t_total0__0_carry_i_6
       (.I0(t0[1]),
        .I1(t3[1]),
        .I2(\cond_cycle_acc_reg_n_0_[1] ),
        .I3(t_total0__0_carry_i_3_n_0),
        .O(t_total0__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    t_total0__0_carry_i_7
       (.I0(t0[0]),
        .I1(t3[0]),
        .I2(\cond_cycle_acc_reg_n_0_[0] ),
        .O(t_total0__0_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__94_carry
       (.CI(1'b0),
        .CO({t_total0__94_carry_n_0,t_total0__94_carry_n_1,t_total0__94_carry_n_2,t_total0__94_carry_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__94_carry_i_1_n_0,t_total0__94_carry_i_2_n_0,t_total0__94_carry_i_3_n_0,1'b0}),
        .O(in18[3:0]),
        .S({t_total0__94_carry_i_4_n_0,t_total0__94_carry_i_5_n_0,t_total0__94_carry_i_6_n_0,t_total0__94_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__94_carry__0
       (.CI(t_total0__94_carry_n_0),
        .CO({t_total0__94_carry__0_n_0,t_total0__94_carry__0_n_1,t_total0__94_carry__0_n_2,t_total0__94_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__94_carry__0_i_1_n_0,t_total0__94_carry__0_i_2_n_0,t_total0__94_carry__0_i_3_n_0,t_total0__94_carry__0_i_4_n_0}),
        .O(in18[7:4]),
        .S({t_total0__94_carry__0_i_5_n_0,t_total0__94_carry__0_i_6_n_0,t_total0__94_carry__0_i_7_n_0,t_total0__94_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__0_i_1
       (.I0(t2[6]),
        .I1(t_total0__0_carry__0_n_5),
        .I2(t1[6]),
        .O(t_total0__94_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__0_i_2
       (.I0(t2[5]),
        .I1(t_total0__0_carry__0_n_6),
        .I2(t1[5]),
        .O(t_total0__94_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__0_i_3
       (.I0(t2[4]),
        .I1(t_total0__0_carry__0_n_7),
        .I2(t1[4]),
        .O(t_total0__94_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__0_i_4
       (.I0(t2[3]),
        .I1(t_total0__0_carry_n_4),
        .I2(t1[3]),
        .O(t_total0__94_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__0_i_5
       (.I0(t1[6]),
        .I1(t_total0__0_carry__0_n_5),
        .I2(t2[6]),
        .I3(t_total0__0_carry__0_n_4),
        .I4(t2[7]),
        .I5(t1[7]),
        .O(t_total0__94_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__0_i_6
       (.I0(t1[5]),
        .I1(t_total0__0_carry__0_n_6),
        .I2(t2[5]),
        .I3(t_total0__0_carry__0_n_5),
        .I4(t2[6]),
        .I5(t1[6]),
        .O(t_total0__94_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__0_i_7
       (.I0(t1[4]),
        .I1(t_total0__0_carry__0_n_7),
        .I2(t2[4]),
        .I3(t_total0__0_carry__0_n_6),
        .I4(t2[5]),
        .I5(t1[5]),
        .O(t_total0__94_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__0_i_8
       (.I0(t1[3]),
        .I1(t_total0__0_carry_n_4),
        .I2(t2[3]),
        .I3(t_total0__0_carry__0_n_7),
        .I4(t2[4]),
        .I5(t1[4]),
        .O(t_total0__94_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__94_carry__1
       (.CI(t_total0__94_carry__0_n_0),
        .CO({t_total0__94_carry__1_n_0,t_total0__94_carry__1_n_1,t_total0__94_carry__1_n_2,t_total0__94_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__94_carry__1_i_1_n_0,t_total0__94_carry__1_i_2_n_0,t_total0__94_carry__1_i_3_n_0,t_total0__94_carry__1_i_4_n_0}),
        .O(in18[11:8]),
        .S({t_total0__94_carry__1_i_5_n_0,t_total0__94_carry__1_i_6_n_0,t_total0__94_carry__1_i_7_n_0,t_total0__94_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__1_i_1
       (.I0(t2[10]),
        .I1(t_total0__0_carry__1_n_5),
        .I2(t1[10]),
        .O(t_total0__94_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__1_i_2
       (.I0(t2[9]),
        .I1(t_total0__0_carry__1_n_6),
        .I2(t1[9]),
        .O(t_total0__94_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__1_i_3
       (.I0(t2[8]),
        .I1(t_total0__0_carry__1_n_7),
        .I2(t1[8]),
        .O(t_total0__94_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__1_i_4
       (.I0(t2[7]),
        .I1(t_total0__0_carry__0_n_4),
        .I2(t1[7]),
        .O(t_total0__94_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__1_i_5
       (.I0(t1[10]),
        .I1(t_total0__0_carry__1_n_5),
        .I2(t2[10]),
        .I3(t_total0__0_carry__1_n_4),
        .I4(t2[11]),
        .I5(t1[11]),
        .O(t_total0__94_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__1_i_6
       (.I0(t1[9]),
        .I1(t_total0__0_carry__1_n_6),
        .I2(t2[9]),
        .I3(t_total0__0_carry__1_n_5),
        .I4(t2[10]),
        .I5(t1[10]),
        .O(t_total0__94_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__1_i_7
       (.I0(t1[8]),
        .I1(t_total0__0_carry__1_n_7),
        .I2(t2[8]),
        .I3(t_total0__0_carry__1_n_6),
        .I4(t2[9]),
        .I5(t1[9]),
        .O(t_total0__94_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__1_i_8
       (.I0(t1[7]),
        .I1(t_total0__0_carry__0_n_4),
        .I2(t2[7]),
        .I3(t_total0__0_carry__1_n_7),
        .I4(t2[8]),
        .I5(t1[8]),
        .O(t_total0__94_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__94_carry__2
       (.CI(t_total0__94_carry__1_n_0),
        .CO({t_total0__94_carry__2_n_0,t_total0__94_carry__2_n_1,t_total0__94_carry__2_n_2,t_total0__94_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__94_carry__2_i_1_n_0,t_total0__94_carry__2_i_2_n_0,t_total0__94_carry__2_i_3_n_0,t_total0__94_carry__2_i_4_n_0}),
        .O(in18[15:12]),
        .S({t_total0__94_carry__2_i_5_n_0,t_total0__94_carry__2_i_6_n_0,t_total0__94_carry__2_i_7_n_0,t_total0__94_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__2_i_1
       (.I0(t2[14]),
        .I1(t_total0__0_carry__2_n_5),
        .I2(t1[14]),
        .O(t_total0__94_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__2_i_2
       (.I0(t2[13]),
        .I1(t_total0__0_carry__2_n_6),
        .I2(t1[13]),
        .O(t_total0__94_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__2_i_3
       (.I0(t2[12]),
        .I1(t_total0__0_carry__2_n_7),
        .I2(t1[12]),
        .O(t_total0__94_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__2_i_4
       (.I0(t2[11]),
        .I1(t_total0__0_carry__1_n_4),
        .I2(t1[11]),
        .O(t_total0__94_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__2_i_5
       (.I0(t1[14]),
        .I1(t_total0__0_carry__2_n_5),
        .I2(t2[14]),
        .I3(t_total0__0_carry__2_n_4),
        .I4(t2[15]),
        .I5(t1[15]),
        .O(t_total0__94_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__2_i_6
       (.I0(t1[13]),
        .I1(t_total0__0_carry__2_n_6),
        .I2(t2[13]),
        .I3(t_total0__0_carry__2_n_5),
        .I4(t2[14]),
        .I5(t1[14]),
        .O(t_total0__94_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__2_i_7
       (.I0(t1[12]),
        .I1(t_total0__0_carry__2_n_7),
        .I2(t2[12]),
        .I3(t_total0__0_carry__2_n_6),
        .I4(t2[13]),
        .I5(t1[13]),
        .O(t_total0__94_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__2_i_8
       (.I0(t1[11]),
        .I1(t_total0__0_carry__1_n_4),
        .I2(t2[11]),
        .I3(t_total0__0_carry__2_n_7),
        .I4(t2[12]),
        .I5(t1[12]),
        .O(t_total0__94_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__94_carry__3
       (.CI(t_total0__94_carry__2_n_0),
        .CO({t_total0__94_carry__3_n_0,t_total0__94_carry__3_n_1,t_total0__94_carry__3_n_2,t_total0__94_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__94_carry__3_i_1_n_0,t_total0__94_carry__3_i_2_n_0,t_total0__94_carry__3_i_3_n_0,t_total0__94_carry__3_i_4_n_0}),
        .O(in18[19:16]),
        .S({t_total0__94_carry__3_i_5_n_0,t_total0__94_carry__3_i_6_n_0,t_total0__94_carry__3_i_7_n_0,t_total0__94_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__3_i_1
       (.I0(t2[18]),
        .I1(t_total0__0_carry__3_n_5),
        .I2(t1[18]),
        .O(t_total0__94_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__3_i_2
       (.I0(t2[17]),
        .I1(t_total0__0_carry__3_n_6),
        .I2(t1[17]),
        .O(t_total0__94_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__3_i_3
       (.I0(t2[16]),
        .I1(t_total0__0_carry__3_n_7),
        .I2(t1[16]),
        .O(t_total0__94_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__3_i_4
       (.I0(t2[15]),
        .I1(t_total0__0_carry__2_n_4),
        .I2(t1[15]),
        .O(t_total0__94_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__3_i_5
       (.I0(t1[18]),
        .I1(t_total0__0_carry__3_n_5),
        .I2(t2[18]),
        .I3(t_total0__0_carry__3_n_4),
        .I4(t2[19]),
        .I5(t1[19]),
        .O(t_total0__94_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__3_i_6
       (.I0(t1[17]),
        .I1(t_total0__0_carry__3_n_6),
        .I2(t2[17]),
        .I3(t_total0__0_carry__3_n_5),
        .I4(t2[18]),
        .I5(t1[18]),
        .O(t_total0__94_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__3_i_7
       (.I0(t1[16]),
        .I1(t_total0__0_carry__3_n_7),
        .I2(t2[16]),
        .I3(t_total0__0_carry__3_n_6),
        .I4(t2[17]),
        .I5(t1[17]),
        .O(t_total0__94_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__3_i_8
       (.I0(t1[15]),
        .I1(t_total0__0_carry__2_n_4),
        .I2(t2[15]),
        .I3(t_total0__0_carry__3_n_7),
        .I4(t2[16]),
        .I5(t1[16]),
        .O(t_total0__94_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__94_carry__4
       (.CI(t_total0__94_carry__3_n_0),
        .CO({t_total0__94_carry__4_n_0,t_total0__94_carry__4_n_1,t_total0__94_carry__4_n_2,t_total0__94_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__94_carry__4_i_1_n_0,t_total0__94_carry__4_i_2_n_0,t_total0__94_carry__4_i_3_n_0,t_total0__94_carry__4_i_4_n_0}),
        .O(in18[23:20]),
        .S({t_total0__94_carry__4_i_5_n_0,t_total0__94_carry__4_i_6_n_0,t_total0__94_carry__4_i_7_n_0,t_total0__94_carry__4_i_8_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__4_i_1
       (.I0(t2[22]),
        .I1(t_total0__0_carry__4_n_5),
        .I2(t1[22]),
        .O(t_total0__94_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__4_i_2
       (.I0(t2[21]),
        .I1(t_total0__0_carry__4_n_6),
        .I2(t1[21]),
        .O(t_total0__94_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__4_i_3
       (.I0(t2[20]),
        .I1(t_total0__0_carry__4_n_7),
        .I2(t1[20]),
        .O(t_total0__94_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__4_i_4
       (.I0(t2[19]),
        .I1(t_total0__0_carry__3_n_4),
        .I2(t1[19]),
        .O(t_total0__94_carry__4_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__4_i_5
       (.I0(t1[22]),
        .I1(t_total0__0_carry__4_n_5),
        .I2(t2[22]),
        .I3(t_total0__0_carry__4_n_4),
        .I4(t2[23]),
        .I5(t1[23]),
        .O(t_total0__94_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__4_i_6
       (.I0(t1[21]),
        .I1(t_total0__0_carry__4_n_6),
        .I2(t2[21]),
        .I3(t_total0__0_carry__4_n_5),
        .I4(t2[22]),
        .I5(t1[22]),
        .O(t_total0__94_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__4_i_7
       (.I0(t1[20]),
        .I1(t_total0__0_carry__4_n_7),
        .I2(t2[20]),
        .I3(t_total0__0_carry__4_n_6),
        .I4(t2[21]),
        .I5(t1[21]),
        .O(t_total0__94_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__4_i_8
       (.I0(t1[19]),
        .I1(t_total0__0_carry__3_n_4),
        .I2(t2[19]),
        .I3(t_total0__0_carry__4_n_7),
        .I4(t2[20]),
        .I5(t1[20]),
        .O(t_total0__94_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__94_carry__5
       (.CI(t_total0__94_carry__4_n_0),
        .CO({t_total0__94_carry__5_n_0,t_total0__94_carry__5_n_1,t_total0__94_carry__5_n_2,t_total0__94_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({t_total0__94_carry__5_i_1_n_0,t_total0__94_carry__5_i_2_n_0,t_total0__94_carry__5_i_3_n_0,t_total0__94_carry__5_i_4_n_0}),
        .O(in18[27:24]),
        .S({t_total0__94_carry__5_i_5_n_0,t_total0__94_carry__5_i_6_n_0,t_total0__94_carry__5_i_7_n_0,t_total0__94_carry__5_i_8_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__5_i_1
       (.I0(t2[26]),
        .I1(t_total0__0_carry__5_n_5),
        .I2(t1[26]),
        .O(t_total0__94_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__5_i_2
       (.I0(t2[25]),
        .I1(t_total0__0_carry__5_n_6),
        .I2(t1[25]),
        .O(t_total0__94_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__5_i_3
       (.I0(t2[24]),
        .I1(t_total0__0_carry__5_n_7),
        .I2(t1[24]),
        .O(t_total0__94_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__5_i_4
       (.I0(t2[23]),
        .I1(t_total0__0_carry__4_n_4),
        .I2(t1[23]),
        .O(t_total0__94_carry__5_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__5_i_5
       (.I0(t1[26]),
        .I1(t_total0__0_carry__5_n_5),
        .I2(t2[26]),
        .I3(t_total0__0_carry__5_n_4),
        .I4(t2[27]),
        .I5(t1[27]),
        .O(t_total0__94_carry__5_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__5_i_6
       (.I0(t1[25]),
        .I1(t_total0__0_carry__5_n_6),
        .I2(t2[25]),
        .I3(t_total0__0_carry__5_n_5),
        .I4(t2[26]),
        .I5(t1[26]),
        .O(t_total0__94_carry__5_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__5_i_7
       (.I0(t1[24]),
        .I1(t_total0__0_carry__5_n_7),
        .I2(t2[24]),
        .I3(t_total0__0_carry__5_n_6),
        .I4(t2[25]),
        .I5(t1[25]),
        .O(t_total0__94_carry__5_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__5_i_8
       (.I0(t1[23]),
        .I1(t_total0__0_carry__4_n_4),
        .I2(t2[23]),
        .I3(t_total0__0_carry__5_n_7),
        .I4(t2[24]),
        .I5(t1[24]),
        .O(t_total0__94_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 t_total0__94_carry__6
       (.CI(t_total0__94_carry__5_n_0),
        .CO({NLW_t_total0__94_carry__6_CO_UNCONNECTED[3],t_total0__94_carry__6_n_1,t_total0__94_carry__6_n_2,t_total0__94_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,t_total0__94_carry__6_i_1_n_0,t_total0__94_carry__6_i_2_n_0,t_total0__94_carry__6_i_3_n_0}),
        .O(in18[31:28]),
        .S({t_total0__94_carry__6_i_4_n_0,t_total0__94_carry__6_i_5_n_0,t_total0__94_carry__6_i_6_n_0,t_total0__94_carry__6_i_7_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__6_i_1
       (.I0(t2[29]),
        .I1(t_total0__0_carry__6_n_6),
        .I2(t1[29]),
        .O(t_total0__94_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__6_i_2
       (.I0(t2[28]),
        .I1(t_total0__0_carry__6_n_7),
        .I2(t1[28]),
        .O(t_total0__94_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry__6_i_3
       (.I0(t2[27]),
        .I1(t_total0__0_carry__5_n_4),
        .I2(t1[27]),
        .O(t_total0__94_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__6_i_4
       (.I0(t_total0__0_carry__6_n_5),
        .I1(t2[30]),
        .I2(t1[30]),
        .I3(t_total0__0_carry__6_n_4),
        .I4(t2[31]),
        .I5(t1[31]),
        .O(t_total0__94_carry__6_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__6_i_5
       (.I0(t1[29]),
        .I1(t_total0__0_carry__6_n_6),
        .I2(t2[29]),
        .I3(t_total0__0_carry__6_n_5),
        .I4(t2[30]),
        .I5(t1[30]),
        .O(t_total0__94_carry__6_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__6_i_6
       (.I0(t1[28]),
        .I1(t_total0__0_carry__6_n_7),
        .I2(t2[28]),
        .I3(t_total0__0_carry__6_n_6),
        .I4(t2[29]),
        .I5(t1[29]),
        .O(t_total0__94_carry__6_i_6_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry__6_i_7
       (.I0(t1[27]),
        .I1(t_total0__0_carry__5_n_4),
        .I2(t2[27]),
        .I3(t_total0__0_carry__6_n_7),
        .I4(t2[28]),
        .I5(t1[28]),
        .O(t_total0__94_carry__6_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry_i_1
       (.I0(t2[2]),
        .I1(t_total0__0_carry_n_5),
        .I2(t1[2]),
        .O(t_total0__94_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry_i_2
       (.I0(t2[1]),
        .I1(t_total0__0_carry_n_6),
        .I2(t1[1]),
        .O(t_total0__94_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    t_total0__94_carry_i_3
       (.I0(t_total0__0_carry_n_7),
        .I1(t2[0]),
        .I2(t1[0]),
        .O(t_total0__94_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry_i_4
       (.I0(t1[2]),
        .I1(t_total0__0_carry_n_5),
        .I2(t2[2]),
        .I3(t_total0__0_carry_n_4),
        .I4(t2[3]),
        .I5(t1[3]),
        .O(t_total0__94_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry_i_5
       (.I0(t1[1]),
        .I1(t_total0__0_carry_n_6),
        .I2(t2[1]),
        .I3(t_total0__0_carry_n_5),
        .I4(t2[2]),
        .I5(t1[2]),
        .O(t_total0__94_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    t_total0__94_carry_i_6
       (.I0(t1[0]),
        .I1(t2[0]),
        .I2(t_total0__0_carry_n_7),
        .I3(t_total0__0_carry_n_6),
        .I4(t2[1]),
        .I5(t1[1]),
        .O(t_total0__94_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    t_total0__94_carry_i_7
       (.I0(t2[0]),
        .I1(t_total0__0_carry_n_7),
        .I2(t1[0]),
        .O(t_total0__94_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[0]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[0]),
        .O(t_total0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[10]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[10]),
        .O(t_total0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[11]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[11]),
        .O(t_total0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[12]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[12]),
        .O(t_total0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[13]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[13]),
        .O(t_total0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[14]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[14]),
        .O(t_total0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[15]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[15]),
        .O(t_total0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[16]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[16]),
        .O(t_total0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[17]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[17]),
        .O(t_total0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[18]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[18]),
        .O(t_total0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[19]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[19]),
        .O(t_total0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[1]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[1]),
        .O(t_total0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[20]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[20]),
        .O(t_total0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[21]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[21]),
        .O(t_total0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[22]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[22]),
        .O(t_total0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[23]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[23]),
        .O(t_total0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[24]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[24]),
        .O(t_total0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[25]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[25]),
        .O(t_total0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[26]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[26]),
        .O(t_total0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[27]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[27]),
        .O(t_total0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[28]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[28]),
        .O(t_total0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[29]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[29]),
        .O(t_total0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[2]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[2]),
        .O(t_total0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[30]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[30]),
        .O(t_total0_in[30]));
  LUT5 #(
    .INIT(32'hAAAAEBAA)) 
    \t_total[31]_i_1 
       (.I0(winner_onehot_latched),
        .I1(st[1]),
        .I2(st[2]),
        .I3(start),
        .I4(st[0]),
        .O(\t_total[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[31]_i_2 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[31]),
        .O(t_total0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[3]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[3]),
        .O(t_total0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[4]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[4]),
        .O(t_total0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[5]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[5]),
        .O(t_total0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[6]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[6]),
        .O(t_total0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[7]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[7]),
        .O(t_total0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[8]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[8]),
        .O(t_total0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \t_total[9]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(in18[9]),
        .O(t_total0_in[9]));
  FDRE \t_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[0]),
        .Q(t_total[0]),
        .R(rst));
  FDRE \t_total_reg[10] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[10]),
        .Q(t_total[10]),
        .R(rst));
  FDRE \t_total_reg[11] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[11]),
        .Q(t_total[11]),
        .R(rst));
  FDRE \t_total_reg[12] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[12]),
        .Q(t_total[12]),
        .R(rst));
  FDRE \t_total_reg[13] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[13]),
        .Q(t_total[13]),
        .R(rst));
  FDRE \t_total_reg[14] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[14]),
        .Q(t_total[14]),
        .R(rst));
  FDRE \t_total_reg[15] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[15]),
        .Q(t_total[15]),
        .R(rst));
  FDRE \t_total_reg[16] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[16]),
        .Q(t_total[16]),
        .R(rst));
  FDRE \t_total_reg[17] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[17]),
        .Q(t_total[17]),
        .R(rst));
  FDRE \t_total_reg[18] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[18]),
        .Q(t_total[18]),
        .R(rst));
  FDRE \t_total_reg[19] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[19]),
        .Q(t_total[19]),
        .R(rst));
  FDRE \t_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[1]),
        .Q(t_total[1]),
        .R(rst));
  FDRE \t_total_reg[20] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[20]),
        .Q(t_total[20]),
        .R(rst));
  FDRE \t_total_reg[21] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[21]),
        .Q(t_total[21]),
        .R(rst));
  FDRE \t_total_reg[22] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[22]),
        .Q(t_total[22]),
        .R(rst));
  FDRE \t_total_reg[23] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[23]),
        .Q(t_total[23]),
        .R(rst));
  FDRE \t_total_reg[24] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[24]),
        .Q(t_total[24]),
        .R(rst));
  FDRE \t_total_reg[25] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[25]),
        .Q(t_total[25]),
        .R(rst));
  FDRE \t_total_reg[26] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[26]),
        .Q(t_total[26]),
        .R(rst));
  FDRE \t_total_reg[27] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[27]),
        .Q(t_total[27]),
        .R(rst));
  FDRE \t_total_reg[28] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[28]),
        .Q(t_total[28]),
        .R(rst));
  FDRE \t_total_reg[29] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[29]),
        .Q(t_total[29]),
        .R(rst));
  FDRE \t_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[2]),
        .Q(t_total[2]),
        .R(rst));
  FDRE \t_total_reg[30] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[30]),
        .Q(t_total[30]),
        .R(rst));
  FDRE \t_total_reg[31] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[31]),
        .Q(t_total[31]),
        .R(rst));
  FDRE \t_total_reg[3] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[3]),
        .Q(t_total[3]),
        .R(rst));
  FDRE \t_total_reg[4] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[4]),
        .Q(t_total[4]),
        .R(rst));
  FDRE \t_total_reg[5] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[5]),
        .Q(t_total[5]),
        .R(rst));
  FDRE \t_total_reg[6] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[6]),
        .Q(t_total[6]),
        .R(rst));
  FDRE \t_total_reg[7] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[7]),
        .Q(t_total[7]),
        .R(rst));
  FDRE \t_total_reg[8] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[8]),
        .Q(t_total[8]),
        .R(rst));
  FDRE \t_total_reg[9] 
       (.C(s_axi_aclk),
        .CE(\t_total[31]_i_1_n_0 ),
        .D(t_total0_in[9]),
        .Q(t_total[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'hAAAAEBAA)) 
    \time_cond[0][31]_i_1 
       (.I0(\time_cond[0][31]_i_2_n_0 ),
        .I1(st[2]),
        .I2(st[1]),
        .I3(start),
        .I4(st[0]),
        .O(\time_cond[0][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \time_cond[0][31]_i_2 
       (.I0(\cond_idx_reg_n_0_[1] ),
        .I1(\cond_idx_reg_n_0_[0] ),
        .I2(\time_cond[1][31]_i_3_n_0 ),
        .O(\time_cond[0][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][0]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[0] ),
        .O(time_cond0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][10]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[10] ),
        .O(time_cond0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][11]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[11] ),
        .O(time_cond0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][12]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[12] ),
        .O(time_cond0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][13]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[13] ),
        .O(time_cond0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][14]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[14] ),
        .O(time_cond0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][15]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[15] ),
        .O(time_cond0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][16]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[16] ),
        .O(time_cond0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][17]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[17] ),
        .O(time_cond0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][18]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[18] ),
        .O(time_cond0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][19]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[19] ),
        .O(time_cond0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][1]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[1] ),
        .O(time_cond0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][20]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[20] ),
        .O(time_cond0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][21]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[21] ),
        .O(time_cond0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][22]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[22] ),
        .O(time_cond0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][23]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[23] ),
        .O(time_cond0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][24]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[24] ),
        .O(time_cond0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][25]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[25] ),
        .O(time_cond0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][26]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[26] ),
        .O(time_cond0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][27]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[27] ),
        .O(time_cond0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][28]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[28] ),
        .O(time_cond0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][29]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[29] ),
        .O(time_cond0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][2]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[2] ),
        .O(time_cond0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][30]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[30] ),
        .O(time_cond0_in[30]));
  LUT6 #(
    .INIT(64'h88888888F88F8888)) 
    \time_cond[1][31]_i_1 
       (.I0(\time_cond[1][31]_i_3_n_0 ),
        .I1(\time_cond[1][31]_i_4_n_0 ),
        .I2(st[2]),
        .I3(st[1]),
        .I4(start),
        .I5(st[0]),
        .O(\time_cond[1][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][31]_i_2 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[31] ),
        .O(time_cond0_in[31]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \time_cond[1][31]_i_3 
       (.I0(\op_idx[4]_i_3_n_0 ),
        .I1(st[1]),
        .I2(st[2]),
        .I3(st[0]),
        .I4(\cond_idx_reg_n_0_[2] ),
        .O(\time_cond[1][31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \time_cond[1][31]_i_4 
       (.I0(\cond_idx_reg_n_0_[0] ),
        .I1(\cond_idx_reg_n_0_[1] ),
        .O(\time_cond[1][31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][3]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[3] ),
        .O(time_cond0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][4]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[4] ),
        .O(time_cond0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][5]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[5] ),
        .O(time_cond0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][6]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[6] ),
        .O(time_cond0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][7]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[7] ),
        .O(time_cond0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][8]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[8] ),
        .O(time_cond0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \time_cond[1][9]_i_1 
       (.I0(st[1]),
        .I1(st[2]),
        .I2(\cond_cycle_acc_reg_n_0_[9] ),
        .O(time_cond0_in[9]));
  LUT6 #(
    .INIT(64'h88888888F88F8888)) 
    \time_cond[2][31]_i_1 
       (.I0(\time_cond[1][31]_i_3_n_0 ),
        .I1(\time_cond[2][31]_i_2_n_0 ),
        .I2(st[2]),
        .I3(st[1]),
        .I4(start),
        .I5(st[0]),
        .O(\time_cond[2][31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \time_cond[2][31]_i_2 
       (.I0(\cond_idx_reg_n_0_[1] ),
        .I1(\cond_idx_reg_n_0_[0] ),
        .O(\time_cond[2][31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEBAA)) 
    \time_cond[3][31]_i_1 
       (.I0(\time_cond[3][31]_i_2_n_0 ),
        .I1(st[2]),
        .I2(st[1]),
        .I3(start),
        .I4(st[0]),
        .O(\time_cond[3][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \time_cond[3][31]_i_2 
       (.I0(\cond_idx_reg_n_0_[1] ),
        .I1(\cond_idx_reg_n_0_[0] ),
        .I2(\time_cond[1][31]_i_3_n_0 ),
        .O(\time_cond[3][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F01F0010)) 
    \time_cond[4][31]_i_1 
       (.I0(\FSM_sequential_st[1]_i_2_n_0 ),
        .I1(\op_idx[4]_i_3_n_0 ),
        .I2(st[2]),
        .I3(st[1]),
        .I4(start),
        .I5(st[0]),
        .O(\time_cond[4][31]_i_1_n_0 ));
  FDRE \time_cond_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[0]),
        .Q(t0[0]),
        .R(rst));
  FDRE \time_cond_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[10]),
        .Q(t0[10]),
        .R(rst));
  FDRE \time_cond_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[11]),
        .Q(t0[11]),
        .R(rst));
  FDRE \time_cond_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[12]),
        .Q(t0[12]),
        .R(rst));
  FDRE \time_cond_reg[0][13] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[13]),
        .Q(t0[13]),
        .R(rst));
  FDRE \time_cond_reg[0][14] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[14]),
        .Q(t0[14]),
        .R(rst));
  FDRE \time_cond_reg[0][15] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[15]),
        .Q(t0[15]),
        .R(rst));
  FDRE \time_cond_reg[0][16] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[16]),
        .Q(t0[16]),
        .R(rst));
  FDRE \time_cond_reg[0][17] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[17]),
        .Q(t0[17]),
        .R(rst));
  FDRE \time_cond_reg[0][18] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[18]),
        .Q(t0[18]),
        .R(rst));
  FDRE \time_cond_reg[0][19] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[19]),
        .Q(t0[19]),
        .R(rst));
  FDRE \time_cond_reg[0][1] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[1]),
        .Q(t0[1]),
        .R(rst));
  FDRE \time_cond_reg[0][20] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[20]),
        .Q(t0[20]),
        .R(rst));
  FDRE \time_cond_reg[0][21] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[21]),
        .Q(t0[21]),
        .R(rst));
  FDRE \time_cond_reg[0][22] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[22]),
        .Q(t0[22]),
        .R(rst));
  FDRE \time_cond_reg[0][23] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[23]),
        .Q(t0[23]),
        .R(rst));
  FDRE \time_cond_reg[0][24] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[24]),
        .Q(t0[24]),
        .R(rst));
  FDRE \time_cond_reg[0][25] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[25]),
        .Q(t0[25]),
        .R(rst));
  FDRE \time_cond_reg[0][26] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[26]),
        .Q(t0[26]),
        .R(rst));
  FDRE \time_cond_reg[0][27] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[27]),
        .Q(t0[27]),
        .R(rst));
  FDRE \time_cond_reg[0][28] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[28]),
        .Q(t0[28]),
        .R(rst));
  FDRE \time_cond_reg[0][29] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[29]),
        .Q(t0[29]),
        .R(rst));
  FDRE \time_cond_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[2]),
        .Q(t0[2]),
        .R(rst));
  FDRE \time_cond_reg[0][30] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[30]),
        .Q(t0[30]),
        .R(rst));
  FDRE \time_cond_reg[0][31] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[31]),
        .Q(t0[31]),
        .R(rst));
  FDRE \time_cond_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[3]),
        .Q(t0[3]),
        .R(rst));
  FDRE \time_cond_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[4]),
        .Q(t0[4]),
        .R(rst));
  FDRE \time_cond_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[5]),
        .Q(t0[5]),
        .R(rst));
  FDRE \time_cond_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[6]),
        .Q(t0[6]),
        .R(rst));
  FDRE \time_cond_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[7]),
        .Q(t0[7]),
        .R(rst));
  FDRE \time_cond_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[8]),
        .Q(t0[8]),
        .R(rst));
  FDRE \time_cond_reg[0][9] 
       (.C(s_axi_aclk),
        .CE(\time_cond[0][31]_i_1_n_0 ),
        .D(time_cond0_in[9]),
        .Q(t0[9]),
        .R(rst));
  FDRE \time_cond_reg[1][0] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[0]),
        .Q(t1[0]),
        .R(rst));
  FDRE \time_cond_reg[1][10] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[10]),
        .Q(t1[10]),
        .R(rst));
  FDRE \time_cond_reg[1][11] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[11]),
        .Q(t1[11]),
        .R(rst));
  FDRE \time_cond_reg[1][12] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[12]),
        .Q(t1[12]),
        .R(rst));
  FDRE \time_cond_reg[1][13] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[13]),
        .Q(t1[13]),
        .R(rst));
  FDRE \time_cond_reg[1][14] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[14]),
        .Q(t1[14]),
        .R(rst));
  FDRE \time_cond_reg[1][15] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[15]),
        .Q(t1[15]),
        .R(rst));
  FDRE \time_cond_reg[1][16] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[16]),
        .Q(t1[16]),
        .R(rst));
  FDRE \time_cond_reg[1][17] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[17]),
        .Q(t1[17]),
        .R(rst));
  FDRE \time_cond_reg[1][18] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[18]),
        .Q(t1[18]),
        .R(rst));
  FDRE \time_cond_reg[1][19] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[19]),
        .Q(t1[19]),
        .R(rst));
  FDRE \time_cond_reg[1][1] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[1]),
        .Q(t1[1]),
        .R(rst));
  FDRE \time_cond_reg[1][20] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[20]),
        .Q(t1[20]),
        .R(rst));
  FDRE \time_cond_reg[1][21] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[21]),
        .Q(t1[21]),
        .R(rst));
  FDRE \time_cond_reg[1][22] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[22]),
        .Q(t1[22]),
        .R(rst));
  FDRE \time_cond_reg[1][23] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[23]),
        .Q(t1[23]),
        .R(rst));
  FDRE \time_cond_reg[1][24] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[24]),
        .Q(t1[24]),
        .R(rst));
  FDRE \time_cond_reg[1][25] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[25]),
        .Q(t1[25]),
        .R(rst));
  FDRE \time_cond_reg[1][26] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[26]),
        .Q(t1[26]),
        .R(rst));
  FDRE \time_cond_reg[1][27] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[27]),
        .Q(t1[27]),
        .R(rst));
  FDRE \time_cond_reg[1][28] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[28]),
        .Q(t1[28]),
        .R(rst));
  FDRE \time_cond_reg[1][29] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[29]),
        .Q(t1[29]),
        .R(rst));
  FDRE \time_cond_reg[1][2] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[2]),
        .Q(t1[2]),
        .R(rst));
  FDRE \time_cond_reg[1][30] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[30]),
        .Q(t1[30]),
        .R(rst));
  FDRE \time_cond_reg[1][31] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[31]),
        .Q(t1[31]),
        .R(rst));
  FDRE \time_cond_reg[1][3] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[3]),
        .Q(t1[3]),
        .R(rst));
  FDRE \time_cond_reg[1][4] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[4]),
        .Q(t1[4]),
        .R(rst));
  FDRE \time_cond_reg[1][5] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[5]),
        .Q(t1[5]),
        .R(rst));
  FDRE \time_cond_reg[1][6] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[6]),
        .Q(t1[6]),
        .R(rst));
  FDRE \time_cond_reg[1][7] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[7]),
        .Q(t1[7]),
        .R(rst));
  FDRE \time_cond_reg[1][8] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[8]),
        .Q(t1[8]),
        .R(rst));
  FDRE \time_cond_reg[1][9] 
       (.C(s_axi_aclk),
        .CE(\time_cond[1][31]_i_1_n_0 ),
        .D(time_cond0_in[9]),
        .Q(t1[9]),
        .R(rst));
  FDRE \time_cond_reg[2][0] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[0]),
        .Q(t2[0]),
        .R(rst));
  FDRE \time_cond_reg[2][10] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[10]),
        .Q(t2[10]),
        .R(rst));
  FDRE \time_cond_reg[2][11] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[11]),
        .Q(t2[11]),
        .R(rst));
  FDRE \time_cond_reg[2][12] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[12]),
        .Q(t2[12]),
        .R(rst));
  FDRE \time_cond_reg[2][13] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[13]),
        .Q(t2[13]),
        .R(rst));
  FDRE \time_cond_reg[2][14] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[14]),
        .Q(t2[14]),
        .R(rst));
  FDRE \time_cond_reg[2][15] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[15]),
        .Q(t2[15]),
        .R(rst));
  FDRE \time_cond_reg[2][16] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[16]),
        .Q(t2[16]),
        .R(rst));
  FDRE \time_cond_reg[2][17] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[17]),
        .Q(t2[17]),
        .R(rst));
  FDRE \time_cond_reg[2][18] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[18]),
        .Q(t2[18]),
        .R(rst));
  FDRE \time_cond_reg[2][19] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[19]),
        .Q(t2[19]),
        .R(rst));
  FDRE \time_cond_reg[2][1] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[1]),
        .Q(t2[1]),
        .R(rst));
  FDRE \time_cond_reg[2][20] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[20]),
        .Q(t2[20]),
        .R(rst));
  FDRE \time_cond_reg[2][21] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[21]),
        .Q(t2[21]),
        .R(rst));
  FDRE \time_cond_reg[2][22] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[22]),
        .Q(t2[22]),
        .R(rst));
  FDRE \time_cond_reg[2][23] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[23]),
        .Q(t2[23]),
        .R(rst));
  FDRE \time_cond_reg[2][24] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[24]),
        .Q(t2[24]),
        .R(rst));
  FDRE \time_cond_reg[2][25] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[25]),
        .Q(t2[25]),
        .R(rst));
  FDRE \time_cond_reg[2][26] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[26]),
        .Q(t2[26]),
        .R(rst));
  FDRE \time_cond_reg[2][27] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[27]),
        .Q(t2[27]),
        .R(rst));
  FDRE \time_cond_reg[2][28] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[28]),
        .Q(t2[28]),
        .R(rst));
  FDRE \time_cond_reg[2][29] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[29]),
        .Q(t2[29]),
        .R(rst));
  FDRE \time_cond_reg[2][2] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[2]),
        .Q(t2[2]),
        .R(rst));
  FDRE \time_cond_reg[2][30] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[30]),
        .Q(t2[30]),
        .R(rst));
  FDRE \time_cond_reg[2][31] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[31]),
        .Q(t2[31]),
        .R(rst));
  FDRE \time_cond_reg[2][3] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[3]),
        .Q(t2[3]),
        .R(rst));
  FDRE \time_cond_reg[2][4] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[4]),
        .Q(t2[4]),
        .R(rst));
  FDRE \time_cond_reg[2][5] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[5]),
        .Q(t2[5]),
        .R(rst));
  FDRE \time_cond_reg[2][6] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[6]),
        .Q(t2[6]),
        .R(rst));
  FDRE \time_cond_reg[2][7] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[7]),
        .Q(t2[7]),
        .R(rst));
  FDRE \time_cond_reg[2][8] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[8]),
        .Q(t2[8]),
        .R(rst));
  FDRE \time_cond_reg[2][9] 
       (.C(s_axi_aclk),
        .CE(\time_cond[2][31]_i_1_n_0 ),
        .D(time_cond0_in[9]),
        .Q(t2[9]),
        .R(rst));
  FDRE \time_cond_reg[3][0] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[0]),
        .Q(t3[0]),
        .R(rst));
  FDRE \time_cond_reg[3][10] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[10]),
        .Q(t3[10]),
        .R(rst));
  FDRE \time_cond_reg[3][11] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[11]),
        .Q(t3[11]),
        .R(rst));
  FDRE \time_cond_reg[3][12] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[12]),
        .Q(t3[12]),
        .R(rst));
  FDRE \time_cond_reg[3][13] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[13]),
        .Q(t3[13]),
        .R(rst));
  FDRE \time_cond_reg[3][14] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[14]),
        .Q(t3[14]),
        .R(rst));
  FDRE \time_cond_reg[3][15] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[15]),
        .Q(t3[15]),
        .R(rst));
  FDRE \time_cond_reg[3][16] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[16]),
        .Q(t3[16]),
        .R(rst));
  FDRE \time_cond_reg[3][17] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[17]),
        .Q(t3[17]),
        .R(rst));
  FDRE \time_cond_reg[3][18] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[18]),
        .Q(t3[18]),
        .R(rst));
  FDRE \time_cond_reg[3][19] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[19]),
        .Q(t3[19]),
        .R(rst));
  FDRE \time_cond_reg[3][1] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[1]),
        .Q(t3[1]),
        .R(rst));
  FDRE \time_cond_reg[3][20] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[20]),
        .Q(t3[20]),
        .R(rst));
  FDRE \time_cond_reg[3][21] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[21]),
        .Q(t3[21]),
        .R(rst));
  FDRE \time_cond_reg[3][22] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[22]),
        .Q(t3[22]),
        .R(rst));
  FDRE \time_cond_reg[3][23] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[23]),
        .Q(t3[23]),
        .R(rst));
  FDRE \time_cond_reg[3][24] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[24]),
        .Q(t3[24]),
        .R(rst));
  FDRE \time_cond_reg[3][25] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[25]),
        .Q(t3[25]),
        .R(rst));
  FDRE \time_cond_reg[3][26] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[26]),
        .Q(t3[26]),
        .R(rst));
  FDRE \time_cond_reg[3][27] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[27]),
        .Q(t3[27]),
        .R(rst));
  FDRE \time_cond_reg[3][28] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[28]),
        .Q(t3[28]),
        .R(rst));
  FDRE \time_cond_reg[3][29] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[29]),
        .Q(t3[29]),
        .R(rst));
  FDRE \time_cond_reg[3][2] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[2]),
        .Q(t3[2]),
        .R(rst));
  FDRE \time_cond_reg[3][30] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[30]),
        .Q(t3[30]),
        .R(rst));
  FDRE \time_cond_reg[3][31] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[31]),
        .Q(t3[31]),
        .R(rst));
  FDRE \time_cond_reg[3][3] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[3]),
        .Q(t3[3]),
        .R(rst));
  FDRE \time_cond_reg[3][4] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[4]),
        .Q(t3[4]),
        .R(rst));
  FDRE \time_cond_reg[3][5] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[5]),
        .Q(t3[5]),
        .R(rst));
  FDRE \time_cond_reg[3][6] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[6]),
        .Q(t3[6]),
        .R(rst));
  FDRE \time_cond_reg[3][7] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[7]),
        .Q(t3[7]),
        .R(rst));
  FDRE \time_cond_reg[3][8] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[8]),
        .Q(t3[8]),
        .R(rst));
  FDRE \time_cond_reg[3][9] 
       (.C(s_axi_aclk),
        .CE(\time_cond[3][31]_i_1_n_0 ),
        .D(time_cond0_in[9]),
        .Q(t3[9]),
        .R(rst));
  FDRE \time_cond_reg[4][0] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[0]),
        .Q(t4[0]),
        .R(rst));
  FDRE \time_cond_reg[4][10] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[10]),
        .Q(t4[10]),
        .R(rst));
  FDRE \time_cond_reg[4][11] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[11]),
        .Q(t4[11]),
        .R(rst));
  FDRE \time_cond_reg[4][12] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[12]),
        .Q(t4[12]),
        .R(rst));
  FDRE \time_cond_reg[4][13] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[13]),
        .Q(t4[13]),
        .R(rst));
  FDRE \time_cond_reg[4][14] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[14]),
        .Q(t4[14]),
        .R(rst));
  FDRE \time_cond_reg[4][15] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[15]),
        .Q(t4[15]),
        .R(rst));
  FDRE \time_cond_reg[4][16] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[16]),
        .Q(t4[16]),
        .R(rst));
  FDRE \time_cond_reg[4][17] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[17]),
        .Q(t4[17]),
        .R(rst));
  FDRE \time_cond_reg[4][18] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[18]),
        .Q(t4[18]),
        .R(rst));
  FDRE \time_cond_reg[4][19] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[19]),
        .Q(t4[19]),
        .R(rst));
  FDRE \time_cond_reg[4][1] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[1]),
        .Q(t4[1]),
        .R(rst));
  FDRE \time_cond_reg[4][20] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[20]),
        .Q(t4[20]),
        .R(rst));
  FDRE \time_cond_reg[4][21] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[21]),
        .Q(t4[21]),
        .R(rst));
  FDRE \time_cond_reg[4][22] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[22]),
        .Q(t4[22]),
        .R(rst));
  FDRE \time_cond_reg[4][23] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[23]),
        .Q(t4[23]),
        .R(rst));
  FDRE \time_cond_reg[4][24] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[24]),
        .Q(t4[24]),
        .R(rst));
  FDRE \time_cond_reg[4][25] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[25]),
        .Q(t4[25]),
        .R(rst));
  FDRE \time_cond_reg[4][26] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[26]),
        .Q(t4[26]),
        .R(rst));
  FDRE \time_cond_reg[4][27] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[27]),
        .Q(t4[27]),
        .R(rst));
  FDRE \time_cond_reg[4][28] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[28]),
        .Q(t4[28]),
        .R(rst));
  FDRE \time_cond_reg[4][29] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[29]),
        .Q(t4[29]),
        .R(rst));
  FDRE \time_cond_reg[4][2] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[2]),
        .Q(t4[2]),
        .R(rst));
  FDRE \time_cond_reg[4][30] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[30]),
        .Q(t4[30]),
        .R(rst));
  FDRE \time_cond_reg[4][31] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[31]),
        .Q(t4[31]),
        .R(rst));
  FDRE \time_cond_reg[4][3] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[3]),
        .Q(t4[3]),
        .R(rst));
  FDRE \time_cond_reg[4][4] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[4]),
        .Q(t4[4]),
        .R(rst));
  FDRE \time_cond_reg[4][5] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[5]),
        .Q(t4[5]),
        .R(rst));
  FDRE \time_cond_reg[4][6] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[6]),
        .Q(t4[6]),
        .R(rst));
  FDRE \time_cond_reg[4][7] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[7]),
        .Q(t4[7]),
        .R(rst));
  FDRE \time_cond_reg[4][8] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[8]),
        .Q(t4[8]),
        .R(rst));
  FDRE \time_cond_reg[4][9] 
       (.C(s_axi_aclk),
        .CE(\time_cond[4][31]_i_1_n_0 ),
        .D(time_cond0_in[9]),
        .Q(t4[9]),
        .R(rst));
  router210_bd_bench_axi_0_0_router_extended u_router
       (.E(E),
        .\FSM_sequential_st_reg[1] (\FSM_sequential_st[1]_i_2_n_0 ),
        .\FSM_sequential_st_reg[2] (u_router_n_1),
        .\FSM_sequential_st_reg[2]_0 (u_router_n_2),
        .\FSM_sequential_st_reg[2]_1 (u_router_n_3),
        .Q(r_opcode),
        .por_active_reg(rst),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .st(st),
        .st__0(st__0),
        .\st_reg[0]_0 (r_start_reg_n_0),
        .start(start),
        .start_b2_reg_0({\r_cond_reg_n_0_[2] ,\r_cond_reg_n_0_[1] ,\r_cond_reg_n_0_[0] }));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0A0A0F0C)) 
    \winner_code[0]_i_1 
       (.I0(p_0_out_carry__2_n_0),
        .I1(p_1_out_carry__2_n_0),
        .I2(\MINSEL.idx1_carry__2_n_0 ),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .O(\MINSEL.idx [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00004744)) 
    \winner_code[1]_i_1 
       (.I0(p_0_out_carry__2_n_0),
        .I1(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I2(p_1_out_carry__2_n_0),
        .I3(\MINSEL.minv1_carry__2_n_0 ),
        .I4(\MINSEL.idx1_carry__2_n_0 ),
        .O(\MINSEL.idx [1]));
  FDRE \winner_code_reg[0] 
       (.C(s_axi_aclk),
        .CE(winner_onehot_latched),
        .D(\MINSEL.idx [0]),
        .Q(winner_code[0]),
        .R(rst));
  FDRE \winner_code_reg[1] 
       (.C(s_axi_aclk),
        .CE(winner_onehot_latched),
        .D(\MINSEL.idx [1]),
        .Q(winner_code[1]),
        .R(rst));
  LUT1 #(
    .INIT(2'h2)) 
    \winner_onehot_latched[0]_i_1 
       (.I0(\MINSEL.idx1_carry__2_n_0 ),
        .O(\winner_onehot_latched[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h3210)) 
    \winner_onehot_latched[1]_i_1 
       (.I0(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I1(\MINSEL.idx1_carry__2_n_0 ),
        .I2(p_1_out_carry__2_n_0),
        .I3(p_0_out_carry__2_n_0),
        .O(\winner_onehot_latched[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \winner_onehot_latched[2]_i_1 
       (.I0(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I1(\MINSEL.idx1_carry__2_n_0 ),
        .I2(p_0_out_carry__2_n_0),
        .O(\winner_onehot_latched[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \winner_onehot_latched[3]_i_1 
       (.I0(st[0]),
        .I1(st[2]),
        .I2(st[1]),
        .I3(\cond_idx_reg_n_0_[1] ),
        .I4(\cond_idx_reg_n_0_[0] ),
        .I5(\cond_idx_reg_n_0_[2] ),
        .O(winner_onehot_latched));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \winner_onehot_latched[3]_i_2 
       (.I0(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .I1(\MINSEL.minv1_carry__2_n_0 ),
        .I2(\MINSEL.idx1_carry__2_n_0 ),
        .I3(p_1_out_carry__2_n_0),
        .O(\winner_onehot_latched[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \winner_onehot_latched[4]_i_1 
       (.I0(\MINSEL.minv1_carry__2_n_0 ),
        .I1(\MINSEL.idx1_carry__2_n_0 ),
        .I2(p_1_out_carry__2_n_0),
        .I3(\MINSEL.minv1_inferred__0/i__carry__2_n_0 ),
        .O(\MINSEL.idx [2]));
  FDRE \winner_onehot_latched_reg[0] 
       (.C(s_axi_aclk),
        .CE(winner_onehot_latched),
        .D(\winner_onehot_latched[0]_i_1_n_0 ),
        .Q(\winner_onehot_latched_reg_n_0_[0] ),
        .R(rst));
  FDRE \winner_onehot_latched_reg[1] 
       (.C(s_axi_aclk),
        .CE(winner_onehot_latched),
        .D(\winner_onehot_latched[1]_i_1_n_0 ),
        .Q(\winner_onehot_latched_reg_n_0_[1] ),
        .R(rst));
  FDRE \winner_onehot_latched_reg[2] 
       (.C(s_axi_aclk),
        .CE(winner_onehot_latched),
        .D(\winner_onehot_latched[2]_i_1_n_0 ),
        .Q(\winner_onehot_latched_reg_n_0_[2] ),
        .R(rst));
  FDRE \winner_onehot_latched_reg[3] 
       (.C(s_axi_aclk),
        .CE(winner_onehot_latched),
        .D(\winner_onehot_latched[3]_i_2_n_0 ),
        .Q(\winner_onehot_latched_reg_n_0_[3] ),
        .R(rst));
  FDRE \winner_onehot_latched_reg[4] 
       (.C(s_axi_aclk),
        .CE(winner_onehot_latched),
        .D(\MINSEL.idx [2]),
        .Q(\winner_onehot_latched_reg_n_0_[4] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h51FF555000AA0000)) 
    winner_valid_i_1
       (.I0(winner_onehot_latched),
        .I1(start),
        .I2(st[0]),
        .I3(st[1]),
        .I4(st[2]),
        .I5(bench_done),
        .O(winner_valid_i_1_n_0));
  FDRE winner_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(winner_valid_i_1_n_0),
        .Q(bench_done),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "router_bench_axi_router210" *) 
module router210_bd_bench_axi_0_0_router_bench_axi_router210
   (s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    s_axi_rdata,
    s_axi_bvalid_reg_0,
    led,
    s_axi_rvalid,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_bready,
    s_axi_rready);
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output s_axi_bvalid_reg_0;
  output [3:0]led;
  output s_axi_rvalid;
  input s_axi_aclk;
  input [3:0]s_axi_awaddr;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input [1:0]s_axi_wdata;
  input [3:0]s_axi_araddr;
  input s_axi_arvalid;
  input s_axi_bready;
  input s_axi_rready;

  wire [1:0]data0;
  wire [3:0]led;
  wire [7:0]p_0_in;
  wire por_active;
  wire por_active_i_1_n_0;
  wire \por_cnt[7]_i_2_n_0 ;
  wire [7:0]por_cnt_reg;
  wire \pwrup_cnt[0]_i_1_n_0 ;
  wire \pwrup_cnt[0]_i_4_n_0 ;
  wire [15:0]pwrup_cnt_reg;
  wire \pwrup_cnt_reg[0]_i_2_n_0 ;
  wire \pwrup_cnt_reg[0]_i_2_n_1 ;
  wire \pwrup_cnt_reg[0]_i_2_n_2 ;
  wire \pwrup_cnt_reg[0]_i_2_n_3 ;
  wire \pwrup_cnt_reg[0]_i_2_n_4 ;
  wire \pwrup_cnt_reg[0]_i_2_n_5 ;
  wire \pwrup_cnt_reg[0]_i_2_n_6 ;
  wire \pwrup_cnt_reg[0]_i_2_n_7 ;
  wire \pwrup_cnt_reg[12]_i_1_n_1 ;
  wire \pwrup_cnt_reg[12]_i_1_n_2 ;
  wire \pwrup_cnt_reg[12]_i_1_n_3 ;
  wire \pwrup_cnt_reg[12]_i_1_n_4 ;
  wire \pwrup_cnt_reg[12]_i_1_n_5 ;
  wire \pwrup_cnt_reg[12]_i_1_n_6 ;
  wire \pwrup_cnt_reg[12]_i_1_n_7 ;
  wire \pwrup_cnt_reg[4]_i_1_n_0 ;
  wire \pwrup_cnt_reg[4]_i_1_n_1 ;
  wire \pwrup_cnt_reg[4]_i_1_n_2 ;
  wire \pwrup_cnt_reg[4]_i_1_n_3 ;
  wire \pwrup_cnt_reg[4]_i_1_n_4 ;
  wire \pwrup_cnt_reg[4]_i_1_n_5 ;
  wire \pwrup_cnt_reg[4]_i_1_n_6 ;
  wire \pwrup_cnt_reg[4]_i_1_n_7 ;
  wire \pwrup_cnt_reg[8]_i_1_n_0 ;
  wire \pwrup_cnt_reg[8]_i_1_n_1 ;
  wire \pwrup_cnt_reg[8]_i_1_n_2 ;
  wire \pwrup_cnt_reg[8]_i_1_n_3 ;
  wire \pwrup_cnt_reg[8]_i_1_n_4 ;
  wire \pwrup_cnt_reg[8]_i_1_n_5 ;
  wire \pwrup_cnt_reg[8]_i_1_n_6 ;
  wire \pwrup_cnt_reg[8]_i_1_n_7 ;
  wire rd_hs;
  wire rst;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arready0;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_1_n_0;
  wire s_axi_bvalid_reg_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[31]_i_4_n_0 ;
  wire \s_axi_rdata[31]_i_5_n_0 ;
  wire \s_axi_rdata[31]_i_7_n_0 ;
  wire \s_axi_rdata[31]_i_8_n_0 ;
  wire \s_axi_rdata[3]_i_5_n_0 ;
  wire \s_axi_rdata[3]_i_6_n_0 ;
  wire \s_axi_rdata[4]_i_3_n_0 ;
  wire [31:0]s_axi_rdata_0;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire [1:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready0;
  wire s_axi_wvalid;
  wire soft_clear1_out;
  wire soft_clear_reg_n_0;
  wire start_pulse5_out;
  wire start_pulse_i_2_n_0;
  wire start_pulse_reg_n_0;
  wire started_once_i_1_n_0;
  wire started_once_reg_n_0;
  wire u_bench_n_1;
  wire u_bench_n_2;
  wire u_bench_n_39;
  wire [5:2]wr_addr;
  wire wr_addr_valid;
  wire wr_addr_valid_i_1_n_0;
  wire [3:3]\NLW_pwrup_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  FDRE bench_done_latched_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(u_bench_n_1),
        .Q(data0[1]),
        .R(1'b0));
  FDRE bench_running_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(u_bench_n_39),
        .Q(data0[0]),
        .R(rst));
  LUT6 #(
    .INIT(64'hBFFF0000FFFF0000)) 
    por_active_i_1
       (.I0(\por_cnt[7]_i_2_n_0 ),
        .I1(por_cnt_reg[4]),
        .I2(por_cnt_reg[5]),
        .I3(por_cnt_reg[6]),
        .I4(por_active),
        .I5(por_cnt_reg[7]),
        .O(por_active_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    por_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(por_active_i_1_n_0),
        .Q(por_active),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \por_cnt[0]_i_1 
       (.I0(por_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \por_cnt[1]_i_1 
       (.I0(por_cnt_reg[0]),
        .I1(por_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \por_cnt[2]_i_1 
       (.I0(por_cnt_reg[1]),
        .I1(por_cnt_reg[0]),
        .I2(por_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \por_cnt[3]_i_1 
       (.I0(por_cnt_reg[2]),
        .I1(por_cnt_reg[0]),
        .I2(por_cnt_reg[1]),
        .I3(por_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \por_cnt[4]_i_1 
       (.I0(por_cnt_reg[3]),
        .I1(por_cnt_reg[1]),
        .I2(por_cnt_reg[0]),
        .I3(por_cnt_reg[2]),
        .I4(por_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \por_cnt[5]_i_1 
       (.I0(por_cnt_reg[2]),
        .I1(por_cnt_reg[0]),
        .I2(por_cnt_reg[1]),
        .I3(por_cnt_reg[3]),
        .I4(por_cnt_reg[4]),
        .I5(por_cnt_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \por_cnt[6]_i_1 
       (.I0(por_cnt_reg[5]),
        .I1(por_cnt_reg[4]),
        .I2(\por_cnt[7]_i_2_n_0 ),
        .I3(por_cnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \por_cnt[7]_i_1 
       (.I0(por_cnt_reg[6]),
        .I1(\por_cnt[7]_i_2_n_0 ),
        .I2(por_cnt_reg[4]),
        .I3(por_cnt_reg[5]),
        .I4(por_cnt_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \por_cnt[7]_i_2 
       (.I0(por_cnt_reg[2]),
        .I1(por_cnt_reg[0]),
        .I2(por_cnt_reg[1]),
        .I3(por_cnt_reg[3]),
        .O(\por_cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(por_active),
        .D(p_0_in[0]),
        .Q(por_cnt_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(por_active),
        .D(p_0_in[1]),
        .Q(por_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(por_active),
        .D(p_0_in[2]),
        .Q(por_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(por_active),
        .D(p_0_in[3]),
        .Q(por_cnt_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(por_active),
        .D(p_0_in[4]),
        .Q(por_cnt_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(por_active),
        .D(p_0_in[5]),
        .Q(por_cnt_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(por_active),
        .D(p_0_in[6]),
        .Q(por_cnt_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(por_active),
        .D(p_0_in[7]),
        .Q(por_cnt_reg[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \pwrup_cnt[0]_i_1 
       (.I0(u_bench_n_2),
        .I1(started_once_reg_n_0),
        .O(\pwrup_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pwrup_cnt[0]_i_4 
       (.I0(pwrup_cnt_reg[0]),
        .O(\pwrup_cnt[0]_i_4_n_0 ));
  FDRE \pwrup_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[0]_i_2_n_7 ),
        .Q(pwrup_cnt_reg[0]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwrup_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pwrup_cnt_reg[0]_i_2_n_0 ,\pwrup_cnt_reg[0]_i_2_n_1 ,\pwrup_cnt_reg[0]_i_2_n_2 ,\pwrup_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pwrup_cnt_reg[0]_i_2_n_4 ,\pwrup_cnt_reg[0]_i_2_n_5 ,\pwrup_cnt_reg[0]_i_2_n_6 ,\pwrup_cnt_reg[0]_i_2_n_7 }),
        .S({pwrup_cnt_reg[3:1],\pwrup_cnt[0]_i_4_n_0 }));
  FDRE \pwrup_cnt_reg[10] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[8]_i_1_n_5 ),
        .Q(pwrup_cnt_reg[10]),
        .R(rst));
  FDRE \pwrup_cnt_reg[11] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[8]_i_1_n_4 ),
        .Q(pwrup_cnt_reg[11]),
        .R(rst));
  FDRE \pwrup_cnt_reg[12] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[12]_i_1_n_7 ),
        .Q(pwrup_cnt_reg[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwrup_cnt_reg[12]_i_1 
       (.CI(\pwrup_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pwrup_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\pwrup_cnt_reg[12]_i_1_n_1 ,\pwrup_cnt_reg[12]_i_1_n_2 ,\pwrup_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwrup_cnt_reg[12]_i_1_n_4 ,\pwrup_cnt_reg[12]_i_1_n_5 ,\pwrup_cnt_reg[12]_i_1_n_6 ,\pwrup_cnt_reg[12]_i_1_n_7 }),
        .S(pwrup_cnt_reg[15:12]));
  FDRE \pwrup_cnt_reg[13] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[12]_i_1_n_6 ),
        .Q(pwrup_cnt_reg[13]),
        .R(rst));
  FDRE \pwrup_cnt_reg[14] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[12]_i_1_n_5 ),
        .Q(pwrup_cnt_reg[14]),
        .R(rst));
  FDRE \pwrup_cnt_reg[15] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[12]_i_1_n_4 ),
        .Q(pwrup_cnt_reg[15]),
        .R(rst));
  FDRE \pwrup_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[0]_i_2_n_6 ),
        .Q(pwrup_cnt_reg[1]),
        .R(rst));
  FDRE \pwrup_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[0]_i_2_n_5 ),
        .Q(pwrup_cnt_reg[2]),
        .R(rst));
  FDRE \pwrup_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[0]_i_2_n_4 ),
        .Q(pwrup_cnt_reg[3]),
        .R(rst));
  FDRE \pwrup_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[4]_i_1_n_7 ),
        .Q(pwrup_cnt_reg[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwrup_cnt_reg[4]_i_1 
       (.CI(\pwrup_cnt_reg[0]_i_2_n_0 ),
        .CO({\pwrup_cnt_reg[4]_i_1_n_0 ,\pwrup_cnt_reg[4]_i_1_n_1 ,\pwrup_cnt_reg[4]_i_1_n_2 ,\pwrup_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwrup_cnt_reg[4]_i_1_n_4 ,\pwrup_cnt_reg[4]_i_1_n_5 ,\pwrup_cnt_reg[4]_i_1_n_6 ,\pwrup_cnt_reg[4]_i_1_n_7 }),
        .S(pwrup_cnt_reg[7:4]));
  FDRE \pwrup_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[4]_i_1_n_6 ),
        .Q(pwrup_cnt_reg[5]),
        .R(rst));
  FDRE \pwrup_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[4]_i_1_n_5 ),
        .Q(pwrup_cnt_reg[6]),
        .R(rst));
  FDRE \pwrup_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[4]_i_1_n_4 ),
        .Q(pwrup_cnt_reg[7]),
        .R(rst));
  FDRE \pwrup_cnt_reg[8] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[8]_i_1_n_7 ),
        .Q(pwrup_cnt_reg[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwrup_cnt_reg[8]_i_1 
       (.CI(\pwrup_cnt_reg[4]_i_1_n_0 ),
        .CO({\pwrup_cnt_reg[8]_i_1_n_0 ,\pwrup_cnt_reg[8]_i_1_n_1 ,\pwrup_cnt_reg[8]_i_1_n_2 ,\pwrup_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwrup_cnt_reg[8]_i_1_n_4 ,\pwrup_cnt_reg[8]_i_1_n_5 ,\pwrup_cnt_reg[8]_i_1_n_6 ,\pwrup_cnt_reg[8]_i_1_n_7 }),
        .S(pwrup_cnt_reg[11:8]));
  FDRE \pwrup_cnt_reg[9] 
       (.C(s_axi_aclk),
        .CE(\pwrup_cnt[0]_i_1_n_0 ),
        .D(\pwrup_cnt_reg[8]_i_1_n_6 ),
        .Q(pwrup_cnt_reg[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .O(s_axi_arready0));
  FDRE s_axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_arready0),
        .Q(s_axi_arready),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_i_2
       (.I0(s_axi_awvalid),
        .I1(wr_addr_valid),
        .O(s_axi_awready0));
  FDRE s_axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_awready0),
        .Q(s_axi_awready),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h5C50)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(wr_addr_valid),
        .I2(s_axi_bvalid_reg_0),
        .I3(s_axi_wvalid),
        .O(s_axi_bvalid_i_1_n_0));
  FDRE s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid_reg_0),
        .R(rst));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .O(rd_hs));
  LUT4 #(
    .INIT(16'h0400)) 
    \s_axi_rdata[31]_i_4 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .O(\s_axi_rdata[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \s_axi_rdata[31]_i_5 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .O(\s_axi_rdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axi_rdata[31]_i_7 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .O(\s_axi_rdata[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axi_rdata[31]_i_8 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .O(\s_axi_rdata[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_axi_rdata[3]_i_5 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[0]),
        .O(\s_axi_rdata[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_rdata[3]_i_6 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[0]),
        .O(\s_axi_rdata[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \s_axi_rdata[4]_i_3 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[0]),
        .O(\s_axi_rdata[4]_i_3_n_0 ));
  FDRE \s_axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE \s_axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[10]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE \s_axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[11]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE \s_axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[12]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE \s_axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[13]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE \s_axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[14]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE \s_axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[15]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE \s_axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[16]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE \s_axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[17]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE \s_axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[18]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE \s_axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[19]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE \s_axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE \s_axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[20]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE \s_axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[21]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE \s_axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[22]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE \s_axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[23]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE \s_axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[24]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE \s_axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[25]),
        .Q(s_axi_rdata[25]),
        .R(rst));
  FDRE \s_axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[26]),
        .Q(s_axi_rdata[26]),
        .R(rst));
  FDRE \s_axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[27]),
        .Q(s_axi_rdata[27]),
        .R(rst));
  FDRE \s_axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[28]),
        .Q(s_axi_rdata[28]),
        .R(rst));
  FDRE \s_axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[29]),
        .Q(s_axi_rdata[29]),
        .R(rst));
  FDRE \s_axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE \s_axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[30]),
        .Q(s_axi_rdata[30]),
        .R(rst));
  FDRE \s_axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[31]),
        .Q(s_axi_rdata[31]),
        .R(rst));
  FDRE \s_axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE \s_axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE \s_axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE \s_axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE \s_axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE \s_axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[8]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE \s_axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_hs),
        .D(s_axi_rdata_0[9]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_arready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h20)) 
    s_axi_wready_i_1
       (.I0(wr_addr_valid),
        .I1(s_axi_bvalid_reg_0),
        .I2(s_axi_wvalid),
        .O(s_axi_wready0));
  FDRE s_axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wready0),
        .Q(s_axi_wready),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    soft_clear_i_1
       (.I0(wr_addr[4]),
        .I1(wr_addr[5]),
        .I2(wr_addr[3]),
        .I3(wr_addr[2]),
        .I4(s_axi_wdata[1]),
        .I5(start_pulse_i_2_n_0),
        .O(soft_clear1_out));
  FDRE soft_clear_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(soft_clear1_out),
        .Q(soft_clear_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    start_pulse_i_1
       (.I0(wr_addr[4]),
        .I1(wr_addr[5]),
        .I2(wr_addr[3]),
        .I3(wr_addr[2]),
        .I4(s_axi_wdata[0]),
        .I5(start_pulse_i_2_n_0),
        .O(start_pulse5_out));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    start_pulse_i_2
       (.I0(s_axi_wvalid),
        .I1(s_axi_bvalid_reg_0),
        .I2(wr_addr_valid),
        .O(start_pulse_i_2_n_0));
  FDRE start_pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start_pulse5_out),
        .Q(start_pulse_reg_n_0),
        .R(rst));
  LUT2 #(
    .INIT(4'hD)) 
    started_once_i_1
       (.I0(u_bench_n_2),
        .I1(started_once_reg_n_0),
        .O(started_once_i_1_n_0));
  FDRE started_once_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(started_once_i_1_n_0),
        .Q(started_once_reg_n_0),
        .R(rst));
  router210_bd_bench_axi_0_0_bench_engine_router210 u_bench
       (.D(s_axi_rdata_0),
        .E(por_active),
        .\FSM_sequential_st_reg[2]_0 (started_once_reg_n_0),
        .bench_done_latched_reg(soft_clear_reg_n_0),
        .bench_done_latched_reg_0(start_pulse_reg_n_0),
        .data0(data0),
        .led(led),
        .pwrup_cnt_reg(pwrup_cnt_reg),
        .pwrup_cnt_reg_0_sp_1(u_bench_n_2),
        .rst(rst),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .\s_axi_rdata_reg[0] (\s_axi_rdata[31]_i_4_n_0 ),
        .\s_axi_rdata_reg[0]_0 (\s_axi_rdata[4]_i_3_n_0 ),
        .\s_axi_rdata_reg[0]_1 (\s_axi_rdata[31]_i_7_n_0 ),
        .\s_axi_rdata_reg[0]_2 (\s_axi_rdata[31]_i_8_n_0 ),
        .\s_axi_rdata_reg[0]_3 (\s_axi_rdata[3]_i_5_n_0 ),
        .\s_axi_rdata_reg[0]_4 (\s_axi_rdata[3]_i_6_n_0 ),
        .\s_axi_rdata_reg[5] (\s_axi_rdata[31]_i_5_n_0 ),
        .winner_valid_reg_0(u_bench_n_1),
        .winner_valid_reg_1(u_bench_n_39));
  FDRE \wr_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[0]),
        .Q(wr_addr[2]),
        .R(rst));
  FDRE \wr_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[1]),
        .Q(wr_addr[3]),
        .R(rst));
  FDRE \wr_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[2]),
        .Q(wr_addr[4]),
        .R(rst));
  FDRE \wr_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[3]),
        .Q(wr_addr[5]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h54045454)) 
    wr_addr_valid_i_1
       (.I0(rst),
        .I1(s_axi_awvalid),
        .I2(wr_addr_valid),
        .I3(s_axi_bvalid_reg_0),
        .I4(s_axi_wvalid),
        .O(wr_addr_valid_i_1_n_0));
  FDRE wr_addr_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wr_addr_valid_i_1_n_0),
        .Q(wr_addr_valid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "router_extended" *) 
module router210_bd_bench_axi_0_0_router_extended
   (por_active_reg,
    \FSM_sequential_st_reg[2] ,
    \FSM_sequential_st_reg[2]_0 ,
    \FSM_sequential_st_reg[2]_1 ,
    s_axi_aclk,
    Q,
    \st_reg[0]_0 ,
    start_b2_reg_0,
    E,
    s_axi_aresetn,
    st__0,
    st,
    start,
    \FSM_sequential_st_reg[1] );
  output por_active_reg;
  output \FSM_sequential_st_reg[2] ;
  output \FSM_sequential_st_reg[2]_0 ;
  output \FSM_sequential_st_reg[2]_1 ;
  input s_axi_aclk;
  input [3:0]Q;
  input \st_reg[0]_0 ;
  input [2:0]start_b2_reg_0;
  input [0:0]E;
  input s_axi_aresetn;
  input [0:0]st__0;
  input [2:0]st;
  input start;
  input \FSM_sequential_st_reg[1] ;

  wire [0:0]E;
  wire \FSM_sequential_st_reg[1] ;
  wire \FSM_sequential_st_reg[2] ;
  wire \FSM_sequential_st_reg[2]_0 ;
  wire \FSM_sequential_st_reg[2]_1 ;
  wire [3:0]Q;
  wire done_b12;
  wire done_b2;
  wire por_active_reg;
  wire r_done;
  wire [1:0]routed_target__7;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [2:0]st;
  wire [0:0]st__0;
  wire \st_reg[0]_0 ;
  wire \st_reg_n_0_[0] ;
  wire start;
  wire start_b10_i_1_n_0;
  wire start_b10_reg_n_0;
  wire start_b12_i_1_n_0;
  wire start_b12_reg_n_0;
  wire start_b2_i_1_n_0;
  wire [2:0]start_b2_reg_0;
  wire start_b2_reg_n_0;
  wire u_b10_n_0;
  wire u_b10_n_1;
  wire u_b10_n_2;
  wire u_b12_n_2;
  wire u_b2_n_1;

  LUT6 #(
    .INIT(64'hCFCFFF338888FFCC)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(\FSM_sequential_st_reg[1] ),
        .I1(st[2]),
        .I2(r_done),
        .I3(start),
        .I4(st[0]),
        .I5(st[1]),
        .O(\FSM_sequential_st_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hCFCF33FF77770000)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(\FSM_sequential_st_reg[1] ),
        .I1(st[2]),
        .I2(r_done),
        .I3(start),
        .I4(st[0]),
        .I5(st[1]),
        .O(\FSM_sequential_st_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hECECAAEEAAAAAA88)) 
    \FSM_sequential_st[2]_i_1 
       (.I0(st__0),
        .I1(st[2]),
        .I2(r_done),
        .I3(start),
        .I4(st[0]),
        .I5(st[1]),
        .O(\FSM_sequential_st_reg[2] ));
  FDRE done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(u_b10_n_1),
        .Q(r_done),
        .R(1'b0));
  FDRE \st_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(u_b10_n_2),
        .Q(\st_reg_n_0_[0] ),
        .R(por_active_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    start_b10_i_1
       (.I0(\st_reg[0]_0 ),
        .I1(\st_reg_n_0_[0] ),
        .I2(routed_target__7[0]),
        .I3(routed_target__7[1]),
        .O(start_b10_i_1_n_0));
  LUT5 #(
    .INIT(32'h888C80F0)) 
    start_b10_i_2
       (.I0(u_b10_n_0),
        .I1(u_b12_n_2),
        .I2(start_b2_reg_0[0]),
        .I3(start_b2_reg_0[1]),
        .I4(start_b2_reg_0[2]),
        .O(routed_target__7[0]));
  LUT4 #(
    .INIT(16'hA8B0)) 
    start_b10_i_3
       (.I0(u_b2_n_1),
        .I1(start_b2_reg_0[0]),
        .I2(start_b2_reg_0[1]),
        .I3(start_b2_reg_0[2]),
        .O(routed_target__7[1]));
  FDRE start_b10_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start_b10_i_1_n_0),
        .Q(start_b10_reg_n_0),
        .R(por_active_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    start_b12_i_1
       (.I0(routed_target__7[0]),
        .I1(\st_reg[0]_0 ),
        .I2(\st_reg_n_0_[0] ),
        .I3(routed_target__7[1]),
        .O(start_b12_i_1_n_0));
  FDRE start_b12_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start_b12_i_1_n_0),
        .Q(start_b12_reg_n_0),
        .R(por_active_reg));
  LUT4 #(
    .INIT(16'h0004)) 
    start_b2_i_1
       (.I0(routed_target__7[0]),
        .I1(\st_reg[0]_0 ),
        .I2(\st_reg_n_0_[0] ),
        .I3(routed_target__7[1]),
        .O(start_b2_i_1_n_0));
  FDRE start_b2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start_b2_i_1_n_0),
        .Q(start_b2_reg_n_0),
        .R(por_active_reg));
  router210_bd_bench_axi_0_0_base10_alu u_b10
       (.Q(Q),
        .busy_reg_0(por_active_reg),
        .\countdown_reg[0]_0 (start_b10_reg_n_0),
        .\countdown_reg[1]_0 (u_b12_n_2),
        .done_b12(done_b12),
        .done_b2(done_b2),
        .\r_opcode_reg[1] (u_b10_n_0),
        .routed_target__7(routed_target__7),
        .s_axi_aclk(s_axi_aclk),
        .\st_reg[0] (u_b10_n_1),
        .\st_reg[0]_0 (u_b10_n_2),
        .\st_reg[0]_1 (\st_reg_n_0_[0] ),
        .\st_reg[0]_2 (\st_reg[0]_0 ));
  router210_bd_bench_axi_0_0_base12_alu u_b12
       (.E(E),
        .Q(Q),
        .\countdown_reg[0]_0 (start_b12_reg_n_0),
        .done_b12(done_b12),
        .por_active_reg(por_active_reg),
        .\r_opcode_reg[2] (u_b12_n_2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  router210_bd_bench_axi_0_0_base2_alu u_b2
       (.Q(Q),
        .\countdown_reg[0]_0 (start_b2_reg_n_0),
        .\countdown_reg[3]_0 (u_b10_n_0),
        .\countdown_reg[3]_1 (u_b12_n_2),
        .\countdown_reg[7]_0 (por_active_reg),
        .done_b2(done_b2),
        .\r_opcode_reg[3] (u_b2_n_1),
        .s_axi_aclk(s_axi_aclk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
