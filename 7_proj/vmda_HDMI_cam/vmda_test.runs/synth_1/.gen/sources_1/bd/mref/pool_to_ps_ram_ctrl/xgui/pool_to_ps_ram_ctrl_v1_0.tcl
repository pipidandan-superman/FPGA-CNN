# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CH_NUM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMG_H_OUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IMG_W_OUT" -parent ${Page_0}


}

proc update_PARAM_VALUE.CH_NUM { PARAM_VALUE.CH_NUM } {
	# Procedure called to update CH_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CH_NUM { PARAM_VALUE.CH_NUM } {
	# Procedure called to validate CH_NUM
	return true
}

proc update_PARAM_VALUE.IMG_H_OUT { PARAM_VALUE.IMG_H_OUT } {
	# Procedure called to update IMG_H_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMG_H_OUT { PARAM_VALUE.IMG_H_OUT } {
	# Procedure called to validate IMG_H_OUT
	return true
}

proc update_PARAM_VALUE.IMG_W_OUT { PARAM_VALUE.IMG_W_OUT } {
	# Procedure called to update IMG_W_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IMG_W_OUT { PARAM_VALUE.IMG_W_OUT } {
	# Procedure called to validate IMG_W_OUT
	return true
}


proc update_MODELPARAM_VALUE.IMG_W_OUT { MODELPARAM_VALUE.IMG_W_OUT PARAM_VALUE.IMG_W_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMG_W_OUT}] ${MODELPARAM_VALUE.IMG_W_OUT}
}

proc update_MODELPARAM_VALUE.IMG_H_OUT { MODELPARAM_VALUE.IMG_H_OUT PARAM_VALUE.IMG_H_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IMG_H_OUT}] ${MODELPARAM_VALUE.IMG_H_OUT}
}

proc update_MODELPARAM_VALUE.CH_NUM { MODELPARAM_VALUE.CH_NUM PARAM_VALUE.CH_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CH_NUM}] ${MODELPARAM_VALUE.CH_NUM}
}

