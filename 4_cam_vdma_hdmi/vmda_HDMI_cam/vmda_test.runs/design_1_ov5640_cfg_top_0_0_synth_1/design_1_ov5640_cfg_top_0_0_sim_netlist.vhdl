-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr 19 11:47:15 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ov5640_cfg_top_0_0_sim_netlist.vhdl
-- Design      : design_1_ov5640_cfg_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sccb_protocol is
  port (
    sys_rst_n_0 : out STD_LOGIC;
    sccb_clk : out STD_LOGIC;
    sccb_cfg_done_reg_0 : out STD_LOGIC;
    sys_rst_n_1 : out STD_LOGIC;
    w_done : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sccb_cfg_done_reg_1 : out STD_LOGIC;
    sccb_data : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reg_index_reg_rep : in STD_LOGIC;
    reg_index_reg_rep_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_en : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 4 downto 0 );
    DOPADOP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sccb_protocol;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sccb_protocol is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_bit[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_bit__0\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[3]\ : STD_LOGIC;
  signal cnt_clk : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \cnt_clk[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clk[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[9]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_clk[9]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clk[9]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_clk_reg_n_0_[9]\ : STD_LOGIC;
  signal cnt_delay : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \cnt_delay[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_delay[6]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_delay__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \cnt_reg_wr0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \cnt_reg_wr0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \cnt_reg_wr0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \cnt_reg_wr[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_wr[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_wr[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_wr[7]_i_3_n_0\ : STD_LOGIC;
  signal cnt_reg_wr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_0_in4_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \reg_index[7]_i_4_n_0\ : STD_LOGIC;
  signal sccb_cfg_done_i_1_n_0 : STD_LOGIC;
  signal \^sccb_cfg_done_reg_0\ : STD_LOGIC;
  signal \^sccb_cfg_done_reg_1\ : STD_LOGIC;
  signal \^sccb_clk\ : STD_LOGIC;
  signal sccb_data_INST_0_i_1_n_0 : STD_LOGIC;
  signal sck_i_10_n_0 : STD_LOGIC;
  signal sck_i_2_n_0 : STD_LOGIC;
  signal sck_i_3_n_0 : STD_LOGIC;
  signal sck_i_4_n_0 : STD_LOGIC;
  signal sck_i_5_n_0 : STD_LOGIC;
  signal sck_i_6_n_0 : STD_LOGIC;
  signal sck_i_7_n_0 : STD_LOGIC;
  signal sck_i_8_n_0 : STD_LOGIC;
  signal sck_i_9_n_0 : STD_LOGIC;
  signal sda_out : STD_LOGIC;
  signal sda_out_i_10_n_0 : STD_LOGIC;
  signal sda_out_i_11_n_0 : STD_LOGIC;
  signal sda_out_i_12_n_0 : STD_LOGIC;
  signal sda_out_i_13_n_0 : STD_LOGIC;
  signal sda_out_i_3_n_0 : STD_LOGIC;
  signal sda_out_i_4_n_0 : STD_LOGIC;
  signal sda_out_i_5_n_0 : STD_LOGIC;
  signal sda_out_i_6_n_0 : STD_LOGIC;
  signal sda_out_i_7_n_0 : STD_LOGIC;
  signal sda_out_i_8_n_0 : STD_LOGIC;
  signal sda_out_i_9_n_0 : STD_LOGIC;
  signal sda_out_reg_i_2_n_0 : STD_LOGIC;
  signal sda_out_reg_n_0 : STD_LOGIC;
  signal \^sys_rst_n_0\ : STD_LOGIC;
  signal \^w_done\ : STD_LOGIC;
  signal \NLW_cnt_reg_wr0_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_reg_wr0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state[8]_i_3\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "REG_ADDRH:000000000001,REG_ADDRL:000000000010,DVI_W:000000100000,STOP:000001000000,END2:000010000000,STA_1:000100000000,IDLE:000000010000,R_DATA:001000000000,END1:000000001000,W_DATA:000000000100,DVI_R:100000000000,STA_2:010000000000";
  attribute SOFT_HLUTNM of \cnt_bit[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_bit[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_bit[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_clk[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_clk[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_clk[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_clk[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_clk[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_clk[9]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_clk[9]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_delay[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_delay[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_delay[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_delay[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_delay[6]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_reg_wr[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_reg_wr[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_reg_wr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_reg_wr[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_reg_wr[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_reg_wr[7]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_index[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_index[7]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sccb_data_INST_0_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sck_i_5 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of sck_i_7 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sda_out_i_11 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of sda_out_i_13 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of w_en_i_1 : label is "soft_lutpair15";
begin
  sccb_cfg_done_reg_0 <= \^sccb_cfg_done_reg_0\;
  sccb_cfg_done_reg_1 <= \^sccb_cfg_done_reg_1\;
  sccb_clk <= \^sccb_clk\;
  sys_rst_n_0 <= \^sys_rst_n_0\;
  w_done <= \^w_done\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state[4]_i_2_n_0\,
      I2 => p_2_in,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state[4]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA0A"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => w_en,
      I2 => \FSM_onehot_state[4]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FFFFF000F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state[4]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_state[6]_i_2_n_0\,
      I4 => w_en,
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[0]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \cnt_bit_reg_n_0_[2]\,
      I3 => \cnt_bit_reg_n_0_[3]\,
      I4 => \FSM_onehot_state[8]_i_2_n_0\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_state[5]_i_2_n_0\,
      I2 => \FSM_onehot_state[8]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[3]\,
      I1 => \cnt_bit_reg_n_0_[2]\,
      I2 => \cnt_bit_reg_n_0_[1]\,
      I3 => \cnt_bit_reg_n_0_[0]\,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state[6]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_delay(0),
      I1 => \cnt_delay[3]_i_2_n_0\,
      O => \FSM_onehot_state[6]_i_2_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^w_done\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state[8]_i_2_n_0\,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_state[8]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => w_en,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[3]\,
      I1 => \cnt_clk_reg_n_0_[9]\,
      I2 => \FSM_onehot_state[8]_i_3_n_0\,
      I3 => \cnt_clk[2]_i_3_n_0\,
      I4 => \cnt_clk_reg_n_0_[6]\,
      I5 => \cnt_clk_reg_n_0_[7]\,
      O => \FSM_onehot_state[8]_i_2_n_0\
    );
\FSM_onehot_state[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[5]\,
      I1 => \cnt_clk_reg_n_0_[4]\,
      I2 => \cnt_clk_reg_n_0_[8]\,
      I3 => \cnt_clk_reg_n_0_[2]\,
      O => \FSM_onehot_state[8]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => p_2_in,
      R => \^sys_rst_n_0\
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
      Q => p_0_in4_in,
      R => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      S => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => \^sys_rst_n_0\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
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
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => \^sys_rst_n_0\
    );
\cnt_bit[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[1]\,
      I1 => \cnt_bit_reg_n_0_[2]\,
      I2 => \cnt_bit_reg_n_0_[3]\,
      I3 => \cnt_bit_reg_n_0_[0]\,
      O => \cnt_bit[0]_i_1_n_0\
    );
\cnt_bit[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[0]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      O => \cnt_bit[1]_i_1_n_0\
    );
\cnt_bit[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[2]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      O => \cnt_bit[2]_i_1_n_0\
    );
\cnt_bit[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => p_0_in4_in,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => sys_rst_n,
      O => \cnt_bit[3]_i_1_n_0\
    );
\cnt_bit[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_2_n_0\,
      O => \cnt_bit__0\
    );
\cnt_bit[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E80"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[2]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[3]\,
      O => \cnt_bit[3]_i_3_n_0\
    );
\cnt_bit_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \cnt_bit__0\,
      D => \cnt_bit[0]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[0]\,
      R => \cnt_bit[3]_i_1_n_0\
    );
\cnt_bit_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \cnt_bit__0\,
      D => \cnt_bit[1]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[1]\,
      R => \cnt_bit[3]_i_1_n_0\
    );
\cnt_bit_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \cnt_bit__0\,
      D => \cnt_bit[2]_i_1_n_0\,
      Q => \cnt_bit_reg_n_0_[2]\,
      R => \cnt_bit[3]_i_1_n_0\
    );
\cnt_bit_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \cnt_bit__0\,
      D => \cnt_bit[3]_i_3_n_0\,
      Q => \cnt_bit_reg_n_0_[3]\,
      R => \cnt_bit[3]_i_1_n_0\
    );
\cnt_clk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[0]\,
      O => cnt_clk(0)
    );
\cnt_clk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[1]\,
      I1 => \cnt_clk_reg_n_0_[0]\,
      O => cnt_clk(1)
    );
\cnt_clk[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA54555555"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[2]\,
      I1 => \cnt_clk[9]_i_4_n_0\,
      I2 => \cnt_clk[2]_i_2_n_0\,
      I3 => \cnt_clk_reg_n_0_[7]\,
      I4 => \cnt_clk_reg_n_0_[8]\,
      I5 => \cnt_clk[2]_i_3_n_0\,
      O => cnt_clk(2)
    );
\cnt_clk[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[9]\,
      I1 => \cnt_clk_reg_n_0_[3]\,
      O => \cnt_clk[2]_i_2_n_0\
    );
\cnt_clk[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[1]\,
      I1 => \cnt_clk_reg_n_0_[0]\,
      O => \cnt_clk[2]_i_3_n_0\
    );
\cnt_clk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[3]\,
      I1 => \cnt_clk_reg_n_0_[1]\,
      I2 => \cnt_clk_reg_n_0_[0]\,
      I3 => \cnt_clk_reg_n_0_[2]\,
      O => cnt_clk(3)
    );
\cnt_clk[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_2_n_0\,
      I1 => \cnt_clk_reg_n_0_[3]\,
      I2 => \cnt_clk_reg_n_0_[1]\,
      I3 => \cnt_clk_reg_n_0_[0]\,
      I4 => \cnt_clk_reg_n_0_[2]\,
      I5 => \cnt_clk_reg_n_0_[4]\,
      O => cnt_clk(4)
    );
\cnt_clk[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_2_n_0\,
      I1 => \cnt_clk[9]_i_3_n_0\,
      I2 => \cnt_clk_reg_n_0_[3]\,
      I3 => \cnt_clk_reg_n_0_[4]\,
      I4 => \cnt_clk_reg_n_0_[5]\,
      O => cnt_clk(5)
    );
\cnt_clk[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_2_n_0\,
      I1 => \cnt_clk_reg_n_0_[4]\,
      I2 => \cnt_clk_reg_n_0_[3]\,
      I3 => \cnt_clk[9]_i_3_n_0\,
      I4 => \cnt_clk_reg_n_0_[5]\,
      I5 => \cnt_clk_reg_n_0_[6]\,
      O => cnt_clk(6)
    );
\cnt_clk[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_2_n_0\,
      I1 => \cnt_clk[9]_i_4_n_0\,
      I2 => \cnt_clk[9]_i_3_n_0\,
      I3 => \cnt_clk_reg_n_0_[3]\,
      I4 => \cnt_clk_reg_n_0_[7]\,
      O => cnt_clk(7)
    );
\cnt_clk[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2AAA00008000"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_2_n_0\,
      I1 => \cnt_clk_reg_n_0_[7]\,
      I2 => \cnt_clk_reg_n_0_[3]\,
      I3 => \cnt_clk[9]_i_3_n_0\,
      I4 => \cnt_clk[9]_i_4_n_0\,
      I5 => \cnt_clk_reg_n_0_[8]\,
      O => cnt_clk(8)
    );
\cnt_clk[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => sys_rst_n,
      O => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[9]\,
      I1 => \cnt_clk_reg_n_0_[7]\,
      I2 => \cnt_clk_reg_n_0_[3]\,
      I3 => \cnt_clk[9]_i_3_n_0\,
      I4 => \cnt_clk[9]_i_4_n_0\,
      I5 => \cnt_clk_reg_n_0_[8]\,
      O => cnt_clk(9)
    );
\cnt_clk[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[2]\,
      I1 => \cnt_clk_reg_n_0_[0]\,
      I2 => \cnt_clk_reg_n_0_[1]\,
      O => \cnt_clk[9]_i_3_n_0\
    );
\cnt_clk[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[5]\,
      I1 => \cnt_clk_reg_n_0_[4]\,
      I2 => \cnt_clk_reg_n_0_[6]\,
      O => \cnt_clk[9]_i_4_n_0\
    );
\cnt_clk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(0),
      Q => \cnt_clk_reg_n_0_[0]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(1),
      Q => \cnt_clk_reg_n_0_[1]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(2),
      Q => \cnt_clk_reg_n_0_[2]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(3),
      Q => \cnt_clk_reg_n_0_[3]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(4),
      Q => \cnt_clk_reg_n_0_[4]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(5),
      Q => \cnt_clk_reg_n_0_[5]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(6),
      Q => \cnt_clk_reg_n_0_[6]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(7),
      Q => \cnt_clk_reg_n_0_[7]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(8),
      Q => \cnt_clk_reg_n_0_[8]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_clk_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_clk(9),
      Q => \cnt_clk_reg_n_0_[9]\,
      R => \cnt_clk[9]_i_1_n_0\
    );
\cnt_delay[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_delay[3]_i_2_n_0\,
      I1 => cnt_delay(0),
      O => \cnt_delay__0\(0)
    );
\cnt_delay[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt_delay[3]_i_2_n_0\,
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
      INIT => X"7878F000"
    )
        port map (
      I0 => cnt_delay(1),
      I1 => cnt_delay(2),
      I2 => cnt_delay(3),
      I3 => \cnt_delay[3]_i_2_n_0\,
      I4 => cnt_delay(0),
      O => \cnt_delay__0\(3)
    );
\cnt_delay[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => cnt_delay(6),
      I1 => cnt_delay(2),
      I2 => cnt_delay(5),
      I3 => cnt_delay(1),
      I4 => cnt_delay(4),
      I5 => cnt_delay(3),
      O => \cnt_delay[3]_i_2_n_0\
    );
\cnt_delay[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => cnt_delay(4),
      I1 => cnt_delay(3),
      I2 => cnt_delay(0),
      I3 => cnt_delay(1),
      I4 => cnt_delay(2),
      O => \cnt_delay[4]_i_1_n_0\
    );
\cnt_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt_delay(5),
      I1 => cnt_delay(2),
      I2 => cnt_delay(1),
      I3 => cnt_delay(0),
      I4 => cnt_delay(3),
      I5 => cnt_delay(4),
      O => \cnt_delay__0\(5)
    );
\cnt_delay[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => sys_rst_n,
      O => \cnt_delay[6]_i_1_n_0\
    );
\cnt_delay[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4414444444444444"
    )
        port map (
      I0 => \FSM_onehot_state[6]_i_2_n_0\,
      I1 => cnt_delay(6),
      I2 => cnt_delay(5),
      I3 => \cnt_delay[6]_i_3_n_0\,
      I4 => cnt_delay(3),
      I5 => cnt_delay(4),
      O => \cnt_delay__0\(6)
    );
\cnt_delay[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cnt_delay(0),
      I1 => cnt_delay(1),
      I2 => cnt_delay(2),
      O => \cnt_delay[6]_i_3_n_0\
    );
\cnt_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(0),
      Q => cnt_delay(0),
      R => \cnt_delay[6]_i_1_n_0\
    );
\cnt_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(1),
      Q => cnt_delay(1),
      R => \cnt_delay[6]_i_1_n_0\
    );
\cnt_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(2),
      Q => cnt_delay(2),
      R => \cnt_delay[6]_i_1_n_0\
    );
\cnt_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(3),
      Q => cnt_delay(3),
      R => \cnt_delay[6]_i_1_n_0\
    );
\cnt_delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay[4]_i_1_n_0\,
      Q => cnt_delay(4),
      R => \cnt_delay[6]_i_1_n_0\
    );
\cnt_delay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(5),
      Q => cnt_delay(5),
      R => \cnt_delay[6]_i_1_n_0\
    );
\cnt_delay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_delay__0\(6),
      Q => cnt_delay(6),
      R => \cnt_delay[6]_i_1_n_0\
    );
\cnt_reg_wr0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_cnt_reg_wr0_inferred__0/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg_wr0_inferred__0/i__carry_n_1\,
      CO(1) => \cnt_reg_wr0_inferred__0/i__carry_n_2\,
      CO(0) => \cnt_reg_wr0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt_reg_wr0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1_n_0\,
      S(1) => \i__carry_i_2_n_0\,
      S(0) => \i__carry_i_3_n_0\
    );
\cnt_reg_wr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg_wr_reg(0),
      O => \cnt_reg_wr[0]_i_1_n_0\
    );
\cnt_reg_wr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_reg_wr_reg(1),
      I1 => cnt_reg_wr_reg(0),
      O => p_0_in(1)
    );
\cnt_reg_wr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt_reg_wr_reg(2),
      I1 => cnt_reg_wr_reg(0),
      I2 => cnt_reg_wr_reg(1),
      O => \cnt_reg_wr[2]_i_1_n_0\
    );
\cnt_reg_wr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cnt_reg_wr_reg(3),
      I1 => cnt_reg_wr_reg(0),
      I2 => cnt_reg_wr_reg(1),
      I3 => cnt_reg_wr_reg(2),
      O => p_0_in(3)
    );
\cnt_reg_wr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_reg_wr_reg(2),
      I1 => cnt_reg_wr_reg(1),
      I2 => cnt_reg_wr_reg(0),
      I3 => cnt_reg_wr_reg(3),
      I4 => cnt_reg_wr_reg(4),
      O => p_0_in(4)
    );
\cnt_reg_wr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt_reg_wr_reg(5),
      I1 => cnt_reg_wr_reg(2),
      I2 => cnt_reg_wr_reg(1),
      I3 => cnt_reg_wr_reg(0),
      I4 => cnt_reg_wr_reg(3),
      I5 => cnt_reg_wr_reg(4),
      O => p_0_in(5)
    );
