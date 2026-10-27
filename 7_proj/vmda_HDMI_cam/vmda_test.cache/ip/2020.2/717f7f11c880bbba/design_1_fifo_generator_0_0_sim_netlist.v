// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  3 12:18:06 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_generator_0_0_sim_netlist.v
// Design      : design_1_fifo_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_generator_0_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 84096)
`pragma protect data_block
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
2bmMZt8uXgGb6bboRIlJYFbV4amw
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
