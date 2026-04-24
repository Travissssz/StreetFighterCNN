set moduleName street_fighter_cnn_Pipeline_VITIS_LOOP_136_6
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
set C_modelName {street_fighter_cnn_Pipeline_VITIS_LOOP_136_6}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict conv2_out { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_out_1 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_out_2 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_out_3 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_out_4 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_out_5 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_out_6 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_out_7 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_out_8 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv2_out_9 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ sext_ln135 int 24 regular  }
	{ zext_ln144 int 9 regular  }
	{ conv2_out int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ conv2_out_1 int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ conv2_out_2 int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ conv2_out_3 int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ conv2_out_4 int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ conv2_out_5 int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ conv2_out_6 int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ conv2_out_7 int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ conv2_out_8 int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ conv2_out_9 int 15 regular {array 32 { 1 3 } 1 1 }  }
	{ i_1 int 4 regular  }
	{ dbg_gap0 int 16 regular {pointer 1}  }
	{ final_scores_9_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln135", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln144", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out_1", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out_2", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out_3", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out_4", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out_5", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out_6", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out_7", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out_8", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_out_9", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "i_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "dbg_gap0", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "final_scores_9_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln135 sc_in sc_lv 24 signal 0 } 
	{ zext_ln144 sc_in sc_lv 9 signal 1 } 
	{ conv2_out_address0 sc_out sc_lv 5 signal 2 } 
	{ conv2_out_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv2_out_q0 sc_in sc_lv 15 signal 2 } 
	{ conv2_out_1_address0 sc_out sc_lv 5 signal 3 } 
	{ conv2_out_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ conv2_out_1_q0 sc_in sc_lv 15 signal 3 } 
	{ conv2_out_2_address0 sc_out sc_lv 5 signal 4 } 
	{ conv2_out_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ conv2_out_2_q0 sc_in sc_lv 15 signal 4 } 
	{ conv2_out_3_address0 sc_out sc_lv 5 signal 5 } 
	{ conv2_out_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ conv2_out_3_q0 sc_in sc_lv 15 signal 5 } 
	{ conv2_out_4_address0 sc_out sc_lv 5 signal 6 } 
	{ conv2_out_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ conv2_out_4_q0 sc_in sc_lv 15 signal 6 } 
	{ conv2_out_5_address0 sc_out sc_lv 5 signal 7 } 
	{ conv2_out_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ conv2_out_5_q0 sc_in sc_lv 15 signal 7 } 
	{ conv2_out_6_address0 sc_out sc_lv 5 signal 8 } 
	{ conv2_out_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ conv2_out_6_q0 sc_in sc_lv 15 signal 8 } 
	{ conv2_out_7_address0 sc_out sc_lv 5 signal 9 } 
	{ conv2_out_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ conv2_out_7_q0 sc_in sc_lv 15 signal 9 } 
	{ conv2_out_8_address0 sc_out sc_lv 5 signal 10 } 
	{ conv2_out_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ conv2_out_8_q0 sc_in sc_lv 15 signal 10 } 
	{ conv2_out_9_address0 sc_out sc_lv 5 signal 11 } 
	{ conv2_out_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ conv2_out_9_q0 sc_in sc_lv 15 signal 11 } 
	{ i_1 sc_in sc_lv 4 signal 12 } 
	{ dbg_gap0 sc_out sc_lv 16 signal 13 } 
	{ dbg_gap0_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ final_scores_9_out sc_out sc_lv 16 signal 14 } 
	{ final_scores_9_out_ap_vld sc_out sc_logic 1 outvld 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln135", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "sext_ln135", "role": "default" }} , 
 	{ "name": "zext_ln144", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln144", "role": "default" }} , 
 	{ "name": "conv2_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out", "role": "address0" }} , 
 	{ "name": "conv2_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out", "role": "ce0" }} , 
 	{ "name": "conv2_out_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out", "role": "q0" }} , 
 	{ "name": "conv2_out_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_1", "role": "address0" }} , 
 	{ "name": "conv2_out_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_1", "role": "ce0" }} , 
 	{ "name": "conv2_out_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_1", "role": "q0" }} , 
 	{ "name": "conv2_out_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_2", "role": "address0" }} , 
 	{ "name": "conv2_out_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_2", "role": "ce0" }} , 
 	{ "name": "conv2_out_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_2", "role": "q0" }} , 
 	{ "name": "conv2_out_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_3", "role": "address0" }} , 
 	{ "name": "conv2_out_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_3", "role": "ce0" }} , 
 	{ "name": "conv2_out_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_3", "role": "q0" }} , 
 	{ "name": "conv2_out_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_4", "role": "address0" }} , 
 	{ "name": "conv2_out_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_4", "role": "ce0" }} , 
 	{ "name": "conv2_out_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_4", "role": "q0" }} , 
 	{ "name": "conv2_out_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_5", "role": "address0" }} , 
 	{ "name": "conv2_out_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_5", "role": "ce0" }} , 
 	{ "name": "conv2_out_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_5", "role": "q0" }} , 
 	{ "name": "conv2_out_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_6", "role": "address0" }} , 
 	{ "name": "conv2_out_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_6", "role": "ce0" }} , 
 	{ "name": "conv2_out_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_6", "role": "q0" }} , 
 	{ "name": "conv2_out_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_7", "role": "address0" }} , 
 	{ "name": "conv2_out_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_7", "role": "ce0" }} , 
 	{ "name": "conv2_out_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_7", "role": "q0" }} , 
 	{ "name": "conv2_out_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_8", "role": "address0" }} , 
 	{ "name": "conv2_out_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_8", "role": "ce0" }} , 
 	{ "name": "conv2_out_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_8", "role": "q0" }} , 
 	{ "name": "conv2_out_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_9", "role": "address0" }} , 
 	{ "name": "conv2_out_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_9", "role": "ce0" }} , 
 	{ "name": "conv2_out_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_9", "role": "q0" }} , 
 	{ "name": "i_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "i_1", "role": "default" }} , 
 	{ "name": "dbg_gap0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dbg_gap0", "role": "default" }} , 
 	{ "name": "dbg_gap0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dbg_gap0", "role": "ap_vld" }} , 
 	{ "name": "final_scores_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "final_scores_9_out", "role": "default" }} , 
 	{ "name": "final_scores_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "final_scores_9_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	street_fighter_cnn_Pipeline_VITIS_LOOP_136_6 {
		sext_ln135 {Type I LastRead 0 FirstWrite -1}
		zext_ln144 {Type I LastRead 0 FirstWrite -1}
		conv2_out {Type I LastRead 0 FirstWrite -1}
		conv2_out_1 {Type I LastRead 0 FirstWrite -1}
		conv2_out_2 {Type I LastRead 0 FirstWrite -1}
		conv2_out_3 {Type I LastRead 0 FirstWrite -1}
		conv2_out_4 {Type I LastRead 0 FirstWrite -1}
		conv2_out_5 {Type I LastRead 0 FirstWrite -1}
		conv2_out_6 {Type I LastRead 0 FirstWrite -1}
		conv2_out_7 {Type I LastRead 0 FirstWrite -1}
		conv2_out_8 {Type I LastRead 0 FirstWrite -1}
		conv2_out_9 {Type I LastRead 0 FirstWrite -1}
		i_1 {Type I LastRead 0 FirstWrite -1}
		dbg_gap0 {Type O LastRead -1 FirstWrite 2}
		final_scores_9_out {Type O LastRead -1 FirstWrite 2}
		FC_W {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "36", "Max" : "36"}
	, {"Name" : "Interval", "Min" : "33", "Max" : "33"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln135 { ap_none {  { sext_ln135 in_data 0 24 } } }
	zext_ln144 { ap_none {  { zext_ln144 in_data 0 9 } } }
	conv2_out { ap_memory {  { conv2_out_address0 mem_address 1 5 }  { conv2_out_ce0 mem_ce 1 1 }  { conv2_out_q0 mem_dout 0 15 } } }
	conv2_out_1 { ap_memory {  { conv2_out_1_address0 mem_address 1 5 }  { conv2_out_1_ce0 mem_ce 1 1 }  { conv2_out_1_q0 mem_dout 0 15 } } }
	conv2_out_2 { ap_memory {  { conv2_out_2_address0 mem_address 1 5 }  { conv2_out_2_ce0 mem_ce 1 1 }  { conv2_out_2_q0 mem_dout 0 15 } } }
	conv2_out_3 { ap_memory {  { conv2_out_3_address0 mem_address 1 5 }  { conv2_out_3_ce0 mem_ce 1 1 }  { conv2_out_3_q0 mem_dout 0 15 } } }
	conv2_out_4 { ap_memory {  { conv2_out_4_address0 mem_address 1 5 }  { conv2_out_4_ce0 mem_ce 1 1 }  { conv2_out_4_q0 mem_dout 0 15 } } }
	conv2_out_5 { ap_memory {  { conv2_out_5_address0 mem_address 1 5 }  { conv2_out_5_ce0 mem_ce 1 1 }  { conv2_out_5_q0 mem_dout 0 15 } } }
	conv2_out_6 { ap_memory {  { conv2_out_6_address0 mem_address 1 5 }  { conv2_out_6_ce0 mem_ce 1 1 }  { conv2_out_6_q0 mem_dout 0 15 } } }
	conv2_out_7 { ap_memory {  { conv2_out_7_address0 mem_address 1 5 }  { conv2_out_7_ce0 mem_ce 1 1 }  { conv2_out_7_q0 mem_dout 0 15 } } }
	conv2_out_8 { ap_memory {  { conv2_out_8_address0 mem_address 1 5 }  { conv2_out_8_ce0 mem_ce 1 1 }  { conv2_out_8_q0 mem_dout 0 15 } } }
	conv2_out_9 { ap_memory {  { conv2_out_9_address0 mem_address 1 5 }  { conv2_out_9_ce0 mem_ce 1 1 }  { conv2_out_9_q0 mem_dout 0 15 } } }
	i_1 { ap_none {  { i_1 in_data 0 4 } } }
	dbg_gap0 { ap_vld {  { dbg_gap0 out_data 1 16 }  { dbg_gap0_ap_vld out_vld 1 1 } } }
	final_scores_9_out { ap_vld {  { final_scores_9_out out_data 1 16 }  { final_scores_9_out_ap_vld out_vld 1 1 } } }
}
