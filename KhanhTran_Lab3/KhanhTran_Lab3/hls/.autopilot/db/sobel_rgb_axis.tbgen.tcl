set moduleName sobel_rgb_axis
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {sobel_rgb_axis}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_axis_V_data_V int 24 regular {axi_s 0 volatile  { in_axis Data } }  }
	{ in_axis_V_keep_V int 3 regular {axi_s 0 volatile  { in_axis Keep } }  }
	{ in_axis_V_strb_V int 3 regular {axi_s 0 volatile  { in_axis Strb } }  }
	{ in_axis_V_user_V int 1 regular {axi_s 0 volatile  { in_axis User } }  }
	{ in_axis_V_last_V int 1 regular {axi_s 0 volatile  { in_axis Last } }  }
	{ in_axis_V_id_V int 1 regular {axi_s 0 volatile  { in_axis ID } }  }
	{ in_axis_V_dest_V int 1 regular {axi_s 0 volatile  { in_axis Dest } }  }
	{ out_axis_V_data_V int 24 regular {axi_s 1 volatile  { out_axis Data } }  }
	{ out_axis_V_keep_V int 3 regular {axi_s 1 volatile  { out_axis Keep } }  }
	{ out_axis_V_strb_V int 3 regular {axi_s 1 volatile  { out_axis Strb } }  }
	{ out_axis_V_user_V int 1 regular {axi_s 1 volatile  { out_axis User } }  }
	{ out_axis_V_last_V int 1 regular {axi_s 1 volatile  { out_axis Last } }  }
	{ out_axis_V_id_V int 1 regular {axi_s 1 volatile  { out_axis ID } }  }
	{ out_axis_V_dest_V int 1 regular {axi_s 1 volatile  { out_axis Dest } }  }
	{ width int 32 regular {axi_slave 0}  }
	{ height int 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_axis_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_axis_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_axis_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_axis_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "height", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_axis_TDATA sc_in sc_lv 24 signal 0 } 
	{ in_axis_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_axis_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_axis_TKEEP sc_in sc_lv 3 signal 1 } 
	{ in_axis_TSTRB sc_in sc_lv 3 signal 2 } 
	{ in_axis_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_axis_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_axis_TID sc_in sc_lv 1 signal 5 } 
	{ in_axis_TDEST sc_in sc_lv 1 signal 6 } 
	{ out_axis_TDATA sc_out sc_lv 24 signal 7 } 
	{ out_axis_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_axis_TREADY sc_in sc_logic 1 outacc 13 } 
	{ out_axis_TKEEP sc_out sc_lv 3 signal 8 } 
	{ out_axis_TSTRB sc_out sc_lv 3 signal 9 } 
	{ out_axis_TUSER sc_out sc_lv 1 signal 10 } 
	{ out_axis_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_axis_TID sc_out sc_lv 1 signal 12 } 
	{ out_axis_TDEST sc_out sc_lv 1 signal 13 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"sobel_rgb_axis","role":"start","value":"0","valid_bit":"0"},{"name":"sobel_rgb_axis","role":"continue","value":"0","valid_bit":"4"},{"name":"sobel_rgb_axis","role":"auto_start","value":"0","valid_bit":"7"},{"name":"width","role":"data","value":"16"},{"name":"height","role":"data","value":"24"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"sobel_rgb_axis","role":"start","value":"0","valid_bit":"0"},{"name":"sobel_rgb_axis","role":"done","value":"0","valid_bit":"1"},{"name":"sobel_rgb_axis","role":"idle","value":"0","valid_bit":"2"},{"name":"sobel_rgb_axis","role":"ready","value":"0","valid_bit":"3"},{"name":"sobel_rgb_axis","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_axis_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "in_axis_V_data_V", "role": "default" }} , 
 	{ "name": "in_axis_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "in_axis_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "in_axis_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "in_axis_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "in_axis_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_axis_V_user_V", "role": "default" }} , 
 	{ "name": "in_axis_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_axis_V_last_V", "role": "default" }} , 
 	{ "name": "in_axis_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_axis_V_id_V", "role": "default" }} , 
 	{ "name": "in_axis_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "out_axis_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "out_axis_V_data_V", "role": "default" }} , 
 	{ "name": "out_axis_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "out_axis_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "out_axis_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "out_axis_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "out_axis_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_axis_V_user_V", "role": "default" }} , 
 	{ "name": "out_axis_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_axis_V_last_V", "role": "default" }} , 
 	{ "name": "out_axis_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_axis_V_id_V", "role": "default" }} , 
 	{ "name": "out_axis_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_axis_V_dest_V", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	sobel_rgb_axis {
		in_axis_V_data_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_keep_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_strb_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_user_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_last_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_id_V {Type I LastRead 2 FirstWrite -1}
		in_axis_V_dest_V {Type I LastRead 2 FirstWrite -1}
		out_axis_V_data_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_keep_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_strb_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_user_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_last_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_id_V {Type O LastRead -1 FirstWrite 8}
		out_axis_V_dest_V {Type O LastRead -1 FirstWrite 8}
		width {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		line0 {Type IO LastRead -1 FirstWrite -1}
		line1 {Type IO LastRead -1 FirstWrite -1}}
	sobel_rgb_axis_Pipeline_init_cols {
		width {Type I LastRead 0 FirstWrite -1}
		line0 {Type O LastRead -1 FirstWrite 1}
		line1 {Type O LastRead -1 FirstWrite 1}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_axis_V_data_V { axis {  { in_axis_TDATA in_data 0 24 } } }
	in_axis_V_keep_V { axis {  { in_axis_TKEEP in_data 0 3 } } }
	in_axis_V_strb_V { axis {  { in_axis_TSTRB in_data 0 3 } } }
	in_axis_V_user_V { axis {  { in_axis_TUSER in_data 0 1 } } }
	in_axis_V_last_V { axis {  { in_axis_TLAST in_data 0 1 } } }
	in_axis_V_id_V { axis {  { in_axis_TID in_data 0 1 } } }
	in_axis_V_dest_V { axis {  { in_axis_TVALID in_vld 0 1 }  { in_axis_TREADY in_acc 1 1 }  { in_axis_TDEST in_data 0 1 } } }
	out_axis_V_data_V { axis {  { out_axis_TDATA out_data 1 24 } } }
	out_axis_V_keep_V { axis {  { out_axis_TKEEP out_data 1 3 } } }
	out_axis_V_strb_V { axis {  { out_axis_TSTRB out_data 1 3 } } }
	out_axis_V_user_V { axis {  { out_axis_TUSER out_data 1 1 } } }
	out_axis_V_last_V { axis {  { out_axis_TLAST out_data 1 1 } } }
	out_axis_V_id_V { axis {  { out_axis_TID out_data 1 1 } } }
	out_axis_V_dest_V { axis {  { out_axis_TVALID out_vld 1 1 }  { out_axis_TREADY out_acc 0 1 }  { out_axis_TDEST out_data 1 1 } } }
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
