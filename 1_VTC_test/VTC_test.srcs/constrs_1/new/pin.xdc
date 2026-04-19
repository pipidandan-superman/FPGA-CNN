set_property PACKAGE_PIN K17 [get_ports clk_in1_0]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1_0]
set_property PACKAGE_PIN H16 [get_ports TMDS_clk_p_0]
set_property PACKAGE_PIN D19 [get_ports {TMDS_data_p_0[2]}]
set_property PACKAGE_PIN C20 [get_ports {TMDS_data_p_0[1]}]

set_property PACKAGE_PIN H18 [get_ports hdmi_en_0]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_en_0]


set_property PACKAGE_PIN B19 [get_ports {TMDS_data_p_0[0]}]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
