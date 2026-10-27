-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Oct 26 11:09:26 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cnn_maxpool_2x2_0_0_sim_netlist.vhdl
-- Design      : design_1_cnn_maxpool_2x2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_maxpool_2x2 is
  port (
    out_valid : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ch : out STD_LOGIC_VECTOR ( 4 downto 0 );
    in_valid : in STD_LOGIC;
    clk : in STD_LOGIC;
    in_ch : in STD_LOGIC_VECTOR ( 4 downto 0 );
    in_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_maxpool_2x2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_maxpool_2x2 is
  signal col_max1 : STD_LOGIC;
  signal \col_max1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \col_max1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \col_max1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \col_max1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \col_max1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \col_max1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \col_max1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \col_max1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \col_max1_carry__0_n_1\ : STD_LOGIC;
  signal \col_max1_carry__0_n_2\ : STD_LOGIC;
  signal \col_max1_carry__0_n_3\ : STD_LOGIC;
  signal col_max1_carry_i_1_n_0 : STD_LOGIC;
  signal col_max1_carry_i_2_n_0 : STD_LOGIC;
  signal col_max1_carry_i_3_n_0 : STD_LOGIC;
  signal col_max1_carry_i_4_n_0 : STD_LOGIC;
  signal col_max1_carry_i_5_n_0 : STD_LOGIC;
  signal col_max1_carry_i_6_n_0 : STD_LOGIC;
  signal col_max1_carry_i_7_n_0 : STD_LOGIC;
  signal col_max1_carry_i_8_n_0 : STD_LOGIC;
  signal col_max1_carry_n_0 : STD_LOGIC;
  signal col_max1_carry_n_1 : STD_LOGIC;
  signal col_max1_carry_n_2 : STD_LOGIC;
  signal col_max1_carry_n_3 : STD_LOGIC;
  signal col_max_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal final_max : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal final_max1 : STD_LOGIC;
  signal \final_max1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \final_max1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \final_max1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \final_max1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \final_max1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \final_max1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \final_max1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \final_max1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \final_max1_carry__0_n_1\ : STD_LOGIC;
  signal \final_max1_carry__0_n_2\ : STD_LOGIC;
  signal \final_max1_carry__0_n_3\ : STD_LOGIC;
  signal final_max1_carry_i_1_n_0 : STD_LOGIC;
  signal final_max1_carry_i_2_n_0 : STD_LOGIC;
  signal final_max1_carry_i_3_n_0 : STD_LOGIC;
  signal final_max1_carry_i_4_n_0 : STD_LOGIC;
  signal final_max1_carry_i_5_n_0 : STD_LOGIC;
  signal final_max1_carry_i_6_n_0 : STD_LOGIC;
  signal final_max1_carry_i_7_n_0 : STD_LOGIC;
  signal final_max1_carry_i_8_n_0 : STD_LOGIC;
  signal final_max1_carry_n_0 : STD_LOGIC;
  signal final_max1_carry_n_1 : STD_LOGIC;
  signal final_max1_carry_n_2 : STD_LOGIC;
  signal final_max1_carry_n_3 : STD_LOGIC;
  signal in_ch_d1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal in_data_d1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal in_valid_d1 : STD_LOGIC;
  signal out_valid0 : STD_LOGIC;
  signal out_valid_i_2_n_0 : STD_LOGIC;
  signal pixel_we : STD_LOGIC;
  signal prev_col_max_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal row_addr0 : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal \row_addr0__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry__0_n_2\ : STD_LOGIC;
  signal \row_addr0__0_carry__0_n_3\ : STD_LOGIC;
  signal \row_addr0__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry_n_0\ : STD_LOGIC;
  signal \row_addr0__0_carry_n_1\ : STD_LOGIC;
  signal \row_addr0__0_carry_n_2\ : STD_LOGIC;
  signal \row_addr0__0_carry_n_3\ : STD_LOGIC;
  signal \row_addr__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal row_buf_reg_i_10_n_0 : STD_LOGIC;
  signal row_buf_reg_i_2_n_0 : STD_LOGIC;
  signal row_buf_reg_i_2_n_1 : STD_LOGIC;
  signal row_buf_reg_i_2_n_2 : STD_LOGIC;
  signal row_buf_reg_i_2_n_3 : STD_LOGIC;
  signal row_buf_reg_i_3_n_0 : STD_LOGIC;
  signal row_buf_reg_i_3_n_1 : STD_LOGIC;
  signal row_buf_reg_i_3_n_2 : STD_LOGIC;
  signal row_buf_reg_i_3_n_3 : STD_LOGIC;
  signal row_buf_reg_i_5_n_0 : STD_LOGIC;
  signal row_buf_reg_i_6_n_0 : STD_LOGIC;
  signal row_buf_reg_i_7_n_0 : STD_LOGIC;
  signal row_buf_reg_i_8_n_0 : STD_LOGIC;
  signal row_buf_reg_i_9_n_0 : STD_LOGIC;
  signal row_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal x_cnt : STD_LOGIC;
  signal \x_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \x_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \x_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \x_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \x_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \x_cnt_d1_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \x_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal y_cnt : STD_LOGIC;
  signal \y_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \y_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \y_cnt_d1_reg_n_0_[0]\ : STD_LOGIC;
  signal \y_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal NLW_col_max1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col_max1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_final_max1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_final_max1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row_addr0__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_row_addr0__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_row_buf_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_row_buf_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_row_buf_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_row_buf_reg_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_row_buf_reg_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_row_buf_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of col_max1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \col_max1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of final_max1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \final_max1_carry__0\ : label is 11;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_0_0 : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_0_0 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of pixel_buf_reg_0_31_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of pixel_buf_reg_0_31_0_0 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of pixel_buf_reg_0_31_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of pixel_buf_reg_0_31_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of pixel_buf_reg_0_31_0_0 : label is 0;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_10_10 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_10_10 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_10_10 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_10_10 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_10_10 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_10_10 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_10_10 : label is 10;
  attribute ram_slice_end of pixel_buf_reg_0_31_10_10 : label is 10;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_11_11 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_11_11 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_11_11 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_11_11 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_11_11 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_11_11 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_11_11 : label is 11;
  attribute ram_slice_end of pixel_buf_reg_0_31_11_11 : label is 11;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_12_12 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_12_12 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_12_12 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_12_12 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_12_12 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_12_12 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_12_12 : label is 12;
  attribute ram_slice_end of pixel_buf_reg_0_31_12_12 : label is 12;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_13_13 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_13_13 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_13_13 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_13_13 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_13_13 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_13_13 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_13_13 : label is 13;
  attribute ram_slice_end of pixel_buf_reg_0_31_13_13 : label is 13;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_14_14 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_14_14 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_14_14 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_14_14 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_14_14 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_14_14 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_14_14 : label is 14;
  attribute ram_slice_end of pixel_buf_reg_0_31_14_14 : label is 14;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_15_15 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_15_15 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_15_15 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_15_15 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_15_15 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_15_15 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_15_15 : label is 15;
  attribute ram_slice_end of pixel_buf_reg_0_31_15_15 : label is 15;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_1_1 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_1_1 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_1_1 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_1_1 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_1_1 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_1_1 : label is 1;
  attribute ram_slice_end of pixel_buf_reg_0_31_1_1 : label is 1;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_2_2 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_2_2 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_2_2 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_2_2 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_2_2 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_2_2 : label is 2;
  attribute ram_slice_end of pixel_buf_reg_0_31_2_2 : label is 2;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_3_3 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_3_3 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_3_3 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_3_3 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_3_3 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_3_3 : label is 3;
  attribute ram_slice_end of pixel_buf_reg_0_31_3_3 : label is 3;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_4_4 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_4_4 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_4_4 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_4_4 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_4_4 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_4_4 : label is 4;
  attribute ram_slice_end of pixel_buf_reg_0_31_4_4 : label is 4;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_5_5 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_5_5 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_5_5 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_5_5 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_5_5 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_5_5 : label is 5;
  attribute ram_slice_end of pixel_buf_reg_0_31_5_5 : label is 5;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_6_6 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_6_6 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_6_6 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_6_6 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_6_6 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_6_6 : label is 6;
  attribute ram_slice_end of pixel_buf_reg_0_31_6_6 : label is 6;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_7_7 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_7_7 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_7_7 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_7_7 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_7_7 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_7_7 : label is 7;
  attribute ram_slice_end of pixel_buf_reg_0_31_7_7 : label is 7;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_8_8 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_8_8 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_8_8 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_8_8 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_8_8 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_8_8 : label is 8;
  attribute ram_slice_end of pixel_buf_reg_0_31_8_8 : label is 8;
  attribute RTL_RAM_BITS of pixel_buf_reg_0_31_9_9 : label is 512;
  attribute RTL_RAM_NAME of pixel_buf_reg_0_31_9_9 : label is "inst/pixel_buf";
  attribute RTL_RAM_TYPE of pixel_buf_reg_0_31_9_9 : label is "RAM_SP";
  attribute ram_addr_begin of pixel_buf_reg_0_31_9_9 : label is 0;
  attribute ram_addr_end of pixel_buf_reg_0_31_9_9 : label is 31;
  attribute ram_offset of pixel_buf_reg_0_31_9_9 : label is 0;
  attribute ram_slice_begin of pixel_buf_reg_0_31_9_9 : label is 9;
  attribute ram_slice_end of pixel_buf_reg_0_31_9_9 : label is 9;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \row_addr0__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \row_addr0__0_carry__0\ : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of row_buf_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of row_buf_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of row_buf_reg : label is 16384;
  attribute RTL_RAM_NAME of row_buf_reg : label is "inst/row_buf";
  attribute RTL_RAM_TYPE of row_buf_reg : label is "RAM_SP";
  attribute ram_addr_begin of row_buf_reg : label is 0;
  attribute ram_addr_end of row_buf_reg : label is 1023;
  attribute ram_offset of row_buf_reg : label is 0;
  attribute ram_slice_begin of row_buf_reg : label is 0;
  attribute ram_slice_end of row_buf_reg : label is 15;
  attribute ADDER_THRESHOLD of row_buf_reg_i_1 : label is 35;
  attribute ADDER_THRESHOLD of row_buf_reg_i_2 : label is 35;
  attribute ADDER_THRESHOLD of row_buf_reg_i_3 : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \x_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \x_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \x_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \x_cnt[4]_i_2\ : label is "soft_lutpair0";
begin
col_max1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => col_max1_carry_n_0,
      CO(2) => col_max1_carry_n_1,
      CO(1) => col_max1_carry_n_2,
      CO(0) => col_max1_carry_n_3,
      CYINIT => '0',
      DI(3) => col_max1_carry_i_1_n_0,
      DI(2) => col_max1_carry_i_2_n_0,
      DI(1) => col_max1_carry_i_3_n_0,
      DI(0) => col_max1_carry_i_4_n_0,
      O(3 downto 0) => NLW_col_max1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => col_max1_carry_i_5_n_0,
      S(2) => col_max1_carry_i_6_n_0,
      S(1) => col_max1_carry_i_7_n_0,
      S(0) => col_max1_carry_i_8_n_0
    );
