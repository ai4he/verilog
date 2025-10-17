# Create a Zynq + AXI-Lite design that exposes our HDL module as a BD "module ref".
set part xc7z020clg400-1
create_project pynq_router_bench ./vivado_pynq_router_bench -part $part -force
add_files -fileset sources_1 [list \
  ../src/common_opcodes.vh \
  ../src/base2_alu.v \
  ../src/base10_alu.v \
  ../src/base12_alu.v \
  ../src/router.v \
  ../src/bench_engine.v \
  ../src/router_bench_axi.v \
]
add_files -fileset constrs_1 ../constraints/pynqz2_leds.xdc
update_compile_order -fileset sources_1

create_bd_design "router_bd"

# Zynq PS
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {apply_board_preset "1"} [get_bd_cells ps7]

# AXI Interconnect (GP0 -> our module)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells axi_ic]

# Module reference for our AXI slave
create_bd_cell -type module -reference router_bench_axi bench_axi_0

# Clocking & resets: use FCLK0
# Enable FCLK0 @ 100MHz
set_property -dict [list CONFIG.PCW_USE_S_AXI_GP0 {1} CONFIG.PCW_FPGA_FCLK0_ENABLE {1}] [get_bd_cells ps7]

# Connections
connect_bd_intf_net [get_bd_intf_pins ps7/M_AXI_GP0] [get_bd_intf_pins axi_ic/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins bench_axi_0/S_AXI] [get_bd_intf_pins axi_ic/M00_AXI]

# Clocks & resets
connect_bd_net [get_bd_pins ps7/FCLK_CLK0]    [get_bd_pins axi_ic/ACLK]
connect_bd_net [get_bd_pins ps7/FCLK_CLK0]    [get_bd_pins axi_ic/S00_ACLK]
connect_bd_net [get_bd_pins ps7/FCLK_CLK0]    [get_bd_pins axi_ic/M00_ACLK]
connect_bd_net [get_bd_pins ps7/FCLK_CLK0]    [get_bd_pins bench_axi_0/s_axi_aclk]

# Reset: use FCLK_RESET0_N
connect_bd_net [get_bd_pins ps7/FCLK_RESET0_N] [get_bd_pins bench_axi_0/s_axi_aresetn]
connect_bd_net [get_bd_pins ps7/FCLK_RESET0_N] [get_bd_pins axi_ic/ARESETN]
connect_bd_net [get_bd_pins ps7/FCLK_RESET0_N] [get_bd_pins axi_ic/S00_ARESETN]
connect_bd_net [get_bd_pins ps7/FCLK_RESET0_N] [get_bd_pins axi_ic/M00_ARESETN]

# Export LED port to top
make_bd_pins_external  [get_bd_pins bench_axi_0/led]
set_property name led [get_bd_ports led_0]

# Address map
assign_bd_address
# Force a friendly base address
set_property offset 0x43C00000 [get_bd_addr_segs {ps7/Data/SEG_bench_axi_0_Reg}]
validate_bd_design
save_bd_design

# Wrapper & bit
make_wrapper -files [get_files ./vivado_pynq_router_bench/pynq_router_bench.srcs/sources_1/bd/router_bd/router_bd.bd] -top
add_files -norecurse ./vivado_pynq_router_bench/pynq_router_bench.gen/sources_1/bd/router_bd/hdl/router_bd_wrapper.v
set_property top router_bd_wrapper [current_fileset]

launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

# Export .hwh
file copy -force ./vivado_pynq_router_bench/pynq_router_bench.srcs/sources_1/bd/router_bd/hw_handoff/router_bd.hwh ./router_bench.hwh
file copy -force ./vivado_pynq_router_bench/pynq_router_bench.runs/impl_1/router_bd_wrapper.bit ./router_bench.bit
puts "Artifacts ready: router_bench.bit / router_bench.hwh"
