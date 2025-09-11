// tb_compute.cpp
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <ctime>

// declare DUT top
void compute(int a, int b, int &c);

// Reference model: floor(sqrt(max(0, a^2 - b^2)))
static int ref_compute(int a, int b) {
    long long aa = 1LL * a * a;
    long long bb = 1LL * b * b;
    long long result = aa - bb;
    if (result <= 0) return 0;

    long double r = std::sqrt((long double)result);
    return (int)std::floor(r);
}

int main() {
    int total = 0, passed = 0;

    auto run_case = [&](int a, int b) {
        int c_dut = -1;
        compute(a, b, c_dut);
        int c_ref = ref_compute(a, b);

        bool ok = (c_dut == c_ref);
        total++;
        if (ok) {
            passed++;
        } else {
            std::cout << "FAIL  a=" << a
                      << " b=" << b
                      << " got c=" << c_dut
                      << " exp=" << c_ref << "\n";
        }
    };

    // Set cases
    run_case(5, 3);        // expect 4
    run_case(5, 5);        // expect 0
    run_case(3, 5);        // expect 0
    run_case(1000, 999);   // expect 44
    run_case(46340, 0);    // expect 46340

    // Randomized tests
    std::srand(1);
    for (int i = 0; i < 200; ++i) {
        int a = (std::rand() % 92681) - 46340;
        int b = (std::rand() % 92681) - 46340;
        run_case(a, b);
    }

    std::cout << "PASSED " << passed << " / " << total << " tests\n";
    return (passed == total) ? 0 : 1;
}
