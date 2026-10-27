# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ACC_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ACT_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PE_N" -parent ${Page_0}


}

proc update_PARAM_VALUE.ACC_W { PARAM_VALUE.ACC_W } {
	# Procedure called to update ACC_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACC_W { PARAM_VALUE.ACC_W } {
	# Procedure called to validate ACC_W
	return true
}

proc update_PARAM_VALUE.ACT_W { PARAM_VALUE.ACT_W } {
	# Procedure called to update ACT_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACT_W { PARAM_VALUE.ACT_W } {
	# Procedure called to validate ACT_W
	return true
}

proc update_PARAM_VALUE.PE_N { PARAM_VALUE.PE_N } {
	# Procedure called to update PE_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PE_N { PARAM_VALUE.PE_N } {
	# Procedure called to validate PE_N
	return true
}


proc update_MODELPARAM_VALUE.ACT_W { MODELPARAM_VALUE.ACT_W PARAM_VALUE.ACT_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACT_W}] ${MODELPARAM_VALUE.ACT_W}
}

proc update_MODELPARAM_VALUE.ACC_W { MODELPARAM_VALUE.ACC_W PARAM_VALUE.ACC_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACC_W}] ${MODELPARAM_VALUE.ACC_W}
}

proc update_MODELPARAM_VALUE.PE_N { MODELPARAM_VALUE.PE_N PARAM_VALUE.PE_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PE_N}] ${MODELPARAM_VALUE.PE_N}
}

