set moduleName street_fighter_cnn_Pipeline_CONV2_OUT_VITIS_LOOP_114_4
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
set C_modelName {street_fighter_cnn_Pipeline_CONV2_OUT_VITIS_LOOP_114_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict conv2_out { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv2_out_1 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv2_out_2 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv2_out_3 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv2_out_4 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv2_out_5 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv2_out_6 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv2_out_7 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv2_out_8 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict conv2_out_9 { MEM_WIDTH 15 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pool1_out { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pool1_out_1 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pool1_out_2 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pool1_out_3 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pool1_out_4 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pool1_out_5 { MEM_WIDTH 15 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ conv2_out int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ conv2_out_1 int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ conv2_out_2 int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ conv2_out_3 int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ conv2_out_4 int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ conv2_out_5 int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ conv2_out_6 int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ conv2_out_7 int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ conv2_out_8 int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ conv2_out_9 int 15 regular {array 32 { 0 3 } 0 1 }  }
	{ pool1_out int 15 regular {array 128 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 } 1 1 }  }
	{ pool1_out_1 int 15 regular {array 128 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 } 1 1 }  }
	{ pool1_out_2 int 15 regular {array 128 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 } 1 1 }  }
	{ pool1_out_3 int 15 regular {array 128 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 } 1 1 }  }
	{ pool1_out_4 int 15 regular {array 128 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 } 1 1 }  }
	{ pool1_out_5 int 15 regular {array 128 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "conv2_out", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2_out_1", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2_out_2", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2_out_3", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2_out_4", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2_out_5", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2_out_6", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2_out_7", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2_out_8", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2_out_9", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pool1_out", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "pool1_out_1", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "pool1_out_2", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "pool1_out_3", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "pool1_out_4", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "pool1_out_5", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 352
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv2_out_address0 sc_out sc_lv 5 signal 0 } 
	{ conv2_out_ce0 sc_out sc_logic 1 signal 0 } 
	{ conv2_out_we0 sc_out sc_logic 1 signal 0 } 
	{ conv2_out_d0 sc_out sc_lv 15 signal 0 } 
	{ conv2_out_1_address0 sc_out sc_lv 5 signal 1 } 
	{ conv2_out_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv2_out_1_we0 sc_out sc_logic 1 signal 1 } 
	{ conv2_out_1_d0 sc_out sc_lv 15 signal 1 } 
	{ conv2_out_2_address0 sc_out sc_lv 5 signal 2 } 
	{ conv2_out_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv2_out_2_we0 sc_out sc_logic 1 signal 2 } 
	{ conv2_out_2_d0 sc_out sc_lv 15 signal 2 } 
	{ conv2_out_3_address0 sc_out sc_lv 5 signal 3 } 
	{ conv2_out_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ conv2_out_3_we0 sc_out sc_logic 1 signal 3 } 
	{ conv2_out_3_d0 sc_out sc_lv 15 signal 3 } 
	{ conv2_out_4_address0 sc_out sc_lv 5 signal 4 } 
	{ conv2_out_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ conv2_out_4_we0 sc_out sc_logic 1 signal 4 } 
	{ conv2_out_4_d0 sc_out sc_lv 15 signal 4 } 
	{ conv2_out_5_address0 sc_out sc_lv 5 signal 5 } 
	{ conv2_out_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ conv2_out_5_we0 sc_out sc_logic 1 signal 5 } 
	{ conv2_out_5_d0 sc_out sc_lv 15 signal 5 } 
	{ conv2_out_6_address0 sc_out sc_lv 5 signal 6 } 
	{ conv2_out_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ conv2_out_6_we0 sc_out sc_logic 1 signal 6 } 
	{ conv2_out_6_d0 sc_out sc_lv 15 signal 6 } 
	{ conv2_out_7_address0 sc_out sc_lv 5 signal 7 } 
	{ conv2_out_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ conv2_out_7_we0 sc_out sc_logic 1 signal 7 } 
	{ conv2_out_7_d0 sc_out sc_lv 15 signal 7 } 
	{ conv2_out_8_address0 sc_out sc_lv 5 signal 8 } 
	{ conv2_out_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ conv2_out_8_we0 sc_out sc_logic 1 signal 8 } 
	{ conv2_out_8_d0 sc_out sc_lv 15 signal 8 } 
	{ conv2_out_9_address0 sc_out sc_lv 5 signal 9 } 
	{ conv2_out_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ conv2_out_9_we0 sc_out sc_logic 1 signal 9 } 
	{ conv2_out_9_d0 sc_out sc_lv 15 signal 9 } 
	{ pool1_out_address0 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce0 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q0 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address1 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce1 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q1 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address2 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce2 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q2 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address3 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce3 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q3 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address4 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce4 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q4 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address5 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce5 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q5 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address6 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce6 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q6 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address7 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce7 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q7 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address8 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce8 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q8 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address9 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce9 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q9 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address10 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce10 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q10 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address11 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce11 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q11 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address12 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce12 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q12 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address13 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce13 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q13 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address14 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce14 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q14 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address15 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce15 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q15 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_address16 sc_out sc_lv 7 signal 10 } 
	{ pool1_out_ce16 sc_out sc_logic 1 signal 10 } 
	{ pool1_out_q16 sc_in sc_lv 15 signal 10 } 
	{ pool1_out_1_address0 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q0 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address1 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q1 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address2 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce2 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q2 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address3 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce3 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q3 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address4 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce4 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q4 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address5 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce5 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q5 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address6 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce6 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q6 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address7 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce7 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q7 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address8 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce8 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q8 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address9 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce9 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q9 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address10 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce10 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q10 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address11 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce11 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q11 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address12 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce12 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q12 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address13 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce13 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q13 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address14 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce14 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q14 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address15 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce15 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q15 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_1_address16 sc_out sc_lv 7 signal 11 } 
	{ pool1_out_1_ce16 sc_out sc_logic 1 signal 11 } 
	{ pool1_out_1_q16 sc_in sc_lv 15 signal 11 } 
	{ pool1_out_2_address0 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q0 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address1 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q1 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address2 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce2 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q2 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address3 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce3 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q3 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address4 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce4 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q4 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address5 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce5 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q5 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address6 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce6 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q6 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address7 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce7 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q7 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address8 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce8 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q8 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address9 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce9 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q9 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address10 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce10 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q10 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address11 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce11 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q11 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address12 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce12 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q12 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address13 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce13 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q13 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address14 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce14 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q14 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address15 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce15 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q15 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_2_address16 sc_out sc_lv 7 signal 12 } 
	{ pool1_out_2_ce16 sc_out sc_logic 1 signal 12 } 
	{ pool1_out_2_q16 sc_in sc_lv 15 signal 12 } 
	{ pool1_out_3_address0 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q0 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address1 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce1 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q1 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address2 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce2 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q2 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address3 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce3 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q3 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address4 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce4 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q4 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address5 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce5 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q5 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address6 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce6 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q6 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address7 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce7 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q7 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address8 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce8 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q8 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address9 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce9 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q9 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address10 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce10 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q10 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address11 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce11 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q11 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address12 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce12 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q12 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address13 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce13 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q13 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address14 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce14 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q14 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address15 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce15 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q15 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_3_address16 sc_out sc_lv 7 signal 13 } 
	{ pool1_out_3_ce16 sc_out sc_logic 1 signal 13 } 
	{ pool1_out_3_q16 sc_in sc_lv 15 signal 13 } 
	{ pool1_out_4_address0 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce0 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q0 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address1 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce1 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q1 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address2 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce2 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q2 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address3 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce3 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q3 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address4 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce4 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q4 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address5 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce5 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q5 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address6 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce6 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q6 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address7 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce7 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q7 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address8 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce8 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q8 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address9 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce9 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q9 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address10 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce10 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q10 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address11 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce11 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q11 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address12 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce12 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q12 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address13 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce13 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q13 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address14 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce14 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q14 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address15 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce15 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q15 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_4_address16 sc_out sc_lv 7 signal 14 } 
	{ pool1_out_4_ce16 sc_out sc_logic 1 signal 14 } 
	{ pool1_out_4_q16 sc_in sc_lv 15 signal 14 } 
	{ pool1_out_5_address0 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce0 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q0 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address1 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce1 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q1 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address2 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce2 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q2 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address3 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce3 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q3 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address4 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce4 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q4 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address5 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce5 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q5 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address6 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce6 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q6 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address7 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce7 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q7 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address8 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce8 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q8 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address9 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce9 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q9 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address10 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce10 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q10 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address11 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce11 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q11 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address12 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce12 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q12 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address13 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce13 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q13 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address14 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce14 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q14 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address15 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce15 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q15 sc_in sc_lv 15 signal 15 } 
	{ pool1_out_5_address16 sc_out sc_lv 7 signal 15 } 
	{ pool1_out_5_ce16 sc_out sc_logic 1 signal 15 } 
	{ pool1_out_5_q16 sc_in sc_lv 15 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out", "role": "address0" }} , 
 	{ "name": "conv2_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out", "role": "ce0" }} , 
 	{ "name": "conv2_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out", "role": "we0" }} , 
 	{ "name": "conv2_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out", "role": "d0" }} , 
 	{ "name": "conv2_out_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_1", "role": "address0" }} , 
 	{ "name": "conv2_out_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_1", "role": "ce0" }} , 
 	{ "name": "conv2_out_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_1", "role": "we0" }} , 
 	{ "name": "conv2_out_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_1", "role": "d0" }} , 
 	{ "name": "conv2_out_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_2", "role": "address0" }} , 
 	{ "name": "conv2_out_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_2", "role": "ce0" }} , 
 	{ "name": "conv2_out_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_2", "role": "we0" }} , 
 	{ "name": "conv2_out_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_2", "role": "d0" }} , 
 	{ "name": "conv2_out_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_3", "role": "address0" }} , 
 	{ "name": "conv2_out_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_3", "role": "ce0" }} , 
 	{ "name": "conv2_out_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_3", "role": "we0" }} , 
 	{ "name": "conv2_out_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_3", "role": "d0" }} , 
 	{ "name": "conv2_out_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_4", "role": "address0" }} , 
 	{ "name": "conv2_out_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_4", "role": "ce0" }} , 
 	{ "name": "conv2_out_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_4", "role": "we0" }} , 
 	{ "name": "conv2_out_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_4", "role": "d0" }} , 
 	{ "name": "conv2_out_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_5", "role": "address0" }} , 
 	{ "name": "conv2_out_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_5", "role": "ce0" }} , 
 	{ "name": "conv2_out_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_5", "role": "we0" }} , 
 	{ "name": "conv2_out_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_5", "role": "d0" }} , 
 	{ "name": "conv2_out_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_6", "role": "address0" }} , 
 	{ "name": "conv2_out_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_6", "role": "ce0" }} , 
 	{ "name": "conv2_out_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_6", "role": "we0" }} , 
 	{ "name": "conv2_out_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_6", "role": "d0" }} , 
 	{ "name": "conv2_out_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_7", "role": "address0" }} , 
 	{ "name": "conv2_out_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_7", "role": "ce0" }} , 
 	{ "name": "conv2_out_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_7", "role": "we0" }} , 
 	{ "name": "conv2_out_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_7", "role": "d0" }} , 
 	{ "name": "conv2_out_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_8", "role": "address0" }} , 
 	{ "name": "conv2_out_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_8", "role": "ce0" }} , 
 	{ "name": "conv2_out_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_8", "role": "we0" }} , 
 	{ "name": "conv2_out_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_8", "role": "d0" }} , 
 	{ "name": "conv2_out_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "conv2_out_9", "role": "address0" }} , 
 	{ "name": "conv2_out_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_9", "role": "ce0" }} , 
 	{ "name": "conv2_out_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_out_9", "role": "we0" }} , 
 	{ "name": "conv2_out_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2_out_9", "role": "d0" }} , 
 	{ "name": "pool1_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address0" }} , 
 	{ "name": "pool1_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce0" }} , 
 	{ "name": "pool1_out_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q0" }} , 
 	{ "name": "pool1_out_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address1" }} , 
 	{ "name": "pool1_out_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce1" }} , 
 	{ "name": "pool1_out_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q1" }} , 
 	{ "name": "pool1_out_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address2" }} , 
 	{ "name": "pool1_out_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce2" }} , 
 	{ "name": "pool1_out_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q2" }} , 
 	{ "name": "pool1_out_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address3" }} , 
 	{ "name": "pool1_out_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce3" }} , 
 	{ "name": "pool1_out_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q3" }} , 
 	{ "name": "pool1_out_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address4" }} , 
 	{ "name": "pool1_out_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce4" }} , 
 	{ "name": "pool1_out_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q4" }} , 
 	{ "name": "pool1_out_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address5" }} , 
 	{ "name": "pool1_out_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce5" }} , 
 	{ "name": "pool1_out_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q5" }} , 
 	{ "name": "pool1_out_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address6" }} , 
 	{ "name": "pool1_out_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce6" }} , 
 	{ "name": "pool1_out_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q6" }} , 
 	{ "name": "pool1_out_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address7" }} , 
 	{ "name": "pool1_out_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce7" }} , 
 	{ "name": "pool1_out_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q7" }} , 
 	{ "name": "pool1_out_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address8" }} , 
 	{ "name": "pool1_out_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce8" }} , 
 	{ "name": "pool1_out_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q8" }} , 
 	{ "name": "pool1_out_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address9" }} , 
 	{ "name": "pool1_out_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce9" }} , 
 	{ "name": "pool1_out_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q9" }} , 
 	{ "name": "pool1_out_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address10" }} , 
 	{ "name": "pool1_out_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce10" }} , 
 	{ "name": "pool1_out_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q10" }} , 
 	{ "name": "pool1_out_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address11" }} , 
 	{ "name": "pool1_out_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce11" }} , 
 	{ "name": "pool1_out_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q11" }} , 
 	{ "name": "pool1_out_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address12" }} , 
 	{ "name": "pool1_out_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce12" }} , 
 	{ "name": "pool1_out_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q12" }} , 
 	{ "name": "pool1_out_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address13" }} , 
 	{ "name": "pool1_out_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce13" }} , 
 	{ "name": "pool1_out_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q13" }} , 
 	{ "name": "pool1_out_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address14" }} , 
 	{ "name": "pool1_out_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce14" }} , 
 	{ "name": "pool1_out_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q14" }} , 
 	{ "name": "pool1_out_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address15" }} , 
 	{ "name": "pool1_out_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce15" }} , 
 	{ "name": "pool1_out_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q15" }} , 
 	{ "name": "pool1_out_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out", "role": "address16" }} , 
 	{ "name": "pool1_out_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out", "role": "ce16" }} , 
 	{ "name": "pool1_out_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out", "role": "q16" }} , 
 	{ "name": "pool1_out_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address0" }} , 
 	{ "name": "pool1_out_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce0" }} , 
 	{ "name": "pool1_out_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q0" }} , 
 	{ "name": "pool1_out_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address1" }} , 
 	{ "name": "pool1_out_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce1" }} , 
 	{ "name": "pool1_out_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q1" }} , 
 	{ "name": "pool1_out_1_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address2" }} , 
 	{ "name": "pool1_out_1_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce2" }} , 
 	{ "name": "pool1_out_1_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q2" }} , 
 	{ "name": "pool1_out_1_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address3" }} , 
 	{ "name": "pool1_out_1_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce3" }} , 
 	{ "name": "pool1_out_1_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q3" }} , 
 	{ "name": "pool1_out_1_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address4" }} , 
 	{ "name": "pool1_out_1_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce4" }} , 
 	{ "name": "pool1_out_1_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q4" }} , 
 	{ "name": "pool1_out_1_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address5" }} , 
 	{ "name": "pool1_out_1_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce5" }} , 
 	{ "name": "pool1_out_1_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q5" }} , 
 	{ "name": "pool1_out_1_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address6" }} , 
 	{ "name": "pool1_out_1_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce6" }} , 
 	{ "name": "pool1_out_1_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q6" }} , 
 	{ "name": "pool1_out_1_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address7" }} , 
 	{ "name": "pool1_out_1_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce7" }} , 
 	{ "name": "pool1_out_1_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q7" }} , 
 	{ "name": "pool1_out_1_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address8" }} , 
 	{ "name": "pool1_out_1_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce8" }} , 
 	{ "name": "pool1_out_1_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q8" }} , 
 	{ "name": "pool1_out_1_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address9" }} , 
 	{ "name": "pool1_out_1_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce9" }} , 
 	{ "name": "pool1_out_1_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q9" }} , 
 	{ "name": "pool1_out_1_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address10" }} , 
 	{ "name": "pool1_out_1_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce10" }} , 
 	{ "name": "pool1_out_1_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q10" }} , 
 	{ "name": "pool1_out_1_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address11" }} , 
 	{ "name": "pool1_out_1_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce11" }} , 
 	{ "name": "pool1_out_1_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q11" }} , 
 	{ "name": "pool1_out_1_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address12" }} , 
 	{ "name": "pool1_out_1_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce12" }} , 
 	{ "name": "pool1_out_1_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q12" }} , 
 	{ "name": "pool1_out_1_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address13" }} , 
 	{ "name": "pool1_out_1_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce13" }} , 
 	{ "name": "pool1_out_1_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q13" }} , 
 	{ "name": "pool1_out_1_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address14" }} , 
 	{ "name": "pool1_out_1_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce14" }} , 
 	{ "name": "pool1_out_1_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q14" }} , 
 	{ "name": "pool1_out_1_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address15" }} , 
 	{ "name": "pool1_out_1_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce15" }} , 
 	{ "name": "pool1_out_1_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q15" }} , 
 	{ "name": "pool1_out_1_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "address16" }} , 
 	{ "name": "pool1_out_1_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "ce16" }} , 
 	{ "name": "pool1_out_1_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_1", "role": "q16" }} , 
 	{ "name": "pool1_out_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address0" }} , 
 	{ "name": "pool1_out_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce0" }} , 
 	{ "name": "pool1_out_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q0" }} , 
 	{ "name": "pool1_out_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address1" }} , 
 	{ "name": "pool1_out_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce1" }} , 
 	{ "name": "pool1_out_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q1" }} , 
 	{ "name": "pool1_out_2_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address2" }} , 
 	{ "name": "pool1_out_2_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce2" }} , 
 	{ "name": "pool1_out_2_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q2" }} , 
 	{ "name": "pool1_out_2_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address3" }} , 
 	{ "name": "pool1_out_2_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce3" }} , 
 	{ "name": "pool1_out_2_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q3" }} , 
 	{ "name": "pool1_out_2_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address4" }} , 
 	{ "name": "pool1_out_2_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce4" }} , 
 	{ "name": "pool1_out_2_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q4" }} , 
 	{ "name": "pool1_out_2_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address5" }} , 
 	{ "name": "pool1_out_2_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce5" }} , 
 	{ "name": "pool1_out_2_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q5" }} , 
 	{ "name": "pool1_out_2_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address6" }} , 
 	{ "name": "pool1_out_2_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce6" }} , 
 	{ "name": "pool1_out_2_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q6" }} , 
 	{ "name": "pool1_out_2_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address7" }} , 
 	{ "name": "pool1_out_2_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce7" }} , 
 	{ "name": "pool1_out_2_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q7" }} , 
 	{ "name": "pool1_out_2_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address8" }} , 
 	{ "name": "pool1_out_2_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce8" }} , 
 	{ "name": "pool1_out_2_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q8" }} , 
 	{ "name": "pool1_out_2_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address9" }} , 
 	{ "name": "pool1_out_2_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce9" }} , 
 	{ "name": "pool1_out_2_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q9" }} , 
 	{ "name": "pool1_out_2_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address10" }} , 
 	{ "name": "pool1_out_2_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce10" }} , 
 	{ "name": "pool1_out_2_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q10" }} , 
 	{ "name": "pool1_out_2_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address11" }} , 
 	{ "name": "pool1_out_2_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce11" }} , 
 	{ "name": "pool1_out_2_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q11" }} , 
 	{ "name": "pool1_out_2_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address12" }} , 
 	{ "name": "pool1_out_2_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce12" }} , 
 	{ "name": "pool1_out_2_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q12" }} , 
 	{ "name": "pool1_out_2_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address13" }} , 
 	{ "name": "pool1_out_2_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce13" }} , 
 	{ "name": "pool1_out_2_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q13" }} , 
 	{ "name": "pool1_out_2_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address14" }} , 
 	{ "name": "pool1_out_2_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce14" }} , 
 	{ "name": "pool1_out_2_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q14" }} , 
 	{ "name": "pool1_out_2_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address15" }} , 
 	{ "name": "pool1_out_2_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce15" }} , 
 	{ "name": "pool1_out_2_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q15" }} , 
 	{ "name": "pool1_out_2_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "address16" }} , 
 	{ "name": "pool1_out_2_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "ce16" }} , 
 	{ "name": "pool1_out_2_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_2", "role": "q16" }} , 
 	{ "name": "pool1_out_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address0" }} , 
 	{ "name": "pool1_out_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce0" }} , 
 	{ "name": "pool1_out_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q0" }} , 
 	{ "name": "pool1_out_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address1" }} , 
 	{ "name": "pool1_out_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce1" }} , 
 	{ "name": "pool1_out_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q1" }} , 
 	{ "name": "pool1_out_3_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address2" }} , 
 	{ "name": "pool1_out_3_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce2" }} , 
 	{ "name": "pool1_out_3_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q2" }} , 
 	{ "name": "pool1_out_3_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address3" }} , 
 	{ "name": "pool1_out_3_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce3" }} , 
 	{ "name": "pool1_out_3_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q3" }} , 
 	{ "name": "pool1_out_3_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address4" }} , 
 	{ "name": "pool1_out_3_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce4" }} , 
 	{ "name": "pool1_out_3_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q4" }} , 
 	{ "name": "pool1_out_3_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address5" }} , 
 	{ "name": "pool1_out_3_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce5" }} , 
 	{ "name": "pool1_out_3_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q5" }} , 
 	{ "name": "pool1_out_3_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address6" }} , 
 	{ "name": "pool1_out_3_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce6" }} , 
 	{ "name": "pool1_out_3_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q6" }} , 
 	{ "name": "pool1_out_3_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address7" }} , 
 	{ "name": "pool1_out_3_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce7" }} , 
 	{ "name": "pool1_out_3_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q7" }} , 
 	{ "name": "pool1_out_3_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address8" }} , 
 	{ "name": "pool1_out_3_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce8" }} , 
 	{ "name": "pool1_out_3_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q8" }} , 
 	{ "name": "pool1_out_3_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address9" }} , 
 	{ "name": "pool1_out_3_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce9" }} , 
 	{ "name": "pool1_out_3_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q9" }} , 
 	{ "name": "pool1_out_3_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address10" }} , 
 	{ "name": "pool1_out_3_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce10" }} , 
 	{ "name": "pool1_out_3_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q10" }} , 
 	{ "name": "pool1_out_3_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address11" }} , 
 	{ "name": "pool1_out_3_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce11" }} , 
 	{ "name": "pool1_out_3_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q11" }} , 
 	{ "name": "pool1_out_3_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address12" }} , 
 	{ "name": "pool1_out_3_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce12" }} , 
 	{ "name": "pool1_out_3_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q12" }} , 
 	{ "name": "pool1_out_3_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address13" }} , 
 	{ "name": "pool1_out_3_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce13" }} , 
 	{ "name": "pool1_out_3_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q13" }} , 
 	{ "name": "pool1_out_3_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address14" }} , 
 	{ "name": "pool1_out_3_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce14" }} , 
 	{ "name": "pool1_out_3_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q14" }} , 
 	{ "name": "pool1_out_3_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address15" }} , 
 	{ "name": "pool1_out_3_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce15" }} , 
 	{ "name": "pool1_out_3_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q15" }} , 
 	{ "name": "pool1_out_3_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "address16" }} , 
 	{ "name": "pool1_out_3_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "ce16" }} , 
 	{ "name": "pool1_out_3_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_3", "role": "q16" }} , 
 	{ "name": "pool1_out_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address0" }} , 
 	{ "name": "pool1_out_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce0" }} , 
 	{ "name": "pool1_out_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q0" }} , 
 	{ "name": "pool1_out_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address1" }} , 
 	{ "name": "pool1_out_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce1" }} , 
 	{ "name": "pool1_out_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q1" }} , 
 	{ "name": "pool1_out_4_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address2" }} , 
 	{ "name": "pool1_out_4_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce2" }} , 
 	{ "name": "pool1_out_4_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q2" }} , 
 	{ "name": "pool1_out_4_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address3" }} , 
 	{ "name": "pool1_out_4_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce3" }} , 
 	{ "name": "pool1_out_4_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q3" }} , 
 	{ "name": "pool1_out_4_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address4" }} , 
 	{ "name": "pool1_out_4_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce4" }} , 
 	{ "name": "pool1_out_4_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q4" }} , 
 	{ "name": "pool1_out_4_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address5" }} , 
 	{ "name": "pool1_out_4_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce5" }} , 
 	{ "name": "pool1_out_4_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q5" }} , 
 	{ "name": "pool1_out_4_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address6" }} , 
 	{ "name": "pool1_out_4_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce6" }} , 
 	{ "name": "pool1_out_4_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q6" }} , 
 	{ "name": "pool1_out_4_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address7" }} , 
 	{ "name": "pool1_out_4_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce7" }} , 
 	{ "name": "pool1_out_4_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q7" }} , 
 	{ "name": "pool1_out_4_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address8" }} , 
 	{ "name": "pool1_out_4_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce8" }} , 
 	{ "name": "pool1_out_4_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q8" }} , 
 	{ "name": "pool1_out_4_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address9" }} , 
 	{ "name": "pool1_out_4_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce9" }} , 
 	{ "name": "pool1_out_4_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q9" }} , 
 	{ "name": "pool1_out_4_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address10" }} , 
 	{ "name": "pool1_out_4_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce10" }} , 
 	{ "name": "pool1_out_4_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q10" }} , 
 	{ "name": "pool1_out_4_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address11" }} , 
 	{ "name": "pool1_out_4_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce11" }} , 
 	{ "name": "pool1_out_4_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q11" }} , 
 	{ "name": "pool1_out_4_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address12" }} , 
 	{ "name": "pool1_out_4_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce12" }} , 
 	{ "name": "pool1_out_4_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q12" }} , 
 	{ "name": "pool1_out_4_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address13" }} , 
 	{ "name": "pool1_out_4_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce13" }} , 
 	{ "name": "pool1_out_4_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q13" }} , 
 	{ "name": "pool1_out_4_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address14" }} , 
 	{ "name": "pool1_out_4_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce14" }} , 
 	{ "name": "pool1_out_4_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q14" }} , 
 	{ "name": "pool1_out_4_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address15" }} , 
 	{ "name": "pool1_out_4_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce15" }} , 
 	{ "name": "pool1_out_4_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q15" }} , 
 	{ "name": "pool1_out_4_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "address16" }} , 
 	{ "name": "pool1_out_4_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "ce16" }} , 
 	{ "name": "pool1_out_4_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_4", "role": "q16" }} , 
 	{ "name": "pool1_out_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address0" }} , 
 	{ "name": "pool1_out_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce0" }} , 
 	{ "name": "pool1_out_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q0" }} , 
 	{ "name": "pool1_out_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address1" }} , 
 	{ "name": "pool1_out_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce1" }} , 
 	{ "name": "pool1_out_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q1" }} , 
 	{ "name": "pool1_out_5_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address2" }} , 
 	{ "name": "pool1_out_5_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce2" }} , 
 	{ "name": "pool1_out_5_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q2" }} , 
 	{ "name": "pool1_out_5_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address3" }} , 
 	{ "name": "pool1_out_5_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce3" }} , 
 	{ "name": "pool1_out_5_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q3" }} , 
 	{ "name": "pool1_out_5_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address4" }} , 
 	{ "name": "pool1_out_5_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce4" }} , 
 	{ "name": "pool1_out_5_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q4" }} , 
 	{ "name": "pool1_out_5_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address5" }} , 
 	{ "name": "pool1_out_5_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce5" }} , 
 	{ "name": "pool1_out_5_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q5" }} , 
 	{ "name": "pool1_out_5_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address6" }} , 
 	{ "name": "pool1_out_5_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce6" }} , 
 	{ "name": "pool1_out_5_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q6" }} , 
 	{ "name": "pool1_out_5_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address7" }} , 
 	{ "name": "pool1_out_5_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce7" }} , 
 	{ "name": "pool1_out_5_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q7" }} , 
 	{ "name": "pool1_out_5_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address8" }} , 
 	{ "name": "pool1_out_5_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce8" }} , 
 	{ "name": "pool1_out_5_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q8" }} , 
 	{ "name": "pool1_out_5_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address9" }} , 
 	{ "name": "pool1_out_5_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce9" }} , 
 	{ "name": "pool1_out_5_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q9" }} , 
 	{ "name": "pool1_out_5_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address10" }} , 
 	{ "name": "pool1_out_5_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce10" }} , 
 	{ "name": "pool1_out_5_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q10" }} , 
 	{ "name": "pool1_out_5_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address11" }} , 
 	{ "name": "pool1_out_5_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce11" }} , 
 	{ "name": "pool1_out_5_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q11" }} , 
 	{ "name": "pool1_out_5_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address12" }} , 
 	{ "name": "pool1_out_5_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce12" }} , 
 	{ "name": "pool1_out_5_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q12" }} , 
 	{ "name": "pool1_out_5_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address13" }} , 
 	{ "name": "pool1_out_5_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce13" }} , 
 	{ "name": "pool1_out_5_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q13" }} , 
 	{ "name": "pool1_out_5_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address14" }} , 
 	{ "name": "pool1_out_5_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce14" }} , 
 	{ "name": "pool1_out_5_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q14" }} , 
 	{ "name": "pool1_out_5_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address15" }} , 
 	{ "name": "pool1_out_5_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce15" }} , 
 	{ "name": "pool1_out_5_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q15" }} , 
 	{ "name": "pool1_out_5_address16", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "address16" }} , 
 	{ "name": "pool1_out_5_ce16", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "ce16" }} , 
 	{ "name": "pool1_out_5_q16", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "pool1_out_5", "role": "q16" }}  ]}

