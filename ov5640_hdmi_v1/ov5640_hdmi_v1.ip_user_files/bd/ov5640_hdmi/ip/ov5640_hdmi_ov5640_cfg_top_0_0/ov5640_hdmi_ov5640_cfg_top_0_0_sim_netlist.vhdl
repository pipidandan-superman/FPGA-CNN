-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Mar 31 17:03:35 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/FPGA_Project/2020_2/CNN/proj/ov5640_hdmi_v1/ov5640_hdmi_v1.gen/sources_1/bd/ov5640_hdmi/ip/ov5640_hdmi_ov5640_cfg_top_0_0/ov5640_hdmi_ov5640_cfg_top_0_0_sim_netlist.vhdl
-- Design      : ov5640_hdmi_ov5640_cfg_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ov5640_hdmi_ov5640_cfg_top_0_0_sccb_protocol is
  port (
    sys_rst_n_0 : out STD_LOGIC;
    sccb_scl : out STD_LOGIC;
    sccb_sda : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_index_reg_rep[7]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rst_cnt_reg[7]_inv\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    write_en : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    wr_flag_reg_0 : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    \write_data_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_data_reg[0]_0\ : in STD_LOGIC;
    \write_data_reg[0]_1\ : in STD_LOGIC;
    \reg_addr_reg[1]\ : in STD_LOGIC;
    \reg_addr_reg[1]_0\ : in STD_LOGIC;
    \reg_addr_reg[1]_1\ : in STD_LOGIC;
    \write_data_reg[2]\ : in STD_LOGIC;
    \write_data_reg[2]_0\ : in STD_LOGIC;
    \write_data_reg[2]_1\ : in STD_LOGIC;
    \write_data_reg[5]\ : in STD_LOGIC;
    \write_data_reg[5]_0\ : in STD_LOGIC;
    \write_data_reg[5]_1\ : in STD_LOGIC;
    \write_data_reg[6]\ : in STD_LOGIC;
    \write_data_reg[6]_0\ : in STD_LOGIC;
    \write_data_reg[6]_1\ : in STD_LOGIC;
    \write_data_reg[7]\ : in STD_LOGIC;
    \write_data_reg[7]_0\ : in STD_LOGIC;
    \write_data_reg[7]_1\ : in STD_LOGIC;
    \reg_addr_reg[0]\ : in STD_LOGIC;
    \reg_addr_reg[0]_0\ : in STD_LOGIC;
    \reg_addr_reg[0]_1\ : in STD_LOGIC;
    \reg_addr_reg[2]\ : in STD_LOGIC;
    \reg_addr_reg[2]_0\ : in STD_LOGIC;
    \reg_addr_reg[2]_1\ : in STD_LOGIC;
    \reg_addr_reg[9]\ : in STD_LOGIC;
    \reg_addr_reg[9]_0\ : in STD_LOGIC;
    \reg_addr_reg[9]_1\ : in STD_LOGIC;
    \write_data_reg[1]\ : in STD_LOGIC;
    \write_data_reg[1]_0\ : in STD_LOGIC;
    \write_data_reg[1]_1\ : in STD_LOGIC;
    \reg_addr_reg[11]\ : in STD_LOGIC;
    \reg_addr_reg[11]_0\ : in STD_LOGIC;
    \reg_addr_reg[12]\ : in STD_LOGIC;
    \reg_addr_reg[12]_0\ : in STD_LOGIC;
    \reg_addr_reg[13]\ : in STD_LOGIC;
    \reg_addr_reg[13]_0\ : in STD_LOGIC;
    \write_data_reg[3]\ : in STD_LOGIC;
    \write_data_reg[3]_0\ : in STD_LOGIC;
    \write_data_reg[3]_1\ : in STD_LOGIC;
    \write_data_reg[4]\ : in STD_LOGIC;
    \write_data_reg[4]_0\ : in STD_LOGIC;
    \write_data_reg[4]_1\ : in STD_LOGIC;
    \reg_addr_reg[3]\ : in STD_LOGIC;
    \reg_addr_reg[3]_0\ : in STD_LOGIC;
    \reg_addr_reg[3]_1\ : in STD_LOGIC;
    \reg_addr_reg[5]\ : in STD_LOGIC;
    \reg_addr_reg[5]_0\ : in STD_LOGIC;
    \reg_addr_reg[5]_1\ : in STD_LOGIC;
    \reg_addr_reg[10]\ : in STD_LOGIC;
    \reg_addr_reg[10]_0\ : in STD_LOGIC;
    \reg_addr_reg[10]_1\ : in STD_LOGIC;
    \reg_addr_reg[4]\ : in STD_LOGIC;
    \reg_addr_reg[4]_0\ : in STD_LOGIC;
    \reg_addr_reg[4]_1\ : in STD_LOGIC;
    \reg_addr_reg[8]\ : in STD_LOGIC;
    \reg_addr_reg[8]_0\ : in STD_LOGIC;
    \reg_addr_reg[8]_1\ : in STD_LOGIC;
    \reg_addr_reg[14]\ : in STD_LOGIC;
    \reg_addr_reg[14]_0\ : in STD_LOGIC;
    \reg_addr_reg[14]_1\ : in STD_LOGIC;
    \reg_addr_reg[7]\ : in STD_LOGIC;
    sel : in STD_LOGIC;
    \reg_index_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sda_out_reg_i_4_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    sda_out_i_6_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_index_reg_rep[4]\ : in STD_LOGIC;
    \reg_index_reg_rep[5]\ : in STD_LOGIC;
    \reg_index_reg_rep[6]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ov5640_hdmi_ov5640_cfg_top_0_0_sccb_protocol : entity is "sccb_protocol";
end ov5640_hdmi_ov5640_cfg_top_0_0_sccb_protocol;

architecture STRUCTURE of ov5640_hdmi_ov5640_cfg_top_0_0_sccb_protocol is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal cnt_bit : STD_LOGIC;
  signal \cnt_bit[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_bit[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_bit[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[4]\ : STD_LOGIC;
  signal cnt_clk : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_clk[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[15]_i_3_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_clk_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[9]\ : STD_LOGIC;
  signal cnt_delay : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay[7]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_delay__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg_addr[14]_i_5_n_0\ : STD_LOGIC;
  signal sccb_cfg_done : STD_LOGIC;
  signal sccb_cfg_done_i_1_n_0 : STD_LOGIC;
  signal sccb_clk_i_10_n_0 : STD_LOGIC;
  signal sccb_clk_i_11_n_0 : STD_LOGIC;
  signal sccb_clk_i_12_n_0 : STD_LOGIC;
  signal sccb_clk_i_13_n_0 : STD_LOGIC;
  signal sccb_clk_i_14_n_0 : STD_LOGIC;
  signal sccb_clk_i_2_n_0 : STD_LOGIC;
  signal sccb_clk_i_3_n_0 : STD_LOGIC;
  signal sccb_clk_i_4_n_0 : STD_LOGIC;
  signal sccb_clk_i_5_n_0 : STD_LOGIC;
  signal sccb_clk_i_6_n_0 : STD_LOGIC;
  signal sccb_clk_i_7_n_0 : STD_LOGIC;
  signal sccb_clk_i_8_n_0 : STD_LOGIC;
  signal sccb_clk_i_9_n_0 : STD_LOGIC;
  signal \^sccb_scl\ : STD_LOGIC;
  signal sda_out : STD_LOGIC;
  signal sda_out_i_10_n_0 : STD_LOGIC;
  signal sda_out_i_11_n_0 : STD_LOGIC;
  signal sda_out_i_12_n_0 : STD_LOGIC;
  signal sda_out_i_13_n_0 : STD_LOGIC;
  signal sda_out_i_14_n_0 : STD_LOGIC;
  signal sda_out_i_2_n_0 : STD_LOGIC;
  signal sda_out_i_3_n_0 : STD_LOGIC;
  signal sda_out_i_6_n_0 : STD_LOGIC;
  signal sda_out_i_7_n_0 : STD_LOGIC;
  signal sda_out_i_8_n_0 : STD_LOGIC;
  signal sda_out_i_9_n_0 : STD_LOGIC;
  signal sda_out_reg_i_4_n_0 : STD_LOGIC;
  signal sda_out_reg_i_5_n_0 : STD_LOGIC;
  signal sda_out_reg_n_0 : STD_LOGIC;
  signal \^sys_rst_n_0\ : STD_LOGIC;
  signal w_byte_cnt0 : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \w_byte_cnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \w_byte_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \w_byte_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \w_byte_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \w_byte_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \w_byte_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal \w_byte_cnt[7]_i_7_n_0\ : STD_LOGIC;
  signal \w_byte_cnt[7]_i_8_n_0\ : STD_LOGIC;
  signal w_byte_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_flag : STD_LOGIC;
  signal wr_flag_0 : STD_LOGIC;
  signal wr_flag_i_1_n_0 : STD_LOGIC;
  signal \NLW_cnt_clk_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_clk_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_w_byte_cnt0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_w_byte_cnt0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_w_byte_cnt0_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_w_byte_cnt0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_state[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_state[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_state[9]_i_7\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "REG_ADDR:0000001000,WR_DATA:0000010000,DEV_W:0000000100,STA_1:0000000010,IDLE:0000000001,RD_DATA:0010000000,STOP_2:1000000000,STOP_1:0100000000,DEV_R:0001000000,STA_2:0000100000";
  attribute SOFT_HLUTNM of \cnt_bit[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_bit[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_bit[4]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_clk[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt_clk[11]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt_clk[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt_clk[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt_clk[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt_clk[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_clk[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_clk[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_clk[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_clk[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_clk[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_clk[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt_clk[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt_clk[9]_i_1\ : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_clk_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_clk_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_clk_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_clk_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \cnt_delay[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_delay[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_delay[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_delay[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_delay[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_delay[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_delay[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_addr[14]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_index[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_index[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_index[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_index[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_index[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_index[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_index[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_index[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of sccb_clk_i_10 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sccb_clk_i_11 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sccb_clk_i_13 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sccb_clk_i_14 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sccb_clk_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sccb_clk_i_9 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w_byte_cnt[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \w_byte_cnt[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \w_byte_cnt[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \w_byte_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w_byte_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w_byte_cnt[7]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \w_byte_cnt[7]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w_byte_cnt[7]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of write_en_i_1 : label is "soft_lutpair15";
begin
  sccb_scl <= \^sccb_scl\;
  sccb_sda <= sda_out_reg_n_0;
  sys_rst_n_0 <= \^sys_rst_n_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_2_n_0\,
      I1 => wr_flag,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state[0]_i_3_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => wr_flag_reg_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \w_byte_cnt[7]_i_6_n_0\,
      I1 => \w_byte_cnt[7]_i_5_n_0\,
      I2 => \cnt_clk_reg_n_0_[1]\,
      I3 => \cnt_clk_reg_n_0_[8]\,
      I4 => \cnt_clk_reg_n_0_[3]\,
      I5 => \FSM_onehot_state[4]_i_5_n_0\,
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => wr_flag_reg_0,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD00FF00FF00"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2_n_0\,
      I1 => \FSM_onehot_state[4]_i_3_n_0\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_state[9]_i_3_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_state[4]_i_2_n_0\,
      I2 => \FSM_onehot_state[4]_i_3_n_0\,
      I3 => \cnt_bit_reg_n_0_[0]\,
      I4 => \FSM_onehot_state[9]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA8AAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \cnt_bit_reg_n_0_[3]\,
      I2 => \cnt_bit_reg_n_0_[4]\,
      I3 => \w_byte_cnt[7]_i_4_n_0\,
      I4 => \w_byte_cnt[7]_i_5_n_0\,
      I5 => \w_byte_cnt[7]_i_6_n_0\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFF0000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2_n_0\,
      I1 => \FSM_onehot_state[4]_i_3_n_0\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \FSM_onehot_state[9]_i_3_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \FSM_onehot_state[4]_i_4_n_0\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[3]\,
      I1 => \cnt_bit_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[1]\,
      I1 => \cnt_bit_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_5_n_0\,
      I1 => \w_byte_cnt[7]_i_4_n_0\,
      I2 => \w_byte_cnt[7]_i_5_n_0\,
      I3 => \w_byte_cnt[7]_i_6_n_0\,
      I4 => wr_flag,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[4]_i_4_n_0\
    );
\FSM_onehot_state[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[3]\,
      I1 => \cnt_bit_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_5_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \w_byte_cnt[7]_i_2_n_0\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      I2 => wr_flag_0,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => wr_flag_0,
      I3 => \FSM_onehot_state[9]_i_3_n_0\,
      O => \FSM_onehot_state[9]_i_1_n_0\
    );
\FSM_onehot_state[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => cnt_delay(7),
      I1 => cnt_delay(6),
      I2 => cnt_delay(2),
      I3 => cnt_delay(4),
      I4 => \FSM_onehot_state[9]_i_4_n_0\,
      O => \FSM_onehot_state[9]_i_2_n_0\
    );
\FSM_onehot_state[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_5_n_0\,
      I1 => \cnt_clk_reg_n_0_[15]\,
      I2 => \cnt_clk_reg_n_0_[13]\,
      I3 => \cnt_clk_reg_n_0_[2]\,
      I4 => \cnt_clk_reg_n_0_[3]\,
      I5 => \FSM_onehot_state[9]_i_6_n_0\,
      O => \FSM_onehot_state[9]_i_3_n_0\
    );
\FSM_onehot_state[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => cnt_delay(1),
      I1 => cnt_delay(3),
      I2 => cnt_delay(5),
      I3 => cnt_delay(0),
      O => \FSM_onehot_state[9]_i_4_n_0\
    );
\FSM_onehot_state[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[9]\,
      I1 => \cnt_clk_reg_n_0_[10]\,
      I2 => \cnt_clk_reg_n_0_[12]\,
      I3 => \cnt_clk_reg_n_0_[11]\,
      O => \FSM_onehot_state[9]_i_5_n_0\
    );
\FSM_onehot_state[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[14]\,
      I1 => \cnt_clk_reg_n_0_[7]\,
      I2 => \cnt_clk_reg_n_0_[5]\,
      I3 => \cnt_clk_reg_n_0_[6]\,
      I4 => \FSM_onehot_state[9]_i_7_n_0\,
      O => \FSM_onehot_state[9]_i_6_n_0\
    );
\FSM_onehot_state[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[1]\,
      I1 => \cnt_clk_reg_n_0_[4]\,
      I2 => \cnt_clk_reg_n_0_[0]\,
      I3 => \cnt_clk_reg_n_0_[8]\,
      O => \FSM_onehot_state[9]_i_7_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[8]_i_1_n_0\,
      Q => wr_flag_0,
      R => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[9]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => \^sys_rst_n_0\
    );
\cnt_bit[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[0]\,
      I1 => \cnt_bit[4]_i_3_n_0\,
      O => \cnt_bit[0]_i_1_n_0\
    );
\cnt_bit[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666660"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[1]\,
      I1 => \cnt_bit_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \cnt_bit[1]_i_1_n_0\
    );
\cnt_bit[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFEFEFE000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \cnt_bit_reg_n_0_[0]\,
      I4 => \cnt_bit_reg_n_0_[1]\,
      I5 => \cnt_bit_reg_n_0_[2]\,
      O => \cnt_bit[2]_i_1_n_0\
    );
\cnt_bit[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[2]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[3]\,
      I4 => \cnt_bit[4]_i_3_n_0\,
      O => \cnt_bit[3]_i_1_n_0\
    );
\cnt_bit[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => cnt_bit
    );
\cnt_bit[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[3]\,
      I1 => \cnt_bit_reg_n_0_[0]\,
      I2 => \cnt_bit_reg_n_0_[1]\,
      I3 => \cnt_bit_reg_n_0_[2]\,
      I4 => \cnt_bit_reg_n_0_[4]\,
      I5 => \cnt_bit[4]_i_3_n_0\,
      O => \cnt_bit[4]_i_2_n_0\
    );
\cnt_bit[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100010005D55"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \cnt_bit_reg_n_0_[4]\,
      I2 => \cnt_bit_reg_n_0_[3]\,
      I3 => \cnt_bit[4]_i_4_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \cnt_bit[4]_i_3_n_0\
    );
\cnt_bit[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[1]\,
      I1 => \cnt_bit_reg_n_0_[0]\,
      I2 => \cnt_bit_reg_n_0_[2]\,
      O => \cnt_bit[4]_i_4_n_0\
    );
\cnt_bit_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => cnt_bit,
      D => \cnt_bit[0]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[0]\,
      R => \^sys_rst_n_0\
    );
\cnt_bit_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => cnt_bit,
      D => \cnt_bit[1]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[1]\,
      R => \^sys_rst_n_0\
    );
\cnt_bit_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => cnt_bit,
      D => \cnt_bit[2]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[2]\,
      R => \^sys_rst_n_0\
    );
\cnt_bit_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => cnt_bit,
      D => \cnt_bit[3]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[3]\,
      R => \^sys_rst_n_0\
    );
\cnt_bit_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => cnt_bit,
      D => \cnt_bit[4]_i_2_n_0\,
      Q => \cnt_bit_reg_n_0_[4]\,
      R => \^sys_rst_n_0\
    );
\cnt_clk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[0]\,
      O => cnt_clk(0)
    );
\cnt_clk[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[12]_i_2_n_6\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(10)
    );
\cnt_clk[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[12]_i_2_n_5\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(11)
    );
\cnt_clk[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[12]_i_2_n_4\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(12)
    );
\cnt_clk[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[15]_i_3_n_7\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(13)
    );
\cnt_clk[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[15]_i_3_n_6\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(14)
    );
\cnt_clk[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sys_rst_n,
      O => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[15]_i_3_n_5\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(15)
    );
\cnt_clk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[4]_i_2_n_7\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(1)
    );
\cnt_clk[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[4]_i_2_n_6\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(2)
    );
\cnt_clk[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[4]_i_2_n_5\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(3)
    );
\cnt_clk[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[4]_i_2_n_4\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(4)
    );
\cnt_clk[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[8]_i_2_n_7\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(5)
    );
\cnt_clk[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[8]_i_2_n_6\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(6)
    );
\cnt_clk[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[8]_i_2_n_5\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(7)
    );
\cnt_clk[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[8]_i_2_n_4\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(8)
    );
\cnt_clk[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_clk_reg[12]_i_2_n_7\,
      I1 => \FSM_onehot_state[9]_i_3_n_0\,
      O => cnt_clk(9)
    );
\cnt_clk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(0),
      Q => \cnt_clk_reg_n_0_[0]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(10),
      Q => \cnt_clk_reg_n_0_[10]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(11),
      Q => \cnt_clk_reg_n_0_[11]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(12),
      Q => \cnt_clk_reg_n_0_[12]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[8]_i_2_n_0\,
      CO(3) => \cnt_clk_reg[12]_i_2_n_0\,
      CO(2) => \cnt_clk_reg[12]_i_2_n_1\,
      CO(1) => \cnt_clk_reg[12]_i_2_n_2\,
      CO(0) => \cnt_clk_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[12]_i_2_n_4\,
      O(2) => \cnt_clk_reg[12]_i_2_n_5\,
      O(1) => \cnt_clk_reg[12]_i_2_n_6\,
      O(0) => \cnt_clk_reg[12]_i_2_n_7\,
      S(3) => \cnt_clk_reg_n_0_[12]\,
      S(2) => \cnt_clk_reg_n_0_[11]\,
      S(1) => \cnt_clk_reg_n_0_[10]\,
      S(0) => \cnt_clk_reg_n_0_[9]\
    );
\cnt_clk_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(13),
      Q => \cnt_clk_reg_n_0_[13]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(14),
      Q => \cnt_clk_reg_n_0_[14]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(15),
      Q => \cnt_clk_reg_n_0_[15]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt_clk_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_clk_reg[15]_i_3_n_2\,
      CO(0) => \cnt_clk_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_clk_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2) => \cnt_clk_reg[15]_i_3_n_5\,
      O(1) => \cnt_clk_reg[15]_i_3_n_6\,
      O(0) => \cnt_clk_reg[15]_i_3_n_7\,
      S(3) => '0',
      S(2) => \cnt_clk_reg_n_0_[15]\,
      S(1) => \cnt_clk_reg_n_0_[14]\,
      S(0) => \cnt_clk_reg_n_0_[13]\
    );
\cnt_clk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(1),
      Q => \cnt_clk_reg_n_0_[1]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(2),
      Q => \cnt_clk_reg_n_0_[2]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(3),
      Q => \cnt_clk_reg_n_0_[3]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(4),
      Q => \cnt_clk_reg_n_0_[4]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_clk_reg[4]_i_2_n_0\,
      CO(2) => \cnt_clk_reg[4]_i_2_n_1\,
      CO(1) => \cnt_clk_reg[4]_i_2_n_2\,
      CO(0) => \cnt_clk_reg[4]_i_2_n_3\,
      CYINIT => \cnt_clk_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[4]_i_2_n_4\,
      O(2) => \cnt_clk_reg[4]_i_2_n_5\,
      O(1) => \cnt_clk_reg[4]_i_2_n_6\,
      O(0) => \cnt_clk_reg[4]_i_2_n_7\,
      S(3) => \cnt_clk_reg_n_0_[4]\,
      S(2) => \cnt_clk_reg_n_0_[3]\,
      S(1) => \cnt_clk_reg_n_0_[2]\,
      S(0) => \cnt_clk_reg_n_0_[1]\
    );
\cnt_clk_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(5),
      Q => \cnt_clk_reg_n_0_[5]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(6),
      Q => \cnt_clk_reg_n_0_[6]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(7),
      Q => \cnt_clk_reg_n_0_[7]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(8),
      Q => \cnt_clk_reg_n_0_[8]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_clk_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_clk_reg[4]_i_2_n_0\,
      CO(3) => \cnt_clk_reg[8]_i_2_n_0\,
      CO(2) => \cnt_clk_reg[8]_i_2_n_1\,
      CO(1) => \cnt_clk_reg[8]_i_2_n_2\,
      CO(0) => \cnt_clk_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_clk_reg[8]_i_2_n_4\,
      O(2) => \cnt_clk_reg[8]_i_2_n_5\,
      O(1) => \cnt_clk_reg[8]_i_2_n_6\,
      O(0) => \cnt_clk_reg[8]_i_2_n_7\,
      S(3) => \cnt_clk_reg_n_0_[8]\,
      S(2) => \cnt_clk_reg_n_0_[7]\,
      S(1) => \cnt_clk_reg_n_0_[6]\,
      S(0) => \cnt_clk_reg_n_0_[5]\
    );
\cnt_clk_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(9),
      Q => \cnt_clk_reg_n_0_[9]\,
      R => \cnt_clk[15]_i_1_n_0\
    );
\cnt_delay[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_2_n_0\,
      I1 => cnt_delay(0),
      O => \cnt_delay__0\(0)
    );
\cnt_delay[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_2_n_0\,
      I1 => cnt_delay(0),
      I2 => cnt_delay(1),
      O => \cnt_delay__0\(1)
    );
\cnt_delay[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt_delay(2),
      I1 => cnt_delay(1),
      I2 => cnt_delay(0),
      O => \cnt_delay__0\(2)
    );
\cnt_delay[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_2_n_0\,
      I1 => cnt_delay(0),
      I2 => cnt_delay(1),
      I3 => cnt_delay(2),
      I4 => cnt_delay(3),
      O => \cnt_delay__0\(3)
    );
\cnt_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => cnt_delay(4),
      I1 => cnt_delay(2),
      I2 => cnt_delay(1),
      I3 => cnt_delay(0),
      I4 => cnt_delay(3),
      O => \cnt_delay__0\(4)
    );
\cnt_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_delay(3),
      I1 => cnt_delay(0),
      I2 => cnt_delay(1),
      I3 => cnt_delay(2),
      I4 => cnt_delay(4),
      I5 => cnt_delay(5),
      O => \cnt_delay__0\(5)
    );
\cnt_delay[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_2_n_0\,
      I1 => \cnt_delay[7]_i_3_n_0\,
      I2 => cnt_delay(6),
      O => \cnt_delay__0\(6)
    );
\cnt_delay[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => sys_rst_n,
      O => \cnt_delay[7]_i_1_n_0\
    );
\cnt_delay[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt_delay(7),
      I1 => cnt_delay(6),
      I2 => \cnt_delay[7]_i_3_n_0\,
      O => \cnt_delay__0\(7)
    );
\cnt_delay[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_delay(5),
      I1 => cnt_delay(4),
      I2 => cnt_delay(2),
      I3 => cnt_delay(1),
      I4 => cnt_delay(0),
      I5 => cnt_delay(3),
      O => \cnt_delay[7]_i_3_n_0\
    );
\cnt_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(0),
      Q => cnt_delay(0),
      R => \cnt_delay[7]_i_1_n_0\
    );
\cnt_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(1),
      Q => cnt_delay(1),
      R => \cnt_delay[7]_i_1_n_0\
    );
\cnt_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(2),
      Q => cnt_delay(2),
      R => \cnt_delay[7]_i_1_n_0\
    );
\cnt_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(3),
      Q => cnt_delay(3),
      R => \cnt_delay[7]_i_1_n_0\
    );
\cnt_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(4),
      Q => cnt_delay(4),
      R => \cnt_delay[7]_i_1_n_0\
    );
\cnt_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(5),
      Q => cnt_delay(5),
      R => \cnt_delay[7]_i_1_n_0\
    );
\cnt_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(6),
      Q => cnt_delay(6),
      R => \cnt_delay[7]_i_1_n_0\
    );
\cnt_delay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(7),
      Q => cnt_delay(7),
      R => \cnt_delay[7]_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => w_byte_cnt_reg(6),
      I1 => w_byte_cnt_reg(7),
      I2 => wr_flag_reg_0,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => w_byte_cnt_reg(4),
      I1 => w_byte_cnt_reg(5),
      I2 => w_byte_cnt_reg(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0480"
    )
        port map (
      I0 => w_byte_cnt_reg(2),
      I1 => w_byte_cnt_reg(1),
      I2 => w_byte_cnt_reg(0),
      I3 => wr_flag_reg_0,
      O => \i__carry_i_3_n_0\
    );
\reg_addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \reg_addr_reg[0]\,
      I1 => Q(2),
      I2 => \reg_addr_reg[0]_0\,
      I3 => Q(3),
      I4 => \reg_addr_reg[0]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(0)
    );
\reg_addr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => \reg_addr_reg[10]\,
      I1 => Q(3),
      I2 => \reg_addr_reg[10]_0\,
      I3 => Q(2),
      I4 => \reg_addr_reg[10]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(9)
    );
\reg_addr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F454"
    )
        port map (
      I0 => Q(3),
      I1 => \reg_addr_reg[11]\,
      I2 => Q(2),
      I3 => \reg_addr_reg[11]_0\,
      I4 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(10)
    );
\reg_addr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE5E"
    )
        port map (
      I0 => Q(3),
      I1 => \reg_addr_reg[12]\,
      I2 => Q(2),
      I3 => \reg_addr_reg[12]_0\,
      I4 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(11)
    );
\reg_addr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => Q(3),
      I1 => \reg_addr_reg[13]\,
      I2 => Q(2),
      I3 => \reg_addr_reg[9]_0\,
      I4 => \reg_addr_reg[13]_0\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(12)
    );
\reg_addr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEAE5E0E"
    )
        port map (
      I0 => Q(3),
      I1 => \reg_addr_reg[14]\,
      I2 => Q(2),
      I3 => \reg_addr_reg[14]_0\,
      I4 => \reg_addr_reg[14]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(13)
    );
\reg_addr[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \reg_index_reg[8]\(8),
      I1 => sccb_cfg_done,
      I2 => sel,
      O => \reg_addr[14]_i_5_n_0\
    );
\reg_addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \reg_addr_reg[1]\,
      I1 => Q(2),
      I2 => \reg_addr_reg[1]_0\,
      I3 => Q(3),
      I4 => \reg_addr_reg[1]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(1)
    );
\reg_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \reg_addr_reg[2]\,
      I1 => Q(2),
      I2 => \reg_addr_reg[2]_0\,
      I3 => Q(3),
      I4 => \reg_addr_reg[2]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(2)
    );
\reg_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \reg_addr_reg[3]\,
      I1 => Q(2),
      I2 => \reg_addr_reg[3]_0\,
      I3 => Q(3),
      I4 => \reg_addr_reg[3]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(3)
    );
\reg_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \reg_addr_reg[4]\,
      I1 => Q(3),
      I2 => \reg_addr_reg[4]_0\,
      I3 => Q(2),
      I4 => \reg_addr_reg[4]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(4)
    );
\reg_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => Q(3),
      I1 => \reg_addr_reg[5]\,
      I2 => Q(2),
      I3 => \reg_addr_reg[5]_0\,
      I4 => \reg_addr_reg[5]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(5)
    );
\reg_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222A22"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \reg_addr_reg[7]\,
      I4 => Q(1),
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(6)
    );
\reg_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => \reg_addr_reg[8]\,
      I1 => Q(3),
      I2 => \reg_addr_reg[8]_0\,
      I3 => Q(2),
      I4 => \reg_addr_reg[8]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(7)
    );
\reg_addr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \reg_addr_reg[9]\,
      I1 => Q(2),
      I2 => \reg_addr_reg[9]_0\,
      I3 => Q(3),
      I4 => \reg_addr_reg[9]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => \reg_index_reg_rep[7]\(8)
    );
\reg_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sccb_cfg_done,
      I1 => sel,
      I2 => \reg_index_reg[8]\(0),
      O => \rst_cnt_reg[7]_inv\(0)
    );
\reg_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => sel,
      I1 => \reg_index_reg[8]\(0),
      I2 => \reg_index_reg[8]\(1),
      I3 => sccb_cfg_done,
      O => \rst_cnt_reg[7]_inv\(1)
    );