\col_max1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => col_max1_carry_n_0,
      CO(3) => col_max1,
      CO(2) => \col_max1_carry__0_n_1\,
      CO(1) => \col_max1_carry__0_n_2\,
      CO(0) => \col_max1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \col_max1_carry__0_i_1_n_0\,
      DI(2) => \col_max1_carry__0_i_2_n_0\,
      DI(1) => \col_max1_carry__0_i_3_n_0\,
      DI(0) => \col_max1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_col_max1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \col_max1_carry__0_i_5_n_0\,
      S(2) => \col_max1_carry__0_i_6_n_0\,
      S(1) => \col_max1_carry__0_i_7_n_0\,
      S(0) => \col_max1_carry__0_i_8_n_0\
    );
\col_max1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_data_d1(14),
      I1 => row_rdata(14),
      I2 => in_data_d1(15),
      I3 => row_rdata(15),
      O => \col_max1_carry__0_i_1_n_0\
    );
\col_max1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_data_d1(12),
      I1 => row_rdata(12),
      I2 => row_rdata(13),
      I3 => in_data_d1(13),
      O => \col_max1_carry__0_i_2_n_0\
    );
\col_max1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_data_d1(10),
      I1 => row_rdata(10),
      I2 => row_rdata(11),
      I3 => in_data_d1(11),
      O => \col_max1_carry__0_i_3_n_0\
    );
