# Vivado TCL script to program FPGA with AXI overlay bitstream
# Assumes bitstream was built using make_bd.tcl

set bitstream_path [file normalize ../router_bench.bit]

if {![file exists $bitstream_path]} {
    puts "ERROR: Bitstream not found at: $bitstream_path"
    puts "Please run build_and_program_axi.bat first to generate the bitstream."
    exit 1
}

puts "Using AXI overlay bitstream: $bitstream_path"

# Program the FPGA
puts "\n=== Programming FPGA with AXI Overlay ==="
open_hw_manager
connect_hw_server

# Get available hardware targets
set hw_targets [get_hw_targets]
if {[llength $hw_targets] == 0} {
    puts "ERROR: No hardware targets found. Please check FPGA connection."
    close_hw_manager
    exit 1
}

# Open first available target
puts "Available targets: $hw_targets"
open_hw_target [lindex $hw_targets 0]

# Get all devices and filter for FPGA (not ARM DAP)
set hw_devices [get_hw_devices]
puts "All detected devices: $hw_devices"

# Find the FPGA device (typically xc7z020_1 for Zynq)
set fpga_device ""
foreach dev $hw_devices {
    if {[string match "*xc7z020*" $dev]} {
        set fpga_device $dev
        break
    }
}

if {$fpga_device == ""} {
    puts "ERROR: Could not find FPGA device (xc7z020). Available devices: $hw_devices"
    close_hw_target
    close_hw_manager
    exit 1
}

puts "Programming FPGA device: $fpga_device"

# Program the FPGA device
current_hw_device $fpga_device
refresh_hw_device $fpga_device
set_property PROGRAM.FILE $bitstream_path $fpga_device
program_hw_devices $fpga_device

puts "\n=== FPGA Programming Complete! ==="
puts "The AXI-Lite router benchmark is now running on the FPGA."
puts "Use the PYNQ Jupyter notebook to access it via AXI."
close_hw_target
close_hw_manager
