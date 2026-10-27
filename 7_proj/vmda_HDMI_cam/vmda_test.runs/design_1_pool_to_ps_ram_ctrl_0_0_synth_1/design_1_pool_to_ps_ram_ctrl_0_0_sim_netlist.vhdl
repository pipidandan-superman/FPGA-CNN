-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Oct 26 11:09:26 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pool_to_ps_ram_ctrl_0_0_sim_netlist.vhdl
-- Design      : design_1_pool_to_ps_ram_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pool_to_ps_ram_ctrl is
  port (
    ps_intr : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    pool_ch : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pool_valid : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pool_to_ps_ram_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pool_to_ps_ram_ctrl is
  signal \bram_addr[11]_INST_0_n_1\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_n_2\ : STD_LOGIC;
  signal \bram_addr[11]_INST_0_n_3\ : STD_LOGIC;
  signal \bram_addr[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \bram_addr[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \bram_addr[4]_INST_0_n_0\ : STD_LOGIC;
  signal \bram_addr[4]_INST_0_n_1\ : STD_LOGIC;
  signal \bram_addr[4]_INST_0_n_2\ : STD_LOGIC;
  signal \bram_addr[4]_INST_0_n_3\ : STD_LOGIC;
  signal \bram_addr[7]_INST_0_n_0\ : STD_LOGIC;
  signal \bram_addr[7]_INST_0_n_1\ : STD_LOGIC;
  signal \bram_addr[7]_INST_0_n_2\ : STD_LOGIC;
  signal \bram_addr[7]_INST_0_n_3\ : STD_LOGIC;
  signal logic_addr0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \logic_addr0__26_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_n_1\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_n_2\ : STD_LOGIC;
  signal \logic_addr0__26_carry__0_n_3\ : STD_LOGIC;
  signal \logic_addr0__26_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry__1_n_3\ : STD_LOGIC;
  signal \logic_addr0__26_carry_i_1_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry_i_2_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry_i_3_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry_i_4_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry_i_5_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry_i_6_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry_i_7_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry_n_0\ : STD_LOGIC;
  signal \logic_addr0__26_carry_n_1\ : STD_LOGIC;
  signal \logic_addr0__26_carry_n_2\ : STD_LOGIC;
  signal \logic_addr0__26_carry_n_3\ : STD_LOGIC;
  signal \logic_addr0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \logic_addr0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \logic_addr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \logic_addr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \logic_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \logic_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \logic_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \logic_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \logic_addr0_carry__0_n_4\ : STD_LOGIC;
  signal \logic_addr0_carry__0_n_5\ : STD_LOGIC;
  signal \logic_addr0_carry__0_n_6\ : STD_LOGIC;
  signal \logic_addr0_carry__0_n_7\ : STD_LOGIC;
  signal \logic_addr0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \logic_addr0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \logic_addr0_carry__1_n_1\ : STD_LOGIC;
  signal \logic_addr0_carry__1_n_3\ : STD_LOGIC;
  signal \logic_addr0_carry__1_n_6\ : STD_LOGIC;
  signal \logic_addr0_carry__1_n_7\ : STD_LOGIC;
  signal logic_addr0_carry_i_1_n_0 : STD_LOGIC;
  signal logic_addr0_carry_i_2_n_0 : STD_LOGIC;
  signal logic_addr0_carry_i_3_n_0 : STD_LOGIC;
  signal logic_addr0_carry_n_0 : STD_LOGIC;
  signal logic_addr0_carry_n_1 : STD_LOGIC;
  signal logic_addr0_carry_n_2 : STD_LOGIC;
  signal logic_addr0_carry_n_3 : STD_LOGIC;
  signal logic_addr0_carry_n_4 : STD_LOGIC;
  signal logic_addr0_carry_n_5 : STD_LOGIC;
  signal pixel_ptr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pixel_ptr0 : STD_LOGIC;
  signal \pixel_ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_ptr[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel_ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel_ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel_ptr_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel_ptr_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel_ptr_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel_ptr_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel_ptr_reg_n_0_[7]\ : STD_LOGIC;
  signal ps_intr0 : STD_LOGIC;
  signal ps_intr_i_2_n_0 : STD_LOGIC;
  signal ps_intr_i_3_n_0 : STD_LOGIC;
  signal \NLW_bram_addr[11]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_bram_addr[4]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_logic_addr0__26_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_logic_addr0__26_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_logic_addr0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_logic_addr0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bram_addr[11]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \bram_addr[4]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \bram_addr[7]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \logic_addr0__26_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \logic_addr0__26_carry__0\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \logic_addr0__26_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \logic_addr0__26_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \logic_addr0__26_carry__0_i_3\ : label is "lutpair2";
  attribute HLUTNM of \logic_addr0__26_carry__0_i_4\ : label is "lutpair1";
  attribute HLUTNM of \logic_addr0__26_carry__0_i_6\ : label is "lutpair4";
  attribute HLUTNM of \logic_addr0__26_carry__0_i_7\ : label is "lutpair3";
  attribute HLUTNM of \logic_addr0__26_carry__0_i_8\ : label is "lutpair2";
  attribute ADDER_THRESHOLD of \logic_addr0__26_carry__1\ : label is 35;
  attribute HLUTNM of \logic_addr0__26_carry_i_1\ : label is "lutpair0";
  attribute HLUTNM of \logic_addr0__26_carry_i_4\ : label is "lutpair1";
  attribute HLUTNM of \logic_addr0__26_carry_i_5\ : label is "lutpair0";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pixel_ptr[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_ptr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_ptr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pixel_ptr[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixel_ptr[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ps_intr_i_3 : label is "soft_lutpair1";
begin
\bram_addr[11]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_addr[7]_INST_0_n_0\,
      CO(3) => \NLW_bram_addr[11]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \bram_addr[11]_INST_0_n_1\,
      CO(1) => \bram_addr[11]_INST_0_n_2\,
      CO(0) => \bram_addr[11]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bram_addr(11 downto 8),
      S(3 downto 0) => logic_addr0(12 downto 9)
    );
\bram_addr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => logic_addr0(1),
      I1 => pool_ch(1),
      O => bram_addr(0)
    );
\bram_addr[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bram_addr[4]_INST_0_n_0\,
      CO(2) => \bram_addr[4]_INST_0_n_1\,
      CO(1) => \bram_addr[4]_INST_0_n_2\,
      CO(0) => \bram_addr[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => logic_addr0(4 downto 1),
      O(3 downto 1) => bram_addr(3 downto 1),
      O(0) => \NLW_bram_addr[4]_INST_0_O_UNCONNECTED\(0),
      S(3) => \bram_addr[4]_INST_0_i_1_n_0\,
      S(2) => \bram_addr[4]_INST_0_i_2_n_0\,
      S(1) => \bram_addr[4]_INST_0_i_3_n_0\,
      S(0) => \bram_addr[4]_INST_0_i_4_n_0\
    );
\bram_addr[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => logic_addr0(4),
      I1 => pool_ch(4),
      O => \bram_addr[4]_INST_0_i_1_n_0\
    );
\bram_addr[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => logic_addr0(3),
      I1 => pool_ch(3),
      O => \bram_addr[4]_INST_0_i_2_n_0\
    );
\bram_addr[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => logic_addr0(2),
      I1 => pool_ch(2),
      O => \bram_addr[4]_INST_0_i_3_n_0\
    );
\bram_addr[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => logic_addr0(1),
      I1 => pool_ch(1),
      O => \bram_addr[4]_INST_0_i_4_n_0\
    );
\bram_addr[7]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_addr[4]_INST_0_n_0\,
      CO(3) => \bram_addr[7]_INST_0_n_0\,
      CO(2) => \bram_addr[7]_INST_0_n_1\,
      CO(1) => \bram_addr[7]_INST_0_n_2\,
      CO(0) => \bram_addr[7]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bram_addr(7 downto 4),
      S(3 downto 0) => logic_addr0(8 downto 5)
    );
\logic_addr0__26_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \logic_addr0__26_carry_n_0\,
      CO(2) => \logic_addr0__26_carry_n_1\,
      CO(1) => \logic_addr0__26_carry_n_2\,
      CO(0) => \logic_addr0__26_carry_n_3\,
      CYINIT => '0',
      DI(3) => \logic_addr0__26_carry_i_1_n_0\,
      DI(2) => \logic_addr0__26_carry_i_2_n_0\,
      DI(1) => \logic_addr0__26_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => logic_addr0(6 downto 3),
      S(3) => \logic_addr0__26_carry_i_4_n_0\,
      S(2) => \logic_addr0__26_carry_i_5_n_0\,
      S(1) => \logic_addr0__26_carry_i_6_n_0\,
      S(0) => \logic_addr0__26_carry_i_7_n_0\
    );
\logic_addr0__26_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \logic_addr0__26_carry_n_0\,
      CO(3) => \logic_addr0__26_carry__0_n_0\,
      CO(2) => \logic_addr0__26_carry__0_n_1\,
      CO(1) => \logic_addr0__26_carry__0_n_2\,
      CO(0) => \logic_addr0__26_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \logic_addr0__26_carry__0_i_1_n_0\,
      DI(2) => \logic_addr0__26_carry__0_i_2_n_0\,
      DI(1) => \logic_addr0__26_carry__0_i_3_n_0\,
      DI(0) => \logic_addr0__26_carry__0_i_4_n_0\,
      O(3 downto 0) => logic_addr0(10 downto 7),
      S(3) => \logic_addr0__26_carry__0_i_5_n_0\,
      S(2) => \logic_addr0__26_carry__0_i_6_n_0\,
      S(1) => \logic_addr0__26_carry__0_i_7_n_0\,
      S(0) => \logic_addr0__26_carry__0_i_8_n_0\
    );
\logic_addr0__26_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[6]\,
      I1 => \logic_addr0_carry__1_n_7\,
      I2 => \pixel_ptr_reg_n_0_[4]\,
      O => \logic_addr0__26_carry__0_i_1_n_0\
    );
\logic_addr0__26_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[5]\,
      I1 => \logic_addr0_carry__0_n_4\,
      I2 => \pixel_ptr_reg_n_0_[3]\,
      O => \logic_addr0__26_carry__0_i_2_n_0\
    );
\logic_addr0__26_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[4]\,
      I1 => \logic_addr0_carry__0_n_5\,
      I2 => \pixel_ptr_reg_n_0_[2]\,
      O => \logic_addr0__26_carry__0_i_3_n_0\
    );