\col_max1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_data_d1(8),
      I1 => row_rdata(8),
      I2 => row_rdata(9),
      I3 => in_data_d1(9),
      O => \col_max1_carry__0_i_4_n_0\
    );
\col_max1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_data_d1(14),
      I1 => row_rdata(14),
      I2 => row_rdata(15),
      I3 => in_data_d1(15),
      O => \col_max1_carry__0_i_5_n_0\
    );
\col_max1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_data_d1(12),
      I1 => row_rdata(12),
      I2 => in_data_d1(13),
      I3 => row_rdata(13),
      O => \col_max1_carry__0_i_6_n_0\
    );
\col_max1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_data_d1(10),
      I1 => row_rdata(10),
      I2 => in_data_d1(11),
      I3 => row_rdata(11),
      O => \col_max1_carry__0_i_7_n_0\
    );
\col_max1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_data_d1(8),
      I1 => row_rdata(8),
      I2 => in_data_d1(9),
      I3 => row_rdata(9),
      O => \col_max1_carry__0_i_8_n_0\
    );
col_max1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_data_d1(6),
      I1 => row_rdata(6),
      I2 => row_rdata(7),
      I3 => in_data_d1(7),
      O => col_max1_carry_i_1_n_0
    );
col_max1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_data_d1(4),
      I1 => row_rdata(4),
      I2 => row_rdata(5),
      I3 => in_data_d1(5),
      O => col_max1_carry_i_2_n_0
    );
col_max1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_data_d1(2),
      I1 => row_rdata(2),
      I2 => row_rdata(3),
      I3 => in_data_d1(3),
      O => col_max1_carry_i_3_n_0
    );
col_max1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => in_data_d1(0),
      I1 => row_rdata(0),
      I2 => row_rdata(1),
      I3 => in_data_d1(1),
      O => col_max1_carry_i_4_n_0
    );
col_max1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_data_d1(6),
      I1 => row_rdata(6),
      I2 => in_data_d1(7),
      I3 => row_rdata(7),
      O => col_max1_carry_i_5_n_0
    );
col_max1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_data_d1(4),
      I1 => row_rdata(4),
      I2 => in_data_d1(5),
      I3 => row_rdata(5),
      O => col_max1_carry_i_6_n_0
    );
col_max1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_data_d1(2),
      I1 => row_rdata(2),
      I2 => in_data_d1(3),
      I3 => row_rdata(3),
      O => col_max1_carry_i_7_n_0
    );
col_max1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => in_data_d1(0),
      I1 => row_rdata(0),
      I2 => in_data_d1(1),
      I3 => row_rdata(1),
      O => col_max1_carry_i_8_n_0
    );
final_max1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => final_max1_carry_n_0,
      CO(2) => final_max1_carry_n_1,
      CO(1) => final_max1_carry_n_2,
      CO(0) => final_max1_carry_n_3,
      CYINIT => '0',
      DI(3) => final_max1_carry_i_1_n_0,
      DI(2) => final_max1_carry_i_2_n_0,
      DI(1) => final_max1_carry_i_3_n_0,
      DI(0) => final_max1_carry_i_4_n_0,
      O(3 downto 0) => NLW_final_max1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => final_max1_carry_i_5_n_0,
      S(2) => final_max1_carry_i_6_n_0,
      S(1) => final_max1_carry_i_7_n_0,
      S(0) => final_max1_carry_i_8_n_0
    );
