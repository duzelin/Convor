set moduleName Systolic_Array_Conv
set isTopModule 1
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
set C_modelName {Systolic_Array_Conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem float 32 regular {axi_master 2}  }
	{ In_ddr int 32 regular {axi_slave 0}  }
	{ W_ddr int 32 regular {axi_slave 0}  }
	{ Out_ddr int 32 regular {axi_slave 0}  }
	{ stride int 32 regular  }
	{ padding int 32 regular  }
	{ Rin int 32 regular  }
	{ Cin int 32 regular  }
	{ CHin int 32 regular  }
	{ R int 32 regular  }
	{ C int 32 regular  }
	{ CHout int 32 regular  }
	{ K int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "In_ddr","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "In_ddr"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 63,"step" : 1}]},{"cName": "W_ddr","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "W_ddr"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 143,"step" : 1}]},{"cName": "Out_ddr","cData": "float","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "Out_ddr"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "In_ddr", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "W_ddr", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "Out_ddr", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "stride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "stride","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "padding", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "padding","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Rin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Rin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Cin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Cin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "CHin", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "CHin","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "R", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "R","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "C", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "C","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "CHout", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "CHout","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "K", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "K","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 77
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ stride sc_in sc_lv 32 signal 4 } 
	{ padding sc_in sc_lv 32 signal 5 } 
	{ Rin sc_in sc_lv 32 signal 6 } 
	{ Cin sc_in sc_lv 32 signal 7 } 
	{ CHin sc_in sc_lv 32 signal 8 } 
	{ R sc_in sc_lv 32 signal 9 } 
	{ C sc_in sc_lv 32 signal 10 } 
	{ CHout sc_in sc_lv 32 signal 11 } 
	{ K sc_in sc_lv 32 signal 12 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"In_ddr","role":"data","value":"16"},{"name":"W_ddr","role":"data","value":"24"},{"name":"Out_ddr","role":"data","value":"32"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "stride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stride", "role": "default" }} , 
 	{ "name": "padding", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "padding", "role": "default" }} , 
 	{ "name": "Rin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Rin", "role": "default" }} , 
 	{ "name": "Cin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Cin", "role": "default" }} , 
 	{ "name": "CHin", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CHin", "role": "default" }} , 
 	{ "name": "R", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "R", "role": "default" }} , 
 	{ "name": "C", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "default" }} , 
 	{ "name": "CHout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CHout", "role": "default" }} , 
 	{ "name": "K", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "313", "317", "318"],
		"CDFG" : "Systolic_Array_Conv",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "163", "EstimateLatencyMax" : "3128462",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_PE_array_fu_246"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Read_In_buf_line_fu_275"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Write_C_buf_fu_296"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Read_W_buf_fu_311"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "grp_Write_C_buf_fu_296", "Port" : "Out_ddr"},
					{"ID" : "313", "SubInstance" : "grp_Read_In_buf_line_fu_275", "Port" : "In_ddr"},
					{"ID" : "318", "SubInstance" : "grp_Read_W_buf_fu_311", "Port" : "W_ddr"}]},
			{"Name" : "In_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "Out_ddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "stride", "Type" : "None", "Direction" : "I"},
			{"Name" : "padding", "Type" : "None", "Direction" : "I"},
			{"Name" : "Rin", "Type" : "None", "Direction" : "I"},
			{"Name" : "Cin", "Type" : "None", "Direction" : "I"},
			{"Name" : "CHin", "Type" : "None", "Direction" : "I"},
			{"Name" : "R", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "None", "Direction" : "I"},
			{"Name" : "CHout", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_chin_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "p_chin_s"},
					{"ID" : "313", "SubInstance" : "grp_Read_In_buf_line_fu_275", "Port" : "p_chin_s"}]},
			{"Name" : "p_chout_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "grp_Write_C_buf_fu_296", "Port" : "p_chout_s"},
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "p_chout_s"}]},
			{"Name" : "p_r_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "p_r_s"}]},
			{"Name" : "p_c_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "317", "SubInstance" : "grp_Write_C_buf_fu_296", "Port" : "p_c_s"},
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "p_c_s"}]},
			{"Name" : "p_cin_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "p_cin_s"}]},
			{"Name" : "p_k_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "p_k_s"}]},
			{"Name" : "p_s_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "p_s_s"}]},
			{"Name" : "p_p_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_Read_In_buf_line_fu_275", "Port" : "p_p_s"}]},
			{"Name" : "p_rinp_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_Read_In_buf_line_fu_275", "Port" : "p_rinp_s"}]},
			{"Name" : "p_cinp_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_Read_In_buf_line_fu_275", "Port" : "p_cinp_s"}]},
			{"Name" : "In_buffer_length", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "In_buffer_length"},
					{"ID" : "313", "SubInstance" : "grp_Read_In_buf_line_fu_275", "Port" : "In_buffer_length"}]},
			{"Name" : "In_buffer_start", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "In_buffer_start"}]},
			{"Name" : "In_buffer_end", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_Read_In_buf_line_fu_275", "Port" : "In_buffer_end"}]},
			{"Name" : "Out_buf_row", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "In_buf_row", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "Out_buf_cho", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_PE_array_fu_246", "Port" : "Out_buf_cho"}]},
			{"Name" : "Out_buf_row_count", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_Conv_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Systolic_Array_Conv_gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.In_buffer_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_buffer_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Out_buffer_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246", "Parent" : "0", "Child" : ["7", "8", "9", "14", "15", "18", "19", "22", "23", "26", "27", "30", "31", "34", "37", "40", "43", "44", "47", "50", "53", "56", "57", "60", "63", "66", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312"],
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
			{"ID" : "7", "Name" : "PE_array_entry6_U0", "ReadyCount" : "PE_array_entry6_U0_ap_ready_count"},
			{"ID" : "9", "Name" : "Load_In_ALL_U0", "ReadyCount" : "Load_In_ALL_U0_ap_ready_count"},
			{"ID" : "14", "Name" : "Load_W_ALL_U0", "ReadyCount" : "Load_W_ALL_U0_ap_ready_count"},
			{"ID" : "15", "Name" : "PE21_U0", "ReadyCount" : "PE21_U0_ap_ready_count"},
			{"ID" : "69", "Name" : "Write_O_ALL_U0", "ReadyCount" : "Write_O_ALL_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "Write_O_ALL_U0"},
			{"ID" : "70", "Name" : "Drain_In37_U0"},
			{"ID" : "71", "Name" : "Drain_In38_U0"},
			{"ID" : "72", "Name" : "Drain_In39_U0"},
			{"ID" : "73", "Name" : "Drain_In40_U0"},
			{"ID" : "74", "Name" : "Drain_W41_U0"},
			{"ID" : "75", "Name" : "Drain_W42_U0"},
			{"ID" : "76", "Name" : "Drain_W43_U0"},
			{"ID" : "77", "Name" : "Drain_W44_U0"}],
		"Port" : [
			{"Name" : "In_buf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Load_In_ALL_U0", "Port" : "In_buf"}]},
			{"Name" : "W_buf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Load_W_ALL_U0", "Port" : "W_buf"}]},
			{"Name" : "Out_buf", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "Write_O_ALL_U0", "Port" : "Out_buf"}]},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "cho", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_c_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_c_s"}]},
			{"Name" : "p_chin_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_chin_s"}]},
			{"Name" : "p_k_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_k_s"}]},
			{"Name" : "p_s_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_s_s"}]},
			{"Name" : "In_buffer_start", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Load_In_ALL_U0", "Port" : "In_buffer_start"}]},
			{"Name" : "p_cin_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Load_In_ALL_U0", "Port" : "p_cin_s"}]},
			{"Name" : "In_buffer_length", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Load_In_ALL_U0", "Port" : "In_buffer_length"}]},
			{"Name" : "p_chout_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "PE21_U0", "Port" : "p_chout_s"}]},
			{"Name" : "p_r_s", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "PE21_U0", "Port" : "p_r_s"}]},
			{"Name" : "Out_buf_cho", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "Write_O_ALL_U0", "Port" : "Out_buf_cho"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE_array_entry6_U0", "Parent" : "6",
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
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE_array_entry141_U0", "Parent" : "6",
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
		"StartSource" : "7",
		"StartFifo" : "start_for_PE_arraeOg_U",
		"Port" : [
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "row_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "row_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "row_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "cho_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "cho_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "cho_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "cho_out7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Load_In_ALL_U0", "Parent" : "6", "Child" : ["10", "11", "12", "13"],
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
			{"Name" : "In_next_0_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "In_next_0_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_1_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "In_next_1_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_2_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "In_next_2_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_3_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "In_next_3_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "p_k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_chin_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_k_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_s_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "In_buffer_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cin_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "In_buffer_length", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Load_In_ALL_U0.Systolic_Array_Cobkb_U34", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Load_In_ALL_U0.Systolic_Array_Cobkb_U35", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Load_In_ALL_U0.Systolic_Array_Cobkb_U36", "Parent" : "9"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Load_In_ALL_U0.Systolic_Array_Cobkb_U37", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Load_W_ALL_U0", "Parent" : "6",
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
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_next_0_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "W_next_0_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_0_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "W_next_0_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_0_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "W_next_0_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_0_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "W_next_0_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE21_U0", "Parent" : "6", "Child" : ["16", "17"],
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
			{"Name" : "W_pre_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "W_pre_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_pre_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "In_pre_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_next_V8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "W_next_V8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_next_V50", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "In_next_V50_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "O_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "cho_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "p_c_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "p_chin_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "p_chout_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "p_k_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "p_r_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_r_s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE21_U0.Systolic_Array_Cocud_U65", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE21_U0.Systolic_Array_CodEe_U66", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE_array_Block_preh_5_U0", "Parent" : "6",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_PE_arrafYi_U",
		"Port" : [
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "add_ln207_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE22_U0", "Parent" : "6", "Child" : ["20", "21"],
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
		"StartSource" : "14",
		"StartFifo" : "start_for_PE22_U0_U",
		"Port" : [
			{"Name" : "W_inter_0_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "W_inter_0_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "In_inter_0_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "W_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "In_inter_0_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_0_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "O_inter_0_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "126",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "127",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "128",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "129",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "130",
				"BlockSignal" : [
					{"Name" : "p_chout_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "131",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "132",
				"BlockSignal" : [
					{"Name" : "p_k_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "134",
				"BlockSignal" : [
					{"Name" : "p_r_out5_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE22_U0.Systolic_Array_Cocud_U96", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE22_U0.Systolic_Array_CodEe_U97", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE_array_Block_preh_4_U0", "Parent" : "6",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_PE_arrag8j_U",
		"Port" : [
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "135",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE23_U0", "Parent" : "6", "Child" : ["24", "25"],
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
		"StartSource" : "14",
		"StartFifo" : "start_for_PE23_U0_U",
		"Port" : [
			{"Name" : "W_inter_0_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "W_inter_0_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "In_inter_0_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "136",
				"BlockSignal" : [
					{"Name" : "W_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "137",
				"BlockSignal" : [
					{"Name" : "In_inter_0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "135",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_0_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "138",
				"BlockSignal" : [
					{"Name" : "O_inter_0_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "127",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "129",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "131",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "139",
				"BlockSignal" : [
					{"Name" : "row_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "140",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "141",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "142",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "143",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "144",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "145",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "146",
				"BlockSignal" : [
					{"Name" : "p_chout_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "147",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "148",
				"BlockSignal" : [
					{"Name" : "p_k_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "149",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "150",
				"BlockSignal" : [
					{"Name" : "p_r_out5_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE23_U0.Systolic_Array_Cocud_U124", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE23_U0.Systolic_Array_CodEe_U125", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE_array_Block_preh_3_U0", "Parent" : "6",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_PE_arrahbi_U",
		"Port" : [
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "151",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE24_U0", "Parent" : "6", "Child" : ["28", "29"],
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
		"StartSource" : "14",
		"StartFifo" : "start_for_PE24_U0_U",
		"Port" : [
			{"Name" : "W_inter_0_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "W_inter_0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "137",
				"BlockSignal" : [
					{"Name" : "In_inter_0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "152",
				"BlockSignal" : [
					{"Name" : "W_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_0_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "153",
				"BlockSignal" : [
					{"Name" : "In_inter_0_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "139",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "151",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_0_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "154",
				"BlockSignal" : [
					{"Name" : "O_inter_0_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "141",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "143",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "145",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "147",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "149",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "155",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "156",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "157",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "158",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "159",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "160",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "161",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "162",
				"BlockSignal" : [
					{"Name" : "p_k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "163",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE24_U0.Systolic_Array_Cocud_U152", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE24_U0.Systolic_Array_CodEe_U153", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE_array_Block_preh_2_U0", "Parent" : "6",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_PE_arraibs_U",
		"Port" : [
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "164",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "165",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_out_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "166",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_out_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_out_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "167",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_out_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE25_U0", "Parent" : "6", "Child" : ["32", "33"],
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
		"StartSource" : "9",
		"StartFifo" : "start_for_PE25_U0_U",
		"Port" : [
			{"Name" : "W_inter_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "W_inter_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "In_inter_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_2_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "168",
				"BlockSignal" : [
					{"Name" : "W_inter_2_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "169",
				"BlockSignal" : [
					{"Name" : "In_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "164",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_1_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "170",
				"BlockSignal" : [
					{"Name" : "O_inter_1_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "171",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "172",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "173",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE25_U0.Systolic_Array_Cocud_U180", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE25_U0.Systolic_Array_CodEe_U181", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE26_U0", "Parent" : "6", "Child" : ["35", "36"],
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
		"StartSource" : "19",
		"StartFifo" : "start_for_PE26_U0_U",
		"Port" : [
			{"Name" : "W_inter_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "W_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "169",
				"BlockSignal" : [
					{"Name" : "In_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_2_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "W_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "In_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "165",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_1_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "O_inter_1_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "126",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "128",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "130",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "132",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "134",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE26_U0.Systolic_Array_Cocud_U200", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE26_U0.Systolic_Array_CodEe_U201", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE27_U0", "Parent" : "6", "Child" : ["38", "39"],
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
		"StartSource" : "23",
		"StartFifo" : "start_for_PE27_U0_U",
		"Port" : [
			{"Name" : "W_inter_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "136",
				"BlockSignal" : [
					{"Name" : "W_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "In_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_2_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "W_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "In_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "166",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "140",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_1_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "O_inter_1_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "142",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "144",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "146",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "148",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "150",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE27_U0.Systolic_Array_Cocud_U220", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE27_U0.Systolic_Array_CodEe_U221", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE28_U0", "Parent" : "6", "Child" : ["41", "42"],
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
		"StartSource" : "27",
		"StartFifo" : "start_for_PE28_U0_U",
		"Port" : [
			{"Name" : "W_inter_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "152",
				"BlockSignal" : [
					{"Name" : "W_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "In_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_2_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "W_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_1_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "In_inter_1_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_3_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "167",
				"BlockSignal" : [
					{"Name" : "add_ln207_3_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "155",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_1_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "O_inter_1_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "156",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "158",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "160",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "161",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "163",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "p_k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE28_U0.Systolic_Array_Cocud_U240", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE28_U0.Systolic_Array_CodEe_U241", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE_array_Block_preh_1_U0", "Parent" : "6",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_PE_arrajbC_U",
		"Port" : [
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_out_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_out_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_out_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_out_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE29_U0", "Parent" : "6", "Child" : ["45", "46"],
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
		"StartSource" : "9",
		"StartFifo" : "start_for_PE29_U0_U",
		"Port" : [
			{"Name" : "W_inter_2_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "168",
				"BlockSignal" : [
					{"Name" : "W_inter_2_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "In_inter_2_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_3_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "W_inter_3_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "In_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "171",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_2_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "O_inter_2_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "172",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "173",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "cho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE29_U0.Systolic_Array_Cocud_U268", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE29_U0.Systolic_Array_CodEe_U269", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE30_U0", "Parent" : "6", "Child" : ["48", "49"],
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
		"StartSource" : "44",
		"StartFifo" : "start_for_PE30_U0_U",
		"Port" : [
			{"Name" : "W_inter_2_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "W_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "In_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_3_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "W_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "In_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_2_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "O_inter_2_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE30_U0.Systolic_Array_Cocud_U288", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE30_U0.Systolic_Array_CodEe_U289", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE31_U0", "Parent" : "6", "Child" : ["51", "52"],
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
		"StartSource" : "37",
		"StartFifo" : "start_for_PE31_U0_U",
		"Port" : [
			{"Name" : "W_inter_2_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "W_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "In_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_3_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "W_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "In_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_2_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "O_inter_2_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "235",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "236",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "237",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE31_U0.Systolic_Array_Cocud_U308", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE31_U0.Systolic_Array_CodEe_U309", "Parent" : "50"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE32_U0", "Parent" : "6", "Child" : ["54", "55"],
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
		"StartSource" : "40",
		"StartFifo" : "start_for_PE32_U0_U",
		"Port" : [
			{"Name" : "W_inter_2_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "W_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "In_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_3_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "238",
				"BlockSignal" : [
					{"Name" : "W_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_2_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "239",
				"BlockSignal" : [
					{"Name" : "In_inter_2_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_4_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "add_ln207_4_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_2_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "240",
				"BlockSignal" : [
					{"Name" : "O_inter_2_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "241",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "242",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "243",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "244",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "245",
				"BlockSignal" : [
					{"Name" : "p_chin_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "246",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "247",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "248",
				"BlockSignal" : [
					{"Name" : "p_k_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "249",
				"BlockSignal" : [
					{"Name" : "p_r_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE32_U0.Systolic_Array_Cocud_U328", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE32_U0.Systolic_Array_CodEe_U329", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE_array_Block_preh_U0", "Parent" : "6",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_PE_arrakbM_U",
		"Port" : [
			{"Name" : "row", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "row_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "250",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "251",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_out_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "252",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_out_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_out_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "253",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_out_out3_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE33_U0", "Parent" : "6", "Child" : ["58", "59"],
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
		"StartSource" : "9",
		"StartFifo" : "start_for_PE33_U0_U",
		"Port" : [
			{"Name" : "W_inter_3_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "W_inter_3_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "In_inter_3_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_4_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "254",
				"BlockSignal" : [
					{"Name" : "W_inter_4_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "255",
				"BlockSignal" : [
					{"Name" : "In_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "250",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_3_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "256",
				"BlockSignal" : [
					{"Name" : "O_inter_3_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "257",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "258",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "259",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE33_U0.Systolic_Array_Cocud_U356", "Parent" : "57"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE33_U0.Systolic_Array_CodEe_U357", "Parent" : "57"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE34_U0", "Parent" : "6", "Child" : ["61", "62"],
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
		"StartSource" : "57",
		"StartFifo" : "start_for_PE34_U0_U",
		"Port" : [
			{"Name" : "W_inter_3_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "W_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "255",
				"BlockSignal" : [
					{"Name" : "In_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_4_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "260",
				"BlockSignal" : [
					{"Name" : "W_inter_4_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "261",
				"BlockSignal" : [
					{"Name" : "In_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "251",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "add_ln207_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_3_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "262",
				"BlockSignal" : [
					{"Name" : "O_inter_3_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "263",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "264",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "265",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE34_U0.Systolic_Array_Cocud_U373", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE34_U0.Systolic_Array_CodEe_U374", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE35_U0", "Parent" : "6", "Child" : ["64", "65"],
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
		"StartSource" : "56",
		"StartFifo" : "start_for_PE35_U0_U",
		"Port" : [
			{"Name" : "W_inter_3_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "W_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "261",
				"BlockSignal" : [
					{"Name" : "In_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_4_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "266",
				"BlockSignal" : [
					{"Name" : "W_inter_4_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "267",
				"BlockSignal" : [
					{"Name" : "In_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "252",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "add_ln207_1_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_3_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "O_inter_3_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "235",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "236",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "237",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE35_U0.Systolic_Array_Cocud_U390", "Parent" : "63"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE35_U0.Systolic_Array_CodEe_U391", "Parent" : "63"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE36_U0", "Parent" : "6", "Child" : ["67", "68"],
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
		"StartSource" : "56",
		"StartFifo" : "start_for_PE36_U0_U",
		"Port" : [
			{"Name" : "W_inter_3_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "238",
				"BlockSignal" : [
					{"Name" : "W_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "267",
				"BlockSignal" : [
					{"Name" : "In_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "W_inter_4_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "W_inter_4_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "In_inter_3_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "273",
				"BlockSignal" : [
					{"Name" : "In_inter_3_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_5_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "253",
				"BlockSignal" : [
					{"Name" : "add_ln207_5_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln207_2_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "241",
				"BlockSignal" : [
					{"Name" : "add_ln207_2_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_inter_3_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "274",
				"BlockSignal" : [
					{"Name" : "O_inter_3_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "242",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "244",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "246",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "247",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_r_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "249",
				"BlockSignal" : [
					{"Name" : "p_r_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "275",
				"BlockSignal" : [
					{"Name" : "p_c_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "276",
				"BlockSignal" : [
					{"Name" : "p_c_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "277",
				"BlockSignal" : [
					{"Name" : "p_c_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "278",
				"BlockSignal" : [
					{"Name" : "p_chin_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "279",
				"BlockSignal" : [
					{"Name" : "p_chin_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "280",
				"BlockSignal" : [
					{"Name" : "p_chout_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "281",
				"BlockSignal" : [
					{"Name" : "p_k_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "282",
				"BlockSignal" : [
					{"Name" : "p_k_out4_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE36_U0.Systolic_Array_Cocud_U407", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.PE36_U0.Systolic_Array_CodEe_U408", "Parent" : "66"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Write_O_ALL_U0", "Parent" : "6",
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
			{"Name" : "O_0_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "O_0_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_0_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "O_0_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_0_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "138",
				"BlockSignal" : [
					{"Name" : "O_0_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_0_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "154",
				"BlockSignal" : [
					{"Name" : "O_0_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "170",
				"BlockSignal" : [
					{"Name" : "O_1_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "O_1_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "O_1_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_1_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "O_1_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "O_2_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "O_2_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "O_2_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_2_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "240",
				"BlockSignal" : [
					{"Name" : "O_2_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "256",
				"BlockSignal" : [
					{"Name" : "O_3_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "262",
				"BlockSignal" : [
					{"Name" : "O_3_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "O_3_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "O_3_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "274",
				"BlockSignal" : [
					{"Name" : "O_3_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "cho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "275",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chout_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "280",
				"BlockSignal" : [
					{"Name" : "p_chout_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Out_buf_cho", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Drain_In37_U0", "Parent" : "6",
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
		"StartSource" : "27",
		"StartFifo" : "start_for_Drain_IlbW_U",
		"Port" : [
			{"Name" : "In_pre_V4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "153",
				"BlockSignal" : [
					{"Name" : "In_pre_V4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "157",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "159",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "162",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Drain_In38_U0", "Parent" : "6",
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
		"StartSource" : "40",
		"StartFifo" : "start_for_Drain_Imb6_U",
		"Port" : [
			{"Name" : "In_pre_V19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "In_pre_V19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Drain_In39_U0", "Parent" : "6",
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
		"StartSource" : "53",
		"StartFifo" : "start_for_Drain_Incg_U",
		"Port" : [
			{"Name" : "In_pre_V214", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "239",
				"BlockSignal" : [
					{"Name" : "In_pre_V214_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "243",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "245",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "248",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Drain_In40_U0", "Parent" : "6",
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
		"StartSource" : "66",
		"StartFifo" : "start_for_Drain_IrcU_U",
		"Port" : [
			{"Name" : "In_pre_V319", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "273",
				"BlockSignal" : [
					{"Name" : "In_pre_V319_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "276",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "278",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "281",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Drain_W41_U0", "Parent" : "6",
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
		"StartSource" : "57",
		"StartFifo" : "start_for_Drain_Wocq_U",
		"Port" : [
			{"Name" : "W_next_V4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "254",
				"BlockSignal" : [
					{"Name" : "W_next_V4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "257",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "258",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "259",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Drain_W42_U0", "Parent" : "6",
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
		"StartSource" : "60",
		"StartFifo" : "start_for_Drain_WpcA_U",
		"Port" : [
			{"Name" : "W_next_V416", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "260",
				"BlockSignal" : [
					{"Name" : "W_next_V416_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "263",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "264",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "265",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Drain_W43_U0", "Parent" : "6",
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
		"StartSource" : "63",
		"StartFifo" : "start_for_Drain_WqcK_U",
		"Port" : [
			{"Name" : "W_next_V417", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "266",
				"BlockSignal" : [
					{"Name" : "W_next_V417_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.Drain_W44_U0", "Parent" : "6",
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
		"StartSource" : "66",
		"StartFifo" : "start_for_Drain_Wsc4_U",
		"Port" : [
			{"Name" : "W_next_V418", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "W_next_V418_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "277",
				"BlockSignal" : [
					{"Name" : "p_c_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_chin_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "279",
				"BlockSignal" : [
					{"Name" : "p_chin_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_k_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "282",
				"BlockSignal" : [
					{"Name" : "p_k_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.row_c1_U", "Parent" : "6"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c2_U", "Parent" : "6"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.row_c_U", "Parent" : "6"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.row_c707_U", "Parent" : "6"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.row_c708_U", "Parent" : "6"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.row_c709_U", "Parent" : "6"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c_U", "Parent" : "6"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c710_U", "Parent" : "6"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c711_U", "Parent" : "6"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c712_U", "Parent" : "6"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c713_U", "Parent" : "6"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_0_0_U", "Parent" : "6"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_1_0_U", "Parent" : "6"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_2_0_U", "Parent" : "6"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_3_0_U", "Parent" : "6"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c_U", "Parent" : "6"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c714_U", "Parent" : "6"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c_U", "Parent" : "6"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c715_U", "Parent" : "6"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c_U", "Parent" : "6"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c716_U", "Parent" : "6"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_0_0_U", "Parent" : "6"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_0_1_U", "Parent" : "6"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_0_2_U", "Parent" : "6"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_0_3_U", "Parent" : "6"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_1_0_U", "Parent" : "6"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_0_1_U", "Parent" : "6"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_0_0_U", "Parent" : "6"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.row_c717_U", "Parent" : "6"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c718_U", "Parent" : "6"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c719_U", "Parent" : "6"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c720_U", "Parent" : "6"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c721_U", "Parent" : "6"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c722_U", "Parent" : "6"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c723_U", "Parent" : "6"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c_U", "Parent" : "6"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c724_U", "Parent" : "6"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c725_U", "Parent" : "6"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c726_U", "Parent" : "6"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c_U", "Parent" : "6"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c727_U", "Parent" : "6"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_loc_c_U", "Parent" : "6"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_1_1_U", "Parent" : "6"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_0_2_U", "Parent" : "6"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_0_1_U", "Parent" : "6"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.row_c728_U", "Parent" : "6"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_loc_c729_U", "Parent" : "6"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c730_U", "Parent" : "6"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c731_U", "Parent" : "6"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c732_U", "Parent" : "6"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c733_U", "Parent" : "6"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c734_U", "Parent" : "6"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c735_U", "Parent" : "6"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c736_U", "Parent" : "6"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c737_U", "Parent" : "6"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c738_U", "Parent" : "6"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c739_U", "Parent" : "6"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_1_loc_c_U", "Parent" : "6"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_1_2_U", "Parent" : "6"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_0_3_U", "Parent" : "6"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_0_2_U", "Parent" : "6"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.row_c740_U", "Parent" : "6"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_1_loc_c741_U", "Parent" : "6"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c742_U", "Parent" : "6"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c743_U", "Parent" : "6"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c744_U", "Parent" : "6"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c745_U", "Parent" : "6"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c746_U", "Parent" : "6"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c747_U", "Parent" : "6"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c748_U", "Parent" : "6"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c749_U", "Parent" : "6"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c750_U", "Parent" : "6"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c751_U", "Parent" : "6"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_2_loc_c_U", "Parent" : "6"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_1_3_U", "Parent" : "6"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_0_4_U", "Parent" : "6"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_0_3_U", "Parent" : "6"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_2_loc_c752_U", "Parent" : "6"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c753_U", "Parent" : "6"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c754_U", "Parent" : "6"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c755_U", "Parent" : "6"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c756_U", "Parent" : "6"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c757_U", "Parent" : "6"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c758_U", "Parent" : "6"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c759_U", "Parent" : "6"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c760_U", "Parent" : "6"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_3_loc_c_U", "Parent" : "6"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_3_loc_c761_U", "Parent" : "6"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_3_loc_c762_U", "Parent" : "6"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_3_loc_c763_U", "Parent" : "6"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_2_0_U", "Parent" : "6"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_1_1_U", "Parent" : "6"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_1_0_U", "Parent" : "6"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c764_U", "Parent" : "6"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c765_U", "Parent" : "6"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c766_U", "Parent" : "6"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c767_U", "Parent" : "6"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c768_U", "Parent" : "6"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c769_U", "Parent" : "6"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_2_1_U", "Parent" : "6"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_1_2_U", "Parent" : "6"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_1_1_U", "Parent" : "6"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_loc_c770_U", "Parent" : "6"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c771_U", "Parent" : "6"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c772_U", "Parent" : "6"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c773_U", "Parent" : "6"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c774_U", "Parent" : "6"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c775_U", "Parent" : "6"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_2_2_U", "Parent" : "6"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_1_3_U", "Parent" : "6"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_1_2_U", "Parent" : "6"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_1_loc_c776_U", "Parent" : "6"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c777_U", "Parent" : "6"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c778_U", "Parent" : "6"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c779_U", "Parent" : "6"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c780_U", "Parent" : "6"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c781_U", "Parent" : "6"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_2_3_U", "Parent" : "6"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_1_4_U", "Parent" : "6"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_1_3_U", "Parent" : "6"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_2_loc_c782_U", "Parent" : "6"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c783_U", "Parent" : "6"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c784_U", "Parent" : "6"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c785_U", "Parent" : "6"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c786_U", "Parent" : "6"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c787_U", "Parent" : "6"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c788_U", "Parent" : "6"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c789_U", "Parent" : "6"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c790_U", "Parent" : "6"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_4_loc_c_U", "Parent" : "6"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_4_loc_c791_U", "Parent" : "6"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_4_loc_c792_U", "Parent" : "6"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_4_loc_c793_U", "Parent" : "6"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_3_0_U", "Parent" : "6"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_2_1_U", "Parent" : "6"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_2_0_U", "Parent" : "6"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.cho_c794_U", "Parent" : "6"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c795_U", "Parent" : "6"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c796_U", "Parent" : "6"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c797_U", "Parent" : "6"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c798_U", "Parent" : "6"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c799_U", "Parent" : "6"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_3_1_U", "Parent" : "6"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_2_2_U", "Parent" : "6"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_2_1_U", "Parent" : "6"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_loc_c800_U", "Parent" : "6"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c801_U", "Parent" : "6"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c802_U", "Parent" : "6"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c803_U", "Parent" : "6"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c804_U", "Parent" : "6"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c805_U", "Parent" : "6"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_3_2_U", "Parent" : "6"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_2_3_U", "Parent" : "6"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_2_2_U", "Parent" : "6"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_1_loc_c806_U", "Parent" : "6"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c807_U", "Parent" : "6"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c808_U", "Parent" : "6"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c809_U", "Parent" : "6"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c810_U", "Parent" : "6"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c811_U", "Parent" : "6"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_3_3_U", "Parent" : "6"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_2_4_U", "Parent" : "6"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_2_3_U", "Parent" : "6"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_2_loc_c812_U", "Parent" : "6"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c813_U", "Parent" : "6"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c814_U", "Parent" : "6"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c815_U", "Parent" : "6"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c816_U", "Parent" : "6"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c817_U", "Parent" : "6"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c818_U", "Parent" : "6"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c819_U", "Parent" : "6"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_r_c820_U", "Parent" : "6"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_5_loc_c_U", "Parent" : "6"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_5_loc_c821_U", "Parent" : "6"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_5_loc_c822_U", "Parent" : "6"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.add_ln207_5_loc_c823_U", "Parent" : "6"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_4_0_U", "Parent" : "6"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_3_1_U", "Parent" : "6"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_3_0_U", "Parent" : "6"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c824_U", "Parent" : "6"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c825_U", "Parent" : "6"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c826_U", "Parent" : "6"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_4_1_U", "Parent" : "6"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_3_2_U", "Parent" : "6"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_3_1_U", "Parent" : "6"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c827_U", "Parent" : "6"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c828_U", "Parent" : "6"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c829_U", "Parent" : "6"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_4_2_U", "Parent" : "6"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_3_3_U", "Parent" : "6"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_3_2_U", "Parent" : "6"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c830_U", "Parent" : "6"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c831_U", "Parent" : "6"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c832_U", "Parent" : "6"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.W_inter_4_3_U", "Parent" : "6"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.In_inter_3_4_U", "Parent" : "6"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.O_inter_3_3_U", "Parent" : "6"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c833_U", "Parent" : "6"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c834_U", "Parent" : "6"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_c_c835_U", "Parent" : "6"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c836_U", "Parent" : "6"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chin_c837_U", "Parent" : "6"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_chout_c838_U", "Parent" : "6"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c839_U", "Parent" : "6"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.p_k_c840_U", "Parent" : "6"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE_arraeOg_U", "Parent" : "6"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE_arrafYi_U", "Parent" : "6"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE_arrag8j_U", "Parent" : "6"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE_arrahbi_U", "Parent" : "6"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE_arraibs_U", "Parent" : "6"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE_arrajbC_U", "Parent" : "6"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE_arrakbM_U", "Parent" : "6"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE25_U0_U", "Parent" : "6"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE29_U0_U", "Parent" : "6"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE33_U0_U", "Parent" : "6"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE22_U0_U", "Parent" : "6"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE23_U0_U", "Parent" : "6"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE24_U0_U", "Parent" : "6"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE26_U0_U", "Parent" : "6"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE27_U0_U", "Parent" : "6"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE28_U0_U", "Parent" : "6"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_Drain_IlbW_U", "Parent" : "6"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE31_U0_U", "Parent" : "6"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE32_U0_U", "Parent" : "6"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_Drain_Imb6_U", "Parent" : "6"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE30_U0_U", "Parent" : "6"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_Drain_Incg_U", "Parent" : "6"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE35_U0_U", "Parent" : "6"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE36_U0_U", "Parent" : "6"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_PE34_U0_U", "Parent" : "6"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_Drain_Wocq_U", "Parent" : "6"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_Drain_WpcA_U", "Parent" : "6"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_Drain_WqcK_U", "Parent" : "6"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_Drain_IrcU_U", "Parent" : "6"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_array_fu_246.start_for_Drain_Wsc4_U", "Parent" : "6"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Read_In_buf_line_fu_275", "Parent" : "0", "Child" : ["314", "315", "316"],
		"CDFG" : "Read_In_buf_line",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "1082",
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
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Read_In_buf_line_fu_275.Systolic_Array_Cobkb_U5", "Parent" : "313"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Read_In_buf_line_fu_275.Systolic_Array_Cobkb_U6", "Parent" : "313"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Read_In_buf_line_fu_275.Systolic_Array_Cobkb_U7", "Parent" : "313"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Write_C_buf_fu_296", "Parent" : "0",
		"CDFG" : "Write_C_buf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "801",
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
			{"Name" : "p_chout_s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Read_W_buf_fu_311", "Parent" : "0",
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
	Systolic_Array_Conv {
		gmem {Type IO LastRead 43 FirstWrite -1}
		In_ddr {Type I LastRead 0 FirstWrite -1}
		W_ddr {Type I LastRead 0 FirstWrite -1}
		Out_ddr {Type I LastRead 0 FirstWrite -1}
		stride {Type I LastRead 0 FirstWrite -1}
		padding {Type I LastRead 0 FirstWrite -1}
		Rin {Type I LastRead 0 FirstWrite -1}
		Cin {Type I LastRead 0 FirstWrite -1}
		CHin {Type I LastRead 0 FirstWrite -1}
		R {Type I LastRead 2 FirstWrite -1}
		C {Type I LastRead 2 FirstWrite -1}
		CHout {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type IO LastRead -1 FirstWrite -1}
		p_chout_s {Type IO LastRead -1 FirstWrite -1}
		p_r_s {Type IO LastRead -1 FirstWrite -1}
		p_c_s {Type IO LastRead -1 FirstWrite -1}
		p_cin_s {Type IO LastRead -1 FirstWrite -1}
		p_k_s {Type IO LastRead -1 FirstWrite -1}
		p_s_s {Type IO LastRead -1 FirstWrite -1}
		p_p_s {Type IO LastRead -1 FirstWrite -1}
		p_rinp_s {Type IO LastRead -1 FirstWrite -1}
		p_cinp_s {Type IO LastRead -1 FirstWrite -1}
		In_buffer_length {Type IO LastRead -1 FirstWrite -1}
		In_buffer_start {Type IO LastRead -1 FirstWrite -1}
		In_buffer_end {Type IO LastRead -1 FirstWrite -1}
		Out_buf_row {Type IO LastRead -1 FirstWrite -1}
		In_buf_row {Type IO LastRead -1 FirstWrite -1}
		Out_buf_cho {Type IO LastRead -1 FirstWrite -1}
		Out_buf_row_count {Type IO LastRead -1 FirstWrite -1}}
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
		p_k_s {Type I LastRead 0 FirstWrite -1}}
	Read_In_buf_line {
		In_buf {Type O LastRead -1 FirstWrite 36}
		In_ddr {Type I LastRead 43 FirstWrite -1}
		In_ddr_offset {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		p_p_s {Type I LastRead 0 FirstWrite -1}
		p_cinp_s {Type I LastRead 0 FirstWrite -1}
		p_chin_s {Type I LastRead 0 FirstWrite -1}
		In_buffer_end {Type I LastRead 0 FirstWrite -1}
		In_buffer_length {Type I LastRead 0 FirstWrite -1}
		p_rinp_s {Type I LastRead 0 FirstWrite -1}}
	Write_C_buf {
		Out_buf {Type IO LastRead 3 FirstWrite 3}
		Out_ddr {Type O LastRead 6 FirstWrite 5}
		Out_ddr_offset {Type I LastRead 0 FirstWrite -1}
		Out_ddr_offset1 {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		p_c_s {Type I LastRead 0 FirstWrite -1}
		p_chout_s {Type I LastRead 2 FirstWrite -1}}
	Read_W_buf {
		W {Type O LastRead -1 FirstWrite 9}
		W_ddr {Type I LastRead 8 FirstWrite -1}
		W_ddr_offset {Type I LastRead 0 FirstWrite -1}
		length_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "163", "Max" : "3128462"}
	, {"Name" : "Interval", "Min" : "164", "Max" : "3128463"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 32 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 32 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	stride { ap_none {  { stride in_data 0 32 } } }
	padding { ap_none {  { padding in_data 0 32 } } }
	Rin { ap_none {  { Rin in_data 0 32 } } }
	Cin { ap_none {  { Cin in_data 0 32 } } }
	CHin { ap_none {  { CHin in_data 0 32 } } }
	R { ap_none {  { R in_data 0 32 } } }
	C { ap_none {  { C in_data 0 32 } } }
	CHout { ap_none {  { CHout in_data 0 32 } } }
	K { ap_none {  { K in_data 0 32 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