\reg_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001444"
    )
        port map (
      I0 => sel,
      I1 => \reg_index_reg[8]\(2),
      I2 => \reg_index_reg[8]\(1),
      I3 => \reg_index_reg[8]\(0),
      I4 => sccb_cfg_done,
      O => \rst_cnt_reg[7]_inv\(2)
    );
\reg_index[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000014444444"
    )
        port map (
      I0 => sel,
      I1 => \reg_index_reg[8]\(3),
      I2 => \reg_index_reg[8]\(2),
      I3 => \reg_index_reg[8]\(0),
      I4 => \reg_index_reg[8]\(1),
      I5 => sccb_cfg_done,
      O => \rst_cnt_reg[7]_inv\(3)
    );
\reg_index[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0041"
    )
        port map (
      I0 => sel,
      I1 => \reg_index_reg[8]\(4),
      I2 => \reg_index_reg_rep[4]\,
      I3 => sccb_cfg_done,
      O => \rst_cnt_reg[7]_inv\(4)
    );
\reg_index[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0041"
    )
        port map (
      I0 => sel,
      I1 => \reg_index_reg[8]\(5),
      I2 => \reg_index_reg_rep[5]\,
      I3 => sccb_cfg_done,
      O => \rst_cnt_reg[7]_inv\(5)
    );