\final_max1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => final_max1_carry_n_0,
      CO(3) => final_max1,
      CO(2) => \final_max1_carry__0_n_1\,
      CO(1) => \final_max1_carry__0_n_2\,
      CO(0) => \final_max1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \final_max1_carry__0_i_1_n_0\,
      DI(2) => \final_max1_carry__0_i_2_n_0\,
      DI(1) => \final_max1_carry__0_i_3_n_0\,
      DI(0) => \final_max1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_final_max1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \final_max1_carry__0_i_5_n_0\,
      S(2) => \final_max1_carry__0_i_6_n_0\,
      S(1) => \final_max1_carry__0_i_7_n_0\,
      S(0) => \final_max1_carry__0_i_8_n_0\
    );
\final_max1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => col_max1,
      I1 => row_rdata(14),
      I2 => in_data_d1(14),
      I3 => prev_col_max_s(14),
      I4 => col_max_s(15),
      I5 => prev_col_max_s(15),
      O => \final_max1_carry__0_i_1_n_0\
    );
\final_max1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => col_max1,
      I1 => row_rdata(12),
      I2 => in_data_d1(12),
      I3 => prev_col_max_s(12),
      I4 => prev_col_max_s(13),
      I5 => col_max_s(13),
      O => \final_max1_carry__0_i_2_n_0\
    );
\final_max1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => col_max1,
      I1 => row_rdata(10),
      I2 => in_data_d1(10),
      I3 => prev_col_max_s(10),
      I4 => prev_col_max_s(11),
      I5 => col_max_s(11),
      O => \final_max1_carry__0_i_3_n_0\
    );
\final_max1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => col_max1,
      I1 => row_rdata(8),
      I2 => in_data_d1(8),
      I3 => prev_col_max_s(8),
      I4 => prev_col_max_s(9),
      I5 => col_max_s(9),
      O => \final_max1_carry__0_i_4_n_0\
    );
\final_max1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => in_data_d1(14),
      I1 => row_rdata(14),
      I2 => col_max1,
      I3 => prev_col_max_s(14),
      I4 => prev_col_max_s(15),
      I5 => col_max_s(15),
      O => \final_max1_carry__0_i_5_n_0\
    );
\final_max1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => in_data_d1(12),
      I1 => row_rdata(12),
      I2 => col_max1,
      I3 => prev_col_max_s(12),
      I4 => col_max_s(13),
      I5 => prev_col_max_s(13),
      O => \final_max1_carry__0_i_6_n_0\
    );
\final_max1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => in_data_d1(10),
      I1 => row_rdata(10),
      I2 => col_max1,
      I3 => prev_col_max_s(10),
      I4 => col_max_s(11),
      I5 => prev_col_max_s(11),
      O => \final_max1_carry__0_i_7_n_0\
    );
\final_max1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => in_data_d1(8),
      I1 => row_rdata(8),
      I2 => col_max1,
      I3 => prev_col_max_s(8),
      I4 => col_max_s(9),
      I5 => prev_col_max_s(9),
      O => \final_max1_carry__0_i_8_n_0\
    );
final_max1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => col_max1,
      I1 => row_rdata(6),
      I2 => in_data_d1(6),
      I3 => prev_col_max_s(6),
      I4 => prev_col_max_s(7),
      I5 => col_max_s(7),
      O => final_max1_carry_i_1_n_0
    );
final_max1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => col_max1,
      I1 => row_rdata(4),
      I2 => in_data_d1(4),
      I3 => prev_col_max_s(4),
      I4 => prev_col_max_s(5),
      I5 => col_max_s(5),
      O => final_max1_carry_i_2_n_0
    );
final_max1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => col_max1,
      I1 => row_rdata(2),
      I2 => in_data_d1(2),
      I3 => prev_col_max_s(2),
      I4 => prev_col_max_s(3),
      I5 => col_max_s(3),
      O => final_max1_carry_i_3_n_0
    );
final_max1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => col_max1,
      I1 => row_rdata(0),
      I2 => in_data_d1(0),
      I3 => prev_col_max_s(0),
      I4 => prev_col_max_s(1),
      I5 => col_max_s(1),
      O => final_max1_carry_i_4_n_0
    );
final_max1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => in_data_d1(6),
      I1 => row_rdata(6),
      I2 => col_max1,
      I3 => prev_col_max_s(6),
      I4 => col_max_s(7),
      I5 => prev_col_max_s(7),
      O => final_max1_carry_i_5_n_0
    );
final_max1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => in_data_d1(4),
      I1 => row_rdata(4),
      I2 => col_max1,
      I3 => prev_col_max_s(4),
      I4 => col_max_s(5),
      I5 => prev_col_max_s(5),
      O => final_max1_carry_i_6_n_0
    );
final_max1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => in_data_d1(2),
      I1 => row_rdata(2),
      I2 => col_max1,
      I3 => prev_col_max_s(2),
      I4 => col_max_s(3),
      I5 => prev_col_max_s(3),
      O => final_max1_carry_i_7_n_0
    );
final_max1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => in_data_d1(0),
      I1 => row_rdata(0),
      I2 => col_max1,
      I3 => prev_col_max_s(0),
      I4 => col_max_s(1),
      I5 => prev_col_max_s(1),
      O => final_max1_carry_i_8_n_0
    );
\in_ch_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_ch(0),
      Q => in_ch_d1(0)
    );
