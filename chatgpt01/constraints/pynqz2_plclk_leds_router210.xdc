## PYNQ-Z2 125 MHz PL clock on H16
set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { sysclk }];
create_clock -add -name sys_clk_pin -period 8.000 -waveform {0 4} [get_ports { sysclk }];

## LEDs: LD0..LD3 on-board, LED[4] exported to JA1 PMOD
set_property -dict { PACKAGE_PIN R14 IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; # LD0
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; # LD1
set_property -dict { PACKAGE_PIN N16 IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; # LD2
set_property -dict { PACKAGE_PIN M14 IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; # LD3
set_property -dict { PACKAGE_PIN L17 IOSTANDARD LVCMOS33 } [get_ports { led[4] }]; # JA1 PMOD