\cnt_reg_wr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \cnt_reg_wr[7]_i_3_n_0\,
      I1 => cnt_reg_wr_reg(3),
      I2 => cnt_reg_wr_reg(5),
      I3 => cnt_reg_wr_reg(4),
      I4 => cnt_reg_wr_reg(6),
      O => p_0_in(6)
    );
\cnt_reg_wr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^w_done\,
      I1 => \cnt_reg_wr0_inferred__0/i__carry_n_1\,
      I2 => sys_rst_n,
      O => \cnt_reg_wr[7]_i_1_n_0\
    );
\cnt_reg_wr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt_reg_wr_reg(7),
      I1 => \cnt_reg_wr[7]_i_3_n_0\,
      I2 => cnt_reg_wr_reg(3),
      I3 => cnt_reg_wr_reg(5),
      I4 => cnt_reg_wr_reg(4),
      I5 => cnt_reg_wr_reg(6),
      O => p_0_in(7)
    );
\cnt_reg_wr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cnt_reg_wr_reg(0),
      I1 => cnt_reg_wr_reg(1),
      I2 => cnt_reg_wr_reg(2),
      O => \cnt_reg_wr[7]_i_3_n_0\
    );
\cnt_reg_wr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^w_done\,
      D => \cnt_reg_wr[0]_i_1_n_0\,
      Q => cnt_reg_wr_reg(0),
      R => \cnt_reg_wr[7]_i_1_n_0\
    );
