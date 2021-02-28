set moduleName Write_C_buf
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
set C_modelName {Write_C_buf}
set C_modelType { void 0 }
set C_modelArgList {
	{ Out_buf float 32 regular {array 500 { 2 3 } 1 1 }  }
	{ Out_ddr float 32 regular {axi_master 1}  }
	{ Out_ddr_offset int 30 regular  }
	{ Out_ddr_offset1 int 64 regular  }
	{ row int 32 regular  }
	{ p_c_s int 32 regular {pointer 0} {global 0}  }
	{ p_chout_s int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Out_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "Out_ddr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Out_ddr_offset", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "Out_ddr_offset1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_c_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_c_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_chout_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_chout_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Out_buf_address0 sc_out sc_lv 9 signal 0 } 
	{ Out_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ Out_buf_we0 sc_out sc_logic 1 signal 0 } 
	{ Out_buf_d0 sc_out sc_lv 32 signal 0 } 
	{ Out_buf_q0 sc_in sc_lv 32 signal 0 } 
	{ m_axi_Out_ddr_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_Out_ddr_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Out_ddr_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_Out_ddr_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_Out_ddr_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_Out_ddr_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_Out_ddr_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_Out_ddr_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_Out_ddr_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_Out_ddr_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_Out_ddr_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_Out_ddr_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_Out_ddr_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_Out_ddr_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Out_ddr_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_Out_ddr_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_Out_ddr_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Out_ddr_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_Out_ddr_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_Out_ddr_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_Out_ddr_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_Out_ddr_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_Out_ddr_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_Out_ddr_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_Out_ddr_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_Out_ddr_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_Out_ddr_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_Out_ddr_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_Out_ddr_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_Out_ddr_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_Out_ddr_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_Out_ddr_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_Out_ddr_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_Out_ddr_BUSER sc_in sc_lv 1 signal 1 } 
	{ Out_ddr_offset sc_in sc_lv 30 signal 2 } 
	{ Out_ddr_offset1 sc_in sc_lv 64 signal 3 } 
	{ row sc_in sc_lv 32 signal 4 } 
	{ p_c_s sc_in sc_lv 32 signal 5 } 
	{ p_chout_s sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Out_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "Out_buf", "role": "address0" }} , 
 	{ "name": "Out_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_buf", "role": "ce0" }} , 
 	{ "name": "Out_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_buf", "role": "we0" }} , 
 	{ "name": "Out_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_buf", "role": "d0" }} , 
 	{ "name": "Out_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_buf", "role": "q0" }} , 
 	{ "name": "m_axi_Out_ddr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_Out_ddr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_Out_ddr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_Out_ddr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWID" }} , 
 	{ "name": "m_axi_Out_ddr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_Out_ddr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_Out_ddr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_Out_ddr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_Out_ddr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_Out_ddr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_Out_ddr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_Out_ddr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_Out_ddr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_Out_ddr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "WVALID" }} , 
 	{ "name": "m_axi_Out_ddr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "WREADY" }} , 
 	{ "name": "m_axi_Out_ddr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_ddr", "role": "WDATA" }} , 
 	{ "name": "m_axi_Out_ddr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_ddr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_Out_ddr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "WLAST" }} , 
 	{ "name": "m_axi_Out_ddr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "WID" }} , 
 	{ "name": "m_axi_Out_ddr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "WUSER" }} , 
 	{ "name": "m_axi_Out_ddr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_Out_ddr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_Out_ddr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_Out_ddr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARID" }} , 
 	{ "name": "m_axi_Out_ddr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_Out_ddr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_Out_ddr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_Out_ddr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_Out_ddr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_Out_ddr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_Out_ddr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_Out_ddr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_Out_ddr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_Out_ddr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "RVALID" }} , 
 	{ "name": "m_axi_Out_ddr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "RREADY" }} , 
 	{ "name": "m_axi_Out_ddr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_ddr", "role": "RDATA" }} , 
 	{ "name": "m_axi_Out_ddr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "RLAST" }} , 
 	{ "name": "m_axi_Out_ddr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "RID" }} , 
 	{ "name": "m_axi_Out_ddr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "RUSER" }} , 
 	{ "name": "m_axi_Out_ddr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_ddr", "role": "RRESP" }} , 
 	{ "name": "m_axi_Out_ddr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "BVALID" }} , 
 	{ "name": "m_axi_Out_ddr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "BREADY" }} , 
 	{ "name": "m_axi_Out_ddr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Out_ddr", "role": "BRESP" }} , 
 	{ "name": "m_axi_Out_ddr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "BID" }} , 
 	{ "name": "m_axi_Out_ddr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_ddr", "role": "BUSER" }} , 
 	{ "name": "Out_ddr_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "Out_ddr_offset", "role": "default" }} , 
 	{ "name": "Out_ddr_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Out_ddr_offset1", "role": "default" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "p_c_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_s", "role": "default" }} , 
 	{ "name": "p_chout_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chout_s", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Write_C_buf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "3289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Out_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Out_ddr", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Out_ddr_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "Out_ddr_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "Out_ddr_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "Out_ddr_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "Out_ddr_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_c_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_chout_s", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Write_C_buf {
		Out_buf {Type IO LastRead 3 FirstWrite 4}
		Out_ddr {Type O LastRead 6 FirstWrite 5}
		Out_ddr_offset {Type I LastRead 0 FirstWrite -1}
		Out_ddr_offset1 {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "3289"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "3289"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Out_buf { ap_memory {  { Out_buf_address0 mem_address 1 9 }  { Out_buf_ce0 mem_ce 1 1 }  { Out_buf_we0 mem_we 1 1 }  { Out_buf_d0 mem_din 1 32 }  { Out_buf_q0 mem_dout 0 32 } } }
	Out_ddr { m_axi {  { m_axi_Out_ddr_AWVALID VALID 1 1 }  { m_axi_Out_ddr_AWREADY READY 0 1 }  { m_axi_Out_ddr_AWADDR ADDR 1 32 }  { m_axi_Out_ddr_AWID ID 1 1 }  { m_axi_Out_ddr_AWLEN LEN 1 32 }  { m_axi_Out_ddr_AWSIZE SIZE 1 3 }  { m_axi_Out_ddr_AWBURST BURST 1 2 }  { m_axi_Out_ddr_AWLOCK LOCK 1 2 }  { m_axi_Out_ddr_AWCACHE CACHE 1 4 }  { m_axi_Out_ddr_AWPROT PROT 1 3 }  { m_axi_Out_ddr_AWQOS QOS 1 4 }  { m_axi_Out_ddr_AWREGION REGION 1 4 }  { m_axi_Out_ddr_AWUSER USER 1 1 }  { m_axi_Out_ddr_WVALID VALID 1 1 }  { m_axi_Out_ddr_WREADY READY 0 1 }  { m_axi_Out_ddr_WDATA DATA 1 32 }  { m_axi_Out_ddr_WSTRB STRB 1 4 }  { m_axi_Out_ddr_WLAST LAST 1 1 }  { m_axi_Out_ddr_WID ID 1 1 }  { m_axi_Out_ddr_WUSER USER 1 1 }  { m_axi_Out_ddr_ARVALID VALID 1 1 }  { m_axi_Out_ddr_ARREADY READY 0 1 }  { m_axi_Out_ddr_ARADDR ADDR 1 32 }  { m_axi_Out_ddr_ARID ID 1 1 }  { m_axi_Out_ddr_ARLEN LEN 1 32 }  { m_axi_Out_ddr_ARSIZE SIZE 1 3 }  { m_axi_Out_ddr_ARBURST BURST 1 2 }  { m_axi_Out_ddr_ARLOCK LOCK 1 2 }  { m_axi_Out_ddr_ARCACHE CACHE 1 4 }  { m_axi_Out_ddr_ARPROT PROT 1 3 }  { m_axi_Out_ddr_ARQOS QOS 1 4 }  { m_axi_Out_ddr_ARREGION REGION 1 4 }  { m_axi_Out_ddr_ARUSER USER 1 1 }  { m_axi_Out_ddr_RVALID VALID 0 1 }  { m_axi_Out_ddr_RREADY READY 1 1 }  { m_axi_Out_ddr_RDATA DATA 0 32 }  { m_axi_Out_ddr_RLAST LAST 0 1 }  { m_axi_Out_ddr_RID ID 0 1 }  { m_axi_Out_ddr_RUSER USER 0 1 }  { m_axi_Out_ddr_RRESP RESP 0 2 }  { m_axi_Out_ddr_BVALID VALID 0 1 }  { m_axi_Out_ddr_BREADY READY 1 1 }  { m_axi_Out_ddr_BRESP RESP 0 2 }  { m_axi_Out_ddr_BID ID 0 1 }  { m_axi_Out_ddr_BUSER USER 0 1 } } }
	Out_ddr_offset { ap_none {  { Out_ddr_offset in_data 0 30 } } }
	Out_ddr_offset1 { ap_none {  { Out_ddr_offset1 in_data 0 64 } } }
	row { ap_none {  { row in_data 0 32 } } }
	p_c_s { ap_none {  { p_c_s in_data 0 32 } } }
	p_chout_s { ap_none {  { p_chout_s in_data 0 32 } } }
}
