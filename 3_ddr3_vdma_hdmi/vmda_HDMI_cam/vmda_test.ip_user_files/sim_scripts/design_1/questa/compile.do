vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/v_tc_v6_2_1
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/v_tc_v6_1_13
vlib questa_lib/msim/v_vid_in_axi4s_v4_0_9
vlib questa_lib/msim/v_axi4s_vid_out_v4_0_11
vlib questa_lib/msim/util_vector_logic_v2_0_1
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/lib_bmg_v1_0_13
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_24
vlib questa_lib/msim/axi_vdma_v6_3_10
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_data_fifo_v2_1_21
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/axi_protocol_converter_v2_1_22

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_2_1 questa_lib/msim/v_tc_v6_2_1
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap v_tc_v6_1_13 questa_lib/msim/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 questa_lib/msim/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_11 questa_lib/msim/v_axi4s_vid_out_v4_0_11
vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 questa_lib/msim/lib_bmg_v1_0_13
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_24 questa_lib/msim/axi_datamover_v5_1_24
vmap axi_vdma_v6_3_10 questa_lib/msim/axi_vdma_v6_3_10
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_21 questa_lib/msim/axi_data_fifo_v2_1_21
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap axi_protocol_converter_v2_1_22 questa_lib/msim/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_2_1  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/cd2e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_HDMI_top_0_0/sim/design_1_HDMI_top_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work v_tc_v6_1_13  -93 \
"../../../../../VTC_test/VTC_test.srcs/sources_1/bd/design_1/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../VTC_test/VTC_test.srcs/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_11  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../VTC_test/VTC_test.srcs/sources_1/bd/design_1/ipshared/1a1e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../../VTC_test/VTC_test.srcs/sources_1/bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \

vlog -work util_vector_logic_v2_0_1  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_4  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_24  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_10  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_10  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_0_1/sim/design_1_axi_vdma_0_1.vhd" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_200M_0/sim/design_1_rst_ps7_0_200M_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_data_gen_0_0/sim/design_1_data_gen_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_22  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/7860/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../vmda_test.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

