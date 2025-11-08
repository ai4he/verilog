# Vivado non-project flow for the Router 2&10 variant
set PROJ_NAME pynq_router_bench_router210
set PROJ_DIR  [file normalize ./vivado_${PROJ_NAME}]
set PART      xc7z020clg400-1

create_project $PROJ_NAME $PROJ_DIR -part $PART

add_files -fileset sources_1 [list \
  ../src/common_opcodes.vh \
  ../src/base2_alu.v \
  ../src/base10_alu.v \
  ../src/base12_alu.v \
  ../src/router_extended.v \
  ../src/bench_engine_router210.v \
  ../src/top_router_benchmark_router210.v \
]
add_files -fileset constrs_1 ../constraints/pynqz2_router_benchmark_router210.xdc

set_property top top_router_benchmark_router210 [current_fileset]
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1

puts "Bitstream at: [get_property PROGRESS [get_runs impl_1]]"
