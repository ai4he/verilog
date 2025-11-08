# Create a Zynq + AXI-Lite design that exposes the extended router benchmark.
set part xc7z020clg400-1
create_project pynq_router_bench_router210 ./vivado_pynq_router_bench_router210 -part $part -force
set_param general.maxThreads 4
add_files -fileset sources_1 [list \
  ../src/common_opcodes.vh \
  ../src/base2_alu.v \
  ../src/base10_alu.v \
  ../src/base12_alu.v \
  ../src/router_extended.v \
  ../src/bench_engine_router210.v \
  ../src/router_bench_axi_router210.v \
]
add_files -fileset constrs_1 ../constraints/pynqz2_plclk_leds_router210.xdc
update_compile_order -fileset sources_1

create_bd_design "router210_bd"

create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {apply_board_preset "1"} [get_bd_cells ps7]
set_property -dict [list CONFIG.PCW_USE_M_AXI_GP0 {1}] [get_bd_cells ps7]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells axi_ic]

create_bd_cell -type module -reference router_bench_axi_router210 bench_axi_0

connect_bd_intf_net [get_bd_intf_pins ps7/M_AXI_GP0] [get_bd_intf_pins axi_ic/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins bench_axi_0/S_AXI] [get_bd_intf_pins axi_ic/M00_AXI]

set clk_port [create_bd_port -dir I -type clk sysclk]
set_property CONFIG.FREQ_HZ 125000000 [get_bd_ports sysclk]
connect_bd_net [get_bd_ports sysclk] [get_bd_pins axi_ic/ACLK]
connect_bd_net [get_bd_ports sysclk] [get_bd_pins axi_ic/S00_ACLK]
connect_bd_net [get_bd_ports sysclk] [get_bd_pins axi_ic/M00_ACLK]
connect_bd_net [get_bd_ports sysclk] [get_bd_pins bench_axi_0/s_axi_aclk]
connect_bd_net [get_bd_ports sysclk] [get_bd_pins ps7/M_AXI_GP0_ACLK]

create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconst_one
set_property -dict [list CONFIG.CONST_VAL {1}] [get_bd_cells xlconst_one]
connect_bd_net [get_bd_pins xlconst_one/dout] [get_bd_pins bench_axi_0/s_axi_aresetn]
connect_bd_net [get_bd_pins xlconst_one/dout] [get_bd_pins axi_ic/ARESETN]
connect_bd_net [get_bd_pins xlconst_one/dout] [get_bd_pins axi_ic/S00_ARESETN]
connect_bd_net [get_bd_pins xlconst_one/dout] [get_bd_pins axi_ic/M00_ARESETN]

make_bd_pins_external [get_bd_pins bench_axi_0/led]
set_property name led [get_bd_ports led_0]

assign_bd_address
set addr_seg [get_bd_addr_segs -of_objects [get_bd_addr_spaces ps7/Data] -filter {NAME =~ "*bench_axi_0*"}]
if {[llength $addr_seg] > 0} {
    set_property offset 0x43C10000 $addr_seg
    puts "Set base address to 0x43C10000 for segment: $addr_seg"
} else {
    puts "WARNING: Could not find bench_axi_0 address segment"
}

validate_bd_design
save_bd_design

make_wrapper -files [get_files ./vivado_pynq_router_bench_router210/pynq_router_bench_router210.srcs/sources_1/bd/router210_bd/router210_bd.bd] -top
add_files -norecurse ./vivado_pynq_router_bench_router210/pynq_router_bench_router210.gen/sources_1/bd/router210_bd/hdl/router210_bd_wrapper.v
set_property top router210_bd_wrapper [current_fileset]

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

file copy -force ./vivado_pynq_router_bench_router210/pynq_router_bench_router210.gen/sources_1/bd/router210_bd/hw_handoff/router210_bd.hwh ./router210_bench.hwh
file copy -force ./vivado_pynq_router_bench_router210/pynq_router_bench_router210.runs/impl_1/router210_bd_wrapper.bit ./router210_bench.bit
file copy -force ./router210_bench.hwh ../router210_bench.hwh
file copy -force ./router210_bench.bit ../router210_bench.bit
puts "Artifacts ready: scripts/router210_bench.bit(.hwh) and ../router210_bench.bit(.hwh)"
