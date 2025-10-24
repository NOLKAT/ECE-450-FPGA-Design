// tb_sobel_from_ppm.cpp
// C-simulation testbench for sobel_rgb_axis
// Usage (optional): csim_design -argv {lena_512.ppm sobel_out.ppm}

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cctype>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

typedef ap_axiu<24,1,1,1> axis24_t;

// DUT (declare top)
void sobel_rgb_axis(hls::stream<axis24_t> &in_axis,
                    hls::stream<axis24_t> &out_axis,
                    int width, int height);

// ---- Simple PPM (P6) loader/saver ----
static void skip_ws_and_comments(std::istream &is) {
    int c;
    while ((c = is.peek()) != EOF) {
        if (std::isspace(c)) { is.get(); continue; }
        if (c == '#') { std::string dummy; std::getline(is, dummy); continue; }
        break;
    }
}

static bool load_ppm_p6(const std::string &path, int &W, int &H, std::vector<unsigned char> &rgb) {
    std::ifstream f(path, std::ios::binary);
    if (!f) { std::cerr << "Cannot open: " << path << "\n"; return false; }

    std::string magic; f >> magic;
    if (magic != "P6") { std::cerr << "Not a P6 PPM: " << magic << "\n"; return false; }

    skip_ws_and_comments(f); f >> W;
    skip_ws_and_comments(f); f >> H;
    skip_ws_and_comments(f); int maxv; f >> maxv; f.get(); // eat one whitespace
    if (maxv != 255) { std::cerr << "Unsupported maxval (need 255): " << maxv << "\n"; return false; }

    size_t nbytes = (size_t)W * (size_t)H * 3;
    rgb.resize(nbytes);
    f.read(reinterpret_cast<char*>(rgb.data()), (std::streamsize)nbytes);
    if (!f) { std::cerr << "Short read on pixel data\n"; return false; }
    return true;
}

static bool save_ppm_p6(const std::string &path, int W, int H, const std::vector<unsigned char> &rgb) {
    std::ofstream f(path, std::ios::binary);
    if (!f) { std::cerr << "Cannot open for write: " << path << "\n"; return false; }
    f << "P6\n" << W << " " << H << "\n255\n";
    f.write(reinterpret_cast<const char*>(rgb.data()), (std::streamsize)rgb.size());
    return (bool)f;
}

// --------------- Testbench ---------------
int main(int argc, char** argv) {
    // Inputs via argv (optional), fall back to relative names
    std::string in_path  = (argc >= 2) ? argv[1] : "lena_512.ppm";
    std::string out_path = (argc >= 3) ? argv[2] : "sobel_out.ppm";

    int W = 0, H = 0;
    std::vector<unsigned char> img; // RGBRGB...

    if (!load_ppm_p6(in_path, W, H, img)) {
        std::cerr << "WARN: Could not load '" << in_path << "'. Using synthetic 512x512 pattern.\n";
        W = H = 512;
        img.resize((size_t)W*H*3);
        for (int y=0; y<H; ++y){
            for (int x=0; x<W; ++x){
                unsigned char v = (unsigned char)(((x ^ y) & 0xFF));
                size_t i = ((size_t)y*W + x)*3;
                img[i+0] = v; img[i+1] = v; img[i+2] = v;
            }
        }
    }

    hls::stream<axis24_t> s_in, s_out;

    // Push pixels (scanline order) — stream side channels set per pixel
    for (int y=0; y<H; ++y){
        for (int x=0; x<W; ++x){
            size_t idx = ((size_t)y*W + x)*3;
            unsigned char r = img[idx+0];
            unsigned char g = img[idx+1];
            unsigned char b = img[idx+2];

            axis24_t t;
            t.data.range(23,16) = r;
            t.data.range(15, 8) = g;
            t.data.range( 7, 0) = b;

            t.keep = 0x7;  // 3 bytes valid
            t.strb = 0x7;
            t.user = (x==0 && y==0) ? 1 : 0;     // SOF once
            t.last = (x==W-1)          ? 1 : 0;  // EOL each row
            t.id   = 0;
            t.dest = 0;
            s_in.write(t);
        }
    }

    // Run DUT
    sobel_rgb_axis(s_in, s_out, W, H);

    // Collect output and simple stats
    std::vector<unsigned char> out((size_t)W*H*3);
    int minv = 255, maxv = 0;
    long long sum = 0;

    // Optional stream sanity checks
    int sof_count = 0, eol_count = 0;

    for (int i=0; i < W*H; ++i){
        axis24_t t = s_out.read();

        unsigned char r = (unsigned char)t.data.range(23,16);
        unsigned char g = (unsigned char)t.data.range(15, 8);
        unsigned char b = (unsigned char)t.data.range( 7, 0);

        if (r < minv) minv = r;
        if (r > maxv) maxv = r;
        sum += r;

        if (t.user) ++sof_count;
        if (t.last) ++eol_count;

        size_t idx = (size_t)i*3;
        out[idx+0] = r; out[idx+1] = g; out[idx+2] = b;
    }

    double mean = sum / (double)(W*H);
    std::cout << "Sobel stats: min=" << minv << " max=" << maxv << " mean=" << mean << "\n";
    if (sof_count != 1) {
        std::cerr << "WARN: Expected exactly 1 SOF, saw " << sof_count << "\n";
    }
    if (eol_count != H) {
        std::cerr << "WARN: Expected " << H << " EOLs, saw " << eol_count << "\n";
    }

    if (!save_ppm_p6(out_path, W, H, out)) {
        std::cerr << "Failed to write '" << out_path << "'\n";
        return 1;
    }
    std::cout << "Wrote '" << out_path << "'. Open with any PPM-capable viewer.\n";
    return 0;
}
