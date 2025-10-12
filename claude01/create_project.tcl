####################################################################################
# Vivado TCL Script for Multi-Base Arithmetic Router
# Automated Project Creation and Build
####################################################################################

# Set project name and directory
set project_name "multi_base_router"
set project_dir "./vivado_project"

# Set FPGA part (PYNQ Z2: Zynq-7020)
set fpga_part "xc7z020clg400-1"

# Create project
puts "Creating Vivado project: $project_name"
create_project $project_name $project_dir -part $fpga_part -force

# Set project properties
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

# Add source files
puts "Adding source files..."
add_files -norecurse {
    src/top_module.v
    src/benchmark_controller.v
    src/router.v
    src/base2_alu.v
    src/base10_alu.v
    src/base12_alu.v
}

# Add constraints file
puts "Adding constraints file..."
add_files -fileset constrs_1 -norecurse constraints/pynq_z2.xdc

# Add simulation files
puts "Adding simulation files..."
add_files -fileset sim_1 -norecurse sim/tb_top_module.v

# Set top module
set_property top top_module [current_fileset]
set_property top tb_top_module [get_filesets sim_1]

# Update compile order
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

puts "Project created successfully!"
puts ""
puts "==================================================="
puts "Next Steps:"
puts "==================================================="
puts "1. Run Synthesis:"
puts "   launch_runs synth_1 -jobs 4"
puts "   wait_on_run synth_1"
puts ""
puts "2. Run Implementation:"
puts "   launch_runs impl_1 -to_step write_bitstream -jobs 4"
puts "   wait_on_run impl_1"
puts ""
puts "3. Generate Bitstream:"
puts "   open_run impl_1"
puts "   write_bitstream -force $project_name.bit"
puts ""
puts "Or run complete flow with:"
puts "   source build_all.tcl"
puts "==================================================="

# Optional: Run synthesis automatically
# Uncomment the following lines to run synthesis automatically
# puts "Starting synthesis..."
# reset_run synth_1
# launch_runs synth_1 -jobs 4
# wait_on_run synth_1
# puts "Synthesis complete!"

# Optional: Run implementation automatically
# Uncomment the following lines to run implementation automatically
# puts "Starting implementation..."
# launch_runs impl_1 -to_step write_bitstream -jobs 4
# wait_on_run impl_1
# puts "Implementation complete!"

# Optional: Open the project GUI
# start_gui
