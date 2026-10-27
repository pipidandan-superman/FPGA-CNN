// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  3 12:18:06 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_Project/2020_2/CNN/cam_vdma_hdmi_true/7_proj/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0_sim_netlist.v
// Design      : design_1_fifo_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_generator_0_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_fifo_generator_0_0
   (wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input wr_clk;
  input wr_rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input rd_clk;
  input rd_rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [7:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [7:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "253" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "252" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_fifo_generator_0_0_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst(rd_rst),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst(wr_rst),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_fifo_generator_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_fifo_generator_0_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 84368)
`pragma protect data_block
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
ilWJma3duxY=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
