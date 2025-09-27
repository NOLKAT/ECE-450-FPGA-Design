#include "fir16.h"

// 16-tap FIR with zero-padding at the start, array I/O ports
void fir16(const sample_t x[N_SAMPLES], out_t y[N_SAMPLES]) {
#pragma HLS INLINE off

    // shift register for streaming-style implementation
    sample_t shift_reg[N_TAPS];
#pragma HLS ARRAY_PARTITION variable=shift_reg complete dim=1

    // init
    Init: for (int k = 0; k < N_TAPS; ++k) {
#pragma HLS LOOP_TRIPCOUNT min=16 max=16
        shift_reg[k] = 0;
    }

    // main loop over the 256 samples
    Loop_i: for (int i = 0; i < N_SAMPLES; ++i) {
#pragma HLS LOOP_TRIPCOUNT min=256 max=256

        // shift in new sample
        Shift: for (int k = N_TAPS - 1; k > 0; --k) {
#pragma HLS LOOP_TRIPCOUNT min=15 max=15
            shift_reg[k] = shift_reg[k - 1];
        }
        shift_reg[0] = x[i];

        // dot product
        acc_t acc = 0;
        MAC: for (int k = 0; k < N_TAPS; ++k) {
#pragma HLS LOOP_TRIPCOUNT min=16 max=16
            acc += (acc_t)shift_reg[k] * (acc_t)COEFF[k];
        }

        y[i] = (out_t)acc;
    }
}