set ArgLastReadFirstWriteLatency {
	street_fighter_cnn_Pipeline_CONV2_OUT_VITIS_LOOP_114_4 {
		conv2_out {Type O LastRead -1 FirstWrite 29}
		conv2_out_1 {Type O LastRead -1 FirstWrite 29}
		conv2_out_2 {Type O LastRead -1 FirstWrite 29}
		conv2_out_3 {Type O LastRead -1 FirstWrite 29}
		conv2_out_4 {Type O LastRead -1 FirstWrite 29}
		conv2_out_5 {Type O LastRead -1 FirstWrite 29}
		conv2_out_6 {Type O LastRead -1 FirstWrite 29}
		conv2_out_7 {Type O LastRead -1 FirstWrite 29}
		conv2_out_8 {Type O LastRead -1 FirstWrite 29}
		conv2_out_9 {Type O LastRead -1 FirstWrite 29}
		pool1_out {Type I LastRead 10 FirstWrite -1}
		pool1_out_1 {Type I LastRead 10 FirstWrite -1}
		pool1_out_2 {Type I LastRead 10 FirstWrite -1}
		pool1_out_3 {Type I LastRead 10 FirstWrite -1}
		pool1_out_4 {Type I LastRead 10 FirstWrite -1}
		pool1_out_5 {Type I LastRead 10 FirstWrite -1}
		CONV2_B {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_4_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_4_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_4_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_5_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_5_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_5_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_6_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_6_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_6_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_7_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_7_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_7_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_8_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_8_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_8_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_9_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_9_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_9_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_10_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_10_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_10_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_11_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_11_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_11_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_12_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_12_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_12_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_13_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_13_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_13_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_14_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_14_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_14_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_15_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_15_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_15_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_16_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_16_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_16_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_17_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_17_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_17_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_18_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_18_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_18_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_19_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_19_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_19_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_20_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_20_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_20_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_21_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_21_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_21_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_22_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_22_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_22_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_23_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_23_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_23_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_24_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_24_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_24_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_25_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_25_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_25_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_26_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_26_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_26_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_27_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_27_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_27_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_28_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_28_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_28_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_29_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_29_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_29_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_30_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_30_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_30_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_31_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_31_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_31_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_32_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_32_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_32_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_33_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_33_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_33_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_34_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_34_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_34_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_35_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_35_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_35_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_36_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_36_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_36_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_37_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_37_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_37_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_38_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_38_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_38_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_39_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_39_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_39_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_40_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_40_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_40_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_41_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_41_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_41_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_42_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_42_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_42_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_43_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_43_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_43_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_44_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_44_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_44_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_45_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_45_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_45_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_46_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_46_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_46_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_47_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_47_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_47_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_48_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_48_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_48_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_49_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_49_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_49_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_50_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_50_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_50_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_51_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_51_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_51_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_52_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_52_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_52_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_53_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_53_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_53_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_54_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_54_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_54_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_55_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_55_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_55_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_56_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_56_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_56_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_57_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_57_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_57_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_58_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_58_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_58_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_59_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_59_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_59_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_60_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_60_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_60_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_61_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_61_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_61_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_62_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_62_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_62_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_63_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_63_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV2_W_63_2 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "988", "Max" : "988"}
	, {"Name" : "Interval", "Min" : "963", "Max" : "963"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv2_out { ap_memory {  { conv2_out_address0 mem_address 1 5 }  { conv2_out_ce0 mem_ce 1 1 }  { conv2_out_we0 mem_we 1 1 }  { conv2_out_d0 mem_din 1 15 } } }
	conv2_out_1 { ap_memory {  { conv2_out_1_address0 mem_address 1 5 }  { conv2_out_1_ce0 mem_ce 1 1 }  { conv2_out_1_we0 mem_we 1 1 }  { conv2_out_1_d0 mem_din 1 15 } } }
	conv2_out_2 { ap_memory {  { conv2_out_2_address0 mem_address 1 5 }  { conv2_out_2_ce0 mem_ce 1 1 }  { conv2_out_2_we0 mem_we 1 1 }  { conv2_out_2_d0 mem_din 1 15 } } }
	conv2_out_3 { ap_memory {  { conv2_out_3_address0 mem_address 1 5 }  { conv2_out_3_ce0 mem_ce 1 1 }  { conv2_out_3_we0 mem_we 1 1 }  { conv2_out_3_d0 mem_din 1 15 } } }
	conv2_out_4 { ap_memory {  { conv2_out_4_address0 mem_address 1 5 }  { conv2_out_4_ce0 mem_ce 1 1 }  { conv2_out_4_we0 mem_we 1 1 }  { conv2_out_4_d0 mem_din 1 15 } } }
	conv2_out_5 { ap_memory {  { conv2_out_5_address0 mem_address 1 5 }  { conv2_out_5_ce0 mem_ce 1 1 }  { conv2_out_5_we0 mem_we 1 1 }  { conv2_out_5_d0 mem_din 1 15 } } }
	conv2_out_6 { ap_memory {  { conv2_out_6_address0 mem_address 1 5 }  { conv2_out_6_ce0 mem_ce 1 1 }  { conv2_out_6_we0 mem_we 1 1 }  { conv2_out_6_d0 mem_din 1 15 } } }
	conv2_out_7 { ap_memory {  { conv2_out_7_address0 mem_address 1 5 }  { conv2_out_7_ce0 mem_ce 1 1 }  { conv2_out_7_we0 mem_we 1 1 }  { conv2_out_7_d0 mem_din 1 15 } } }
	conv2_out_8 { ap_memory {  { conv2_out_8_address0 mem_address 1 5 }  { conv2_out_8_ce0 mem_ce 1 1 }  { conv2_out_8_we0 mem_we 1 1 }  { conv2_out_8_d0 mem_din 1 15 } } }
	conv2_out_9 { ap_memory {  { conv2_out_9_address0 mem_address 1 5 }  { conv2_out_9_ce0 mem_ce 1 1 }  { conv2_out_9_we0 mem_we 1 1 }  { conv2_out_9_d0 mem_din 1 15 } } }
	pool1_out { ap_memory {  { pool1_out_address0 mem_address 1 7 }  { pool1_out_ce0 mem_ce 1 1 }  { pool1_out_q0 mem_dout 0 15 }  { pool1_out_address1 MemPortADDR2 1 7 }  { pool1_out_ce1 MemPortCE2 1 1 }  { pool1_out_q1 MemPortDOUT2 0 15 }  { pool1_out_address2 MemPortADDR2 1 7 }  { pool1_out_ce2 MemPortCE2 1 1 }  { pool1_out_q2 MemPortDOUT2 0 15 }  { pool1_out_address3 MemPortADDR2 1 7 }  { pool1_out_ce3 MemPortCE2 1 1 }  { pool1_out_q3 MemPortDOUT2 0 15 }  { pool1_out_address4 MemPortADDR2 1 7 }  { pool1_out_ce4 MemPortCE2 1 1 }  { pool1_out_q4 MemPortDOUT2 0 15 }  { pool1_out_address5 MemPortADDR2 1 7 }  { pool1_out_ce5 MemPortCE2 1 1 }  { pool1_out_q5 MemPortDOUT2 0 15 }  { pool1_out_address6 MemPortADDR2 1 7 }  { pool1_out_ce6 MemPortCE2 1 1 }  { pool1_out_q6 MemPortDOUT2 0 15 }  { pool1_out_address7 MemPortADDR2 1 7 }  { pool1_out_ce7 MemPortCE2 1 1 }  { pool1_out_q7 MemPortDOUT2 0 15 }  { pool1_out_address8 MemPortADDR2 1 7 }  { pool1_out_ce8 MemPortCE2 1 1 }  { pool1_out_q8 MemPortDOUT2 0 15 }  { pool1_out_address9 MemPortADDR2 1 7 }  { pool1_out_ce9 MemPortCE2 1 1 }  { pool1_out_q9 MemPortDOUT2 0 15 }  { pool1_out_address10 MemPortADDR2 1 7 }  { pool1_out_ce10 MemPortCE2 1 1 }  { pool1_out_q10 MemPortDOUT2 0 15 }  { pool1_out_address11 MemPortADDR2 1 7 }  { pool1_out_ce11 MemPortCE2 1 1 }  { pool1_out_q11 MemPortDOUT2 0 15 }  { pool1_out_address12 MemPortADDR2 1 7 }  { pool1_out_ce12 MemPortCE2 1 1 }  { pool1_out_q12 MemPortDOUT2 0 15 }  { pool1_out_address13 MemPortADDR2 1 7 }  { pool1_out_ce13 MemPortCE2 1 1 }  { pool1_out_q13 MemPortDOUT2 0 15 }  { pool1_out_address14 MemPortADDR2 1 7 }  { pool1_out_ce14 MemPortCE2 1 1 }  { pool1_out_q14 MemPortDOUT2 0 15 }  { pool1_out_address15 MemPortADDR2 1 7 }  { pool1_out_ce15 MemPortCE2 1 1 }  { pool1_out_q15 MemPortDOUT2 0 15 }  { pool1_out_address16 MemPortADDR2 1 7 }  { pool1_out_ce16 MemPortCE2 1 1 }  { pool1_out_q16 MemPortDOUT2 0 15 } } }
	pool1_out_1 { ap_memory {  { pool1_out_1_address0 mem_address 1 7 }  { pool1_out_1_ce0 mem_ce 1 1 }  { pool1_out_1_q0 mem_dout 0 15 }  { pool1_out_1_address1 MemPortADDR2 1 7 }  { pool1_out_1_ce1 MemPortCE2 1 1 }  { pool1_out_1_q1 MemPortDOUT2 0 15 }  { pool1_out_1_address2 MemPortADDR2 1 7 }  { pool1_out_1_ce2 MemPortCE2 1 1 }  { pool1_out_1_q2 MemPortDOUT2 0 15 }  { pool1_out_1_address3 MemPortADDR2 1 7 }  { pool1_out_1_ce3 MemPortCE2 1 1 }  { pool1_out_1_q3 MemPortDOUT2 0 15 }  { pool1_out_1_address4 MemPortADDR2 1 7 }  { pool1_out_1_ce4 MemPortCE2 1 1 }  { pool1_out_1_q4 MemPortDOUT2 0 15 }  { pool1_out_1_address5 MemPortADDR2 1 7 }  { pool1_out_1_ce5 MemPortCE2 1 1 }  { pool1_out_1_q5 MemPortDOUT2 0 15 }  { pool1_out_1_address6 MemPortADDR2 1 7 }  { pool1_out_1_ce6 MemPortCE2 1 1 }  { pool1_out_1_q6 MemPortDOUT2 0 15 }  { pool1_out_1_address7 MemPortADDR2 1 7 }  { pool1_out_1_ce7 MemPortCE2 1 1 }  { pool1_out_1_q7 MemPortDOUT2 0 15 }  { pool1_out_1_address8 MemPortADDR2 1 7 }  { pool1_out_1_ce8 MemPortCE2 1 1 }  { pool1_out_1_q8 MemPortDOUT2 0 15 }  { pool1_out_1_address9 MemPortADDR2 1 7 }  { pool1_out_1_ce9 MemPortCE2 1 1 }  { pool1_out_1_q9 MemPortDOUT2 0 15 }  { pool1_out_1_address10 MemPortADDR2 1 7 }  { pool1_out_1_ce10 MemPortCE2 1 1 }  { pool1_out_1_q10 MemPortDOUT2 0 15 }  { pool1_out_1_address11 MemPortADDR2 1 7 }  { pool1_out_1_ce11 MemPortCE2 1 1 }  { pool1_out_1_q11 MemPortDOUT2 0 15 }  { pool1_out_1_address12 MemPortADDR2 1 7 }  { pool1_out_1_ce12 MemPortCE2 1 1 }  { pool1_out_1_q12 MemPortDOUT2 0 15 }  { pool1_out_1_address13 MemPortADDR2 1 7 }  { pool1_out_1_ce13 MemPortCE2 1 1 }  { pool1_out_1_q13 MemPortDOUT2 0 15 }  { pool1_out_1_address14 MemPortADDR2 1 7 }  { pool1_out_1_ce14 MemPortCE2 1 1 }  { pool1_out_1_q14 MemPortDOUT2 0 15 }  { pool1_out_1_address15 MemPortADDR2 1 7 }  { pool1_out_1_ce15 MemPortCE2 1 1 }  { pool1_out_1_q15 MemPortDOUT2 0 15 }  { pool1_out_1_address16 MemPortADDR2 1 7 }  { pool1_out_1_ce16 MemPortCE2 1 1 }  { pool1_out_1_q16 MemPortDOUT2 0 15 } } }
	pool1_out_2 { ap_memory {  { pool1_out_2_address0 mem_address 1 7 }  { pool1_out_2_ce0 mem_ce 1 1 }  { pool1_out_2_q0 mem_dout 0 15 }  { pool1_out_2_address1 MemPortADDR2 1 7 }  { pool1_out_2_ce1 MemPortCE2 1 1 }  { pool1_out_2_q1 MemPortDOUT2 0 15 }  { pool1_out_2_address2 MemPortADDR2 1 7 }  { pool1_out_2_ce2 MemPortCE2 1 1 }  { pool1_out_2_q2 MemPortDOUT2 0 15 }  { pool1_out_2_address3 MemPortADDR2 1 7 }  { pool1_out_2_ce3 MemPortCE2 1 1 }  { pool1_out_2_q3 MemPortDOUT2 0 15 }  { pool1_out_2_address4 MemPortADDR2 1 7 }  { pool1_out_2_ce4 MemPortCE2 1 1 }  { pool1_out_2_q4 MemPortDOUT2 0 15 }  { pool1_out_2_address5 MemPortADDR2 1 7 }  { pool1_out_2_ce5 MemPortCE2 1 1 }  { pool1_out_2_q5 MemPortDOUT2 0 15 }  { pool1_out_2_address6 MemPortADDR2 1 7 }  { pool1_out_2_ce6 MemPortCE2 1 1 }  { pool1_out_2_q6 MemPortDOUT2 0 15 }  { pool1_out_2_address7 MemPortADDR2 1 7 }  { pool1_out_2_ce7 MemPortCE2 1 1 }  { pool1_out_2_q7 MemPortDOUT2 0 15 }  { pool1_out_2_address8 MemPortADDR2 1 7 }  { pool1_out_2_ce8 MemPortCE2 1 1 }  { pool1_out_2_q8 MemPortDOUT2 0 15 }  { pool1_out_2_address9 MemPortADDR2 1 7 }  { pool1_out_2_ce9 MemPortCE2 1 1 }  { pool1_out_2_q9 MemPortDOUT2 0 15 }  { pool1_out_2_address10 MemPortADDR2 1 7 }  { pool1_out_2_ce10 MemPortCE2 1 1 }  { pool1_out_2_q10 MemPortDOUT2 0 15 }  { pool1_out_2_address11 MemPortADDR2 1 7 }  { pool1_out_2_ce11 MemPortCE2 1 1 }  { pool1_out_2_q11 MemPortDOUT2 0 15 }  { pool1_out_2_address12 MemPortADDR2 1 7 }  { pool1_out_2_ce12 MemPortCE2 1 1 }  { pool1_out_2_q12 MemPortDOUT2 0 15 }  { pool1_out_2_address13 MemPortADDR2 1 7 }  { pool1_out_2_ce13 MemPortCE2 1 1 }  { pool1_out_2_q13 MemPortDOUT2 0 15 }  { pool1_out_2_address14 MemPortADDR2 1 7 }  { pool1_out_2_ce14 MemPortCE2 1 1 }  { pool1_out_2_q14 MemPortDOUT2 0 15 }  { pool1_out_2_address15 MemPortADDR2 1 7 }  { pool1_out_2_ce15 MemPortCE2 1 1 }  { pool1_out_2_q15 MemPortDOUT2 0 15 }  { pool1_out_2_address16 MemPortADDR2 1 7 }  { pool1_out_2_ce16 MemPortCE2 1 1 }  { pool1_out_2_q16 MemPortDOUT2 0 15 } } }
	pool1_out_3 { ap_memory {  { pool1_out_3_address0 mem_address 1 7 }  { pool1_out_3_ce0 mem_ce 1 1 }  { pool1_out_3_q0 mem_dout 0 15 }  { pool1_out_3_address1 MemPortADDR2 1 7 }  { pool1_out_3_ce1 MemPortCE2 1 1 }  { pool1_out_3_q1 MemPortDOUT2 0 15 }  { pool1_out_3_address2 MemPortADDR2 1 7 }  { pool1_out_3_ce2 MemPortCE2 1 1 }  { pool1_out_3_q2 MemPortDOUT2 0 15 }  { pool1_out_3_address3 MemPortADDR2 1 7 }  { pool1_out_3_ce3 MemPortCE2 1 1 }  { pool1_out_3_q3 MemPortDOUT2 0 15 }  { pool1_out_3_address4 MemPortADDR2 1 7 }  { pool1_out_3_ce4 MemPortCE2 1 1 }  { pool1_out_3_q4 MemPortDOUT2 0 15 }  { pool1_out_3_address5 MemPortADDR2 1 7 }  { pool1_out_3_ce5 MemPortCE2 1 1 }  { pool1_out_3_q5 MemPortDOUT2 0 15 }  { pool1_out_3_address6 MemPortADDR2 1 7 }  { pool1_out_3_ce6 MemPortCE2 1 1 }  { pool1_out_3_q6 MemPortDOUT2 0 15 }  { pool1_out_3_address7 MemPortADDR2 1 7 }  { pool1_out_3_ce7 MemPortCE2 1 1 }  { pool1_out_3_q7 MemPortDOUT2 0 15 }  { pool1_out_3_address8 MemPortADDR2 1 7 }  { pool1_out_3_ce8 MemPortCE2 1 1 }  { pool1_out_3_q8 MemPortDOUT2 0 15 }  { pool1_out_3_address9 MemPortADDR2 1 7 }  { pool1_out_3_ce9 MemPortCE2 1 1 }  { pool1_out_3_q9 MemPortDOUT2 0 15 }  { pool1_out_3_address10 MemPortADDR2 1 7 }  { pool1_out_3_ce10 MemPortCE2 1 1 }  { pool1_out_3_q10 MemPortDOUT2 0 15 }  { pool1_out_3_address11 MemPortADDR2 1 7 }  { pool1_out_3_ce11 MemPortCE2 1 1 }  { pool1_out_3_q11 MemPortDOUT2 0 15 }  { pool1_out_3_address12 MemPortADDR2 1 7 }  { pool1_out_3_ce12 MemPortCE2 1 1 }  { pool1_out_3_q12 MemPortDOUT2 0 15 }  { pool1_out_3_address13 MemPortADDR2 1 7 }  { pool1_out_3_ce13 MemPortCE2 1 1 }  { pool1_out_3_q13 MemPortDOUT2 0 15 }  { pool1_out_3_address14 MemPortADDR2 1 7 }  { pool1_out_3_ce14 MemPortCE2 1 1 }  { pool1_out_3_q14 MemPortDOUT2 0 15 }  { pool1_out_3_address15 MemPortADDR2 1 7 }  { pool1_out_3_ce15 MemPortCE2 1 1 }  { pool1_out_3_q15 MemPortDOUT2 0 15 }  { pool1_out_3_address16 MemPortADDR2 1 7 }  { pool1_out_3_ce16 MemPortCE2 1 1 }  { pool1_out_3_q16 MemPortDOUT2 0 15 } } }
	pool1_out_4 { ap_memory {  { pool1_out_4_address0 mem_address 1 7 }  { pool1_out_4_ce0 mem_ce 1 1 }  { pool1_out_4_q0 mem_dout 0 15 }  { pool1_out_4_address1 MemPortADDR2 1 7 }  { pool1_out_4_ce1 MemPortCE2 1 1 }  { pool1_out_4_q1 MemPortDOUT2 0 15 }  { pool1_out_4_address2 MemPortADDR2 1 7 }  { pool1_out_4_ce2 MemPortCE2 1 1 }  { pool1_out_4_q2 MemPortDOUT2 0 15 }  { pool1_out_4_address3 MemPortADDR2 1 7 }  { pool1_out_4_ce3 MemPortCE2 1 1 }  { pool1_out_4_q3 MemPortDOUT2 0 15 }  { pool1_out_4_address4 MemPortADDR2 1 7 }  { pool1_out_4_ce4 MemPortCE2 1 1 }  { pool1_out_4_q4 MemPortDOUT2 0 15 }  { pool1_out_4_address5 MemPortADDR2 1 7 }  { pool1_out_4_ce5 MemPortCE2 1 1 }  { pool1_out_4_q5 MemPortDOUT2 0 15 }  { pool1_out_4_address6 MemPortADDR2 1 7 }  { pool1_out_4_ce6 MemPortCE2 1 1 }  { pool1_out_4_q6 MemPortDOUT2 0 15 }  { pool1_out_4_address7 MemPortADDR2 1 7 }  { pool1_out_4_ce7 MemPortCE2 1 1 }  { pool1_out_4_q7 MemPortDOUT2 0 15 }  { pool1_out_4_address8 MemPortADDR2 1 7 }  { pool1_out_4_ce8 MemPortCE2 1 1 }  { pool1_out_4_q8 MemPortDOUT2 0 15 }  { pool1_out_4_address9 MemPortADDR2 1 7 }  { pool1_out_4_ce9 MemPortCE2 1 1 }  { pool1_out_4_q9 MemPortDOUT2 0 15 }  { pool1_out_4_address10 MemPortADDR2 1 7 }  { pool1_out_4_ce10 MemPortCE2 1 1 }  { pool1_out_4_q10 MemPortDOUT2 0 15 }  { pool1_out_4_address11 MemPortADDR2 1 7 }  { pool1_out_4_ce11 MemPortCE2 1 1 }  { pool1_out_4_q11 MemPortDOUT2 0 15 }  { pool1_out_4_address12 MemPortADDR2 1 7 }  { pool1_out_4_ce12 MemPortCE2 1 1 }  { pool1_out_4_q12 MemPortDOUT2 0 15 }  { pool1_out_4_address13 MemPortADDR2 1 7 }  { pool1_out_4_ce13 MemPortCE2 1 1 }  { pool1_out_4_q13 MemPortDOUT2 0 15 }  { pool1_out_4_address14 MemPortADDR2 1 7 }  { pool1_out_4_ce14 MemPortCE2 1 1 }  { pool1_out_4_q14 MemPortDOUT2 0 15 }  { pool1_out_4_address15 MemPortADDR2 1 7 }  { pool1_out_4_ce15 MemPortCE2 1 1 }  { pool1_out_4_q15 MemPortDOUT2 0 15 }  { pool1_out_4_address16 MemPortADDR2 1 7 }  { pool1_out_4_ce16 MemPortCE2 1 1 }  { pool1_out_4_q16 MemPortDOUT2 0 15 } } }
	pool1_out_5 { ap_memory {  { pool1_out_5_address0 mem_address 1 7 }  { pool1_out_5_ce0 mem_ce 1 1 }  { pool1_out_5_q0 mem_dout 0 15 }  { pool1_out_5_address1 MemPortADDR2 1 7 }  { pool1_out_5_ce1 MemPortCE2 1 1 }  { pool1_out_5_q1 MemPortDOUT2 0 15 }  { pool1_out_5_address2 MemPortADDR2 1 7 }  { pool1_out_5_ce2 MemPortCE2 1 1 }  { pool1_out_5_q2 MemPortDOUT2 0 15 }  { pool1_out_5_address3 MemPortADDR2 1 7 }  { pool1_out_5_ce3 MemPortCE2 1 1 }  { pool1_out_5_q3 MemPortDOUT2 0 15 }  { pool1_out_5_address4 MemPortADDR2 1 7 }  { pool1_out_5_ce4 MemPortCE2 1 1 }  { pool1_out_5_q4 MemPortDOUT2 0 15 }  { pool1_out_5_address5 MemPortADDR2 1 7 }  { pool1_out_5_ce5 MemPortCE2 1 1 }  { pool1_out_5_q5 MemPortDOUT2 0 15 }  { pool1_out_5_address6 MemPortADDR2 1 7 }  { pool1_out_5_ce6 MemPortCE2 1 1 }  { pool1_out_5_q6 MemPortDOUT2 0 15 }  { pool1_out_5_address7 MemPortADDR2 1 7 }  { pool1_out_5_ce7 MemPortCE2 1 1 }  { pool1_out_5_q7 MemPortDOUT2 0 15 }  { pool1_out_5_address8 MemPortADDR2 1 7 }  { pool1_out_5_ce8 MemPortCE2 1 1 }  { pool1_out_5_q8 MemPortDOUT2 0 15 }  { pool1_out_5_address9 MemPortADDR2 1 7 }  { pool1_out_5_ce9 MemPortCE2 1 1 }  { pool1_out_5_q9 MemPortDOUT2 0 15 }  { pool1_out_5_address10 MemPortADDR2 1 7 }  { pool1_out_5_ce10 MemPortCE2 1 1 }  { pool1_out_5_q10 MemPortDOUT2 0 15 }  { pool1_out_5_address11 MemPortADDR2 1 7 }  { pool1_out_5_ce11 MemPortCE2 1 1 }  { pool1_out_5_q11 MemPortDOUT2 0 15 }  { pool1_out_5_address12 MemPortADDR2 1 7 }  { pool1_out_5_ce12 MemPortCE2 1 1 }  { pool1_out_5_q12 MemPortDOUT2 0 15 }  { pool1_out_5_address13 MemPortADDR2 1 7 }  { pool1_out_5_ce13 MemPortCE2 1 1 }  { pool1_out_5_q13 MemPortDOUT2 0 15 }  { pool1_out_5_address14 MemPortADDR2 1 7 }  { pool1_out_5_ce14 MemPortCE2 1 1 }  { pool1_out_5_q14 MemPortDOUT2 0 15 }  { pool1_out_5_address15 MemPortADDR2 1 7 }  { pool1_out_5_ce15 MemPortCE2 1 1 }  { pool1_out_5_q15 MemPortDOUT2 0 15 }  { pool1_out_5_address16 MemPortADDR2 1 7 }  { pool1_out_5_ce16 MemPortCE2 1 1 }  { pool1_out_5_q16 MemPortDOUT2 0 15 } } }
}
