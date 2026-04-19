-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr 19 11:47:14 2026
-- Host        : HC-202510241838 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGA_Project/2020_2/CNN/proj/4_cam_vdma_hdmi/vmda_HDMI_cam/vmda_test.srcs/sources_1/bd/design_1/ip/design_1_data_gen_0_0/design_1_data_gen_0_0_stub.vhdl
-- Design      : design_1_data_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_data_gen_0_0 is
  Port ( 
    data_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    de : in STD_LOGIC;
    data_r_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_g_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_b_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_data_gen_0_0;

architecture stub of design_1_data_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_i[23:0],de,data_r_o[7:0],data_g_o[7:0],data_b_o[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_gen,Vivado 2020.2";
begin
end;
