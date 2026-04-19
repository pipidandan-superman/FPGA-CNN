-makelib ies_lib/xilinx_vip -sv \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/work/vivado_2020_2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ipshared/4477/ov5640_capture_data_1.v" \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_ov5640_capture_data_0_0/sim/ov5640_hdmi_ov5640_capture_data_0_0.v" \
  "../../../bd/ov5640_hdmi/ipshared/6a69/SCCB_protocol.v" \
  "../../../bd/ov5640_hdmi/ipshared/6a69/ov5640_reg.v" \
  "../../../bd/ov5640_hdmi/ipshared/6a69/ov5640_cfg_top.v" \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_ov5640_cfg_top_0_0/sim/ov5640_hdmi_ov5640_cfg_top_0_0.v" \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_clk_wiz_0_0/ov5640_hdmi_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_clk_wiz_0_0/ov5640_hdmi_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_v_vid_in_axi4s_0_0/sim/ov5640_hdmi_v_vid_in_axi4s_0_0.v" \
  "../../../bd/ov5640_hdmi/ipshared/16ad/asyn_rst_syn.v" \
  "../../../bd/ov5640_hdmi/ipshared/16ad/dvi_encoder.v" \
  "../../../bd/ov5640_hdmi/ipshared/16ad/serializer_10_to_1.v" \
  "../../../bd/ov5640_hdmi/ipshared/16ad/dvi_transmitter_top.v" \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_dvi_transmitter_top_0_3/sim/ov5640_hdmi_dvi_transmitter_top_0_3.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_8 -sv \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_10 -sv \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_processing_system7_0_0/sim/ov5640_hdmi_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_14 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/lib_bmg_v1_0_13 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_24 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_vdma_v6_3_10 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib ies_lib/axi_vdma_v6_3_10 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/7860/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_axi_vdma_0_0/sim/ov5640_hdmi_axi_vdma_0_0.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/v_tc_v6_2_1 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/cd2e/hdl/v_tc_v6_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_v_tc_0_0/sim/ov5640_hdmi_v_tc_0_0.vhd" \
-endlib
-makelib ies_lib/v_tc_v6_1_13 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/v_axi4s_vid_out_v4_0_11 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/1a1e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_v_axi4s_vid_out_0_0/sim/ov5640_hdmi_v_axi4s_vid_out_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_22 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_21 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_23 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_xbar_0/sim/ov5640_hdmi_xbar_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_rst_ps7_0_50M_1/sim/ov5640_hdmi_rst_ps7_0_50M_1.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_xbar_1/sim/ov5640_hdmi_xbar_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_rst_ps7_0_50M_2/sim/ov5640_hdmi_rst_ps7_0_50M_2.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/sim/ov5640_hdmi.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_22 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_auto_pc_0/sim/ov5640_hdmi_auto_pc_0.v" \
-endlib
-makelib ies_lib/axi_clock_converter_v2_1_21 \
  "../../../../ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_auto_cc_0/sim/ov5640_hdmi_auto_cc_0.v" \
  "../../../bd/ov5640_hdmi/ip/ov5640_hdmi_auto_pc_1/sim/ov5640_hdmi_auto_pc_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

