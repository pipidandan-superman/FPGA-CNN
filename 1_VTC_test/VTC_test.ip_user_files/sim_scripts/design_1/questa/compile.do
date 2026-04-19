vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/v_tc_v6_2_1
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_2_1 questa_lib/msim/v_tc_v6_2_1
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv "+incdir+../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_2_1  -93 \
"../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/cd2e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../VTC_test.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../bd/design_1/ip/design_1_HDMI_top_0_0/sim/design_1_HDMI_top_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/ip/design_1_data_gen_0_0/sim/design_1_data_gen_0_0.v" \
"../../../bd/design_1/ip/design_1_vio_0_0/sim/design_1_vio_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

