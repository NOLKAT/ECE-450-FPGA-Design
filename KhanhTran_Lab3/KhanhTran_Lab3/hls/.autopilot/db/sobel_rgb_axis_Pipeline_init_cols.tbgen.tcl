set moduleName sobel_rgb_axis_Pipeline_init_cols
set isTopModule 0
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
set cdfgNum 5
set C_modelName {sobel_rgb_axis_Pipeline_init_cols}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict line0 { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict line1 { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ width int 32 regular  }
	{ line0 int 8 regular {array 1024 { 3 0 } 0 1 } {global 1}  }
	{ line1 int 8 regular {array 1024 { 3 0 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "line0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "line1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ width sc_in sc_lv 32 signal 0 } 
	{ line0_address1 sc_out sc_lv 10 signal 1 } 
	{ line0_ce1 sc_out sc_logic 1 signal 1 } 
	{ line0_we1 sc_out sc_logic 1 signal 1 } 
	{ line0_d1 sc_out sc_lv 8 signal 1 } 
	{ line1_address1 sc_out sc_lv 10 signal 2 } 
	{ line1_ce1 sc_out sc_logic 1 signal 2 } 
	{ line1_we1 sc_out sc_logic 1 signal 2 } 
	{ line1_d1 sc_out sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "line0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line0", "role": "address1" }} , 
 	{ "name": "line0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line0", "role": "ce1" }} , 
 	{ "name": "line0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line0", "role": "we1" }} , 
 	{ "name": "line0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line0", "role": "d1" }} , 
 	{ "name": "line1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line1", "role": "address1" }} , 
 	{ "name": "line1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line1", "role": "ce1" }} , 
 	{ "name": "line1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line1", "role": "we1" }} , 
 	{ "name": "line1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line1", "role": "d1" }}  ]}

set ArgLastReadFirstWriteLatency {
	sobel_rgb_axis_Pipeline_init_cols {
		width {Type I LastRead 0 FirstWrite -1}
		line0 {Type O LastRead -1 FirstWrite 1}
		line1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	width { ap_none {  { width in_data 0 32 } } }
	line0 { ap_memory {  { line0_address1 MemPortADDR2 1 10 }  { line0_ce1 MemPortCE2 1 1 }  { line0_we1 MemPortWE2 1 1 }  { line0_d1 MemPortDIN2 1 8 } } }
	line1 { ap_memory {  { line1_address1 MemPortADDR2 1 10 }  { line1_ce1 MemPortCE2 1 1 }  { line1_we1 MemPortWE2 1 1 }  { line1_d1 MemPortDIN2 1 8 } } }
}
