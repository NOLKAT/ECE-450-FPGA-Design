#include <ap_int.h>

// 1-bit 2-to-1 multiplexer
void mux_2to1(ap_uint<1> a, ap_uint<1> b, ap_uint<1> sel, ap_uint<1> &y)
{
    #pragma HLS INTERFACE ap_none port=a
    #pragma HLS INTERFACE ap_none port=b
    #pragma HLS INTERFACE ap_none port=sel
    #pragma HLS INTERFACE ap_none port=y
    #pragma HLS INTERFACE ap_ctrl_none port=return

    y = sel ? b : a;
}
