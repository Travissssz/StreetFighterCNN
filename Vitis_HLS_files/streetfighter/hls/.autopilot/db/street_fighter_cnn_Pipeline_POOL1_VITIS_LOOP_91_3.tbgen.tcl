set moduleName street_fighter_cnn_Pipeline_POOL1_VITIS_LOOP_91_3
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
set C_modelName {street_fighter_cnn_Pipeline_POOL1_VITIS_LOOP_91_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict pool1_out { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pool1_out_1 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pool1_out_2 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pool1_out_3 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pool1_out_4 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pool1_out_5 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv1_out { MEM_WIDTH 15 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict conv1_out_1 { MEM_WIDTH 15 MEM_SIZE 1280 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ pool1_out int 15 regular {array 128 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pool1_out_1 int 15 regular {array 128 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pool1_out_2 int 15 regular {array 128 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pool1_out_3 int 15 regular {array 128 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pool1_out_4 int 15 regular {array 128 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ pool1_out_5 int 15 regular {array 128 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ conv1_out int 15 regular {array 640 { 1 1 } 1 1 }  }
	{ conv1_out_1 int 15 regular {array 640 { 1 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "pool1_out", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool1_out_1", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool1_out_2", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool1_out_3", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool1_out_4", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool1_out_5", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv1_out", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_out_1", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pool1_out_address0 sc_out sc_lv 7 signal 0 } 
	{ pool1_out_ce0 sc_out sc_logic 1 signal 0 } 
	{ pool1_out_we0 sc_out sc_logic 1 signal 0 } 
	{ pool1_out_d0 sc_out sc_lv 15 signal 0 } 
	{ pool1_out_1_address0 sc_out sc_lv 7 signal 1 } 
	{ pool1_out_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ pool1_out_1_we0 sc_out sc_logic 1 signal 1 } 
	{ pool1_out_1_d0 sc_out sc_lv 15 signal 1 } 
	{ pool1_out_2_address0 sc_out sc_lv 7 signal 2 } 
	{ pool1_out_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ pool1_out_2_we0 sc_out sc_logic 1 signal 2 } 
	{ pool1_out_2_d0 sc_out sc_lv 15 signal 2 } 
	{ pool1_out_3_address0 sc_out sc_lv 7 signal 3 } 
	{ pool1_out_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ pool1_out_3_we0 sc_out sc_logic 1 signal 3 } 
	{ pool1_out_3_d0 sc_out sc_lv 15 signal 3 } 
	{ pool1_out_4_address0 sc_out sc_lv 7 signal 4 } 
	{ pool1_out_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ pool1_out_4_we0 sc_out sc_logic 1 signal 4 } 
	{ pool1_out_4_d0 sc_out sc_lv 15 signal 4 } 
	{ pool1_out_5_address0 sc_out sc_lv 7 signal 5 } 
	{ pool1_out_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ pool1_out_5_we0 sc_out sc_logic 1 signal 5 } 
	{ pool1_out_5_d0 sc_out sc_lv 15 signal 5 } 
	{ conv1_out_address0 sc_out sc_lv 10 signal 6 } 
	{ conv1_out_ce0 sc_out sc_logic 1 signal 6 } 
	{ conv1_out_q0 sc_in sc_lv 15 signal 6 } 
	{ conv1_out_address1 sc_out sc_lv 10 signal 6 } 
	{ conv1_out_ce1 sc_out sc_logic 1 signal 6 } 
	{ conv1_out_q1 sc_in sc_lv 15 signal 6 } 
	{ conv1_out_1_address0 sc_out sc_lv 10 signal 7 } 
	{ conv1_out_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ conv1_out_1_q0 sc_in sc_lv 15 signal 7 } 
	{ conv1_out_1_address1 sc_out sc_lv 10 signal 7 } 
	{ conv1_out_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ conv1_out_1_q1 sc_in sc_lv 15 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pool1_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address0" }} , 
 	{ "name": "pool1_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce0" }} , 
 	{ "name": "pool1_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "we0" }} , 
 	{ "name": "pool1_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "d0" }} , 
 	{ "name": "pool1_out_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address0" }} , 
 	{ "name": "pool1_out_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce0" }} , 
 	{ "name": "pool1_out_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "we0" }} , 
 	{ "name": "pool1_out_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "d0" }} , 
 	{ "name": "pool1_out_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address0" }} , 
 	{ "name": "pool1_out_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce0" }} , 
 	{ "name": "pool1_out_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "we0" }} , 
 	{ "name": "pool1_out_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "d0" }} , 
 	{ "name": "pool1_out_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address0" }} , 
 	{ "name": "pool1_out_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce0" }} , 
 	{ "name": "pool1_out_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "we0" }} , 
 	{ "name": "pool1_out_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "d0" }} , 
 	{ "name": "pool1_out_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address0" }} , 
 	{ "name": "pool1_out_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce0" }} , 
 	{ "name": "pool1_out_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "we0" }} , 
 	{ "name": "pool1_out_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "d0" }} , 
 	{ "name": "pool1_out_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address0" }} , 
 	{ "name": "pool1_out_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce0" }} , 
 	{ "name": "pool1_out_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "we0" }} , 
 	{ "name": "pool1_out_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "d0" }} , 
 	{ "name": "conv1_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv1_out", "role": "address0" }} , 
 	{ "name": "conv1_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_out", "role": "ce0" }} , 
 	{ "name": "conv1_out_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv1_out", "role": "q0" }} , 
 	{ "name": "conv1_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv1_out", "role": "address1" }} , 
 	{ "name": "conv1_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_out", "role": "ce1" }} , 
 	{ "name": "conv1_out_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv1_out", "role": "q1" }} , 
 	{ "name": "conv1_out_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv1_out_1", "role": "address0" }} , 
 	{ "name": "conv1_out_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_out_1", "role": "ce0" }} , 
 	{ "name": "conv1_out_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv1_out_1", "role": "q0" }} , 
 	{ "name": "conv1_out_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv1_out_1", "role": "address1" }} , 
 	{ "name": "conv1_out_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv1_out_1", "role": "ce1" }} , 
 	{ "name": "conv1_out_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv1_out_1", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	street_fighter_cnn_Pipeline_POOL1_VITIS_LOOP_91_3 {
		pool1_out {Type O LastRead -1 FirstWrite 7}
		pool1_out_1 {Type O LastRead -1 FirstWrite 7}
		pool1_out_2 {Type O LastRead -1 FirstWrite 7}
		pool1_out_3 {Type O LastRead -1 FirstWrite 7}
		pool1_out_4 {Type O LastRead -1 FirstWrite 7}
		pool1_out_5 {Type O LastRead -1 FirstWrite 7}
		conv1_out {Type I LastRead 7 FirstWrite -1}
		conv1_out_1 {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "648", "Max" : "648"}
	, {"Name" : "Interval", "Min" : "641", "Max" : "641"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pool1_out { ap_memory {  { pool1_out_address0 mem_address 1 7 }  { pool1_out_ce0 mem_ce 1 1 }  { pool1_out_we0 mem_we 1 1 }  { pool1_out_d0 mem_din 1 15 } } }
	pool1_out_1 { ap_memory {  { pool1_out_1_address0 mem_address 1 7 }  { pool1_out_1_ce0 mem_ce 1 1 }  { pool1_out_1_we0 mem_we 1 1 }  { pool1_out_1_d0 mem_din 1 15 } } }
	pool1_out_2 { ap_memory {  { pool1_out_2_address0 mem_address 1 7 }  { pool1_out_2_ce0 mem_ce 1 1 }  { pool1_out_2_we0 mem_we 1 1 }  { pool1_out_2_d0 mem_din 1 15 } } }
	pool1_out_3 { ap_memory {  { pool1_out_3_address0 mem_address 1 7 }  { pool1_out_3_ce0 mem_ce 1 1 }  { pool1_out_3_we0 mem_we 1 1 }  { pool1_out_3_d0 mem_din 1 15 } } }
	pool1_out_4 { ap_memory {  { pool1_out_4_address0 mem_address 1 7 }  { pool1_out_4_ce0 mem_ce 1 1 }  { pool1_out_4_we0 mem_we 1 1 }  { pool1_out_4_d0 mem_din 1 15 } } }
	pool1_out_5 { ap_memory {  { pool1_out_5_address0 mem_address 1 7 }  { pool1_out_5_ce0 mem_ce 1 1 }  { pool1_out_5_we0 mem_we 1 1 }  { pool1_out_5_d0 mem_din 1 15 } } }
	conv1_out { ap_memory {  { conv1_out_address0 mem_address 1 10 }  { conv1_out_ce0 mem_ce 1 1 }  { conv1_out_q0 mem_dout 0 15 }  { conv1_out_address1 MemPortADDR2 1 10 }  { conv1_out_ce1 MemPortCE2 1 1 }  { conv1_out_q1 MemPortDOUT2 0 15 } } }
	conv1_out_1 { ap_memory {  { conv1_out_1_address0 mem_address 1 10 }  { conv1_out_1_ce0 mem_ce 1 1 }  { conv1_out_1_q0 mem_dout 0 15 }  { conv1_out_1_address1 MemPortADDR2 1 10 }  { conv1_out_1_ce1 MemPortCE2 1 1 }  { conv1_out_1_q1 MemPortDOUT2 0 15 } } }
}
