#include <cstdio>
#include "fir16.h"

// Choose which DUT the TB calls (set this in GUI compiler flags):
//   -DDUT_NAME=fir16            (unoptimized from fir16.cpp)
//   -DDUT_NAME=fir16_unroll4    (optimized partial-unroll)
//   -DDUT_NAME=fir16_unroll16   (optimized full-unroll)
#ifndef DUT_NAME
#define DUT_NAME fir16
#endif

extern void DUT_NAME(const sample_t x[N_SAMPLES], out_t y[N_SAMPLES]);

// Golden C reference (zero-padded FIR)
static void fir_golden(const sample_t x[N_SAMPLES], out_t y[N_SAMPLES]) {
    for (int i = 0; i < N_SAMPLES; ++i) {
        acc_t acc = 0;
        for (int k = 0; k < N_TAPS; ++k) {
            int idx = i - k;
            sample_t s = (idx >= 0) ? x[idx] : (sample_t)0;
            acc += (acc_t)s * (acc_t)COEFF[k];
        }
        y[i] = (out_t)acc;
    }
}

// Patterns
static void gen_impulse(sample_t x[N_SAMPLES], int amp = 4096) {
    for (int i = 0; i < N_SAMPLES; ++i) x[i] = 0;
    x[0] = (sample_t)amp;
}
static void gen_prbs(sample_t x[N_SAMPLES], unsigned seed = 0x1234ABCDu) {
    unsigned s = seed;
    for (int i = 0; i < N_SAMPLES; ++i) {
        s = s * 1664525u + 1013904223u;
        int16_t v = (int16_t)(s >> 16);
        x[i] = (sample_t)(v >> 1);
    }
}

static int cmp(const out_t a[N_SAMPLES], const out_t b[N_SAMPLES], const char* tag) {
    int e = 0;
    for (int i = 0; i < N_SAMPLES; ++i) {
        if (a[i] != b[i]) {
            if (e < 12) std::printf("[%s] Mismatch @%d: DUT=%d GOLD=%d\n",
                                     tag, i, (int)a[i], (int)b[i]);
            ++e;
        }
    }
    std::printf("[%s] %s\n", tag, e ? "FAIL" : "PASS");
    return e;
}

int main() {
    std::printf("TB targeting: %s\n",
#if defined(DUT_NAME)
# define STR2(x) #x
# define STR(x) STR2(x)
    STR(DUT_NAME)
#else
    "fir16"
#endif
    );

    sample_t x[N_SAMPLES];
    out_t y_hw[N_SAMPLES], y_sw[N_SAMPLES];
    int errs = 0;

    gen_impulse(x, 4096); DUT_NAME(x, y_hw); fir_golden(x, y_sw); errs += cmp(y_hw, y_sw, "IMPULSE");
    gen_prbs(x, 0xCAFEBABEu); DUT_NAME(x, y_hw); fir_golden(x, y_sw); errs += cmp(y_hw, y_sw, "PRBS");

    if (errs == 0) { std::puts("OVERALL: PASS"); return 0; }
    std::printf("OVERALL: FAIL (%d mismatches)\n", errs); return 1;
}
