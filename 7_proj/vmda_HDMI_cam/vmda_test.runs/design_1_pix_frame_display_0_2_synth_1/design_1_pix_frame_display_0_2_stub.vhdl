-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May  4 13:54:50 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pix_frame_display_0_2_stub.vhdl
-- Design      : design_1_pix_frame_display_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    vio_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    vio_active : in STD_LOGIC;
    vio_hsync : in STD_LOGIC;
    vio_vsync : in STD_LOGIC;
    vio_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rom_data : in STD_LOGIC;
    rom_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    rom_valid : out STD_LOGIC;
    hdmi_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    hdmi_de : out STD_LOGIC;
    hdmi_hsync : out STD_LOGIC;
    hdmi_vsync : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vio_clk,sys_rst_n,vio_active,vio_hsync,vio_vsync,vio_data[23:0],rom_data,rom_addr[13:0],rom_valid,hdmi_data[23:0],hdmi_de,hdmi_hsync,hdmi_vsync";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pix_frame_display,Vivado 2020.2";
begin
end;
