set moduleName PE36
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
set C_modelName {PE36}
set C_modelType { void 0 }
set C_modelArgList {
	{ W_inter_3_3 float 32 regular {fifo 0 volatile }  }
	{ In_inter_3_3 float 32 regular {fifo 0 volatile }  }
	{ W_inter_4_3 float 32 regular {fifo 1 volatile }  }
	{ In_inter_3_4 float 32 regular {fifo 1 volatile }  }
	{ add_ln207_5_loc int 32 regular {fifo 0}  }
	{ add_ln207_2_loc int 32 regular {fifo 0}  }
	{ O_inter_3_3 float 32 regular {fifo 1 volatile }  }
	{ p_c_s int 32 regular {fifo 0}  }
	{ p_chin_s int 32 regular {fifo 0}  }
	{ p_chout_s int 32 regular {fifo 0}  }
	{ p_k_s int 32 regular {fifo 0}  }
	{ p_r_s int 32 regular {fifo 0}  }
	{ p_c_out int 32 regular {fifo 1}  }
	{ p_c_out1 int 32 regular {fifo 1}  }
	{ p_c_out2 int 32 regular {fifo 1}  }
	{ p_chin_out int 32 regular {fifo 1}  }
	{ p_chin_out3 int 32 regular {fifo 1}  }
	{ p_chout_out int 32 regular {fifo 1}  }
	{ p_k_out int 32 regular {fifo 1}  }
	{ p_k_out4 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "W_inter_3_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "In_inter_3_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_inter_4_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "In_inter_3_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln207_5_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln207_2_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_inter_3_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_chin_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_chout_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_k_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_r_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_c_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_out2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chin_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chin_out3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chout_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_k_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_k_out4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
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
	{ W_inter_3_3_dout sc_in sc_lv 32 signal 0 } 
	{ W_inter_3_3_empty_n sc_in sc_logic 1 signal 0 } 
	{ W_inter_3_3_read sc_out sc_logic 1 signal 0 } 
	{ In_inter_3_3_dout sc_in sc_lv 32 signal 1 } 
	{ In_inter_3_3_empty_n sc_in sc_logic 1 signal 1 } 
	{ In_inter_3_3_read sc_out sc_logic 1 signal 1 } 
	{ W_inter_4_3_din sc_out sc_lv 32 signal 2 } 
	{ W_inter_4_3_full_n sc_in sc_logic 1 signal 2 } 
	{ W_inter_4_3_write sc_out sc_logic 1 signal 2 } 
	{ In_inter_3_4_din sc_out sc_lv 32 signal 3 } 
	{ In_inter_3_4_full_n sc_in sc_logic 1 signal 3 } 
	{ In_inter_3_4_write sc_out sc_logic 1 signal 3 } 
	{ add_ln207_5_loc_dout sc_in sc_lv 32 signal 4 } 
	{ add_ln207_5_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ add_ln207_5_loc_read sc_out sc_logic 1 signal 4 } 
	{ add_ln207_2_loc_dout sc_in sc_lv 32 signal 5 } 
	{ add_ln207_2_loc_empty_n sc_in sc_logic 1 signal 5 } 
	{ add_ln207_2_loc_read sc_out sc_logic 1 signal 5 } 
	{ O_inter_3_3_din sc_out sc_lv 32 signal 6 } 
	{ O_inter_3_3_full_n sc_in sc_logic 1 signal 6 } 
	{ O_inter_3_3_write sc_out sc_logic 1 signal 6 } 
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
	{ p_c_out_din sc_out sc_lv 32 signal 12 } 
	{ p_c_out_full_n sc_in sc_logic 1 signal 12 } 
	{ p_c_out_write sc_out sc_logic 1 signal 12 } 
	{ p_c_out1_din sc_out sc_lv 32 signal 13 } 
	{ p_c_out1_full_n sc_in sc_logic 1 signal 13 } 
	{ p_c_out1_write sc_out sc_logic 1 signal 13 } 
	{ p_c_out2_din sc_out sc_lv 32 signal 14 } 
	{ p_c_out2_full_n sc_in sc_logic 1 signal 14 } 
	{ p_c_out2_write sc_out sc_logic 1 signal 14 } 
	{ p_chin_out_din sc_out sc_lv 32 signal 15 } 
	{ p_chin_out_full_n sc_in sc_logic 1 signal 15 } 
	{ p_chin_out_write sc_out sc_logic 1 signal 15 } 
	{ p_chin_out3_din sc_out sc_lv 32 signal 16 } 
	{ p_chin_out3_full_n sc_in sc_logic 1 signal 16 } 
	{ p_chin_out3_write sc_out sc_logic 1 signal 16 } 
	{ p_chout_out_din sc_out sc_lv 32 signal 17 } 
	{ p_chout_out_full_n sc_in sc_logic 1 signal 17 } 
	{ p_chout_out_write sc_out sc_logic 1 signal 17 } 
	{ p_k_out_din sc_out sc_lv 32 signal 18 } 
	{ p_k_out_full_n sc_in sc_logic 1 signal 18 } 
	{ p_k_out_write sc_out sc_logic 1 signal 18 } 
	{ p_k_out4_din sc_out sc_lv 32 signal 19 } 
	{ p_k_out4_full_n sc_in sc_logic 1 signal 19 } 
	{ p_k_out4_write sc_out sc_logic 1 signal 19 } 
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
 	{ "name": "W_inter_3_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_inter_3_3", "role": "dout" }} , 
 	{ "name": "W_inter_3_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_inter_3_3", "role": "empty_n" }} , 
 	{ "name": "W_inter_3_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_inter_3_3", "role": "read" }} , 
 	{ "name": "In_inter_3_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_inter_3_3", "role": "dout" }} , 
 	{ "name": "In_inter_3_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_inter_3_3", "role": "empty_n" }} , 
 	{ "name": "In_inter_3_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_inter_3_3", "role": "read" }} , 
 	{ "name": "W_inter_4_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_inter_4_3", "role": "din" }} , 
 	{ "name": "W_inter_4_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_inter_4_3", "role": "full_n" }} , 
 	{ "name": "W_inter_4_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_inter_4_3", "role": "write" }} , 
 	{ "name": "In_inter_3_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_inter_3_4", "role": "din" }} , 
 	{ "name": "In_inter_3_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_inter_3_4", "role": "full_n" }} , 
 	{ "name": "In_inter_3_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_inter_3_4", "role": "write" }} , 
 	{ "name": "add_ln207_5_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln207_5_loc", "role": "dout" }} , 
 	{ "name": "add_ln207_5_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_ln207_5_loc", "role": "empty_n" }} , 
 	{ "name": "add_ln207_5_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_ln207_5_loc", "role": "read" }} , 
 	{ "name": "add_ln207_2_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_ln207_2_loc", "role": "dout" }} , 
 	{ "name": "add_ln207_2_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_ln207_2_loc", "role": "empty_n" }} , 
 	{ "name": "add_ln207_2_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "add_ln207_2_loc", "role": "read" }} , 
 	{ "name": "O_inter_3_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_inter_3_3", "role": "din" }} , 
 	{ "name": "O_inter_3_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_inter_3_3", "role": "full_n" }} , 
 	{ "name": "O_inter_3_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_inter_3_3", "role": "write" }} , 
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
 	{ "name": "p_c_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_out", "role": "din" }} , 
 	{ "name": "p_c_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out", "role": "full_n" }} , 
 	{ "name": "p_c_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out", "role": "write" }} , 
 	{ "name": "p_c_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_out1", "role": "din" }} , 
 	{ "name": "p_c_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out1", "role": "full_n" }} , 
 	{ "name": "p_c_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out1", "role": "write" }} , 
 	{ "name": "p_c_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_out2", "role": "din" }} , 
 	{ "name": "p_c_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out2", "role": "full_n" }} , 
 	{ "name": "p_c_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out2", "role": "write" }} , 
 	{ "name": "p_chin_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_out", "role": "din" }} , 
 	{ "name": "p_chin_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out", "role": "full_n" }} , 
 	{ "name": "p_chin_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out", "role": "write" }} , 
 	{ "name": "p_chin_out3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_out3", "role": "din" }} , 
 	{ "name": "p_chin_out3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out3", "role": "full_n" }} , 
 	{ "name": "p_chin_out3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_out3", "role": "write" }} , 
 	{ "name": "p_chout_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chout_out", "role": "din" }} , 
 	{ "name": "p_chout_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_out", "role": "full_n" }} , 
 	{ "name": "p_chout_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_out", "role": "write" }} , 
 	{ "name": "p_k_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_out", "role": "din" }} , 
 	{ "name": "p_k_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out", "role": "full_n" }} , 
 	{ "name": "p_k_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out", "role": "write" }} , 
 	{ "name": "p_k_out4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_out4", "role": "din" }} , 
 	{ "name": "p_k_out4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out4", "role": "full_n" }} , 
 	{ "name": "p_k_out4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "PE36",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "30072",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "W_inter_3_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_4_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_inter_4_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_inter_3_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_3_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chin_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_out4_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_CodEe_U408", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_CoeOg_U409", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE36 {
		W_inter_3_3 {Type I LastRead 4 FirstWrite -1}
		In_inter_3_3 {Type I LastRead 4 FirstWrite -1}
		W_inter_4_3 {Type O LastRead -1 FirstWrite 4}
		In_inter_3_4 {Type O LastRead -1 FirstWrite 4}
		add_ln207_5_loc {Type I LastRead 0 FirstWrite -1}
		add_ln207_2_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_3_3 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_c_out1 {Type O LastRead -1 FirstWrite 0}
		p_c_out2 {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out3 {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_k_out4 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "30072"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "30072"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	W_inter_3_3 { ap_fifo {  { W_inter_3_3_dout fifo_data 0 32 }  { W_inter_3_3_empty_n fifo_status 0 1 }  { W_inter_3_3_read fifo_update 1 1 } } }
	In_inter_3_3 { ap_fifo {  { In_inter_3_3_dout fifo_data 0 32 }  { In_inter_3_3_empty_n fifo_status 0 1 }  { In_inter_3_3_read fifo_update 1 1 } } }
	W_inter_4_3 { ap_fifo {  { W_inter_4_3_din fifo_data 1 32 }  { W_inter_4_3_full_n fifo_status 0 1 }  { W_inter_4_3_write fifo_update 1 1 } } }
	In_inter_3_4 { ap_fifo {  { In_inter_3_4_din fifo_data 1 32 }  { In_inter_3_4_full_n fifo_status 0 1 }  { In_inter_3_4_write fifo_update 1 1 } } }
	add_ln207_5_loc { ap_fifo {  { add_ln207_5_loc_dout fifo_data 0 32 }  { add_ln207_5_loc_empty_n fifo_status 0 1 }  { add_ln207_5_loc_read fifo_update 1 1 } } }
	add_ln207_2_loc { ap_fifo {  { add_ln207_2_loc_dout fifo_data 0 32 }  { add_ln207_2_loc_empty_n fifo_status 0 1 }  { add_ln207_2_loc_read fifo_update 1 1 } } }
	O_inter_3_3 { ap_fifo {  { O_inter_3_3_din fifo_data 1 32 }  { O_inter_3_3_full_n fifo_status 0 1 }  { O_inter_3_3_write fifo_update 1 1 } } }
	p_c_s { ap_fifo {  { p_c_s_dout fifo_data 0 32 }  { p_c_s_empty_n fifo_status 0 1 }  { p_c_s_read fifo_update 1 1 } } }
	p_chin_s { ap_fifo {  { p_chin_s_dout fifo_data 0 32 }  { p_chin_s_empty_n fifo_status 0 1 }  { p_chin_s_read fifo_update 1 1 } } }
	p_chout_s { ap_fifo {  { p_chout_s_dout fifo_data 0 32 }  { p_chout_s_empty_n fifo_status 0 1 }  { p_chout_s_read fifo_update 1 1 } } }
	p_k_s { ap_fifo {  { p_k_s_dout fifo_data 0 32 }  { p_k_s_empty_n fifo_status 0 1 }  { p_k_s_read fifo_update 1 1 } } }
	p_r_s { ap_fifo {  { p_r_s_dout fifo_data 0 32 }  { p_r_s_empty_n fifo_status 0 1 }  { p_r_s_read fifo_update 1 1 } } }
	p_c_out { ap_fifo {  { p_c_out_din fifo_data 1 32 }  { p_c_out_full_n fifo_status 0 1 }  { p_c_out_write fifo_update 1 1 } } }
	p_c_out1 { ap_fifo {  { p_c_out1_din fifo_data 1 32 }  { p_c_out1_full_n fifo_status 0 1 }  { p_c_out1_write fifo_update 1 1 } } }
	p_c_out2 { ap_fifo {  { p_c_out2_din fifo_data 1 32 }  { p_c_out2_full_n fifo_status 0 1 }  { p_c_out2_write fifo_update 1 1 } } }
	p_chin_out { ap_fifo {  { p_chin_out_din fifo_data 1 32 }  { p_chin_out_full_n fifo_status 0 1 }  { p_chin_out_write fifo_update 1 1 } } }
	p_chin_out3 { ap_fifo {  { p_chin_out3_din fifo_data 1 32 }  { p_chin_out3_full_n fifo_status 0 1 }  { p_chin_out3_write fifo_update 1 1 } } }
	p_chout_out { ap_fifo {  { p_chout_out_din fifo_data 1 32 }  { p_chout_out_full_n fifo_status 0 1 }  { p_chout_out_write fifo_update 1 1 } } }
	p_k_out { ap_fifo {  { p_k_out_din fifo_data 1 32 }  { p_k_out_full_n fifo_status 0 1 }  { p_k_out_write fifo_update 1 1 } } }
	p_k_out4 { ap_fifo {  { p_k_out4_din fifo_data 1 32 }  { p_k_out4_full_n fifo_status 0 1 }  { p_k_out4_write fifo_update 1 1 } } }
}