\in_ch_d1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_ch(1),
      Q => in_ch_d1(1)
    );
\in_ch_d1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_ch(2),
      Q => in_ch_d1(2)
    );
\in_ch_d1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_ch(3),
      Q => in_ch_d1(3)
    );
\in_ch_d1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_ch(4),
      Q => in_ch_d1(4)
    );
\in_data_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(0),
      Q => in_data_d1(0)
    );
\in_data_d1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(10),
      Q => in_data_d1(10)
    );
\in_data_d1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(11),
      Q => in_data_d1(11)
    );
\in_data_d1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(12),
      Q => in_data_d1(12)
    );
\in_data_d1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(13),
      Q => in_data_d1(13)
    );
\in_data_d1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(14),
      Q => in_data_d1(14)
    );
\in_data_d1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(15),
      Q => in_data_d1(15)
    );
\in_data_d1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(1),
      Q => in_data_d1(1)
    );
\in_data_d1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(2),
      Q => in_data_d1(2)
    );
\in_data_d1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(3),
      Q => in_data_d1(3)
    );
\in_data_d1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(4),
      Q => in_data_d1(4)
    );
\in_data_d1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(5),
      Q => in_data_d1(5)
    );
\in_data_d1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(6),
      Q => in_data_d1(6)
    );
\in_data_d1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(7),
      Q => in_data_d1(7)
    );
\in_data_d1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(8),
      Q => in_data_d1(8)
    );
\in_data_d1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_data(9),
      Q => in_data_d1(9)
    );
in_valid_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => in_valid,
      Q => in_valid_d1
    );
\out_ch_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => in_ch_d1(0),
      Q => out_ch(0)
    );
\out_ch_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => in_ch_d1(1),
      Q => out_ch(1)
    );
\out_ch_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => in_ch_d1(2),
      Q => out_ch(2)
    );
\out_ch_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => in_ch_d1(3),
      Q => out_ch(3)
    );
\out_ch_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => in_ch_d1(4),
      Q => out_ch(4)
    );
\out_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(0),
      I1 => row_rdata(0),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(0),
      O => final_max(0)
    );
\out_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(10),
      I1 => row_rdata(10),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(10),
      O => final_max(10)
    );
\out_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(11),
      I1 => row_rdata(11),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(11),
      O => final_max(11)
    );
\out_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(12),
      I1 => row_rdata(12),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(12),
      O => final_max(12)
    );
\out_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(13),
      I1 => row_rdata(13),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(13),
      O => final_max(13)
    );
\out_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(14),
      I1 => row_rdata(14),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(14),
      O => final_max(14)
    );
\out_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(15),
      I1 => row_rdata(15),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(15),
      O => final_max(15)
    );
\out_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(1),
      I1 => row_rdata(1),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(1),
      O => final_max(1)
    );
\out_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(2),
      I1 => row_rdata(2),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(2),
      O => final_max(2)
    );
\out_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(3),
      I1 => row_rdata(3),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(3),
      O => final_max(3)
    );
\out_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(4),
      I1 => row_rdata(4),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(4),
      O => final_max(4)
    );
\out_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(5),
      I1 => row_rdata(5),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(5),
      O => final_max(5)
    );
\out_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(6),
      I1 => row_rdata(6),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(6),
      O => final_max(6)
    );
\out_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(7),
      I1 => row_rdata(7),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(7),
      O => final_max(7)
    );
\out_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(8),
      I1 => row_rdata(8),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(8),
      O => final_max(8)
    );
\out_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => in_data_d1(9),
      I1 => row_rdata(9),
      I2 => col_max1,
      I3 => final_max1,
      I4 => prev_col_max_s(9),
      O => final_max(9)
    );
\out_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(0),
      Q => out_data(0)
    );
\out_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(10),
      Q => out_data(10)
    );
\out_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(11),
      Q => out_data(11)
    );
\out_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(12),
      Q => out_data(12)
    );
\out_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(13),
      Q => out_data(13)
    );
\out_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(14),
      Q => out_data(14)
    );
\out_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(15),
      Q => out_data(15)
    );
\out_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(1),
      Q => out_data(1)
    );
\out_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(2),
      Q => out_data(2)
    );
\out_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(3),
      Q => out_data(3)
    );
\out_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(4),
      Q => out_data(4)
    );
\out_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(5),
      Q => out_data(5)
    );
\out_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(6),
      Q => out_data(6)
    );
\out_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(7),
      Q => out_data(7)
    );
\out_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(8),
      Q => out_data(8)
    );
\out_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => out_valid0,
      CLR => out_valid_i_2_n_0,
      D => final_max(9),
      Q => out_data(9)
    );
out_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \y_cnt_d1_reg_n_0_[0]\,
      I1 => in_valid_d1,
      I2 => \x_cnt_d1_reg_n_0_[0]\,
      O => out_valid0
    );
out_valid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => out_valid_i_2_n_0
    );
out_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => out_valid0,
      Q => out_valid
    );
pixel_buf_reg_0_31_0_0: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(0),
      O => prev_col_max_s(0),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(0),
      I1 => row_rdata(0),
      I2 => col_max1,
      O => col_max_s(0)
    );
pixel_buf_reg_0_31_0_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \y_cnt_d1_reg_n_0_[0]\,
      I1 => in_valid_d1,
      I2 => \x_cnt_d1_reg_n_0_[0]\,
      O => pixel_we
    );
