vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/v_vid_in_axi4s_v4_0_9
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/lib_bmg_v1_0_13
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_24
vlib questa_lib/msim/axi_vdma_v6_3_10
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/v_tc_v6_2_1
vlib questa_lib/msim/v_tc_v6_1_13
vlib questa_lib/msim/v_axi4s_vid_out_v4_0_11
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/axi_data_fifo_v2_1_21
vlib questa_lib/msim/axi_crossbar_v2_1_23
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_protocol_converter_v2_1_22
vlib questa_lib/msim/axi_clock_converter_v2_1_21

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap v_vid_in_axi4s_v4_0_9 questa_lib/msim/v_vid_in_axi4s_v4_0_9
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 questa_lib/msim/lib_bmg_v1_0_13
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_24 questa_lib/msim/axi_datamover_v5_1_24
vmap axi_vdma_v6_3_10 questa_lib/msim/axi_vdma_v6_3_10
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap v_tc_v6_2_1 questa_lib/msim/v_tc_v6_2_1
vmap v_tc_v6_1_13 questa_lib/msim/v_tc_v6_1_13
vmap v_axi4s_vid_out_v4_0_11 questa_lib/msim/v_axi4s_vid_out_v4_0_11
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap axi_data_fifo_v2_1_21 questa_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 questa_lib/msim/axi_crossbar_v2_1_23
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_22 questa_lib/msim/axi_protocol_converter_v2_1_22
vmap axi_clock_converter_v2_1_21 questa_lib/msim/axi_clock_converter_v2_1_21

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

vlog -work xpm  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/ov5640_hdmi/ipshared/4477/ov5640_capture_data_1.v" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_ov5640_capture_data_0_0/sim/ov5640_hdmi_ov5640_capture_data_0_0.v" \
"../../../bd/ov5640_hdmi/ipshared/6a69/SCCB_protocol.v" \
"../../../bd/ov5640_hdmi/ipshared/6a69/ov5640_reg.v" \
"../../../bd/ov5640_hdmi/ipshared/6a69/ov5640_cfg_top.v" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_ov5640_cfg_top_0_0/sim/ov5640_hdmi_ov5640_cfg_top_0_0.v" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_clk_wiz_0_0/ov5640_hdmi_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_clk_wiz_0_0/ov5640_hdmi_clk_wiz_0_0.v" \

vlog -work v_vid_in_axi4s_v4_0_9  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_v_vid_in_axi4s_0_0/sim/ov5640_hdmi_v_vid_in_axi4s_0_0.v" \
"../../../bd/ov5640_hdmi/ipshared/16ad/asyn_rst_syn.v" \
"../../../bd/ov5640_hdmi/ipshared/16ad/dvi_encoder.v" \
"../../../bd/ov5640_hdmi/ipshared/16ad/serializer_10_to_1.v" \
"../../../bd/ov5640_hdmi/ipshared/16ad/dvi_transmitter_top.v" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_dvi_transmitter_top_0_3/sim/ov5640_hdmi_dvi_transmitter_top_0_3.v" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_processing_system7_0_0/sim/ov5640_hdmi_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_4  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_24  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_10  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_10  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_axi_vdma_0_0/sim/ov5640_hdmi_axi_vdma_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_2_1  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/cd2e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_v_tc_0_0/sim/ov5640_hdmi_v_tc_0_0.vhd" \

vcom -work v_tc_v6_1_13  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_axi4s_vid_out_v4_0_11  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/1a1e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_v_axi4s_vid_out_0_0/sim/ov5640_hdmi_v_axi4s_vid_out_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_xbar_0/sim/ov5640_hdmi_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_rst_ps7_0_50M_1/sim/ov5640_hdmi_rst_ps7_0_50M_1.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_xbar_1/sim/ov5640_hdmi_xbar_1.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_rst_ps7_0_50M_2/sim/ov5640_hdmi_rst_ps7_0_50M_2.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/ov5640_hdmi/sim/ov5640_hdmi.v" \

vlog -work axi_protocol_converter_v2_1_22  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_auto_pc_0/sim/ov5640_hdmi_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_21  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/d0f7" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl" "+incdir+../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl" "+incdir+D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_auto_cc_0/sim/ov5640_hdmi_auto_cc_0.v" \
"../../../bd/ov5640_hdmi/ip/ov5640_hdmi_auto_pc_1/sim/ov5640_hdmi_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

