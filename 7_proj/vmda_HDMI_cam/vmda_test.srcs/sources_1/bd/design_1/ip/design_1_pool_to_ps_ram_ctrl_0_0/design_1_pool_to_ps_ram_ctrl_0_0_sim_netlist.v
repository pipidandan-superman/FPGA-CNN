// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Oct 26 11:09:26 2026
// Host        : HC-202510241838 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pool_to_ps_ram_ctrl_0_0_sim_netlist.v
// Design      : design_1_pool_to_ps_ram_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pool_to_ps_ram_ctrl_0_0,pool_to_ps_ram_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pool_to_ps_ram_ctrl,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    pool_valid,
    pool_data,
    pool_ch,
    bram_en,
    bram_we,
    bram_addr,
    bram_wdata,
    ps_intr);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_cam_captrue_data_0_0_vid_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input pool_valid;
  input [15:0]pool_data;
  input [4:0]pool_ch;
  output bram_en;
  output [3:0]bram_we;
  output [31:0]bram_addr;
  output [31:0]bram_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 ps_intr INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ps_intr, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ps_intr;

  wire \<const0> ;
  wire [14:3]\^bram_addr ;
  wire clk;
  wire [4:0]pool_ch;
  wire [15:0]pool_data;
  wire pool_valid;
  wire ps_intr;
  wire rst_n;

  assign bram_addr[31] = \<const0> ;
  assign bram_addr[30] = \<const0> ;
  assign bram_addr[29] = \<const0> ;
  assign bram_addr[28] = \<const0> ;
  assign bram_addr[27] = \<const0> ;
  assign bram_addr[26] = \<const0> ;
  assign bram_addr[25] = \<const0> ;
  assign bram_addr[24] = \<const0> ;
  assign bram_addr[23] = \<const0> ;
  assign bram_addr[22] = \<const0> ;
  assign bram_addr[21] = \<const0> ;
  assign bram_addr[20] = \<const0> ;
  assign bram_addr[19] = \<const0> ;
  assign bram_addr[18] = \<const0> ;
  assign bram_addr[17] = \<const0> ;
  assign bram_addr[16] = \<const0> ;
  assign bram_addr[15] = \<const0> ;
  assign bram_addr[14:3] = \^bram_addr [14:3];
  assign bram_addr[2] = pool_ch[0];
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_en = pool_valid;
  assign bram_wdata[31] = \<const0> ;
  assign bram_wdata[30] = \<const0> ;
  assign bram_wdata[29] = \<const0> ;
  assign bram_wdata[28] = \<const0> ;
  assign bram_wdata[27] = \<const0> ;
  assign bram_wdata[26] = \<const0> ;
  assign bram_wdata[25] = \<const0> ;
  assign bram_wdata[24] = \<const0> ;
  assign bram_wdata[23] = \<const0> ;
  assign bram_wdata[22] = \<const0> ;
  assign bram_wdata[21] = \<const0> ;
  assign bram_wdata[20] = \<const0> ;
  assign bram_wdata[19] = \<const0> ;
  assign bram_wdata[18] = \<const0> ;
  assign bram_wdata[17] = \<const0> ;
  assign bram_wdata[16] = \<const0> ;
  assign bram_wdata[15:0] = pool_data;
  assign bram_we[3] = pool_valid;
  assign bram_we[2] = pool_valid;
  assign bram_we[1] = pool_valid;
  assign bram_we[0] = pool_valid;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pool_to_ps_ram_ctrl inst
       (.bram_addr(\^bram_addr ),
        .clk(clk),
        .pool_ch(pool_ch),
        .pool_valid(pool_valid),
        .ps_intr(ps_intr),
        .rst_n(rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pool_to_ps_ram_ctrl
   (ps_intr,
    bram_addr,
    clk,
    pool_ch,
    pool_valid,
    rst_n);
  output ps_intr;
  output [11:0]bram_addr;
  input clk;
  input [4:0]pool_ch;
  input pool_valid;
  input rst_n;

  wire [11:0]bram_addr;
  wire \bram_addr[11]_INST_0_n_1 ;
  wire \bram_addr[11]_INST_0_n_2 ;
  wire \bram_addr[11]_INST_0_n_3 ;
  wire \bram_addr[4]_INST_0_i_1_n_0 ;
  wire \bram_addr[4]_INST_0_i_2_n_0 ;
  wire \bram_addr[4]_INST_0_i_3_n_0 ;
  wire \bram_addr[4]_INST_0_i_4_n_0 ;
  wire \bram_addr[4]_INST_0_n_0 ;
  wire \bram_addr[4]_INST_0_n_1 ;
  wire \bram_addr[4]_INST_0_n_2 ;
  wire \bram_addr[4]_INST_0_n_3 ;
  wire \bram_addr[7]_INST_0_n_0 ;
  wire \bram_addr[7]_INST_0_n_1 ;
  wire \bram_addr[7]_INST_0_n_2 ;
  wire \bram_addr[7]_INST_0_n_3 ;
  wire clk;
  wire [12:1]logic_addr0;
  wire logic_addr0__26_carry__0_i_1_n_0;
  wire logic_addr0__26_carry__0_i_2_n_0;
  wire logic_addr0__26_carry__0_i_3_n_0;
  wire logic_addr0__26_carry__0_i_4_n_0;
  wire logic_addr0__26_carry__0_i_5_n_0;
  wire logic_addr0__26_carry__0_i_6_n_0;
  wire logic_addr0__26_carry__0_i_7_n_0;
  wire logic_addr0__26_carry__0_i_8_n_0;
  wire logic_addr0__26_carry__0_n_0;
  wire logic_addr0__26_carry__0_n_1;
  wire logic_addr0__26_carry__0_n_2;
  wire logic_addr0__26_carry__0_n_3;
  wire logic_addr0__26_carry__1_i_1_n_0;
  wire logic_addr0__26_carry__1_i_2_n_0;
  wire logic_addr0__26_carry__1_i_3_n_0;
  wire logic_addr0__26_carry__1_n_3;
  wire logic_addr0__26_carry_i_1_n_0;
  wire logic_addr0__26_carry_i_2_n_0;
  wire logic_addr0__26_carry_i_3_n_0;
  wire logic_addr0__26_carry_i_4_n_0;
  wire logic_addr0__26_carry_i_5_n_0;
  wire logic_addr0__26_carry_i_6_n_0;
  wire logic_addr0__26_carry_i_7_n_0;
  wire logic_addr0__26_carry_n_0;
  wire logic_addr0__26_carry_n_1;
  wire logic_addr0__26_carry_n_2;
  wire logic_addr0__26_carry_n_3;
  wire logic_addr0_carry__0_i_1_n_0;
  wire logic_addr0_carry__0_i_2_n_0;
  wire logic_addr0_carry__0_i_3_n_0;
  wire logic_addr0_carry__0_i_4_n_0;
  wire logic_addr0_carry__0_n_0;
  wire logic_addr0_carry__0_n_1;
  wire logic_addr0_carry__0_n_2;
  wire logic_addr0_carry__0_n_3;
  wire logic_addr0_carry__0_n_4;
  wire logic_addr0_carry__0_n_5;
  wire logic_addr0_carry__0_n_6;
  wire logic_addr0_carry__0_n_7;
  wire logic_addr0_carry__1_i_1_n_0;
  wire logic_addr0_carry__1_i_2_n_0;
  wire logic_addr0_carry__1_n_1;
  wire logic_addr0_carry__1_n_3;
  wire logic_addr0_carry__1_n_6;
  wire logic_addr0_carry__1_n_7;
  wire logic_addr0_carry_i_1_n_0;
  wire logic_addr0_carry_i_2_n_0;
  wire logic_addr0_carry_i_3_n_0;
  wire logic_addr0_carry_n_0;
  wire logic_addr0_carry_n_1;
  wire logic_addr0_carry_n_2;
  wire logic_addr0_carry_n_3;
  wire logic_addr0_carry_n_4;
  wire logic_addr0_carry_n_5;
  wire [7:0]pixel_ptr;
  wire pixel_ptr0;
  wire \pixel_ptr[2]_i_1_n_0 ;
  wire \pixel_ptr[5]_i_1_n_0 ;
  wire \pixel_ptr_reg_n_0_[0] ;
  wire \pixel_ptr_reg_n_0_[1] ;
  wire \pixel_ptr_reg_n_0_[2] ;
  wire \pixel_ptr_reg_n_0_[3] ;
  wire \pixel_ptr_reg_n_0_[4] ;
  wire \pixel_ptr_reg_n_0_[5] ;
  wire \pixel_ptr_reg_n_0_[6] ;
  wire \pixel_ptr_reg_n_0_[7] ;
  wire [4:0]pool_ch;
  wire pool_valid;
  wire ps_intr;
  wire ps_intr0;
  wire ps_intr_i_2_n_0;
  wire ps_intr_i_3_n_0;
  wire rst_n;
  wire [3:3]\NLW_bram_addr[11]_INST_0_CO_UNCONNECTED ;
  wire [0:0]\NLW_bram_addr[4]_INST_0_O_UNCONNECTED ;
  wire [3:1]NLW_logic_addr0__26_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_logic_addr0__26_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_logic_addr0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_logic_addr0_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr[11]_INST_0 
       (.CI(\bram_addr[7]_INST_0_n_0 ),
        .CO({\NLW_bram_addr[11]_INST_0_CO_UNCONNECTED [3],\bram_addr[11]_INST_0_n_1 ,\bram_addr[11]_INST_0_n_2 ,\bram_addr[11]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_addr[11:8]),
        .S(logic_addr0[12:9]));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[3]_INST_0 
       (.I0(logic_addr0[1]),
        .I1(pool_ch[1]),
        .O(bram_addr[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr[4]_INST_0 
       (.CI(1'b0),
        .CO({\bram_addr[4]_INST_0_n_0 ,\bram_addr[4]_INST_0_n_1 ,\bram_addr[4]_INST_0_n_2 ,\bram_addr[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(logic_addr0[4:1]),
        .O({bram_addr[3:1],\NLW_bram_addr[4]_INST_0_O_UNCONNECTED [0]}),
        .S({\bram_addr[4]_INST_0_i_1_n_0 ,\bram_addr[4]_INST_0_i_2_n_0 ,\bram_addr[4]_INST_0_i_3_n_0 ,\bram_addr[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[4]_INST_0_i_1 
       (.I0(logic_addr0[4]),
        .I1(pool_ch[4]),
        .O(\bram_addr[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[4]_INST_0_i_2 
       (.I0(logic_addr0[3]),
        .I1(pool_ch[3]),
        .O(\bram_addr[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[4]_INST_0_i_3 
       (.I0(logic_addr0[2]),
        .I1(pool_ch[2]),
        .O(\bram_addr[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[4]_INST_0_i_4 
       (.I0(logic_addr0[1]),
        .I1(pool_ch[1]),
        .O(\bram_addr[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr[7]_INST_0 
       (.CI(\bram_addr[4]_INST_0_n_0 ),
        .CO({\bram_addr[7]_INST_0_n_0 ,\bram_addr[7]_INST_0_n_1 ,\bram_addr[7]_INST_0_n_2 ,\bram_addr[7]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_addr[7:4]),
        .S(logic_addr0[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 logic_addr0__26_carry
       (.CI(1'b0),
        .CO({logic_addr0__26_carry_n_0,logic_addr0__26_carry_n_1,logic_addr0__26_carry_n_2,logic_addr0__26_carry_n_3}),
        .CYINIT(1'b0),
        .DI({logic_addr0__26_carry_i_1_n_0,logic_addr0__26_carry_i_2_n_0,logic_addr0__26_carry_i_3_n_0,1'b0}),
        .O(logic_addr0[6:3]),
        .S({logic_addr0__26_carry_i_4_n_0,logic_addr0__26_carry_i_5_n_0,logic_addr0__26_carry_i_6_n_0,logic_addr0__26_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 logic_addr0__26_carry__0
       (.CI(logic_addr0__26_carry_n_0),
        .CO({logic_addr0__26_carry__0_n_0,logic_addr0__26_carry__0_n_1,logic_addr0__26_carry__0_n_2,logic_addr0__26_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({logic_addr0__26_carry__0_i_1_n_0,logic_addr0__26_carry__0_i_2_n_0,logic_addr0__26_carry__0_i_3_n_0,logic_addr0__26_carry__0_i_4_n_0}),
        .O(logic_addr0[10:7]),
        .S({logic_addr0__26_carry__0_i_5_n_0,logic_addr0__26_carry__0_i_6_n_0,logic_addr0__26_carry__0_i_7_n_0,logic_addr0__26_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    logic_addr0__26_carry__0_i_1
       (.I0(\pixel_ptr_reg_n_0_[6] ),
        .I1(logic_addr0_carry__1_n_7),
        .I2(\pixel_ptr_reg_n_0_[4] ),
        .O(logic_addr0__26_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    logic_addr0__26_carry__0_i_2
       (.I0(\pixel_ptr_reg_n_0_[5] ),
        .I1(logic_addr0_carry__0_n_4),
        .I2(\pixel_ptr_reg_n_0_[3] ),
        .O(logic_addr0__26_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    logic_addr0__26_carry__0_i_3
       (.I0(\pixel_ptr_reg_n_0_[4] ),
        .I1(logic_addr0_carry__0_n_5),
        .I2(\pixel_ptr_reg_n_0_[2] ),
        .O(logic_addr0__26_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    logic_addr0__26_carry__0_i_4
       (.I0(\pixel_ptr_reg_n_0_[3] ),
        .I1(logic_addr0_carry__0_n_6),
        .I2(\pixel_ptr_reg_n_0_[1] ),
        .O(logic_addr0__26_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    logic_addr0__26_carry__0_i_5
       (.I0(logic_addr0__26_carry__0_i_1_n_0),
        .I1(\pixel_ptr_reg_n_0_[5] ),
        .I2(\pixel_ptr_reg_n_0_[7] ),
        .I3(logic_addr0_carry__1_n_6),
        .O(logic_addr0__26_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    logic_addr0__26_carry__0_i_6
       (.I0(\pixel_ptr_reg_n_0_[6] ),
        .I1(logic_addr0_carry__1_n_7),
        .I2(\pixel_ptr_reg_n_0_[4] ),
        .I3(logic_addr0__26_carry__0_i_2_n_0),
        .O(logic_addr0__26_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    logic_addr0__26_carry__0_i_7
       (.I0(\pixel_ptr_reg_n_0_[5] ),
        .I1(logic_addr0_carry__0_n_4),
        .I2(\pixel_ptr_reg_n_0_[3] ),
        .I3(logic_addr0__26_carry__0_i_3_n_0),
        .O(logic_addr0__26_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    logic_addr0__26_carry__0_i_8
       (.I0(\pixel_ptr_reg_n_0_[4] ),
        .I1(logic_addr0_carry__0_n_5),
        .I2(\pixel_ptr_reg_n_0_[2] ),
        .I3(logic_addr0__26_carry__0_i_4_n_0),
        .O(logic_addr0__26_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 logic_addr0__26_carry__1
       (.CI(logic_addr0__26_carry__0_n_0),
        .CO({NLW_logic_addr0__26_carry__1_CO_UNCONNECTED[3:1],logic_addr0__26_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,logic_addr0__26_carry__1_i_1_n_0}),
        .O({NLW_logic_addr0__26_carry__1_O_UNCONNECTED[3:2],logic_addr0[12:11]}),
        .S({1'b0,1'b0,logic_addr0__26_carry__1_i_2_n_0,logic_addr0__26_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    logic_addr0__26_carry__1_i_1
       (.I0(\pixel_ptr_reg_n_0_[5] ),
        .I1(\pixel_ptr_reg_n_0_[7] ),
        .I2(logic_addr0_carry__1_n_6),
        .O(logic_addr0__26_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    logic_addr0__26_carry__1_i_2
       (.I0(\pixel_ptr_reg_n_0_[7] ),
        .I1(logic_addr0_carry__1_n_1),
        .I2(\pixel_ptr_reg_n_0_[6] ),
        .O(logic_addr0__26_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hB24D4DB2)) 
    logic_addr0__26_carry__1_i_3
       (.I0(logic_addr0_carry__1_n_6),
        .I1(\pixel_ptr_reg_n_0_[7] ),
        .I2(\pixel_ptr_reg_n_0_[5] ),
        .I3(logic_addr0_carry__1_n_1),
        .I4(\pixel_ptr_reg_n_0_[6] ),
        .O(logic_addr0__26_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    logic_addr0__26_carry_i_1
       (.I0(\pixel_ptr_reg_n_0_[2] ),
        .I1(logic_addr0_carry__0_n_7),
        .I2(\pixel_ptr_reg_n_0_[0] ),
        .O(logic_addr0__26_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    logic_addr0__26_carry_i_2
       (.I0(\pixel_ptr_reg_n_0_[0] ),
        .I1(logic_addr0_carry__0_n_7),
        .I2(\pixel_ptr_reg_n_0_[2] ),
        .O(logic_addr0__26_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    logic_addr0__26_carry_i_3
       (.I0(logic_addr0_carry_n_5),
        .I1(\pixel_ptr_reg_n_0_[0] ),
        .O(logic_addr0__26_carry_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    logic_addr0__26_carry_i_4
       (.I0(\pixel_ptr_reg_n_0_[3] ),
        .I1(logic_addr0_carry__0_n_6),
        .I2(\pixel_ptr_reg_n_0_[1] ),
        .I3(logic_addr0__26_carry_i_1_n_0),
        .O(logic_addr0__26_carry_i_4_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    logic_addr0__26_carry_i_5
       (.I0(\pixel_ptr_reg_n_0_[2] ),
        .I1(logic_addr0_carry__0_n_7),
        .I2(\pixel_ptr_reg_n_0_[0] ),
        .I3(\pixel_ptr_reg_n_0_[1] ),
        .I4(logic_addr0_carry_n_4),
        .O(logic_addr0__26_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    logic_addr0__26_carry_i_6
       (.I0(\pixel_ptr_reg_n_0_[0] ),
        .I1(logic_addr0_carry_n_5),
        .I2(logic_addr0_carry_n_4),
        .I3(\pixel_ptr_reg_n_0_[1] ),
        .O(logic_addr0__26_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    logic_addr0__26_carry_i_7
       (.I0(\pixel_ptr_reg_n_0_[0] ),
        .I1(logic_addr0_carry_n_5),
        .O(logic_addr0__26_carry_i_7_n_0));
  CARRY4 logic_addr0_carry
       (.CI(1'b0),
        .CO({logic_addr0_carry_n_0,logic_addr0_carry_n_1,logic_addr0_carry_n_2,logic_addr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\pixel_ptr_reg_n_0_[1] ,\pixel_ptr_reg_n_0_[0] ,1'b0,1'b1}),
        .O({logic_addr0_carry_n_4,logic_addr0_carry_n_5,logic_addr0[2:1]}),
        .S({logic_addr0_carry_i_1_n_0,logic_addr0_carry_i_2_n_0,logic_addr0_carry_i_3_n_0,\pixel_ptr_reg_n_0_[0] }));
  CARRY4 logic_addr0_carry__0
       (.CI(logic_addr0_carry_n_0),
        .CO({logic_addr0_carry__0_n_0,logic_addr0_carry__0_n_1,logic_addr0_carry__0_n_2,logic_addr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\pixel_ptr_reg_n_0_[5] ,\pixel_ptr_reg_n_0_[4] ,\pixel_ptr_reg_n_0_[3] ,\pixel_ptr_reg_n_0_[2] }),
        .O({logic_addr0_carry__0_n_4,logic_addr0_carry__0_n_5,logic_addr0_carry__0_n_6,logic_addr0_carry__0_n_7}),
        .S({logic_addr0_carry__0_i_1_n_0,logic_addr0_carry__0_i_2_n_0,logic_addr0_carry__0_i_3_n_0,logic_addr0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    logic_addr0_carry__0_i_1
       (.I0(\pixel_ptr_reg_n_0_[7] ),
        .I1(\pixel_ptr_reg_n_0_[5] ),
        .O(logic_addr0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    logic_addr0_carry__0_i_2
       (.I0(\pixel_ptr_reg_n_0_[4] ),
        .I1(\pixel_ptr_reg_n_0_[6] ),
        .O(logic_addr0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    logic_addr0_carry__0_i_3
       (.I0(\pixel_ptr_reg_n_0_[3] ),
        .I1(\pixel_ptr_reg_n_0_[5] ),
        .O(logic_addr0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    logic_addr0_carry__0_i_4
       (.I0(\pixel_ptr_reg_n_0_[2] ),
        .I1(\pixel_ptr_reg_n_0_[4] ),
        .O(logic_addr0_carry__0_i_4_n_0));
  CARRY4 logic_addr0_carry__1
       (.CI(logic_addr0_carry__0_n_0),
        .CO({NLW_logic_addr0_carry__1_CO_UNCONNECTED[3],logic_addr0_carry__1_n_1,NLW_logic_addr0_carry__1_CO_UNCONNECTED[1],logic_addr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\pixel_ptr_reg_n_0_[7] ,\pixel_ptr_reg_n_0_[6] }),
        .O({NLW_logic_addr0_carry__1_O_UNCONNECTED[3:2],logic_addr0_carry__1_n_6,logic_addr0_carry__1_n_7}),
        .S({1'b0,1'b1,logic_addr0_carry__1_i_1_n_0,logic_addr0_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    logic_addr0_carry__1_i_1
       (.I0(\pixel_ptr_reg_n_0_[7] ),
        .O(logic_addr0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    logic_addr0_carry__1_i_2
       (.I0(\pixel_ptr_reg_n_0_[6] ),
        .O(logic_addr0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    logic_addr0_carry_i_1
       (.I0(\pixel_ptr_reg_n_0_[1] ),
        .I1(\pixel_ptr_reg_n_0_[3] ),
        .O(logic_addr0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    logic_addr0_carry_i_2
       (.I0(\pixel_ptr_reg_n_0_[0] ),
        .I1(\pixel_ptr_reg_n_0_[2] ),
        .O(logic_addr0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    logic_addr0_carry_i_3
       (.I0(\pixel_ptr_reg_n_0_[1] ),
        .O(logic_addr0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_ptr[0]_i_1 
       (.I0(\pixel_ptr_reg_n_0_[0] ),
        .O(pixel_ptr[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_ptr[1]_i_1 
       (.I0(\pixel_ptr_reg_n_0_[1] ),
        .I1(\pixel_ptr_reg_n_0_[0] ),
        .O(pixel_ptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pixel_ptr[2]_i_1 
       (.I0(\pixel_ptr_reg_n_0_[2] ),
        .I1(\pixel_ptr_reg_n_0_[0] ),
        .I2(\pixel_ptr_reg_n_0_[1] ),
        .O(\pixel_ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pixel_ptr[3]_i_1 
       (.I0(\pixel_ptr_reg_n_0_[3] ),
        .I1(\pixel_ptr_reg_n_0_[1] ),
        .I2(\pixel_ptr_reg_n_0_[0] ),
        .I3(\pixel_ptr_reg_n_0_[2] ),
        .O(pixel_ptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF0000FD)) 
    \pixel_ptr[4]_i_1 
       (.I0(\pixel_ptr_reg_n_0_[7] ),
        .I1(\pixel_ptr_reg_n_0_[5] ),
        .I2(\pixel_ptr_reg_n_0_[6] ),
        .I3(ps_intr_i_3_n_0),
        .I4(\pixel_ptr_reg_n_0_[4] ),
        .O(pixel_ptr[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pixel_ptr[5]_i_1 
       (.I0(\pixel_ptr_reg_n_0_[5] ),
        .I1(\pixel_ptr_reg_n_0_[4] ),
        .I2(\pixel_ptr_reg_n_0_[0] ),
        .I3(\pixel_ptr_reg_n_0_[1] ),
        .I4(\pixel_ptr_reg_n_0_[3] ),
        .I5(\pixel_ptr_reg_n_0_[2] ),
        .O(\pixel_ptr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \pixel_ptr[6]_i_1 
       (.I0(\pixel_ptr_reg_n_0_[6] ),
        .I1(ps_intr_i_3_n_0),
        .I2(\pixel_ptr_reg_n_0_[4] ),
        .I3(\pixel_ptr_reg_n_0_[5] ),
        .O(pixel_ptr[6]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \pixel_ptr[7]_i_1 
       (.I0(pool_ch[0]),
        .I1(pool_ch[2]),
        .I2(pool_ch[4]),
        .I3(pool_ch[3]),
        .I4(pool_valid),
        .I5(pool_ch[1]),
        .O(pixel_ptr0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFE4000)) 
    \pixel_ptr[7]_i_2 
       (.I0(ps_intr_i_3_n_0),
        .I1(\pixel_ptr_reg_n_0_[4] ),
        .I2(\pixel_ptr_reg_n_0_[5] ),
        .I3(\pixel_ptr_reg_n_0_[6] ),
        .I4(\pixel_ptr_reg_n_0_[7] ),
        .O(pixel_ptr[7]));
  FDCE \pixel_ptr_reg[0] 
       (.C(clk),
        .CE(pixel_ptr0),
        .CLR(ps_intr_i_2_n_0),
        .D(pixel_ptr[0]),
        .Q(\pixel_ptr_reg_n_0_[0] ));
  FDCE \pixel_ptr_reg[1] 
       (.C(clk),
        .CE(pixel_ptr0),
        .CLR(ps_intr_i_2_n_0),
        .D(pixel_ptr[1]),
        .Q(\pixel_ptr_reg_n_0_[1] ));
  FDCE \pixel_ptr_reg[2] 
       (.C(clk),
        .CE(pixel_ptr0),
        .CLR(ps_intr_i_2_n_0),
        .D(\pixel_ptr[2]_i_1_n_0 ),
        .Q(\pixel_ptr_reg_n_0_[2] ));
  FDCE \pixel_ptr_reg[3] 
       (.C(clk),
        .CE(pixel_ptr0),
        .CLR(ps_intr_i_2_n_0),
        .D(pixel_ptr[3]),
        .Q(\pixel_ptr_reg_n_0_[3] ));
  FDCE \pixel_ptr_reg[4] 
       (.C(clk),
        .CE(pixel_ptr0),
        .CLR(ps_intr_i_2_n_0),
        .D(pixel_ptr[4]),
        .Q(\pixel_ptr_reg_n_0_[4] ));
  FDCE \pixel_ptr_reg[5] 
       (.C(clk),
        .CE(pixel_ptr0),
        .CLR(ps_intr_i_2_n_0),
        .D(\pixel_ptr[5]_i_1_n_0 ),
        .Q(\pixel_ptr_reg_n_0_[5] ));
  FDCE \pixel_ptr_reg[6] 
       (.C(clk),
        .CE(pixel_ptr0),
        .CLR(ps_intr_i_2_n_0),
        .D(pixel_ptr[6]),
        .Q(\pixel_ptr_reg_n_0_[6] ));
  FDCE \pixel_ptr_reg[7] 
       (.C(clk),
        .CE(pixel_ptr0),
        .CLR(ps_intr_i_2_n_0),
        .D(pixel_ptr[7]),
        .Q(\pixel_ptr_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    ps_intr_i_1
       (.I0(pixel_ptr0),
        .I1(\pixel_ptr_reg_n_0_[7] ),
        .I2(\pixel_ptr_reg_n_0_[5] ),
        .I3(\pixel_ptr_reg_n_0_[6] ),
        .I4(\pixel_ptr_reg_n_0_[4] ),
        .I5(ps_intr_i_3_n_0),
        .O(ps_intr0));
  LUT1 #(
    .INIT(2'h1)) 
    ps_intr_i_2
       (.I0(rst_n),
        .O(ps_intr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    ps_intr_i_3
       (.I0(\pixel_ptr_reg_n_0_[0] ),
        .I1(\pixel_ptr_reg_n_0_[1] ),
        .I2(\pixel_ptr_reg_n_0_[3] ),
        .I3(\pixel_ptr_reg_n_0_[2] ),
        .O(ps_intr_i_3_n_0));
  FDCE ps_intr_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(ps_intr_i_2_n_0),
        .D(ps_intr0),
        .Q(ps_intr));
endmodule
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
