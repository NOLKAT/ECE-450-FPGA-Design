#include "maxmul.h"

extern "C" {
void maxmul2x2( 

  // A
  data_t a00, data_t a01,
  data_t a10, data_t a11,

  // B
  data_t b00, data_t b01,
  data_t b10, data_t b11,
  
  // C
  acc_t &c00, acc_t &c01,
  acc_t &c10, acc_t &c11)
{
  #pragma HLS INTERFACE ap_ctrl_hs port=return
  #pragma HLS INTERFACE ap_none port=a00
  #pragma HLS INTERFACE ap_none port=a01
  #pragma HLS INTERFACE ap_none port=a10
  #pragma HLS INTERFACE ap_none port=a11
  #pragma HLS INTERFACE ap_none port=b00
  #pragma HLS INTERFACE ap_none port=b01
  #pragma HLS INTERFACE ap_none port=b10
  #pragma HLS INTERFACE ap_none port=b11
  #pragma HLS INTERFACE ap_none port=c00
  #pragma HLS INTERFACE ap_none port=c01
  #pragma HLS INTERFACE ap_none port=c10
  #pragma HLS INTERFACE ap_none port=c11

  data_t A[2][2] = {{a00, a01}, {a10, a11}};
  data_t B[2][2] = {{b00, b01}, {b10, b11}};
  acc_t  C[2][2];

  maxmul_core<2,2,2>(A, B, C);

  c00 = C[0][0]; c01 = C[0][1];
  c10 = C[1][0]; c11 = C[1][1];
}
}