\logic_addr0__26_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[3]\,
      I1 => \logic_addr0_carry__0_n_6\,
      I2 => \pixel_ptr_reg_n_0_[1]\,
      O => \logic_addr0__26_carry__0_i_4_n_0\
    );
\logic_addr0__26_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \logic_addr0__26_carry__0_i_1_n_0\,
      I1 => \pixel_ptr_reg_n_0_[5]\,
      I2 => \pixel_ptr_reg_n_0_[7]\,
      I3 => \logic_addr0_carry__1_n_6\,
      O => \logic_addr0__26_carry__0_i_5_n_0\
    );
\logic_addr0__26_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[6]\,
      I1 => \logic_addr0_carry__1_n_7\,
      I2 => \pixel_ptr_reg_n_0_[4]\,
      I3 => \logic_addr0__26_carry__0_i_2_n_0\,
      O => \logic_addr0__26_carry__0_i_6_n_0\
    );
\logic_addr0__26_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[5]\,
      I1 => \logic_addr0_carry__0_n_4\,
      I2 => \pixel_ptr_reg_n_0_[3]\,
      I3 => \logic_addr0__26_carry__0_i_3_n_0\,
      O => \logic_addr0__26_carry__0_i_7_n_0\
    );
\logic_addr0__26_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[4]\,
      I1 => \logic_addr0_carry__0_n_5\,
      I2 => \pixel_ptr_reg_n_0_[2]\,
      I3 => \logic_addr0__26_carry__0_i_4_n_0\,
      O => \logic_addr0__26_carry__0_i_8_n_0\
    );
