# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
In_ddr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
W_ddr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
Out_ddr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


