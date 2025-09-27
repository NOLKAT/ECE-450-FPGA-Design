#include <iostream>
#include <ap_int.h>

void mux_2to1(ap_uint<1> a, ap_uint<1> b, ap_uint<1> sel, ap_uint<1> &y);

int main() {
    ap_uint<1> a, b, sel, y;

    for (int i = 0; i < 8; i++) {
        a = (i >> 0) & 0x1;
        b = (i >> 1) & 0x1;
        sel = (i >> 2) & 0x1;

        mux_2to1(a, b, sel, y);

        std::cout << "a=" << a << ", b=" << b << ", sel=" << sel << " => y=" << y << std::endl;
    }

    return 0;
}