\logic_addr0__26_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \logic_addr0__26_carry__0_n_0\,
      CO(3 downto 1) => \NLW_logic_addr0__26_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \logic_addr0__26_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \logic_addr0__26_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_logic_addr0__26_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => logic_addr0(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \logic_addr0__26_carry__1_i_2_n_0\,
      S(0) => \logic_addr0__26_carry__1_i_3_n_0\
    );
\logic_addr0__26_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[5]\,
      I1 => \pixel_ptr_reg_n_0_[7]\,
      I2 => \logic_addr0_carry__1_n_6\,
      O => \logic_addr0__26_carry__1_i_1_n_0\
    );
\logic_addr0__26_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[7]\,
      I1 => \logic_addr0_carry__1_n_1\,
      I2 => \pixel_ptr_reg_n_0_[6]\,
      O => \logic_addr0__26_carry__1_i_2_n_0\
    );
\logic_addr0__26_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B24D4DB2"
    )
        port map (
      I0 => \logic_addr0_carry__1_n_6\,
      I1 => \pixel_ptr_reg_n_0_[7]\,
      I2 => \pixel_ptr_reg_n_0_[5]\,
      I3 => \logic_addr0_carry__1_n_1\,
      I4 => \pixel_ptr_reg_n_0_[6]\,
      O => \logic_addr0__26_carry__1_i_3_n_0\
    );