\cnt_reg_wr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^w_done\,
      D => p_0_in(1),
      Q => cnt_reg_wr_reg(1),
      R => \cnt_reg_wr[7]_i_1_n_0\
    );
\cnt_reg_wr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^w_done\,
      D => \cnt_reg_wr[2]_i_1_n_0\,
      Q => cnt_reg_wr_reg(2),
      R => \cnt_reg_wr[7]_i_1_n_0\
    );
\cnt_reg_wr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^w_done\,
      D => p_0_in(3),
      Q => cnt_reg_wr_reg(3),
      R => \cnt_reg_wr[7]_i_1_n_0\
    );
\cnt_reg_wr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^w_done\,
      D => p_0_in(4),
      Q => cnt_reg_wr_reg(4),
      R => \cnt_reg_wr[7]_i_1_n_0\
    );
\cnt_reg_wr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^w_done\,
      D => p_0_in(5),
      Q => cnt_reg_wr_reg(5),
      R => \cnt_reg_wr[7]_i_1_n_0\
    );
\cnt_reg_wr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^w_done\,
      D => p_0_in(6),
      Q => cnt_reg_wr_reg(6),
      R => \cnt_reg_wr[7]_i_1_n_0\
    );
\cnt_reg_wr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^w_done\,
      D => p_0_in(7),
      Q => cnt_reg_wr_reg(7),
      R => \cnt_reg_wr[7]_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_reg_wr_reg(6),
      I1 => cnt_reg_wr_reg(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cnt_reg_wr_reg(4),
      I1 => cnt_reg_wr_reg(5),
      I2 => cnt_reg_wr_reg(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => cnt_reg_wr_reg(2),
      I1 => cnt_reg_wr_reg(1),
      I2 => cnt_reg_wr_reg(0),
      O => \i__carry_i_3_n_0\
    );
\reg_index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => sys_rst_n,
      I1 => p_0_in_0,
      I2 => \^sccb_cfg_done_reg_0\,
      O => SR(0)
    );
