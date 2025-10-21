# Vivado TCL script to build and program standalone FPGA (no AXI)
set PROJ_NAME pynq_router_standalone
set PROJ_DIR [file normalize ./vivado_${PROJ_NAME}]
set PART xc7z020clg400-1

# Check if project exists
if {[file exists ${PROJ_DIR}/${PROJ_NAME}.xpr]} {
    puts "Opening existing standalone project..."
    open_project ${PROJ_DIR}/${PROJ_NAME}.xpr
} else {
    puts "Creating new standalone project..."
    create_project $PROJ_NAME $PROJ_DIR -part $PART

    add_files -fileset sources_1 [list \
        ../src/common_opcodes.vh \
        ../src/base2_alu.v \
        ../src/base10_alu.v \
        ../src/base12_alu.v \
        ../src/router.v \
        ../src/bench_engine.v \
        ../src/top_router_benchmark.v \
    ]
    add_files -fileset constrs_1 ../constraints/pynqz2_router_benchmark.xdc

    set_property top top_router_benchmark [current_fileset]
    update_compile_order -fileset sources_1
}

# Check if bitstream exists and is up to date
set bitstream_path ${PROJ_DIR}/${PROJ_NAME}.runs/impl_1/top_router_benchmark.bit

if {![file exists $bitstream_path]} {
    puts "Bitstream not found. Running synthesis and implementation..."

    # Configure synthesis to use 4 threads
    set_param general.maxThreads 4

    # Reset and launch synthesis with 4 jobs
    reset_run synth_1
    launch_runs synth_1 -jobs 4
    wait_on_run synth_1

    # Launch implementation and bitstream generation with 4 jobs
    launch_runs impl_1 -to_step write_bitstream -jobs 4
    wait_on_run impl_1
} else {
    puts "Bitstream found at: $bitstream_path"
}

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
