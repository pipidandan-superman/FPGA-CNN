// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May  3 12:08:52 2026
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
9nkeeli1vfKkMNBKWH+j0Gr6HFoCfIKhy8ja1OEUHJiAZLN6AiW/JDOyKTrDQbHd7lFDvtMQt6Yz
GbE5EPz5TwkH89+k1hP1UfZUFsXrvwjzaE60eqtDT4LvOW7w+7RXfEMUTTjcpUoeF9kjF67w98Y7
i30vhxQawEsw1ccmlGZPEddSJvisrhsKhZQsKy/AeW+v7mo2xjKUpXFC65oNmis+uDbnHofEDXau
dMfIdRJrSDsuVw+iL9qj5QtlNlEfmKMNT/7pkSk5MlHKIFUnwnKARIC9FfPvy9TO7VHofcLYxD0S
fX+NR2sjppEm0cUdVBdgellWpCzWiWPTey3YZJ5f+joBe79Z2c9cLzKBbWSWzMDHUMZtOla30MEd
OAqWmqIYCTxN1M4CThsTGZoxO5FLGhEv/ILudcfJk3gwPcgaGlghZhMKchz3vpGczrNSAF+bJxAy
VE78efwBXHFVEkslT82LL8njNCkZM5eA7XKL5NwzeZ1t0GpvcYmLA12kzzj2McS9sEgU7iNRZp24
p3rV+cALLmAEWQRloc7E9uOEFt8SLj60bSQRJBc2APqKREweCyyFTLfBZ7IPj1vIYwG0q15L+sRu
08GTfprMMqKpEYRJuXDQfnHCNrrHvqpGRbJubyUQ+JYR8MteLk/9AQ2IiOdFwwezBIx/M0V01Bk8
gU2UJLK1NNQuO2RToC4URLilBV01iyiHAk07VBnvSonkxFRZcxh+mpc3mwXtFHBa++NPAaDYgXFy
lqSJd86PoAjFyk3ODTudD3KIUCbAlzpgDTIwDcwXTPg50LFLsm3IzspybwBR2gueZMxsr8XptRSC
162bvwxqosKZI4oLMhENA6IvFqLxDUra3nIyxdr4GKgyYwWnGIhKLJPkzx8I8DxRiWo63RWnWSzg
JbaCYcrtgtP7xiaXsB9LgmiQJKFUSqx6tLq/XPWCF3zBBob64VvKZHeJndpJe8MXxzNX/ub+jPfG
HBxekAIxCHxTGzc2bBXD+Rn/xo2qVyJz3aZUTG2D07t/dzfKI1GPjBiTZgvBk3eHACAaaSCjTQIM
wfFefcgfY15VtXA4UJizJnYEI1RmtB4v2HyO6o2LaIAQ8lD90kr37XOLQyaGhvRiS9ysBV3Q43j+
CG4S7BI97ri2WaGv5++O+zXj/ec3Wq96F+xkCE2pCUp9Hfu0BqQhIQq5CBJgZwuZ4+RnZ/uA2wkq
NIbQVQAwW0bVHYISba3jCYrg0DAfruWKko+oKx7bMC0qfrY3UhqmpzGEiDUnWPrP0A1IoP9j3tjP
C9VaeWQH9vPWe9NchZkuRdN3hVTAR9zFmRyyUHNQ7kn44S7XhT2/VRaLXkRabP0jabJQEyaPbJjz
09OtwGvXGSsDwI6Srs9NPIFyPxnnZ4eZs6UpCj4IW9ZLxefP7qnH2l1QSrBbJ9TH7V3jO5jlXCs+
uer0mBF3XxrDfr3pKwUiJxkxxQnv943kjqiyaH5kAlw7RkWgLBQ9sPopUwvj/04KAg+uLmC5lFsP
tI7EhplkMwFqxEivzBDG8zt1UYqLFCZzzUZMyZSF3uqeeDtPNhaWXS/8HccDafyx//bMKt7qGHal
CpfcXfsyh+M30dm0vwJnHVo/k9u14XpqgtIjI7pRWC6PdK4igtrKW7AptbD36l5xte60S32+GFVg
N/NbVQ/clrTeyfKHV5nIIioV4dwXTXaYdTsdG9V+VGCugQGpcXexy2H06V+W5x2qJ+i0sMnjdjf5
3EPqTDKc8X/LtLP1dOfP7cIYroLmZ4pl+zwljK0jMKpcY1PQPkosq4Ox3oksHfexCj9ypKjA5UHY
X2idPrB+Jb233Bjc2Vgb0/fmzVZ4x9yT3MqIQnshG8JjkC5697feSZQk5FT6T83uWFbYXi7xv96f
UgrTooDvQo5rE/pNrKcx67eFSaNYuzSnNadU2R0v12pHDDHFOA3EUUrzK7SdfiThX7zvUDTJoI+G
/zKYgBJ/tkcXAjTT/DcjFZAFIJVbWPu5Ar5rG7vxh9tZwOTBrbQciGWRRbExeElAyH+0PTU3TlNF
T0MrVCT6O7hBCyoFgZxFQ58iR/yRNWwEVIDPScJcRfoSlf2sXgTs0P4kcbMOMP4k43rPGpHukJV6
00g3BYt+PxfkANPFk7wjImwV2F3aYtjd/72cKElbCpbWF6wghbmyp+XhlMZrTm/OI6kuvyZMWiVm
mC/FL1iqXlOzJUz9u7MKtWg9MajXuiy/uTicfhiSSLuhyy74DcQVw128cpSfQ0scad0BAM4Q3Dp8
jJ/y36y+g3tVh8UCQ/FT6UWVaHaXOSXS3S+zRTmWHkj7J4PPChJfk+u9SaEOSDhazSciVIFvma/y
um21BNZSVTm2v+EwM4QzN0SBIzYIQjc3KZeELuZAcqj49CwIbEVkFXAM3/4lLL7IDQlLnBuOyELK
W8rJ95aDH5FVPmGT60lkSgJY8ed37kHf+wlJ3E5zDuE9qWaaNTsT10YsEW2+2tTyj53INcNwSJ/R
O6FhMs+WlgqeHYx5rR+grb6PjXnyy6QSMxdCwlvg6TsD/WlZmMePa2P4pjELYcqybO+y6hnpWnfj
vSM16d59wmmVWjNhfhrl8bSDWXSo3NidWPFGB3rTvlUqrPlgQKrnEW43ObVVH6jRtoiGmRG7kRgt
VTesHsdaQxV4OPU9G54IkDvJIcUhgS+MFzFIa6l5EbZr0WiAT8Rf1B2rwdFI4Pl/bKmACKPM3JL6
EAlySEyM6p5jtO2OfUEl7KXJMzoL245er26ee4YM6R3LMq6Xf0t/D7KEVS2XvwqBeXxDnieRcQKo
0yrPqHreywwDeIi4f9ObeKXR5rx1zefaLPMaDaEQ3XHeS29suPm08MKdZX3Vd5NWNS7sV1TDk8Gs
TskWJs0AqucpPFqKu5c1H1kY+1JXhdIvh3VEH/YPoeYe9i9MTDNMvFdAcP7f+B7eA3LZFxqn9mHV
tgR8R80nxFMQl1l+e0uYE0JysbLrC16DKMsGL4Avy53BGNuR++ypFxZQMsZwPa9s4wHWkPaYogau
+3VOtB2F/kalqPCXGUp2fsS048bUhPYNjV/xRP4i+KHYSXdvVT+KBLc3qRiPfxc1y+K28RQyYr0Q
YxejOhJz7BoUvKdZyYOAjo3Oe2D3U25VC6ayrjBXjbpb53KoCeps6DI6wVO59yAZ6nFWY7Ynm2Dh
eKjl0IjLX2qzp6/AzytieE5Pejrx50+7c7l20u3dZbM79pTYU98ps9bQDGQjTcMURuImD5XjDQDz
pmuwHKwNThoU9II5z1seI34eQwyPH4zfJ+s5kqaJp+ruApXMrMZD37s0vR8bK4c+l7tGrIaoQ8ZY
JmQONwEPQ5mb0psPTKt1Zx3mbh0SM/tx8j6YGfBMViRliPTHCjpbM7JO9xRaCpjCCD0Ivytla/mr
xOxfqaH5xjOjvau6Gs4jQWzxQw6XUzuyh/hWHTFx7TCEtqGiKcP4s2UOz5HOVvhA9trJHJVfbZtq
9B4ZMkZWhALIdNbXVTCKoMJrmRDnFf92PyUWjCFfmze0qnCPurhRJBCw/yX5QfegHx0bdNaEduY0
MOuczazPDgF0pPG1A4JEJ2XldEkdlVP/L2FBb+/7m5UhyZ2XhZ2owWLJR1DrsrgPEXbUtZSuFGAV
uZqX/aI0VOiZCgG7YHrJ3o9ysEibfCpwYAxH/v2xRzvRZqf04vZLukqPf9G2p8BAoyZFeGtHoJ2i
yB38uxjOTsrC61sWTTH72OArifrUSO6Pj56TaFluvwNEdwEw7kEH6+uNfbdYoQev8WkAZPe/T79X
CLH2Rnvefu628jiK8bjs6Rl9QXuar7ZfBzM54ZjpX2CJ2WmqLLwFiCTL4rOwvDvGZAGV/gLHr07I
s4mYmx8/WigYCmdC6yltfnnEMYoaG53hYsr3Wz8fOlHxWRuk2gs4YQV8a/W+yEhiWB/0eX+UrCPS
xlYSyvsP9HKwgCMHV24jtgbC8pLT6Mb/m9OEY3zgm4LUClaydCJVLzMXJynYagtCC3B7NIOSOubE
qlMwiKINwYoRUMfQqpKQMrgqTtDoMkva35uTfjuxf6loW3HGZT6e0nUYOLRy/8mZaxVkzb2cgLrB
lXHJSAnTWm2/4sLoQAV5wL6Rlh8Hyp7ChWnBqrrpF5O4HHib0XOdG1iutAHsL1zemY9esn/owRI8
70ytKZuNmA4czQKLYprKsgaXD2m/awuhadr+dar0Wm7HVGONA5VNsROKYzDVSfq8afB63dkcyabw
EvxeVxiEszYrDoZ9xo45i5o+WRamXpeV8HqJnPPBRwFxSlEv5lsCsZtes3Rsu3r4WyjlJe5Uc/NT
u4o4RPdGYMgYA9KE9LzutI2ig1P5ETilVUQbVeVUalotU8GwLn2r9uskpx7Qptg9ibS0zTKIJ8Ms
vRb5e1QJrMeC+uvwQ4AfGfBfif8MDKuoOFem2/UC4/2niUzvipeXoeKO31OPLyCqnvip6K63PyVc
HEYlujxygTB+2SQiZPDV0Q1bcYrggkE6UT4UV+iUitbi9Ei8/xr8MIUE/BR29Y64a+eA55kUhsIB
8kG63xgWUAgonOFTzTFoqkd0kXW9J9v3NcfgPG8J/6e1o99hhhWHlWGyARTk9yglBO7vgLG04Der
fGyrxylmtqlsOuv2AG5c0Fi0L4LJ/SN2hcR+6Ocxa196xPF2WzhP7eJeo+58S6fI9BHWJoLddep+
iDeNaPYV9BaFd/BqkRpTeJX3PEEDCFjJRN/JkFHn+Aw8UOjU49E9/v8OltC9bVDSod8PCMshFy7v
RNsCzhnuUTcrMj+eQwaJ7cQ6uzTxc/2gmm8BWcwKE+aTdd/Bfdhrcr11z7QdvHCRkH+qJtZkNlYw
sWJQznGXHywxSDgulpf9cKQTlemznEz26eydT+SekF07K9HRS49x+9UcTMDKu/0GtorMbfR4S82k
aUHXGUgjrxRg/PZQOLTCkIy3CPHgkZQSYBfXoAH8DLc8tNPVQZYGCFcvSb4uPePIP69ZxNvfCh44
Xep2hJtIN2YzgkMxcp1Jqr29JGRplUXWd0SNo6iluhmLbVSWZNegqbmWRh/F8DMEPwB9iYzmf9db
dtCTybXIdbswhEqAVXqIYr7AM56hdFb5l2mHEuwpq4SvGjt++XmXGZFWcOQ3Sy+p0DANNZkqzMF9
KhtPt3UpgT6YJjuGD57B0pxDVhcqp3LszTUB74wLXnxVGUhWe3DXYF1WfjbU0WrJdBrTXw6qoPSz
DseADXIWlSv8HpH2PXbrzibyou/02ighmVR2HikpGgNwjadU8sjQ8qSNSwfbfXyu4vpT6xJNAV5r
EUMopwpIJO83XQbxkRbFFAAOvTRUKvh9Yr1dlPsapUVU3I5ES8zGxZEK+IlVvv+q50DhgVlxU3a+
wq0TYTu+HXQdX0EuE9Ry2eTGsSfIxYCL5+ZYK6MBHv/hNlqGPw2UENcLBUOW65VLLMoq0QzRRZql
UDEdqrfaDfmn1IR44z7UpQGuGK9z7qLVz0x9bUQJItaam5gE8HZF3SSbhv2xynIHEDWflsjcyvXK
FW9eXdH1ONrM1/h+gWHuPicqEAtEkh/ILhNQRMujb7y6orlcRZRYgxm0rRxj2VISvmQdgbmMFduw
EKu3sh5M48n3oZBBxh6F8tp74nywQARlw8e7gHxr7fILkXCv7zDKTc/xDMpOtWX4+9rohFvNDmCi
lh4DutSOxekAKqJxlOhuySK7+7c2JAvzlYCIegqZoRVC0Gg8TD8ngceT3Q9YnK6T7KP+uZpCp28h
1waPE9YWJpPiq/gGPIe0y0GxhirIoMd0eguS+RDZ6Vv/8VRWLwBZP+El3M6n3gfz3NiBgO7KlTRR
kzoRFE5Zg3hkZg65RhUrHMqdhrNtrZNLJDpDm8TUocNRF+yDLcYWtWlzuyAyq8d3wBRmvnHqcYmX
JHfoTx8raW/q9Ol+ev0rDBzaeZpihpGb71jjPV1lWqc3e/xfnr1PDRq32hLmI68a+Mk/QO7MgnOO
MuYl3m2aKzni3KmN5lC5vO2x6gqIlbvSUZyEut0ic8IE1VEmCupDpmL0xLSYuHVuPg+F/TIPDQQb
VPsT1KbwuAyzt/qXAIClTrpLWILjoRoXSKUf6hrmxsRpOuZ8204BcBq9hSw6voApcy8h+2GOmXOw
v8w/N6IDpf0OBNOBsNOeA7sFctLyw1wwCvu8R9zhSSHcGg94jQaVuQY1jq9TZIZaOcE6Dz7fbHc+
CANiKAnrvRzOX9FkGxZBcjbhu/W/BTsXhsVGpyx6Cupmn772VovdUFl7WTWKV8pBmy1FqJ8pjakY
3UbyJC26cscpBh+wXwzT4Uf+ljbDHMUdrdgP/I9bSQ4rPJDLddsJT2YRPNxQqR0Tknj0LTVcKAZH
o3pgiIh3Ne8liR3oT7t1t/aOgOVdKOoD6VZtkumITwFZa4qJPr/jJPCXS63b1vE9wvvsO/74NC+6
LF6brLJwaScmMxVIyWFHYfmdGzSkbHjFxJlLOmW8RZLsFk4VXuC/BM4EYwmEW5O4Z4iJa0UWZkLO
0GwUSzqcisS8BjZxnw+Vd84TU6ysQtOfKV2+x4/pl65W2xFwAbQ5hPXHnRCFLxB4nZF4nwGKTqcE
fDHDrnM50CM35ktShteZ4ATUSxRSnikLKuXGQLW2Ldb5BIIzKZWCi8Q6V8eF9XXdcQ/kboC92s/A
WKm8LYKXIENpTaEOX7mSbV4RGYNm/CTSFEewf15qvL4sM6ATQfBi3s5Ia1Z9ay5+MBkLwZsib2P1
FY2jNnJT07Gw/PdH+tlb8izwoCnYwAms6NKwKto6IObN8YWla2sLdUfgMY2t+43geqchb1FhCfjX
sYzCH5MX2uXlb5rw1Yy7ckrKSLB2VU1rZpSvgNxTV+ttHbVlXXZexDNgGDHBKy6s9MGVXkFM7V0A
R8CYLQU1tcd+STyu/5TLUgvWKdstaWk+ufAp6X4IO4Af0hmu0bwx4Mgd1tNXzkIDhC1Z7crrnOK1
m2ld1830mS/EiqZJLIwPuyC7U50mGH2fejccO9QK3XXDsk5OrZgAdlWt5LNIoF3v3Q6Ty/GbkY+P
0lbqI1/EBHQUZViv4hlI1fuoq/MKGA/TGMczauPuLEfBP56NwIKheT3JORoNo9ANJ+3CbFFTHcTD
RGQAUafLyXL5+6ourwY/6miRnMr3IrREgBRcjcEULvVeuXmh7zm0UDw8otlHzrWDfQPfvR9SmCdS
BVH8C7ASzRvEnUpwL8UTHcLwwkJ2Bre1uK/vp9n+vPGODmI7AmpQWrwPK7eYqhCwUJYBtky+lpjT
wHeFBnlC9LEKRVOLDJdi8KjzoRv+yECgdHyQ0o9ib4jxCUkl4ciGD8/D9Fpm2JAcO3CgD7hIFzUn
IOJeEEbP+jt+gTsQ9lgwmAGJGj8dSPIq3j1RziGaGnCCmpsiMTKboDHYuWsjHBZQk7AsEP/JIFGf
fntUIM3rFn66/bHCaMhE046yzNogmZjlr6KJNupensIr1pJt9pT6EF5gqz/rEEL2ariz7+1L7AwB
sICmDqindMEr95dIt5fzP7uMhKjeuEHLUS0NVJCKOq/nEHpVfnjst3zVamwxyQr8Kx8GMLFZGwDW
6LfpYFjyHHtQFcWVpoUGB6eCceN+DlOn/5x3NVKwGwndhVuEvTYudS+uIgDoH7TNn+H+lFqfcnFb
2jdrtZNmrqK5Yph0V0xVq4+2s0hRYx4Iakic459wIA0Yjl+F8T3kYe0fK/m/ajxlzqp5jB+PbZLw
N8dT1ErHSdYrvbuP1OrB18g/xBKOjEpENlDvl/5HqEY2uHllBMIMW9kHuzn78RTtxW34OWpQmshD
Nv3hi6j2vQpFY4JLy2kGbqk7S4j5mgCm/GX0R/Ix4Ua8+PfGCtCCi95O2IGLPfRC0LGW1VDR4IcE
JDakjGkHBqa5a8GT2RH7uzQkTJWwV43egX3B+WSMogRnAtxAftvDVxvt4WBxi3XeL0aF7UtCzPZ8
elWQ9nKrOYjAqsH9JmJWFViaXlrhP7G4xyRnjV7ti214bTnyAZk+saKKKQbwKsY4QKtrnBegd8VQ
YWzAH9GOI5NB16YRVnGXKjWoMhn97wNncdoIoDke3Ps3aep5SIft/l1DDPrxn4KzlTByk/aPt3oU
w+NxkQn7+VGaoFkb3m9XmZ/XBvDExt0amWhJdVR4w0p2EJEnPI2mQOVZlr4TZmX8rAgLS9TbUXeq
hqqEIg+oBdgxXnFeKJCV6EdhoAXkpwNXhj/wyujoOlqvBWKOJcNIb1pYGqeWILc3qcxX8FH0JTFp
6kQ91TGWTiVWPYTIHQNuzbN6fxHPKkcfnKuVMxuM+SO4ZmRsOu7JeB654LWquvDS38KSqeLsfWbz
BBucyMzYM9MExqi6+RdGxLOCkGh+11XmgE3zCGS9F5gB+//wyzjiYs2EUpEf+k7KLvuIXmlZxjFK
j9bLJQtNvj6p+KWFlSghkun+fPSOsfP5qu33BpSEHcI9rxoqD89MU4cp4GRXp+ew8jWCpU28qJr8
UAIU0b10bN1xQc8e3pg8sjuDr9dHmlewyqru1IJrevWv5KSdPE4s7TZyQLxKZ8BRteArMZ9T1Xlg
UfsRI4ge16DH4puvHIdHzzfJjvTVSDjxeDjAmSzn2TEYqoPkXJMlyjMyTtxR/LGmnBSpeRWqOApk
0oB2LyKuFJBJqpxuocA8UBxKaEtQl8ReOX4lBUrkDKVFq9ViBj/+qEwwLE8Y2+rEStQ7AXZbRU+1
Of+cT3qEtzT8xxDGLipnnujXFGWxog717fuvKcg8o0Cs94v/G2kDPNPwWKvGVSXkZ9FfFoJQr+vN
g7fgH79nq9XG1uXcAy9OmAZ2RTbFyVvO6VRpyKqX25YBrsASyK5/lHZe0ERMGH18RaieTeqE/Zyo
5FZ/jFsq5zc2mCRfve2aIoEyppx6NYYzHRhhGwQ4drOlJq08jmCJqbokyU0J0WH90WJYl2wehN7S
gvLHkuF79boxSKY/jd9XqdGkJbbFq5aWbZ37GN6PpGxNc+3ajBE8yBizOu5uWvzr/APhovgz7jo/
fp9tB/M5JhXnF8agig34cOYoCOa3gss7kWfPBTSz7hNPFWHwqhj5NagdfVHq679aA1oNFdBKhQSt
OCWrr1YYNi18ytsdpeaYZy9CX9TIL0+zatuKKwG9bNkkI0F6YdnCTCk27/z78LJz20RrlNjZhg+A
mopLSC18heAtW3LF10J1vyjyxEpfvGqTc0RnLWsWdSjnMgIWuuLClO05MkO6Yzwdzatw5o7vvWMm
QBvyWYA3C7oOhXrm2w0sS9Or+tyrRasG/o0P+o6qo7k37XHEcbPHL4MQnqcgn1X9XKLOUvkhLwu7
g2NoO2UepskbPA53ZfEz/WKCQQW24B8OIdXv9gaECgcBN3uvFbemq0C7kPml93bVfZZnkC/w+L3+
dA9Ot4THSG5Ub8ZhGQS6CNLuNt+zCknaz/Jf1rOZifkIkEDi2egZrwd6VV8McdpUNlnNJ12BLXg5
tpOAKguWrNLmAwZaAQMM/HGCt1BfpO9cHQc/adI9KbqengFdLpgLceGuQTRSDdGDxobhoj9dvtkD
AC96lpD4aTFzqmpGqofmQc+0vxNhXCr61XjF9wo6+GpIrhd1HMTw4eclTUJcSmnIkM3vsAkEh+IM
2kqjbzkEIlKYzo6K5yJq5lnC4BqIXGoeWbOX7UdKdHQo7JZ1HXOFGCU+XeqldngOXX/2tDrMIFOA
K6qLDZDpqV2kPy7RcfKqO0tFpfAHEmMZV0Py77CHfVkAZ1e53h/8d3KHgjX2VjR6tn4EXqtKNHe/
EzvNVMZDWcJJF1OCHeVn9u/n8Nbdv93bNqUY51CvBUBC+P7vpVeoPaFyrEEBkRD26ngG+XfxOIHH
AM8yXngFMHtnrZR09S8dBjTXHfO9Xw6oi3gTr4CusNS+lHfmGaySPLU7M9qBfw1sziv2NnZ4VtGI
Gym58Qscagtu+fp2mByAhUPyaSIiloZ3oZKb6S0JQdQgST6LdrCjYybG0sWjAUPCZ9BqII5CY19W
njJ3jfcUMvFGEu4udjCNKLEJ0VxYMM/CWWcvmSY0h8Cuw/T8F86W5xLa++Ga53kTGxbcpQibQyrP
clGKTgbtpGfR42iJkOBGLD0KefUON4jcDco7405KSD6KW1iw0+1gfQQgDYAfzRDAw+pMSu1l0qI2
yRj1qw0LqJJjBdry8pn87UdsdG8e/GWigAMlBnMrcjPC+wIFLU8G+cM7FoRcEyjCrfLyd+0SmLcz
yRSHevo0npibl/UKfJDSvMTrLrx30XWzawOHolWbSZiCnEIm/2UKjcLkyq919hkRBjF2G9aVf1L2
P0Vni6tPOlBRv0g4kHJipig0fDhdkURjdt0GReX3oSZEobMHcKwoTm6sgAbLZhwl2juED/EbXi5w
v82v8qyv6fxxMby9V5KzEpeo0bRUhKXfZ8u68tkNkKNJawLO/tW5LDGNkPVpQnJnICC/cSk3ti02
4OOyT1gy2GS7qKEgQNQg9/ugnj9uHFd5FNxqqX3f6+mSoyBaIaDWftp2zoOSsmcvAHGavS6kjJGJ
nra8lEGLse5/Elz/wPooWetcMvmq6/YUhS+BmShpMWLuccuEsSxZzswCXrEDHffbpfhF4sTP5hyg
pEj1rEa/wnG09DXLGYHFhjnYWb2hcb9HRwpXTTYLt3UTddldFk7WUEV2lf0N0wLAjYicCBu2ugiJ
fAMGXMdth2lrfciM9stGQs9212dbkReRwxdKTt6yR0GUDrcPQ0QQuKrVeEL+iDYnvVY5x9Rg0m4O
HIlkC7fqMuAL/aKGDkztzD/mB6UeiuyuSHPwElTwKymaWiljwDMt+0l/fiT8OR6QHKjd8Z0dcrsm
McaNPkKA2BZOpBOHXDDc7E9GgdH0jBags8WsRw6pt591Aw229IwomaXtOzBGka2kdmTMRd1Hl2v/
/rJlCBhAVNzowIL6hsoVhyNdw7lEZBgKZA267I9HRCttqCLMuTCtGf98ZsYOHwp3RXLdAfLIm4Gl
nrpMp33ea6zH3cV5zX1sxgg3PpHdckgSrZSaRg7xfD0jEJohZK3h+nG6yJdh8h3Stqn8E9lpskHs
shxAPKBMXOIXo83WD95Lq0TnerhBk1mcqQd5kpqsugfm/R4nKsnruW66uFe63IwVNyBGWWO8mb51
pcVIbLr0ApULxqNbUbuHHhQevtQ5H7/x1JqfMy1bRm3GxcvjhVxuLmc7uGZmIAUx9Dmgr5mJMV1x
WQSfp7qGZg0+VgyaNdsYCM+J+KkRY1C3rPaf4kgpb4Ze2oYe8xZMVmoarHmOo+TsBVvE0134HSSr
M7JTIRYC8uz4gf0DUXa1SRaqGBE2sqN3mOa8+G7eCN3Nu+nA0CYZw5NAW1ycqtvZmWADjlubt0SG
3fqVSGHIRA56UcICLCHAdNG6LI690kkoAxFcrB8VhLvs47hYKhGVfBJ2PLkQXwnf4D5gV6/UXpmv
1qfaskVIkdmeehD0IC5Dw/CzgBCljhx0K307pwZo8yne/V4LPfv7mO/MGRv2fbHEX3hLQJT2I55X
LJkQmdNk8lG0BZDFw2cRoYEbV/w6nh0hie1YZ+Snmhq3Lb8/srfXMYmQ8so2l1G2epMTEImH5LBA
s3JW6CCMel7RKlYVdxP/2eboq3J73BTCOEFjEJa2fz6/KOsBO5onZtxi5Qf4quJe/lJbBvuRHHgF
y3d9rgiqJZR4tiQGHX+7y1NO8I8Sm7reprEIqdoqwjr4PNaBHlZyrNl23V6AlGdl2+bGohey4vlj
ODzWaWpsUl/wwwrih/1nJnw8WQDhLfcBWmhfhqCtwMDzGc8gwRzfXQOyxyoRy4/72T8S1AQVQYfl
1VDDGkabgkBt7kM4YRGJ/AeylfuDbU6eWe4UX3Z2kw4u/grmIbuLKEL6QhCDaAvn4tQDEOw3j4Cp
w4zJ9wLzshZiFkARLQ+w/SJc+C29vmuWK92pXGeR4xvKC6HV5KSptsLg9ksVfgzZTVhsDT9789uw
1zvkw8M4lliOlRlHY+oNLZ8nfcPV04G9DusTiygfJhEElIQMd7FYV5sB653gzlNIjHMU9ks1j30v
uQQPteoBG/J9stfOdyND+WCUbawTpgqvhoIaW/2e9ugetcyKhOz1VlRItZjYsMogXltLTA6gOM63
PeqtpZZ1mlst1rL3QyC8yUDQ4sajNLBTIG5qLVfMG2Ah7WzrQAN+byriDMDLoCtWJHq87bAnaieB
liAv03Vg+VFTYSXjaWiNlT/iH/zDSix7GGI1X8oNPaEMkQazOA2UdfQy1eIS4QT3m7lKtxOe6rY5
Ji7MYBacnlYARpxct49eNms3lRIvFLKhaFBDOD9zgXer4TwvCmBE2o+a/7tybxZe8a9vKbOcvRoq
++YyjZhCCJhXGUMA8S2NQTkrP0FpMi+WeAV2Z1R2oY31VYZcJtVog1sIASX6vxaIZ8MlOSKkeGLu
S5/XHQ6oJgF9XmUYDBFdz6bzmNPyxWSUEjgWewnT1tjjxG6tFFB8s8TXPxIlL4RmXfczSefJo2k7
j4+s/ZMh0ISypiWLb+Cjz7Nrt+ztetL7xFqy6ZSQVgKbRN7NhHuLZ2RTM06pb9XjGmk3OWBNe8HI
K6hpz3lHFlpUhibd90mSw1HxNEkxurfM5s4YnAggZiXG7G2Dj7SECJ5y2fNUiaZKIUP5mgi8lb5Z
7/19MSPAaKE1/lMG2yf2bIf3Sd8V6Jx9/HnwItIL9DJS2HGuF00r+NEbVPzgr/x+9n6wBW9++FeF
G/bgpGZ1UNXXUs/zsFzqn6jeCfY2gNkAfTM3xRUTPm6vyKdagFjtkmg64+LGojJecNMl4DmYAaGl
9heG6rI7OfcP3FTNIqF8ZrbVJWtLxa7O1aoB2Jx6gSqnlhcUtw/14jheQ3kgjATwdEDad/We8Dqk
/mtuUokIc9kuY01coveR7qG1oBFsX3Y73HqwJ2EDKyyyCZawMTFXvsimH9+RC5Hp/uHMsBXRIzdh
fDuqN6nw7l+oHyhSSOtEYhoer10emXLGAnoGaCwCCH50EVVdYzwQSoBnMfJl89Ed4WIdjTqx/5qr
OSw1cRJ/agGJT09tjQ7K8YX1dMczNtSLLus47MqS7NrAozLgvW8dyIY68KjWCHaGKkLIDRobRUC7
WwSawYNg9yHD078DrY7v+YVX2f1LeOao+GxOb2vQG3Mmwm4ra9Zaowd6W5CXcdTR1lmdyUdDV9Db
zdmoHnVc6eOW/ZLrTT2Oyodw3qz3JAREzfOqTiOC8GVZV/gkCd9iVrtEygLQFBAH1X8VGmZJFD5c
aL8zLTcpONuyXpn4O7V6MPsvlJtno5qqy8UCxNlUtM7QVDRKiElHcX73+a6xFdRu98/eRRafKdOn
51CimEOlBhpAcq9Ds9IHRoeeKt2K7MowLVarX3wPN5Rs9jx7/5BybgL9uIhqmmu4bgOydetfv1VH
Lq6w9lPkZyq18UkiXg4u2Quw8A2SIwNuNqjvPwyE/3Wm+qHulpIVeK0VMFrtvAr4kOSlQMo7e2Nb
hhfgYEkcUT01Ic6WdsrkhbiI6Ceu2okKdQW07hlPlzQ6ijNc73oxnRm72ozzRDMF2WG3DDtuJa82
r2zg+y6dq0BIR5wscs5LcD1zxBWhFV7yqswQs5qbW487e/uCQO6evHZ5Jx8+uqm+ybT/JuWUTtd2
h1NSGRxu6ovPyz3YRwXDHP7S+5a+JJk/AqDTrMAYem5IPo6jQNB8mC3J2ezICDK9egMAqwB2nB5W
sUEJI96CSgesNVpICOwUPxeVRJSA8nWse36+gEyfhqSUIYUnowxIEJLnxvRr+JyocG4RAELQpUP5
oFs1au04s7Jx9xTMxADDPKNrx1ZYU2LzT355nr5q3tPgLk/XeQx6of+6ZVVV3k2qR26A/vQUeGdi
wfhblqUBsFCqWho+pqXaHijJ/ursbKEscOek16yuWNByl4pyMI5IWnPYfWUiT4D4J+hE73U47lHE
JzvVR1kAPNqr5nslJvBkgLrgMUAD3F2Vx2S3Wcpzj59AIxPcO2xN5Rm2QYc+8U8tpLkpWmmvBHxM
+vGQLbR7EOPk1LaUxazw+NV6i+aAQPLhVEjvTgb1JSoxTxiGdzJWkZIbGaHYDSeQQkUZLFDVWKlc
CO/umkl6ffuvX3lAe4G7ec84cUVJHbJW/ylpfYo1F2XYWSz/+UTVXa87ck5anbGVcJ+awoniaRoS
POSs7fDhxfM3QuLccjJYBNCXV0wOmHiENOjlJ+K5tR43nw22XviVxOPRuZWrUzeUDPMiJg7vi4H1
Kp/2h9CUz/+KkWn7D0HgemDvVtsvLifoXviJ+q6wptKjF+W4khrqy3XaXeao0vTCU0GPXbjG60+O
Rv/BwbmkBMrsKaqKsPFwj4YpOiBKwGE2h6Na60ux/V6uepct/y1GiYHD1QUaB1UwMkLkLxEotUjA
6SZagqN6Gjyh/8rYlxiix+P5pRnTWZ0UOST8KtAt5QpOsfh+EMpib+nrX7JnCs/ZhaKKfL6wrb2I
Bo22Vg1q2lVfWRz5L44bSiqkJeXzOcWaIHVc0SBLLsplbswr+kxWHFWsKZ5xU4zkPWXvF593Oqze
oBI4WrUsAzBeonIhtL8NqOl+3ilRZ0VXqVwu2bj4AXvY80lKkgoHgNp9SP1/bzi7n4xw9NvN642i
6ZMJ9j2QK42LBNDdmKGEG1c6a3bRsVIG9fYe6CZp99aJ+3hXc9oMC5hW8L6KnANpp3ERkXuMls9I
WEp+yALT/IgC7XLt+cqJINfomTRvDNAXFB18Vg5k8CFDpE4swVCAf62BV8TpyyCr8odPSPja5NYy
XDxDvTMQ81u8o+kYyQD7BrILpUo5abcQUMhoVgeU3GtVK7lZs4s5AIqPbPoffvCYuMsd00SNEgKZ
ObHAsXfqcypgT7Wj+E5pjnwOasGHtRvtk+H8IlIyoxLAZHuzmh0h1WBcUbfk/dlS6BemaqVt9V5w
FX/Gvqs4vRtoORTmq2aWeWABKzbFIyAsELVAJtZYfvU3YxpB6M1ehQAj2+LjaydFiHd7+No55MHo
kf0GQr3e430AmbPis1jRPhR2AkhEh1KNxd2YqDUv9aQiC1+VKQU5ZjEY4EBl+Yo2nSznGjdWMpJg
AbFO5deLeF5Va7b01qC+UQCp7vt+vcS7VI33Sd+9dOKe9fCvy+vZUF8ezmowQDLnVKpHDCSZhO+p
CyF5+3aXlYL3D8ouc40u9OQbmCix5BeKqhYmFOlGQhvHyl2L62Mq1EDnuRM3ptY87QYUa1OZ0Unk
4JS8NXPb8utziA2iRdlAXz3sVVntE17uFmklGg4qN3OR0rRl7SL0lWUMEcp3CbFE86b6ERqLXxyg
ibNMIGawnIzIRPL9hoqCHWvf5d90xhup7jEfZuALyEYoFUGFKM2JbDOqYUO8L2mqYzJMngBACHU+
svY3ro0OXqy/f5NNiALbRrmkI+QDF8XWvYwDGLLtgQ+fJlfqlNPgI+CA1klS/gxR+r6yihERMEVh
Vxah8gy9I8ybTid54YWeeMTGdmI/FtRTxX0MVl0RtmWG6YlyuXE6JWFZLJd0PbSYyxAvsMokUH19
3GzSSiFZAem+x9b/x3L52tZY3IZxe4J6F6i0mcT2KrIr+iuDpvr7VbRVYiy89k3JrzT6EmOaQ4TH
tZzWy+uZHUL2wahLcRq90TCTpiIsyr2KYqttMn5K0WQkhGF+OqPPCOeS47VozyFO2xZrsK6WSW6E
HPMrsXLiINXd8P65I6eZxSPedHpmQsOnw1rGZdt4WVwTwKfyePp/ibNDkPBzXcpvCN0UzUwT491w
B9sL/6iS4Gql9olWpQsQsjEfrUP3XVbTOXz8ezyl4yqOQTxYkqoAgw71iV78kRNXHCtj2bf5wE0w
mDtO0W84azirItFIvB9uMB/6owCFk7nELerXV86sBTd3guyf/dvPmu6rXy21YcnFUiPhQp8HP8Gn
a1hyBQ5La09H4Q6xwyO4UNs+ORQumk5Pr0N89g9tFxYRHm5gwPnzlQuUvN4UAVtKrRXEPD7gvSP1
iwsbNjqIdN+9YcCLvpcehm2CDadXGr5UD1AKDtyB++6E3M37ySOldc+niSPbhDGX5spHRTQflQEU
Kj0Bt9+RFwi/LHA78kbz/zyOZ5L6TrkbR0YinDQuDYxkBDsp3hBu39MTzuq4uciqFD9tdktRhLbZ
bJj81ExwVpdFSVYzwtqUyTQOshBA8uffKTYgwrVc1bbsPmnelSAW7qERcONIN2937dZlKEIeIWBh
ohgjP1rHGvTs5RRm3xp8SHtyuxRvt9oWiwINsViRPelU9KAUNZKC3/sVw0pyc9tKE8Du6WyjgmC1
6q1GC4cyiGmnJCGTsbQIbqz+E6pWbUgNcsOyX7ln/2fxLpHF+x6qKz1iqhCCp+lKjij5dKQ8DL7M
LpCt4RIqEXN5GtNRQcrCwSOYI5DP2JpzNmTrR2chLYf7IUFKYkq9MjIcAUta5VVBiKsdVIg+zOkJ
VHF6WxWplUoXoAFXm24vezlrzmIgJQDigEEZFK4k/ctQN1R38TYuRVfc1kM31RrXIH6Wz0c4rROe
EF93nlsPH8GKFDyctwU9dpOpzELBSnjOL7/Yza0HJLFzxxYdJClesZNiY8oDtKJhvMA3F7Pb3HQa
a/Lre86QQ/KgKk2ZQU4kWMb0KLdANIU0bMzCIckAuL3+h9CSi+pbzFGbRJhHJVaARap3wziB89Dc
4ka3Lm0sZgWUkJ56LvE146KPmyL0tAgS1pWkuekt4eMmynVVJDHR+QTpiMWA1VmtPiL4hnsFuP/2
r6Q2SB6j3AkrpNnP2Kjv4LyS93bJwJYO2UNjH54ziqjuJxRGYq/USHlfebkbJEVIcb9Xnl9zIUlM
zoe1G5jPQiCBM3sMvWCdj3lq4m+Tlds6O4pTRgR2029P5LjRKjFEGv9Afq3Piqa0ITqeaex9Ougj
vbiR1BDf/0nOry4P7KTctlbPOZxMm0sWNvt3XWyOcK8mksIrESbK9I+cM7JO6Ehh1F13KOmpyKXp
DAwh5AeBbdVfrfGW1V3CAu4JAnj+mgJfkRuU+FUqd1PwfVQDMGAj98TJF5lhEO+yuVei95VRn4Da
p/AT0WBbpI8ZPahmv0np3WWMn/SCZSEm/Sv2Ps4Sye0nYupsCIcsz3VR1mIN08bsug8+vq8BgGQH
jyidbWWeBurxa+RRP7xEGBkgRYmKS2T5n8LJoBgij1/YDDzGeo3gQGTh4PgqweBepTDRZ1zvxxX5
+Sr3cfcN1XBN1gaHQnlgsak51fEGyVA8jRpZjnNcte/Xg78E5Cu6dSVeETp4+Bcm8eJtfKeikXtW
sbIoN17m8AhFMVfwFmHNd0XN5ccnkVASdKVnwrRlUe/cnE5TnUNk+cxdstdBunTeg26huwzj2L4g
FtrWbMY5xI15oEUoh9+IhCBtNc0v2wACQzi1NrTgspIfqDIzy+WCNs0HF7HT1fX4mjBePqow+gC9
+sAm0nbA5F4wi13vtjYbiZUDp3pTj52tljVTzBe9rWTX/f5SASLlOmEkWrxMaqn+YXDXdROztf4u
b1XrsQVSl2qZWr428YdHBHW4XnRRr7fRcl+/qFRg6m346fZ4Pq04lJJYVEznrIPlxwfSbc6isbi6
gdMD1Gn0NG1ORnjtdiVxq49DcnEaRBFS34n5gdkKT6QAW0/zNFH5+y0oDGzdDRyfoxYt9xubc6Bh
ROPynQH42ApYP7hq4dSG8LObVxFfTph6bunumW4d8oxtaK+T1GWpAGL9t6vmS3U4mgg6EFdYK6iv
l42yg+8Tz1XQWNoLlJPsInC02hhMHbAQ6KiiK2Mp26qFa3GaolbXNLlbG0LRV4NMpKeALI6yTbpw
kXAvpUa+kLSPcGCD2HKxDdgIvSgUq3bCos7wToWZkKFnOdPI67mRo/QbfRQqUHbt9DZpa6tvJI0a
mjvy/OAb/B42A0LB6q0/4SVKsW4M/RtkcpHjGGZpSWKOI5LxPjme8zfHmpfgnjITi34rIOfSF0WV
oIviHQIB2dK+mdSGOXqB6WEA6u/uRlVkhW4qgn+JIPNppR6DaD95jm4wxe4HPWMatTzg2cLsi1LS
FmA5VDhSrGKpXN1SZs5u73KlNAsPswpR88csYu0HucAg/UPznoqi21nOOdiZKGFTbohkjfIDWMpv
bW54PQ1w8lBNNHU35A+k57IdVw3JGVe1vsi/aecvONdtowhY0Nhz5cTMLOpanaGnRZrOaoQEG8zG
5urmy54E6xYkFUmLQDevgDqvujADiPJAMWDsnoVLdXQUb0M32ZomCaHyWRIkbNOoR/0ewB9jHjEv
DFPvxJ+htS8GA+bLRko/RWQdMbmMrju1p7YD3yQI9FGBuBgWQ2TcXRebJaRS9l91uOgrREdnIb+G
2UvwE055KYksPQRqFjPpkscvLIj1aYhAMzOHwLXER+RaWIm8Wkw5nEJnK6e6wJ4H7QlJ1Z19y2ri
21Lj6O+Dnpz9NYPOkI5VJ+jb9vo+snIAMaytO4UPJxhdPbMrMTVsk2kBZRBOjAvVFsMy54msByFy
9Ma45IQTe6BvywhYPyDTmERdR6VQs4dZfHPClpoSKCEhflIXonWkSP7NC2P44c3wpvPwjZyLVDLk
DUD3bFoWwPSuLFQU2uXC02GcCNEL5Nb/M13FBDF7NMsnxgvHAHI+nOXs1302b1nxOYdDpvBo5luF
TZZhhXk1oek1emcGlmKnC49+39Ml4dYe7LdQlwb5TqNRSKFGjNZ9npqBAy7FoUNEse0k2ymv7kXB
KemIF8Nw5q5HwfqoXUJ+Z9f5+7WI+fC6aWFYydMYala2i8qRInAjlPGgH0cqUEYcJ/UM7ywoszG5
PKSCUt0iUCXqC9xZXnZeJcLQj27HeHHvhI1B0R5ru9ab8RLm/i6LNpCtkTpN/Ho3JT4+T4wT2dkN
C5JRRcv+wc1wO9vqWjpfaWEP6MZc5jCr41eT50Xg7V1y+3II+uXJe57SNi4UPIwyD3Js4RAUXDqj
I87dMqDDa5Y8OfuXSo5bpejAdHXN3LrxpEa5lqQ4kiReLzLn3A09xrjI/M5s6iku3nLFdLXV3Tux
aqhKSpYmVQ+3eNq1pCLvGxJspLt8d2w1vEdWrZvF1QQSy1d47cj/12eTHDzNn+J99trO5KSAagoh
lGY611EWq0rIGg2uZ159bJ8tHLkWT7k/A0Gp88NuO2T423y8Bf8pVKeBihkdLecnhl83jJM11giF
Zzn/lkFBH5UTn9J/0yGTY+HxSLHrD0SYu3Sx/3/2qHaIHesitj0F06g5wTgRpLpRdhfzVkwJsToJ
vC/Yen9aXs6z7/JnUGK0iQVyGXo3q28EW4ueP4zPiubnvDcrX+YrOkvxt3+13M6pJtnG/EYtkGhm
rJKILio7BA3o0iH8/+BnDt5XIrbt8Z18DCF/Rmi47fzh01pS/PltQfdwB3SugYUlVt+nwwfNa1gx
8xbr5Q3vsHIdZMDOiLwLItNjwLypx3Uo3K2kZisG5DDYPqqm6n/qy0rghVziVelR9BJgbDxJ2iHM
05DiRmHHMnlTEEbOteb1FFyiHHtho8kiyokq9BDpALCrc0+xBmVMq2kyqfyovJDHl1HuGYB9tN3K
HRKw8NRhQwF9lgvCt98hZ994E/Gnu4mbjJpwyuZTNtMPf2kg+ycV+0f/F8zQldvxKnolXiGOEOgC
CAZXXUWTMYQuvKLy1abx6tHqQuhPv5U9nL6v1cYY05rduRXO6SSqJA+LivET3uI39/e1fDV8MDVW
QAbiAipJ9r3/IGJxbxz/nVSCX+PFAiiAuEnCieUO/LRiIQ8AQVGSxKJtUN3tidn8TOSEayvh3ZB7
bZ2rppre41HwlHaN/XGne3hscNaCXApqRj40/F98TFHblNFLrPrCXGZeq2sHEn3++9dNWlZE/oGF
5f0o7822YuhbP+T0czwDvpm+rzA9FxN+m/ldlt+uS4rSZPlGBfBfHXhkrK+GWPJd6eYEZSPVQKkH
qAIyjxo0OPWqIIc8AVxmzEsTcxrBCSdpJjeqsBsT85WonPYkPKPAQrPRp9JMn6bUh2FX+pOogn3Z
sZafi6UGUWB1sG2gRzXpGbwcGwmpvhHIwUtTZu0VXNhk69m4W3U9rQ9L4lJF+nhRPAskZAN/gOGT
zxBd0CJgXH3rGZDJog9Jyz4sTFm4EcWQFHHOnjtpiWOmqZwGYU70WhMrqbtj8PGGx5NVxgJ/2iZr
F/vKz9s5lMCnpN7wrFBNwdyqwK4EV0w5izRd5RWwdjuP/HQizm2q5vZjrOid40pY8NlMPGmQOTBH
ufJdtBwPCgRyWlD3tZnmwN5iDGFtYqsPr8lazrlZmCix+M0jZxDcTCnJOVdx43mB5stJsbfGXY9K
8DxdLeHAuQFbehrLUZmYrFoxKxRdRd+/Un1GVESCkQk94NIOPdzotX+IvVAcxA2ThXvx1uQdK8L2
A6pX8nhI45Z7J7YCPfSqcDIyZWxsRlqB9EhFyNceEYIgL1std7NRq/QSXgHOVm9XDM1DSSBC8mdf
Nky80A9BzB6RFsuS1lnwP22cu/6b34qmbPXKiI16NsUPrfPFgkPwtoKVD8FNOd7Np+RoJgONYeeO
OY5+yukvVSVMvkO46Io6ceLtYsXyCVlRlYJEKfYw0G91IQAfsb+saa6LIsdYZork2Qi5llNuwuRa
1lPbgz4iIkFkM2XvvsDz/etdWgy1fBSggITebtQ9uGNcQsbCW0V+6J1GbVgIAuYRBkP716IGOs7s
Y5aH/aHU7T3JPv8EIQPIqrZdOIMVhOsYWe9TLbRSm/XZFeLv5wIPSm5Z559vAg9s9z0NxOSHQGWT
+SmWPnXuv70hauweeXLtso4zcFSoKRSKHrMFlw5NiPYcd0vVML0QxkEXE0Zya2VMUMYixUULkUdm
WaxLKHNm7iZPEiY7ioDIipQqVnbbeLpfUwUeQvU0OlJ/wMFf4QigDNi5SYHlwAKMf2+XWpS4Cjjk
8EcCr14OW+1swjPWUjJm+yMhzCITI1OAXUqnno7xmPJ0/di5K6JL0qXCoJH00HDauZG6tj1CMwqm
7QflrSPphaaUaJXbAg/H7T4u73985Of4nvTqhKAHCE1mXowlLhp1uYM5DvKUPPAY8PMWbLvwlqWz
3GzTCrVGviy+jEysBCTs5yDoKEAtTCnRDQAA4lgVepw00sp0OuBcic8zh5ej+isb09vtMP61gnLv
/L7XYazuOy0fhLHSkmyVJ2XZonNxFaD6piVx0ComF11zL9xLeszOTWuJopfeZsnyrPeXNQkJL7R3
pOTf6FgNPI/24yIQtSUby0Tcm9ZOpk/Z2O8U2rqzpEdgk4r4mEwYRzZZ+EDfYbucKcp5mxj4hrg2
cVLq2a+yZW9JaqiHRTbLWSScJ2faXGds8Vj+bVgFY1t9owTrjdGPyT3yM/LXN8TgRFTVR/ejQoSu
LGaF3mHIZ4tOVwFlLWiOt1VZ0ZP/Ji5UzGwrdrvK0wKIquXwNKVYA+zFexQnDlGekWlJb/FnZJP8
9IjyJHMw6D+AnwkVQqMGCo3r8LWpR3u7Pd/Q0S69MJpdG8kGe769slhnBYBlwfLxHCUcppohFNnC
VE6jr8b/Lw63PjnJBxPWDEImxLlt3Fh8ADiqMDcIGwWse/GaXWumcQlhr6J2JcyWOfe8rKZDYYmv
2zMe4d+fr66bIMGjcnK+fLVBw+uos2Cbs8wUtluKDZVJ5tbZJaDhgZ8TdaGl96zEbT9lBTmIFXpk
o+zHh6fqJW7qfUfU8RU4NKLbarEW2Ora0aG0CwrS8rrmR6P67dRhHOtJAhyAZKPQDf1InOhciwD4
Kh78v2lPe/tqiiQCbKWq+oMNPAgbsWYGeIdyU96ADSL9byib8ilsVqnmVG0cb47FjBwctrxIv2xg
y2b0zulCdPci+kLYVYM13HbzFdv0qoiwwPAevmXEW/dJ3QoJwbgCxFoqu6OFmb17wjOGSCCUUSA7
vxVYAgF5jp905RrW+WnIGhX8qhyEmi/fbf/ySNk0p7HmrWbWMtdQCLq//FfEksRrg+0xxHvM5skw
Vv6HDDZtla2WfCIzK4EueLNbc0w5/N6AIdlmkTYk30zdPyd9hx/VM7bhBvPdqPFdxiD2k9GNI+Sk
I6dVytIBVGpmiqnp7w7Y74SX47B0cJVI9iiONvIOmi/8+VVwYXGp8/K6LdRc3SG+oyyfHVmlSchq
ekk70zX83uGWyW3RDFqldxO2Q9lUMflPbthYueBu/lAARUZNWEBcmBiiXZPWqyJxXe1AZ4n/OZ2O
s6eNWuLgCSDhPttkwuvDLMcfdVk+LVbXbNcf8pfqL2cSoKvXnA6uTNENd+Ix6eLTuC1RMj8zMVsZ
PtXcDam63shNXBzrN8FZGBY52FYkxg3apTvGl8m1g3BwEHp56bDPGN/49HD/ea2uRe10suJ+pOia
j6ZgdiYiJeu2gYoMtMZHpB3lTD2rpDsL2Ui9Z6S3/upfFtYtpTvjmu5zobgA7P6nKqnhqvX0vd3k
J4m05saBRdvElHNEDYpefTZujgZvpHPf7HSaWjjpshuoJq8EaDNkYElQhq1OJXb2OdDDfWDau4oO
ednSZH27/Fgx4e3hpvY6CIcq84qpxrLDiA5/KyrpRRu2QFOrpFlxqx2zvUsLsXPSMMy3ZqRrTR91
E9YB0JSv8yAYVu0lxtbd46QRYNAzD9DPjLprjp6pwO06zLFDpRxUUTJeVxsaYfzl5lDiFdZrmMwo
emeUM5aPJwgk0rnK4EtuRAwTZ/OUH3tFq/9hPoNZIt1tEW1IajlrtZJJr8oTOUqNZ7y7H8WagnJU
bqvKk8xYkCl4kq+NCNN/HDB1FbHhJnytmvHxUvHrR84hOnroFKjA3zoszgKDzy66+t/MVcBLB0Cv
gFn/mFKTq+pDoiWN9RkAKbBWO7FkHlTV5rcCdsVeq+KMrZlyqkiORRWbwaHGv3WmtMJIQxcRFy56
gEkUxJ8ltgb0VduOlMLIL2W2RBDQYlhqDzL4ItyFyon6JbIjB+DGW+o0K5+6wyZCI5OazkDOFlGE
v1zZFtgzgl1Spjxy29LtAczgV0g/U8UHtfbERKU2W/BnOqOQgzXdcnBUe1ZjwUsWZ9g7ehC0AcTw
Hez8379QQ/F9mS6Ary9C7xcehjb6UO+/pRMdAAZPMGf0zRp7yfsjCH2JZZw5OUuGo7hC4ePDbvTw
fc0fNaYtFhUmu2xsZHFg6/L0jy8lm38HK1jli5NlL03evuI6mUkrCJJUAAkEiW3pujTYOoY4182m
25RQAahyL3D+KjG84GfRwU7gdjXn+aLEp6jVevQtubtxcrsQCBokb24CZ6FFai6fDFHY/oCzik5o
+lZtNzYKvkK/IW6HhHrjWZsrdCpFFpKgmhfo/yoe6w7AAi3284mC+9JdlsRjhT8GdgMn+blx89Eo
lpxDdIw/4L9fvzrjLaOJAujBCSAtd+j/G8mOJhKsGo6rslaKMtmSkuNwnON52DbTE/mPattpp1hw
poQMDEB0XxubI1Kpxmnh7R3FlI9ndBIx+CcO3C2FM7kQpTUQguqeX9izE9+U9fZAH7fioICwAnEO
ritK44mMYT/LuCOX7vmFAEoLzy2pwGIp0wHoZzIqd6z0wpJpuU/TmGzPFQdHgNJFcuW2TRgEfXc4
oOGetEpq8sifKhwhnlg4r7hrw/DLb5x9RyZSJFL9e3snwYaSwm4bDwmvpNUuhPn51QqsFQAov88+
NpOpDWM24i8at5MnhwVds3odb5ICUy10btm2z+0CVlr7gD72iam8ueqXh0pWjUW2ycKeBLzy8InQ
S5LUJ7dwCi5H3/grSlZ5OpjyOatcYWF8wGVs8PVmLOF8uoJEVgxZWWziT0dO4DQA+W/bqdO655vw
d2lwyPpKxnWJnRwn480iivXXP+u/JeNPwn06dKhUZQf+NQqK7UonJs4Xh9cvdHKXZZouQ6vDMDwY
ctYIFbGq4BRdUtW79i79dm3KuMxiaFPtkhPGCYMlicNMNAvv2LWSK2dL/wAgMBFxGCocfrP8mpwX
c8a8/GBcxb4Ip2A/vK3nmXSXNTQKxUZafh2jI7Ttknqx5bk4H7oQ6aAk2EV+b5lxHQWxiSZAuDDi
iFBthmtgmVMbUEOqExZms/gtzYoE3Nz5Iay9Z4xEGi/301UmHag4yuGZK2WraIs/rhJJtfvzUs5r
i55j9sLWUBv/3yLTfUP8p/l02tXUuC6BqTIfIb4V3aVX9xeSXxxnvm0vHjCLUOwUXkA0p+HwY6jm
e5QUkKmQDzzJ+ZlHCZFEGDOhkimdTcsC2WwOKAZCX1S/Ix/4M7AW9WNX2uzckXjd+PsDU0MK81mm
0A1RrnenFkmtSELRFfadyQJG2ZbqUvIJEJz57eUrbQ1OCvuJJjGhwColeL8JFpZ8hxx3PiMqpeKc
VzWaGJCAAfKgx58FKU6efUlatVQEz4O6jORTOxVFAzEo1KIBDz53SThyDePxgfPK+t4RlaQt6ki0
qCoLBdeBtsSabM1rwCb3Z5n9zSeFUSm1d8mlXHemfQEFG4Dhu4Hob3PEbVLBkLsibBTASMkKXIbB
XQ9FxPkOtecZ+w/lW56evHMKtZUqNQWq6df9tTFc1gt3/jPcYlS66hAco03vSdV864Hr+aINUueF
MeznrZtFgGzFcjAuPyBPuYyN5b/e2ETxRuJebPZISidUyunaC+633Qd3TJOw+5DyrR2qR3oaJDOc
fLgMD8JNZZsYtdgk7uYIJC394gj3X22PvR7cbkLN9cI2W/8qvHlUjY42Jd351i1lLggE94rUWiK8
fMmoTNOHggmM2fcoFMHZJoOKKBW72wAfHXOeZch8xie3NdsTOFeeonAdWRORN51a/WWuwZSRFZ9C
8juseOND4dWSLn0iyWNMqFazw32rJQgk+l4opEWjyrbTqccra6s0PYEcSRuV2qCVnzrPHOyp6l8p
Wosi7NpNgwr7fH+HbNj7ZBU+1wGgp5MY85Fcqju49nnXXLpm9FzCmLGtsqWRjMvIk4Yj1HMPvhYL
HdoMzZaZ6T7IGB1mdeAVrWIbbt54xeUjIekUINwAAyjDlPCHq+2Dakvhgn/X5Nun5nzUCKNx6LPC
hLscC2ta3LaVnZYENHXqAIOyX4ouLjwUCcO2utk21uF/kFuK7014X0SEjv4nKXKaxoFOajirac2v
H8iOvFwfThhzDZWCGrxZJUfGc5nAsttxy6jRoiD38PksIH8ul7Nqqmlp0vAWDhjkiBbcj29u0f7c
800roek3PGpFK/A7rlfPAbyaufmnoA3D0VAGRYsVK6hlnoQpdTQGOjle4xLhpYvSXS/vQT6CtKfl
LsXo85FeTMwSpeNzXyRLQ2cw1Mu8MAceTIfvDyfXwBBMTp739kzxPhMykmz7jH+TK3iunBnDAJov
+Dvd8GpL89MbWJQI023hUM1kLO7H2F1ZI5+SXHHNy2AA4V0I/IcA1Weebep87gB1PTmJYDiUJNed
8gZS2wXmkwT7ePVGAZ40Sc2MbJ5qJ7WfLw2TQu2Atz5cVl2chyMw4pqvt0you5md52l9LNGN2gFq
2OH/4Ny2/pThjNtbfhGaQLJDuPrH9EHj6u4l47BzPhUSLph0tZzWaTcVmWOnVb7FSpu9uyl2dXCV
kmV4wefWs4FXD6ldfoOZnt/CzKUvdt4sbD2mewh2YrP9jYRWaag4pPwYJy2Ejv7kypGXmQ3WcA2P
TCQzG6y0+7gxxAH/HLW5ALrIwvb22HDNr0DXeGpQK7ahZ/kCkZRvyeB3INkj2p9V9VUIejbTITD/
4rlBgLF4217YQKhQ9d8icwxquEDt30/KaAK3ljkMItGpeoJvS0aj48+ai9Yk4RZdz2TFdnIbBpT4
+M33sn8pKDHRNgIqJ+JmT0mWcBws9G97cA9lwkEDMtyFipPGBeObdpndH8joH1AgU99S/HqbSxhJ
UQXLwyCnCg5Gxf7tV3Nm3Of6J6ObD0ucdY1RAjyLhH606OZvrFplhL1tFyc+9G3Zm021Th3fIlAG
FGD+o85kdfVlEil1eetA5IbTXqS8qK8DUYA5kI1x5VDBAx/OJ4oRRyMgOb9Ztb/1nfp+TCxPPlDB
n97FVAaLKUwZZrgiynIR15rc2KqTBWZ2tmdryGqX0CzuQVxm/mS6qQMfKlZjY5iICqBjh/eRIU8U
33dbOlfLxRP9Zp/otpoCt/eMQDli7OAejhe4Mf4cwcpHk1fPgPbaWC61cDA6s+GYygryHwJ1Vufo
l+iFUXN0S0ctEbFBwO8JnNtFZxmjj7/mMhFUDFlFHLJ4bZfyp/zoUsv+pLIirqVM2BXTcktDgplI
Ghy1qFfPWg4wNebOg0pZ0zCz9ERJceznTYRBFYJRec75l85ki/BcX/SubuVPgZj7Od8mJBHXZate
oiZ+r2GbAQO9rBKOY3JLI3ck6OFO6r+HFsgE+3jyonYxsIH38QRXwK9TLz/QeWTznefLjSjo3/Ec
dsOJLkIS26y17/z3c84jHDDH/DmQienX8pLqHGA5XKQX7dfHmFsnglpsbRG7hrSBTm1fc61VK4Sh
+5BAyWcb/yTpZ5ALwfTMrZhM1h0v6llwQQfgHxmzzMPZUFCllADn1SlO9SABJ21auPy1eJcjLoZi
2BpzuxJx9k0P+9MRyaRftagnJPWw7WSjVWII6MOJSkPaVt6CSmCUneVRxAoTB01XTSj4G92E/uNC
D4f4CTOCPqMtCDnvjaMlWqQqiWFRvlD0m7nL7s6FaNxM2jsBXLsqHiK8Sgbs0QbUw1vC2fI4O7ty
trqyGeE83AGhf8rAM7jQvS0b7EfvVYkYfnca5sNU9EcC3YO93NcyJF169o976Kp9pgZNPwNi2eop
jWaAnMBPGo77lk7fxlUJ8t6Tx1JxleSDwTF2whbsYBllEciY2/iD14AQ50qo9YQW6jMFG651Y1KE
wt/aKCp6NKBa4LvSyYQzML0PuKGXj9kpsPMWMeiDg01CZfzoQy87qf2kVxhY2GDhGIhnDP/obbav
j1hxNA90t5d2vlUdC/TQzE84mHus/17R8co9k2+lX23pmGkSFks7M/n1cxdWxrxzYWai3Pd6NypT
GLnz6NVO1TElWyLx021pA7Foc1G4eC7l+vQTk5ZGyesuI6Yv083bAkJ0OY/oLAsPN+FSGDxQEgev
otZ4zNDM9Hb4NlYxf7o1zGXsmLVr2wmPL2o3UxXxx+2JcfW+MsV+/Munu3I3bbYRuR9PFyWuw1Fv
T01VyTEAMuQWOuC42ELA+CF6GB4zHX9Q4Em/G4NZ8O3oezyq8CkOApO96YwRfhc176OWNIaCqMJc
50Hnk5vc8qXSASC9DAaSJr4LtlRpW9wHC2+HosDaunHdrVorPaPOnFIN6CE7PgRfyvMoViIIP9yy
Eh/77u1ofQJm0rEj4XwS79FXt63KPAdjP9JrnAqoCCk89WLfwIX4RMdbmclCZ6n/BIcNyrGKyjc2
aiK3OVD/KNy/CltD8calHN+9i7UTZXmcCWN7J3FGuTsOzJ6QxkS0bf+RVwosdszQ6dDwmIKSUZI9
dQrGxjkyHLwmD72uidZDQErAEhNpm0vAylfBM+KfLzR7BbEps5gUiyfV75DBZ7e6zUxJOJyix5ju
i76n1E6FxW7AWhUEEsb4cVL75zwPcsyhPai52j5em6WoqpVq8SQQxyQkTutfVPvHoeKl14qBmAcV
nWu8XB0i1k65MmSDwUpib+tW5lWvDFG/oF1pCfonFHJEmGckg0pJ7T5gFdvwLZd1KwgjxlBSRupg
P6j9zoteopzCHJY+IwFeCXaEmaiWpECkvNIfhzo24cyDbRz/DXg+4mZqHU5GgmLOqJYkgtJgU/xn
oLAKYT0GV8kmax7YWbgsxGFn9MRzBprZT9+WSBCm6D8aDkVeEypETzeZzYrLY/6KTgkdMKnXngZ1
Tw86u+7nsWZwmxOSLkyIpF4auIhro8nl0Cjjea+hWr9pyZ2rUkYKbF1RYm4l3j31XrNx+TE/ct29
8TXTKRSK8a6eIFhlnFARuizSs/pfvFtrG3q5oxwBgF54R+Z/IBDpKQjdI7GmmfsN01hukRyJXUyM
l9p7Shz9r29nqCFT4HatMvrhKlwy/nYhGAsD5uUpJhVhSd5rzKJDGuAlo3r5LoBQanp2+ZuuTp2l
SWmmjijVZc3V82f6ehX1remVgbVn5oEraLvN8/jI8JM58gb9RoZgb0YcXU1CQhpNZ0PEZ7ytENcV
vGPnMyEFhqYgZ5xLQgWsBs7lQG0Cy2KUUjoKQJrQxU/qz9nP8N1jagMMBbABLwLhCtEFmepa5h4c
DJ9bT9JIAJOS9SGclnUBx5l6+8noZ2tMLEDFK+sVIcWA2FqiabSiYB8TNBxhTCCB2fkewEup7cLB
VVrxPQmZlVSbcywaWpyiXJQ9NnplipNZaOUlP+2iSyw8/4w1E4ajP1T2b7XtD+vT8Nqsnleti5c0
zoYfd2TEqouG+Er+jJ0tHlRw7VcWvzyB2jjLB57gcZhI5sCZtgh4+HCYrZgLVTJvM7gOBoZPO6wx
QJI3sbV1x/O8lvMA5++yN+TuQIsB3ztKPcwiM9CVig1R8awcoSksFcl9HjXG1gdCozeAqYVYrjBh
Zhrr//8Hbhrzc7yX7ilYfIOLCU9gNBDntXRb2XzGAkjqMAK1wXuxQGtqBD2WVvsjq5w37Jea8Frl
O2ZPTWyWFc4brST3Gt7EzGbDhnOV/09HrJMDDg6O1DKI2sQ6JtiTf0z67hiyGgOiJm/+wRxVAnAe
guxrWwKQFpww7wUs+leoLdJjpMRG93UA4a99fYJDTXxd0ONWU1rc6uno6Ypn2L3d5E6WLTikE73n
fczv98WWTJ01/1fMEc+no6iEQw+MEO2zwGu0UTYylUh8Jhts/MD3f/kGfGR3iTF7x0QoB+LDRO7x
UjjC1B1o8BGihiz4y6huStjcnujl+EzwHD6FO4b74dLsn7eeLgbf0wIXAh/on8qtuhqEx26OJ863
W4Rqxt87QsiX7fUd21Lqd/Jp5FDpUGICljeMo20iKN/GERVQzC2nx6cpvlv+5anH/jYN7xLMWb8k
8qONIEtLxLzsSo68AD+N6m2lgr3ebQoHzOQ7VWrvCSwEDMHxXgI3YguZeD7LgUKdE5JQqjTo9Wjw
g1XiaA4/24NfALZ29zGamwUnlVTlHwgI/leqZCVJaUwqZDZv+Jh55OpfYNqo4njcMohPYJkDDA+S
EKydx6f7FMrma6/Zn63Lh0CxOo2OvNeq8C6PqGyrkChlojgJ2CicwUiU6gEe+nLrdGK/fPjUW29n
IOGsg8ng1dYLttgTi+KNyxPPIU6Z7XVQI21a8CASq6d9ZqV6PZAa75NuqjfYT4ehXxwLyBZ9/DRn
GKc44AS1ohNDcAgUmJQe2WYZNu1Ty26hpGjGRWB49/fsVl5n8S76SJBFGmhhKL8Oh9TCJDsKupkZ
wzSsYYoDJ5LJ6KvEVtrYvzgFHEiBeZd0z5CywT3NCpoABYDUlU+s+NbaQftddY2Z05toRGnLsUt1
TxHzrCozRDTGrKZVqFffNi0bxItrD7jNhC+R0u1Ek5nOP2knph3zNf0ONNDsgpIjdOCcw0KetIBH
xmzFUVCq5wzwpkXa7nuxTDuykXvlVbuiPFY5CRetQutcUT5IcYorUJL1FzaC+jj9PayPWI142N/n
6y/AmZtv/pYQEev7T7wEqg0tROJEtE07amxRnghSTdBRFo3qwIATDqz/GhApJqcsZmNlxKIiMV8a
ZCpNePOlLbNmXVCut8sOSSA1JQT3WhSfWHDubiu1pSgBRBkejtb8gpyWj5MedWttyWyFTNKNwY/6
QSO0S2OBy0cBqpZMEeHYvubMvJq0lshcxmAoG0ZGZKr8ch+nO4ge2kvCiknLGR6ZqzzgA3RGkwkS
AsI1mLay0bKS1Tazt75bnQi15zESdSYDtTWyhnca3mZCehVBS4Ip2pPJsXC970jIs7LhKZWegASk
HZyhaqF8GiXj0A/zWJHVbcUMbS8fJi8qGjL2c3677e15vmg2OjirFRsdlq6lJurA5itr94UFSUGL
Zznn4r2y50jbaQaXuOcCymVUidSZQx1NzKPM7Nsw6g2W+WjM5sJfT66dkW9i+1P+L1Uma3lnVlXk
TET/ZkF9+35SSEj68IYZGBwO60q9c5UoUjbBPmwOENseElgHHrnGPFlk2w1bGmQNUkRBiHXALdvn
QKD9df0FsI5UQuOVZdBTcIOImQOh3pwxSurce+AV4OmwpjYztKPjG2qS6SowEAWNj3OqYa/0k4TA
xltbp7WdRmTX0I/WnGkdhryr/ELEOOYkveGRZ0oySNe4l1RqfTjW4tcBem+Wy6L+rpoNGpPX2PT3
WVLmh5m/CjdIOf9XLHbq/3WaeF0Nv0bohLWahzsG7gdtOPd3cpPIxGupNGteitdjO7x9azisJnXP
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