\reg_index[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => \cnt_clk_reg_n_0_[0]\,
      I2 => \cnt_clk_reg_n_0_[2]\,
      I3 => \FSM_onehot_state[5]_i_2_n_0\,
      I4 => \reg_index[7]_i_4_n_0\,
      I5 => \cnt_clk_reg_n_0_[7]\,
      O => \^w_done\
    );
\reg_index[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \cnt_clk[9]_i_4_n_0\,
      I1 => \cnt_clk_reg_n_0_[8]\,
      I2 => \cnt_clk_reg_n_0_[3]\,
      I3 => \cnt_clk_reg_n_0_[9]\,
      I4 => \cnt_clk_reg_n_0_[1]\,
      O => \reg_index[7]_i_4_n_0\
    );
reg_index_reg_rep_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => \^w_done\,
      I1 => sys_rst_n,
      I2 => p_0_in_0,
      I3 => \^sccb_cfg_done_reg_0\,
      O => sys_rst_n_1
    );
reg_index_reg_rep_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000078000000"
    )
        port map (
      I0 => Q(6),
      I1 => reg_index_reg_rep,
      I2 => Q(7),
      I3 => sys_rst_n,
      I4 => p_0_in_0,
      I5 => \^sccb_cfg_done_reg_0\,
      O => ADDRARDADDR(7)
    );
reg_index_reg_rep_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(3),
      I2 => reg_index_reg_rep_0,
      I3 => Q(4),
      I4 => Q(6),
      I5 => \^sccb_cfg_done_reg_1\,
      O => ADDRARDADDR(6)
    );
reg_index_reg_rep_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => Q(4),
      I1 => reg_index_reg_rep_0,
      I2 => Q(3),
      I3 => Q(5),
      I4 => \^sccb_cfg_done_reg_1\,
      O => ADDRARDADDR(5)
    );
reg_index_reg_rep_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(4),
      I5 => \^sccb_cfg_done_reg_1\,
      O => ADDRARDADDR(4)
    );
reg_index_reg_rep_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => \^sccb_cfg_done_reg_1\,
      O => ADDRARDADDR(3)
    );
reg_index_reg_rep_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006A000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => sys_rst_n,
      I4 => p_0_in_0,
      I5 => \^sccb_cfg_done_reg_0\,
      O => ADDRARDADDR(2)
    );
reg_index_reg_rep_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => sys_rst_n,
      I3 => p_0_in_0,
      I4 => \^sccb_cfg_done_reg_0\,
      O => ADDRARDADDR(1)
    );
reg_index_reg_rep_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => D(0),
      I1 => sys_rst_n,
      I2 => p_0_in_0,
      I3 => \^sccb_cfg_done_reg_0\,
      O => ADDRARDADDR(0)
    );
sccb_cfg_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_reg_wr0_inferred__0/i__carry_n_1\,
      I1 => \^w_done\,
      I2 => \^sccb_cfg_done_reg_0\,
      O => sccb_cfg_done_i_1_n_0
    );
sccb_cfg_done_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sccb_cfg_done_i_1_n_0,
      Q => \^sccb_cfg_done_reg_0\,
      R => \^sys_rst_n_0\
    );
sccb_data_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda_out_reg_n_0,
      I1 => sccb_data_INST_0_i_1_n_0,
      O => sccb_data
    );
sccb_data_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[0]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \cnt_bit_reg_n_0_[2]\,
      I3 => \cnt_bit_reg_n_0_[3]\,
      I4 => sck_i_5_n_0,
      O => sccb_data_INST_0_i_1_n_0
    );
sck_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => \^sys_rst_n_0\
    );
sck_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[6]\,
      I1 => \cnt_clk_reg_n_0_[5]\,
      I2 => \cnt_clk_reg_n_0_[3]\,
      I3 => \cnt_clk_reg_n_0_[4]\,
      O => sck_i_10_n_0
    );
sck_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => sck_i_3_n_0,
      I1 => sck_i_4_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => sck_i_5_n_0,
      I5 => \^sccb_clk\,
      O => sck_i_2_n_0
    );
sck_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFBF3AA0FBB33"
    )
        port map (
      I0 => sck_i_6_n_0,
      I1 => \^sccb_clk\,
      I2 => \FSM_onehot_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[8]\,
      I4 => sck_i_5_n_0,
      I5 => sck_i_7_n_0,
      O => sck_i_3_n_0
    );