\reg_index[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0041"
    )
        port map (
      I0 => sel,
      I1 => \reg_index_reg[8]\(6),
      I2 => \reg_index_reg_rep[6]\,
      I3 => sccb_cfg_done,
      O => \rst_cnt_reg[7]_inv\(6)
    );
\reg_index[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004144"
    )
        port map (
      I0 => sel,
      I1 => \reg_index_reg[8]\(7),
      I2 => \reg_index_reg_rep[6]\,
      I3 => \reg_index_reg[8]\(6),
      I4 => sccb_cfg_done,
      O => \rst_cnt_reg[7]_inv\(7)
    );
\reg_index[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \w_byte_cnt[7]_i_2_n_0\,
      I1 => sccb_cfg_done,
      I2 => sel,
      O => E(0)
    );
\reg_index[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044441444"
    )
        port map (
      I0 => sel,
      I1 => \reg_index_reg[8]\(8),
      I2 => \reg_index_reg[8]\(7),
      I3 => \reg_index_reg[8]\(6),
      I4 => \reg_index_reg_rep[6]\,
      I5 => sccb_cfg_done,
      O => \rst_cnt_reg[7]_inv\(8)
    );
sccb_cfg_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \w_byte_cnt[7]_i_2_n_0\,
      I1 => w_byte_cnt0,
      I2 => sccb_cfg_done,
      O => sccb_cfg_done_i_1_n_0
    );
sccb_cfg_done_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sccb_cfg_done_i_1_n_0,
      Q => sccb_cfg_done,
      R => \^sys_rst_n_0\
    );
sccb_clk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => \^sys_rst_n_0\
    );
sccb_clk_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[7]\,
      I1 => \cnt_clk_reg_n_0_[2]\,
      I2 => \cnt_clk_reg_n_0_[0]\,
      O => sccb_clk_i_10_n_0
    );
sccb_clk_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => wr_flag_0,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => sccb_clk_i_11_n_0
    );
sccb_clk_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF7FFFF"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[0]\,
      I1 => \cnt_clk_reg_n_0_[7]\,
      I2 => \cnt_clk_reg_n_0_[2]\,
      I3 => \cnt_clk_reg_n_0_[8]\,
      I4 => \cnt_clk_reg_n_0_[3]\,
      I5 => \cnt_clk_reg_n_0_[1]\,
      O => sccb_clk_i_12_n_0
    );
sccb_clk_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[11]\,
      I1 => \cnt_clk_reg_n_0_[9]\,
      I2 => \cnt_clk_reg_n_0_[10]\,
      O => sccb_clk_i_13_n_0
    );
sccb_clk_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[0]\,
      I1 => \cnt_clk_reg_n_0_[1]\,
      I2 => \cnt_clk_reg_n_0_[2]\,
      I3 => \cnt_clk_reg_n_0_[3]\,
      O => sccb_clk_i_14_n_0
    );
sccb_clk_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => sccb_clk_i_3_n_0,
      I2 => sccb_clk_i_4_n_0,
      I3 => sccb_clk_i_5_n_0,
      I4 => \^sccb_scl\,
      O => sccb_clk_i_2_n_0
    );