pixel_buf_reg_0_31_10_10: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(10),
      O => prev_col_max_s(10),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_10_10_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(10),
      I1 => row_rdata(10),
      I2 => col_max1,
      O => col_max_s(10)
    );
pixel_buf_reg_0_31_11_11: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(11),
      O => prev_col_max_s(11),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_11_11_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(11),
      I1 => row_rdata(11),
      I2 => col_max1,
      O => col_max_s(11)
    );
pixel_buf_reg_0_31_12_12: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(12),
      O => prev_col_max_s(12),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_12_12_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(12),
      I1 => row_rdata(12),
      I2 => col_max1,
      O => col_max_s(12)
    );
pixel_buf_reg_0_31_13_13: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(13),
      O => prev_col_max_s(13),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_13_13_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(13),
      I1 => row_rdata(13),
      I2 => col_max1,
      O => col_max_s(13)
    );
pixel_buf_reg_0_31_14_14: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(14),
      O => prev_col_max_s(14),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_14_14_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(14),
      I1 => row_rdata(14),
      I2 => col_max1,
      O => col_max_s(14)
    );
pixel_buf_reg_0_31_15_15: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(15),
      O => prev_col_max_s(15),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_15_15_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(15),
      I1 => row_rdata(15),
      I2 => col_max1,
      O => col_max_s(15)
    );
pixel_buf_reg_0_31_1_1: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(1),
      O => prev_col_max_s(1),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_1_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(1),
      I1 => row_rdata(1),
      I2 => col_max1,
      O => col_max_s(1)
    );
pixel_buf_reg_0_31_2_2: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(2),
      O => prev_col_max_s(2),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_2_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(2),
      I1 => row_rdata(2),
      I2 => col_max1,
      O => col_max_s(2)
    );
pixel_buf_reg_0_31_3_3: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(3),
      O => prev_col_max_s(3),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_3_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(3),
      I1 => row_rdata(3),
      I2 => col_max1,
      O => col_max_s(3)
    );
pixel_buf_reg_0_31_4_4: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(4),
      O => prev_col_max_s(4),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_4_4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(4),
      I1 => row_rdata(4),
      I2 => col_max1,
      O => col_max_s(4)
    );
pixel_buf_reg_0_31_5_5: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(5),
      O => prev_col_max_s(5),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_5_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(5),
      I1 => row_rdata(5),
      I2 => col_max1,
      O => col_max_s(5)
    );
pixel_buf_reg_0_31_6_6: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(6),
      O => prev_col_max_s(6),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_6_6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(6),
      I1 => row_rdata(6),
      I2 => col_max1,
      O => col_max_s(6)
    );
pixel_buf_reg_0_31_7_7: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(7),
      O => prev_col_max_s(7),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_7_7_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(7),
      I1 => row_rdata(7),
      I2 => col_max1,
      O => col_max_s(7)
    );
pixel_buf_reg_0_31_8_8: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(8),
      O => prev_col_max_s(8),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_8_8_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(8),
      I1 => row_rdata(8),
      I2 => col_max1,
      O => col_max_s(8)
    );
pixel_buf_reg_0_31_9_9: unisim.vcomponents.RAM32X1S
     port map (
      A0 => in_ch_d1(0),
      A1 => in_ch_d1(1),
      A2 => in_ch_d1(2),
      A3 => in_ch_d1(3),
      A4 => in_ch_d1(4),
      D => col_max_s(9),
      O => prev_col_max_s(9),
      WCLK => clk,
      WE => pixel_we
    );
pixel_buf_reg_0_31_9_9_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in_data_d1(9),
      I1 => row_rdata(9),
      I2 => col_max1,
      O => col_max_s(9)
    );
\row_addr0__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \row_addr0__0_carry_n_0\,
      CO(2) => \row_addr0__0_carry_n_1\,
      CO(1) => \row_addr0__0_carry_n_2\,
      CO(0) => \row_addr0__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \row_addr0__0_carry_i_1_n_0\,
      DI(2) => \row_addr0__0_carry_i_2_n_0\,
      DI(1) => \row_addr0__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => row_addr0(6 downto 3),
      S(3) => \row_addr0__0_carry_i_4_n_0\,
      S(2) => \row_addr0__0_carry_i_5_n_0\,
      S(1) => \row_addr0__0_carry_i_6_n_0\,
      S(0) => \row_addr0__0_carry_i_7_n_0\
    );
\row_addr0__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_addr0__0_carry_n_0\,
      CO(3 downto 2) => \NLW_row_addr0__0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \row_addr0__0_carry__0_n_2\,
      CO(0) => \row_addr0__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \row_addr0__0_carry__0_i_1_n_0\,
      DI(0) => \row_addr0__0_carry__0_i_2_n_0\,
      O(3) => \NLW_row_addr0__0_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => row_addr0(9 downto 7),
      S(3) => '0',
      S(2) => \row_addr0__0_carry__0_i_3_n_0\,
      S(1) => \row_addr0__0_carry__0_i_4_n_0\,
      S(0) => \row_addr0__0_carry__0_i_5_n_0\
    );
\row_addr0__0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[3]\,
      O => \row_addr0__0_carry__0_i_1_n_0\
    );