sck_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202020202AA"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[2]\,
      I1 => \cnt_clk[9]_i_4_n_0\,
      I2 => sck_i_8_n_0,
      I3 => \reg_index[7]_i_4_n_0\,
      I4 => \cnt_clk_reg_n_0_[7]\,
      I5 => \cnt_clk_reg_n_0_[0]\,
      O => sck_i_4_n_0
    );
sck_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => p_0_in4_in,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => p_2_in,
      O => sck_i_5_n_0
    );
sck_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F1FFFF"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[3]\,
      I1 => \cnt_clk[9]_i_3_n_0\,
      I2 => \cnt_clk[9]_i_4_n_0\,
      I3 => \cnt_clk_reg_n_0_[7]\,
      I4 => \cnt_clk_reg_n_0_[8]\,
      I5 => \cnt_clk_reg_n_0_[9]\,
      O => sck_i_6_n_0
    );
sck_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEAAAAA"
    )
        port map (
      I0 => sck_i_9_n_0,
      I1 => \cnt_clk_reg_n_0_[2]\,
      I2 => \cnt_clk_reg_n_0_[0]\,
      I3 => \cnt_clk_reg_n_0_[1]\,
      I4 => sck_i_10_n_0,
      O => sck_i_7_n_0
    );
sck_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[9]\,
      I1 => \cnt_clk_reg_n_0_[8]\,
      I2 => \cnt_clk_reg_n_0_[7]\,
      I3 => \cnt_clk_reg_n_0_[3]\,
      I4 => \cnt_clk_reg_n_0_[1]\,
      I5 => \cnt_clk_reg_n_0_[0]\,
      O => sck_i_8_n_0
    );
sck_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \cnt_clk_reg_n_0_[7]\,
      I1 => \cnt_clk_reg_n_0_[8]\,
      I2 => \cnt_clk_reg_n_0_[9]\,
      O => sck_i_9_n_0
    );
sck_reg: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => '1',
      D => sck_i_2_n_0,
      Q => \^sccb_clk\,
      S => \^sys_rst_n_0\
    );
sda_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[3]\,
      I1 => sda_out_reg_i_2_n_0,
      I2 => p_0_in4_in,
      I3 => sda_out_i_3_n_0,
      I4 => sda_out_i_4_n_0,
      I5 => sda_out_i_5_n_0,
      O => sda_out
    );
sda_out_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => DOADO(14),
      I1 => DOADO(13),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => DOADO(12),
      I5 => DOADO(11),
      O => sda_out_i_10_n_0
    );
sda_out_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCA00CA0"
    )
        port map (
      I0 => DOBDO(0),
      I1 => DOPADOP(1),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => DOPADOP(0),
      O => sda_out_i_11_n_0
    );
sda_out_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => DOBDO(4),
      I1 => DOBDO(3),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => DOBDO(2),
      I5 => DOBDO(1),
      O => sda_out_i_12_n_0
    );
sda_out_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2228"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \cnt_bit_reg_n_0_[2]\,
      I2 => \cnt_bit_reg_n_0_[1]\,
      I3 => \cnt_bit_reg_n_0_[0]\,
      I4 => \cnt_bit_reg_n_0_[3]\,
      O => sda_out_i_13_n_0
    );
sda_out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAC0000"
    )
        port map (
      I0 => sda_out_i_9_n_0,
      I1 => sda_out_i_10_n_0,
      I2 => sda_out_i_6_n_0,
      I3 => \cnt_bit_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => sda_out_i_3_n_0
    );
sda_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAC0000"
    )
        port map (
      I0 => sda_out_i_11_n_0,
      I1 => sda_out_i_12_n_0,
      I2 => sda_out_i_6_n_0,
      I3 => \cnt_bit_reg_n_0_[3]\,
      I4 => p_2_in,
      O => sda_out_i_4_n_0
    );
sda_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4744FFFFF7F4"
    )
        port map (
      I0 => sck_i_6_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state_reg_n_0_[8]\,
      I3 => sck_i_5_n_0,
      I4 => sda_out_i_13_n_0,
      I5 => sck_i_7_n_0,
      O => sda_out_i_5_n_0
    );
sda_out_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[2]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \cnt_bit_reg_n_0_[0]\,
      O => sda_out_i_6_n_0
    );
sda_out_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => DOADO(6),
      I1 => DOADO(5),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => DOADO(4),
      I5 => DOADO(3),
      O => sda_out_i_7_n_0
    );
sda_out_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => DOADO(2),
      I1 => DOADO(1),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => DOADO(0),
      I5 => DOADO(7),
      O => sda_out_i_8_n_0
    );
sda_out_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => DOADO(10),
      I1 => DOADO(9),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => \cnt_bit_reg_n_0_[1]\,
      I4 => DOADO(8),
      I5 => DOADO(15),
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
sda_out_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_out_i_7_n_0,
      I1 => sda_out_i_8_n_0,
      O => sda_out_reg_i_2_n_0,
      S => sda_out_i_6_n_0
    );