sccb_clk_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000010001"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[11]\,
      I1 => \cnt_clk_reg_n_0_[9]\,
      I2 => \cnt_clk_reg_n_0_[10]\,
      I3 => sccb_clk_i_6_n_0,
      I4 => sccb_clk_i_7_n_0,
      I5 => \cnt_clk_reg_n_0_[8]\,
      O => sccb_clk_i_3_n_0
    );
sccb_clk_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAB03F3"
    )
        port map (
      I0 => sccb_clk_i_8_n_0,
      I1 => \^sccb_scl\,
      I2 => sccb_clk_i_9_n_0,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => wr_flag_0,
      O => sccb_clk_i_4_n_0
    );
sccb_clk_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFF0FFFFFFF0"
    )
        port map (
      I0 => sccb_clk_i_10_n_0,
      I1 => \w_byte_cnt[7]_i_4_n_0\,
      I2 => sccb_clk_i_9_n_0,
      I3 => sccb_clk_i_11_n_0,
      I4 => \w_byte_cnt[7]_i_5_n_0\,
      I5 => sccb_clk_i_12_n_0,
      O => sccb_clk_i_5_n_0
    );
sccb_clk_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[15]\,
      I1 => \cnt_clk_reg_n_0_[13]\,
      I2 => \cnt_clk_reg_n_0_[14]\,
      I3 => \cnt_clk_reg_n_0_[12]\,
      O => sccb_clk_i_6_n_0
    );
sccb_clk_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF15FF55"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[3]\,
      I1 => \cnt_clk_reg_n_0_[0]\,
      I2 => \cnt_clk_reg_n_0_[1]\,
      I3 => \w_byte_cnt[7]_i_8_n_0\,
      I4 => \cnt_clk_reg_n_0_[2]\,
      I5 => \cnt_clk_reg_n_0_[7]\,
      O => sccb_clk_i_7_n_0
    );
sccb_clk_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFFFF"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[8]\,
      I1 => \cnt_clk_reg_n_0_[7]\,
      I2 => sccb_clk_i_6_n_0,
      I3 => sccb_clk_i_13_n_0,
      I4 => sccb_clk_i_14_n_0,
      I5 => \w_byte_cnt[7]_i_8_n_0\,
      O => sccb_clk_i_8_n_0
    );
sccb_clk_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => sccb_clk_i_9_n_0
    );
sccb_clk_reg: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => '1',
      D => sccb_clk_i_2_n_0,
      Q => \^sccb_scl\,
      S => \^sys_rst_n_0\
    );
sda_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FF40FFFFFF40"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => sda_out_i_2_n_0,
      I3 => sda_out_i_3_n_0,
      I4 => wr_flag_0,
      I5 => sccb_clk_i_3_n_0,
      O => sda_out
    );
sda_out_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => sda_out_reg_i_4_0(9),
      I1 => sda_out_reg_i_4_0(8),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => sda_out_reg_i_4_0(7),
      I5 => sda_out_reg_i_4_0(6),
      O => sda_out_i_10_n_0
    );
sda_out_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E323E020"
    )
        port map (
      I0 => sda_out_reg_i_4_0(5),
      I1 => \cnt_bit_reg_n_0_[0]\,
      I2 => \cnt_bit_reg_n_0_[1]\,
      I3 => sda_out_reg_i_4_0(4),
      I4 => sda_out_reg_i_4_0(3),
      O => sda_out_i_11_n_0
    );
sda_out_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCA00CA0"
    )
        port map (
      I0 => sda_out_reg_i_4_0(2),
      I1 => sda_out_reg_i_4_0(1),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => sda_out_reg_i_4_0(0),
      O => sda_out_i_12_n_0
    );
sda_out_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => sda_out_i_6_0(2),
      I1 => sda_out_i_6_0(1),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => sda_out_i_6_0(0),
      I5 => sda_out_i_6_0(7),
      O => sda_out_i_13_n_0
    );
sda_out_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => sda_out_i_6_0(6),
      I1 => sda_out_i_6_0(5),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => sda_out_i_6_0(4),
      I5 => sda_out_i_6_0(3),
      O => sda_out_i_14_n_0
    );
sda_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA955560000"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[3]\,
      I1 => \cnt_bit_reg_n_0_[2]\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => sda_out_reg_i_4_n_0,
      I5 => sda_out_reg_i_5_n_0,
      O => sda_out_i_2_n_0
    );
sda_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEBFAEAE"
    )
        port map (
      I0 => sda_out_i_6_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => sccb_clk_i_8_n_0,
      I3 => wr_flag_0,
      I4 => sccb_clk_i_9_n_0,
      I5 => sda_out_i_7_n_0,
      O => sda_out_i_3_n_0
    );
sda_out_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => sda_out_i_13_n_0,
      I2 => sda_out_i_8_n_0,
      I3 => sda_out_i_14_n_0,
      I4 => \cnt_bit_reg_n_0_[4]\,
      I5 => \cnt_bit_reg_n_0_[3]\,
      O => sda_out_i_6_n_0
    );
sda_out_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001010101000"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[4]\,
      I1 => \cnt_bit_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \cnt_bit_reg_n_0_[0]\,
      I4 => \cnt_bit_reg_n_0_[1]\,
      I5 => \cnt_bit_reg_n_0_[2]\,
      O => sda_out_i_7_n_0
    );
sda_out_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[2]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      O => sda_out_i_8_n_0
    );
sda_out_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => sda_out_reg_i_4_0(13),
      I1 => sda_out_reg_i_4_0(12),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => sda_out_reg_i_4_0(11),
      I5 => sda_out_reg_i_4_0(10),
      O => sda_out_i_9_n_0
    );
sda_out_reg: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => '1',
      D => sda_out,
      Q => sda_out_reg_n_0,
      S => \^sys_rst_n_0\
    );
sda_out_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_out_i_9_n_0,
      I1 => sda_out_i_10_n_0,
      O => sda_out_reg_i_4_n_0,
      S => sda_out_i_8_n_0
    );
sda_out_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_out_i_11_n_0,
      I1 => sda_out_i_12_n_0,
      O => sda_out_reg_i_5_n_0,
      S => sda_out_i_8_n_0
    );
\w_byte_cnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \w_byte_cnt0_inferred__0/i__carry_n_0\,
      CO(2) => \w_byte_cnt0_inferred__0/i__carry_n_1\,
      CO(1) => \w_byte_cnt0_inferred__0/i__carry_n_2\,
      CO(0) => \w_byte_cnt0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_w_byte_cnt0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => wr_flag_reg_0,
      S(2) => \i__carry_i_1_n_0\,
      S(1) => \i__carry_i_2_n_0\,
      S(0) => \i__carry_i_3_n_0\
    );
\w_byte_cnt0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \w_byte_cnt0_inferred__0/i__carry_n_0\,
      CO(3) => \w_byte_cnt0_inferred__0/i__carry__0_n_0\,
      CO(2) => \w_byte_cnt0_inferred__0/i__carry__0_n_1\,
      CO(1) => \w_byte_cnt0_inferred__0/i__carry__0_n_2\,
      CO(0) => \w_byte_cnt0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_w_byte_cnt0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => wr_flag_reg_0,
      S(2) => wr_flag_reg_0,
      S(1) => wr_flag_reg_0,
      S(0) => wr_flag_reg_0
    );
\w_byte_cnt0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \w_byte_cnt0_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_w_byte_cnt0_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => w_byte_cnt0,
      CO(1) => \w_byte_cnt0_inferred__0/i__carry__1_n_2\,
      CO(0) => \w_byte_cnt0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_w_byte_cnt0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => wr_flag_reg_0,
      S(1) => wr_flag_reg_0,
      S(0) => wr_flag_reg_0
    );
\w_byte_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_byte_cnt_reg(0),
      O => \p_0_in__1\(0)
    );
\w_byte_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_byte_cnt_reg(0),
      I1 => w_byte_cnt_reg(1),
      O => \p_0_in__1\(1)
    );
\w_byte_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => w_byte_cnt_reg(2),
      I1 => w_byte_cnt_reg(0),
      I2 => w_byte_cnt_reg(1),
      O => \p_0_in__1\(2)
    );
\w_byte_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => w_byte_cnt_reg(3),
      I1 => w_byte_cnt_reg(1),
      I2 => w_byte_cnt_reg(0),
      I3 => w_byte_cnt_reg(2),
      O => \p_0_in__1\(3)
    );
\w_byte_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => w_byte_cnt_reg(2),
      I1 => w_byte_cnt_reg(0),
      I2 => w_byte_cnt_reg(1),
      I3 => w_byte_cnt_reg(3),
      I4 => w_byte_cnt_reg(4),
      O => \p_0_in__1\(4)
    );
\w_byte_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => w_byte_cnt_reg(5),
      I1 => w_byte_cnt_reg(2),
      I2 => w_byte_cnt_reg(0),
      I3 => w_byte_cnt_reg(1),
      I4 => w_byte_cnt_reg(3),
      I5 => w_byte_cnt_reg(4),
      O => \p_0_in__1\(5)
    );
\w_byte_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => w_byte_cnt_reg(6),
      I1 => \w_byte_cnt[7]_i_7_n_0\,
      I2 => w_byte_cnt_reg(4),
      I3 => w_byte_cnt_reg(5),
      I4 => w_byte_cnt_reg(3),
      O => \p_0_in__1\(6)
    );
\w_byte_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \w_byte_cnt[7]_i_2_n_0\,
      I1 => w_byte_cnt0,
      I2 => sys_rst_n,
      O => \w_byte_cnt[7]_i_1_n_0\
    );
\w_byte_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \w_byte_cnt[7]_i_4_n_0\,
      I2 => \w_byte_cnt[7]_i_5_n_0\,
      I3 => \w_byte_cnt[7]_i_6_n_0\,
      I4 => \cnt_bit_reg_n_0_[3]\,
      I5 => \cnt_bit_reg_n_0_[4]\,
      O => \w_byte_cnt[7]_i_2_n_0\
    );
\w_byte_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => w_byte_cnt_reg(7),
      I1 => w_byte_cnt_reg(3),
      I2 => w_byte_cnt_reg(5),
      I3 => w_byte_cnt_reg(4),
      I4 => \w_byte_cnt[7]_i_7_n_0\,
      I5 => w_byte_cnt_reg(6),
      O => \p_0_in__1\(7)
    );
\w_byte_cnt[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[3]\,
      I1 => \cnt_clk_reg_n_0_[8]\,
      I2 => \cnt_clk_reg_n_0_[1]\,
      O => \w_byte_cnt[7]_i_4_n_0\
    );
\w_byte_cnt[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[11]\,
      I1 => \cnt_clk_reg_n_0_[9]\,
      I2 => \cnt_clk_reg_n_0_[10]\,
      I3 => \w_byte_cnt[7]_i_8_n_0\,
      I4 => sccb_clk_i_6_n_0,
      O => \w_byte_cnt[7]_i_5_n_0\
    );
\w_byte_cnt[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[0]\,
      I1 => \cnt_clk_reg_n_0_[7]\,
      I2 => \cnt_clk_reg_n_0_[2]\,
      I3 => \cnt_bit_reg_n_0_[2]\,
      I4 => \cnt_bit_reg_n_0_[0]\,
      I5 => \cnt_bit_reg_n_0_[1]\,
      O => \w_byte_cnt[7]_i_6_n_0\
    );
