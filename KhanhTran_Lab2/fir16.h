#pragma once
#include <ap_int.h>

// Problem sizes
static const int N_TAPS    = 16;
static const int N_SAMPLES = 256;

// Types 
typedef ap_int<16>  sample_t;
typedef ap_int<16>  coef_t;
typedef ap_int<32>  acc_t;
typedef ap_int<24>  out_t; 

// coefficients: {1, 2, 0, -3, 0, 4, -5, 0, 1, -2, 0, -3, 0, 4, -5, 0}
static const coef_t COEFF[N_TAPS] = {
    1,  2,  0, -3,  0,  4, -5,  0,  1, -2,  0, -3,  0,  4, -5,  0
};

// Top function
void fir16(const sample_t x[N_SAMPLES], out_t y[N_SAMPLES]);
void fir16_unroll4(const sample_t x[N_SAMPLES], out_t y[N_SAMPLES]);
void fir16_unroll16(const sample_t x[N_SAMPLES], out_t y[N_SAMPLES]);
