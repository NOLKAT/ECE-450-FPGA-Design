set moduleName sobel_rgb_axis_Pipeline_row_loop_col_loop
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
set C_modelName {sobel_rgb_axis_Pipeline_row_loop_col_loop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict line1 { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict line0 { MEM_WIDTH 8 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ width int 32 regular  }
	{ bound int 41 regular  }
	{ sub133 int 32 regular  }
	{ in_axis_V_data_V int 24 regular {axi_s 0 volatile  { in_axis Data } }  }
	{ in_axis_V_keep_V int 3 regular {axi_s 0 volatile  { in_axis Keep } }  }
	{ in_axis_V_strb_V int 3 regular {axi_s 0 volatile  { in_axis Strb } }  }
	{ in_axis_V_user_V int 1 regular {axi_s 0 volatile  { in_axis User } }  }
	{ in_axis_V_last_V int 1 regular {axi_s 0 volatile  { in_axis Last } }  }
	{ in_axis_V_id_V int 1 regular {axi_s 0 volatile  { in_axis ID } }  }
	{ in_axis_V_dest_V int 1 regular {axi_s 0 volatile  { in_axis Dest } }  }
	{ sub int 32 regular  }
	{ out_axis_V_data_V int 24 regular {axi_s 1 volatile  { out_axis Data } }  }
	{ out_axis_V_keep_V int 3 regular {axi_s 1 volatile  { out_axis Keep } }  }
	{ out_axis_V_strb_V int 3 regular {axi_s 1 volatile  { out_axis Strb } }  }
	{ out_axis_V_user_V int 1 regular {axi_s 1 volatile  { out_axis User } }  }
	{ out_axis_V_last_V int 1 regular {axi_s 1 volatile  { out_axis Last } }  }
	{ out_axis_V_id_V int 1 regular {axi_s 1 volatile  { out_axis ID } }  }
	{ out_axis_V_dest_V int 1 regular {axi_s 1 volatile  { out_axis Dest } }  }
	{ line1 int 8 regular {array 1024 { 3 2 } 1 1 } {global 2}  }
	{ line0 int 8 regular {array 1024 { 1 0 } 1 1 } {global 2}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 41, "direction" : "READONLY"} , 
 	{ "Name" : "sub133", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sub", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_axis_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "line1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "line0", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_axis_TVALID sc_in sc_logic 1 invld 3 } 
	{ out_axis_TREADY sc_in sc_logic 1 outacc 11 } 
	{ width sc_in sc_lv 32 signal 0 } 
	{ bound sc_in sc_lv 41 signal 1 } 
	{ sub133 sc_in sc_lv 32 signal 2 } 
	{ in_axis_TDATA sc_in sc_lv 24 signal 3 } 
	{ in_axis_TREADY sc_out sc_logic 1 inacc 9 } 
	{ in_axis_TKEEP sc_in sc_lv 3 signal 4 } 
	{ in_axis_TSTRB sc_in sc_lv 3 signal 5 } 
	{ in_axis_TUSER sc_in sc_lv 1 signal 6 } 
	{ in_axis_TLAST sc_in sc_lv 1 signal 7 } 
	{ in_axis_TID sc_in sc_lv 1 signal 8 } 
	{ in_axis_TDEST sc_in sc_lv 1 signal 9 } 
	{ sub sc_in sc_lv 32 signal 10 } 
	{ out_axis_TDATA sc_out sc_lv 24 signal 11 } 
	{ out_axis_TVALID sc_out sc_logic 1 outvld 17 } 
	{ out_axis_TKEEP sc_out sc_lv 3 signal 12 } 
	{ out_axis_TSTRB sc_out sc_lv 3 signal 13 } 
	{ out_axis_TUSER sc_out sc_lv 1 signal 14 } 
	{ out_axis_TLAST sc_out sc_lv 1 signal 15 } 
	{ out_axis_TID sc_out sc_lv 1 signal 16 } 
	{ out_axis_TDEST sc_out sc_lv 1 signal 17 } 
	{ line1_address1 sc_out sc_lv 10 signal 18 } 
	{ line1_ce1 sc_out sc_logic 1 signal 18 } 
	{ line1_we1 sc_out sc_logic 1 signal 18 } 
	{ line1_d1 sc_out sc_lv 8 signal 18 } 
	{ line1_q1 sc_in sc_lv 8 signal 18 } 
	{ line0_address0 sc_out sc_lv 10 signal 19 } 
	{ line0_ce0 sc_out sc_logic 1 signal 19 } 
	{ line0_q0 sc_in sc_lv 8 signal 19 } 
	{ line0_address1 sc_out sc_lv 10 signal 19 } 
	{ line0_ce1 sc_out sc_logic 1 signal 19 } 
	{ line0_we1 sc_out sc_logic 1 signal 19 } 
	{ line0_d1 sc_out sc_lv 8 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_axis_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_axis_V_data_V", "role": "default" }} , 
 	{ "name": "out_axis_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_axis_V_data_V", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":41, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "sub133", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub133", "role": "default" }} , 
 	{ "name": "in_axis_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "in_axis_V_data_V", "role": "default" }} , 
 	{ "name": "in_axis_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "in_axis_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "in_axis_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "in_axis_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_axis_V_user_V", "role": "default" }} , 
 	{ "name": "in_axis_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_axis_V_last_V", "role": "default" }} , 
 	{ "name": "in_axis_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_axis_V_id_V", "role": "default" }} , 
 	{ "name": "in_axis_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "sub", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub", "role": "default" }} , 
 	{ "name": "out_axis_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "out_axis_V_data_V", "role": "default" }} , 
 	{ "name": "out_axis_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "out_axis_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "out_axis_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "out_axis_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_axis_V_user_V", "role": "default" }} , 
 	{ "name": "out_axis_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_axis_V_last_V", "role": "default" }} , 
 	{ "name": "out_axis_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_axis_V_id_V", "role": "default" }} , 
 	{ "name": "out_axis_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "line1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line1", "role": "address1" }} , 
 	{ "name": "line1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line1", "role": "ce1" }} , 
 	{ "name": "line1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line1", "role": "we1" }} , 
 	{ "name": "line1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line1", "role": "d1" }} , 
 	{ "name": "line1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line1", "role": "q1" }} , 
 	{ "name": "line0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line0", "role": "address0" }} , 
 	{ "name": "line0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line0", "role": "ce0" }} , 
 	{ "name": "line0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line0", "role": "q0" }} , 
 	{ "name": "line0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "line0", "role": "address1" }} , 
 	{ "name": "line0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line0", "role": "ce1" }} , 
 	{ "name": "line0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line0", "role": "we1" }} , 
 	{ "name": "line0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line0", "role": "d1" }}  ]}