\w_byte_cnt[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => w_byte_cnt_reg(1),
      I1 => w_byte_cnt_reg(0),
      I2 => w_byte_cnt_reg(2),
      O => \w_byte_cnt[7]_i_7_n_0\
    );
\w_byte_cnt[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[6]\,
      I1 => \cnt_clk_reg_n_0_[5]\,
      I2 => \cnt_clk_reg_n_0_[4]\,
      O => \w_byte_cnt[7]_i_8_n_0\
    );
\w_byte_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \w_byte_cnt[7]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => w_byte_cnt_reg(0),
      R => \w_byte_cnt[7]_i_1_n_0\
    );
\w_byte_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \w_byte_cnt[7]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => w_byte_cnt_reg(1),
      R => \w_byte_cnt[7]_i_1_n_0\
    );
\w_byte_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \w_byte_cnt[7]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => w_byte_cnt_reg(2),
      R => \w_byte_cnt[7]_i_1_n_0\
    );
\w_byte_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \w_byte_cnt[7]_i_2_n_0\,
      D => \p_0_in__1\(3),
      Q => w_byte_cnt_reg(3),
      R => \w_byte_cnt[7]_i_1_n_0\
    );
\w_byte_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \w_byte_cnt[7]_i_2_n_0\,
      D => \p_0_in__1\(4),
      Q => w_byte_cnt_reg(4),
      R => \w_byte_cnt[7]_i_1_n_0\
    );
\w_byte_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \w_byte_cnt[7]_i_2_n_0\,
      D => \p_0_in__1\(5),
      Q => w_byte_cnt_reg(5),
      R => \w_byte_cnt[7]_i_1_n_0\
    );
\w_byte_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \w_byte_cnt[7]_i_2_n_0\,
      D => \p_0_in__1\(6),
      Q => w_byte_cnt_reg(6),
      R => \w_byte_cnt[7]_i_1_n_0\
    );
\w_byte_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \w_byte_cnt[7]_i_2_n_0\,
      D => \p_0_in__1\(7),
      Q => w_byte_cnt_reg(7),
      R => \w_byte_cnt[7]_i_1_n_0\
    );
wr_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => wr_flag_0,
      I1 => wr_flag_reg_0,
      I2 => wr_flag,
      O => wr_flag_i_1_n_0
    );
wr_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_flag_i_1_n_0,
      Q => wr_flag,
      R => \^sys_rst_n_0\
    );
\write_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \write_data_reg[0]\,
      I1 => Q(2),
      I2 => \write_data_reg[0]_0\,
      I3 => Q(3),
      I4 => \write_data_reg[0]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => D(0)
    );
\write_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \write_data_reg[1]\,
      I1 => Q(2),
      I2 => \write_data_reg[1]_0\,
      I3 => Q(3),
      I4 => \write_data_reg[1]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => D(1)
    );
\write_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \write_data_reg[2]\,
      I1 => Q(2),
      I2 => \write_data_reg[2]_0\,
      I3 => Q(3),
      I4 => \write_data_reg[2]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => D(2)
    );
\write_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \write_data_reg[3]\,
      I1 => Q(2),
      I2 => \write_data_reg[3]_0\,
      I3 => Q(3),
      I4 => \write_data_reg[3]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => D(3)
    );
\write_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \write_data_reg[4]\,
      I1 => Q(2),
      I2 => \write_data_reg[4]_0\,
      I3 => Q(3),
      I4 => \write_data_reg[4]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => D(4)
    );
\write_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \write_data_reg[5]\,
      I1 => Q(2),
      I2 => \write_data_reg[5]_0\,
      I3 => Q(3),
      I4 => \write_data_reg[5]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => D(5)
    );
\write_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \write_data_reg[6]\,
      I1 => Q(2),
      I2 => \write_data_reg[6]_0\,
      I3 => Q(3),
      I4 => \write_data_reg[6]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => D(6)
    );
\write_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \write_data_reg[7]\,
      I1 => Q(2),
      I2 => \write_data_reg[7]_0\,
      I3 => Q(3),
      I4 => \write_data_reg[7]_1\,
      I5 => \reg_addr[14]_i_5_n_0\,
      O => D(7)
    );
write_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel,
      I1 => sccb_cfg_done,
      O => write_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ov5640_hdmi_ov5640_cfg_top_0_0_ui5640reg is
  port (
    \reg_index_reg_rep[7]\ : out STD_LOGIC;
    \reg_index_reg_rep[1]\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_0\ : out STD_LOGIC;
    \reg_index_reg_rep[4]\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_1\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_2\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_3\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_4\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_5\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_0\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_1\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_2\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_6\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_7\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_3\ : out STD_LOGIC;
    \reg_index_reg_rep[0]\ : out STD_LOGIC;
    \reg_index_reg_rep[1]_0\ : out STD_LOGIC;
    \reg_index_reg_rep[1]_1\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_4\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_5\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_8\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_6\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_7\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_9\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_8\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_10\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_9\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_10\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_11\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_11\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_12\ : out STD_LOGIC;
    \reg_index_reg_rep[0]_0\ : out STD_LOGIC;
    \reg_index_reg_rep[7]_12\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_13\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_14\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_15\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_16\ : out STD_LOGIC;
    \reg_index_reg_rep[1]_2\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_17\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_18\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_19\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_20\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_21\ : out STD_LOGIC;
    \reg_index_reg_rep[5]\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_22\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_23\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_24\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_25\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_26\ : out STD_LOGIC;
    \reg_index_reg_rep[3]\ : out STD_LOGIC;
    \reg_index_reg_rep[3]_0\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_27\ : out STD_LOGIC;
    \reg_index_reg_rep[2]\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_28\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_29\ : out STD_LOGIC;
    \reg_index_reg_rep[0]_1\ : out STD_LOGIC;
    \reg_index_reg_rep[3]_1\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_30\ : out STD_LOGIC;
    \reg_index_reg_rep[1]_3\ : out STD_LOGIC;
    \reg_index_reg_rep[3]_2\ : out STD_LOGIC;
    \reg_index_reg_rep[4]_31\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ov5640_hdmi_ov5640_cfg_top_0_0_ui5640reg : entity is "ui5640reg";
end ov5640_hdmi_ov5640_cfg_top_0_0_ui5640reg;

architecture STRUCTURE of ov5640_hdmi_ov5640_cfg_top_0_0_ui5640reg is
  signal \reg_addr[0]_i_5_n_0\ : STD_LOGIC;
  signal \reg_addr[0]_i_6_n_0\ : STD_LOGIC;
  signal \reg_addr[1]_i_5_n_0\ : STD_LOGIC;
  signal \reg_addr[1]_i_6_n_0\ : STD_LOGIC;
  signal \reg_addr[2]_i_5_n_0\ : STD_LOGIC;
  signal \reg_addr[2]_i_6_n_0\ : STD_LOGIC;
  signal \reg_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \reg_addr[3]_i_6_n_0\ : STD_LOGIC;
  signal \reg_addr[4]_i_5_n_0\ : STD_LOGIC;
  signal \reg_addr[9]_i_4_n_0\ : STD_LOGIC;
  signal \reg_addr[9]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \write_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \write_data[2]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \write_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \write_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[4]_i_6_n_0\ : STD_LOGIC;
  signal \write_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[5]_i_6_n_0\ : STD_LOGIC;
  signal \write_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[6]_i_6_n_0\ : STD_LOGIC;
  signal \write_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[7]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_addr[14]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_addr[5]_i_3\ : label is "soft_lutpair27";
begin
\reg_addr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(0),
      O => \reg_index_reg_rep[4]_30\
    );
\reg_addr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71631E1E2D811E5B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]_0\
    );
\reg_addr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"587A623E584FD1A3"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(1),
      O => \reg_addr[0]_i_5_n_0\
    );
\reg_addr[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF7FFF0000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(4),
      I4 => Q(0),
      I5 => Q(5),
      O => \reg_addr[0]_i_6_n_0\
    );
\reg_addr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"115564CC5D74E6EA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]_11\
    );
\reg_addr[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA00FFFF80000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \reg_index_reg_rep[2]\
    );
\reg_addr[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020064002200C421"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(0),
      O => \reg_index_reg_rep[4]_12\
    );
\reg_addr[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDC8A2244470000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]_13\
    );
\reg_addr[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F108F0FF0F0F0C0"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(4),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(5),
      O => \reg_index_reg_rep[0]\
    );
\reg_addr[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBDFCFDFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(5),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(4),
      O => \reg_index_reg_rep[1]_0\
    );
\reg_addr[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575F575DFFFFFFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(4),
      O => \reg_index_reg_rep[5]\
    );
\reg_addr[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBDFCFDFFFFFFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(5),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(4),
      O => \reg_index_reg_rep[1]_1\
    );
\reg_addr[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(5),
      I3 => Q(1),
      I4 => Q(4),
      O => \reg_index_reg_rep[3]_2\
    );
\reg_addr[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55775775EAAAAAAA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(5),
      O => \reg_index_reg_rep[4]_22\
    );
\reg_addr[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1C080C0800000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(4),
      O => \reg_index_reg_rep[1]_2\
    );
\reg_addr[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(4),
      O => \reg_index_reg_rep[3]_1\
    );
\reg_addr[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200A88A15555555"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(5),
      O => \reg_index_reg_rep[4]_21\
    );
\reg_addr[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(1),
      O => \reg_index_reg_rep[4]_31\
    );
\reg_addr[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"321B7760048A9E55"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(5),
      O => \reg_index_reg_rep[4]_2\
    );
\reg_addr[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA4D582D09C65221"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_addr[1]_i_5_n_0\
    );
\reg_addr[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807F7FFF7F008000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(5),
      I4 => Q(0),
      I5 => Q(1),
      O => \reg_addr[1]_i_6_n_0\
    );
\reg_addr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0000FF00FE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]_7\
    );
\reg_addr[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"67131FE8520A8276"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]_26\
    );
\reg_addr[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B32839D415A32822"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \reg_addr[2]_i_5_n_0\
    );
\reg_addr[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FF7F7F70000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(5),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \reg_addr[2]_i_6_n_0\
    );
\reg_addr[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCC33CC32"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(5),
      I5 => Q(1),
      O => \reg_index_reg_rep[4]_19\
    );
\reg_addr[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0331C04455154411"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]_8\
    );
\reg_addr[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA4C80984CA10B14"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_addr[3]_i_5_n_0\
    );
\reg_addr[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B44C4CCCC4CCCCCC"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(0),
      O => \reg_addr[3]_i_6_n_0\
    );
\reg_addr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8000857ABD5540A"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(5),
      O => \reg_index_reg_rep[4]_29\
    );
\reg_addr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"402A00AA00AA00AA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(5),
      I4 => Q(1),
      I5 => Q(3),
      O => \reg_index_reg_rep[4]_27\
    );
\reg_addr[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => \reg_addr[4]_i_5_n_0\,
      I1 => Q(6),
      I2 => Q(4),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => \reg_index_reg_rep[7]_12\
    );
\reg_addr[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7200042340200402"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(5),
      I4 => Q(1),
      I5 => Q(0),
      O => \reg_addr[4]_i_5_n_0\
    );
\reg_addr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200131441110CC40"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]_9\
    );
\reg_addr[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(2),
      O => \reg_index_reg_rep[4]_28\
    );
\reg_addr[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010000208008020A"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => Q(5),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(3),
      O => \reg_index_reg_rep[4]_20\
    );
\reg_addr[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(1),
      I1 => Q(5),
      I2 => Q(2),
      I3 => Q(0),
      O => \reg_index_reg_rep[1]_3\
    );
\reg_addr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000066320028AA27"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(5),
      I5 => Q(1),
      O => \reg_index_reg_rep[4]_23\
    );
