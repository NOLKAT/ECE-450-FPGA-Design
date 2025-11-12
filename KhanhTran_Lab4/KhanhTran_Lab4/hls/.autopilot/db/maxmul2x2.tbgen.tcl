set moduleName maxmul2x2
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 2
set C_modelName {maxmul2x2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ a00 int 16 regular  }
	{ a01 int 16 regular  }
	{ a10 int 16 regular  }
	{ a11 int 16 regular  }
	{ b00 int 16 regular  }
	{ b01 int 16 regular  }
	{ b10 int 16 regular  }
	{ b11 int 16 regular  }
	{ c00 int 32 regular {pointer 1}  }
	{ c01 int 32 regular {pointer 1}  }
	{ c10 int 32 regular {pointer 1}  }
	{ c11 int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a00", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a01", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "a11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b00", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b01", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "b11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "c00", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c01", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c10", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c11", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a00 sc_in sc_lv 16 signal 0 } 
	{ a01 sc_in sc_lv 16 signal 1 } 
	{ a10 sc_in sc_lv 16 signal 2 } 
	{ a11 sc_in sc_lv 16 signal 3 } 
	{ b00 sc_in sc_lv 16 signal 4 } 
	{ b01 sc_in sc_lv 16 signal 5 } 
	{ b10 sc_in sc_lv 16 signal 6 } 
	{ b11 sc_in sc_lv 16 signal 7 } 
	{ c00 sc_out sc_lv 32 signal 8 } 
	{ c01 sc_out sc_lv 32 signal 9 } 
	{ c10 sc_out sc_lv 32 signal 10 } 
	{ c11 sc_out sc_lv 32 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a00", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a00", "role": "default" }} , 
 	{ "name": "a01", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a01", "role": "default" }} , 
 	{ "name": "a10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a10", "role": "default" }} , 
 	{ "name": "a11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "a11", "role": "default" }} , 
 	{ "name": "b00", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b00", "role": "default" }} , 
 	{ "name": "b01", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b01", "role": "default" }} , 
 	{ "name": "b10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b10", "role": "default" }} , 
 	{ "name": "b11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "b11", "role": "default" }} , 
 	{ "name": "c00", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c00", "role": "default" }} , 
 	{ "name": "c01", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c01", "role": "default" }} , 
 	{ "name": "c10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c10", "role": "default" }} , 
 	{ "name": "c11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c11", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	maxmul2x2 {
		a00 {Type I LastRead 0 FirstWrite -1}
		a01 {Type I LastRead 0 FirstWrite -1}
		a10 {Type I LastRead 0 FirstWrite -1}
		a11 {Type I LastRead 0 FirstWrite -1}
		b00 {Type I LastRead 0 FirstWrite -1}
		b01 {Type I LastRead 0 FirstWrite -1}
		b10 {Type I LastRead 0 FirstWrite -1}
		b11 {Type I LastRead 0 FirstWrite -1}
		c00 {Type O LastRead -1 FirstWrite 3}
		c01 {Type O LastRead -1 FirstWrite 3}
		c10 {Type O LastRead -1 FirstWrite 3}
		c11 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a00 { ap_none {  { a00 in_data 0 16 } } }
	a01 { ap_none {  { a01 in_data 0 16 } } }
	a10 { ap_none {  { a10 in_data 0 16 } } }
	a11 { ap_none {  { a11 in_data 0 16 } } }
	b00 { ap_none {  { b00 in_data 0 16 } } }
	b01 { ap_none {  { b01 in_data 0 16 } } }
	b10 { ap_none {  { b10 in_data 0 16 } } }
	b11 { ap_none {  { b11 in_data 0 16 } } }
	c00 { ap_none {  { c00 out_data 1 32 } } }
	c01 { ap_none {  { c01 out_data 1 32 } } }
	c10 { ap_none {  { c10 out_data 1 32 } } }
	c11 { ap_none {  { c11 out_data 1 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
