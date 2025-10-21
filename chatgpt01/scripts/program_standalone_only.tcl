# Vivado TCL script to program FPGA only for standalone design (assumes bitstream already exists)
set PROJ_NAME pynq_router_standalone
set PROJ_DIR [file normalize ./vivado_${PROJ_NAME}]
set bitstream_path ${PROJ_DIR}/${PROJ_NAME}.runs/impl_1/top_router_benchmark.bit

if {![file exists $bitstream_path]} {
    puts "ERROR: Bitstream not found at: $bitstream_path"
    exit 1
}

puts "Using bitstream: $bitstream_path"

# Program the FPGA
puts "\n=== Programming FPGA ==="
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
close_hw_target
close_hw_manager
