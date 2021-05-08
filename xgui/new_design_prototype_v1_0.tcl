# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "P_COEFF_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_Q" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_SPARSE_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.P_COEFF_WIDTH { PARAM_VALUE.P_COEFF_WIDTH } {
	# Procedure called to update P_COEFF_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_COEFF_WIDTH { PARAM_VALUE.P_COEFF_WIDTH } {
	# Procedure called to validate P_COEFF_WIDTH
	return true
}

proc update_PARAM_VALUE.P_N { PARAM_VALUE.P_N } {
	# Procedure called to update P_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_N { PARAM_VALUE.P_N } {
	# Procedure called to validate P_N
	return true
}

proc update_PARAM_VALUE.P_Q { PARAM_VALUE.P_Q } {
	# Procedure called to update P_Q when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_Q { PARAM_VALUE.P_Q } {
	# Procedure called to validate P_Q
	return true
}

proc update_PARAM_VALUE.P_SPARSE_WIDTH { PARAM_VALUE.P_SPARSE_WIDTH } {
	# Procedure called to update P_SPARSE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_SPARSE_WIDTH { PARAM_VALUE.P_SPARSE_WIDTH } {
	# Procedure called to validate P_SPARSE_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.P_Q { MODELPARAM_VALUE.P_Q PARAM_VALUE.P_Q } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_Q}] ${MODELPARAM_VALUE.P_Q}
}

proc update_MODELPARAM_VALUE.P_N { MODELPARAM_VALUE.P_N PARAM_VALUE.P_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_N}] ${MODELPARAM_VALUE.P_N}
}

proc update_MODELPARAM_VALUE.P_COEFF_WIDTH { MODELPARAM_VALUE.P_COEFF_WIDTH PARAM_VALUE.P_COEFF_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_COEFF_WIDTH}] ${MODELPARAM_VALUE.P_COEFF_WIDTH}
}

proc update_MODELPARAM_VALUE.P_SPARSE_WIDTH { MODELPARAM_VALUE.P_SPARSE_WIDTH PARAM_VALUE.P_SPARSE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_SPARSE_WIDTH}] ${MODELPARAM_VALUE.P_SPARSE_WIDTH}
}

