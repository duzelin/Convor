set moduleName PE_array
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {PE_array}
set C_modelType { void 0 }
set C_modelArgList {
	{ In_buf float 32 regular {array 500 { 1 1 } 1 1 }  }
	{ W_buf float 32 regular {array 500 { 1 1 } 1 1 }  }
	{ Out_buf float 32 regular {array 500 { 0 3 } 0 1 }  }
	{ row int 32 regular  }
	{ cho int 32 regular  }
	{ p_c_s int 32 regular {pointer 0} {global 0}  }
	{ p_chin_s int 32 regular {pointer 0} {global 0}  }
	{ p_k_s int 32 regular {pointer 0} {global 0}  }
	{ p_s_s int 32 regular {pointer 0} {global 0}  }
	{ In_buffer_start int 32 regular {pointer 0} {global 0}  }
	{ p_cin_s int 32 regular {pointer 0} {global 0}  }
	{ In_buffer_length int 32 regular {pointer 0} {global 0}  }
	{ p_chout_s int 32 regular {pointer 0} {global 0}  }
	{ p_r_s int 32 regular {pointer 0} {global 0}  }
	{ Out_buf_cho int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "In_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Out_buf", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cho", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_c_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_c_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_chin_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_chin_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_k_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_k_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_s_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_s_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "In_buffer_start", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "In_buffer_start","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_cin_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_cin_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "In_buffer_length", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "In_buffer_length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_chout_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_chout_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "p_r_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_r_","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "Out_buf_cho", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Out_buf_cho","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ In_buf_address0 sc_out sc_lv 9 signal 0 } 
	{ In_buf_ce0 sc_out sc_logic 1 signal 0 } 
	{ In_buf_d0 sc_out sc_lv 32 signal 0 } 
	{ In_buf_q0 sc_in sc_lv 32 signal 0 } 
	{ In_buf_we0 sc_out sc_logic 1 signal 0 } 
	{ In_buf_address1 sc_out sc_lv 9 signal 0 } 
	{ In_buf_ce1 sc_out sc_logic 1 signal 0 } 
	{ In_buf_d1 sc_out sc_lv 32 signal 0 } 
	{ In_buf_q1 sc_in sc_lv 32 signal 0 } 
	{ In_buf_we1 sc_out sc_logic 1 signal 0 } 
	{ W_buf_address0 sc_out sc_lv 9 signal 1 } 
	{ W_buf_ce0 sc_out sc_logic 1 signal 1 } 
	{ W_buf_d0 sc_out sc_lv 32 signal 1 } 
	{ W_buf_q0 sc_in sc_lv 32 signal 1 } 
	{ W_buf_we0 sc_out sc_logic 1 signal 1 } 
	{ W_buf_address1 sc_out sc_lv 9 signal 1 } 
	{ W_buf_ce1 sc_out sc_logic 1 signal 1 } 
	{ W_buf_d1 sc_out sc_lv 32 signal 1 } 
	{ W_buf_q1 sc_in sc_lv 32 signal 1 } 
	{ W_buf_we1 sc_out sc_logic 1 signal 1 } 
	{ Out_buf_address0 sc_out sc_lv 9 signal 2 } 
	{ Out_buf_ce0 sc_out sc_logic 1 signal 2 } 
	{ Out_buf_d0 sc_out sc_lv 32 signal 2 } 
	{ Out_buf_q0 sc_in sc_lv 32 signal 2 } 
	{ Out_buf_we0 sc_out sc_logic 1 signal 2 } 
	{ Out_buf_address1 sc_out sc_lv 9 signal 2 } 
	{ Out_buf_ce1 sc_out sc_logic 1 signal 2 } 
	{ Out_buf_d1 sc_out sc_lv 32 signal 2 } 
	{ Out_buf_q1 sc_in sc_lv 32 signal 2 } 
	{ Out_buf_we1 sc_out sc_logic 1 signal 2 } 
	{ row sc_in sc_lv 32 signal 3 } 
	{ cho sc_in sc_lv 32 signal 4 } 
	{ p_c_s sc_in sc_lv 32 signal 5 } 
	{ p_chin_s sc_in sc_lv 32 signal 6 } 
	{ p_k_s sc_in sc_lv 32 signal 7 } 
	{ p_s_s sc_in sc_lv 32 signal 8 } 
	{ In_buffer_start sc_in sc_lv 32 signal 9 } 
	{ p_cin_s sc_in sc_lv 32 signal 10 } 
	{ In_buffer_length sc_in sc_lv 32 signal 11 } 
	{ p_chout_s sc_in sc_lv 32 signal 12 } 
	{ p_r_s sc_in sc_lv 32 signal 13 } 
	{ Out_buf_cho sc_in sc_lv 32 signal 14 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ row_ap_vld sc_in sc_logic 1 invld 3 } 
	{ cho_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ p_c_s_ap_vld sc_in sc_logic 1 invld 5 } 
	{ p_chin_s_ap_vld sc_in sc_logic 1 invld 6 } 
	{ p_k_s_ap_vld sc_in sc_logic 1 invld 7 } 
	{ p_s_s_ap_vld sc_in sc_logic 1 invld 8 } 
	{ In_buffer_start_ap_vld sc_in sc_logic 1 invld 9 } 
	{ p_cin_s_ap_vld sc_in sc_logic 1 invld 10 } 
	{ In_buffer_length_ap_vld sc_in sc_logic 1 invld 11 } 
	{ p_chout_s_ap_vld sc_in sc_logic 1 invld 12 } 
	{ p_r_s_ap_vld sc_in sc_logic 1 invld 13 } 
	{ Out_buf_cho_ap_vld sc_in sc_logic 1 invld 14 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "In_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "In_buf", "role": "address0" }} , 
 	{ "name": "In_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_buf", "role": "ce0" }} , 
 	{ "name": "In_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buf", "role": "d0" }} , 
 	{ "name": "In_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buf", "role": "q0" }} , 
 	{ "name": "In_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_buf", "role": "we0" }} , 
 	{ "name": "In_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "In_buf", "role": "address1" }} , 
 	{ "name": "In_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_buf", "role": "ce1" }} , 
 	{ "name": "In_buf_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buf", "role": "d1" }} , 
 	{ "name": "In_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buf", "role": "q1" }} , 
 	{ "name": "In_buf_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "In_buf", "role": "we1" }} , 
 	{ "name": "W_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_buf", "role": "address0" }} , 
 	{ "name": "W_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_buf", "role": "ce0" }} , 
 	{ "name": "W_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_buf", "role": "d0" }} , 
 	{ "name": "W_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_buf", "role": "q0" }} , 
 	{ "name": "W_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_buf", "role": "we0" }} , 
 	{ "name": "W_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_buf", "role": "address1" }} , 
 	{ "name": "W_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_buf", "role": "ce1" }} , 
 	{ "name": "W_buf_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_buf", "role": "d1" }} , 
 	{ "name": "W_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_buf", "role": "q1" }} , 
 	{ "name": "W_buf_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_buf", "role": "we1" }} , 
 	{ "name": "Out_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "Out_buf", "role": "address0" }} , 
 	{ "name": "Out_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_buf", "role": "ce0" }} , 
 	{ "name": "Out_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_buf", "role": "d0" }} , 
 	{ "name": "Out_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_buf", "role": "q0" }} , 
 	{ "name": "Out_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_buf", "role": "we0" }} , 
 	{ "name": "Out_buf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "Out_buf", "role": "address1" }} , 
 	{ "name": "Out_buf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_buf", "role": "ce1" }} , 
 	{ "name": "Out_buf_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_buf", "role": "d1" }} , 
 	{ "name": "Out_buf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_buf", "role": "q1" }} , 
 	{ "name": "Out_buf_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Out_buf", "role": "we1" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "cho", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cho", "role": "default" }} , 
 	{ "name": "p_c_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c_s", "role": "default" }} , 
 	{ "name": "p_chin_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chin_s", "role": "default" }} , 
 	{ "name": "p_k_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_k_s", "role": "default" }} , 
 	{ "name": "p_s_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_s_s", "role": "default" }} , 
 	{ "name": "In_buffer_start", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buffer_start", "role": "default" }} , 
 	{ "name": "p_cin_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cin_s", "role": "default" }} , 
 	{ "name": "In_buffer_length", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "In_buffer_length", "role": "default" }} , 
 	{ "name": "p_chout_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_chout_s", "role": "default" }} , 
 	{ "name": "p_r_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_r_s", "role": "default" }} , 
 	{ "name": "Out_buf_cho", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Out_buf_cho", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "row_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "row", "role": "ap_vld" }} , 
 	{ "name": "cho_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "cho", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "p_c_s_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_c_s", "role": "ap_vld" }} , 
 	{ "name": "p_chin_s_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_chin_s", "role": "ap_vld" }} , 
 	{ "name": "p_k_s_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_k_s", "role": "ap_vld" }} , 
 	{ "name": "p_s_s_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_s_s", "role": "ap_vld" }} , 
 	{ "name": "In_buffer_start_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "In_buffer_start", "role": "ap_vld" }} , 
 	{ "name": "p_cin_s_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_cin_s", "role": "ap_vld" }} , 
 	{ "name": "In_buffer_length_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "In_buffer_length", "role": "ap_vld" }} , 
 	{ "name": "p_chout_s_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_chout_s", "role": "ap_vld" }} , 
 	{ "name": "p_r_s_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_r_s", "role": "ap_vld" }} , 
 	{ "name": "Out_buf_cho_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Out_buf_cho", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "8", "9", "12", "13", "16", "17", "20", "21", "24", "25", "28", "31", "34", "37", "38", "41", "44", "47", "50", "51", "54", "57", "60", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306"],
		"CDFG" : "PE_array",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "30115",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "PE_array_entry6_U0", "ReadyCount" : "PE_array_entry6_U0_ap_ready_count"},
			{"ID" : "3", "Name" : "Load_In_ALL_U0", "ReadyCount" : "Load_In_ALL_U0_ap_ready_count"},
			{"ID" : "8", "Name" : "Load_W_ALL_U0", "ReadyCount" : "Load_W_ALL_U0_ap_ready_count"},
			{"ID" : "9", "Name" : "PE21_U0", "ReadyCount" : "PE21_U0_ap_ready_count"},
			{"ID" : "63", "Name" : "Write_O_ALL_U0", "ReadyCount" : "Write_O_ALL_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "Write_O_ALL_U0"},
			{"ID" : "64", "Name" : "Drain_In37_U0"},
			{"ID" : "65", "Name" : "Drain_In38_U0"},
			{"ID" : "66", "Name" : "Drain_In39_U0"},
			{"ID" : "67", "Name" : "Drain_In40_U0"},
			{"ID" : "68", "Name" : "Drain_W41_U0"},
			{"ID" : "69", "Name" : "Drain_W42_U0"},
			{"ID" : "70", "Name" : "Drain_W43_U0"},
			{"ID" : "71", "Name" : "Drain_W44_U0"}],
		"Port" : [
			{"Name" : "In_buf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Load_In_ALL_U0", "Port" : "In_buf"}]},
			{"Name" : "W_buf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "Load_W_ALL_U0", "Port" : "W_buf"}]},
			{"Name" : "Out_buf", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "Write_O_ALL_U0", "Port" : "Out_buf"}]},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "cho", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_c_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_c_s"}]},
			{"Name" : "p_chin_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_chin_s"}]},
			{"Name" : "p_k_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_k_s"}]},
			{"Name" : "p_s_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_s_s"}]},
			{"Name" : "In_buffer_start", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Load_In_ALL_U0", "Port" : "In_buffer_start"}]},
			{"Name" : "p_cin_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_cin_s"}]},
			{"Name" : "In_buffer_length", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Load_In_ALL_U0", "Port" : "In_buffer_length"}]},
			{"Name" : "p_chout_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "PE21_U0", "Port" : "p_chout_s"}]},
			{"Name" : "p_r_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "PE21_U0", "Port" : "p_r_s"}]},
			{"Name" : "Out_buf_cho", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "Write_O_ALL_U0", "Port" : "Out_buf_cho"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_array_entry6_U0", "Parent" : "0",
		"CDFG" : "PE_array_entry6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "cho", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_array_entry141_U0", "Parent" : "0",
		"CDFG" : "PE_array_entry141",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_PE_arraeOg_U",
		"Port" : [
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "row_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "row_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "row_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "cho_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "cho_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "cho_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "cho_out7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Load_In_ALL_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "Load_In_ALL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "1839",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "In_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "In_next_0_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "In_next_0_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_1_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "In_next_1_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_2_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "In_next_2_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_3_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "In_next_3_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "p_k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_chin_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_k_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_s_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "In_buffer_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cin_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "In_buffer_length", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Load_In_ALL_U0.Systolic_Array_Cobkb_U34", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Load_In_ALL_U0.Systolic_Array_Cobkb_U35", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Load_In_ALL_U0.Systolic_Array_Cobkb_U36", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Load_In_ALL_U0.Systolic_Array_Cobkb_U37", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Load_W_ALL_U0", "Parent" : "0",
		"CDFG" : "Load_W_ALL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1805",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_next_0_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "W_next_0_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_0_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "W_next_0_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_0_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "W_next_0_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_0_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "W_next_0_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE21_U0", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "PE21",
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
			{"Name" : "W_pre_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "W_pre_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_pre_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "In_pre_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_V8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "W_next_V8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_V50", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "In_next_V50_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "O_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "cho_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "p_c_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "p_chin_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "p_chout_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "p_k_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "p_r_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_r_s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE21_U0.Systolic_Array_Cocud_U65", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE21_U0.Systolic_Array_CodEe_U66", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_array_Block_preh_5_U0", "Parent" : "0",
		"CDFG" : "PE_array_Block_preh_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_PE_arrafYi_U",
		"Port" : [
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "add_ln207_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE22_U0", "Parent" : "0", "Child" : ["14", "15"],
		"CDFG" : "PE22",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_PE22_U0_U",
		"Port" : [
			{"Name" : "W_inter_0_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "W_inter_0_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "In_inter_0_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "W_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "In_inter_0_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_0_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "O_inter_0_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "p_chout_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "126",
				"BlockSignal" : [
					{"Name" : "p_k_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "127",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "128",
				"BlockSignal" : [
					{"Name" : "p_r_out5_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE22_U0.Systolic_Array_Cocud_U96", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE22_U0.Systolic_Array_CodEe_U97", "Parent" : "13"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_array_Block_preh_4_U0", "Parent" : "0",
		"CDFG" : "PE_array_Block_preh_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_PE_arrag8j_U",
		"Port" : [
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "129",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE23_U0", "Parent" : "0", "Child" : ["18", "19"],
		"CDFG" : "PE23",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_PE23_U0_U",
		"Port" : [
			{"Name" : "W_inter_0_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "W_inter_0_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "In_inter_0_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "130",
				"BlockSignal" : [
					{"Name" : "W_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "131",
				"BlockSignal" : [
					{"Name" : "In_inter_0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "129",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_0_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "132",
				"BlockSignal" : [
					{"Name" : "O_inter_0_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "127",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "134",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "135",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "136",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "137",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "138",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "139",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "140",
				"BlockSignal" : [
					{"Name" : "p_chout_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "141",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "142",
				"BlockSignal" : [
					{"Name" : "p_k_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "143",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "144",
				"BlockSignal" : [
					{"Name" : "p_r_out5_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE23_U0.Systolic_Array_Cocud_U124", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE23_U0.Systolic_Array_CodEe_U125", "Parent" : "17"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_array_Block_preh_3_U0", "Parent" : "0",
		"CDFG" : "PE_array_Block_preh_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_PE_arrahbi_U",
		"Port" : [
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "145",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE24_U0", "Parent" : "0", "Child" : ["22", "23"],
		"CDFG" : "PE24",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_PE24_U0_U",
		"Port" : [
			{"Name" : "W_inter_0_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "W_inter_0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "131",
				"BlockSignal" : [
					{"Name" : "In_inter_0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "146",
				"BlockSignal" : [
					{"Name" : "W_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "147",
				"BlockSignal" : [
					{"Name" : "In_inter_0_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "145",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_0_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "148",
				"BlockSignal" : [
					{"Name" : "O_inter_0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "135",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "137",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "139",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "141",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "143",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "149",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "150",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "151",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "152",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "153",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "154",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "155",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "156",
				"BlockSignal" : [
					{"Name" : "p_k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "157",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE24_U0.Systolic_Array_Cocud_U152", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE24_U0.Systolic_Array_CodEe_U153", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_array_Block_preh_2_U0", "Parent" : "0",
		"CDFG" : "PE_array_Block_preh_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_PE_arraibs_U",
		"Port" : [
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "158",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "159",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_out_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "160",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_out_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_out_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "161",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_out_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE25_U0", "Parent" : "0", "Child" : ["26", "27"],
		"CDFG" : "PE25",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_PE25_U0_U",
		"Port" : [
			{"Name" : "W_inter_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "W_inter_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "In_inter_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_2_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "162",
				"BlockSignal" : [
					{"Name" : "W_inter_2_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "163",
				"BlockSignal" : [
					{"Name" : "In_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "158",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "164",
				"BlockSignal" : [
					{"Name" : "O_inter_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "165",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "166",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "167",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "168",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "169",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "170",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE25_U0.Systolic_Array_Cocud_U180", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE25_U0.Systolic_Array_CodEe_U181", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE26_U0", "Parent" : "0", "Child" : ["29", "30"],
		"CDFG" : "PE26",
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
		"StartSource" : "13",
		"StartFifo" : "start_for_PE26_U0_U",
		"Port" : [
			{"Name" : "W_inter_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "W_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "163",
				"BlockSignal" : [
					{"Name" : "In_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_2_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "171",
				"BlockSignal" : [
					{"Name" : "W_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "172",
				"BlockSignal" : [
					{"Name" : "In_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "159",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "173",
				"BlockSignal" : [
					{"Name" : "O_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "126",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "128",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE26_U0.Systolic_Array_Cocud_U200", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE26_U0.Systolic_Array_CodEe_U201", "Parent" : "28"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE27_U0", "Parent" : "0", "Child" : ["32", "33"],
		"CDFG" : "PE27",
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
		"StartSource" : "17",
		"StartFifo" : "start_for_PE27_U0_U",
		"Port" : [
			{"Name" : "W_inter_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "130",
				"BlockSignal" : [
					{"Name" : "W_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "172",
				"BlockSignal" : [
					{"Name" : "In_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_2_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "W_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "In_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "160",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "134",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "O_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "136",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "138",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "140",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "142",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "144",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE27_U0.Systolic_Array_Cocud_U220", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE27_U0.Systolic_Array_CodEe_U221", "Parent" : "31"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE28_U0", "Parent" : "0", "Child" : ["35", "36"],
		"CDFG" : "PE28",
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
		"StartSource" : "21",
		"StartFifo" : "start_for_PE28_U0_U",
		"Port" : [
			{"Name" : "W_inter_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "146",
				"BlockSignal" : [
					{"Name" : "W_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "In_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_2_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "W_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "In_inter_1_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "24", "DependentChan" : "161",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "149",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "O_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "150",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "152",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "154",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "155",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "157",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "p_k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE28_U0.Systolic_Array_Cocud_U240", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE28_U0.Systolic_Array_CodEe_U241", "Parent" : "34"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_array_Block_preh_1_U0", "Parent" : "0",
		"CDFG" : "PE_array_Block_preh_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_PE_arrajbC_U",
		"Port" : [
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_out_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_out_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_out_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_out_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE29_U0", "Parent" : "0", "Child" : ["39", "40"],
		"CDFG" : "PE29",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_PE29_U0_U",
		"Port" : [
			{"Name" : "W_inter_2_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "162",
				"BlockSignal" : [
					{"Name" : "W_inter_2_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "In_inter_2_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_3_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "W_inter_3_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "41", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "In_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "165",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_2_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "O_inter_2_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "166",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "167",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "168",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "169",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "170",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE29_U0.Systolic_Array_Cocud_U268", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE29_U0.Systolic_Array_CodEe_U269", "Parent" : "38"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE30_U0", "Parent" : "0", "Child" : ["42", "43"],
		"CDFG" : "PE30",
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
		"StartSource" : "38",
		"StartFifo" : "start_for_PE30_U0_U",
		"Port" : [
			{"Name" : "W_inter_2_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "171",
				"BlockSignal" : [
					{"Name" : "W_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "In_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_3_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "W_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "In_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_2_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "O_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE30_U0.Systolic_Array_Cocud_U288", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE30_U0.Systolic_Array_CodEe_U289", "Parent" : "41"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE31_U0", "Parent" : "0", "Child" : ["45", "46"],
		"CDFG" : "PE31",
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
		"StartSource" : "31",
		"StartFifo" : "start_for_PE31_U0_U",
		"Port" : [
			{"Name" : "W_inter_2_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "W_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "In_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_3_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "W_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "In_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_2_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "O_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE31_U0.Systolic_Array_Cocud_U308", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE31_U0.Systolic_Array_CodEe_U309", "Parent" : "44"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE32_U0", "Parent" : "0", "Child" : ["48", "49"],
		"CDFG" : "PE32",
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
		"StartSource" : "34",
		"StartFifo" : "start_for_PE32_U0_U",
		"Port" : [
			{"Name" : "W_inter_2_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "W_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "In_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_3_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "W_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "In_inter_2_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_2_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "O_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "235",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "236",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "237",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "238",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "239",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "240",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "241",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "242",
				"BlockSignal" : [
					{"Name" : "p_k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "243",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE32_U0.Systolic_Array_Cocud_U328", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE32_U0.Systolic_Array_CodEe_U329", "Parent" : "47"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_array_Block_preh_U0", "Parent" : "0",
		"CDFG" : "PE_array_Block_preh",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_PE_arrakbM_U",
		"Port" : [
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "244",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "245",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_out_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "246",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_out_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_out_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "247",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_out_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE33_U0", "Parent" : "0", "Child" : ["52", "53"],
		"CDFG" : "PE33",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_PE33_U0_U",
		"Port" : [
			{"Name" : "W_inter_3_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "W_inter_3_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "In_inter_3_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_4_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "248",
				"BlockSignal" : [
					{"Name" : "W_inter_4_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "249",
				"BlockSignal" : [
					{"Name" : "In_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "244",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_3_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "250",
				"BlockSignal" : [
					{"Name" : "O_inter_3_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "251",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "252",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "253",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE33_U0.Systolic_Array_Cocud_U356", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE33_U0.Systolic_Array_CodEe_U357", "Parent" : "51"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE34_U0", "Parent" : "0", "Child" : ["55", "56"],
		"CDFG" : "PE34",
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
		"StartSource" : "51",
		"StartFifo" : "start_for_PE34_U0_U",
		"Port" : [
			{"Name" : "W_inter_3_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "W_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "249",
				"BlockSignal" : [
					{"Name" : "In_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_4_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "254",
				"BlockSignal" : [
					{"Name" : "W_inter_4_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "255",
				"BlockSignal" : [
					{"Name" : "In_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "245",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_3_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "256",
				"BlockSignal" : [
					{"Name" : "O_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "257",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "258",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "259",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE34_U0.Systolic_Array_Cocud_U373", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE34_U0.Systolic_Array_CodEe_U374", "Parent" : "54"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE35_U0", "Parent" : "0", "Child" : ["58", "59"],
		"CDFG" : "PE35",
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
		"StartSource" : "50",
		"StartFifo" : "start_for_PE35_U0_U",
		"Port" : [
			{"Name" : "W_inter_3_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "W_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "255",
				"BlockSignal" : [
					{"Name" : "In_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_4_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "260",
				"BlockSignal" : [
					{"Name" : "W_inter_4_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "261",
				"BlockSignal" : [
					{"Name" : "In_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "246",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_3_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "262",
				"BlockSignal" : [
					{"Name" : "O_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "263",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "264",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "265",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE35_U0.Systolic_Array_Cocud_U390", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE35_U0.Systolic_Array_CodEe_U391", "Parent" : "57"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE36_U0", "Parent" : "0", "Child" : ["61", "62"],
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
		"StartSource" : "50",
		"StartFifo" : "start_for_PE36_U0_U",
		"Port" : [
			{"Name" : "W_inter_3_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "W_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "261",
				"BlockSignal" : [
					{"Name" : "In_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_4_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "266",
				"BlockSignal" : [
					{"Name" : "W_inter_4_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "267",
				"BlockSignal" : [
					{"Name" : "In_inter_3_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "247",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "235",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_3_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "O_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "236",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "238",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "240",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "241",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "243",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "p_c_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "273",
				"BlockSignal" : [
					{"Name" : "p_chin_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "274",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "275",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "276",
				"BlockSignal" : [
					{"Name" : "p_k_out4_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE36_U0.Systolic_Array_Cocud_U407", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE36_U0.Systolic_Array_CodEe_U408", "Parent" : "60"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Write_O_ALL_U0", "Parent" : "0",
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
			{"Name" : "O_0_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "O_0_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_0_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "O_0_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_0_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "132",
				"BlockSignal" : [
					{"Name" : "O_0_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_0_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "148",
				"BlockSignal" : [
					{"Name" : "O_0_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "164",
				"BlockSignal" : [
					{"Name" : "O_1_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "173",
				"BlockSignal" : [
					{"Name" : "O_1_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "O_1_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "O_1_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "O_2_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "41", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "O_2_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "O_2_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "O_2_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "250",
				"BlockSignal" : [
					{"Name" : "O_3_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "256",
				"BlockSignal" : [
					{"Name" : "O_3_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "262",
				"BlockSignal" : [
					{"Name" : "O_3_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "O_3_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "274",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Out_buf_cho", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Drain_In37_U0", "Parent" : "0",
		"CDFG" : "Drain_In37",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "21",
		"StartFifo" : "start_for_Drain_IlbW_U",
		"Port" : [
			{"Name" : "In_pre_V4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "147",
				"BlockSignal" : [
					{"Name" : "In_pre_V4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "151",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "153",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "156",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Drain_In38_U0", "Parent" : "0",
		"CDFG" : "Drain_In38",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "34",
		"StartFifo" : "start_for_Drain_Imb6_U",
		"Port" : [
			{"Name" : "In_pre_V19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "In_pre_V19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Drain_In39_U0", "Parent" : "0",
		"CDFG" : "Drain_In39",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "47",
		"StartFifo" : "start_for_Drain_Incg_U",
		"Port" : [
			{"Name" : "In_pre_V214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "In_pre_V214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "237",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "239",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "242",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Drain_In40_U0", "Parent" : "0",
		"CDFG" : "Drain_In40",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "60",
		"StartFifo" : "start_for_Drain_IrcU_U",
		"Port" : [
			{"Name" : "In_pre_V319", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "267",
				"BlockSignal" : [
					{"Name" : "In_pre_V319_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "275",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Drain_W41_U0", "Parent" : "0",
		"CDFG" : "Drain_W41",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "51",
		"StartFifo" : "start_for_Drain_Wocq_U",
		"Port" : [
			{"Name" : "W_next_V4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "248",
				"BlockSignal" : [
					{"Name" : "W_next_V4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "251",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "252",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "253",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Drain_W42_U0", "Parent" : "0",
		"CDFG" : "Drain_W42",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "54",
		"StartFifo" : "start_for_Drain_WpcA_U",
		"Port" : [
			{"Name" : "W_next_V416", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "254",
				"BlockSignal" : [
					{"Name" : "W_next_V416_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "257",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "258",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "259",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Drain_W43_U0", "Parent" : "0",
		"CDFG" : "Drain_W43",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "57",
		"StartFifo" : "start_for_Drain_WqcK_U",
		"Port" : [
			{"Name" : "W_next_V417", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "260",
				"BlockSignal" : [
					{"Name" : "W_next_V417_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "263",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "264",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "265",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Drain_W44_U0", "Parent" : "0",
		"CDFG" : "Drain_W44",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "60",
		"StartFifo" : "start_for_Drain_Wsc4_U",
		"Port" : [
			{"Name" : "W_next_V418", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "266",
				"BlockSignal" : [
					{"Name" : "W_next_V418_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "273",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "276",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_c1_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c2_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_c_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_c707_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_c708_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_c709_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c710_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c711_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c712_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c713_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_0_0_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_1_0_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_2_0_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_3_0_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c714_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c715_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c716_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_0_0_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_0_1_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_0_2_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_0_3_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_1_0_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_0_1_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_0_0_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_c717_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c718_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c719_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c720_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c721_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c722_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c723_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c724_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c725_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c726_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c727_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_loc_c_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_1_1_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_0_2_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_0_1_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_c728_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_loc_c729_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c730_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c731_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c732_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c733_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c734_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c735_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c736_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c737_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c738_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c739_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_1_loc_c_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_1_2_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_0_3_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_0_2_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_c740_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_1_loc_c741_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c742_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c743_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c744_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c745_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c746_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c747_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c748_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c749_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c750_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c751_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_2_loc_c_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_1_3_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_0_4_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_0_3_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_2_loc_c752_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c753_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c754_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c755_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c756_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c757_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c758_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c759_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c760_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_3_loc_c_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_3_loc_c761_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_3_loc_c762_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_3_loc_c763_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_2_0_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_1_1_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_1_0_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c764_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c765_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c766_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c767_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c768_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c769_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_2_1_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_1_2_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_1_1_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_loc_c770_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c771_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c772_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c773_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c774_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c775_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_2_2_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_1_3_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_1_2_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_1_loc_c776_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c777_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c778_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c779_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c780_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c781_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_2_3_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_1_4_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_1_3_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_2_loc_c782_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c783_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c784_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c785_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c786_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c787_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c788_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c789_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c790_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_4_loc_c_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_4_loc_c791_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_4_loc_c792_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_4_loc_c793_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_3_0_U", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_2_1_U", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_2_0_U", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cho_c794_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c795_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c796_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c797_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c798_U", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c799_U", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_3_1_U", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_2_2_U", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_2_1_U", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_loc_c800_U", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c801_U", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c802_U", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c803_U", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c804_U", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c805_U", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_3_2_U", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_2_3_U", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_2_2_U", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_1_loc_c806_U", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c807_U", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c808_U", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c809_U", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c810_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c811_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_3_3_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_2_4_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_2_3_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_2_loc_c812_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c813_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c814_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c815_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c816_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c817_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c818_U", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c819_U", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_r_c820_U", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_5_loc_c_U", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_5_loc_c821_U", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_5_loc_c822_U", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_ln207_5_loc_c823_U", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_4_0_U", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_3_1_U", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_3_0_U", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c824_U", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c825_U", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c826_U", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_4_1_U", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_3_2_U", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_3_1_U", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c827_U", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c828_U", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c829_U", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_4_2_U", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_3_3_U", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_3_2_U", "Parent" : "0"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c830_U", "Parent" : "0"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c831_U", "Parent" : "0"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c832_U", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_inter_4_3_U", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_inter_3_4_U", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.O_inter_3_3_U", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c833_U", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c834_U", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_c835_U", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c836_U", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chin_c837_U", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_chout_c838_U", "Parent" : "0"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c839_U", "Parent" : "0"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_k_c840_U", "Parent" : "0"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE_arraeOg_U", "Parent" : "0"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE_arrafYi_U", "Parent" : "0"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE_arrag8j_U", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE_arrahbi_U", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE_arraibs_U", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE_arrajbC_U", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE_arrakbM_U", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE25_U0_U", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE29_U0_U", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE33_U0_U", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE22_U0_U", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE23_U0_U", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE24_U0_U", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE26_U0_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE27_U0_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE28_U0_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Drain_IlbW_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE31_U0_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE32_U0_U", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Drain_Imb6_U", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE30_U0_U", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Drain_Incg_U", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE35_U0_U", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE36_U0_U", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_PE34_U0_U", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Drain_Wocq_U", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Drain_WpcA_U", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Drain_WqcK_U", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Drain_IrcU_U", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Drain_Wsc4_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_array {
		In_buf {Type I LastRead 40 FirstWrite -1}
		W_buf {Type I LastRead 6 FirstWrite -1}
		Out_buf {Type O LastRead -1 FirstWrite 1}
		row {Type I LastRead 0 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		p_c_s {Type I LastRead 1 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_s_s {Type I LastRead 2 FirstWrite -1}
		In_buffer_start {Type I LastRead 3 FirstWrite -1}
		p_cin_s {Type I LastRead 2 FirstWrite -1}
		In_buffer_length {Type I LastRead 3 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		Out_buf_cho {Type I LastRead 1 FirstWrite -1}}
	PE_array_entry6 {
		row {Type I LastRead 0 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		row_out {Type O LastRead -1 FirstWrite 0}
		cho_out {Type O LastRead -1 FirstWrite 0}}
	PE_array_entry141 {
		row {Type I LastRead 0 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		row_out {Type O LastRead -1 FirstWrite 0}
		row_out1 {Type O LastRead -1 FirstWrite 0}
		row_out2 {Type O LastRead -1 FirstWrite 0}
		row_out3 {Type O LastRead -1 FirstWrite 0}
		cho_out {Type O LastRead -1 FirstWrite 0}
		cho_out4 {Type O LastRead -1 FirstWrite 0}
		cho_out5 {Type O LastRead -1 FirstWrite 0}
		cho_out6 {Type O LastRead -1 FirstWrite 0}
		cho_out7 {Type O LastRead -1 FirstWrite 0}}
	Load_In_ALL {
		In_buf {Type I LastRead 40 FirstWrite -1}
		In_next_0_0_V {Type O LastRead -1 FirstWrite 40}
		In_next_1_0_V {Type O LastRead -1 FirstWrite 40}
		In_next_2_0_V {Type O LastRead -1 FirstWrite 40}
		In_next_3_0_V {Type O LastRead -1 FirstWrite 40}
		p_c_out {Type O LastRead -1 FirstWrite 1}
		p_c_out1 {Type O LastRead -1 FirstWrite 1}
		p_chin_out {Type O LastRead -1 FirstWrite 1}
		p_chin_out2 {Type O LastRead -1 FirstWrite 1}
		p_k_out {Type O LastRead -1 FirstWrite 1}
		p_k_out3 {Type O LastRead -1 FirstWrite 1}
		p_c_s {Type I LastRead 1 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_s_s {Type I LastRead 2 FirstWrite -1}
		In_buffer_start {Type I LastRead 3 FirstWrite -1}
		p_cin_s {Type I LastRead 2 FirstWrite -1}
		In_buffer_length {Type I LastRead 3 FirstWrite -1}}
	Load_W_ALL {
		cho {Type I LastRead 0 FirstWrite -1}
		W_buf {Type I LastRead 6 FirstWrite -1}
		W_next_0_0_V {Type O LastRead -1 FirstWrite 6}
		W_next_0_1_V {Type O LastRead -1 FirstWrite 6}
		W_next_0_2_V {Type O LastRead -1 FirstWrite 6}
		W_next_0_3_V {Type O LastRead -1 FirstWrite 6}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}
	PE21 {
		W_pre_V {Type I LastRead 4 FirstWrite -1}
		In_pre_V {Type I LastRead 4 FirstWrite -1}
		W_next_V8 {Type O LastRead -1 FirstWrite 4}
		In_next_V50 {Type O LastRead -1 FirstWrite 4}
		row {Type I LastRead 0 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		O_V {Type O LastRead -1 FirstWrite 4}
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
		p_r_s {Type I LastRead 0 FirstWrite -1}}
	PE_array_Block_preh_5 {
		cho {Type I LastRead 0 FirstWrite -1}
		add_ln207_out_out {Type O LastRead -1 FirstWrite 0}}
	PE22 {
		W_inter_0_1 {Type I LastRead 4 FirstWrite -1}
		In_inter_0_1 {Type I LastRead 4 FirstWrite -1}
		W_inter_1_1 {Type O LastRead -1 FirstWrite 4}
		In_inter_0_2 {Type O LastRead -1 FirstWrite 4}
		row {Type I LastRead 0 FirstWrite -1}
		add_ln207_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_0_1 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		row_out {Type O LastRead -1 FirstWrite 0}
		add_ln207_loc_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_c_out1 {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out2 {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_chout_out3 {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_k_out4 {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}
		p_r_out5 {Type O LastRead -1 FirstWrite 0}}
	PE_array_Block_preh_4 {
		cho {Type I LastRead 0 FirstWrite -1}
		add_ln207_1_out_out {Type O LastRead -1 FirstWrite 0}}
	PE23 {
		W_inter_0_2 {Type I LastRead 4 FirstWrite -1}
		In_inter_0_2 {Type I LastRead 4 FirstWrite -1}
		W_inter_1_2 {Type O LastRead -1 FirstWrite 4}
		In_inter_0_3 {Type O LastRead -1 FirstWrite 4}
		row {Type I LastRead 0 FirstWrite -1}
		add_ln207_1_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_0_2 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		row_out {Type O LastRead -1 FirstWrite 0}
		add_ln207_1_loc_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_c_out1 {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out2 {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_chout_out3 {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_k_out4 {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}
		p_r_out5 {Type O LastRead -1 FirstWrite 0}}
	PE_array_Block_preh_3 {
		cho {Type I LastRead 0 FirstWrite -1}
		add_ln207_2_out_out {Type O LastRead -1 FirstWrite 0}}
	PE24 {
		W_inter_0_3 {Type I LastRead 4 FirstWrite -1}
		In_inter_0_3 {Type I LastRead 4 FirstWrite -1}
		W_inter_1_3 {Type O LastRead -1 FirstWrite 4}
		In_inter_0_4 {Type O LastRead -1 FirstWrite 4}
		row {Type I LastRead 0 FirstWrite -1}
		add_ln207_2_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_0_3 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		add_ln207_2_loc_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_c_out1 {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out2 {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_k_out3 {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}}
	PE_array_Block_preh_2 {
		row {Type I LastRead 0 FirstWrite -1}
		add_ln207_3_out_out {Type O LastRead -1 FirstWrite 0}
		add_ln207_3_out_out1 {Type O LastRead -1 FirstWrite 0}
		add_ln207_3_out_out2 {Type O LastRead -1 FirstWrite 0}
		add_ln207_3_out_out3 {Type O LastRead -1 FirstWrite 0}}
	PE25 {
		W_inter_1_0 {Type I LastRead 4 FirstWrite -1}
		In_inter_1_0 {Type I LastRead 4 FirstWrite -1}
		W_inter_2_0 {Type O LastRead -1 FirstWrite 4}
		In_inter_1_1 {Type O LastRead -1 FirstWrite 4}
		add_ln207_3_loc {Type I LastRead 0 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		O_inter_1_0 {Type O LastRead -1 FirstWrite 4}
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
		p_r_out {Type O LastRead -1 FirstWrite 0}}
	PE26 {
		W_inter_1_1 {Type I LastRead 4 FirstWrite -1}
		In_inter_1_1 {Type I LastRead 4 FirstWrite -1}
		W_inter_2_1 {Type O LastRead -1 FirstWrite 4}
		In_inter_1_2 {Type O LastRead -1 FirstWrite 4}
		add_ln207_3_loc {Type I LastRead 0 FirstWrite -1}
		add_ln207_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_1_1 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		add_ln207_loc_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}}
	PE27 {
		W_inter_1_2 {Type I LastRead 4 FirstWrite -1}
		In_inter_1_2 {Type I LastRead 4 FirstWrite -1}
		W_inter_2_2 {Type O LastRead -1 FirstWrite 4}
		In_inter_1_3 {Type O LastRead -1 FirstWrite 4}
		add_ln207_3_loc {Type I LastRead 0 FirstWrite -1}
		add_ln207_1_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_1_2 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		add_ln207_1_loc_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}}
	PE28 {
		W_inter_1_3 {Type I LastRead 4 FirstWrite -1}
		In_inter_1_3 {Type I LastRead 4 FirstWrite -1}
		W_inter_2_3 {Type O LastRead -1 FirstWrite 4}
		In_inter_1_4 {Type O LastRead -1 FirstWrite 4}
		add_ln207_3_loc {Type I LastRead 0 FirstWrite -1}
		add_ln207_2_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_1_3 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		add_ln207_2_loc_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_c_out1 {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out2 {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_k_out3 {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}}
	PE_array_Block_preh_1 {
		row {Type I LastRead 0 FirstWrite -1}
		add_ln207_4_out_out {Type O LastRead -1 FirstWrite 0}
		add_ln207_4_out_out1 {Type O LastRead -1 FirstWrite 0}
		add_ln207_4_out_out2 {Type O LastRead -1 FirstWrite 0}
		add_ln207_4_out_out3 {Type O LastRead -1 FirstWrite 0}}
	PE29 {
		W_inter_2_0 {Type I LastRead 4 FirstWrite -1}
		In_inter_2_0 {Type I LastRead 4 FirstWrite -1}
		W_inter_3_0 {Type O LastRead -1 FirstWrite 4}
		In_inter_2_1 {Type O LastRead -1 FirstWrite 4}
		add_ln207_4_loc {Type I LastRead 0 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		O_inter_2_0 {Type O LastRead -1 FirstWrite 4}
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
		p_r_out {Type O LastRead -1 FirstWrite 0}}
	PE30 {
		W_inter_2_1 {Type I LastRead 4 FirstWrite -1}
		In_inter_2_1 {Type I LastRead 4 FirstWrite -1}
		W_inter_3_1 {Type O LastRead -1 FirstWrite 4}
		In_inter_2_2 {Type O LastRead -1 FirstWrite 4}
		add_ln207_4_loc {Type I LastRead 0 FirstWrite -1}
		add_ln207_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_2_1 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		add_ln207_loc_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}}
	PE31 {
		W_inter_2_2 {Type I LastRead 4 FirstWrite -1}
		In_inter_2_2 {Type I LastRead 4 FirstWrite -1}
		W_inter_3_2 {Type O LastRead -1 FirstWrite 4}
		In_inter_2_3 {Type O LastRead -1 FirstWrite 4}
		add_ln207_4_loc {Type I LastRead 0 FirstWrite -1}
		add_ln207_1_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_2_2 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		add_ln207_1_loc_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}}
	PE32 {
		W_inter_2_3 {Type I LastRead 4 FirstWrite -1}
		In_inter_2_3 {Type I LastRead 4 FirstWrite -1}
		W_inter_3_3 {Type O LastRead -1 FirstWrite 4}
		In_inter_2_4 {Type O LastRead -1 FirstWrite 4}
		add_ln207_4_loc {Type I LastRead 0 FirstWrite -1}
		add_ln207_2_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_2_3 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		add_ln207_2_loc_out {Type O LastRead -1 FirstWrite 0}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_c_out1 {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out2 {Type O LastRead -1 FirstWrite 0}
		p_chout_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}
		p_k_out3 {Type O LastRead -1 FirstWrite 0}
		p_r_out {Type O LastRead -1 FirstWrite 0}}
	PE_array_Block_preh {
		row {Type I LastRead 0 FirstWrite -1}
		add_ln207_5_out_out {Type O LastRead -1 FirstWrite 0}
		add_ln207_5_out_out1 {Type O LastRead -1 FirstWrite 0}
		add_ln207_5_out_out2 {Type O LastRead -1 FirstWrite 0}
		add_ln207_5_out_out3 {Type O LastRead -1 FirstWrite 0}}
	PE33 {
		W_inter_3_0 {Type I LastRead 4 FirstWrite -1}
		In_inter_3_0 {Type I LastRead 4 FirstWrite -1}
		W_inter_4_0 {Type O LastRead -1 FirstWrite 4}
		In_inter_3_1 {Type O LastRead -1 FirstWrite 4}
		add_ln207_5_loc {Type I LastRead 0 FirstWrite -1}
		cho {Type I LastRead 0 FirstWrite -1}
		O_inter_3_0 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}}
	PE34 {
		W_inter_3_1 {Type I LastRead 4 FirstWrite -1}
		In_inter_3_1 {Type I LastRead 4 FirstWrite -1}
		W_inter_4_1 {Type O LastRead -1 FirstWrite 4}
		In_inter_3_2 {Type O LastRead -1 FirstWrite 4}
		add_ln207_5_loc {Type I LastRead 0 FirstWrite -1}
		add_ln207_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_3_1 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}}
	PE35 {
		W_inter_3_2 {Type I LastRead 4 FirstWrite -1}
		In_inter_3_2 {Type I LastRead 4 FirstWrite -1}
		W_inter_4_2 {Type O LastRead -1 FirstWrite 4}
		In_inter_3_3 {Type O LastRead -1 FirstWrite 4}
		add_ln207_5_loc {Type I LastRead 0 FirstWrite -1}
		add_ln207_1_loc {Type I LastRead 0 FirstWrite -1}
		O_inter_3_2 {Type O LastRead -1 FirstWrite 4}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}
		p_r_s {Type I LastRead 0 FirstWrite -1}
		p_c_out {Type O LastRead -1 FirstWrite 0}
		p_chin_out {Type O LastRead -1 FirstWrite 0}
		p_k_out {Type O LastRead -1 FirstWrite 0}}
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
		p_k_out4 {Type O LastRead -1 FirstWrite 0}}
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
		Out_buf_cho {Type I LastRead 1 FirstWrite -1}}
	Drain_In37 {
		In_pre_V4 {Type I LastRead 4 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}
	Drain_In38 {
		In_pre_V19 {Type I LastRead 4 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}
	Drain_In39 {
		In_pre_V214 {Type I LastRead 4 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}
	Drain_In40 {
		In_pre_V319 {Type I LastRead 4 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}
	Drain_W41 {
		W_next_V4 {Type I LastRead 4 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}
	Drain_W42 {
		W_next_V416 {Type I LastRead 4 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}
	Drain_W43 {
		W_next_V417 {Type I LastRead 4 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}
	Drain_W44 {
		W_next_V418 {Type I LastRead 4 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		p_k_s {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "64", "Max" : "30115"}
	, {"Name" : "Interval", "Min" : "42", "Max" : "30073"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	In_buf { ap_memory {  { In_buf_address0 mem_address 1 9 }  { In_buf_ce0 mem_ce 1 1 }  { In_buf_d0 mem_din 1 32 }  { In_buf_q0 mem_dout 0 32 }  { In_buf_we0 mem_we 1 1 }  { In_buf_address1 MemPortADDR2 1 9 }  { In_buf_ce1 MemPortCE2 1 1 }  { In_buf_d1 mem_din 1 32 }  { In_buf_q1 MemPortDOUT2 0 32 }  { In_buf_we1 mem_we 1 1 } } }
	W_buf { ap_memory {  { W_buf_address0 mem_address 1 9 }  { W_buf_ce0 mem_ce 1 1 }  { W_buf_d0 mem_din 1 32 }  { W_buf_q0 mem_dout 0 32 }  { W_buf_we0 mem_we 1 1 }  { W_buf_address1 MemPortADDR2 1 9 }  { W_buf_ce1 MemPortCE2 1 1 }  { W_buf_d1 mem_din 1 32 }  { W_buf_q1 MemPortDOUT2 0 32 }  { W_buf_we1 mem_we 1 1 } } }
	Out_buf { ap_memory {  { Out_buf_address0 mem_address 1 9 }  { Out_buf_ce0 mem_ce 1 1 }  { Out_buf_d0 mem_din 1 32 }  { Out_buf_q0 mem_dout 0 32 }  { Out_buf_we0 mem_we 1 1 }  { Out_buf_address1 mem_address 1 9 }  { Out_buf_ce1 mem_ce 1 1 }  { Out_buf_d1 mem_din 1 32 }  { Out_buf_q1 mem_dout 0 32 }  { Out_buf_we1 mem_we 1 1 } } }
	row { ap_none {  { row in_data 0 32 }  { row_ap_vld in_vld 0 1 } } }
	cho { ap_none {  { cho in_data 0 32 }  { cho_ap_vld in_vld 0 1 } } }
	p_c_s { ap_none {  { p_c_s in_data 0 32 }  { p_c_s_ap_vld in_vld 0 1 } } }
	p_chin_s { ap_none {  { p_chin_s in_data 0 32 }  { p_chin_s_ap_vld in_vld 0 1 } } }
	p_k_s { ap_none {  { p_k_s in_data 0 32 }  { p_k_s_ap_vld in_vld 0 1 } } }
	p_s_s { ap_none {  { p_s_s in_data 0 32 }  { p_s_s_ap_vld in_vld 0 1 } } }
	In_buffer_start { ap_none {  { In_buffer_start in_data 0 32 }  { In_buffer_start_ap_vld in_vld 0 1 } } }
	p_cin_s { ap_none {  { p_cin_s in_data 0 32 }  { p_cin_s_ap_vld in_vld 0 1 } } }
	In_buffer_length { ap_none {  { In_buffer_length in_data 0 32 }  { In_buffer_length_ap_vld in_vld 0 1 } } }
	p_chout_s { ap_none {  { p_chout_s in_data 0 32 }  { p_chout_s_ap_vld in_vld 0 1 } } }
	p_r_s { ap_none {  { p_r_s in_data 0 32 }  { p_r_s_ap_vld in_vld 0 1 } } }
	Out_buf_cho { ap_none {  { Out_buf_cho in_data 0 32 }  { Out_buf_cho_ap_vld in_vld 0 1 } } }
}
