set moduleName PE21
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
set C_modelName {PE21}
set C_modelType { void 0 }
set C_modelArgList {
	{ W_pre_V float 32 regular {fifo 0 volatile }  }
	{ In_pre_V float 32 regular {fifo 0 volatile }  }
	{ W_next_V8 float 32 regular {fifo 1 volatile }  }
	{ In_next_V50 float 32 regular {fifo 1 volatile }  }
	{ row int 32 regular {fifo 0}  }
	{ cho int 32 regular {fifo 0}  }
	{ O_V float 32 regular {fifo 1 volatile }  }
	{ p_c_s int 32 regular {fifo 0}  }
	{ p_chin_s int 32 regular {fifo 0}  }
	{ p_k_s int 32 regular {fifo 0}  }
	{ row_out int 32 regular {fifo 1}  }
	{ cho_out int 32 regular {fifo 1}  }
	{ cho_out1 int 32 regular {fifo 1}  }
	{ p_c_out int 32 regular {fifo 1}  }
	{ p_c_out2 int 32 regular {fifo 1}  }
	{ p_chin_out int 32 regular {fifo 1}  }
	{ p_chin_out3 int 32 regular {fifo 1}  }
	{ p_chout_out int 32 regular {fifo 1}  }
	{ p_chout_out4 int 32 regular {fifo 1}  }
	{ p_k_out int 32 regular {fifo 1}  }
	{ p_k_out5 int 32 regular {fifo 1}  }
	{ p_r_out int 32 regular {fifo 1}  }
	{ p_r_out6 int 32 regular {fifo 1}  }
	{ p_chout_s int 32 regular {pointer 0} {global 0}  }
	{ p_r_s int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "W_pre_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "In_pre_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_next_V8", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "In_next_V50", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cho", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_chin_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_k_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "row_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cho_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cho_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c_out2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chin_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chin_out3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chout_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chout_out4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_k_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_k_out5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_r_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_r_out6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_chout_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_chout_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_r_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_r_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ W_pre_V_dout sc_in sc_lv 32 signal 0 } 
	{ W_pre_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ W_pre_V_read sc_out sc_logic 1 signal 0 } 
	{ In_pre_V_dout sc_in sc_lv 32 signal 1 } 
	{ In_pre_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ In_pre_V_read sc_out sc_logic 1 signal 1 } 
	{ W_next_V8_din sc_out sc_lv 32 signal 2 } 
	{ W_next_V8_full_n sc_in sc_logic 1 signal 2 } 
	{ W_next_V8_write sc_out sc_logic 1 signal 2 } 
	{ In_next_V50_din sc_out sc_lv 32 signal 3 } 
	{ In_next_V50_full_n sc_in sc_logic 1 signal 3 } 
	{ In_next_V50_write sc_out sc_logic 1 signal 3 } 
	{ row_dout sc_in sc_lv 32 signal 4 } 
	{ row_empty_n sc_in sc_logic 1 signal 4 } 
	{ row_read sc_out sc_logic 1 signal 4 } 
	{ cho_dout sc_in sc_lv 32 signal 5 } 
	{ cho_empty_n sc_in sc_logic 1 signal 5 } 
	{ cho_read sc_out sc_logic 1 signal 5 } 
	{ O_V_din sc_out sc_lv 32 signal 6 } 
	{ O_V_full_n sc_in sc_logic 1 signal 6 } 
	{ O_V_write sc_out sc_logic 1 signal 6 } 
	{ p_c_s_dout sc_in sc_lv 32 signal 7 } 
	{ p_c_s_empty_n sc_in sc_logic 1 signal 7 } 
	{ p_c_s_read sc_out sc_logic 1 signal 7 } 
	{ p_chin_s_dout sc_in sc_lv 32 signal 8 } 
	{ p_chin_s_empty_n sc_in sc_logic 1 signal 8 } 
	{ p_chin_s_read sc_out sc_logic 1 signal 8 } 
	{ p_k_s_dout sc_in sc_lv 32 signal 9 } 
	{ p_k_s_empty_n sc_in sc_logic 1 signal 9 } 
	{ p_k_s_read sc_out sc_logic 1 signal 9 } 
	{ row_out_din sc_out sc_lv 32 signal 10 } 
	{ row_out_full_n sc_in sc_logic 1 signal 10 } 
	{ row_out_write sc_out sc_logic 1 signal 10 } 
	{ cho_out_din sc_out sc_lv 32 signal 11 } 
	{ cho_out_full_n sc_in sc_logic 1 signal 11 } 
	{ cho_out_write sc_out sc_logic 1 signal 11 } 
	{ cho_out1_din sc_out sc_lv 32 signal 12 } 
	{ cho_out1_full_n sc_in sc_logic 1 signal 12 } 
	{ cho_out1_write sc_out sc_logic 1 signal 12 } 
	{ p_c_out_din sc_out sc_lv 32 signal 13 } 
	{ p_c_out_full_n sc_in sc_logic 1 signal 13 } 
	{ p_c_out_write sc_out sc_logic 1 signal 13 } 
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
	{ p_chout_out4_din sc_out sc_lv 32 signal 18 } 
	{ p_chout_out4_full_n sc_in sc_logic 1 signal 18 } 
	{ p_chout_out4_write sc_out sc_logic 1 signal 18 } 
	{ p_k_out_din sc_out sc_lv 32 signal 19 } 
	{ p_k_out_full_n sc_in sc_logic 1 signal 19 } 
	{ p_k_out_write sc_out sc_logic 1 signal 19 } 
	{ p_k_out5_din sc_out sc_lv 32 signal 20 } 
	{ p_k_out5_full_n sc_in sc_logic 1 signal 20 } 
	{ p_k_out5_write sc_out sc_logic 1 signal 20 } 
	{ p_r_out_din sc_out sc_lv 32 signal 21 } 
	{ p_r_out_full_n sc_in sc_logic 1 signal 21 } 
	{ p_r_out_write sc_out sc_logic 1 signal 21 } 
	{ p_r_out6_din sc_out sc_lv 32 signal 22 } 
	{ p_r_out6_full_n sc_in sc_logic 1 signal 22 } 
	{ p_r_out6_write sc_out sc_logic 1 signal 22 } 
	{ p_chout_s sc_in sc_lv 32 signal 23 } 
	{ p_r_s sc_in sc_lv 32 signal 24 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "W_pre_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_pre_V", "role": "dout" }} , 
 	{ "name": "W_pre_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_pre_V", "role": "empty_n" }} , 
 	{ "name": "W_pre_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_pre_V", "role": "read" }} , 
 	{ "name": "In_pre_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_pre_V", "role": "dout" }} , 
 	{ "name": "In_pre_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_pre_V", "role": "empty_n" }} , 
 	{ "name": "In_pre_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_pre_V", "role": "read" }} , 
 	{ "name": "W_next_V8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_next_V8", "role": "din" }} , 
 	{ "name": "W_next_V8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_V8", "role": "full_n" }} , 
 	{ "name": "W_next_V8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_next_V8", "role": "write" }} , 
 	{ "name": "In_next_V50_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_next_V50", "role": "din" }} , 
 	{ "name": "In_next_V50_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_V50", "role": "full_n" }} , 
 	{ "name": "In_next_V50_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_next_V50", "role": "write" }} , 
 	{ "name": "row_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row", "role": "dout" }} , 
 	{ "name": "row_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row", "role": "empty_n" }} , 
 	{ "name": "row_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row", "role": "read" }} , 
 	{ "name": "cho_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cho", "role": "dout" }} , 
 	{ "name": "cho_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho", "role": "empty_n" }} , 
 	{ "name": "cho_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho", "role": "read" }} , 
 	{ "name": "O_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_V", "role": "din" }} , 
 	{ "name": "O_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_V", "role": "full_n" }} , 
 	{ "name": "O_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_V", "role": "write" }} , 
 	{ "name": "p_c_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_s", "role": "dout" }} , 
 	{ "name": "p_c_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_s", "role": "empty_n" }} , 
 	{ "name": "p_c_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_s", "role": "read" }} , 
 	{ "name": "p_chin_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_s", "role": "dout" }} , 
 	{ "name": "p_chin_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_s", "role": "empty_n" }} , 
 	{ "name": "p_chin_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chin_s", "role": "read" }} , 
 	{ "name": "p_k_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_s", "role": "dout" }} , 
 	{ "name": "p_k_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_s", "role": "empty_n" }} , 
 	{ "name": "p_k_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_s", "role": "read" }} , 
 	{ "name": "row_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_out", "role": "din" }} , 
 	{ "name": "row_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_out", "role": "full_n" }} , 
 	{ "name": "row_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_out", "role": "write" }} , 
 	{ "name": "cho_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cho_out", "role": "din" }} , 
 	{ "name": "cho_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho_out", "role": "full_n" }} , 
 	{ "name": "cho_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho_out", "role": "write" }} , 
 	{ "name": "cho_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cho_out1", "role": "din" }} , 
 	{ "name": "cho_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho_out1", "role": "full_n" }} , 
 	{ "name": "cho_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho_out1", "role": "write" }} , 
 	{ "name": "p_c_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_out", "role": "din" }} , 
 	{ "name": "p_c_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out", "role": "full_n" }} , 
 	{ "name": "p_c_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_out", "role": "write" }} , 
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
 	{ "name": "p_chout_out4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chout_out4", "role": "din" }} , 
 	{ "name": "p_chout_out4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_out4", "role": "full_n" }} , 
 	{ "name": "p_chout_out4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_out4", "role": "write" }} , 
 	{ "name": "p_k_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_out", "role": "din" }} , 
 	{ "name": "p_k_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out", "role": "full_n" }} , 
 	{ "name": "p_k_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out", "role": "write" }} , 
 	{ "name": "p_k_out5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_out5", "role": "din" }} , 
 	{ "name": "p_k_out5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out5", "role": "full_n" }} , 
 	{ "name": "p_k_out5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_k_out5", "role": "write" }} , 
 	{ "name": "p_r_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_r_out", "role": "din" }} , 
 	{ "name": "p_r_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_r_out", "role": "full_n" }} , 
 	{ "name": "p_r_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_r_out", "role": "write" }} , 
 	{ "name": "p_r_out6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_r_out6", "role": "din" }} , 
 	{ "name": "p_r_out6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_r_out6", "role": "full_n" }} , 
 	{ "name": "p_r_out6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_r_out6", "role": "write" }} , 
 	{ "name": "p_chout_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chout_s", "role": "default" }} , 
 	{ "name": "p_r_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_r_s", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "PE21",
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
			{"Name" : "W_pre_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_pre_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_pre_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_pre_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_V8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "W_next_V8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_V50", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "In_next_V50_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cho_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "p_chout_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chout_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_k_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_r_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_r_s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_Cocud_U62", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_CodEe_U63", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE21 {
		W_pre_V {Type I LastRead 4 FirstWrite -1}
		In_pre_V {Type I LastRead 4 FirstWrite -1}
		W_next_V8 {Type O LastRead -1 FirstWrite 4}
		In_next_V50 {Type O LastRead -1 FirstWrite 4}
		row {Type I LastRead 0 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		O_V {Type O LastRead -1 FirstWrite 2}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		row_out {Type O LastRead -1 FirstWrite 0}
		cho_out {Type O LastRead -1 FirstWrite 0}
		cho_out1 {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_c_out2 {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out3 {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_chout_out4 {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_k_out5 {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}
		p_r_out6 {Type O LastRead -1 FirstWrite 0}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "72221"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "72221"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	W_pre_V { ap_fifo {  { W_pre_V_dout fifo_data 0 32 }  { W_pre_V_empty_n fifo_status 0 1 }  { W_pre_V_read fifo_update 1 1 } } }
	In_pre_V { ap_fifo {  { In_pre_V_dout fifo_data 0 32 }  { In_pre_V_empty_n fifo_status 0 1 }  { In_pre_V_read fifo_update 1 1 } } }
	W_next_V8 { ap_fifo {  { W_next_V8_din fifo_data 1 32 }  { W_next_V8_full_n fifo_status 0 1 }  { W_next_V8_write fifo_update 1 1 } } }
	In_next_V50 { ap_fifo {  { In_next_V50_din fifo_data 1 32 }  { In_next_V50_full_n fifo_status 0 1 }  { In_next_V50_write fifo_update 1 1 } } }
	row { ap_fifo {  { row_dout fifo_data 0 32 }  { row_empty_n fifo_status 0 1 }  { row_read fifo_update 1 1 } } }
	cho { ap_fifo {  { cho_dout fifo_data 0 32 }  { cho_empty_n fifo_status 0 1 }  { cho_read fifo_update 1 1 } } }
	O_V { ap_fifo {  { O_V_din fifo_data 1 32 }  { O_V_full_n fifo_status 0 1 }  { O_V_write fifo_update 1 1 } } }
	p_c_s { ap_fifo {  { p_c_s_dout fifo_data 0 32 }  { p_c_s_empty_n fifo_status 0 1 }  { p_c_s_read fifo_update 1 1 } } }
	p_chin_s { ap_fifo {  { p_chin_s_dout fifo_data 0 32 }  { p_chin_s_empty_n fifo_status 0 1 }  { p_chin_s_read fifo_update 1 1 } } }
	p_k_s { ap_fifo {  { p_k_s_dout fifo_data 0 32 }  { p_k_s_empty_n fifo_status 0 1 }  { p_k_s_read fifo_update 1 1 } } }
	row_out { ap_fifo {  { row_out_din fifo_data 1 32 }  { row_out_full_n fifo_status 0 1 }  { row_out_write fifo_update 1 1 } } }
	cho_out { ap_fifo {  { cho_out_din fifo_data 1 32 }  { cho_out_full_n fifo_status 0 1 }  { cho_out_write fifo_update 1 1 } } }
	cho_out1 { ap_fifo {  { cho_out1_din fifo_data 1 32 }  { cho_out1_full_n fifo_status 0 1 }  { cho_out1_write fifo_update 1 1 } } }
	p_c_out { ap_fifo {  { p_c_out_din fifo_data 1 32 }  { p_c_out_full_n fifo_status 0 1 }  { p_c_out_write fifo_update 1 1 } } }
	p_c_out2 { ap_fifo {  { p_c_out2_din fifo_data 1 32 }  { p_c_out2_full_n fifo_status 0 1 }  { p_c_out2_write fifo_update 1 1 } } }
	p_chin_out { ap_fifo {  { p_chin_out_din fifo_data 1 32 }  { p_chin_out_full_n fifo_status 0 1 }  { p_chin_out_write fifo_update 1 1 } } }
	p_chin_out3 { ap_fifo {  { p_chin_out3_din fifo_data 1 32 }  { p_chin_out3_full_n fifo_status 0 1 }  { p_chin_out3_write fifo_update 1 1 } } }
	p_chout_out { ap_fifo {  { p_chout_out_din fifo_data 1 32 }  { p_chout_out_full_n fifo_status 0 1 }  { p_chout_out_write fifo_update 1 1 } } }
	p_chout_out4 { ap_fifo {  { p_chout_out4_din fifo_data 1 32 }  { p_chout_out4_full_n fifo_status 0 1 }  { p_chout_out4_write fifo_update 1 1 } } }
	p_k_out { ap_fifo {  { p_k_out_din fifo_data 1 32 }  { p_k_out_full_n fifo_status 0 1 }  { p_k_out_write fifo_update 1 1 } } }
	p_k_out5 { ap_fifo {  { p_k_out5_din fifo_data 1 32 }  { p_k_out5_full_n fifo_status 0 1 }  { p_k_out5_write fifo_update 1 1 } } }
	p_r_out { ap_fifo {  { p_r_out_din fifo_data 1 32 }  { p_r_out_full_n fifo_status 0 1 }  { p_r_out_write fifo_update 1 1 } } }
	p_r_out6 { ap_fifo {  { p_r_out6_din fifo_data 1 32 }  { p_r_out6_full_n fifo_status 0 1 }  { p_r_out6_write fifo_update 1 1 } } }
	p_chout_s { ap_none {  { p_chout_s in_data 0 32 } } }
	p_r_s { ap_none {  { p_r_s in_data 0 32 } } }
}
