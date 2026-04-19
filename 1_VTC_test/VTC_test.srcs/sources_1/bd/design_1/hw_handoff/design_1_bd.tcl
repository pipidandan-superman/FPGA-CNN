
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
# HDMI_top, data_gen

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

  # Create ports
  set TMDS_clk_n_0 [ create_bd_port -dir O -type clk TMDS_clk_n_0 ]
  set TMDS_clk_p_0 [ create_bd_port -dir O -type clk TMDS_clk_p_0 ]
  set TMDS_data_n_0 [ create_bd_port -dir O -from 2 -to 0 TMDS_data_n_0 ]
  set TMDS_data_p_0 [ create_bd_port -dir O -from 2 -to 0 TMDS_data_p_0 ]
  set clk_in1_0 [ create_bd_port -dir I -type clk -freq_hz 50000000 clk_in1_0 ]
  set hdmi_en_0 [ create_bd_port -dir O hdmi_en_0 ]

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
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {200.0} \
   CONFIG.CLKOUT1_JITTER {155.608} \
   CONFIG.CLKOUT1_PHASE_ERROR {158.235} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {75} \
   CONFIG.CLKOUT2_JITTER {117.790} \
   CONFIG.CLKOUT2_PHASE_ERROR {158.235} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {375} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_OUT1_PORT {pclk} \
   CONFIG.CLK_OUT2_PORT {pclk_x5} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {22.500} \
   CONFIG.MMCM_CLKIN1_PERIOD {20.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {15.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {3} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {50} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

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
  
  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.2 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.enable_detection {false} \
 ] $v_tc_0

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {0} \
   CONFIG.C_NUM_PROBE_OUT {1} \
   CONFIG.C_PROBE_OUT0_WIDTH {24} \
 ] $vio_0

  # Create port connections
  connect_bd_net -net HDMI_top_0_TMDS_clk_n [get_bd_ports TMDS_clk_n_0] [get_bd_pins HDMI_top_0/TMDS_clk_n]
  connect_bd_net -net HDMI_top_0_TMDS_clk_p [get_bd_ports TMDS_clk_p_0] [get_bd_pins HDMI_top_0/TMDS_clk_p]
  connect_bd_net -net HDMI_top_0_TMDS_data_n [get_bd_ports TMDS_data_n_0] [get_bd_pins HDMI_top_0/TMDS_data_n]
  connect_bd_net -net HDMI_top_0_TMDS_data_p [get_bd_ports TMDS_data_p_0] [get_bd_pins HDMI_top_0/TMDS_data_p]
  connect_bd_net -net HDMI_top_0_hdmi_en [get_bd_ports hdmi_en_0] [get_bd_pins HDMI_top_0/hdmi_en]
  connect_bd_net -net clk_in1_0_1 [get_bd_ports clk_in1_0] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins HDMI_top_0/rst_n] [get_bd_pins clk_wiz_0/locked] [get_bd_pins v_tc_0/clken] [get_bd_pins v_tc_0/gen_clken] [get_bd_pins v_tc_0/resetn]
  connect_bd_net -net clk_wiz_0_pclk [get_bd_pins HDMI_top_0/pix_clk] [get_bd_pins clk_wiz_0/pclk] [get_bd_pins v_tc_0/clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net clk_wiz_0_pclk_x5 [get_bd_pins HDMI_top_0/pix_clk_x5] [get_bd_pins clk_wiz_0/pclk_x5]
  connect_bd_net -net data_gen_0_data_b_o [get_bd_pins HDMI_top_0/blue_data] [get_bd_pins data_gen_0/data_b_o]
  connect_bd_net -net data_gen_0_data_g_o [get_bd_pins HDMI_top_0/green_data] [get_bd_pins data_gen_0/data_g_o]
  connect_bd_net -net data_gen_0_data_r_o [get_bd_pins HDMI_top_0/red_data] [get_bd_pins data_gen_0/data_r_o]
  connect_bd_net -net v_tc_0_active_video_out [get_bd_pins HDMI_top_0/de] [get_bd_pins data_gen_0/de] [get_bd_pins v_tc_0/active_video_out]
  connect_bd_net -net v_tc_0_hsync_out [get_bd_pins HDMI_top_0/h_sync] [get_bd_pins v_tc_0/hsync_out]
  connect_bd_net -net v_tc_0_vsync_out [get_bd_pins HDMI_top_0/v_sync] [get_bd_pins v_tc_0/vsync_out]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins data_gen_0/data_i] [get_bd_pins vio_0/probe_out0]

  # Create address segments


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


