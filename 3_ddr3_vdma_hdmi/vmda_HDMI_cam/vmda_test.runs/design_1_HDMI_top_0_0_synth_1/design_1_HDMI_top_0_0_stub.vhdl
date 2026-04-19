-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Apr  5 14:57:36 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_HDMI_top_0_0_stub.vhdl
-- Design      : design_1_HDMI_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    pix_clk : in STD_LOGIC;
    pix_clk_x5 : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    h_sync : in STD_LOGIC;
    v_sync : in STD_LOGIC;
    red_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    green_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    blue_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    de : in STD_LOGIC;
    TMDS_clk_p : out STD_LOGIC;
    TMDS_clk_n : out STD_LOGIC;
    TMDS_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_en : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pix_clk,pix_clk_x5,rst_n,h_sync,v_sync,red_data[7:0],green_data[7:0],blue_data[7:0],de,TMDS_clk_p,TMDS_clk_n,TMDS_data_p[2:0],TMDS_data_n[2:0],hdmi_en";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "HDMI_top,Vivado 2020.1";
begin
end;
