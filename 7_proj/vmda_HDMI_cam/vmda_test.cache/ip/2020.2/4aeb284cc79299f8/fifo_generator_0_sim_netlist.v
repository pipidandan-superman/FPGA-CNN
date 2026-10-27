// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  3 10:12:19 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  input wr_rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
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
KNi2aQQtksLW2tCh8Kwfz5SAxbf9
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
