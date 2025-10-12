# Multi-Base Arithmetic Router for FPGA Benchmark

A comprehensive Verilog implementation demonstrating adaptive arithmetic computation using Base-2 (Binary), Base-10 (Decimal/BCD), and Base-12 (Duodecimal) number systems with intelligent routing on the PYNQ Z2 FPGA.

## Overview

This project implements a benchmark system that compares the performance of three different arithmetic bases and demonstrates how an intelligent router can select the optimal base for each operation, showcasing the concept of the "Base-12 Framework."

### Key Features

- **Three Arithmetic Units**: Binary, Decimal (BCD), and Duodecimal (Base-12)
- **9 Test Operations**: ADD, SUB, MUL, DIV, AND, OR, XOR, SHL, SHR
- **4 Benchmark Conditions**: All-Base-2, All-Base-10, All-Base-12, and Intelligent Router
- **LED Indicators**: Shows which approach achieved the best performance
- **Performance Monitoring**: Precise cycle counting for each condition

## Project Structure

```
multi_base_router/
├── src/
│   ├── top_module.v              # Main top-level module
│   ├── benchmark_controller.v    # Benchmark orchestration
│   ├── router.v                  # Intelligent ALU selector
│   ├── base2_alu.v              # Binary arithmetic unit
│   ├── base10_alu.v             # BCD arithmetic unit
│   └── base12_alu.v             # Duodecimal arithmetic unit
├── constraints/
│   └── pynq_z2.xdc              # Pin mappings for PYNQ Z2
├── sim/
│   └── tb_top_module.v          # Testbench
├── create_project.tcl           # Automated project setup
└── README.md                     # This file
```

## Hardware Requirements

- **FPGA Board**: PYNQ Z2 (Zynq-7020 xc7z020clg400-1)
- **Clock**: 125 MHz system clock (divided to 50 MHz internally)
- **Inputs**: Center button (BTNC) for reset
- **Outputs**: 4 LEDs indicating performance results

### LED Indicators

- **LED0**: Base-2 (Binary) achieved best performance
- **LED1**: Base-10 (Decimal/BCD) achieved best performance
- **LED2**: Base-12 (Duodecimal) achieved best performance
- **LED3**: Router (Intelligent selection) achieved best performance

## Quick Start

### Option 1: Automated Setup (Recommended)

1. **Open Vivado** (tested with Vivado 2020.1+)

2. **Navigate to project directory**:
   ```tcl
   cd /path/to/multi_base_router
   ```

3. **Run the TCL script**:
   ```tcl
   source create_project.tcl
   ```

4. **Run synthesis and implementation**:
   ```tcl
   launch_runs synth_1 -jobs 4
   wait_on_run synth_1
   launch_runs impl_1 -to_step write_bitstream -jobs 4
   wait_on_run impl_1
   ```

5. **Program your PYNQ Z2 board** with the generated bitstream

### Option 2: Manual Setup

1. **Create new Vivado project**
   - Part: xc7z020clg400-1
   - Language: Verilog

2. **Add source files**:
   - Add all files from `src/` directory
   - Set `top_module` as the top-level module

3. **Add constraints**:
   - Add `constraints/pynq_z2.xdc`

4. **Add simulation files** (optional):
   - Add `sim/tb_top_module.v`

5. **Run synthesis, implementation, and generate bitstream**

6. **Program your PYNQ Z2 board**

## Architecture

### Top Module (`top_module.v`)

The main module that:
- Generates a 50 MHz clock from the 125 MHz system clock
- Synchronizes the reset button
- Instantiates all ALUs and the benchmark controller
- Routes signals between components

### Benchmark Controller (`benchmark_controller.v`)

Orchestrates the benchmark by:
- Generating 9 different test cases (operations)
- Running each test case through all 4 conditions
- Measuring cycle counts for each condition
- Determining the winner based on total cycles
- Driving the LED outputs

### Router (`router.v`)

The intelligent routing module that:
- Analyzes operands and operation type
- Selects the optimal base for each operation
- Instantiates all three ALUs internally
- Routes to the selected ALU and returns results

**Routing Strategy**:
- **Bitwise operations** (AND, OR, XOR, shifts) → Always use Base-2
- **Operations with factors of 12** (3, 4, 6, 12) → Prefer Base-12
- **Operations with factors of 10** (5, 10) → Prefer Base-10
- **General operations** → Default to Base-2

### ALU Modules

