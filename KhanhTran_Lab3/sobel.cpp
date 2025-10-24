// sobel_rgb_axis.cpp
// Vitis/Vivado HLS (2020.2+ / 2023.x/2025.1)
// Top: sobel_rgb_axis  —  AXI4-Stream 24-bit RGB in → Sobel edges (grayscale replicated to RGB) out.

#include <ap_int.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <assert.h>

typedef ap_axiu<24,1,1,1> axis24_t;

// Integer-friendly luma: Y ≈ 0.299R + 0.587G + 0.114B (77/256, 150/256, 29/256) with rounding.
static inline ap_uint<8> rgb_to_gray(ap_uint<8> r, ap_uint<8> g, ap_uint<8> b){
#pragma HLS INLINE
    ap_uint<16> acc = (ap_uint<16>)r*77 + (ap_uint<16>)g*150 + (ap_uint<16>)b*29;
    acc += 128;                      // round-to-nearest before >>8
    return (ap_uint<8>)(acc >> 8);
}

// HLS TOP
void sobel_rgb_axis(hls::stream<axis24_t> &in_axis,
                    hls::stream<axis24_t> &out_axis,
                    int width, int height) {
#pragma HLS INTERFACE axis      port=in_axis
#pragma HLS INTERFACE axis      port=out_axis
#pragma HLS INTERFACE s_axilite port=width   bundle=CTRL
#pragma HLS INTERFACE s_axilite port=height  bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return  bundle=CTRL

    const int MAX_W = 1024;
    static ap_uint<8> line0[MAX_W];
    static ap_uint<8> line1[MAX_W];

    // Ensure dual-port RAMs for 1R+1W per cycle on line buffers
#if HLS_VERSION_MAJOR >= 2023
    #pragma HLS BIND_STORAGE variable=line0 type=ram_2p impl=bram
    #pragma HLS BIND_STORAGE variable=line1 type=ram_2p impl=bram
#else
    #pragma HLS RESOURCE variable=line0 core=RAM_2P_BRAM
    #pragma HLS RESOURCE variable=line1 core=RAM_2P_BRAM
#endif
    #pragma HLS DEPENDENCE variable=line0 inter false
    #pragma HLS DEPENDENCE variable=line1 inter false

    // 3x3 sliding window columns
    ap_uint<8> w0[3] = {0,0,0};
    ap_uint<8> w1[3] = {0,0,0};
    ap_uint<8> w2[3] = {0,0,0};
#pragma HLS ARRAY_PARTITION variable=w0 complete dim=1
#pragma HLS ARRAY_PARTITION variable=w1 complete dim=1
#pragma HLS ARRAY_PARTITION variable=w2 complete dim=1

    // Safety: width must not exceed allocated buffers
    assert(width <= MAX_W);

    // Clear line buffers for this frame
init_cols:
    for (int x=0; x<width; ++x){
    #pragma HLS PIPELINE II=1
        line0[x] = 0;
        line1[x] = 0;
    }

row_loop:
    for (int y=0; y<height; ++y){
        // restart window at line start
        w0[0]=w0[1]=w0[2]=0;
        w1[0]=w1[1]=w1[2]=0;
        w2[0]=w2[1]=w2[2]=0;

    col_loop:
        for (int x=0; x<width; ++x){
        #pragma HLS PIPELINE II=1

            // Read one RGB24 pixel
            axis24_t din = in_axis.read();
            ap_uint<8> r = din.data.range(23,16);
            ap_uint<8> g = din.data.range(15, 8);
            ap_uint<8> b = din.data.range( 7, 0);
            ap_uint<8> gray = rgb_to_gray(r,g,b);

            // Read historical samples for this column *before* update
            ap_uint<8> top2 = line1[x];   // y-2
            ap_uint<8> top1 = line0[x];   // y-1

            // Shift window left
            w0[0]=w0[1]; w0[1]=w0[2];
            w1[0]=w1[1]; w1[1]=w1[2];
            w2[0]=w2[1]; w2[1]=w2[2];

            // Insert new rightmost column (rows y-2, y-1, y)
            w0[2] = top2;
            w1[2] = top1;
            w2[2] = gray;

            // Roll line buffers
            line1[x] = line0[x];
            line0[x] = gray;

            // Sobel gradients
            ap_int<11> gx = 0, gy = 0;
            if (y >= 2 && x >= 2){
                gx =  - (ap_int<11>)w0[0] + (ap_int<11>)w0[2]
                      -2*(ap_int<11>)w1[0] + 2*(ap_int<11>)w1[2]
                      - (ap_int<11>)w2[0] + (ap_int<11>)w2[2];

                gy =  - (ap_int<11>)w0[0] -2*(ap_int<11>)w0[1] - (ap_int<11>)w0[2]
                       + (ap_int<11>)w2[0] +2*(ap_int<11>)w2[1] + (ap_int<11>)w2[2];
            }

            // L1 magnitude (|gx|+|gy|), saturate to 8-bit
            ap_int<12> gx12 = gx;
            ap_int<12> gy12 = gy;

            ap_uint<12> ax = (gx12 < 0) ? (ap_uint<12>)(-gx12) : (ap_uint<12>)gx12;
            ap_uint<12> ay = (gy12 < 0) ? (ap_uint<12>)(-gy12) : (ap_uint<12>)gy12;

            ap_uint<12> mag = ax + ay;

            ap_uint<8> edge = (y>=2 && x>=2) ? ( (mag > 255) ? (ap_uint<8>)255 : (ap_uint<8>)mag ) : (ap_uint<8>)0;

            // Canonical zero frame border (helps avoid edge artifacts)
            bool border = (x==0 || y==0 || x==width-1 || y==height-1);
            if (border) edge = 0;

            // Pack grayscale into RGB
            axis24_t dout;
            dout.data.range(23,16) = edge;
            dout.data.range(15, 8) = edge;
            dout.data.range( 7, 0) = edge;

            // Keep stream side-channels consistent
            dout.user = (y==0 && x==0) ? 1 : 0;  // SOF
            dout.last = (x==width-1)   ? 1 : 0;  // EOL
            dout.keep = din.keep;  dout.strb = din.strb;
            dout.id   = din.id;    dout.dest = din.dest;

            out_axis.write(dout);
        }
    }
}