\row_addr0__0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54FF00AA"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[4]\,
      I1 => \x_cnt_reg_n_0_[2]\,
      I2 => \x_cnt_reg_n_0_[0]\,
      I3 => \x_cnt_reg_n_0_[3]\,
      I4 => \x_cnt_reg_n_0_[1]\,
      O => \row_addr0__0_carry__0_i_2_n_0\
    );
\row_addr0__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[4]\,
      I1 => \x_cnt_reg_n_0_[3]\,
      O => \row_addr0__0_carry__0_i_3_n_0\
    );
\row_addr0__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA5D"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[2]\,
      I1 => \x_cnt_reg_n_0_[4]\,
      I2 => \x_cnt_reg_n_0_[1]\,
      I3 => \x_cnt_reg_n_0_[3]\,
      O => \row_addr0__0_carry__0_i_4_n_0\
    );
\row_addr0__0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3D33FC33"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[0]\,
      I1 => \x_cnt_reg_n_0_[2]\,
      I2 => \x_cnt_reg_n_0_[4]\,
      I3 => \x_cnt_reg_n_0_[1]\,
      I4 => \x_cnt_reg_n_0_[3]\,
      O => \row_addr0__0_carry__0_i_5_n_0\
    );
\row_addr0__0_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF0066"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[4]\,
      I1 => \x_cnt_reg_n_0_[3]\,
      I2 => \x_cnt_reg_n_0_[1]\,
      I3 => \x_cnt_reg_n_0_[2]\,
      I4 => \x_cnt_reg_n_0_[0]\,
      O => \row_addr0__0_carry_i_1_n_0\
    );
\row_addr0__0_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65A69A99"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[4]\,
      I1 => \x_cnt_reg_n_0_[3]\,
      I2 => \x_cnt_reg_n_0_[1]\,
      I3 => \x_cnt_reg_n_0_[2]\,
      I4 => \x_cnt_reg_n_0_[0]\,
      O => \row_addr0__0_carry_i_2_n_0\
    );
\row_addr0__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[2]\,
      I1 => \x_cnt_reg_n_0_[0]\,
      O => \row_addr0__0_carry_i_3_n_0\
    );
\row_addr0__0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"585975E5"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[1]\,
      I1 => \x_cnt_reg_n_0_[3]\,
      I2 => \x_cnt_reg_n_0_[0]\,
      I3 => \x_cnt_reg_n_0_[2]\,
      I4 => \x_cnt_reg_n_0_[4]\,
      O => \row_addr0__0_carry_i_4_n_0\
    );
\row_addr0__0_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66C99999"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[0]\,
      I1 => \x_cnt_reg_n_0_[4]\,
      I2 => \x_cnt_reg_n_0_[1]\,
      I3 => \x_cnt_reg_n_0_[2]\,
      I4 => \x_cnt_reg_n_0_[3]\,
      O => \row_addr0__0_carry_i_5_n_0\
    );
\row_addr0__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[2]\,
      I1 => \x_cnt_reg_n_0_[0]\,
      I2 => \x_cnt_reg_n_0_[1]\,
      I3 => \x_cnt_reg_n_0_[3]\,
      O => \row_addr0__0_carry_i_6_n_0\
    );
\row_addr0__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[1]\,
      I1 => \x_cnt_reg_n_0_[0]\,
      I2 => \x_cnt_reg_n_0_[2]\,
      O => \row_addr0__0_carry_i_7_n_0\
    );
row_buf_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 5) => \row_addr__0\(9 downto 1),
      ADDRARDADDR(4) => in_ch(0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => in_data(15 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => row_rdata(15 downto 0),
      DOBDO(15 downto 0) => NLW_row_buf_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_row_buf_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_row_buf_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => row_buf_reg_i_5_n_0,
      WEA(0) => row_buf_reg_i_5_n_0,
      WEBWE(3 downto 0) => B"0000"
    );
row_buf_reg_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => row_buf_reg_i_2_n_0,
      CO(3 downto 0) => NLW_row_buf_reg_i_1_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_row_buf_reg_i_1_O_UNCONNECTED(3 downto 1),
      O(0) => \row_addr__0\(9),
      S(3 downto 1) => B"000",
      S(0) => row_addr0(9)
    );
row_buf_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[0]\,
      I1 => in_ch(1),
      O => row_buf_reg_i_10_n_0
    );
row_buf_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => row_buf_reg_i_3_n_0,
      CO(3) => row_buf_reg_i_2_n_0,
      CO(2) => row_buf_reg_i_2_n_1,
      CO(1) => row_buf_reg_i_2_n_2,
      CO(0) => row_buf_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \row_addr__0\(8 downto 5),
      S(3 downto 0) => row_addr0(8 downto 5)
    );
row_buf_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => row_buf_reg_i_3_n_0,
      CO(2) => row_buf_reg_i_3_n_1,
      CO(1) => row_buf_reg_i_3_n_2,
      CO(0) => row_buf_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 2) => row_addr0(4 downto 3),
      DI(1) => row_buf_reg_i_6_n_0,
      DI(0) => \x_cnt_reg_n_0_[0]\,
      O(3 downto 1) => \row_addr__0\(4 downto 2),
      O(0) => NLW_row_buf_reg_i_3_O_UNCONNECTED(0),
      S(3) => row_buf_reg_i_7_n_0,
      S(2) => row_buf_reg_i_8_n_0,
      S(1) => row_buf_reg_i_9_n_0,
      S(0) => row_buf_reg_i_10_n_0
    );