\logic_addr0__26_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[2]\,
      I1 => \logic_addr0_carry__0_n_7\,
      I2 => \pixel_ptr_reg_n_0_[0]\,
      O => \logic_addr0__26_carry_i_1_n_0\
    );
\logic_addr0__26_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[0]\,
      I1 => \logic_addr0_carry__0_n_7\,
      I2 => \pixel_ptr_reg_n_0_[2]\,
      O => \logic_addr0__26_carry_i_2_n_0\
    );
\logic_addr0__26_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => logic_addr0_carry_n_5,
      I1 => \pixel_ptr_reg_n_0_[0]\,
      O => \logic_addr0__26_carry_i_3_n_0\
    );
\logic_addr0__26_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[3]\,
      I1 => \logic_addr0_carry__0_n_6\,
      I2 => \pixel_ptr_reg_n_0_[1]\,
      I3 => \logic_addr0__26_carry_i_1_n_0\,
      O => \logic_addr0__26_carry_i_4_n_0\
    );
\logic_addr0__26_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[2]\,
      I1 => \logic_addr0_carry__0_n_7\,
      I2 => \pixel_ptr_reg_n_0_[0]\,
      I3 => \pixel_ptr_reg_n_0_[1]\,
      I4 => logic_addr0_carry_n_4,
      O => \logic_addr0__26_carry_i_5_n_0\
    );
\logic_addr0__26_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[0]\,
      I1 => logic_addr0_carry_n_5,
      I2 => logic_addr0_carry_n_4,
      I3 => \pixel_ptr_reg_n_0_[1]\,
      O => \logic_addr0__26_carry_i_6_n_0\
    );
\logic_addr0__26_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[0]\,
      I1 => logic_addr0_carry_n_5,
      O => \logic_addr0__26_carry_i_7_n_0\
    );
