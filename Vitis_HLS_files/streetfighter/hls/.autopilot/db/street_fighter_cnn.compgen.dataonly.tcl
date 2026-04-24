# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
input_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
prediction { 
	dir O
	width 32
	depth 1
	mode ap_none
	offset 28
	offset_end 35
}
confidence { 
	dir O
	width 16
	depth 1
	mode ap_none
	offset 44
	offset_end 51
}
dbg_in0 { 
	dir O
	width 16
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
dbg_l1_0 { 
	dir O
	width 16
	depth 1
	mode ap_none
	offset 76
	offset_end 83
}
dbg_gap0 { 
	dir O
	width 16
	depth 1
	mode ap_none
	offset 92
	offset_end 99
}
dbg_score0 { 
	dir O
	width 16
	depth 1
	mode ap_none
	offset 108
	offset_end 115
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


