set moduleName Load_In_ALL
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
set C_modelName {Load_In_ALL}
set C_modelType { void 0 }
set C_modelArgList {
	{ In_buf float 32 regular {array 500 { 1 3 } 1 1 }  }
	{ In_next_0_0_V float 32 regular {fifo 1 volatile }  }
	{ In_next_1_0_V float 32 regular {fifo 1 volatile }  }
	{ In_next_2_0_V float 32 regular {fifo 1 volatile }  }
	{ In_next_3_0_V float 32 regular {fifo 1 volatile }  }
	{ p_c_out int 32 regular {fifo 1}  }
	{ p_c_out1 int 32 regular {fifo 1}  }
	{ p_chin_out int 32 regular {fifo 1}  }
	{ p_chin_out2 int 32 regular {fifo 1}  }
	{ p_k_out int 32 regular {fifo 1}  }
	{ p_k_out3 int 32 regular {fifo 1}  }
	{ p_c_s int 32 regular {pointer 0} {global 0}  }
	{ p_chin_s int 32 regular {pointer 0} {global 0}  }
	{ p_k_s int 32 regular {pointer 0} {global 0}  }
	{ p_s_s int 32 regular {pointer 0} {global 0}  }
	{ In_buffer_start int 32 regular {pointer 0} {global 0}  }
	{ p_cin_s int 32 regular {pointer 0} {global 0}  }
	{ In_buffer_length int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "In_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "In_next_0_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "In_next_1_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "In_next_2_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "In_next_3_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chin_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chin_out2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_k_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_k_out3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_c_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_chin_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_chin_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_k_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_k_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_s_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_s_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "In_buffer_start", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "In_buffer_start","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_cin_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_cin_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "In_buffer_length", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "In_buffer_length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 50
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
	{ In_buf_address0 sc_out sc_lv 9 signal 0 } 
	{ In_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ In_buf_q0 sc_in sc_lv 32 signal 0 } 
	{ In_next_0_0_V_din sc_out sc_lv 32 signal 1 } 
	{ In_next_0_0_V_full_n sc_in sc_logic 1 signal 1 } 
	{ In_next_0_0_V_write sc_out sc_logic 1 signal 1 } 
	{ In_next_1_0_V_din sc_out sc_lv 32 signal 2 } 
	{ In_next_1_0_V_full_n sc_in sc_logic 1 signal 2 } 
	{ In_next_1_0_V_write sc_out sc_logic 1 signal 2 } 
	{ In_next_2_0_V_din sc_out sc_lv 32 signal 3 } 
	{ In_next_2_0_V_full_n sc_in sc_logic 1 signal 3 } 
	{ In_next_2_0_V_write sc_out sc_logic 1 signal 3 } 
	{ In_next_3_0_V_din sc_out sc_lv 32 signal 4 } 
	{ In_next_3_0_V_full_n sc_in sc_logic 1 signal 4 } 
	{ In_next_3_0_V_write sc_out sc_logic 1 signal 4 } 
	{ p_c_out_din sc_out sc_lv 32 signal 5 } 
	{ p_c_out_full_n sc_in sc_logic 1 signal 5 } 
	{ p_c_out_write sc_out sc_logic 1 signal 5 } 
	{ p_c_out1_din sc_out sc_lv 32 signal 6 } 
	{ p_c_out1_full_n sc_in sc_logic 1 signal 6 } 
	{ p_c_out1_write sc_out sc_logic 1 signal 6 } 
	{ p_chin_out_din sc_out sc_lv 32 signal 7 } 
	{ p_chin_out_full_n sc_in sc_logic 1 signal 7 } 
	{ p_chin_out_write sc_out sc_logic 1 signal 7 } 
	{ p_chin_out2_din sc_out sc_lv 32 signal 8 } 
	{ p_chin_out2_full_n sc_in sc_logic 1 signal 8 } 
	{ p_chin_out2_write sc_out sc_logic 1 signal 8 } 
	{ p_k_out_din sc_out sc_lv 32 signal 9 } 
	{ p_k_out_full_n sc_in sc_logic 1 signal 9 } 
	{ p_k_out_write sc_out sc_logic 1 signal 9 } 
	{ p_k_out3_din sc_out sc_lv 32 signal 10 } 
	{ p_k_out3_full_n sc_in sc_logic 1 signal 10 } 
	{ p_k_out3_write sc_out sc_logic 1 signal 10 } 
	{ p_c_s sc_in sc_lv 32 signal 11 } 
	{ p_chin_s sc_in sc_lv 32 signal 12 } 
	{ p_k_s sc_in sc_lv 32 signal 13 } 
	{ p_s_s sc_in sc_lv 32 signal 14 } 
	{ In_buffer_start sc_in sc_lv 32 signal 15 } 
	{ p_cin_s sc_in sc_lv 32 signal 16 } 
	{ In_buffer_length sc_in sc_lv 32 signal 17 } 
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
 	{ "name": "In_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "In_buf", "role": "address0" }} , 
 	{ "name": "In_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_buf", "role": "ce0" }} , 
 	{ "name": "In_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buf", "role": "q0" }} , 
 	{ "name": "In_next_0_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_next_0_0_V", "role": "din" }} , 
 	{ "name": "In_next_0_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_0_0_V", "role": "full_n" }} , 
 	{ "name": "In_next_0_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_0_0_V", "role": "write" }} , 
 	{ "name": "In_next_1_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_next_1_0_V", "role": "din" }} , 
 	{ "name": "In_next_1_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_1_0_V", "role": "full_n" }} , 
 	{ "name": "In_next_1_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_1_0_V", "role": "write" }} , 
 	{ "name": "In_next_2_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_next_2_0_V", "role": "din" }} , 
 	{ "name": "In_next_2_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_2_0_V", "role": "full_n" }} , 
 	{ "name": "In_next_2_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_2_0_V", "role": "write" }} , 
 	{ "name": "In_next_3_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_next_3_0_V", "role": "din" }} , 
 	{ "name": "In_next_3_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_3_0_V", "role": "full_n" }} , 
 	{ "name": "In_next_3_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_3_0_V", "role": "write" }} , 
 	{ "name": "p_c_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_out", "role": "din" }} , 
 	{ "name": "p_c_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out", "role": "full_n" }} , 
 	{ "name": "p_c_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out", "role": "write" }} , 
 	{ "name": "p_c_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_out1", "role": "din" }} , 
 	{ "name": "p_c_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out1", "role": "full_n" }} , 
 	{ "name": "p_c_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out1", "role": "write" }} , 
 	{ "name": "p_chin_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_out", "role": "din" }} , 
 	{ "name": "p_chin_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out", "role": "full_n" }} , 
 	{ "name": "p_chin_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out", "role": "write" }} , 
 	{ "name": "p_chin_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_out2", "role": "din" }} , 
 	{ "name": "p_chin_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out2", "role": "full_n" }} , 
 	{ "name": "p_chin_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out2", "role": "write" }} , 
 	{ "name": "p_k_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_out", "role": "din" }} , 
 	{ "name": "p_k_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out", "role": "full_n" }} , 
 	{ "name": "p_k_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out", "role": "write" }} , 
 	{ "name": "p_k_out3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_out3", "role": "din" }} , 
 	{ "name": "p_k_out3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out3", "role": "full_n" }} , 
 	{ "name": "p_k_out3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out3", "role": "write" }} , 
 	{ "name": "p_c_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_s", "role": "default" }} , 
 	{ "name": "p_chin_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_s", "role": "default" }} , 
 	{ "name": "p_k_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_s", "role": "default" }} , 
 	{ "name": "p_s_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_s_s", "role": "default" }} , 
 	{ "name": "In_buffer_start", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buffer_start", "role": "default" }} , 
 	{ "name": "p_cin_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cin_s", "role": "default" }} , 
 	{ "name": "In_buffer_length", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buffer_length", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Load_In_ALL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "161", "EstimateLatencyMax" : "139421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "In_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "In_next_0_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_next_0_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_1_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_next_1_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_2_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_next_2_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_3_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_next_3_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_chin_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_k_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_s_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "In_buffer_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cin_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "In_buffer_length", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_Cobkb_U34", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Load_In_ALL {
		In_buf {Type I LastRead 41 FirstWrite -1}
		In_next_0_0_V {Type O LastRead -1 FirstWrite 42}
		In_next_1_0_V {Type O LastRead -1 FirstWrite 42}
		In_next_2_0_V {Type O LastRead -1 FirstWrite 42}
		In_next_3_0_V {Type O LastRead -1 FirstWrite 42}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_c_out1 {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out2 {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_k_out3 {Type O LastRead -1 FirstWrite 0}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_s_s {Type I LastRead 5 FirstWrite -1}
		In_buffer_start {Type I LastRead 6 FirstWrite -1}
		p_cin_s {Type I LastRead 5 FirstWrite -1}
		In_buffer_length {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "161", "Max" : "139421"}
	, {"Name" : "Interval", "Min" : "161", "Max" : "139421"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	In_buf { ap_memory {  { In_buf_address0 mem_address 1 9 }  { In_buf_ce0 mem_ce 1 1 }  { In_buf_q0 mem_dout 0 32 } } }
	In_next_0_0_V { ap_fifo {  { In_next_0_0_V_din fifo_data 1 32 }  { In_next_0_0_V_full_n fifo_status 0 1 }  { In_next_0_0_V_write fifo_update 1 1 } } }
	In_next_1_0_V { ap_fifo {  { In_next_1_0_V_din fifo_data 1 32 }  { In_next_1_0_V_full_n fifo_status 0 1 }  { In_next_1_0_V_write fifo_update 1 1 } } }
	In_next_2_0_V { ap_fifo {  { In_next_2_0_V_din fifo_data 1 32 }  { In_next_2_0_V_full_n fifo_status 0 1 }  { In_next_2_0_V_write fifo_update 1 1 } } }
	In_next_3_0_V { ap_fifo {  { In_next_3_0_V_din fifo_data 1 32 }  { In_next_3_0_V_full_n fifo_status 0 1 }  { In_next_3_0_V_write fifo_update 1 1 } } }
	p_c_out { ap_fifo {  { p_c_out_din fifo_data 1 32 }  { p_c_out_full_n fifo_status 0 1 }  { p_c_out_write fifo_update 1 1 } } }
	p_c_out1 { ap_fifo {  { p_c_out1_din fifo_data 1 32 }  { p_c_out1_full_n fifo_status 0 1 }  { p_c_out1_write fifo_update 1 1 } } }
	p_chin_out { ap_fifo {  { p_chin_out_din fifo_data 1 32 }  { p_chin_out_full_n fifo_status 0 1 }  { p_chin_out_write fifo_update 1 1 } } }
	p_chin_out2 { ap_fifo {  { p_chin_out2_din fifo_data 1 32 }  { p_chin_out2_full_n fifo_status 0 1 }  { p_chin_out2_write fifo_update 1 1 } } }
	p_k_out { ap_fifo {  { p_k_out_din fifo_data 1 32 }  { p_k_out_full_n fifo_status 0 1 }  { p_k_out_write fifo_update 1 1 } } }
	p_k_out3 { ap_fifo {  { p_k_out3_din fifo_data 1 32 }  { p_k_out3_full_n fifo_status 0 1 }  { p_k_out3_write fifo_update 1 1 } } }
	p_c_s { ap_none {  { p_c_s in_data 0 32 } } }
	p_chin_s { ap_none {  { p_chin_s in_data 0 32 } } }
	p_k_s { ap_none {  { p_k_s in_data 0 32 } } }
	p_s_s { ap_none {  { p_s_s in_data 0 32 } } }
	In_buffer_start { ap_none {  { In_buffer_start in_data 0 32 } } }
	p_cin_s { ap_none {  { p_cin_s in_data 0 32 } } }
	In_buffer_length { ap_none {  { In_buffer_length in_data 0 32 } } }
}