logic_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => logic_addr0_carry_n_0,
      CO(2) => logic_addr0_carry_n_1,
      CO(1) => logic_addr0_carry_n_2,
      CO(0) => logic_addr0_carry_n_3,
      CYINIT => '0',
      DI(3) => \pixel_ptr_reg_n_0_[1]\,
      DI(2) => \pixel_ptr_reg_n_0_[0]\,
      DI(1 downto 0) => B"01",
      O(3) => logic_addr0_carry_n_4,
      O(2) => logic_addr0_carry_n_5,
      O(1 downto 0) => logic_addr0(2 downto 1),
      S(3) => logic_addr0_carry_i_1_n_0,
      S(2) => logic_addr0_carry_i_2_n_0,
      S(1) => logic_addr0_carry_i_3_n_0,
      S(0) => \pixel_ptr_reg_n_0_[0]\
    );
\logic_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => logic_addr0_carry_n_0,
      CO(3) => \logic_addr0_carry__0_n_0\,
      CO(2) => \logic_addr0_carry__0_n_1\,
      CO(1) => \logic_addr0_carry__0_n_2\,
      CO(0) => \logic_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pixel_ptr_reg_n_0_[5]\,
      DI(2) => \pixel_ptr_reg_n_0_[4]\,
      DI(1) => \pixel_ptr_reg_n_0_[3]\,
      DI(0) => \pixel_ptr_reg_n_0_[2]\,
      O(3) => \logic_addr0_carry__0_n_4\,
      O(2) => \logic_addr0_carry__0_n_5\,
      O(1) => \logic_addr0_carry__0_n_6\,
      O(0) => \logic_addr0_carry__0_n_7\,
      S(3) => \logic_addr0_carry__0_i_1_n_0\,
      S(2) => \logic_addr0_carry__0_i_2_n_0\,
      S(1) => \logic_addr0_carry__0_i_3_n_0\,
      S(0) => \logic_addr0_carry__0_i_4_n_0\
    );
\logic_addr0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[7]\,
      I1 => \pixel_ptr_reg_n_0_[5]\,
      O => \logic_addr0_carry__0_i_1_n_0\
    );
\logic_addr0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[4]\,
      I1 => \pixel_ptr_reg_n_0_[6]\,
      O => \logic_addr0_carry__0_i_2_n_0\
    );
\logic_addr0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[3]\,
      I1 => \pixel_ptr_reg_n_0_[5]\,
      O => \logic_addr0_carry__0_i_3_n_0\
    );
\logic_addr0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[2]\,
      I1 => \pixel_ptr_reg_n_0_[4]\,
      O => \logic_addr0_carry__0_i_4_n_0\
    );
\logic_addr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \logic_addr0_carry__0_n_0\,
      CO(3) => \NLW_logic_addr0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \logic_addr0_carry__1_n_1\,
      CO(1) => \NLW_logic_addr0_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \logic_addr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \pixel_ptr_reg_n_0_[7]\,
      DI(0) => \pixel_ptr_reg_n_0_[6]\,
      O(3 downto 2) => \NLW_logic_addr0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \logic_addr0_carry__1_n_6\,
      O(0) => \logic_addr0_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \logic_addr0_carry__1_i_1_n_0\,
      S(0) => \logic_addr0_carry__1_i_2_n_0\
    );
\logic_addr0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[7]\,
      O => \logic_addr0_carry__1_i_1_n_0\
    );
\logic_addr0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[6]\,
      O => \logic_addr0_carry__1_i_2_n_0\
    );
logic_addr0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[1]\,
      I1 => \pixel_ptr_reg_n_0_[3]\,
      O => logic_addr0_carry_i_1_n_0
    );
logic_addr0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[0]\,
      I1 => \pixel_ptr_reg_n_0_[2]\,
      O => logic_addr0_carry_i_2_n_0
    );
logic_addr0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[1]\,
      O => logic_addr0_carry_i_3_n_0
    );
\pixel_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[0]\,
      O => pixel_ptr(0)
    );
\pixel_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[1]\,
      I1 => \pixel_ptr_reg_n_0_[0]\,
      O => pixel_ptr(1)
    );
\pixel_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[2]\,
      I1 => \pixel_ptr_reg_n_0_[0]\,
      I2 => \pixel_ptr_reg_n_0_[1]\,
      O => \pixel_ptr[2]_i_1_n_0\
    );
