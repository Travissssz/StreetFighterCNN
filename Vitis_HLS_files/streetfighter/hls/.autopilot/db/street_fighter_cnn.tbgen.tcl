set moduleName street_fighter_cnn
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
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
set C_modelName {street_fighter_cnn}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 128 regular {axi_master 0}  }
	{ input_r int 64 regular {axi_slave 0}  }
	{ prediction int 32 regular {axi_slave 1}  }
	{ confidence int 16 regular {axi_slave 1}  }
	{ dbg_in0 int 16 regular {axi_slave 1}  }
	{ dbg_l1_0 int 16 regular {axi_slave 1}  }
	{ dbg_gap0 int 16 regular {axi_slave 1}  }
	{ dbg_score0 int 16 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "prediction", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":28}, "offset_end" : {"out":35}} , 
 	{ "Name" : "confidence", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "WRITEONLY", "offset" : {"out":44}, "offset_end" : {"out":51}} , 
 	{ "Name" : "dbg_in0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "WRITEONLY", "offset" : {"out":60}, "offset_end" : {"out":67}} , 
 	{ "Name" : "dbg_l1_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "WRITEONLY", "offset" : {"out":76}, "offset_end" : {"out":83}} , 
 	{ "Name" : "dbg_gap0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "WRITEONLY", "offset" : {"out":92}, "offset_end" : {"out":99}} , 
 	{ "Name" : "dbg_score0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "WRITEONLY", "offset" : {"out":108}, "offset_end" : {"out":115}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 128 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 16 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 128 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"street_fighter_cnn","role":"start","value":"0","valid_bit":"0"},{"name":"street_fighter_cnn","role":"continue","value":"0","valid_bit":"4"},{"name":"street_fighter_cnn","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"street_fighter_cnn","role":"start","value":"0","valid_bit":"0"},{"name":"street_fighter_cnn","role":"done","value":"0","valid_bit":"1"},{"name":"street_fighter_cnn","role":"idle","value":"0","valid_bit":"2"},{"name":"street_fighter_cnn","role":"ready","value":"0","valid_bit":"3"},{"name":"street_fighter_cnn","role":"auto_start","value":"0","valid_bit":"7"},{"name":"prediction","role":"data","value":"28"},{"name":"confidence","role":"data","value":"44"},{"name":"dbg_in0","role":"data","value":"60"},{"name":"dbg_l1_0","role":"data","value":"76"},{"name":"dbg_gap0","role":"data","value":"92"},{"name":"dbg_score0","role":"data","value":"108"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	street_fighter_cnn {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		prediction {Type O LastRead -1 FirstWrite 84}
		confidence {Type O LastRead -1 FirstWrite 164}
		dbg_in0 {Type O LastRead -1 FirstWrite 2}
		dbg_l1_0 {Type O LastRead -1 FirstWrite 79}
		dbg_gap0 {Type O LastRead -1 FirstWrite 2}
		dbg_score0 {Type O LastRead -1 FirstWrite 85}
		CONV1_B {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_4 {Type I LastRead -1 FirstWrite -1}
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
		p_ZL7CONV2_W_63_2 {Type I LastRead -1 FirstWrite -1}
		FC_B {Type I LastRead -1 FirstWrite -1}
		FC_W {Type I LastRead -1 FirstWrite -1}}
	street_fighter_cnn_Pipeline_LOAD_INPUT {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		local_input {Type O LastRead -1 FirstWrite 2}
		local_input_1 {Type O LastRead -1 FirstWrite 2}
		local_input_2 {Type O LastRead -1 FirstWrite 2}
		local_input_3 {Type O LastRead -1 FirstWrite 2}
		local_input_4 {Type O LastRead -1 FirstWrite 2}
		local_input_5 {Type O LastRead -1 FirstWrite 2}
		local_input_6 {Type O LastRead -1 FirstWrite 2}
		local_input_7 {Type O LastRead -1 FirstWrite 2}
		local_input_8 {Type O LastRead -1 FirstWrite 2}
		local_input_9 {Type O LastRead -1 FirstWrite 2}
		local_input_10 {Type O LastRead -1 FirstWrite 2}
		local_input_11 {Type O LastRead -1 FirstWrite 2}
		local_input_12 {Type O LastRead -1 FirstWrite 2}
		local_input_13 {Type O LastRead -1 FirstWrite 2}
		local_input_14 {Type O LastRead -1 FirstWrite 2}
		local_input_15 {Type O LastRead -1 FirstWrite 2}
		local_input_16 {Type O LastRead -1 FirstWrite 2}
		local_input_17 {Type O LastRead -1 FirstWrite 2}
		local_input_18 {Type O LastRead -1 FirstWrite 2}
		local_input_19 {Type O LastRead -1 FirstWrite 2}
		local_input_20 {Type O LastRead -1 FirstWrite 2}
		local_input_21 {Type O LastRead -1 FirstWrite 2}
		local_input_22 {Type O LastRead -1 FirstWrite 2}
		local_input_23 {Type O LastRead -1 FirstWrite 2}
		local_input_24 {Type O LastRead -1 FirstWrite 2}
		local_input_25 {Type O LastRead -1 FirstWrite 2}
		local_input_26 {Type O LastRead -1 FirstWrite 2}
		local_input_27 {Type O LastRead -1 FirstWrite 2}
		local_input_28 {Type O LastRead -1 FirstWrite 2}
		local_input_29 {Type O LastRead -1 FirstWrite 2}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		dbg_in0 {Type O LastRead -1 FirstWrite 2}}
	street_fighter_cnn_Pipeline_CONV1_OUT_VITIS_LOOP_72_1 {
		conv1_out {Type O LastRead -1 FirstWrite 13}
		conv1_out_1 {Type O LastRead -1 FirstWrite 13}
		local_input {Type I LastRead 10 FirstWrite -1}
		local_input_1 {Type I LastRead 10 FirstWrite -1}
		local_input_2 {Type I LastRead 10 FirstWrite -1}
		local_input_3 {Type I LastRead 10 FirstWrite -1}
		local_input_4 {Type I LastRead 10 FirstWrite -1}
		local_input_5 {Type I LastRead 11 FirstWrite -1}
		local_input_6 {Type I LastRead 11 FirstWrite -1}
		local_input_7 {Type I LastRead 11 FirstWrite -1}
		local_input_8 {Type I LastRead 11 FirstWrite -1}
		local_input_9 {Type I LastRead 11 FirstWrite -1}
		local_input_10 {Type I LastRead 11 FirstWrite -1}
		local_input_11 {Type I LastRead 11 FirstWrite -1}
		local_input_12 {Type I LastRead 11 FirstWrite -1}
		local_input_13 {Type I LastRead 11 FirstWrite -1}
		local_input_14 {Type I LastRead 11 FirstWrite -1}
		local_input_15 {Type I LastRead 11 FirstWrite -1}
		local_input_16 {Type I LastRead 11 FirstWrite -1}
		local_input_17 {Type I LastRead 11 FirstWrite -1}
		local_input_18 {Type I LastRead 11 FirstWrite -1}
		local_input_19 {Type I LastRead 11 FirstWrite -1}
		local_input_20 {Type I LastRead 12 FirstWrite -1}
		local_input_21 {Type I LastRead 12 FirstWrite -1}
		local_input_22 {Type I LastRead 12 FirstWrite -1}
		local_input_23 {Type I LastRead 12 FirstWrite -1}
		local_input_24 {Type I LastRead 12 FirstWrite -1}
		local_input_25 {Type I LastRead 12 FirstWrite -1}
		local_input_26 {Type I LastRead 12 FirstWrite -1}
		local_input_27 {Type I LastRead 12 FirstWrite -1}
		local_input_28 {Type I LastRead 12 FirstWrite -1}
		local_input_29 {Type I LastRead 12 FirstWrite -1}
		CONV1_B {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_0_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_1_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_2_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_3_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_4_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL7CONV1_W_5_4 {Type I LastRead -1 FirstWrite -1}}
	street_fighter_cnn_Pipeline_POOL1_VITIS_LOOP_91_3 {
		pool1_out {Type O LastRead -1 FirstWrite 7}
		pool1_out_1 {Type O LastRead -1 FirstWrite 7}
		pool1_out_2 {Type O LastRead -1 FirstWrite 7}
		pool1_out_3 {Type O LastRead -1 FirstWrite 7}
		pool1_out_4 {Type O LastRead -1 FirstWrite 7}
		pool1_out_5 {Type O LastRead -1 FirstWrite 7}
		conv1_out {Type I LastRead 7 FirstWrite -1}
		conv1_out_1 {Type I LastRead 7 FirstWrite -1}}
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
		p_ZL7CONV2_W_63_2 {Type I LastRead -1 FirstWrite -1}}
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
		best_class_out {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "3628", "Max" : "3628"}
	, {"Name" : "Interval", "Min" : "3629", "Max" : "3629"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 128 }  { m_axi_gmem0_WSTRB STRB 1 16 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 128 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 { CHANNEL_NUM 0 BUNDLE gmem0 NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
