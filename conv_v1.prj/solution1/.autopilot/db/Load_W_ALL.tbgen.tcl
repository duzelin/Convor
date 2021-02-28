set moduleName Load_W_ALL
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
set C_modelName {Load_W_ALL}
set C_modelType { void 0 }
set C_modelArgList {
	{ cho int 32 regular {fifo 0}  }
	{ W_buf float 32 regular {array 500 { 1 3 } 1 1 }  }
	{ W_next_0_0_V float 32 regular {fifo 1 volatile }  }
	{ W_next_0_1_V float 32 regular {fifo 1 volatile }  }
	{ W_next_0_2_V float 32 regular {fifo 1 volatile }  }
	{ W_next_0_3_V float 32 regular {fifo 1 volatile }  }
	{ p_c_s int 32 regular {fifo 0}  }
	{ p_chin_s int 32 regular {fifo 0}  }
	{ p_k_s int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cho", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_next_0_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_next_0_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_next_0_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_next_0_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_chin_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_k_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ cho_dout sc_in sc_lv 32 signal 0 } 
	{ cho_empty_n sc_in sc_logic 1 signal 0 } 
	{ cho_read sc_out sc_logic 1 signal 0 } 
	{ W_buf_address0 sc_out sc_lv 9 signal 1 } 
	{ W_buf_ce0 sc_out sc_logic 1 signal 1 } 
	{ W_buf_q0 sc_in sc_lv 32 signal 1 } 
	{ W_next_0_0_V_din sc_out sc_lv 32 signal 2 } 
	{ W_next_0_0_V_full_n sc_in sc_logic 1 signal 2 } 
	{ W_next_0_0_V_write sc_out sc_logic 1 signal 2 } 
	{ W_next_0_1_V_din sc_out sc_lv 32 signal 3 } 
	{ W_next_0_1_V_full_n sc_in sc_logic 1 signal 3 } 
	{ W_next_0_1_V_write sc_out sc_logic 1 signal 3 } 
	{ W_next_0_2_V_din sc_out sc_lv 32 signal 4 } 
	{ W_next_0_2_V_full_n sc_in sc_logic 1 signal 4 } 
	{ W_next_0_2_V_write sc_out sc_logic 1 signal 4 } 
	{ W_next_0_3_V_din sc_out sc_lv 32 signal 5 } 
	{ W_next_0_3_V_full_n sc_in sc_logic 1 signal 5 } 
	{ W_next_0_3_V_write sc_out sc_logic 1 signal 5 } 
	{ p_c_s_dout sc_in sc_lv 32 signal 6 } 
	{ p_c_s_empty_n sc_in sc_logic 1 signal 6 } 
	{ p_c_s_read sc_out sc_logic 1 signal 6 } 
	{ p_chin_s_dout sc_in sc_lv 32 signal 7 } 
	{ p_chin_s_empty_n sc_in sc_logic 1 signal 7 } 
	{ p_chin_s_read sc_out sc_logic 1 signal 7 } 
	{ p_k_s_dout sc_in sc_lv 32 signal 8 } 
	{ p_k_s_empty_n sc_in sc_logic 1 signal 8 } 
	{ p_k_s_read sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "cho_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cho", "role": "dout" }} , 
 	{ "name": "cho_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho", "role": "empty_n" }} , 
 	{ "name": "cho_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho", "role": "read" }} , 
 	{ "name": "W_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_buf", "role": "address0" }} , 
 	{ "name": "W_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_buf", "role": "ce0" }} , 
 	{ "name": "W_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_buf", "role": "q0" }} , 
 	{ "name": "W_next_0_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_next_0_0_V", "role": "din" }} , 
 	{ "name": "W_next_0_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_0_0_V", "role": "full_n" }} , 
 	{ "name": "W_next_0_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_0_0_V", "role": "write" }} , 
 	{ "name": "W_next_0_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_next_0_1_V", "role": "din" }} , 
 	{ "name": "W_next_0_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_0_1_V", "role": "full_n" }} , 
 	{ "name": "W_next_0_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_0_1_V", "role": "write" }} , 
 	{ "name": "W_next_0_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_next_0_2_V", "role": "din" }} , 
 	{ "name": "W_next_0_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_0_2_V", "role": "full_n" }} , 
 	{ "name": "W_next_0_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_0_2_V", "role": "write" }} , 
 	{ "name": "W_next_0_3_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_next_0_3_V", "role": "din" }} , 
 	{ "name": "W_next_0_3_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_0_3_V", "role": "full_n" }} , 
 	{ "name": "W_next_0_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_0_3_V", "role": "write" }} , 
 	{ "name": "p_c_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_s", "role": "dout" }} , 
 	{ "name": "p_c_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_s", "role": "empty_n" }} , 
 	{ "name": "p_c_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_s", "role": "read" }} , 
 	{ "name": "p_chin_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_s", "role": "dout" }} , 
 	{ "name": "p_chin_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_s", "role": "empty_n" }} , 
 	{ "name": "p_chin_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_s", "role": "read" }} , 
 	{ "name": "p_k_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_s", "role": "dout" }} , 
 	{ "name": "p_k_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_s", "role": "empty_n" }} , 
 	{ "name": "p_k_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_s", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Load_W_ALL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "13421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_next_0_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_next_0_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_0_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_next_0_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_0_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_next_0_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_0_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_next_0_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Load_W_ALL {
		cho {Type I LastRead 0 FirstWrite -1}
		W_buf {Type I LastRead 6 FirstWrite -1}
		W_next_0_0_V {Type O LastRead -1 FirstWrite 7}
		W_next_0_1_V {Type O LastRead -1 FirstWrite 7}
		W_next_0_2_V {Type O LastRead -1 FirstWrite 7}
		W_next_0_3_V {Type O LastRead -1 FirstWrite 7}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "13421"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "13421"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cho { ap_fifo {  { cho_dout fifo_data 0 32 }  { cho_empty_n fifo_status 0 1 }  { cho_read fifo_update 1 1 } } }
	W_buf { ap_memory {  { W_buf_address0 mem_address 1 9 }  { W_buf_ce0 mem_ce 1 1 }  { W_buf_q0 mem_dout 0 32 } } }
	W_next_0_0_V { ap_fifo {  { W_next_0_0_V_din fifo_data 1 32 }  { W_next_0_0_V_full_n fifo_status 0 1 }  { W_next_0_0_V_write fifo_update 1 1 } } }
	W_next_0_1_V { ap_fifo {  { W_next_0_1_V_din fifo_data 1 32 }  { W_next_0_1_V_full_n fifo_status 0 1 }  { W_next_0_1_V_write fifo_update 1 1 } } }
	W_next_0_2_V { ap_fifo {  { W_next_0_2_V_din fifo_data 1 32 }  { W_next_0_2_V_full_n fifo_status 0 1 }  { W_next_0_2_V_write fifo_update 1 1 } } }
	W_next_0_3_V { ap_fifo {  { W_next_0_3_V_din fifo_data 1 32 }  { W_next_0_3_V_full_n fifo_status 0 1 }  { W_next_0_3_V_write fifo_update 1 1 } } }
	p_c_s { ap_fifo {  { p_c_s_dout fifo_data 0 32 }  { p_c_s_empty_n fifo_status 0 1 }  { p_c_s_read fifo_update 1 1 } } }
	p_chin_s { ap_fifo {  { p_chin_s_dout fifo_data 0 32 }  { p_chin_s_empty_n fifo_status 0 1 }  { p_chin_s_read fifo_update 1 1 } } }
	p_k_s { ap_fifo {  { p_k_s_dout fifo_data 0 32 }  { p_k_s_empty_n fifo_status 0 1 }  { p_k_s_read fifo_update 1 1 } } }
}
