// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  3 12:03:10 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rom_ctrl_0_1_sim_netlist.v
// Design      : design_1_rom_ctrl_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rom_ctrl_0_1,rom_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "rom_ctrl,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (axi_lite_clk,
    axi_lite_rst,
    pclk,
    pclk_rst,
    slv_reg0,
    slv_reg0_wr_en,
    rom_data0,
    rom_data1,
    rom_data2,
    rom_data3,
    rom_data4,
    rom_data5,
    rom_data6,
    rom_data7,
    rom_data8,
    rom_data9,
    rom_data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_lite_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_lite_clk, ASSOCIATED_RESET axi_lite_rst, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axi_lite_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_lite_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_lite_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_lite_rst;
  input pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 pclk_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pclk_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input pclk_rst;
  input [31:0]slv_reg0;
  input slv_reg0_wr_en;
  input rom_data0;
  input rom_data1;
  input rom_data2;
  input rom_data3;
  input rom_data4;
  input rom_data5;
  input rom_data6;
  input rom_data7;
  input rom_data8;
  input rom_data9;
  output rom_data_out;

  wire axi_lite_clk;
  wire axi_lite_rst;
  wire pclk;
  wire pclk_rst;
  wire rom_data0;
  wire rom_data1;
  wire rom_data2;
  wire rom_data3;
  wire rom_data4;
  wire rom_data5;
  wire rom_data6;
  wire rom_data7;
  wire rom_data8;
  wire rom_data9;
  wire rom_data_out;
  wire [31:0]slv_reg0;
  wire slv_reg0_wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom_ctrl inst
       (.axi_lite_clk(axi_lite_clk),
        .axi_lite_rst(axi_lite_rst),
        .pclk(pclk),
        .pclk_rst(pclk_rst),
        .rom_data0(rom_data0),
        .rom_data1(rom_data1),
        .rom_data2(rom_data2),
        .rom_data3(rom_data3),
        .rom_data4(rom_data4),
        .rom_data5(rom_data5),
        .rom_data6(rom_data6),
        .rom_data7(rom_data7),
        .rom_data8(rom_data8),
        .rom_data9(rom_data9),
        .rom_data_out(rom_data_out),
        .slv_reg0(slv_reg0),
        .slv_reg0_wr_en(slv_reg0_wr_en));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  input wr_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  input rd_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire \<const0> ;
  wire [31:0]din;
  wire [3:0]\^dout ;
  wire empty;
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
  wire NLW_U0_full_UNCONNECTED;
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
  wire [31:4]NLW_U0_dout_UNCONNECTED;
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

  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3:0] = \^dout [3:0];
  assign full = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
        .dout({NLW_U0_dout_UNCONNECTED[31:4],\^dout }),
        .empty(empty),
        .full(NLW_U0_full_UNCONNECTED),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom_ctrl
   (rom_data_out,
    rom_data8,
    rom_data9,
    axi_lite_clk,
    pclk,
    slv_reg0,
    slv_reg0_wr_en,
    rom_data3,
    rom_data2,
    rom_data1,
    rom_data0,
    rom_data7,
    rom_data6,
    rom_data5,
    rom_data4,
    pclk_rst,
    axi_lite_rst);
  output rom_data_out;
  input rom_data8;
  input rom_data9;
  input axi_lite_clk;
  input pclk;
  input [31:0]slv_reg0;
  input slv_reg0_wr_en;
  input rom_data3;
  input rom_data2;
  input rom_data1;
  input rom_data0;
  input rom_data7;
  input rom_data6;
  input rom_data5;
  input rom_data4;
  input pclk_rst;
  input axi_lite_rst;

  wire axi_lite_clk;
  wire axi_lite_rst;
  wire [3:0]dout;
  wire empty;
  wire fifo0_i_1_n_0;
  wire fifo0_i_2_n_0;
  wire [3:0]fifo_rd_data_reg;
  wire pclk;
  wire pclk_rst;
  wire rd_en;
  wire rd_en_i_1_n_0;
  wire rom_data0;
  wire rom_data1;
  wire rom_data2;
  wire rom_data3;
  wire rom_data4;
  wire rom_data5;
  wire rom_data6;
  wire rom_data7;
  wire rom_data8;
  wire rom_data9;
  wire rom_data_out;
  wire rom_data_out_INST_0_i_1_n_0;
  wire rom_data_out_INST_0_i_2_n_0;
  wire rom_data_out_INST_0_i_3_n_0;
  wire [31:0]slv_reg0;
  wire slv_reg0_wr_en;
  wire NLW_fifo0_full_UNCONNECTED;
  wire [31:4]NLW_fifo0_dout_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_0 fifo0
       (.din(slv_reg0),
        .dout({NLW_fifo0_dout_UNCONNECTED[31:4],dout}),
        .empty(empty),
        .full(NLW_fifo0_full_UNCONNECTED),
        .rd_clk(pclk),
        .rd_en(rd_en),
        .rd_rst(fifo0_i_2_n_0),
        .wr_clk(axi_lite_clk),
        .wr_en(slv_reg0_wr_en),
        .wr_rst(fifo0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fifo0_i_1
       (.I0(axi_lite_rst),
        .O(fifo0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fifo0_i_2
       (.I0(pclk_rst),
        .O(fifo0_i_2_n_0));
  FDRE \fifo_rd_data_reg_reg[0] 
       (.C(pclk),
        .CE(rd_en),
        .D(dout[0]),
        .Q(fifo_rd_data_reg[0]),
        .R(fifo0_i_2_n_0));
  FDRE \fifo_rd_data_reg_reg[1] 
       (.C(pclk),
        .CE(rd_en),
        .D(dout[1]),
        .Q(fifo_rd_data_reg[1]),
        .R(fifo0_i_2_n_0));
  FDRE \fifo_rd_data_reg_reg[2] 
       (.C(pclk),
        .CE(rd_en),
        .D(dout[2]),
        .Q(fifo_rd_data_reg[2]),
        .R(fifo0_i_2_n_0));
  FDRE \fifo_rd_data_reg_reg[3] 
       (.C(pclk),
        .CE(rd_en),
        .D(dout[3]),
        .Q(fifo_rd_data_reg[3]),
        .R(fifo0_i_2_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    rd_en_i_1
       (.I0(empty),
        .I1(pclk_rst),
        .O(rd_en_i_1_n_0));
  FDRE rd_en_reg
       (.C(pclk),
        .CE(1'b1),
        .D(rd_en_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    rom_data_out_INST_0
       (.I0(rom_data_out_INST_0_i_1_n_0),
        .I1(fifo_rd_data_reg[3]),
        .I2(rom_data_out_INST_0_i_2_n_0),
        .I3(fifo_rd_data_reg[2]),
        .I4(rom_data_out_INST_0_i_3_n_0),
        .O(rom_data_out));
  LUT5 #(
    .INIT(32'h000000E2)) 
    rom_data_out_INST_0_i_1
       (.I0(rom_data8),
        .I1(fifo_rd_data_reg[0]),
        .I2(rom_data9),
        .I3(fifo_rd_data_reg[2]),
        .I4(fifo_rd_data_reg[1]),
        .O(rom_data_out_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rom_data_out_INST_0_i_2
       (.I0(rom_data7),
        .I1(rom_data6),
        .I2(fifo_rd_data_reg[1]),
        .I3(rom_data5),
        .I4(fifo_rd_data_reg[0]),
        .I5(rom_data4),
        .O(rom_data_out_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rom_data_out_INST_0_i_3
       (.I0(rom_data3),
        .I1(rom_data2),
        .I2(fifo_rd_data_reg[1]),
        .I3(rom_data1),
        .I4(fifo_rd_data_reg[0]),
        .I5(rom_data0),
        .O(rom_data_out_INST_0_i_3_n_0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 88224)
`pragma protect data_block
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
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
