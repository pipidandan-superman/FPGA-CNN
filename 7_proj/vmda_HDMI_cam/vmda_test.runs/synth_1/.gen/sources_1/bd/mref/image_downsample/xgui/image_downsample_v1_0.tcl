# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "POOL_TH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROI_H" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROI_W" -parent ${Page_0}


}

proc update_PARAM_VALUE.POOL_TH { PARAM_VALUE.POOL_TH } {
	# Procedure called to update POOL_TH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.POOL_TH { PARAM_VALUE.POOL_TH } {
	# Procedure called to validate POOL_TH
	return true
}

proc update_PARAM_VALUE.ROI_H { PARAM_VALUE.ROI_H } {
	# Procedure called to update ROI_H when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROI_H { PARAM_VALUE.ROI_H } {
	# Procedure called to validate ROI_H
	return true
}

proc update_PARAM_VALUE.ROI_W { PARAM_VALUE.ROI_W } {
	# Procedure called to update ROI_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROI_W { PARAM_VALUE.ROI_W } {
	# Procedure called to validate ROI_W
	return true
}


proc update_MODELPARAM_VALUE.ROI_W { MODELPARAM_VALUE.ROI_W PARAM_VALUE.ROI_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROI_W}] ${MODELPARAM_VALUE.ROI_W}
}

proc update_MODELPARAM_VALUE.ROI_H { MODELPARAM_VALUE.ROI_H PARAM_VALUE.ROI_H } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROI_H}] ${MODELPARAM_VALUE.ROI_H}
}

proc update_MODELPARAM_VALUE.POOL_TH { MODELPARAM_VALUE.POOL_TH PARAM_VALUE.POOL_TH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.POOL_TH}] ${MODELPARAM_VALUE.POOL_TH}
}