w_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^sccb_cfg_done_reg_0\,
      I1 => p_0_in_0,
      I2 => sys_rst_n,
      O => \^sccb_cfg_done_reg_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov5640_cfg_top is
  port (
    sccb_cfg_done_reg : out STD_LOGIC;
    sccb_data : out STD_LOGIC;
    sccb_clk : out STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov5640_cfg_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov5640_cfg_top is
  signal data0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal data7 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal reg_index : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg_index[0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_index[7]_i_5_n_0\ : STD_LOGIC;
  signal reg_index_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_index_reg_rep_i_10_n_0 : STD_LOGIC;
  signal reg_index_reg_rep_n_1 : STD_LOGIC;
  signal reg_index_reg_rep_n_10 : STD_LOGIC;
  signal reg_index_reg_rep_n_11 : STD_LOGIC;
  signal reg_index_reg_rep_n_12 : STD_LOGIC;
  signal reg_index_reg_rep_n_13 : STD_LOGIC;
  signal reg_index_reg_rep_n_14 : STD_LOGIC;
  signal reg_index_reg_rep_n_15 : STD_LOGIC;
  signal reg_index_reg_rep_n_2 : STD_LOGIC;
  signal reg_index_reg_rep_n_3 : STD_LOGIC;
  signal reg_index_reg_rep_n_4 : STD_LOGIC;
  signal reg_index_reg_rep_n_5 : STD_LOGIC;
  signal reg_index_reg_rep_n_6 : STD_LOGIC;
  signal reg_index_reg_rep_n_7 : STD_LOGIC;
  signal reg_index_reg_rep_n_8 : STD_LOGIC;
  signal reg_index_reg_rep_n_9 : STD_LOGIC;
  signal \rst_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \rst_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \rst_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal u_sccb_protocol_n_0 : STD_LOGIC;
  signal u_sccb_protocol_n_10 : STD_LOGIC;
  signal u_sccb_protocol_n_11 : STD_LOGIC;
  signal u_sccb_protocol_n_12 : STD_LOGIC;
  signal u_sccb_protocol_n_13 : STD_LOGIC;
  signal u_sccb_protocol_n_15 : STD_LOGIC;
  signal u_sccb_protocol_n_3 : STD_LOGIC;
  signal u_sccb_protocol_n_5 : STD_LOGIC;
  signal u_sccb_protocol_n_6 : STD_LOGIC;
  signal u_sccb_protocol_n_7 : STD_LOGIC;
  signal u_sccb_protocol_n_8 : STD_LOGIC;
  signal u_sccb_protocol_n_9 : STD_LOGIC;
  signal w_done : STD_LOGIC;
  signal w_en : STD_LOGIC;
  signal NLW_reg_index_reg_rep_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal NLW_reg_index_reg_rep_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_index[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_index[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_index[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_index[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_index[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_index[7]_i_5\ : label is "soft_lutpair23";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of reg_index_reg_rep : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of reg_index_reg_rep : label is "p0_d5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of reg_index_reg_rep : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of reg_index_reg_rep : label is 5888;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of reg_index_reg_rep : label is "inst/reg_index";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of reg_index_reg_rep : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of reg_index_reg_rep : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of reg_index_reg_rep : label is 256;
  attribute ram_ext_slice_begin : integer;
  attribute ram_ext_slice_begin of reg_index_reg_rep : label is 18;
  attribute ram_ext_slice_end : integer;
  attribute ram_ext_slice_end of reg_index_reg_rep : label is 22;
  attribute ram_offset : integer;
  attribute ram_offset of reg_index_reg_rep : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of reg_index_reg_rep : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of reg_index_reg_rep : label is 17;
  attribute SOFT_HLUTNM of \rst_cnt[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rst_cnt[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rst_cnt[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rst_cnt[5]_i_2\ : label is "soft_lutpair22";
begin
\reg_index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => \reg_index[0]_i_2_n_0\,
      I1 => reg_index(1),
      I2 => reg_index(7),
      I3 => reg_index(5),
      I4 => reg_index(0),
      O => reg_index_1(0)
    );
\reg_index[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => reg_index(6),
      I1 => reg_index(3),
      I2 => reg_index(4),
      I3 => reg_index(2),
      O => \reg_index[0]_i_2_n_0\
    );
\reg_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_index(1),
      I1 => reg_index(0),
      O => reg_index_1(1)
    );
\reg_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => reg_index(1),
      I1 => reg_index(0),
      I2 => reg_index(2),
      O => reg_index_1(2)
    );
\reg_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => reg_index(3),
      I1 => reg_index(1),
      I2 => reg_index(0),
      I3 => reg_index(2),
      O => reg_index_1(3)
    );
\reg_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => reg_index(4),
      I1 => reg_index(2),
      I2 => reg_index(0),
      I3 => reg_index(1),
      I4 => reg_index(3),
      O => reg_index_1(4)
    );
\reg_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => reg_index(5),
      I1 => reg_index(3),
      I2 => reg_index(1),
      I3 => reg_index(0),
      I4 => reg_index(2),
      I5 => reg_index(4),
      O => reg_index_1(5)
    );
\reg_index[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => reg_index(6),
      I1 => reg_index(4),
      I2 => \reg_index[7]_i_5_n_0\,
      I3 => reg_index(3),
      I4 => reg_index(5),
      O => reg_index_1(6)
    );
\reg_index[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => reg_index(7),
      I1 => reg_index(5),
      I2 => reg_index(3),
      I3 => \reg_index[7]_i_5_n_0\,
      I4 => reg_index(4),
      I5 => reg_index(6),
      O => reg_index_1(7)
    );
\reg_index[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => reg_index(2),
      I1 => reg_index(0),
      I2 => reg_index(1),
      O => \reg_index[7]_i_5_n_0\
    );
\reg_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => w_done,
      D => reg_index_1(0),
      Q => reg_index(0),
      R => u_sccb_protocol_n_15
    );
\reg_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => w_done,
      D => reg_index_1(1),
      Q => reg_index(1),
      R => u_sccb_protocol_n_15
    );
\reg_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => w_done,
      D => reg_index_1(2),
      Q => reg_index(2),
      R => u_sccb_protocol_n_15
    );
\reg_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => w_done,
      D => reg_index_1(3),
      Q => reg_index(3),
      R => u_sccb_protocol_n_15
    );
\reg_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => w_done,
      D => reg_index_1(4),
      Q => reg_index(4),
      R => u_sccb_protocol_n_15
    );
\reg_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => w_done,
      D => reg_index_1(5),
      Q => reg_index(5),
      R => u_sccb_protocol_n_15
    );
\reg_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => w_done,
      D => reg_index_1(6),
      Q => reg_index(6),
      R => u_sccb_protocol_n_15
    );
\reg_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => w_done,
      D => reg_index_1(7),
      Q => reg_index(7),
      R => u_sccb_protocol_n_15
    );
