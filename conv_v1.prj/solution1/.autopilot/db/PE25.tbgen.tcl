set moduleName PE25
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
set C_modelName {PE25}
set C_modelType { void 0 }
set C_modelArgList {
	{ W_inter_1_0 float 32 regular {fifo 0 volatile }  }
	{ In_inter_1_0 float 32 regular {fifo 0 volatile }  }
	{ W_inter_2_0 float 32 regular {fifo 1 volatile }  }
	{ In_inter_1_1 float 32 regular {fifo 1 volatile }  }
	{ add_ln207_3_loc int 32 regular {fifo 0}  }
	{ cho int 32 regular {fifo 0}  }
	{ O_inter_1_0 float 32 regular {fifo 1 volatile }  }
	{ p_c_s int 32 regular {fifo 0}  }
	{ p_chin_s int 32 regular {fifo 0}  }
	{ p_chout_s int 32 regular {fifo 0}  }
	{ p_k_s int 32 regular {fifo 0}  }
	{ p_r_s int 32 regular {fifo 0}  }
	{ cho_out int 32 regular {fifo 1}  }
	{ p_c_out int 32 regular {fifo 1}  }
	{ p_chin_out int 32 regular {fifo 1}  }
	{ p_chout_out int 32 regular {fifo 1}  }
	{ p_k_out int 32 regular {fifo 1}  }
	{ p_r_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "W_inter_1_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "In_inter_1_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_inter_2_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "In_inter_1_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln207_3_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cho", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_inter_1_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_chin_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_chout_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_k_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_r_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cho_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chin_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chout_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_k_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_r_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ W_inter_1_0_dout sc_in sc_lv 32 signal 0 } 
	{ W_inter_1_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ W_inter_1_0_read sc_out sc_logic 1 signal 0 } 
	{ In_inter_1_0_dout sc_in sc_lv 32 signal 1 } 
	{ In_inter_1_0_empty_n sc_in sc_logic 1 signal 1 } 
	{ In_inter_1_0_read sc_out sc_logic 1 signal 1 } 
	{ W_inter_2_0_din sc_out sc_lv 32 signal 2 } 
	{ W_inter_2_0_full_n sc_in sc_logic 1 signal 2 } 
	{ W_inter_2_0_write sc_out sc_logic 1 signal 2 } 
	{ In_inter_1_1_din sc_out sc_lv 32 signal 3 } 
	{ In_inter_1_1_full_n sc_in sc_logic 1 signal 3 } 
	{ In_inter_1_1_write sc_out sc_logic 1 signal 3 } 
	{ add_ln207_3_loc_dout sc_in sc_lv 32 signal 4 } 
	{ add_ln207_3_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ add_ln207_3_loc_read sc_out sc_logic 1 signal 4 } 
	{ cho_dout sc_in sc_lv 32 signal 5 } 
	{ cho_empty_n sc_in sc_logic 1 signal 5 } 
	{ cho_read sc_out sc_logic 1 signal 5 } 
	{ O_inter_1_0_din sc_out sc_lv 32 signal 6 } 
	{ O_inter_1_0_full_n sc_in sc_logic 1 signal 6 } 
	{ O_inter_1_0_write sc_out sc_logic 1 signal 6 } 
	{ p_c_s_dout sc_in sc_lv 32 signal 7 } 
	{ p_c_s_empty_n sc_in sc_logic 1 signal 7 } 
	{ p_c_s_read sc_out sc_logic 1 signal 7 } 
	{ p_chin_s_dout sc_in sc_lv 32 signal 8 } 
	{ p_chin_s_empty_n sc_in sc_logic 1 signal 8 } 
	{ p_chin_s_read sc_out sc_logic 1 signal 8 } 
	{ p_chout_s_dout sc_in sc_lv 32 signal 9 } 
	{ p_chout_s_empty_n sc_in sc_logic 1 signal 9 } 
	{ p_chout_s_read sc_out sc_logic 1 signal 9 } 
	{ p_k_s_dout sc_in sc_lv 32 signal 10 } 
	{ p_k_s_empty_n sc_in sc_logic 1 signal 10 } 
	{ p_k_s_read sc_out sc_logic 1 signal 10 } 
	{ p_r_s_dout sc_in sc_lv 32 signal 11 } 
	{ p_r_s_empty_n sc_in sc_logic 1 signal 11 } 
	{ p_r_s_read sc_out sc_logic 1 signal 11 } 
	{ cho_out_din sc_out sc_lv 32 signal 12 } 
	{ cho_out_full_n sc_in sc_logic 1 signal 12 } 
	{ cho_out_write sc_out sc_logic 1 signal 12 } 
	{ p_c_out_din sc_out sc_lv 32 signal 13 } 
	{ p_c_out_full_n sc_in sc_logic 1 signal 13 } 
	{ p_c_out_write sc_out sc_logic 1 signal 13 } 
	{ p_chin_out_din sc_out sc_lv 32 signal 14 } 
	{ p_chin_out_full_n sc_in sc_logic 1 signal 14 } 
	{ p_chin_out_write sc_out sc_logic 1 signal 14 } 
	{ p_chout_out_din sc_out sc_lv 32 signal 15 } 
	{ p_chout_out_full_n sc_in sc_logic 1 signal 15 } 
	{ p_chout_out_write sc_out sc_logic 1 signal 15 } 
	{ p_k_out_din sc_out sc_lv 32 signal 16 } 
	{ p_k_out_full_n sc_in sc_logic 1 signal 16 } 
	{ p_k_out_write sc_out sc_logic 1 signal 16 } 
	{ p_r_out_din sc_out sc_lv 32 signal 17 } 
	{ p_r_out_full_n sc_in sc_logic 1 signal 17 } 
	{ p_r_out_write sc_out sc_logic 1 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "W_inter_1_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_inter_1_0", "role": "dout" }} , 
 	{ "name": "W_inter_1_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_inter_1_0", "role": "empty_n" }} , 
 	{ "name": "W_inter_1_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_inter_1_0", "role": "read" }} , 
 	{ "name": "In_inter_1_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_inter_1_0", "role": "dout" }} , 
 	{ "name": "In_inter_1_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_inter_1_0", "role": "empty_n" }} , 
 	{ "name": "In_inter_1_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_inter_1_0", "role": "read" }} , 
 	{ "name": "W_inter_2_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_inter_2_0", "role": "din" }} , 
 	{ "name": "W_inter_2_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_inter_2_0", "role": "full_n" }} , 
 	{ "name": "W_inter_2_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_inter_2_0", "role": "write" }} , 
 	{ "name": "In_inter_1_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_inter_1_1", "role": "din" }} , 
 	{ "name": "In_inter_1_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_inter_1_1", "role": "full_n" }} , 
 	{ "name": "In_inter_1_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_inter_1_1", "role": "write" }} , 
 	{ "name": "add_ln207_3_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln207_3_loc", "role": "dout" }} , 
 	{ "name": "add_ln207_3_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_ln207_3_loc", "role": "empty_n" }} , 
 	{ "name": "add_ln207_3_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_ln207_3_loc", "role": "read" }} , 
 	{ "name": "cho_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cho", "role": "dout" }} , 
 	{ "name": "cho_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho", "role": "empty_n" }} , 
 	{ "name": "cho_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho", "role": "read" }} , 
 	{ "name": "O_inter_1_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_inter_1_0", "role": "din" }} , 
 	{ "name": "O_inter_1_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_inter_1_0", "role": "full_n" }} , 
 	{ "name": "O_inter_1_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_inter_1_0", "role": "write" }} , 
 	{ "name": "p_c_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_s", "role": "dout" }} , 
 	{ "name": "p_c_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_s", "role": "empty_n" }} , 
 	{ "name": "p_c_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_s", "role": "read" }} , 
 	{ "name": "p_chin_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_s", "role": "dout" }} , 
 	{ "name": "p_chin_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_s", "role": "empty_n" }} , 
 	{ "name": "p_chin_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_s", "role": "read" }} , 
 	{ "name": "p_chout_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chout_s", "role": "dout" }} , 
 	{ "name": "p_chout_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_s", "role": "empty_n" }} , 
 	{ "name": "p_chout_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_s", "role": "read" }} , 
 	{ "name": "p_k_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_s", "role": "dout" }} , 
 	{ "name": "p_k_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_s", "role": "empty_n" }} , 
 	{ "name": "p_k_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_s", "role": "read" }} , 
 	{ "name": "p_r_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_r_s", "role": "dout" }} , 
 	{ "name": "p_r_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_r_s", "role": "empty_n" }} , 
 	{ "name": "p_r_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_r_s", "role": "read" }} , 
 	{ "name": "cho_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cho_out", "role": "din" }} , 
 	{ "name": "cho_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho_out", "role": "full_n" }} , 
 	{ "name": "cho_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho_out", "role": "write" }} , 
 	{ "name": "p_c_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_out", "role": "din" }} , 
 	{ "name": "p_c_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out", "role": "full_n" }} , 
 	{ "name": "p_c_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out", "role": "write" }} , 
 	{ "name": "p_chin_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_out", "role": "din" }} , 
 	{ "name": "p_chin_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out", "role": "full_n" }} , 
 	{ "name": "p_chin_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out", "role": "write" }} , 
 	{ "name": "p_chout_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chout_out", "role": "din" }} , 
 	{ "name": "p_chout_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_out", "role": "full_n" }} , 
 	{ "name": "p_chout_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_out", "role": "write" }} , 
 	{ "name": "p_k_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_out", "role": "din" }} , 
 	{ "name": "p_k_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out", "role": "full_n" }} , 
 	{ "name": "p_k_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out", "role": "write" }} , 
 	{ "name": "p_r_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_r_out", "role": "din" }} , 
 	{ "name": "p_r_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_r_out", "role": "full_n" }} , 
 	{ "name": "p_r_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_r_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "PE25",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "72221",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "W_inter_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_inter_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_inter_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_2_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_inter_2_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_inter_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_Cocud_U177", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_CodEe_U178", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE25 {
		W_inter_1_0 {Type I LastRead 4 FirstWrite -1}
		In_inter_1_0 {Type I LastRead 4 FirstWrite -1}
		W_inter_2_0 {Type O LastRead -1 FirstWrite 4}
		In_inter_1_1 {Type O LastRead -1 FirstWrite 4}
		add_ln207_3_loc {Type I LastRead 0 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		O_inter_1_0 {Type O LastRead -1 FirstWrite 2}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		cho_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "72221"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "72221"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	W_inter_1_0 { ap_fifo {  { W_inter_1_0_dout fifo_data 0 32 }  { W_inter_1_0_empty_n fifo_status 0 1 }  { W_inter_1_0_read fifo_update 1 1 } } }
	In_inter_1_0 { ap_fifo {  { In_inter_1_0_dout fifo_data 0 32 }  { In_inter_1_0_empty_n fifo_status 0 1 }  { In_inter_1_0_read fifo_update 1 1 } } }
	W_inter_2_0 { ap_fifo {  { W_inter_2_0_din fifo_data 1 32 }  { W_inter_2_0_full_n fifo_status 0 1 }  { W_inter_2_0_write fifo_update 1 1 } } }
	In_inter_1_1 { ap_fifo {  { In_inter_1_1_din fifo_data 1 32 }  { In_inter_1_1_full_n fifo_status 0 1 }  { In_inter_1_1_write fifo_update 1 1 } } }
	add_ln207_3_loc { ap_fifo {  { add_ln207_3_loc_dout fifo_data 0 32 }  { add_ln207_3_loc_empty_n fifo_status 0 1 }  { add_ln207_3_loc_read fifo_update 1 1 } } }
	cho { ap_fifo {  { cho_dout fifo_data 0 32 }  { cho_empty_n fifo_status 0 1 }  { cho_read fifo_update 1 1 } } }
	O_inter_1_0 { ap_fifo {  { O_inter_1_0_din fifo_data 1 32 }  { O_inter_1_0_full_n fifo_status 0 1 }  { O_inter_1_0_write fifo_update 1 1 } } }
	p_c_s { ap_fifo {  { p_c_s_dout fifo_data 0 32 }  { p_c_s_empty_n fifo_status 0 1 }  { p_c_s_read fifo_update 1 1 } } }
	p_chin_s { ap_fifo {  { p_chin_s_dout fifo_data 0 32 }  { p_chin_s_empty_n fifo_status 0 1 }  { p_chin_s_read fifo_update 1 1 } } }
	p_chout_s { ap_fifo {  { p_chout_s_dout fifo_data 0 32 }  { p_chout_s_empty_n fifo_status 0 1 }  { p_chout_s_read fifo_update 1 1 } } }
	p_k_s { ap_fifo {  { p_k_s_dout fifo_data 0 32 }  { p_k_s_empty_n fifo_status 0 1 }  { p_k_s_read fifo_update 1 1 } } }
	p_r_s { ap_fifo {  { p_r_s_dout fifo_data 0 32 }  { p_r_s_empty_n fifo_status 0 1 }  { p_r_s_read fifo_update 1 1 } } }
	cho_out { ap_fifo {  { cho_out_din fifo_data 1 32 }  { cho_out_full_n fifo_status 0 1 }  { cho_out_write fifo_update 1 1 } } }
	p_c_out { ap_fifo {  { p_c_out_din fifo_data 1 32 }  { p_c_out_full_n fifo_status 0 1 }  { p_c_out_write fifo_update 1 1 } } }
	p_chin_out { ap_fifo {  { p_chin_out_din fifo_data 1 32 }  { p_chin_out_full_n fifo_status 0 1 }  { p_chin_out_write fifo_update 1 1 } } }
	p_chout_out { ap_fifo {  { p_chout_out_din fifo_data 1 32 }  { p_chout_out_full_n fifo_status 0 1 }  { p_chout_out_write fifo_update 1 1 } } }
	p_k_out { ap_fifo {  { p_k_out_din fifo_data 1 32 }  { p_k_out_full_n fifo_status 0 1 }  { p_k_out_write fifo_update 1 1 } } }
	p_r_out { ap_fifo {  { p_r_out_din fifo_data 1 32 }  { p_r_out_full_n fifo_status 0 1 }  { p_r_out_write fifo_update 1 1 } } }
}
