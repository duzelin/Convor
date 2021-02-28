set moduleName Read_In_buf_line
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Read_In_buf_line}
set C_modelType { void 0 }
set C_modelArgList {
	{ In_buf float 32 regular {array 500 { 0 3 } 0 1 }  }
	{ In_ddr float 32 regular {axi_master 0}  }
	{ In_ddr_offset int 30 regular  }
	{ row int 32 regular  }
	{ p_p_s int 32 regular {pointer 0} {global 0}  }
	{ p_cinp_s int 32 regular {pointer 0} {global 0}  }
	{ p_chin_s int 32 regular {pointer 0} {global 0}  }
	{ In_buffer_end int 32 regular {pointer 0} {global 0}  }
	{ In_buffer_length int 32 regular {pointer 0} {global 0}  }
	{ p_rinp_s int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "In_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "In_ddr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "In_ddr_offset", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_p_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_p_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_cinp_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_cinp_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_chin_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_chin_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "In_buffer_end", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "In_buffer_end","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "In_buffer_length", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "In_buffer_length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_rinp_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_rinp_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ In_buf_address0 sc_out sc_lv 9 signal 0 } 
	{ In_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ In_buf_we0 sc_out sc_logic 1 signal 0 } 
	{ In_buf_d0 sc_out sc_lv 32 signal 0 } 
	{ m_axi_In_ddr_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_In_ddr_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_In_ddr_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_In_ddr_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_In_ddr_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_In_ddr_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_In_ddr_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_In_ddr_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_In_ddr_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_In_ddr_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_In_ddr_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_In_ddr_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_In_ddr_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_In_ddr_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_In_ddr_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_In_ddr_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_In_ddr_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_In_ddr_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_In_ddr_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_In_ddr_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_In_ddr_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_In_ddr_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_In_ddr_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_In_ddr_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_In_ddr_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_In_ddr_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_In_ddr_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_In_ddr_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_In_ddr_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_In_ddr_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_In_ddr_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_In_ddr_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_In_ddr_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_In_ddr_BUSER sc_in sc_lv 1 signal 1 } 
	{ In_ddr_offset sc_in sc_lv 30 signal 2 } 
	{ row sc_in sc_lv 32 signal 3 } 
	{ p_p_s sc_in sc_lv 32 signal 4 } 
	{ p_cinp_s sc_in sc_lv 32 signal 5 } 
	{ p_chin_s sc_in sc_lv 32 signal 6 } 
	{ In_buffer_end sc_in sc_lv 32 signal 7 } 
	{ In_buffer_length sc_in sc_lv 32 signal 8 } 
	{ p_rinp_s sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "In_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "In_buf", "role": "address0" }} , 
 	{ "name": "In_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_buf", "role": "ce0" }} , 
 	{ "name": "In_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_buf", "role": "we0" }} , 
 	{ "name": "In_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buf", "role": "d0" }} , 
 	{ "name": "m_axi_In_ddr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_In_ddr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_In_ddr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_In_ddr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWID" }} , 
 	{ "name": "m_axi_In_ddr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_In_ddr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_In_ddr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_In_ddr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_In_ddr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_In_ddr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_In_ddr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_In_ddr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_In_ddr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_In_ddr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "WVALID" }} , 
 	{ "name": "m_axi_In_ddr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "WREADY" }} , 
 	{ "name": "m_axi_In_ddr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_ddr", "role": "WDATA" }} , 
 	{ "name": "m_axi_In_ddr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "In_ddr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_In_ddr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "WLAST" }} , 
 	{ "name": "m_axi_In_ddr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "WID" }} , 
 	{ "name": "m_axi_In_ddr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "WUSER" }} , 
 	{ "name": "m_axi_In_ddr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_In_ddr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_In_ddr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_In_ddr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARID" }} , 
 	{ "name": "m_axi_In_ddr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_In_ddr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_In_ddr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_In_ddr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_In_ddr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_In_ddr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_In_ddr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_In_ddr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_In_ddr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_In_ddr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "RVALID" }} , 
 	{ "name": "m_axi_In_ddr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "RREADY" }} , 
 	{ "name": "m_axi_In_ddr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_ddr", "role": "RDATA" }} , 
 	{ "name": "m_axi_In_ddr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "RLAST" }} , 
 	{ "name": "m_axi_In_ddr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "RID" }} , 
 	{ "name": "m_axi_In_ddr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "RUSER" }} , 
 	{ "name": "m_axi_In_ddr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "In_ddr", "role": "RRESP" }} , 
 	{ "name": "m_axi_In_ddr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "BVALID" }} , 
 	{ "name": "m_axi_In_ddr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "BREADY" }} , 
 	{ "name": "m_axi_In_ddr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "In_ddr", "role": "BRESP" }} , 
 	{ "name": "m_axi_In_ddr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "BID" }} , 
 	{ "name": "m_axi_In_ddr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "In_ddr", "role": "BUSER" }} , 
 	{ "name": "In_ddr_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "In_ddr_offset", "role": "default" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "p_p_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_p_s", "role": "default" }} , 
 	{ "name": "p_cinp_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cinp_s", "role": "default" }} , 
 	{ "name": "p_chin_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_s", "role": "default" }} , 
 	{ "name": "In_buffer_end", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buffer_end", "role": "default" }} , 
 	{ "name": "In_buffer_length", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buffer_length", "role": "default" }} , 
 	{ "name": "p_rinp_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_rinp_s", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "Read_In_buf_line",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1101", "EstimateLatencyMax" : "7381",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "In_buf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "In_ddr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "In_ddr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "In_ddr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "In_ddr_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_p_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cinp_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_chin_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "In_buffer_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "In_buffer_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_rinp_s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_Cobkb_U5", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_Cobkb_U6", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_Cobkb_U7", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Read_In_buf_line {
		In_buf {Type O LastRead -1 FirstWrite 37}
		In_ddr {Type I LastRead 43 FirstWrite -1}
		In_ddr_offset {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		p_p_s {Type I LastRead 0 FirstWrite -1}
		p_cinp_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		In_buffer_end {Type I LastRead 0 FirstWrite -1}
		In_buffer_length {Type I LastRead 0 FirstWrite -1}
		p_rinp_s {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1101", "Max" : "7381"}
	, {"Name" : "Interval", "Min" : "1101", "Max" : "7381"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	In_buf { ap_memory {  { In_buf_address0 mem_address 1 9 }  { In_buf_ce0 mem_ce 1 1 }  { In_buf_we0 mem_we 1 1 }  { In_buf_d0 mem_din 1 32 } } }
	In_ddr { m_axi {  { m_axi_In_ddr_AWVALID VALID 1 1 }  { m_axi_In_ddr_AWREADY READY 0 1 }  { m_axi_In_ddr_AWADDR ADDR 1 32 }  { m_axi_In_ddr_AWID ID 1 1 }  { m_axi_In_ddr_AWLEN LEN 1 32 }  { m_axi_In_ddr_AWSIZE SIZE 1 3 }  { m_axi_In_ddr_AWBURST BURST 1 2 }  { m_axi_In_ddr_AWLOCK LOCK 1 2 }  { m_axi_In_ddr_AWCACHE CACHE 1 4 }  { m_axi_In_ddr_AWPROT PROT 1 3 }  { m_axi_In_ddr_AWQOS QOS 1 4 }  { m_axi_In_ddr_AWREGION REGION 1 4 }  { m_axi_In_ddr_AWUSER USER 1 1 }  { m_axi_In_ddr_WVALID VALID 1 1 }  { m_axi_In_ddr_WREADY READY 0 1 }  { m_axi_In_ddr_WDATA DATA 1 32 }  { m_axi_In_ddr_WSTRB STRB 1 4 }  { m_axi_In_ddr_WLAST LAST 1 1 }  { m_axi_In_ddr_WID ID 1 1 }  { m_axi_In_ddr_WUSER USER 1 1 }  { m_axi_In_ddr_ARVALID VALID 1 1 }  { m_axi_In_ddr_ARREADY READY 0 1 }  { m_axi_In_ddr_ARADDR ADDR 1 32 }  { m_axi_In_ddr_ARID ID 1 1 }  { m_axi_In_ddr_ARLEN LEN 1 32 }  { m_axi_In_ddr_ARSIZE SIZE 1 3 }  { m_axi_In_ddr_ARBURST BURST 1 2 }  { m_axi_In_ddr_ARLOCK LOCK 1 2 }  { m_axi_In_ddr_ARCACHE CACHE 1 4 }  { m_axi_In_ddr_ARPROT PROT 1 3 }  { m_axi_In_ddr_ARQOS QOS 1 4 }  { m_axi_In_ddr_ARREGION REGION 1 4 }  { m_axi_In_ddr_ARUSER USER 1 1 }  { m_axi_In_ddr_RVALID VALID 0 1 }  { m_axi_In_ddr_RREADY READY 1 1 }  { m_axi_In_ddr_RDATA DATA 0 32 }  { m_axi_In_ddr_RLAST LAST 0 1 }  { m_axi_In_ddr_RID ID 0 1 }  { m_axi_In_ddr_RUSER USER 0 1 }  { m_axi_In_ddr_RRESP RESP 0 2 }  { m_axi_In_ddr_BVALID VALID 0 1 }  { m_axi_In_ddr_BREADY READY 1 1 }  { m_axi_In_ddr_BRESP RESP 0 2 }  { m_axi_In_ddr_BID ID 0 1 }  { m_axi_In_ddr_BUSER USER 0 1 } } }
	In_ddr_offset { ap_none {  { In_ddr_offset in_data 0 30 } } }
	row { ap_none {  { row in_data 0 32 } } }
	p_p_s { ap_none {  { p_p_s in_data 0 32 } } }
	p_cinp_s { ap_none {  { p_cinp_s in_data 0 32 } } }
	p_chin_s { ap_none {  { p_chin_s in_data 0 32 } } }
	In_buffer_end { ap_none {  { In_buffer_end in_data 0 32 } } }
	In_buffer_length { ap_none {  { In_buffer_length in_data 0 32 } } }
	p_rinp_s { ap_none {  { p_rinp_s in_data 0 32 } } }
}