#### Base-2 ALU (`base2_alu.v`)
- Native binary operations
- Fastest for bitwise operations
- Standard implementation

#### Base-10 ALU (`base10_alu.v`)
- BCD (Binary Coded Decimal) arithmetic
- Includes binary ↔ BCD conversion functions
- Optimized for decimal operations

#### Base-12 ALU (`base12_alu.v`)
- Duodecimal arithmetic
- Includes binary ↔ base-12 conversion functions
- Optimized for operations involving factors of 12

## Test Cases

The benchmark runs 9 different operations:

1. **ADD**: 144 + 72
2. **SUB**: 1000 - 234
3. **MUL**: 12 × 12
4. **DIV**: 144 ÷ 12
5. **AND**: 0xAAAA & 0x5555
6. **OR**: 0xF0F0 | 0x0F0F
7. **XOR**: 0xFFFF ^ 0xAAAA
8. **SHL**: 100 << 2
9. **SHR**: 1000 >> 3

Each operation is executed in all 4 conditions:
1. All operations using Base-2
2. All operations using Base-10
3. All operations using Base-12
4. All operations using Router (intelligent selection)

## Expected Results

The **Router** (LED3) should typically achieve the best performance because it:
- Uses Base-2 for bitwise operations (optimal for those)
- Uses Base-12 for operations involving factors of 12 (division by 12, multiplication by 12)
- Adapts to the specific characteristics of each operation

This demonstrates the advantage of adaptive base selection, which is the core concept of the Base-12 Framework.

## Simulation

To run the simulation in Vivado:

1. **Add the testbench** to your simulation sources
2. **Run behavioral simulation**:
   ```tcl
   launch_simulation
   run all
   ```

The testbench will:
- Apply reset
- Run the complete benchmark
- Display progress and results in the console
- Generate a VCD waveform file for inspection

## Resource Utilization

Expected resource usage on Zynq-7020:
- **LUTs**: ~4000 (approx. 7.5% of available)
- **FFs**: ~2000 (approx. 1.9% of available)
- **Clock**: 50 MHz (meets timing easily)

## Timing Constraints

The design includes:
- **Input delays** for button synchronization
- **Output delays** for LED drivers
- **False paths** for asynchronous signals
- **Clock constraints** for 125 MHz system clock

## Customization

### Adding More Test Cases

Edit `benchmark_controller.v`:
1. Increase the array sizes for `test_operands_a`, `test_operands_b`, and `test_operations`
2. Add your test cases in the `initial` block
3. Update the comparison in the state machine (change `if (op_index == 8)` to your new count)

### Modifying Routing Strategy

Edit `router.v`:
1. Modify the `always @(*)` block that sets `selected_base`
2. Add your own heuristics for selecting the optimal base

### Changing Clock Frequency

Edit `top_module.v`:
1. Modify the clock divider logic
2. Update `pynq_z2.xdc` with new timing constraints

## Troubleshooting

### LEDs don't light up
- Check that you've pressed and released the reset button (BTNC)
- Verify the bitstream was programmed correctly
- Check the benchmark controller state machine

### All LEDs light up simultaneously
- This is expected if multiple conditions achieve the same cycle count
- The winner determination logic allows ties

### Simulation doesn't complete
- Increase the timeout in `tb_top_module.v`
- Check that all state machines are progressing
- Verify ALU `valid` signals are being asserted

## Performance Analysis

After running the benchmark, you can analyze performance by:

1. **Reading cycle counters** from the benchmark controller
2. **Comparing LED states** to see the winner
3. **Using ILA (Integrated Logic Analyzer)** in Vivado to capture live data
4. **Simulation waveforms** to inspect timing

## Future Enhancements

Possible improvements:
- Add more complex operations (modulo, exponentiation)
- Implement adaptive learning to improve routing decisions
- Add UART output for detailed cycle count reporting
- Implement base-16 (hexadecimal) ALU for comparison
- Add AXI interface for PS (ARM) control

## License

This project is provided as-is for educational and research purposes.

## References

- PYNQ Z2 Board Documentation
- Xilinx Zynq-7020 Datasheet
- Base-12 Framework concept
- Vivado Design Suite User Guide

## Author

Created for FPGA benchmark demonstration of the Base-12 Framework concept.

## Acknowledgments

- Xilinx/AMD for Vivado tools
- TUL Corporation for the PYNQ Z2 board
- Base-12 Framework research community