\reg_addr[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00007FFFFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \reg_index_reg_rep[0]_1\
    );
\reg_addr[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006000C015541555"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(5),
      O => \reg_index_reg_rep[4]_15\
    );
\reg_addr[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3438383003333330"
    )
        port map (
      I0 => Q(0),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \reg_index_reg_rep[0]_0\
    );
\reg_addr[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88118939ECE6CCEA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(5),
      O => \reg_addr[9]_i_4_n_0\
    );
\reg_addr[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A2A2A00000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(4),
      O => \reg_addr[9]_i_5_n_0\
    );
\reg_addr_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_addr[0]_i_5_n_0\,
      I1 => \reg_addr[0]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_5\,
      S => Q(6)
    );
\reg_addr_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_addr[1]_i_5_n_0\,
      I1 => \reg_addr[1]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_0\,
      S => Q(6)
    );
\reg_addr_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_addr[2]_i_5_n_0\,
      I1 => \reg_addr[2]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_6\,
      S => Q(6)
    );
\reg_addr_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_addr[3]_i_5_n_0\,
      I1 => \reg_addr[3]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_9\,
      S => Q(6)
    );
\reg_addr_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \reg_addr[9]_i_4_n_0\,
      I1 => \reg_addr[9]_i_5_n_0\,
      O => \reg_index_reg_rep[7]_7\,
      S => Q(6)
    );
\write_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00011111607B6F08"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \reg_index_reg_rep[4]_17\
    );
\write_data[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"047B04043008CC0C"
    )
        port map (
      I0 => Q(1),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(5),
      I5 => Q(0),
      O => \reg_index_reg_rep[1]\
    );
\write_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00211811819810A5"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \write_data[0]_i_5_n_0\
    );
\write_data[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55151A0490710615"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(5),
      O => \write_data[0]_i_6_n_0\
    );
\write_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B96860FAD1B30308"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \reg_index_reg_rep[4]_3\
    );
\write_data[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27C838C4460A4A80"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(5),
      I4 => Q(1),
      I5 => Q(0),
      O => \reg_index_reg_rep[4]_5\
    );
\write_data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8020A3107B17F5D0"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \write_data[1]_i_5_n_0\
    );
\write_data[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14A462000262CCA3"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(5),
      I5 => Q(1),
      O => \write_data[1]_i_6_n_0\
    );
\write_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7902FDBCC5CD214"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(1),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]\
    );
\write_data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32570C0C12000420"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(5),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]_24\
    );
\write_data[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000C00434112040"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(1),
      O => \write_data[2]_i_5_n_0\
    );
\write_data[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7347801244190C6B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \write_data[2]_i_6_n_0\
    );
\write_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808C00A8905505C4"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(1),
      O => \reg_index_reg_rep[4]_4\
    );
\write_data[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080602009D0085"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(5),
      I4 => Q(1),
      I5 => Q(0),
      O => \reg_index_reg_rep[4]_18\
    );
\write_data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13A460414311240A"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \write_data[3]_i_5_n_0\
    );
\write_data[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"671566006F006335"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(1),
      I5 => Q(2),
      O => \write_data[3]_i_6_n_0\
    );
\write_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001105444"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(4),
      O => \reg_index_reg_rep[3]\
    );
\write_data[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"485015280A401885"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(5),
      I5 => Q(1),
      O => \reg_index_reg_rep[4]_25\
    );
\write_data[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A3C601171B5A0C3"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \write_data[4]_i_5_n_0\
    );
\write_data[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BD24426587E35F1"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(2),
      O => \write_data[4]_i_6_n_0\
    );
\write_data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7610FE00C401E901"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(1),
      I5 => Q(2),
      O => \reg_index_reg_rep[4]_10\
    );
\write_data[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"036101401A285821"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \reg_index_reg_rep[4]_1\
    );
\write_data[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"89B8802904594AC2"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \write_data[5]_i_5_n_0\
    );
\write_data[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2713450004376061"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \write_data[5]_i_6_n_0\
    );
\write_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"820000009E000001"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(5),
      I4 => Q(1),
      I5 => Q(0),
      O => \reg_index_reg_rep[4]_14\
    );
\write_data[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0141070000002833"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \reg_index_reg_rep[4]_6\
    );
\write_data[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0260102948D1CB02"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \write_data[6]_i_5_n_0\
    );
\write_data[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"275F102040626473"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(5),
      O => \write_data[6]_i_6_n_0\
    );
\write_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(5),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(4),
      O => \reg_index_reg_rep[3]_0\
    );
\write_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0048000013018801"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(0),
      O => \reg_index_reg_rep[4]_16\
    );
\write_data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1004804024510110"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(1),
      O => \write_data[7]_i_5_n_0\
    );
\write_data[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"144C00706444A621"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(5),
      I5 => Q(1),
      O => \write_data[7]_i_6_n_0\
    );
\write_data_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \write_data[0]_i_5_n_0\,
      I1 => \write_data[0]_i_6_n_0\,
      O => \reg_index_reg_rep[7]\,
      S => Q(6)
    );
\write_data_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \write_data[1]_i_5_n_0\,
      I1 => \write_data[1]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_11\,
      S => Q(6)
    );
\write_data_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \write_data[2]_i_5_n_0\,
      I1 => \write_data[2]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_2\,
      S => Q(6)
    );
\write_data_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \write_data[3]_i_5_n_0\,
      I1 => \write_data[3]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_10\,
      S => Q(6)
    );
\write_data_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \write_data[4]_i_5_n_0\,
      I1 => \write_data[4]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_8\,
      S => Q(6)
    );
\write_data_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \write_data[5]_i_5_n_0\,
      I1 => \write_data[5]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_1\,
      S => Q(6)
    );
\write_data_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \write_data[6]_i_5_n_0\,
      I1 => \write_data[6]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_3\,
      S => Q(6)
    );
\write_data_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \write_data[7]_i_5_n_0\,
      I1 => \write_data[7]_i_6_n_0\,
      O => \reg_index_reg_rep[7]_4\,
      S => Q(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ov5640_hdmi_ov5640_cfg_top_0_0_ov5640_cfg_top is
  port (
    sccb_sda : out STD_LOGIC;
    sccb_scl : out STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ov5640_hdmi_ov5640_cfg_top_0_0_ov5640_cfg_top : entity is "ov5640_cfg_top";
end ov5640_hdmi_ov5640_cfg_top_0_0_ov5640_cfg_top;

architecture STRUCTURE of ov5640_hdmi_ov5640_cfg_top_0_0_ov5640_cfg_top is
  signal data10 : STD_LOGIC;
  signal data11 : STD_LOGIC;
  signal data12 : STD_LOGIC;
  signal data13 : STD_LOGIC;
  signal data14 : STD_LOGIC;
  signal data15 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal data8 : STD_LOGIC;
  signal data9 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \reg_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal reg_index : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \reg_index[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_index[5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_index[8]_i_3_n_0\ : STD_LOGIC;
  signal \reg_index_reg_rep_n_0_[0]\ : STD_LOGIC;
  signal \reg_index_reg_rep_n_0_[1]\ : STD_LOGIC;
  signal \reg_index_reg_rep_n_0_[2]\ : STD_LOGIC;
  signal \reg_index_reg_rep_n_0_[3]\ : STD_LOGIC;
  signal \reg_index_reg_rep_n_0_[4]\ : STD_LOGIC;
  signal \reg_index_reg_rep_n_0_[5]\ : STD_LOGIC;
  signal \reg_index_reg_rep_n_0_[6]\ : STD_LOGIC;
  signal \reg_index_reg_rep_n_0_[7]\ : STD_LOGIC;
  signal \rst_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal u_sccb_protocol_n_0 : STD_LOGIC;
  signal u_sccb_protocol_n_10 : STD_LOGIC;
  signal u_sccb_protocol_n_25 : STD_LOGIC;
  signal u_sccb_protocol_n_3 : STD_LOGIC;
  signal u_sccb_protocol_n_4 : STD_LOGIC;
  signal u_sccb_protocol_n_5 : STD_LOGIC;
  signal u_sccb_protocol_n_6 : STD_LOGIC;
  signal u_sccb_protocol_n_7 : STD_LOGIC;
  signal u_sccb_protocol_n_8 : STD_LOGIC;
  signal u_sccb_protocol_n_9 : STD_LOGIC;
  signal u_ui5640reg_n_0 : STD_LOGIC;
  signal u_ui5640reg_n_1 : STD_LOGIC;
  signal u_ui5640reg_n_10 : STD_LOGIC;
  signal u_ui5640reg_n_11 : STD_LOGIC;
  signal u_ui5640reg_n_12 : STD_LOGIC;
  signal u_ui5640reg_n_13 : STD_LOGIC;
  signal u_ui5640reg_n_14 : STD_LOGIC;
  signal u_ui5640reg_n_15 : STD_LOGIC;
  signal u_ui5640reg_n_16 : STD_LOGIC;
  signal u_ui5640reg_n_17 : STD_LOGIC;
  signal u_ui5640reg_n_18 : STD_LOGIC;
  signal u_ui5640reg_n_19 : STD_LOGIC;
  signal u_ui5640reg_n_2 : STD_LOGIC;
  signal u_ui5640reg_n_20 : STD_LOGIC;
  signal u_ui5640reg_n_21 : STD_LOGIC;
  signal u_ui5640reg_n_22 : STD_LOGIC;
  signal u_ui5640reg_n_23 : STD_LOGIC;
  signal u_ui5640reg_n_24 : STD_LOGIC;
  signal u_ui5640reg_n_25 : STD_LOGIC;
  signal u_ui5640reg_n_26 : STD_LOGIC;
  signal u_ui5640reg_n_27 : STD_LOGIC;
  signal u_ui5640reg_n_28 : STD_LOGIC;
  signal u_ui5640reg_n_29 : STD_LOGIC;
  signal u_ui5640reg_n_3 : STD_LOGIC;
  signal u_ui5640reg_n_30 : STD_LOGIC;
  signal u_ui5640reg_n_31 : STD_LOGIC;
  signal u_ui5640reg_n_32 : STD_LOGIC;
  signal u_ui5640reg_n_33 : STD_LOGIC;
  signal u_ui5640reg_n_34 : STD_LOGIC;
  signal u_ui5640reg_n_35 : STD_LOGIC;
  signal u_ui5640reg_n_36 : STD_LOGIC;
  signal u_ui5640reg_n_37 : STD_LOGIC;
  signal u_ui5640reg_n_38 : STD_LOGIC;
  signal u_ui5640reg_n_39 : STD_LOGIC;
  signal u_ui5640reg_n_4 : STD_LOGIC;
  signal u_ui5640reg_n_40 : STD_LOGIC;
  signal u_ui5640reg_n_41 : STD_LOGIC;
  signal u_ui5640reg_n_42 : STD_LOGIC;
  signal u_ui5640reg_n_43 : STD_LOGIC;
  signal u_ui5640reg_n_44 : STD_LOGIC;
  signal u_ui5640reg_n_45 : STD_LOGIC;
  signal u_ui5640reg_n_46 : STD_LOGIC;
  signal u_ui5640reg_n_47 : STD_LOGIC;
  signal u_ui5640reg_n_48 : STD_LOGIC;
  signal u_ui5640reg_n_49 : STD_LOGIC;
  signal u_ui5640reg_n_5 : STD_LOGIC;
  signal u_ui5640reg_n_50 : STD_LOGIC;
  signal u_ui5640reg_n_51 : STD_LOGIC;
  signal u_ui5640reg_n_52 : STD_LOGIC;
  signal u_ui5640reg_n_53 : STD_LOGIC;
  signal u_ui5640reg_n_54 : STD_LOGIC;
  signal u_ui5640reg_n_55 : STD_LOGIC;
  signal u_ui5640reg_n_56 : STD_LOGIC;
  signal u_ui5640reg_n_57 : STD_LOGIC;
  signal u_ui5640reg_n_58 : STD_LOGIC;
  signal u_ui5640reg_n_59 : STD_LOGIC;
  signal u_ui5640reg_n_6 : STD_LOGIC;
  signal u_ui5640reg_n_60 : STD_LOGIC;
  signal u_ui5640reg_n_7 : STD_LOGIC;
  signal u_ui5640reg_n_8 : STD_LOGIC;
  signal u_ui5640reg_n_9 : STD_LOGIC;
  signal write_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal write_en : STD_LOGIC;
  signal write_en_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_index[4]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg_index[5]_i_2\ : label is "soft_lutpair29";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \reg_index_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \reg_index_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \reg_index_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \reg_index_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \reg_index_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \reg_index_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \reg_index_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \reg_index_reg_rep[7]\ : label is "no";
  attribute SOFT_HLUTNM of \rst_cnt[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rst_cnt[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rst_cnt[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rst_cnt[4]_i_1\ : label is "soft_lutpair28";
  attribute inverted : string;
  attribute inverted of \rst_cnt_reg[7]_inv\ : label is "yes";
begin
\reg_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(0),
      Q => \reg_addr_reg_n_0_[0]\
    );
\reg_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(10),
      Q => data11
    );
\reg_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(11),
      Q => data12
    );
\reg_addr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(12),
      Q => data13
    );
\reg_addr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(13),
      Q => data14
    );
\reg_addr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(14),
      Q => data15
    );
\reg_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(1),
      Q => data2
    );