set ArgLastReadFirstWriteLatency {
	sobel_rgb_axis_Pipeline_row_loop_col_loop {
		width {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		sub133 {Type I LastRead 0 FirstWrite -1}
		in_axis_V_data_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_keep_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_strb_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_user_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_last_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_id_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_dest_V {Type I LastRead 2 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		out_axis_V_data_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_keep_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_strb_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_user_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_last_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_id_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_dest_V {Type O LastRead -1 FirstWrite 8}
		line1 {Type IO LastRead 3 FirstWrite 3}
		line0 {Type IO LastRead 2 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	width { ap_none {  { width in_data 0 32 } } }
	bound { ap_none {  { bound in_data 0 41 } } }
	sub133 { ap_none {  { sub133 in_data 0 32 } } }
	in_axis_V_data_V { axis {  { in_axis_TVALID in_vld 0 1 }  { in_axis_TDATA in_data 0 24 } } }
	in_axis_V_keep_V { axis {  { in_axis_TKEEP in_data 0 3 } } }
	in_axis_V_strb_V { axis {  { in_axis_TSTRB in_data 0 3 } } }
	in_axis_V_user_V { axis {  { in_axis_TUSER in_data 0 1 } } }
	in_axis_V_last_V { axis {  { in_axis_TLAST in_data 0 1 } } }
	in_axis_V_id_V { axis {  { in_axis_TID in_data 0 1 } } }
	in_axis_V_dest_V { axis {  { in_axis_TREADY in_acc 1 1 }  { in_axis_TDEST in_data 0 1 } } }
	sub { ap_none {  { sub in_data 0 32 } } }
	out_axis_V_data_V { axis {  { out_axis_TREADY out_acc 0 1 }  { out_axis_TDATA out_data 1 24 } } }
	out_axis_V_keep_V { axis {  { out_axis_TKEEP out_data 1 3 } } }
	out_axis_V_strb_V { axis {  { out_axis_TSTRB out_data 1 3 } } }
	out_axis_V_user_V { axis {  { out_axis_TUSER out_data 1 1 } } }
	out_axis_V_last_V { axis {  { out_axis_TLAST out_data 1 1 } } }
	out_axis_V_id_V { axis {  { out_axis_TID out_data 1 1 } } }
	out_axis_V_dest_V { axis {  { out_axis_TVALID out_vld 1 1 }  { out_axis_TDEST out_data 1 1 } } }
	line1 { ap_memory {  { line1_address1 MemPortADDR2 1 10 }  { line1_ce1 MemPortCE2 1 1 }  { line1_we1 MemPortWE2 1 1 }  { line1_d1 MemPortDIN2 1 8 }  { line1_q1 MemPortDOUT2 0 8 } } }
	line0 { ap_memory {  { line0_address0 mem_address 1 10 }  { line0_ce0 mem_ce 1 1 }  { line0_q0 mem_dout 0 8 }  { line0_address1 MemPortADDR2 1 10 }  { line0_ce1 MemPortCE2 1 1 }  { line0_we1 MemPortWE2 1 1 }  { line0_d1 MemPortDIN2 1 8 } } }
}
