// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab1/compute_c.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 420 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab1/compute_c.cpp" 2
void compute_c(int a, int b, int &c) {
    long long aa = 1LL * a * a;
    long long bb = 1LL * b * b;
    long long result = aa - bb;

    if (result <= 0) {
        c = 0;
        return;
    }

    int temp = 0;

    loop_i:
    for (int i = 0; (1LL * i * i) <= result; ++i) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=0 max=46341 avg=20000
        temp = i;
    }
    c = temp;
}

void compute(int a, int b, int &c) {
    compute_c(a, b, c);
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_compute_ir(int, int, int &);
#ifdef __cplusplus
extern "C"
#endif
void compute_hw_stub(int a, int b, int &c){
compute(a, b, c);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_compute_sw(int a, int b, int &c){
refine_signal_handler();
apatb_compute_ir(a, b, c);
return ;
}
#endif
# 24 "C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab1/compute_c.cpp"