\reg_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(2),
      Q => data3
    );
\reg_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(3),
      Q => data4
    );
\reg_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(4),
      Q => data5
    );
\reg_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(5),
      Q => data6
    );
\reg_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(7),
      Q => data8
    );
\reg_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(8),
      Q => data9
    );
\reg_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => p_0_in(9),
      Q => data10
    );
\reg_index[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => reg_index(2),
      I1 => reg_index(0),
      I2 => reg_index(1),
      I3 => reg_index(3),
      O => \reg_index[4]_i_2_n_0\
    );
\reg_index[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => reg_index(3),
      I1 => reg_index(1),
      I2 => reg_index(0),
      I3 => reg_index(2),
      I4 => reg_index(4),
      O => \reg_index[5]_i_2_n_0\
    );
\reg_index[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => reg_index(4),
      I1 => reg_index(2),
      I2 => reg_index(0),
      I3 => reg_index(1),
      I4 => reg_index(3),
      I5 => reg_index(5),
      O => \reg_index[8]_i_3_n_0\
    );
\reg_index_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(0),
      Q => reg_index(0)
    );
\reg_index_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(1),
      Q => reg_index(1)
    );
\reg_index_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(2),
      Q => reg_index(2)
    );
\reg_index_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(3),
      Q => reg_index(3)
    );
\reg_index_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(4),
      Q => reg_index(4)
    );
\reg_index_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(5),
      Q => reg_index(5)
    );
\reg_index_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(6),
      Q => reg_index(6)
    );
\reg_index_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(7),
      Q => reg_index(7)
    );
\reg_index_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(8),
      Q => reg_index(8)
    );
\reg_index_reg_rep[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(0),
      Q => \reg_index_reg_rep_n_0_[0]\
    );
\reg_index_reg_rep[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(1),
      Q => \reg_index_reg_rep_n_0_[1]\
    );
\reg_index_reg_rep[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(2),
      Q => \reg_index_reg_rep_n_0_[2]\
    );
\reg_index_reg_rep[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(3),
      Q => \reg_index_reg_rep_n_0_[3]\
    );
\reg_index_reg_rep[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(4),
      Q => \reg_index_reg_rep_n_0_[4]\
    );
\reg_index_reg_rep[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(5),
      Q => \reg_index_reg_rep_n_0_[5]\
    );
\reg_index_reg_rep[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(6),
      Q => \reg_index_reg_rep_n_0_[6]\
    );
\reg_index_reg_rep[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => u_sccb_protocol_n_25,
      CLR => u_sccb_protocol_n_0,
      D => p_1_in(7),
      Q => \reg_index_reg_rep_n_0_[7]\
    );
\rst_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\rst_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[0]\,
      I1 => \rst_cnt_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\rst_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[2]\,
      I1 => \rst_cnt_reg_n_0_[0]\,
      I2 => \rst_cnt_reg_n_0_[1]\,
      O => \p_0_in__0\(2)
    );
\rst_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[3]\,
      I1 => \rst_cnt_reg_n_0_[1]\,
      I2 => \rst_cnt_reg_n_0_[0]\,
      I3 => \rst_cnt_reg_n_0_[2]\,
      O => \p_0_in__0\(3)
    );
\rst_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[4]\,
      I1 => \rst_cnt_reg_n_0_[2]\,
      I2 => \rst_cnt_reg_n_0_[0]\,
      I3 => \rst_cnt_reg_n_0_[1]\,
      I4 => \rst_cnt_reg_n_0_[3]\,
      O => \p_0_in__0\(4)
    );
\rst_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[3]\,
      I1 => \rst_cnt_reg_n_0_[1]\,
      I2 => \rst_cnt_reg_n_0_[0]\,
      I3 => \rst_cnt_reg_n_0_[2]\,
      I4 => \rst_cnt_reg_n_0_[4]\,
      I5 => \rst_cnt_reg_n_0_[5]\,
      O => \p_0_in__0\(5)
    );
\rst_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[6]\,
      I1 => \rst_cnt[6]_i_2_n_0\,
      O => \p_0_in__0\(6)
    );
\rst_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[5]\,
      I1 => \rst_cnt_reg_n_0_[4]\,
      I2 => \rst_cnt_reg_n_0_[2]\,
      I3 => \rst_cnt_reg_n_0_[0]\,
      I4 => \rst_cnt_reg_n_0_[1]\,
      I5 => \rst_cnt_reg_n_0_[3]\,
      O => \rst_cnt[6]_i_2_n_0\
    );
\rst_cnt[7]_inv_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rst_cnt[6]_i_2_n_0\,
      I1 => \rst_cnt_reg_n_0_[6]\,
      O => \p_0_in__0\(7)
    );
\rst_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sel,
      CLR => u_sccb_protocol_n_0,
      D => \p_0_in__0\(0),
      Q => \rst_cnt_reg_n_0_[0]\
    );
\rst_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sel,
      CLR => u_sccb_protocol_n_0,
      D => \p_0_in__0\(1),
      Q => \rst_cnt_reg_n_0_[1]\
    );
\rst_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sel,
      CLR => u_sccb_protocol_n_0,
      D => \p_0_in__0\(2),
      Q => \rst_cnt_reg_n_0_[2]\
    );
\rst_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sel,
      CLR => u_sccb_protocol_n_0,
      D => \p_0_in__0\(3),
      Q => \rst_cnt_reg_n_0_[3]\
    );
\rst_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sel,
      CLR => u_sccb_protocol_n_0,
      D => \p_0_in__0\(4),
      Q => \rst_cnt_reg_n_0_[4]\
    );
\rst_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sel,
      CLR => u_sccb_protocol_n_0,
      D => \p_0_in__0\(5),
      Q => \rst_cnt_reg_n_0_[5]\
    );
\rst_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => sel,
      CLR => u_sccb_protocol_n_0,
      D => \p_0_in__0\(6),
      Q => \rst_cnt_reg_n_0_[6]\
    );
\rst_cnt_reg[7]_inv\: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => sel,
      D => \p_0_in__0\(7),
      PRE => u_sccb_protocol_n_0,
      Q => sel
    );
