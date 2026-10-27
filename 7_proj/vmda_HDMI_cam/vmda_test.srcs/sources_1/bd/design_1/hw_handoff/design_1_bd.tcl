
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# HDMI_top, cam_captrue_data, cnn_conv_5x5_layer, cnn_maxpool_2x2, data_gen, gemm_ctrl_axi_lite, gemm_top, gray_yo_bin, image_downsample, ov5640_cfg_top, pix_frame_display, pool_frame_cdc, pool_to_ps_ram_ctrl, pp_ram_ctrl, ram_ctrl_lite, rom_ctrl, vio_to_gray

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]


  # Create ports
  set TMDS_clk_n_0 [ create_bd_port -dir O -type clk TMDS_clk_n_0 ]
  set TMDS_clk_p_0 [ create_bd_port -dir O -type clk TMDS_clk_p_0 ]
  set TMDS_data_n_0 [ create_bd_port -dir O -from 2 -to 0 TMDS_data_n_0 ]
  set TMDS_data_p_0 [ create_bd_port -dir O -from 2 -to 0 TMDS_data_p_0 ]
  set cam_data_0 [ create_bd_port -dir I -from 7 -to 0 cam_data_0 ]
  set cam_href_0 [ create_bd_port -dir I cam_href_0 ]
  set cam_pclk_0 [ create_bd_port -dir I cam_pclk_0 ]
  set cam_vsync_0 [ create_bd_port -dir I cam_vsync_0 ]
  set cam_xclk_0 [ create_bd_port -dir O cam_xclk_0 ]
  set clk_in1_0 [ create_bd_port -dir I -type clk -freq_hz 50000000 clk_in1_0 ]
  set hdmi_en_0 [ create_bd_port -dir O hdmi_en_0 ]
  set sccb_cfg_done_0 [ create_bd_port -dir O sccb_cfg_done_0 ]
  set sccb_clk_0 [ create_bd_port -dir O -type clk sccb_clk_0 ]
  set sccb_data_0 [ create_bd_port -dir IO sccb_data_0 ]
  set sys_rst_n_0 [ create_bd_port -dir I -type rst sys_rst_n_0 ]

  # Create instance: HDMI_top_0, and set properties
  set block_name HDMI_top
  set block_cell_name HDMI_top_0
  if { [catch {set HDMI_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $HDMI_top_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_dma_mm2s, and set properties
  set axi_dma_mm2s [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_mm2s ]
  set_property -dict [ list \
   CONFIG.c_include_s2mm {0} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axi_mm2s_data_width {64} \
   CONFIG.c_m_axis_mm2s_tdata_width {64} \
   CONFIG.c_mm2s_burst_size {16} \
   CONFIG.c_sg_length_width {23} \
 ] $axi_dma_mm2s

  # Create instance: axi_lite_0, and set properties
  set axi_lite_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi_lite:1.0 axi_lite_0 ]

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {2} \
 ] $axi_mem_intercon

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s {1} \
   CONFIG.c_include_s2mm {1} \
   CONFIG.c_m_axis_mm2s_tdata_width {24} \
   CONFIG.c_mm2s_genlock_mode {3} \
   CONFIG.c_mm2s_linebuffer_depth {1024} \
   CONFIG.c_num_fstores {3} \
   CONFIG.c_s2mm_genlock_mode {2} \
   CONFIG.c_s2mm_linebuffer_depth {1024} \
 ] $axi_vdma_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/zero.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/one.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: blk_mem_gen_2, and set properties
  set blk_mem_gen_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_2 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/two.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_2

  # Create instance: blk_mem_gen_3, and set properties
  set blk_mem_gen_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_3 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/three.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_3

  # Create instance: blk_mem_gen_4, and set properties
  set blk_mem_gen_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_4 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/four.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_4

  # Create instance: blk_mem_gen_5, and set properties
  set blk_mem_gen_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_5 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/five.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_5

  # Create instance: blk_mem_gen_6, and set properties
  set blk_mem_gen_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_6 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/six.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_6

  # Create instance: blk_mem_gen_7, and set properties
  set blk_mem_gen_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_7 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/seven.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_7

  # Create instance: blk_mem_gen_8, and set properties
  set blk_mem_gen_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_8 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/eight.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_8

  # Create instance: blk_mem_gen_9, and set properties
  set blk_mem_gen_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_9 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../8_num_coe/nine.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {10000} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_9

  # Create instance: blk_mem_gen_10, and set properties
  set blk_mem_gen_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_10 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {1024} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_10

  # Create instance: blk_mem_gen_11, and set properties
  set blk_mem_gen_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_11 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {1024} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_11

  # Create instance: blk_mem_gen_12, and set properties
  set blk_mem_gen_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_12 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../11_python/conv_weight_200b.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {200} \
   CONFIG.Read_Width_B {200} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {200} \
   CONFIG.Write_Width_B {200} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_12

  # Create instance: blk_mem_gen_13, and set properties
  set blk_mem_gen_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_13 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../../11_python/conv_bias_16b.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_13

  # Create instance: blk_mem_gen_14, and set properties
  set blk_mem_gen_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_14 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $blk_mem_gen_14

  # Create instance: cam_captrue_data_0, and set properties
  set block_name cam_captrue_data
  set block_cell_name cam_captrue_data_0
  if { [catch {set cam_captrue_data_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cam_captrue_data_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {200.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {181.247} \
   CONFIG.CLKOUT1_PHASE_ERROR {150.621} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {129.582} \
   CONFIG.CLKOUT2_PHASE_ERROR {150.621} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {125} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {183.185} \
   CONFIG.CLKOUT3_PHASE_ERROR {150.621} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {24} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT4_JITTER {152.947} \
   CONFIG.CLKOUT4_PHASE_ERROR {150.621} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLKOUT4_USED {true} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {pclk} \
   CONFIG.CLK_OUT2_PORT {pclk_x5} \
   CONFIG.CLK_OUT3_PORT {xclk} \
   CONFIG.CLK_OUT4_PORT {clk_50m} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {25} \
   CONFIG.MMCM_CLKIN1_PERIOD {20.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {50} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {52} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {25} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {4} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.PRIM_IN_FREQ {50} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_RESET {true} \
 ] $clk_wiz_0

  # Create instance: cnn_conv_5x5_layer_0, and set properties
  set block_name cnn_conv_5x5_layer
  set block_cell_name cnn_conv_5x5_layer_0
  if { [catch {set cnn_conv_5x5_layer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cnn_conv_5x5_layer_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: cnn_maxpool_2x2_0, and set properties
  set block_name cnn_maxpool_2x2
  set block_cell_name cnn_maxpool_2x2_0
  if { [catch {set cnn_maxpool_2x2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cnn_maxpool_2x2_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_gen_0, and set properties
  set block_name data_gen
  set block_cell_name data_gen_0
  if { [catch {set data_gen_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_gen_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {8} \
   CONFIG.Enable_Reset_Synchronization {false} \
   CONFIG.Enable_Safety_Circuit {false} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {255} \
   CONFIG.Full_Threshold_Negate_Value {254} \
   CONFIG.Input_Data_Width {32} \
   CONFIG.Input_Depth {256} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {256} \
   CONFIG.Performance_Options {First_Word_Fall_Through} \
   CONFIG.Read_Data_Count_Width {8} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Write_Data_Count_Width {8} \
 ] $fifo_generator_0

  # Create instance: gemm_ctrl_0, and set properties
  set block_name gemm_ctrl_axi_lite
  set block_cell_name gemm_ctrl_0
  if { [catch {set gemm_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gemm_ctrl_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: gemm_digit_concat, and set properties
  set gemm_digit_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 gemm_digit_concat ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {28} \
   CONFIG.NUM_PORTS {2} \
 ] $gemm_digit_concat

  # Create instance: gemm_digit_zero, and set properties
  set gemm_digit_zero [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 gemm_digit_zero ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {28} \
 ] $gemm_digit_zero

  # Create instance: gemm_dma_pc, and set properties
  set gemm_dma_pc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 gemm_dma_pc ]

  # Create instance: gemm_result_debug_concat, and set properties
  set gemm_result_debug_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 gemm_result_debug_concat ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN10_WIDTH {1} \
   CONFIG.IN11_WIDTH {1} \
   CONFIG.IN12_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.IN5_WIDTH {1} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {1} \
   CONFIG.IN8_WIDTH {1} \
   CONFIG.IN9_WIDTH {1} \
   CONFIG.NUM_PORTS {13} \
 ] $gemm_result_debug_concat

  # Create instance: gemm_top_0, and set properties
  set block_name gemm_top
  set block_cell_name gemm_top_0
  if { [catch {set gemm_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gemm_top_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: gray_yo_bin_0, and set properties
  set block_name gray_yo_bin
  set block_cell_name gray_yo_bin_0
  if { [catch {set gray_yo_bin_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gray_yo_bin_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.THRESHOLD {"01011010"} \
 ] $gray_yo_bin_0

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_DATA_DEPTH {1024} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_EN_STRG_QUAL {1} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {2} \
   CONFIG.C_PROBE0_WIDTH {32} \
   CONFIG.C_PROBE1_WIDTH {13} \
   CONFIG.C_PROBE2_WIDTH {1} \
   CONFIG.C_PROBE3_WIDTH {1} \
 ] $ila_0

  # Create instance: image_downsample_0, and set properties
  set block_name image_downsample
  set block_cell_name image_downsample_0
  if { [catch {set image_downsample_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $image_downsample_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ov5640_cfg_top_0, and set properties
  set block_name ov5640_cfg_top
  set block_cell_name ov5640_cfg_top_0
  if { [catch {set ov5640_cfg_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ov5640_cfg_top_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pix_frame_display_0, and set properties
  set block_name pix_frame_display
  set block_cell_name pix_frame_display_0
  if { [catch {set pix_frame_display_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pix_frame_display_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pool_frame_cdc_0, and set properties
  set block_name pool_frame_cdc
  set block_cell_name pool_frame_cdc_0
  if { [catch {set pool_frame_cdc_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pool_frame_cdc_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pool_to_ps_ram_ctrl_0, and set properties
  set block_name pool_to_ps_ram_ctrl
  set block_cell_name pool_to_ps_ram_ctrl_0
  if { [catch {set pool_to_ps_ram_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pool_to_ps_ram_ctrl_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pp_ram_ctrl_0, and set properties
  set block_name pp_ram_ctrl
  set block_cell_name pp_ram_ctrl_0
  if { [catch {set pp_ram_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pp_ram_ctrl_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {4} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {48} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1600.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#UART 1#UART 1#unassigned#unassigned#unassigned#unassigned} \
   CONFIG.PCW_MIO_TREE_SIGNALS {unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#tx#rx#unassigned#unassigned#unassigned#unassigned} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {16 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP1 {1} \
   CONFIG.PCW_USE_S_AXI_HP2 {1} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $ps7_0_axi_periph

  # Create instance: ram_ctrl_lite_0, and set properties
  set block_name ram_ctrl_lite
  set block_cell_name ram_ctrl_lite_0
  if { [catch {set ram_ctrl_lite_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ram_ctrl_lite_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rom_ctrl_0, and set properties
  set block_name rom_ctrl
  set block_cell_name rom_ctrl_0
  if { [catch {set rom_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rom_ctrl_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_ps7_0_200M, and set properties
  set rst_ps7_0_200M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_200M ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {13} \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.2 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VFRAME_SIZE {525} \
   CONFIG.GEN_F0_VSYNC_HSTART {695} \
   CONFIG.GEN_F0_VSYNC_VEND {491} \
   CONFIG.GEN_F0_VSYNC_VSTART {489} \
   CONFIG.GEN_F1_VFRAME_SIZE {525} \
   CONFIG.GEN_F1_VSYNC_VEND {491} \
   CONFIG.GEN_F1_VSYNC_VSTART {489} \
   CONFIG.GEN_HACTIVE_SIZE {640} \
   CONFIG.GEN_HFRAME_SIZE {800} \
   CONFIG.GEN_HSYNC_END {752} \
   CONFIG.GEN_HSYNC_START {656} \
   CONFIG.GEN_VACTIVE_SIZE {480} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.VIDEO_MODE {480p} \
   CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {13} \
   CONFIG.C_HAS_ASYNC_CLK {1} \
 ] $v_vid_in_axi4s_0

  # Create instance: vio_to_gray_fixed, and set properties
  set block_name vio_to_gray
  set block_cell_name vio_to_gray_fixed
  if { [catch {set vio_to_gray_fixed [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vio_to_gray_fixed eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_14/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_dma_mm2s_M_AXIS_MM2S [get_bd_intf_pins axi_dma_mm2s/M_AXIS_MM2S] [get_bd_intf_pins gemm_top_0/s_axis_params]
  connect_bd_intf_net -intf_net axi_dma_mm2s_M_AXI_MM2S [get_bd_intf_pins axi_dma_mm2s/M_AXI_MM2S] [get_bd_intf_pins gemm_dma_pc/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_mem_intercon_M01_AXI [get_bd_intf_pins axi_mem_intercon/M01_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP1]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_mem_intercon/S01_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net gemm_dma_pc_M_AXI [get_bd_intf_pins gemm_dma_pc/M_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP2]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_vdma_0/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_lite_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins axi_dma_mm2s/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M04_AXI [get_bd_intf_pins gemm_ctrl_0/s_axi] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_vid_in_axi4s_0_video_out [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM] [get_bd_intf_pins v_vid_in_axi4s_0/video_out]

  # Create port connections
  connect_bd_net -net HDMI_top_0_TMDS_clk_n [get_bd_ports TMDS_clk_n_0] [get_bd_pins HDMI_top_0/TMDS_clk_n]
  connect_bd_net -net HDMI_top_0_TMDS_clk_p [get_bd_ports TMDS_clk_p_0] [get_bd_pins HDMI_top_0/TMDS_clk_p]
  connect_bd_net -net HDMI_top_0_TMDS_data_n [get_bd_ports TMDS_data_n_0] [get_bd_pins HDMI_top_0/TMDS_data_n]
  connect_bd_net -net HDMI_top_0_TMDS_data_p [get_bd_ports TMDS_data_p_0] [get_bd_pins HDMI_top_0/TMDS_data_p]
  connect_bd_net -net HDMI_top_0_hdmi_en [get_bd_ports hdmi_en_0] [get_bd_pins HDMI_top_0/hdmi_en]
  connect_bd_net -net Net [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net Net1 [get_bd_ports sccb_data_0] [get_bd_pins ov5640_cfg_top_0/sccb_data]
  connect_bd_net -net axi_lite_0_slv_reg0 [get_bd_pins axi_lite_0/slv_reg0]
  connect_bd_net -net axi_lite_0_slv_reg0_fifo_wren [get_bd_pins axi_lite_0/slv_reg0_fifo_wren]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins gemm_result_debug_concat/In3] [get_bd_pins rom_ctrl_0/rom_data0]
  connect_bd_net -net blk_mem_gen_10_doutb [get_bd_pins blk_mem_gen_10/doutb] [get_bd_pins pp_ram_ctrl_0/ramA_rdata]
  connect_bd_net -net blk_mem_gen_11_doutb [get_bd_pins blk_mem_gen_11/doutb] [get_bd_pins pp_ram_ctrl_0/ramB_rdata]
  connect_bd_net -net blk_mem_gen_12_douta [get_bd_pins blk_mem_gen_12/douta] [get_bd_pins cnn_conv_5x5_layer_0/rom_data]
  connect_bd_net -net blk_mem_gen_13_douta [get_bd_pins blk_mem_gen_13/douta] [get_bd_pins cnn_conv_5x5_layer_0/bias_data]
  connect_bd_net -net blk_mem_gen_1_douta [get_bd_pins blk_mem_gen_1/douta] [get_bd_pins gemm_result_debug_concat/In4] [get_bd_pins rom_ctrl_0/rom_data1]
  connect_bd_net -net blk_mem_gen_2_douta [get_bd_pins blk_mem_gen_2/douta] [get_bd_pins gemm_result_debug_concat/In5] [get_bd_pins rom_ctrl_0/rom_data2]
  connect_bd_net -net blk_mem_gen_3_douta [get_bd_pins blk_mem_gen_3/douta] [get_bd_pins gemm_result_debug_concat/In6] [get_bd_pins rom_ctrl_0/rom_data3]
  connect_bd_net -net blk_mem_gen_4_douta [get_bd_pins blk_mem_gen_4/douta] [get_bd_pins gemm_result_debug_concat/In7] [get_bd_pins rom_ctrl_0/rom_data4]
  connect_bd_net -net blk_mem_gen_5_douta [get_bd_pins blk_mem_gen_5/douta] [get_bd_pins gemm_result_debug_concat/In8] [get_bd_pins rom_ctrl_0/rom_data5]
  connect_bd_net -net blk_mem_gen_6_douta [get_bd_pins blk_mem_gen_6/douta] [get_bd_pins gemm_result_debug_concat/In9] [get_bd_pins rom_ctrl_0/rom_data6]
  connect_bd_net -net blk_mem_gen_7_douta [get_bd_pins blk_mem_gen_7/douta] [get_bd_pins gemm_result_debug_concat/In10] [get_bd_pins rom_ctrl_0/rom_data7]
  connect_bd_net -net blk_mem_gen_8_douta [get_bd_pins blk_mem_gen_8/douta] [get_bd_pins gemm_result_debug_concat/In11] [get_bd_pins rom_ctrl_0/rom_data8]
  connect_bd_net -net blk_mem_gen_9_douta [get_bd_pins blk_mem_gen_9/douta] [get_bd_pins gemm_result_debug_concat/In12] [get_bd_pins rom_ctrl_0/rom_data9]
  connect_bd_net -net cam_captrue_data_0_cam_xclk [get_bd_ports cam_xclk_0] [get_bd_pins cam_captrue_data_0/cam_xclk]
  connect_bd_net -net cam_captrue_data_0_vid_active_video [get_bd_pins cam_captrue_data_0/vid_active_video] [get_bd_pins v_vid_in_axi4s_0/vid_active_video] [get_bd_pins vio_to_gray_fixed/vid_active]
  connect_bd_net -net cam_captrue_data_0_vid_ce [get_bd_pins cam_captrue_data_0/vid_ce] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce] [get_bd_pins vio_to_gray_fixed/vid_ce]
  connect_bd_net -net cam_captrue_data_0_vid_clk [get_bd_pins blk_mem_gen_10/clka] [get_bd_pins blk_mem_gen_10/clkb] [get_bd_pins blk_mem_gen_11/clka] [get_bd_pins blk_mem_gen_11/clkb] [get_bd_pins blk_mem_gen_12/clka] [get_bd_pins blk_mem_gen_13/clka] [get_bd_pins blk_mem_gen_14/clka] [get_bd_pins cam_captrue_data_0/vid_clk] [get_bd_pins cnn_conv_5x5_layer_0/clk] [get_bd_pins cnn_maxpool_2x2_0/clk] [get_bd_pins gray_yo_bin_0/pclk] [get_bd_pins image_downsample_0/pclk] [get_bd_pins pool_frame_cdc_0/cam_clk] [get_bd_pins pool_to_ps_ram_ctrl_0/clk] [get_bd_pins pp_ram_ctrl_0/clk] [get_bd_pins ram_ctrl_lite_0/pclk] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk] [get_bd_pins vio_to_gray_fixed/pclk]
  connect_bd_net -net cam_captrue_data_0_vid_data [get_bd_pins cam_captrue_data_0/vid_data] [get_bd_pins v_vid_in_axi4s_0/vid_data] [get_bd_pins vio_to_gray_fixed/vid_data]
  connect_bd_net -net cam_captrue_data_0_vid_vsync [get_bd_pins cam_captrue_data_0/vid_vsync] [get_bd_pins v_vid_in_axi4s_0/vid_vsync] [get_bd_pins vio_to_gray_fixed/vid_vsync]
  connect_bd_net -net cam_data_0_1 [get_bd_ports cam_data_0] [get_bd_pins cam_captrue_data_0/cam_data]
  connect_bd_net -net cam_href_0_1 [get_bd_ports cam_href_0] [get_bd_pins cam_captrue_data_0/cam_href]
  connect_bd_net -net cam_pclk_0_1 [get_bd_ports cam_pclk_0] [get_bd_pins cam_captrue_data_0/cam_pclk]
  connect_bd_net -net cam_vsync_0_1 [get_bd_ports cam_vsync_0] [get_bd_pins cam_captrue_data_0/cam_vsync]
  connect_bd_net -net clk_in1_0_1 [get_bd_ports clk_in1_0] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_50m [get_bd_pins clk_wiz_0/clk_50m] [get_bd_pins ov5640_cfg_top_0/sys_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins HDMI_top_0/rst_n] [get_bd_pins cam_captrue_data_0/rst_n] [get_bd_pins clk_wiz_0/locked] [get_bd_pins cnn_conv_5x5_layer_0/rst_n] [get_bd_pins cnn_maxpool_2x2_0/rst_n] [get_bd_pins gray_yo_bin_0/rst_n] [get_bd_pins image_downsample_0/rst_n] [get_bd_pins ov5640_cfg_top_0/sys_rst_n] [get_bd_pins pix_frame_display_0/sys_rst_n] [get_bd_pins pool_frame_cdc_0/cam_rst_n] [get_bd_pins pool_to_ps_ram_ctrl_0/rst_n] [get_bd_pins pp_ram_ctrl_0/rst_n] [get_bd_pins ram_ctrl_lite_0/rst_n] [get_bd_pins rom_ctrl_0/pclk_rst] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/resetn] [get_bd_pins vio_to_gray_fixed/rst_n]
  connect_bd_net -net clk_wiz_0_pclk [get_bd_pins HDMI_top_0/pix_clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins blk_mem_gen_2/clka] [get_bd_pins blk_mem_gen_3/clka] [get_bd_pins blk_mem_gen_4/clka] [get_bd_pins blk_mem_gen_5/clka] [get_bd_pins blk_mem_gen_6/clka] [get_bd_pins blk_mem_gen_7/clka] [get_bd_pins blk_mem_gen_8/clka] [get_bd_pins blk_mem_gen_9/clka] [get_bd_pins clk_wiz_0/pclk] [get_bd_pins fifo_generator_0/rd_clk] [get_bd_pins ila_0/clk] [get_bd_pins pix_frame_display_0/vio_clk] [get_bd_pins rom_ctrl_0/pclk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net clk_wiz_0_pclk_x5 [get_bd_pins HDMI_top_0/pix_clk_x5] [get_bd_pins clk_wiz_0/pclk_x5]
  connect_bd_net -net clk_wiz_0_xclk [get_bd_pins cam_captrue_data_0/i_xclk] [get_bd_pins clk_wiz_0/xclk]
  connect_bd_net -net cnn_conv_5x5_layer_0_bias_addr [get_bd_pins blk_mem_gen_13/addra] [get_bd_pins cnn_conv_5x5_layer_0/bias_addr]
  connect_bd_net -net cnn_conv_5x5_layer_0_frame_done [get_bd_pins cnn_conv_5x5_layer_0/frame_done] [get_bd_pins pp_ram_ctrl_0/cnn_done]
  connect_bd_net -net cnn_conv_5x5_layer_0_out_ch [get_bd_pins cnn_conv_5x5_layer_0/out_ch] [get_bd_pins cnn_maxpool_2x2_0/in_ch]
  connect_bd_net -net cnn_conv_5x5_layer_0_out_data [get_bd_pins cnn_conv_5x5_layer_0/out_data] [get_bd_pins cnn_maxpool_2x2_0/in_data]
  connect_bd_net -net cnn_conv_5x5_layer_0_out_valid [get_bd_pins cnn_conv_5x5_layer_0/out_valid] [get_bd_pins cnn_maxpool_2x2_0/in_valid]
  connect_bd_net -net cnn_conv_5x5_layer_0_ram_addr [get_bd_pins cnn_conv_5x5_layer_0/ram_addr] [get_bd_pins pp_ram_ctrl_0/cnn_addr]
  connect_bd_net -net cnn_conv_5x5_layer_0_ram_en [get_bd_pins cnn_conv_5x5_layer_0/ram_en] [get_bd_pins pp_ram_ctrl_0/cnn_re]
  connect_bd_net -net cnn_conv_5x5_layer_0_rom_addr [get_bd_pins blk_mem_gen_12/addra] [get_bd_pins cnn_conv_5x5_layer_0/rom_addr]
  connect_bd_net -net cnn_maxpool_2x2_0_out_ch [get_bd_pins cnn_maxpool_2x2_0/out_ch] [get_bd_pins pool_frame_cdc_0/pool_ch] [get_bd_pins pool_to_ps_ram_ctrl_0/pool_ch]
  connect_bd_net -net cnn_maxpool_2x2_0_out_data [get_bd_pins cnn_maxpool_2x2_0/out_data] [get_bd_pins pool_frame_cdc_0/pool_data] [get_bd_pins pool_to_ps_ram_ctrl_0/pool_data]
  connect_bd_net -net cnn_maxpool_2x2_0_out_valid [get_bd_pins cnn_maxpool_2x2_0/out_valid] [get_bd_pins pool_frame_cdc_0/pool_valid] [get_bd_pins pool_to_ps_ram_ctrl_0/pool_valid]
  connect_bd_net -net data_gen_0_data_b_o [get_bd_pins HDMI_top_0/blue_data] [get_bd_pins data_gen_0/data_b_o]
  connect_bd_net -net data_gen_0_data_g_o [get_bd_pins HDMI_top_0/green_data] [get_bd_pins data_gen_0/data_g_o]
  connect_bd_net -net data_gen_0_data_r_o [get_bd_pins HDMI_top_0/red_data] [get_bd_pins data_gen_0/data_r_o]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_generator_0/dout] [get_bd_pins ila_0/probe0] [get_bd_pins rom_ctrl_0/dout]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins fifo_generator_0/empty] [get_bd_pins gemm_result_debug_concat/In0] [get_bd_pins rom_ctrl_0/empty]
  connect_bd_net -net gemm_ctrl_0_fc1_bias_base [get_bd_pins gemm_ctrl_0/fc1_bias_base] [get_bd_pins gemm_top_0/fc1_bias_base]
  connect_bd_net -net gemm_ctrl_0_fc1_requant_multiplier [get_bd_pins gemm_ctrl_0/fc1_requant_multiplier] [get_bd_pins gemm_top_0/fc1_requant_multiplier]
  connect_bd_net -net gemm_ctrl_0_fc1_requant_shift [get_bd_pins gemm_ctrl_0/fc1_requant_shift] [get_bd_pins gemm_top_0/fc1_requant_shift]
  connect_bd_net -net gemm_ctrl_0_fc1_weight_base [get_bd_pins gemm_ctrl_0/fc1_weight_base] [get_bd_pins gemm_top_0/fc1_weight_base]
  connect_bd_net -net gemm_ctrl_0_fc2_bias_base [get_bd_pins gemm_ctrl_0/fc2_bias_base] [get_bd_pins gemm_top_0/fc2_bias_base]
  connect_bd_net -net gemm_ctrl_0_fc2_weight_base [get_bd_pins gemm_ctrl_0/fc2_weight_base] [get_bd_pins gemm_top_0/fc2_weight_base]
  connect_bd_net -net gemm_ctrl_0_gemm_flush [get_bd_pins gemm_ctrl_0/gemm_flush] [get_bd_pins gemm_top_0/flush]
  connect_bd_net -net gemm_ctrl_0_gemm_start [get_bd_pins gemm_ctrl_0/gemm_start] [get_bd_pins gemm_top_0/start]
  connect_bd_net -net gemm_digit_concat_dout [get_bd_pins fifo_generator_0/din] [get_bd_pins gemm_digit_concat/dout]
  connect_bd_net -net gemm_digit_zero_dout [get_bd_pins gemm_digit_concat/In1] [get_bd_pins gemm_digit_zero/dout]
  connect_bd_net -net gemm_result_debug_concat_dout [get_bd_pins gemm_result_debug_concat/dout] [get_bd_pins ila_0/probe1]
  connect_bd_net -net gemm_top_0_busy [get_bd_pins gemm_ctrl_0/gemm_busy] [get_bd_pins gemm_top_0/busy]
  connect_bd_net -net gemm_top_0_digit [get_bd_pins gemm_ctrl_0/gemm_digit] [get_bd_pins gemm_digit_concat/In0] [get_bd_pins gemm_top_0/digit]
  connect_bd_net -net gemm_top_0_digit_valid [get_bd_pins fifo_generator_0/wr_en] [get_bd_pins gemm_ctrl_0/gemm_digit_valid] [get_bd_pins gemm_top_0/digit_valid]
  connect_bd_net -net gemm_top_0_done [get_bd_pins gemm_ctrl_0/gemm_done] [get_bd_pins gemm_top_0/done]
  connect_bd_net -net gemm_top_0_error [get_bd_pins gemm_ctrl_0/gemm_error] [get_bd_pins gemm_top_0/error]
  connect_bd_net -net gemm_top_0_param_section [get_bd_pins gemm_ctrl_0/param_section] [get_bd_pins gemm_top_0/param_section]
  connect_bd_net -net gemm_top_0_pool_wr_ready [get_bd_pins gemm_top_0/pool_wr_ready] [get_bd_pins pool_frame_cdc_0/pool_wr_ready]
  connect_bd_net -net gray_yo_bin_0_bin_data [get_bd_pins gray_yo_bin_0/bin_data] [get_bd_pins image_downsample_0/bin_data]
  connect_bd_net -net gray_yo_bin_0_bin_valid [get_bd_pins gray_yo_bin_0/bin_valid] [get_bd_pins image_downsample_0/bin_valid]
  connect_bd_net -net image_downsample_0_pool_data [get_bd_pins image_downsample_0/pool_data] [get_bd_pins ram_ctrl_lite_0/pool_data]
  connect_bd_net -net image_downsample_0_pool_valid [get_bd_pins image_downsample_0/pool_valid] [get_bd_pins ram_ctrl_lite_0/pool_valid]
  connect_bd_net -net ov5640_cfg_top_0_sccb_cfg_done [get_bd_ports sccb_cfg_done_0] [get_bd_pins ov5640_cfg_top_0/sccb_cfg_done]
  connect_bd_net -net ov5640_cfg_top_0_sccb_clk [get_bd_ports sccb_clk_0] [get_bd_pins ov5640_cfg_top_0/sccb_clk]
  connect_bd_net -net pix_frame_display_0_hdmi_data [get_bd_pins data_gen_0/data_i] [get_bd_pins pix_frame_display_0/hdmi_data]
  connect_bd_net -net pix_frame_display_0_hdmi_de [get_bd_pins HDMI_top_0/de] [get_bd_pins data_gen_0/de] [get_bd_pins pix_frame_display_0/hdmi_de]
  connect_bd_net -net pix_frame_display_0_hdmi_hsync [get_bd_pins HDMI_top_0/h_sync] [get_bd_pins pix_frame_display_0/hdmi_hsync]
  connect_bd_net -net pix_frame_display_0_hdmi_vsync [get_bd_pins HDMI_top_0/v_sync] [get_bd_pins pix_frame_display_0/hdmi_vsync]
  connect_bd_net -net pix_frame_display_0_rom_addr [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins blk_mem_gen_1/addra] [get_bd_pins blk_mem_gen_2/addra] [get_bd_pins blk_mem_gen_3/addra] [get_bd_pins blk_mem_gen_4/addra] [get_bd_pins blk_mem_gen_5/addra] [get_bd_pins blk_mem_gen_6/addra] [get_bd_pins blk_mem_gen_7/addra] [get_bd_pins blk_mem_gen_8/addra] [get_bd_pins blk_mem_gen_9/addra] [get_bd_pins pix_frame_display_0/rom_addr]
  connect_bd_net -net pix_frame_display_0_rom_valid [get_bd_pins blk_mem_gen_0/ena] [get_bd_pins blk_mem_gen_1/ena] [get_bd_pins blk_mem_gen_2/ena] [get_bd_pins blk_mem_gen_3/ena] [get_bd_pins blk_mem_gen_4/ena] [get_bd_pins blk_mem_gen_5/ena] [get_bd_pins blk_mem_gen_6/ena] [get_bd_pins blk_mem_gen_7/ena] [get_bd_pins blk_mem_gen_8/ena] [get_bd_pins blk_mem_gen_9/ena] [get_bd_pins pix_frame_display_0/rom_valid]
  connect_bd_net -net pool_frame_cdc_0_pool_wr_addr [get_bd_pins gemm_top_0/pool_wr_addr] [get_bd_pins pool_frame_cdc_0/pool_wr_addr]
  connect_bd_net -net pool_frame_cdc_0_pool_wr_data [get_bd_pins gemm_top_0/pool_wr_data] [get_bd_pins pool_frame_cdc_0/pool_wr_data]
  connect_bd_net -net pool_frame_cdc_0_pool_wr_done [get_bd_pins gemm_ctrl_0/auto_start] [get_bd_pins gemm_top_0/pool_wr_done] [get_bd_pins pool_frame_cdc_0/pool_wr_done]
  connect_bd_net -net pool_frame_cdc_0_pool_wr_en [get_bd_pins gemm_top_0/pool_wr_en] [get_bd_pins pool_frame_cdc_0/pool_wr_en]
  connect_bd_net -net pool_to_ps_ram_ctrl_0_bram_addr [get_bd_pins blk_mem_gen_14/addra] [get_bd_pins pool_to_ps_ram_ctrl_0/bram_addr]
  connect_bd_net -net pool_to_ps_ram_ctrl_0_bram_en [get_bd_pins blk_mem_gen_14/ena] [get_bd_pins pool_to_ps_ram_ctrl_0/bram_en]
  connect_bd_net -net pool_to_ps_ram_ctrl_0_bram_wdata [get_bd_pins blk_mem_gen_14/dina] [get_bd_pins pool_to_ps_ram_ctrl_0/bram_wdata]
  connect_bd_net -net pool_to_ps_ram_ctrl_0_bram_we [get_bd_pins blk_mem_gen_14/wea] [get_bd_pins pool_to_ps_ram_ctrl_0/bram_we]
  connect_bd_net -net pool_to_ps_ram_ctrl_0_ps_intr [get_bd_pins pool_to_ps_ram_ctrl_0/ps_intr] [get_bd_pins processing_system7_0/IRQ_F2P]
  connect_bd_net -net pp_ram_ctrl_0_cnn_data [get_bd_pins cnn_conv_5x5_layer_0/ram_data] [get_bd_pins pp_ram_ctrl_0/cnn_data]
  connect_bd_net -net pp_ram_ctrl_0_cnn_start [get_bd_pins cnn_conv_5x5_layer_0/frame_start] [get_bd_pins pp_ram_ctrl_0/cnn_start]
  connect_bd_net -net pp_ram_ctrl_0_ramA_raddr [get_bd_pins blk_mem_gen_10/addrb] [get_bd_pins pp_ram_ctrl_0/ramA_raddr]
  connect_bd_net -net pp_ram_ctrl_0_ramA_re [get_bd_pins blk_mem_gen_10/enb] [get_bd_pins pp_ram_ctrl_0/ramA_re]
  connect_bd_net -net pp_ram_ctrl_0_ramA_waddr [get_bd_pins blk_mem_gen_10/addra] [get_bd_pins pp_ram_ctrl_0/ramA_waddr]
  connect_bd_net -net pp_ram_ctrl_0_ramA_wdata [get_bd_pins blk_mem_gen_10/dina] [get_bd_pins pp_ram_ctrl_0/ramA_wdata]
  connect_bd_net -net pp_ram_ctrl_0_ramA_we [get_bd_pins blk_mem_gen_10/ena] [get_bd_pins blk_mem_gen_10/wea] [get_bd_pins pp_ram_ctrl_0/ramA_we]
  connect_bd_net -net pp_ram_ctrl_0_ramB_raddr [get_bd_pins blk_mem_gen_11/addrb] [get_bd_pins pp_ram_ctrl_0/ramB_raddr]
  connect_bd_net -net pp_ram_ctrl_0_ramB_re [get_bd_pins blk_mem_gen_11/enb] [get_bd_pins pp_ram_ctrl_0/ramB_re]
  connect_bd_net -net pp_ram_ctrl_0_ramB_waddr [get_bd_pins blk_mem_gen_11/addra] [get_bd_pins pp_ram_ctrl_0/ramB_waddr]
  connect_bd_net -net pp_ram_ctrl_0_ramB_wdata [get_bd_pins blk_mem_gen_11/dina] [get_bd_pins pp_ram_ctrl_0/ramB_wdata]
  connect_bd_net -net pp_ram_ctrl_0_ramB_we [get_bd_pins blk_mem_gen_11/ena] [get_bd_pins blk_mem_gen_11/wea] [get_bd_pins pp_ram_ctrl_0/ramB_we]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_dma_mm2s/m_axi_mm2s_aclk] [get_bd_pins axi_dma_mm2s/s_axi_lite_aclk] [get_bd_pins axi_lite_0/s00_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/M01_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] [get_bd_pins fifo_generator_0/wr_clk] [get_bd_pins gemm_ctrl_0/s_axi_aclk] [get_bd_pins gemm_dma_pc/aclk] [get_bd_pins gemm_top_0/clk] [get_bd_pins pool_frame_cdc_0/gemm_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP1_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP2_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_200M/slowest_sync_clk] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_vid_in_axi4s_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_200M/ext_reset_in]
  connect_bd_net -net ram_ctrl_lite_0_cam_addr [get_bd_pins pp_ram_ctrl_0/cam_addr] [get_bd_pins ram_ctrl_lite_0/cam_addr]
  connect_bd_net -net ram_ctrl_lite_0_cam_data [get_bd_pins pp_ram_ctrl_0/cam_data] [get_bd_pins ram_ctrl_lite_0/cam_data]
  connect_bd_net -net ram_ctrl_lite_0_cam_done [get_bd_pins pp_ram_ctrl_0/cam_done] [get_bd_pins ram_ctrl_lite_0/cam_done]
  connect_bd_net -net ram_ctrl_lite_0_cam_we [get_bd_pins pp_ram_ctrl_0/cam_we] [get_bd_pins ram_ctrl_lite_0/cam_we]
  connect_bd_net -net rom_ctrl_0_rd_en [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins gemm_result_debug_concat/In1] [get_bd_pins rom_ctrl_0/rd_en]
  connect_bd_net -net rom_ctrl_0_rom_data_out [get_bd_pins gemm_result_debug_concat/In2] [get_bd_pins pix_frame_display_0/rom_data] [get_bd_pins rom_ctrl_0/rom_data_out]
  connect_bd_net -net rst_ps7_0_200M_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_dma_mm2s/axi_resetn] [get_bd_pins axi_lite_0/s00_axi_aresetn] [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/M01_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins gemm_ctrl_0/s_axi_aresetn] [get_bd_pins gemm_dma_pc/aresetn] [get_bd_pins gemm_top_0/rst_n] [get_bd_pins pool_frame_cdc_0/gemm_rst_n] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_200M/peripheral_aresetn] [get_bd_pins util_vector_logic_2/Op1] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_vid_in_axi4s_0/aresetn]
  connect_bd_net -net sys_rst_n_0_1 [get_bd_ports sys_rst_n_0] [get_bd_pins clk_wiz_0/resetn]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins fifo_generator_0/rd_rst] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins fifo_generator_0/wr_rst] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_pins pix_frame_display_0/vio_active] [get_bd_pins v_axi4s_vid_out_0/vid_active_video]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_pins pix_frame_display_0/vio_data] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_pins pix_frame_display_0/vio_hsync] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_pins pix_frame_display_0/vio_vsync] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net vio_to_gray_0_gary_data [get_bd_pins gray_yo_bin_0/gray_data] [get_bd_pins vio_to_gray_fixed/gary_data]
  connect_bd_net -net vio_to_gray_0_gray_valid [get_bd_pins gray_yo_bin_0/gray_valid] [get_bd_pins vio_to_gray_fixed/gray_valid]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_dma_mm2s/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP2/HP2_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] -force
  assign_bd_address -offset 0x10000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] -force
  assign_bd_address -offset 0x40000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x43010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_mm2s/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x43C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_lite_0/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0x43000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x43C10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs gemm_ctrl_0/s_axi/reg0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