reg_index_reg_rep: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000AAA03000C000002AAAF8AD5FFFAA90041",
      INITP_01 => X"001028C0AAFA0000000000000FFFFFF1557FFFFF000000001555555555555555",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"035A04A021E0331232E2310E303608013713341A18FF17FF0303084208820311",
      INIT_01 => X"180013431C501B2020522D60013300083112010A06100502051A0B6017011578",
      INIT_02 => X"111010000B400A9C091C080007080600059804280134220134403603351319F8",
      INIT_03 => X"1E261B3010280F3000A70E001F0100612E000E5804FF0000051A010208641200",
      INIT_04 => X"0D030C080B0D0A08090508050708060C05260412030F020F011400231F141160",
      INIT_05 => X"1D0E1C081B061A051908180D170816031501140013031207110910030F000E00",
      INIT_06 => X"2D242C242B222A2429262864272626082526244623282215211120111F171E29",
      INIT_07 => X"3DCE3C423B283A2639243844372636223522342433263224314230402F222E06",
      INIT_08 => X"8F568E3D8D428CB28BE08A5489758809870986098524842583908211815880FF",
      INIT_09 => X"80019E009D829C069B009A04991298049702960395F094F093F0920091FF9046",
      INIT_0A => X"901D8FEA8EDD8DCD8CB88BAA8A9A89918887877D867185658451832882148108",
      INIT_0B => X"8A0089108410834080068B988A018910886C877C8688857E840A8308825B811E",
      INIT_0C => X"080225000C060B040A300908071606080530040803000210013000081D408BF8",
      INIT_0D => X"080207A90606053F040A03FA0200010000001531143121012040070736693541",
      INIT_0E => X"1510141703E002170C0309521229180013040FE40E020D640C070BE00A010980",
      INIT_0F => X"0000000000000000000003000183240237160C200B370704130306C3021C0402",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"000D000D000D000D000D000D000D000C000C000C000C000C000C000C000C000C",
      INIT_21 => X"000E000E0011000D000D000C000D000D000D000E000E000E000D000D000D000D",
      INIT_22 => X"000E000E000F000F000F000F000F000F000F000F000F000D000D000D000D000E",
      INIT_23 => X"000E000E000E000E0014001100140010000C000C000C000C00100010000D000E",
      INIT_24 => X"00160016001600160016001600160016001600160016001600160016000E000E",
      INIT_25 => X"0016001600160016001600160016001600160016001600160016001600160016",
      INIT_26 => X"0016001600160016001600160016001600160016001600160016001600160016",
      INIT_27 => X"0016001600160016001600160016001600160016001600160016001600160016",
      INIT_28 => X"0014001400140014001400140014001400140014001400140014001400140014",
      INIT_29 => X"0015001400140014001400140014001400140014001400140014001400140014",
      INIT_2A => X"0015001500150015001500150015001500150015001500150015001500150015",
      INIT_2B => X"0015001500150015001500140014001400140014001400140014001400140014",
      INIT_2C => X"000C001400140014001400140014001400140014001400140014001400140015",
      INIT_2D => X"000E000E000E000E000E000E000E000E000E000E000E000E000E000F000C000C",
      INIT_2E => X"000E000E000E000E000D000D000D000D000E000E000E000E000E000E000E000E",
      INIT_2F => X"00000000000000000000000D0014000E00120011001100110011000C000C0010",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11) => u_sccb_protocol_n_5,
      ADDRARDADDR(10) => u_sccb_protocol_n_6,
      ADDRARDADDR(9) => u_sccb_protocol_n_7,
      ADDRARDADDR(8) => u_sccb_protocol_n_8,
      ADDRARDADDR(7) => u_sccb_protocol_n_9,
      ADDRARDADDR(6) => u_sccb_protocol_n_10,
      ADDRARDADDR(5) => u_sccb_protocol_n_11,
      ADDRARDADDR(4) => u_sccb_protocol_n_12,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"10",
      ADDRBWRADDR(11) => u_sccb_protocol_n_5,
      ADDRBWRADDR(10) => u_sccb_protocol_n_6,
      ADDRBWRADDR(9) => u_sccb_protocol_n_7,
      ADDRBWRADDR(8) => u_sccb_protocol_n_8,
      ADDRBWRADDR(7) => u_sccb_protocol_n_9,
      ADDRBWRADDR(6) => u_sccb_protocol_n_10,
      ADDRBWRADDR(5) => u_sccb_protocol_n_11,
      ADDRBWRADDR(4) => u_sccb_protocol_n_12,
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => sys_clk,
      CLKBWRCLK => sys_clk,
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15) => data0,
      DOADO(14) => reg_index_reg_rep_n_1,
      DOADO(13) => reg_index_reg_rep_n_2,
      DOADO(12) => reg_index_reg_rep_n_3,
      DOADO(11) => reg_index_reg_rep_n_4,
      DOADO(10) => reg_index_reg_rep_n_5,
      DOADO(9) => reg_index_reg_rep_n_6,
      DOADO(8) => reg_index_reg_rep_n_7,
      DOADO(7) => reg_index_reg_rep_n_8,
      DOADO(6) => reg_index_reg_rep_n_9,
      DOADO(5) => reg_index_reg_rep_n_10,
      DOADO(4) => reg_index_reg_rep_n_11,
      DOADO(3) => reg_index_reg_rep_n_12,
      DOADO(2) => reg_index_reg_rep_n_13,
      DOADO(1) => reg_index_reg_rep_n_14,
      DOADO(0) => reg_index_reg_rep_n_15,
      DOBDO(15 downto 5) => NLW_reg_index_reg_rep_DOBDO_UNCONNECTED(15 downto 5),
      DOBDO(4) => data7,
      DOBDO(3) => data6,
      DOBDO(2) => data5,
      DOBDO(1) => data4,
      DOBDO(0) => data3,
      DOPADOP(1) => data2,
      DOPADOP(0) => data1,
      DOPBDOP(1 downto 0) => NLW_reg_index_reg_rep_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => u_sccb_protocol_n_3,
      ENBWREN => u_sccb_protocol_n_3,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
reg_index_reg_rep_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => reg_index(5),
      I1 => reg_index(3),
      I2 => reg_index(1),
      I3 => reg_index(0),
      I4 => reg_index(2),
      I5 => reg_index(4),
      O => reg_index_reg_rep_i_10_n_0
    );
\rst_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \rst_cnt_reg_n_0_[0]\,
      O => \rst_cnt[0]_i_1_n_0\
    );
\rst_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => sys_rst_n,
      I1 => \rst_cnt_reg_n_0_[0]\,
      I2 => p_0_in_0,
      I3 => \rst_cnt_reg_n_0_[1]\,
      O => \rst_cnt[1]_i_1_n_0\
    );
\rst_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[2]\,
      I1 => \rst_cnt_reg_n_0_[1]\,
      I2 => p_0_in_0,
      I3 => \rst_cnt_reg_n_0_[0]\,
      O => \rst_cnt[2]_i_1_n_0\
    );
\rst_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[3]\,
      I1 => p_0_in_0,
      I2 => \rst_cnt_reg_n_0_[0]\,
      I3 => \rst_cnt_reg_n_0_[1]\,
      I4 => \rst_cnt_reg_n_0_[2]\,
      O => \rst_cnt[3]_i_1_n_0\
    );
\rst_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[4]\,
      I1 => \rst_cnt_reg_n_0_[3]\,
      I2 => \rst_cnt_reg_n_0_[2]\,
      I3 => \rst_cnt_reg_n_0_[1]\,
      I4 => \rst_cnt_reg_n_0_[0]\,
      I5 => p_0_in_0,
      O => \rst_cnt[4]_i_1_n_0\
    );
