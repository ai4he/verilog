## PYNQ Z2 Board Constraints File
## Multi-Base Arithmetic Router Project

## Clock Signal - 125 MHz
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]

## Buttons
# BTN0 - Reset (active low)
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports reset_n]
# BTN1 - Start Benchmark
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports start_btn]

## Standard LEDs (LD0-LD3)
# LED0 - Base-2 Winner
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
# LED1 - Base-10 Winner
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
# LED2 - Base-12 Winner
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
# LED3 - Router Winner
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {led[3]}]

## RGB LEDs
# RGB LED 4 (LD4)
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports {rgb_led[0]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {rgb_led[1]}]
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {rgb_led[2]}]
# RGB LED 5 (LD5)
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports {rgb_led[3]}]

## Configuration
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Timing Constraints
# False paths for asynchronous inputs
set_false_path -from [get_ports reset_n]
set_false_path -from [get_ports start_btn]
set_false_path -to [get_ports {led[*]}]
set_false_path -to [get_ports {rgb_led[*]}]