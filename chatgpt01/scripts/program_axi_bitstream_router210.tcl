# Vivado TCL script to program FPGA with the Router 2&10 AXI overlay bitstream
set bitstream_path [file normalize ../router210_bench.bit]

if {![file exists $bitstream_path]} {
    puts "ERROR: Bitstream not found at: $bitstream_path"
    puts "Please run build_and_program_router210_axi.bat first to generate the bitstream."
    exit 1
}

puts "Using Router 2&10 AXI bitstream: $bitstream_path"

puts "\n=== Programming FPGA with Router 2&10 AXI Overlay ==="
open_hw_manager
connect_hw_server

set hw_targets [get_hw_targets]
if {[llength $hw_targets] == 0} {
    puts "ERROR: No hardware targets found. Please check FPGA connection."
    close_hw_manager
    exit 1
}

puts "Available targets: $hw_targets"
open_hw_target [lindex $hw_targets 0]

set hw_devices [get_hw_devices]
puts "All detected devices: $hw_devices"

set fpga_device ""
foreach dev $hw_devices {
    if ([string match "*xc7z020*" $dev]) {
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

current_hw_device $fpga_device
refresh_hw_device $fpga_device
set_property PROGRAM.FILE $bitstream_path $fpga_device
program_hw_devices $fpga_device

puts "\n=== FPGA Programming Complete! ==="
puts "Router 2&10 variant is now running on the FPGA."
close_hw_target
close_hw_manager
