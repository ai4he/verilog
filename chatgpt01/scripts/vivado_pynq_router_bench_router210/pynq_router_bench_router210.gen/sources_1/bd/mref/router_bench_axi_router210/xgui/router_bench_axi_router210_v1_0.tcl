# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "B10_LAT_BIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B10_LAT_DEC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B10_LAT_DUO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B12_LAT_BIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B12_LAT_DEC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B12_LAT_DUO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B2_LAT_BIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B2_LAT_DEC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "B2_LAT_DUO" -parent ${Page_0}


}

proc update_PARAM_VALUE.B10_LAT_BIN { PARAM_VALUE.B10_LAT_BIN } {
	# Procedure called to update B10_LAT_BIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B10_LAT_BIN { PARAM_VALUE.B10_LAT_BIN } {
	# Procedure called to validate B10_LAT_BIN
	return true
}

proc update_PARAM_VALUE.B10_LAT_DEC { PARAM_VALUE.B10_LAT_DEC } {
	# Procedure called to update B10_LAT_DEC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B10_LAT_DEC { PARAM_VALUE.B10_LAT_DEC } {
	# Procedure called to validate B10_LAT_DEC
	return true
}

proc update_PARAM_VALUE.B10_LAT_DUO { PARAM_VALUE.B10_LAT_DUO } {
	# Procedure called to update B10_LAT_DUO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B10_LAT_DUO { PARAM_VALUE.B10_LAT_DUO } {
	# Procedure called to validate B10_LAT_DUO
	return true
}

proc update_PARAM_VALUE.B12_LAT_BIN { PARAM_VALUE.B12_LAT_BIN } {
	# Procedure called to update B12_LAT_BIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B12_LAT_BIN { PARAM_VALUE.B12_LAT_BIN } {
	# Procedure called to validate B12_LAT_BIN
	return true
}

proc update_PARAM_VALUE.B12_LAT_DEC { PARAM_VALUE.B12_LAT_DEC } {
	# Procedure called to update B12_LAT_DEC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B12_LAT_DEC { PARAM_VALUE.B12_LAT_DEC } {
	# Procedure called to validate B12_LAT_DEC
	return true
}

proc update_PARAM_VALUE.B12_LAT_DUO { PARAM_VALUE.B12_LAT_DUO } {
	# Procedure called to update B12_LAT_DUO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B12_LAT_DUO { PARAM_VALUE.B12_LAT_DUO } {
	# Procedure called to validate B12_LAT_DUO
	return true
}

proc update_PARAM_VALUE.B2_LAT_BIN { PARAM_VALUE.B2_LAT_BIN } {
	# Procedure called to update B2_LAT_BIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B2_LAT_BIN { PARAM_VALUE.B2_LAT_BIN } {
	# Procedure called to validate B2_LAT_BIN
	return true
}

proc update_PARAM_VALUE.B2_LAT_DEC { PARAM_VALUE.B2_LAT_DEC } {
	# Procedure called to update B2_LAT_DEC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B2_LAT_DEC { PARAM_VALUE.B2_LAT_DEC } {
	# Procedure called to validate B2_LAT_DEC
	return true
}

proc update_PARAM_VALUE.B2_LAT_DUO { PARAM_VALUE.B2_LAT_DUO } {
	# Procedure called to update B2_LAT_DUO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.B2_LAT_DUO { PARAM_VALUE.B2_LAT_DUO } {
	# Procedure called to validate B2_LAT_DUO
	return true
}


proc update_MODELPARAM_VALUE.B2_LAT_BIN { MODELPARAM_VALUE.B2_LAT_BIN PARAM_VALUE.B2_LAT_BIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B2_LAT_BIN}] ${MODELPARAM_VALUE.B2_LAT_BIN}
}

proc update_MODELPARAM_VALUE.B2_LAT_DEC { MODELPARAM_VALUE.B2_LAT_DEC PARAM_VALUE.B2_LAT_DEC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B2_LAT_DEC}] ${MODELPARAM_VALUE.B2_LAT_DEC}
}

proc update_MODELPARAM_VALUE.B2_LAT_DUO { MODELPARAM_VALUE.B2_LAT_DUO PARAM_VALUE.B2_LAT_DUO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B2_LAT_DUO}] ${MODELPARAM_VALUE.B2_LAT_DUO}
}

proc update_MODELPARAM_VALUE.B10_LAT_DEC { MODELPARAM_VALUE.B10_LAT_DEC PARAM_VALUE.B10_LAT_DEC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B10_LAT_DEC}] ${MODELPARAM_VALUE.B10_LAT_DEC}
}

proc update_MODELPARAM_VALUE.B10_LAT_BIN { MODELPARAM_VALUE.B10_LAT_BIN PARAM_VALUE.B10_LAT_BIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B10_LAT_BIN}] ${MODELPARAM_VALUE.B10_LAT_BIN}
}

proc update_MODELPARAM_VALUE.B10_LAT_DUO { MODELPARAM_VALUE.B10_LAT_DUO PARAM_VALUE.B10_LAT_DUO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B10_LAT_DUO}] ${MODELPARAM_VALUE.B10_LAT_DUO}
}

proc update_MODELPARAM_VALUE.B12_LAT_DUO { MODELPARAM_VALUE.B12_LAT_DUO PARAM_VALUE.B12_LAT_DUO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B12_LAT_DUO}] ${MODELPARAM_VALUE.B12_LAT_DUO}
}

proc update_MODELPARAM_VALUE.B12_LAT_BIN { MODELPARAM_VALUE.B12_LAT_BIN PARAM_VALUE.B12_LAT_BIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B12_LAT_BIN}] ${MODELPARAM_VALUE.B12_LAT_BIN}
}

proc update_MODELPARAM_VALUE.B12_LAT_DEC { MODELPARAM_VALUE.B12_LAT_DEC PARAM_VALUE.B12_LAT_DEC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.B12_LAT_DEC}] ${MODELPARAM_VALUE.B12_LAT_DEC}
}

