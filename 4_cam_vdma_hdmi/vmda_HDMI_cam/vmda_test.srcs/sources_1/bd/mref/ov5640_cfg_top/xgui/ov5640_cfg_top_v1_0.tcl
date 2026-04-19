# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CAM_HSIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CAM_VSIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLK_DIV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OV5640_R" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OV5640_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PACK_DELAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REG_NUM" -parent ${Page_0}


}

proc update_PARAM_VALUE.CAM_HSIZE { PARAM_VALUE.CAM_HSIZE } {
	# Procedure called to update CAM_HSIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CAM_HSIZE { PARAM_VALUE.CAM_HSIZE } {
	# Procedure called to validate CAM_HSIZE
	return true
}

proc update_PARAM_VALUE.CAM_VSIZE { PARAM_VALUE.CAM_VSIZE } {
	# Procedure called to update CAM_VSIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CAM_VSIZE { PARAM_VALUE.CAM_VSIZE } {
	# Procedure called to validate CAM_VSIZE
	return true
}

proc update_PARAM_VALUE.CLK_DIV { PARAM_VALUE.CLK_DIV } {
	# Procedure called to update CLK_DIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_DIV { PARAM_VALUE.CLK_DIV } {
	# Procedure called to validate CLK_DIV
	return true
}

proc update_PARAM_VALUE.OV5640_R { PARAM_VALUE.OV5640_R } {
	# Procedure called to update OV5640_R when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OV5640_R { PARAM_VALUE.OV5640_R } {
	# Procedure called to validate OV5640_R
	return true
}

proc update_PARAM_VALUE.OV5640_W { PARAM_VALUE.OV5640_W } {
	# Procedure called to update OV5640_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OV5640_W { PARAM_VALUE.OV5640_W } {
	# Procedure called to validate OV5640_W
	return true
}

proc update_PARAM_VALUE.PACK_DELAY { PARAM_VALUE.PACK_DELAY } {
	# Procedure called to update PACK_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PACK_DELAY { PARAM_VALUE.PACK_DELAY } {
	# Procedure called to validate PACK_DELAY
	return true
}

proc update_PARAM_VALUE.REG_NUM { PARAM_VALUE.REG_NUM } {
	# Procedure called to update REG_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REG_NUM { PARAM_VALUE.REG_NUM } {
	# Procedure called to validate REG_NUM
	return true
}


proc update_MODELPARAM_VALUE.OV5640_W { MODELPARAM_VALUE.OV5640_W PARAM_VALUE.OV5640_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OV5640_W}] ${MODELPARAM_VALUE.OV5640_W}
}

proc update_MODELPARAM_VALUE.OV5640_R { MODELPARAM_VALUE.OV5640_R PARAM_VALUE.OV5640_R } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OV5640_R}] ${MODELPARAM_VALUE.OV5640_R}
}

proc update_MODELPARAM_VALUE.CLK_DIV { MODELPARAM_VALUE.CLK_DIV PARAM_VALUE.CLK_DIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_DIV}] ${MODELPARAM_VALUE.CLK_DIV}
}

proc update_MODELPARAM_VALUE.PACK_DELAY { MODELPARAM_VALUE.PACK_DELAY PARAM_VALUE.PACK_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PACK_DELAY}] ${MODELPARAM_VALUE.PACK_DELAY}
}

proc update_MODELPARAM_VALUE.CAM_HSIZE { MODELPARAM_VALUE.CAM_HSIZE PARAM_VALUE.CAM_HSIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CAM_HSIZE}] ${MODELPARAM_VALUE.CAM_HSIZE}
}

proc update_MODELPARAM_VALUE.CAM_VSIZE { MODELPARAM_VALUE.CAM_VSIZE PARAM_VALUE.CAM_VSIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CAM_VSIZE}] ${MODELPARAM_VALUE.CAM_VSIZE}
}

proc update_MODELPARAM_VALUE.REG_NUM { MODELPARAM_VALUE.REG_NUM PARAM_VALUE.REG_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REG_NUM}] ${MODELPARAM_VALUE.REG_NUM}
}

