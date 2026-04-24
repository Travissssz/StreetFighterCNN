set moduleName street_fighter_cnn_Pipeline_ARGMAX
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 9
set C_modelName {street_fighter_cnn_Pipeline_ARGMAX}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_0_0_080134 int 16 regular  }
	{ final_scores int 16 regular  }
	{ final_scores_1 int 16 regular  }
	{ final_scores_2 int 16 regular  }
	{ final_scores_3 int 16 regular  }
	{ final_scores_4 int 16 regular  }
	{ final_scores_5 int 16 regular  }
	{ final_scores_6 int 16 regular  }
	{ final_scores_7 int 16 regular  }
	{ final_scores_8 int 16 regular  }
	{ best_class_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_0_0_080134", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "final_scores", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "final_scores_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "final_scores_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "final_scores_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "final_scores_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "final_scores_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "final_scores_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "final_scores_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "final_scores_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "best_class_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_0_0_080134 sc_in sc_lv 16 signal 0 } 
	{ final_scores sc_in sc_lv 16 signal 1 } 
	{ final_scores_1 sc_in sc_lv 16 signal 2 } 
	{ final_scores_2 sc_in sc_lv 16 signal 3 } 
	{ final_scores_3 sc_in sc_lv 16 signal 4 } 
	{ final_scores_4 sc_in sc_lv 16 signal 5 } 
	{ final_scores_5 sc_in sc_lv 16 signal 6 } 
	{ final_scores_6 sc_in sc_lv 16 signal 7 } 
	{ final_scores_7 sc_in sc_lv 16 signal 8 } 
	{ final_scores_8 sc_in sc_lv 16 signal 9 } 
	{ best_class_out sc_out sc_lv 32 signal 10 } 
	{ best_class_out_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_0_0_080134", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_080134", "role": "default" }} , 
 	{ "name": "final_scores", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores", "role": "default" }} , 
 	{ "name": "final_scores_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores_1", "role": "default" }} , 
 	{ "name": "final_scores_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores_2", "role": "default" }} , 
 	{ "name": "final_scores_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores_3", "role": "default" }} , 
 	{ "name": "final_scores_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores_4", "role": "default" }} , 
 	{ "name": "final_scores_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores_5", "role": "default" }} , 
 	{ "name": "final_scores_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores_6", "role": "default" }} , 
 	{ "name": "final_scores_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores_7", "role": "default" }} , 
 	{ "name": "final_scores_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores_8", "role": "default" }} , 
 	{ "name": "best_class_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "best_class_out", "role": "default" }} , 
 	{ "name": "best_class_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "best_class_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	street_fighter_cnn_Pipeline_ARGMAX {
		p_0_0_080134 {Type I LastRead 0 FirstWrite -1}
		final_scores {Type I LastRead 0 FirstWrite -1}
		final_scores_1 {Type I LastRead 0 FirstWrite -1}
		final_scores_2 {Type I LastRead 0 FirstWrite -1}
		final_scores_3 {Type I LastRead 0 FirstWrite -1}
		final_scores_4 {Type I LastRead 0 FirstWrite -1}
		final_scores_5 {Type I LastRead 0 FirstWrite -1}
		final_scores_6 {Type I LastRead 0 FirstWrite -1}
		final_scores_7 {Type I LastRead 0 FirstWrite -1}
		final_scores_8 {Type I LastRead 0 FirstWrite -1}
		best_class_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_0_0_080134 { ap_none {  { p_0_0_080134 in_data 0 16 } } }
	final_scores { ap_none {  { final_scores in_data 0 16 } } }
	final_scores_1 { ap_none {  { final_scores_1 in_data 0 16 } } }
	final_scores_2 { ap_none {  { final_scores_2 in_data 0 16 } } }
	final_scores_3 { ap_none {  { final_scores_3 in_data 0 16 } } }
	final_scores_4 { ap_none {  { final_scores_4 in_data 0 16 } } }
	final_scores_5 { ap_none {  { final_scores_5 in_data 0 16 } } }
	final_scores_6 { ap_none {  { final_scores_6 in_data 0 16 } } }
	final_scores_7 { ap_none {  { final_scores_7 in_data 0 16 } } }
	final_scores_8 { ap_none {  { final_scores_8 in_data 0 16 } } }
	best_class_out { ap_vld {  { best_class_out out_data 1 32 }  { best_class_out_ap_vld out_vld 1 1 } } }
}
