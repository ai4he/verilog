####################################################################################
# Constraints file for PYNQ Z2 Board
# Multi-Base Arithmetic Router Benchmark
####################################################################################

# System Clock (125 MHz)
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]

# Center Button (BTNC) - Reset
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports btnc]

# LEDs (LD0 to LD3)
# LED0: Base-2 (Binary) Winner
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {led[0]}]

# LED1: Base-10 (Decimal/BCD) Winner
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {led[1]}]

# LED2: Base-12 (Duodecimal) Winner
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {led[2]}]

# LED3: Router (Intelligent Selection) Winner
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {led[3]}]

####################################################################################
# Timing Constraints
####################################################################################

# Input delays for button
set_input_delay -clock [get_clocks sys_clk_pin] -min 0.000 [get_ports btnc]
set_input_delay -clock [get_clocks sys_clk_pin] -max 2.000 [get_ports btnc]

# Output delays for LEDs
set_output_delay -clock [get_clocks sys_clk_pin] -min -1.000 [get_ports {led[*]}]
set_output_delay -clock [get_clocks sys_clk_pin] -max 2.000 [get_ports {led[*]}]

# False paths for asynchronous inputs
set_false_path -from [get_ports btnc] -to [all_registers]

# False paths for LED outputs (they're just indicators)
set_false_path -from [all_registers] -to [get_ports {led[*]}]

####################################################################################
# Configuration Settings
####################################################################################

# Configuration bank voltage
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# Bitstream settings
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