\pixel_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[3]\,
      I1 => \pixel_ptr_reg_n_0_[1]\,
      I2 => \pixel_ptr_reg_n_0_[0]\,
      I3 => \pixel_ptr_reg_n_0_[2]\,
      O => pixel_ptr(3)
    );
\pixel_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0000FD"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[7]\,
      I1 => \pixel_ptr_reg_n_0_[5]\,
      I2 => \pixel_ptr_reg_n_0_[6]\,
      I3 => ps_intr_i_3_n_0,
      I4 => \pixel_ptr_reg_n_0_[4]\,
      O => pixel_ptr(4)
    );
\pixel_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[5]\,
      I1 => \pixel_ptr_reg_n_0_[4]\,
      I2 => \pixel_ptr_reg_n_0_[0]\,
      I3 => \pixel_ptr_reg_n_0_[1]\,
      I4 => \pixel_ptr_reg_n_0_[3]\,
      I5 => \pixel_ptr_reg_n_0_[2]\,
      O => \pixel_ptr[5]_i_1_n_0\
    );
\pixel_ptr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[6]\,
      I1 => ps_intr_i_3_n_0,
      I2 => \pixel_ptr_reg_n_0_[4]\,
      I3 => \pixel_ptr_reg_n_0_[5]\,
      O => pixel_ptr(6)
    );
\pixel_ptr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => pool_ch(0),
      I1 => pool_ch(2),
      I2 => pool_ch(4),
      I3 => pool_ch(3),
      I4 => pool_valid,
      I5 => pool_ch(1),
      O => pixel_ptr0
    );
\pixel_ptr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFE4000"
    )
        port map (
      I0 => ps_intr_i_3_n_0,
      I1 => \pixel_ptr_reg_n_0_[4]\,
      I2 => \pixel_ptr_reg_n_0_[5]\,
      I3 => \pixel_ptr_reg_n_0_[6]\,
      I4 => \pixel_ptr_reg_n_0_[7]\,
      O => pixel_ptr(7)
    );
\pixel_ptr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_ptr0,
      CLR => ps_intr_i_2_n_0,
      D => pixel_ptr(0),
      Q => \pixel_ptr_reg_n_0_[0]\
    );
\pixel_ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_ptr0,
      CLR => ps_intr_i_2_n_0,
      D => pixel_ptr(1),
      Q => \pixel_ptr_reg_n_0_[1]\
    );
\pixel_ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_ptr0,
      CLR => ps_intr_i_2_n_0,
      D => \pixel_ptr[2]_i_1_n_0\,
      Q => \pixel_ptr_reg_n_0_[2]\
    );
\pixel_ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_ptr0,
      CLR => ps_intr_i_2_n_0,
      D => pixel_ptr(3),
      Q => \pixel_ptr_reg_n_0_[3]\
    );
\pixel_ptr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_ptr0,
      CLR => ps_intr_i_2_n_0,
      D => pixel_ptr(4),
      Q => \pixel_ptr_reg_n_0_[4]\
    );
\pixel_ptr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_ptr0,
      CLR => ps_intr_i_2_n_0,
      D => \pixel_ptr[5]_i_1_n_0\,
      Q => \pixel_ptr_reg_n_0_[5]\
    );
\pixel_ptr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_ptr0,
      CLR => ps_intr_i_2_n_0,
      D => pixel_ptr(6),
      Q => \pixel_ptr_reg_n_0_[6]\
    );
\pixel_ptr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pixel_ptr0,
      CLR => ps_intr_i_2_n_0,
      D => pixel_ptr(7),
      Q => \pixel_ptr_reg_n_0_[7]\
    );
ps_intr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => pixel_ptr0,
      I1 => \pixel_ptr_reg_n_0_[7]\,
      I2 => \pixel_ptr_reg_n_0_[5]\,
      I3 => \pixel_ptr_reg_n_0_[6]\,
      I4 => \pixel_ptr_reg_n_0_[4]\,
      I5 => ps_intr_i_3_n_0,
      O => ps_intr0
    );