u_sccb_protocol: entity work.ov5640_hdmi_ov5640_cfg_top_0_0_sccb_protocol
     port map (
      D(7) => u_sccb_protocol_n_3,
      D(6) => u_sccb_protocol_n_4,
      D(5) => u_sccb_protocol_n_5,
      D(4) => u_sccb_protocol_n_6,
      D(3) => u_sccb_protocol_n_7,
      D(2) => u_sccb_protocol_n_8,
      D(1) => u_sccb_protocol_n_9,
      D(0) => u_sccb_protocol_n_10,
      E(0) => u_sccb_protocol_n_25,
      Q(3) => \reg_index_reg_rep_n_0_[7]\,
      Q(2) => \reg_index_reg_rep_n_0_[6]\,
      Q(1) => \reg_index_reg_rep_n_0_[4]\,
      Q(0) => \reg_index_reg_rep_n_0_[3]\,
      \reg_addr_reg[0]\ => u_ui5640reg_n_8,
      \reg_addr_reg[0]_0\ => u_ui5640reg_n_57,
      \reg_addr_reg[0]_1\ => u_ui5640reg_n_9,
      \reg_addr_reg[10]\ => u_ui5640reg_n_29,
      \reg_addr_reg[10]_0\ => u_ui5640reg_n_52,
      \reg_addr_reg[10]_1\ => u_ui5640reg_n_30,
      \reg_addr_reg[11]\ => u_ui5640reg_n_33,
      \reg_addr_reg[11]_0\ => u_ui5640reg_n_15,
      \reg_addr_reg[12]\ => u_ui5640reg_n_16,
      \reg_addr_reg[12]_0\ => u_ui5640reg_n_43,
      \reg_addr_reg[13]\ => u_ui5640reg_n_17,
      \reg_addr_reg[13]_0\ => u_ui5640reg_n_44,
      \reg_addr_reg[14]\ => u_ui5640reg_n_37,
      \reg_addr_reg[14]_0\ => u_ui5640reg_n_56,
      \reg_addr_reg[14]_1\ => u_ui5640reg_n_42,
      \reg_addr_reg[1]\ => u_ui5640reg_n_2,
      \reg_addr_reg[1]_0\ => u_ui5640reg_n_60,
      \reg_addr_reg[1]_1\ => u_ui5640reg_n_11,
      \reg_addr_reg[2]\ => u_ui5640reg_n_12,
      \reg_addr_reg[2]_0\ => u_ui5640reg_n_22,
      \reg_addr_reg[2]_1\ => u_ui5640reg_n_48,
      \reg_addr_reg[3]\ => u_ui5640reg_n_23,
      \reg_addr_reg[3]_0\ => u_ui5640reg_n_40,
      \reg_addr_reg[3]_1\ => u_ui5640reg_n_24,
      \reg_addr_reg[4]\ => u_ui5640reg_n_54,
      \reg_addr_reg[4]_0\ => u_ui5640reg_n_51,
      \reg_addr_reg[4]_1\ => u_ui5640reg_n_32,
      \reg_addr_reg[5]\ => u_ui5640reg_n_26,
      \reg_addr_reg[5]_0\ => u_ui5640reg_n_53,
      \reg_addr_reg[5]_1\ => u_ui5640reg_n_41,
      \reg_addr_reg[7]\ => u_ui5640reg_n_58,
      \reg_addr_reg[8]\ => u_ui5640reg_n_45,
      \reg_addr_reg[8]_0\ => u_ui5640reg_n_55,
      \reg_addr_reg[8]_1\ => u_ui5640reg_n_35,
      \reg_addr_reg[9]\ => u_ui5640reg_n_13,
      \reg_addr_reg[9]_0\ => u_ui5640reg_n_59,
      \reg_addr_reg[9]_1\ => u_ui5640reg_n_31,
      \reg_index_reg[8]\(8 downto 0) => reg_index(8 downto 0),
      \reg_index_reg_rep[4]\ => \reg_index[4]_i_2_n_0\,
      \reg_index_reg_rep[5]\ => \reg_index[5]_i_2_n_0\,
      \reg_index_reg_rep[6]\ => \reg_index[8]_i_3_n_0\,
      \reg_index_reg_rep[7]\(13 downto 6) => p_0_in(14 downto 7),
      \reg_index_reg_rep[7]\(5 downto 0) => p_0_in(5 downto 0),
      \rst_cnt_reg[7]_inv\(8 downto 0) => p_1_in(8 downto 0),
      sccb_scl => sccb_scl,
      sccb_sda => sccb_sda,
      sda_out_i_6_0(7 downto 0) => write_data(7 downto 0),
      sda_out_reg_i_4_0(13) => data15,
      sda_out_reg_i_4_0(12) => data14,
      sda_out_reg_i_4_0(11) => data13,
      sda_out_reg_i_4_0(10) => data12,
      sda_out_reg_i_4_0(9) => data11,
      sda_out_reg_i_4_0(8) => data10,
      sda_out_reg_i_4_0(7) => data9,
      sda_out_reg_i_4_0(6) => data8,
      sda_out_reg_i_4_0(5) => data6,
      sda_out_reg_i_4_0(4) => data5,
      sda_out_reg_i_4_0(3) => data4,
      sda_out_reg_i_4_0(2) => data3,
      sda_out_reg_i_4_0(1) => data2,
      sda_out_reg_i_4_0(0) => \reg_addr_reg_n_0_[0]\,
      sel => sel,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n,
      sys_rst_n_0 => u_sccb_protocol_n_0,
      wr_flag_reg_0 => write_en_reg_n_0,
      \write_data_reg[0]\ => u_ui5640reg_n_0,
      \write_data_reg[0]_0\ => u_ui5640reg_n_38,
      \write_data_reg[0]_1\ => u_ui5640reg_n_1,
      \write_data_reg[1]\ => u_ui5640reg_n_28,
      \write_data_reg[1]_0\ => u_ui5640reg_n_14,
      \write_data_reg[1]_1\ => u_ui5640reg_n_19,
      \write_data_reg[2]\ => u_ui5640reg_n_5,
      \write_data_reg[2]_0\ => u_ui5640reg_n_3,
      \write_data_reg[2]_1\ => u_ui5640reg_n_46,
      \write_data_reg[3]\ => u_ui5640reg_n_25,
      \write_data_reg[3]_0\ => u_ui5640reg_n_18,
      \write_data_reg[3]_1\ => u_ui5640reg_n_39,
      \write_data_reg[4]\ => u_ui5640reg_n_20,
      \write_data_reg[4]_0\ => u_ui5640reg_n_49,
      \write_data_reg[4]_1\ => u_ui5640reg_n_47,
      \write_data_reg[5]\ => u_ui5640reg_n_4,
      \write_data_reg[5]_0\ => u_ui5640reg_n_27,
      \write_data_reg[5]_1\ => u_ui5640reg_n_10,
      \write_data_reg[6]\ => u_ui5640reg_n_6,
      \write_data_reg[6]_0\ => u_ui5640reg_n_34,
      \write_data_reg[6]_1\ => u_ui5640reg_n_21,
      \write_data_reg[7]\ => u_ui5640reg_n_7,
      \write_data_reg[7]_0\ => u_ui5640reg_n_50,
      \write_data_reg[7]_1\ => u_ui5640reg_n_36,
      write_en => write_en
    );
u_ui5640reg: entity work.ov5640_hdmi_ov5640_cfg_top_0_0_ui5640reg
     port map (
      Q(6) => \reg_index_reg_rep_n_0_[7]\,
      Q(5) => \reg_index_reg_rep_n_0_[5]\,
      Q(4) => \reg_index_reg_rep_n_0_[4]\,
      Q(3) => \reg_index_reg_rep_n_0_[3]\,
      Q(2) => \reg_index_reg_rep_n_0_[2]\,
      Q(1) => \reg_index_reg_rep_n_0_[1]\,
      Q(0) => \reg_index_reg_rep_n_0_[0]\,
      \reg_index_reg_rep[0]\ => u_ui5640reg_n_15,
      \reg_index_reg_rep[0]_0\ => u_ui5640reg_n_31,
      \reg_index_reg_rep[0]_1\ => u_ui5640reg_n_55,
      \reg_index_reg_rep[1]\ => u_ui5640reg_n_1,
      \reg_index_reg_rep[1]_0\ => u_ui5640reg_n_16,
      \reg_index_reg_rep[1]_1\ => u_ui5640reg_n_17,
      \reg_index_reg_rep[1]_2\ => u_ui5640reg_n_37,
      \reg_index_reg_rep[1]_3\ => u_ui5640reg_n_58,
      \reg_index_reg_rep[2]\ => u_ui5640reg_n_52,
      \reg_index_reg_rep[3]\ => u_ui5640reg_n_49,
      \reg_index_reg_rep[3]_0\ => u_ui5640reg_n_50,
      \reg_index_reg_rep[3]_1\ => u_ui5640reg_n_56,
      \reg_index_reg_rep[3]_2\ => u_ui5640reg_n_59,
      \reg_index_reg_rep[4]\ => u_ui5640reg_n_3,
      \reg_index_reg_rep[4]_0\ => u_ui5640reg_n_9,
      \reg_index_reg_rep[4]_1\ => u_ui5640reg_n_10,
      \reg_index_reg_rep[4]_10\ => u_ui5640reg_n_27,
      \reg_index_reg_rep[4]_11\ => u_ui5640reg_n_29,
      \reg_index_reg_rep[4]_12\ => u_ui5640reg_n_30,
      \reg_index_reg_rep[4]_13\ => u_ui5640reg_n_33,
      \reg_index_reg_rep[4]_14\ => u_ui5640reg_n_34,
      \reg_index_reg_rep[4]_15\ => u_ui5640reg_n_35,
      \reg_index_reg_rep[4]_16\ => u_ui5640reg_n_36,
      \reg_index_reg_rep[4]_17\ => u_ui5640reg_n_38,
      \reg_index_reg_rep[4]_18\ => u_ui5640reg_n_39,
      \reg_index_reg_rep[4]_19\ => u_ui5640reg_n_40,
      \reg_index_reg_rep[4]_2\ => u_ui5640reg_n_11,
      \reg_index_reg_rep[4]_20\ => u_ui5640reg_n_41,
      \reg_index_reg_rep[4]_21\ => u_ui5640reg_n_42,
      \reg_index_reg_rep[4]_22\ => u_ui5640reg_n_44,
      \reg_index_reg_rep[4]_23\ => u_ui5640reg_n_45,
      \reg_index_reg_rep[4]_24\ => u_ui5640reg_n_46,
      \reg_index_reg_rep[4]_25\ => u_ui5640reg_n_47,
      \reg_index_reg_rep[4]_26\ => u_ui5640reg_n_48,
      \reg_index_reg_rep[4]_27\ => u_ui5640reg_n_51,
      \reg_index_reg_rep[4]_28\ => u_ui5640reg_n_53,
      \reg_index_reg_rep[4]_29\ => u_ui5640reg_n_54,
      \reg_index_reg_rep[4]_3\ => u_ui5640reg_n_14,
      \reg_index_reg_rep[4]_30\ => u_ui5640reg_n_57,
      \reg_index_reg_rep[4]_31\ => u_ui5640reg_n_60,
      \reg_index_reg_rep[4]_4\ => u_ui5640reg_n_18,
      \reg_index_reg_rep[4]_5\ => u_ui5640reg_n_19,
      \reg_index_reg_rep[4]_6\ => u_ui5640reg_n_21,
      \reg_index_reg_rep[4]_7\ => u_ui5640reg_n_22,
      \reg_index_reg_rep[4]_8\ => u_ui5640reg_n_24,
      \reg_index_reg_rep[4]_9\ => u_ui5640reg_n_26,
      \reg_index_reg_rep[5]\ => u_ui5640reg_n_43,
      \reg_index_reg_rep[7]\ => u_ui5640reg_n_0,
      \reg_index_reg_rep[7]_0\ => u_ui5640reg_n_2,
      \reg_index_reg_rep[7]_1\ => u_ui5640reg_n_4,
      \reg_index_reg_rep[7]_10\ => u_ui5640reg_n_25,
      \reg_index_reg_rep[7]_11\ => u_ui5640reg_n_28,
      \reg_index_reg_rep[7]_12\ => u_ui5640reg_n_32,
      \reg_index_reg_rep[7]_2\ => u_ui5640reg_n_5,
      \reg_index_reg_rep[7]_3\ => u_ui5640reg_n_6,
      \reg_index_reg_rep[7]_4\ => u_ui5640reg_n_7,
      \reg_index_reg_rep[7]_5\ => u_ui5640reg_n_8,
      \reg_index_reg_rep[7]_6\ => u_ui5640reg_n_12,
      \reg_index_reg_rep[7]_7\ => u_ui5640reg_n_13,
      \reg_index_reg_rep[7]_8\ => u_ui5640reg_n_20,
      \reg_index_reg_rep[7]_9\ => u_ui5640reg_n_23
    );
\write_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => u_sccb_protocol_n_10,
      Q => write_data(0)
    );
\write_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => u_sccb_protocol_n_9,
      Q => write_data(1)
    );
\write_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => u_sccb_protocol_n_8,
      Q => write_data(2)
    );
\write_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => u_sccb_protocol_n_7,
      Q => write_data(3)
    );
\write_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => u_sccb_protocol_n_6,
      Q => write_data(4)
    );
\write_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => u_sccb_protocol_n_5,
      Q => write_data(5)
    );
\write_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => u_sccb_protocol_n_4,
      Q => write_data(6)
    );
\write_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => u_sccb_protocol_n_3,
      Q => write_data(7)
    );
write_en_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => u_sccb_protocol_n_0,
      D => write_en,
      Q => write_en_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ov5640_hdmi_ov5640_cfg_top_0_0 is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    sccb_scl : out STD_LOGIC;
    sccb_sda : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ov5640_hdmi_ov5640_cfg_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ov5640_hdmi_ov5640_cfg_top_0_0 : entity is "ov5640_hdmi_ov5640_cfg_top_0_0,ov5640_cfg_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ov5640_hdmi_ov5640_cfg_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ov5640_hdmi_ov5640_cfg_top_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ov5640_hdmi_ov5640_cfg_top_0_0 : entity is "ov5640_cfg_top,Vivado 2020.2";
end ov5640_hdmi_ov5640_cfg_top_0_0;

architecture STRUCTURE of ov5640_hdmi_ov5640_cfg_top_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ov5640_hdmi_sys_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ov5640_hdmi_ov5640_cfg_top_0_0_ov5640_cfg_top
     port map (
      sccb_scl => sccb_scl,
      sccb_sda => sccb_sda,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
end STRUCTURE;