\rst_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[5]\,
      I1 => \rst_cnt_reg_n_0_[4]\,
      I2 => \rst_cnt[5]_i_2_n_0\,
      I3 => \rst_cnt_reg_n_0_[1]\,
      I4 => \rst_cnt_reg_n_0_[2]\,
      I5 => \rst_cnt_reg_n_0_[3]\,
      O => \rst_cnt[5]_i_1_n_0\
    );
\rst_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \rst_cnt_reg_n_0_[0]\,
      O => \rst_cnt[5]_i_2_n_0\
    );
\rst_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[6]\,
      I1 => \rst_cnt[7]_i_2_n_0\,
      I2 => \rst_cnt_reg_n_0_[5]\,
      O => \rst_cnt[6]_i_1_n_0\
    );
\rst_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF400000"
    )
        port map (
      I0 => \rst_cnt[7]_i_2_n_0\,
      I1 => \rst_cnt_reg_n_0_[5]\,
      I2 => \rst_cnt_reg_n_0_[6]\,
      I3 => \rst_cnt_reg_n_0_[7]\,
      I4 => sys_rst_n,
      O => \rst_cnt[7]_i_1_n_0\
    );
\rst_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[3]\,
      I1 => \rst_cnt_reg_n_0_[2]\,
      I2 => \rst_cnt_reg_n_0_[1]\,
      I3 => \rst_cnt_reg_n_0_[0]\,
      I4 => p_0_in_0,
      I5 => \rst_cnt_reg_n_0_[4]\,
      O => \rst_cnt[7]_i_2_n_0\
    );
\rst_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \rst_cnt[8]_i_2_n_0\,
      I2 => \rst_cnt_reg_n_0_[6]\,
      I3 => \rst_cnt_reg_n_0_[0]\,
      I4 => \rst_cnt_reg_n_0_[5]\,
      I5 => \rst_cnt_reg_n_0_[3]\,
      O => \rst_cnt[8]_i_1_n_0\
    );
\rst_cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[2]\,
      I1 => \rst_cnt_reg_n_0_[1]\,
      I2 => \rst_cnt_reg_n_0_[7]\,
      I3 => \rst_cnt_reg_n_0_[4]\,
      O => \rst_cnt[8]_i_2_n_0\
    );
\rst_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rst_cnt[0]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[0]\,
      R => u_sccb_protocol_n_0
    );
\rst_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rst_cnt[1]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[1]\,
      R => '0'
    );
\rst_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rst_cnt[2]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[2]\,
      R => u_sccb_protocol_n_0
    );
\rst_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rst_cnt[3]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[3]\,
      R => u_sccb_protocol_n_0
    );
\rst_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rst_cnt[4]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[4]\,
      R => u_sccb_protocol_n_0
    );
\rst_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rst_cnt[5]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[5]\,
      R => u_sccb_protocol_n_0
    );
\rst_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rst_cnt[6]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[6]\,
      R => u_sccb_protocol_n_0
    );
\rst_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rst_cnt[7]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[7]\,
      R => '0'
    );
\rst_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \rst_cnt[8]_i_1_n_0\,
      Q => p_0_in_0,
      R => u_sccb_protocol_n_0
    );
u_sccb_protocol: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sccb_protocol
     port map (
      ADDRARDADDR(7) => u_sccb_protocol_n_5,
      ADDRARDADDR(6) => u_sccb_protocol_n_6,
      ADDRARDADDR(5) => u_sccb_protocol_n_7,
      ADDRARDADDR(4) => u_sccb_protocol_n_8,
      ADDRARDADDR(3) => u_sccb_protocol_n_9,
      ADDRARDADDR(2) => u_sccb_protocol_n_10,
      ADDRARDADDR(1) => u_sccb_protocol_n_11,
      ADDRARDADDR(0) => u_sccb_protocol_n_12,
      D(0) => reg_index_1(0),
      DOADO(15) => data0,
      DOADO(14) => reg_index_reg_rep_n_1,
      DOADO(13) => reg_index_reg_rep_n_2,
      DOADO(12) => reg_index_reg_rep_n_3,
      DOADO(11) => reg_index_reg_rep_n_4,
      DOADO(10) => reg_index_reg_rep_n_5,
      DOADO(9) => reg_index_reg_rep_n_6,
      DOADO(8) => reg_index_reg_rep_n_7,
      DOADO(7) => reg_index_reg_rep_n_8,
      DOADO(6) => reg_index_reg_rep_n_9,
      DOADO(5) => reg_index_reg_rep_n_10,
      DOADO(4) => reg_index_reg_rep_n_11,
      DOADO(3) => reg_index_reg_rep_n_12,
      DOADO(2) => reg_index_reg_rep_n_13,
      DOADO(1) => reg_index_reg_rep_n_14,
      DOADO(0) => reg_index_reg_rep_n_15,
      DOBDO(4) => data7,
      DOBDO(3) => data6,
      DOBDO(2) => data5,
      DOBDO(1) => data4,
      DOBDO(0) => data3,
      DOPADOP(1) => data2,
      DOPADOP(0) => data1,
      Q(7 downto 0) => reg_index(7 downto 0),
      SR(0) => u_sccb_protocol_n_15,
      p_0_in_0 => p_0_in_0,
      reg_index_reg_rep => reg_index_reg_rep_i_10_n_0,
      reg_index_reg_rep_0 => \reg_index[7]_i_5_n_0\,
      sccb_cfg_done_reg_0 => sccb_cfg_done_reg,
      sccb_cfg_done_reg_1 => u_sccb_protocol_n_13,
      sccb_clk => sccb_clk,
      sccb_data => sccb_data,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n,
      sys_rst_n_0 => u_sccb_protocol_n_0,
      sys_rst_n_1 => u_sccb_protocol_n_3,
      w_done => w_done,
      w_en => w_en
    );
w_en_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => u_sccb_protocol_n_13,
      Q => w_en,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    sccb_clk : out STD_LOGIC;
    sccb_data : inout STD_LOGIC;
    sccb_cfg_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ov5640_cfg_top_0_0,ov5640_cfg_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ov5640_cfg_top,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sccb_clk : signal is "xilinx.com:signal:clock:1.0 sccb_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sccb_clk : signal is "XIL_INTERFACENAME sccb_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ov5640_cfg_top_0_0_sccb_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ov5640_cfg_top
     port map (
      sccb_cfg_done_reg => sccb_cfg_done,
      sccb_clk => sccb_clk,
      sccb_data => sccb_data,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
end STRUCTURE;