ps_intr_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => ps_intr_i_2_n_0
    );
ps_intr_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \pixel_ptr_reg_n_0_[0]\,
      I1 => \pixel_ptr_reg_n_0_[1]\,
      I2 => \pixel_ptr_reg_n_0_[3]\,
      I3 => \pixel_ptr_reg_n_0_[2]\,
      O => ps_intr_i_3_n_0
    );
ps_intr_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => ps_intr_i_2_n_0,
      D => ps_intr0,
      Q => ps_intr
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
    pool_valid : in STD_LOGIC;
    pool_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pool_ch : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bram_en : out STD_LOGIC;
    bram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ps_intr : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_pool_to_ps_ram_ctrl_0_0,pool_to_ps_ram_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pool_to_ps_ram_ctrl,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 14 downto 3 );
  signal \^pool_ch\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^pool_data\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^pool_valid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_cam_captrue_data_0_0_vid_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ps_intr : signal is "xilinx.com:signal:interrupt:1.0 ps_intr INTERRUPT";
  attribute X_INTERFACE_PARAMETER of ps_intr : signal is "XIL_INTERFACENAME ps_intr, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^pool_ch\(4 downto 0) <= pool_ch(4 downto 0);
  \^pool_data\(15 downto 0) <= pool_data(15 downto 0);
  \^pool_valid\ <= pool_valid;
  bram_addr(31) <= \<const0>\;
  bram_addr(30) <= \<const0>\;
  bram_addr(29) <= \<const0>\;
  bram_addr(28) <= \<const0>\;
  bram_addr(27) <= \<const0>\;
  bram_addr(26) <= \<const0>\;
  bram_addr(25) <= \<const0>\;
  bram_addr(24) <= \<const0>\;
  bram_addr(23) <= \<const0>\;
  bram_addr(22) <= \<const0>\;
  bram_addr(21) <= \<const0>\;
  bram_addr(20) <= \<const0>\;
  bram_addr(19) <= \<const0>\;
  bram_addr(18) <= \<const0>\;
  bram_addr(17) <= \<const0>\;
  bram_addr(16) <= \<const0>\;
  bram_addr(15) <= \<const0>\;
  bram_addr(14 downto 3) <= \^bram_addr\(14 downto 3);
  bram_addr(2) <= \^pool_ch\(0);
  bram_addr(1) <= \<const0>\;
  bram_addr(0) <= \<const0>\;
  bram_en <= \^pool_valid\;
  bram_wdata(31) <= \<const0>\;
  bram_wdata(30) <= \<const0>\;
  bram_wdata(29) <= \<const0>\;
  bram_wdata(28) <= \<const0>\;
  bram_wdata(27) <= \<const0>\;
  bram_wdata(26) <= \<const0>\;
  bram_wdata(25) <= \<const0>\;
  bram_wdata(24) <= \<const0>\;
  bram_wdata(23) <= \<const0>\;
  bram_wdata(22) <= \<const0>\;
  bram_wdata(21) <= \<const0>\;
  bram_wdata(20) <= \<const0>\;
  bram_wdata(19) <= \<const0>\;
  bram_wdata(18) <= \<const0>\;
  bram_wdata(17) <= \<const0>\;
  bram_wdata(16) <= \<const0>\;
  bram_wdata(15 downto 0) <= \^pool_data\(15 downto 0);
  bram_we(3) <= \^pool_valid\;
  bram_we(2) <= \^pool_valid\;
  bram_we(1) <= \^pool_valid\;
  bram_we(0) <= \^pool_valid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pool_to_ps_ram_ctrl
     port map (
      bram_addr(11 downto 0) => \^bram_addr\(14 downto 3),
      clk => clk,
      pool_ch(4 downto 0) => \^pool_ch\(4 downto 0),
      pool_valid => \^pool_valid\,
      ps_intr => ps_intr,
      rst_n => rst_n
    );
end STRUCTURE;
