set moduleName Write_O_ALL
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
set C_modelName {Write_O_ALL}
set C_modelType { void 0 }
set C_modelArgList {
	{ Out_buf float 32 regular {array 500 { 0 3 } 0 1 }  }
	{ O_0_0_V float 32 regular {fifo 0 volatile }  }
	{ O_0_1_V float 32 regular {fifo 0 volatile }  }
	{ O_0_2_V float 32 regular {fifo 0 volatile }  }
	{ O_0_3_V float 32 regular {fifo 0 volatile }  }
	{ O_1_0_V float 32 regular {fifo 0 volatile }  }
	{ O_1_1_V float 32 regular {fifo 0 volatile }  }
	{ O_1_2_V float 32 regular {fifo 0 volatile }  }
	{ O_1_3_V float 32 regular {fifo 0 volatile }  }
	{ O_2_0_V float 32 regular {fifo 0 volatile }  }
	{ O_2_1_V float 32 regular {fifo 0 volatile }  }
	{ O_2_2_V float 32 regular {fifo 0 volatile }  }
	{ O_2_3_V float 32 regular {fifo 0 volatile }  }
	{ O_3_0_V float 32 regular {fifo 0 volatile }  }
	{ O_3_1_V float 32 regular {fifo 0 volatile }  }
	{ O_3_2_V float 32 regular {fifo 0 volatile }  }
	{ O_3_3_V float 32 regular {fifo 0 volatile }  }
	{ cho int 32 regular {fifo 0}  }
	{ p_c_s int 32 regular {fifo 0}  }
	{ p_chout_s int 32 regular {fifo 0}  }
	{ Out_buf_cho int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Out_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "O_0_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_0_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_0_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_0_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_1_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_1_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_1_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_1_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_2_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_2_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_2_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_2_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_3_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_3_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_3_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "O_3_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cho", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_c_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_chout_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Out_buf_cho", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Out_buf_cho","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Out_buf_address0 sc_out sc_lv 9 signal 0 } 
	{ Out_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ Out_buf_we0 sc_out sc_logic 1 signal 0 } 
	{ Out_buf_d0 sc_out sc_lv 32 signal 0 } 
	{ O_0_0_V_dout sc_in sc_lv 32 signal 1 } 
	{ O_0_0_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ O_0_0_V_read sc_out sc_logic 1 signal 1 } 
	{ O_0_1_V_dout sc_in sc_lv 32 signal 2 } 
	{ O_0_1_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ O_0_1_V_read sc_out sc_logic 1 signal 2 } 
	{ O_0_2_V_dout sc_in sc_lv 32 signal 3 } 
	{ O_0_2_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ O_0_2_V_read sc_out sc_logic 1 signal 3 } 
	{ O_0_3_V_dout sc_in sc_lv 32 signal 4 } 
	{ O_0_3_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ O_0_3_V_read sc_out sc_logic 1 signal 4 } 
	{ O_1_0_V_dout sc_in sc_lv 32 signal 5 } 
	{ O_1_0_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ O_1_0_V_read sc_out sc_logic 1 signal 5 } 
	{ O_1_1_V_dout sc_in sc_lv 32 signal 6 } 
	{ O_1_1_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ O_1_1_V_read sc_out sc_logic 1 signal 6 } 
	{ O_1_2_V_dout sc_in sc_lv 32 signal 7 } 
	{ O_1_2_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ O_1_2_V_read sc_out sc_logic 1 signal 7 } 
	{ O_1_3_V_dout sc_in sc_lv 32 signal 8 } 
	{ O_1_3_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ O_1_3_V_read sc_out sc_logic 1 signal 8 } 
	{ O_2_0_V_dout sc_in sc_lv 32 signal 9 } 
	{ O_2_0_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ O_2_0_V_read sc_out sc_logic 1 signal 9 } 
	{ O_2_1_V_dout sc_in sc_lv 32 signal 10 } 
	{ O_2_1_V_empty_n sc_in sc_logic 1 signal 10 } 
	{ O_2_1_V_read sc_out sc_logic 1 signal 10 } 
	{ O_2_2_V_dout sc_in sc_lv 32 signal 11 } 
	{ O_2_2_V_empty_n sc_in sc_logic 1 signal 11 } 
	{ O_2_2_V_read sc_out sc_logic 1 signal 11 } 
	{ O_2_3_V_dout sc_in sc_lv 32 signal 12 } 
	{ O_2_3_V_empty_n sc_in sc_logic 1 signal 12 } 
	{ O_2_3_V_read sc_out sc_logic 1 signal 12 } 
	{ O_3_0_V_dout sc_in sc_lv 32 signal 13 } 
	{ O_3_0_V_empty_n sc_in sc_logic 1 signal 13 } 
	{ O_3_0_V_read sc_out sc_logic 1 signal 13 } 
	{ O_3_1_V_dout sc_in sc_lv 32 signal 14 } 
	{ O_3_1_V_empty_n sc_in sc_logic 1 signal 14 } 
	{ O_3_1_V_read sc_out sc_logic 1 signal 14 } 
	{ O_3_2_V_dout sc_in sc_lv 32 signal 15 } 
	{ O_3_2_V_empty_n sc_in sc_logic 1 signal 15 } 
	{ O_3_2_V_read sc_out sc_logic 1 signal 15 } 
	{ O_3_3_V_dout sc_in sc_lv 32 signal 16 } 
	{ O_3_3_V_empty_n sc_in sc_logic 1 signal 16 } 
	{ O_3_3_V_read sc_out sc_logic 1 signal 16 } 
	{ cho_dout sc_in sc_lv 32 signal 17 } 
	{ cho_empty_n sc_in sc_logic 1 signal 17 } 
	{ cho_read sc_out sc_logic 1 signal 17 } 
	{ p_c_s_dout sc_in sc_lv 32 signal 18 } 
	{ p_c_s_empty_n sc_in sc_logic 1 signal 18 } 
	{ p_c_s_read sc_out sc_logic 1 signal 18 } 
	{ p_chout_s_dout sc_in sc_lv 32 signal 19 } 
	{ p_chout_s_empty_n sc_in sc_logic 1 signal 19 } 
	{ p_chout_s_read sc_out sc_logic 1 signal 19 } 
	{ Out_buf_cho sc_in sc_lv 32 signal 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Out_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "Out_buf", "role": "address0" }} , 
 	{ "name": "Out_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_buf", "role": "ce0" }} , 
 	{ "name": "Out_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_buf", "role": "we0" }} , 
 	{ "name": "Out_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_buf", "role": "d0" }} , 
 	{ "name": "O_0_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_0_0_V", "role": "dout" }} , 
 	{ "name": "O_0_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_0_0_V", "role": "empty_n" }} , 
 	{ "name": "O_0_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_0_0_V", "role": "read" }} , 
 	{ "name": "O_0_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_0_1_V", "role": "dout" }} , 
 	{ "name": "O_0_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_0_1_V", "role": "empty_n" }} , 
 	{ "name": "O_0_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_0_1_V", "role": "read" }} , 
 	{ "name": "O_0_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_0_2_V", "role": "dout" }} , 
 	{ "name": "O_0_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_0_2_V", "role": "empty_n" }} , 
 	{ "name": "O_0_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_0_2_V", "role": "read" }} , 
 	{ "name": "O_0_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_0_3_V", "role": "dout" }} , 
 	{ "name": "O_0_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_0_3_V", "role": "empty_n" }} , 
 	{ "name": "O_0_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_0_3_V", "role": "read" }} , 
 	{ "name": "O_1_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_1_0_V", "role": "dout" }} , 
 	{ "name": "O_1_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_1_0_V", "role": "empty_n" }} , 
 	{ "name": "O_1_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_1_0_V", "role": "read" }} , 
 	{ "name": "O_1_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_1_1_V", "role": "dout" }} , 
 	{ "name": "O_1_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_1_1_V", "role": "empty_n" }} , 
 	{ "name": "O_1_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_1_1_V", "role": "read" }} , 
 	{ "name": "O_1_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_1_2_V", "role": "dout" }} , 
 	{ "name": "O_1_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_1_2_V", "role": "empty_n" }} , 
 	{ "name": "O_1_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_1_2_V", "role": "read" }} , 
 	{ "name": "O_1_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_1_3_V", "role": "dout" }} , 
 	{ "name": "O_1_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_1_3_V", "role": "empty_n" }} , 
 	{ "name": "O_1_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_1_3_V", "role": "read" }} , 
 	{ "name": "O_2_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_2_0_V", "role": "dout" }} , 
 	{ "name": "O_2_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_2_0_V", "role": "empty_n" }} , 
 	{ "name": "O_2_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_2_0_V", "role": "read" }} , 
 	{ "name": "O_2_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_2_1_V", "role": "dout" }} , 
 	{ "name": "O_2_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_2_1_V", "role": "empty_n" }} , 
 	{ "name": "O_2_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_2_1_V", "role": "read" }} , 
 	{ "name": "O_2_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_2_2_V", "role": "dout" }} , 
 	{ "name": "O_2_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_2_2_V", "role": "empty_n" }} , 
 	{ "name": "O_2_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_2_2_V", "role": "read" }} , 
 	{ "name": "O_2_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_2_3_V", "role": "dout" }} , 
 	{ "name": "O_2_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_2_3_V", "role": "empty_n" }} , 
 	{ "name": "O_2_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_2_3_V", "role": "read" }} , 
 	{ "name": "O_3_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_3_0_V", "role": "dout" }} , 
 	{ "name": "O_3_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_3_0_V", "role": "empty_n" }} , 
 	{ "name": "O_3_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_3_0_V", "role": "read" }} , 
 	{ "name": "O_3_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_3_1_V", "role": "dout" }} , 
 	{ "name": "O_3_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_3_1_V", "role": "empty_n" }} , 
 	{ "name": "O_3_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_3_1_V", "role": "read" }} , 
 	{ "name": "O_3_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_3_2_V", "role": "dout" }} , 
 	{ "name": "O_3_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_3_2_V", "role": "empty_n" }} , 
 	{ "name": "O_3_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_3_2_V", "role": "read" }} , 
 	{ "name": "O_3_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "O_3_3_V", "role": "dout" }} , 
 	{ "name": "O_3_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_3_3_V", "role": "empty_n" }} , 
 	{ "name": "O_3_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "O_3_3_V", "role": "read" }} , 
 	{ "name": "cho_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cho", "role": "dout" }} , 
 	{ "name": "cho_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho", "role": "empty_n" }} , 
 	{ "name": "cho_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cho", "role": "read" }} , 
 	{ "name": "p_c_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_s", "role": "dout" }} , 
 	{ "name": "p_c_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_s", "role": "empty_n" }} , 
 	{ "name": "p_c_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c_s", "role": "read" }} , 
 	{ "name": "p_chout_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chout_s", "role": "dout" }} , 
 	{ "name": "p_chout_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_s", "role": "empty_n" }} , 
 	{ "name": "p_chout_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_chout_s", "role": "read" }} , 
 	{ "name": "Out_buf_cho", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_buf_cho", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Write_O_ALL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Out_buf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "O_0_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_0_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_0_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_0_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_0_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_0_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_0_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_0_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_1_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_1_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_1_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_1_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_2_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_2_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_2_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_2_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_3_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_3_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_3_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "O_3_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Out_buf_cho", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	Write_O_ALL {
		Out_buf {Type O LastRead -1 FirstWrite 1}
		O_0_0_V {Type I LastRead 1 FirstWrite -1}
		O_0_1_V {Type I LastRead 1 FirstWrite -1}
		O_0_2_V {Type I LastRead 1 FirstWrite -1}
		O_0_3_V {Type I LastRead 1 FirstWrite -1}
		O_1_0_V {Type I LastRead 1 FirstWrite -1}
		O_1_1_V {Type I LastRead 1 FirstWrite -1}
		O_1_2_V {Type I LastRead 1 FirstWrite -1}
		O_1_3_V {Type I LastRead 1 FirstWrite -1}
		O_2_0_V {Type I LastRead 1 FirstWrite -1}
		O_2_1_V {Type I LastRead 1 FirstWrite -1}
		O_2_2_V {Type I LastRead 1 FirstWrite -1}
		O_2_3_V {Type I LastRead 1 FirstWrite -1}
		O_3_0_V {Type I LastRead 1 FirstWrite -1}
		O_3_1_V {Type I LastRead 1 FirstWrite -1}
		O_3_2_V {Type I LastRead 1 FirstWrite -1}
		O_3_3_V {Type I LastRead 1 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		Out_buf_cho {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "161"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "161"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Out_buf { ap_memory {  { Out_buf_address0 mem_address 1 9 }  { Out_buf_ce0 mem_ce 1 1 }  { Out_buf_we0 mem_we 1 1 }  { Out_buf_d0 mem_din 1 32 } } }
	O_0_0_V { ap_fifo {  { O_0_0_V_dout fifo_data 0 32 }  { O_0_0_V_empty_n fifo_status 0 1 }  { O_0_0_V_read fifo_update 1 1 } } }
	O_0_1_V { ap_fifo {  { O_0_1_V_dout fifo_data 0 32 }  { O_0_1_V_empty_n fifo_status 0 1 }  { O_0_1_V_read fifo_update 1 1 } } }
	O_0_2_V { ap_fifo {  { O_0_2_V_dout fifo_data 0 32 }  { O_0_2_V_empty_n fifo_status 0 1 }  { O_0_2_V_read fifo_update 1 1 } } }
	O_0_3_V { ap_fifo {  { O_0_3_V_dout fifo_data 0 32 }  { O_0_3_V_empty_n fifo_status 0 1 }  { O_0_3_V_read fifo_update 1 1 } } }
	O_1_0_V { ap_fifo {  { O_1_0_V_dout fifo_data 0 32 }  { O_1_0_V_empty_n fifo_status 0 1 }  { O_1_0_V_read fifo_update 1 1 } } }
	O_1_1_V { ap_fifo {  { O_1_1_V_dout fifo_data 0 32 }  { O_1_1_V_empty_n fifo_status 0 1 }  { O_1_1_V_read fifo_update 1 1 } } }
	O_1_2_V { ap_fifo {  { O_1_2_V_dout fifo_data 0 32 }  { O_1_2_V_empty_n fifo_status 0 1 }  { O_1_2_V_read fifo_update 1 1 } } }
	O_1_3_V { ap_fifo {  { O_1_3_V_dout fifo_data 0 32 }  { O_1_3_V_empty_n fifo_status 0 1 }  { O_1_3_V_read fifo_update 1 1 } } }
	O_2_0_V { ap_fifo {  { O_2_0_V_dout fifo_data 0 32 }  { O_2_0_V_empty_n fifo_status 0 1 }  { O_2_0_V_read fifo_update 1 1 } } }
	O_2_1_V { ap_fifo {  { O_2_1_V_dout fifo_data 0 32 }  { O_2_1_V_empty_n fifo_status 0 1 }  { O_2_1_V_read fifo_update 1 1 } } }
	O_2_2_V { ap_fifo {  { O_2_2_V_dout fifo_data 0 32 }  { O_2_2_V_empty_n fifo_status 0 1 }  { O_2_2_V_read fifo_update 1 1 } } }
	O_2_3_V { ap_fifo {  { O_2_3_V_dout fifo_data 0 32 }  { O_2_3_V_empty_n fifo_status 0 1 }  { O_2_3_V_read fifo_update 1 1 } } }
	O_3_0_V { ap_fifo {  { O_3_0_V_dout fifo_data 0 32 }  { O_3_0_V_empty_n fifo_status 0 1 }  { O_3_0_V_read fifo_update 1 1 } } }
	O_3_1_V { ap_fifo {  { O_3_1_V_dout fifo_data 0 32 }  { O_3_1_V_empty_n fifo_status 0 1 }  { O_3_1_V_read fifo_update 1 1 } } }
	O_3_2_V { ap_fifo {  { O_3_2_V_dout fifo_data 0 32 }  { O_3_2_V_empty_n fifo_status 0 1 }  { O_3_2_V_read fifo_update 1 1 } } }
	O_3_3_V { ap_fifo {  { O_3_3_V_dout fifo_data 0 32 }  { O_3_3_V_empty_n fifo_status 0 1 }  { O_3_3_V_read fifo_update 1 1 } } }
	cho { ap_fifo {  { cho_dout fifo_data 0 32 }  { cho_empty_n fifo_status 0 1 }  { cho_read fifo_update 1 1 } } }
	p_c_s { ap_fifo {  { p_c_s_dout fifo_data 0 32 }  { p_c_s_empty_n fifo_status 0 1 }  { p_c_s_read fifo_update 1 1 } } }
	p_chout_s { ap_fifo {  { p_chout_s_dout fifo_data 0 32 }  { p_chout_s_empty_n fifo_status 0 1 }  { p_chout_s_read fifo_update 1 1 } } }
	Out_buf_cho { ap_none {  { Out_buf_cho in_data 0 32 } } }
}
