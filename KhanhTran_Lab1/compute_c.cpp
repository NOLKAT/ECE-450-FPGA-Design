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