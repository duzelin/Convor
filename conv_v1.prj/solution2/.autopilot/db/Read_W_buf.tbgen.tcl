set moduleName Read_W_buf
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
set C_modelName {Read_W_buf}
set C_modelType { void 0 }
set C_modelArgList {
	{ W float 32 regular {array 500 { 0 3 } 0 1 }  }
	{ W_ddr float 32 regular {axi_master 0}  }
	{ W_ddr_offset int 30 regular  }
	{ length_r int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "W", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_ddr", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_ddr_offset", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "length_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ W_address0 sc_out sc_lv 9 signal 0 } 
	{ W_ce0 sc_out sc_logic 1 signal 0 } 
	{ W_we0 sc_out sc_logic 1 signal 0 } 
	{ W_d0 sc_out sc_lv 32 signal 0 } 
	{ m_axi_W_ddr_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_W_ddr_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_ddr_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_W_ddr_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_W_ddr_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_W_ddr_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_W_ddr_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ddr_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_W_ddr_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ddr_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ddr_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_ddr_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_W_ddr_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ddr_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_ddr_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_ddr_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_W_ddr_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_ddr_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_W_ddr_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_W_ddr_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_W_ddr_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_W_ddr_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ddr_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_W_ddr_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ddr_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_W_ddr_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_W_ddr_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_W_ddr_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_W_ddr_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_W_ddr_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_W_ddr_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_W_ddr_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_W_ddr_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_W_ddr_BUSER sc_in sc_lv 1 signal 1 } 
	{ W_ddr_offset sc_in sc_lv 30 signal 2 } 
	{ length_r sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "W_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W", "role": "address0" }} , 
 	{ "name": "W_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ce0" }} , 
 	{ "name": "W_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "we0" }} , 
 	{ "name": "W_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "d0" }} , 
 	{ "name": "m_axi_W_ddr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_W_ddr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_W_ddr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_W_ddr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWID" }} , 
 	{ "name": "m_axi_W_ddr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_W_ddr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_W_ddr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_W_ddr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_W_ddr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_W_ddr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_W_ddr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_W_ddr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_W_ddr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_W_ddr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "WVALID" }} , 
 	{ "name": "m_axi_W_ddr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "WREADY" }} , 
 	{ "name": "m_axi_W_ddr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_ddr", "role": "WDATA" }} , 
 	{ "name": "m_axi_W_ddr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_ddr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_W_ddr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "WLAST" }} , 
 	{ "name": "m_axi_W_ddr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "WID" }} , 
 	{ "name": "m_axi_W_ddr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "WUSER" }} , 
 	{ "name": "m_axi_W_ddr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_W_ddr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_W_ddr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_W_ddr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARID" }} , 
 	{ "name": "m_axi_W_ddr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_W_ddr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_W_ddr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_W_ddr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_W_ddr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_W_ddr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_W_ddr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_W_ddr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_W_ddr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_W_ddr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "RVALID" }} , 
 	{ "name": "m_axi_W_ddr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "RREADY" }} , 
 	{ "name": "m_axi_W_ddr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_ddr", "role": "RDATA" }} , 
 	{ "name": "m_axi_W_ddr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "RLAST" }} , 
 	{ "name": "m_axi_W_ddr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "RID" }} , 
 	{ "name": "m_axi_W_ddr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "RUSER" }} , 
 	{ "name": "m_axi_W_ddr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W_ddr", "role": "RRESP" }} , 
 	{ "name": "m_axi_W_ddr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "BVALID" }} , 
 	{ "name": "m_axi_W_ddr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "BREADY" }} , 
 	{ "name": "m_axi_W_ddr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W_ddr", "role": "BRESP" }} , 
 	{ "name": "m_axi_W_ddr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "BID" }} , 
 	{ "name": "m_axi_W_ddr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W_ddr", "role": "BUSER" }} , 
 	{ "name": "W_ddr_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "W_ddr_offset", "role": "default" }} , 
 	{ "name": "length_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_r", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Read_W_buf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "109",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "W", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "W_ddr", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "W_ddr_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "W_ddr_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "W_ddr_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "length_r", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Read_W_buf {
		W {Type O LastRead -1 FirstWrite 9}
		W_ddr {Type I LastRead 8 FirstWrite -1}
		W_ddr_offset {Type I LastRead 0 FirstWrite -1}
		length_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "109"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "109"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	W { ap_memory {  { W_address0 mem_address 1 9 }  { W_ce0 mem_ce 1 1 }  { W_we0 mem_we 1 1 }  { W_d0 mem_din 1 32 } } }
	W_ddr { m_axi {  { m_axi_W_ddr_AWVALID VALID 1 1 }  { m_axi_W_ddr_AWREADY READY 0 1 }  { m_axi_W_ddr_AWADDR ADDR 1 32 }  { m_axi_W_ddr_AWID ID 1 1 }  { m_axi_W_ddr_AWLEN LEN 1 32 }  { m_axi_W_ddr_AWSIZE SIZE 1 3 }  { m_axi_W_ddr_AWBURST BURST 1 2 }  { m_axi_W_ddr_AWLOCK LOCK 1 2 }  { m_axi_W_ddr_AWCACHE CACHE 1 4 }  { m_axi_W_ddr_AWPROT PROT 1 3 }  { m_axi_W_ddr_AWQOS QOS 1 4 }  { m_axi_W_ddr_AWREGION REGION 1 4 }  { m_axi_W_ddr_AWUSER USER 1 1 }  { m_axi_W_ddr_WVALID VALID 1 1 }  { m_axi_W_ddr_WREADY READY 0 1 }  { m_axi_W_ddr_WDATA DATA 1 32 }  { m_axi_W_ddr_WSTRB STRB 1 4 }  { m_axi_W_ddr_WLAST LAST 1 1 }  { m_axi_W_ddr_WID ID 1 1 }  { m_axi_W_ddr_WUSER USER 1 1 }  { m_axi_W_ddr_ARVALID VALID 1 1 }  { m_axi_W_ddr_ARREADY READY 0 1 }  { m_axi_W_ddr_ARADDR ADDR 1 32 }  { m_axi_W_ddr_ARID ID 1 1 }  { m_axi_W_ddr_ARLEN LEN 1 32 }  { m_axi_W_ddr_ARSIZE SIZE 1 3 }  { m_axi_W_ddr_ARBURST BURST 1 2 }  { m_axi_W_ddr_ARLOCK LOCK 1 2 }  { m_axi_W_ddr_ARCACHE CACHE 1 4 }  { m_axi_W_ddr_ARPROT PROT 1 3 }  { m_axi_W_ddr_ARQOS QOS 1 4 }  { m_axi_W_ddr_ARREGION REGION 1 4 }  { m_axi_W_ddr_ARUSER USER 1 1 }  { m_axi_W_ddr_RVALID VALID 0 1 }  { m_axi_W_ddr_RREADY READY 1 1 }  { m_axi_W_ddr_RDATA DATA 0 32 }  { m_axi_W_ddr_RLAST LAST 0 1 }  { m_axi_W_ddr_RID ID 0 1 }  { m_axi_W_ddr_RUSER USER 0 1 }  { m_axi_W_ddr_RRESP RESP 0 2 }  { m_axi_W_ddr_BVALID VALID 0 1 }  { m_axi_W_ddr_BREADY READY 1 1 }  { m_axi_W_ddr_BRESP RESP 0 2 }  { m_axi_W_ddr_BID ID 0 1 }  { m_axi_W_ddr_BUSER USER 0 1 } } }
	W_ddr_offset { ap_none {  { W_ddr_offset in_data 0 30 } } }
	length_r { ap_none {  { length_r in_data 0 32 } } }
}
