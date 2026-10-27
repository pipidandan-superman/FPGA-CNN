# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NORMALIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.NORMALIZE { PARAM_VALUE.NORMALIZE } {
	# Procedure called to update NORMALIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NORMALIZE { PARAM_VALUE.NORMALIZE } {
	# Procedure called to validate NORMALIZE
	return true
}


proc update_MODELPARAM_VALUE.NORMALIZE { MODELPARAM_VALUE.NORMALIZE PARAM_VALUE.NORMALIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NORMALIZE}] ${MODELPARAM_VALUE.NORMALIZE}
}

