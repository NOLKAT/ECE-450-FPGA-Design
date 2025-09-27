#include "fir16.h"

// Optimized variant: array partition + UNROLL factor=4 + PIPELINE
// Top name: fir16_unroll4
void fir16_unroll4(const sample_t x[N_SAMPLES], out_t y[N_SAMPLES]) {
#pragma HLS INLINE off

    sample_t shift_reg[N_TAPS];
#pragma HLS ARRAY_PARTITION variable=shift_reg complete dim=1
#pragma HLS ARRAY_PARTITION variable=COEFF     complete dim=1

    // zero-pad init
    Init: for (int k = 0; k < N_TAPS; ++k) {
    #pragma HLS LOOP_TRIPCOUNT min=16 max=16
        shift_reg[k] = 0;
    }

    // main loop
    Loop_i: for (int i = 0; i < N_SAMPLES; ++i) {
    #pragma HLS PIPELINE
    #pragma HLS LOOP_TRIPCOUNT min=256 max=256

        // shift register
        Shift: for (int k = N_TAPS - 1; k > 0; --k) {
        #pragma HLS UNROLL
            shift_reg[k] = shift_reg[k - 1];
        }
        shift_reg[0] = x[i];

        // dot product: 4 parallel lanes
        acc_t acc = 0;
        MAC: for (int k = 0; k < N_TAPS; ++k) {
        #pragma HLS UNROLL factor=4
            acc += (acc_t)shift_reg[k] * (acc_t)COEFF[k];
        }

        y[i] = (out_t)acc;
    }
}