row_buf_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[0]\,
      I1 => in_ch(1),
      O => \row_addr__0\(1)
    );
row_buf_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in_valid,
      I1 => \y_cnt_reg_n_0_[0]\,
      O => row_buf_reg_i_5_n_0
    );
row_buf_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[0]\,
      I1 => \x_cnt_reg_n_0_[1]\,
      O => row_buf_reg_i_6_n_0
    );
row_buf_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => row_addr0(4),
      I1 => in_ch(4),
      O => row_buf_reg_i_7_n_0
    );
row_buf_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => row_addr0(3),
      I1 => in_ch(3),
      O => row_buf_reg_i_8_n_0
    );
row_buf_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[1]\,
      I1 => \x_cnt_reg_n_0_[0]\,
      I2 => in_ch(2),
      O => row_buf_reg_i_9_n_0
    );
\x_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[0]\,
      O => \x_cnt[0]_i_1_n_0\
    );
\x_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[0]\,
      I1 => \x_cnt_reg_n_0_[1]\,
      O => \x_cnt[1]_i_1_n_0\
    );
\x_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[2]\,
      I1 => \x_cnt_reg_n_0_[0]\,
      I2 => \x_cnt_reg_n_0_[1]\,
      O => \x_cnt[2]_i_1_n_0\
    );
\x_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1CCCCCCC"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[4]\,
      I1 => \x_cnt_reg_n_0_[3]\,
      I2 => \x_cnt_reg_n_0_[0]\,
      I3 => \x_cnt_reg_n_0_[1]\,
      I4 => \x_cnt_reg_n_0_[2]\,
      O => \x_cnt[3]_i_1_n_0\
    );
\x_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => in_ch(1),
      I1 => in_ch(0),
      I2 => in_ch(3),
      I3 => in_ch(2),
      I4 => in_ch(4),
      I5 => in_valid,
      O => x_cnt
    );
\x_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA2AAA"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[4]\,
      I1 => \x_cnt_reg_n_0_[2]\,
      I2 => \x_cnt_reg_n_0_[1]\,
      I3 => \x_cnt_reg_n_0_[0]\,
      I4 => \x_cnt_reg_n_0_[3]\,
      O => \x_cnt[4]_i_2_n_0\
    );
\x_cnt_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => \x_cnt_reg_n_0_[0]\,
      Q => \x_cnt_d1_reg_n_0_[0]\
    );
\x_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => x_cnt,
      CLR => out_valid_i_2_n_0,
      D => \x_cnt[0]_i_1_n_0\,
      Q => \x_cnt_reg_n_0_[0]\
    );
\x_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => x_cnt,
      CLR => out_valid_i_2_n_0,
      D => \x_cnt[1]_i_1_n_0\,
      Q => \x_cnt_reg_n_0_[1]\
    );
\x_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => x_cnt,
      CLR => out_valid_i_2_n_0,
      D => \x_cnt[2]_i_1_n_0\,
      Q => \x_cnt_reg_n_0_[2]\
    );
\x_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => x_cnt,
      CLR => out_valid_i_2_n_0,
      D => \x_cnt[3]_i_1_n_0\,
      Q => \x_cnt_reg_n_0_[3]\
    );
\x_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => x_cnt,
      CLR => out_valid_i_2_n_0,
      D => \x_cnt[4]_i_2_n_0\,
      Q => \x_cnt_reg_n_0_[4]\
    );
\y_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[4]\,
      I1 => in_ch(1),
      I2 => \y_cnt[0]_i_3_n_0\,
      I3 => in_ch(4),
      I4 => \x_cnt_reg_n_0_[3]\,
      I5 => in_valid,
      O => y_cnt
    );
\y_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \y_cnt_reg_n_0_[0]\,
      O => \y_cnt[0]_i_2_n_0\
    );
\y_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \x_cnt_reg_n_0_[0]\,
      I1 => in_ch(0),
      I2 => in_ch(3),
      I3 => in_ch(2),
      I4 => \x_cnt_reg_n_0_[1]\,
      I5 => \x_cnt_reg_n_0_[2]\,
      O => \y_cnt[0]_i_3_n_0\
    );
\y_cnt_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => out_valid_i_2_n_0,
      D => \y_cnt_reg_n_0_[0]\,
      Q => \y_cnt_d1_reg_n_0_[0]\
    );
\y_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => y_cnt,
      CLR => out_valid_i_2_n_0,
      D => \y_cnt[0]_i_2_n_0\,
      Q => \y_cnt_reg_n_0_[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    in_valid : in STD_LOGIC;
    in_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_ch : in STD_LOGIC_VECTOR ( 4 downto 0 );
    out_valid : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ch : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_cnn_maxpool_2x2_0_0,cnn_maxpool_2x2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cnn_maxpool_2x2,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_cam_captrue_data_0_0_vid_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_maxpool_2x2
     port map (
      clk => clk,
      in_ch(4 downto 0) => in_ch(4 downto 0),
      in_data(15 downto 0) => in_data(15 downto 0),
      in_valid => in_valid,
      out_ch(4 downto 0) => out_ch(4 downto 0),
      out_data(15 downto 0) => out_data(15 downto 0),
      out_valid => out_valid,
      rst_n => rst_n
    );
end STRUCTURE;
