#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("a00", 16, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("a01", 16, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("a10", 16, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("a11", 16, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("b00", 16, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("b01", 16, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("b10", 16, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("b11", 16, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("c00", 32, hls_out, 8, "ap_none", "out_data", 1),
	Port_Property("c01", 32, hls_out, 9, "ap_none", "out_data", 1),
	Port_Property("c10", 32, hls_out, 10, "ap_none", "out_data", 1),
	Port_Property("c11", 32, hls_out, 11, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "maxmul2x2";
