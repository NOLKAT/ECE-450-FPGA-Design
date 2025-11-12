#include <cstdio>
#include <cstdlib>
#include "maxmul.h"

extern "C" void maxmul2x2(
  data_t a00, data_t a01, data_t a10, data_t a11,
  data_t b00, data_t b01, data_t b10, data_t b11,
  acc_t &c00, acc_t &c01, acc_t &c10, acc_t &c11);

static void check(const char* name, acc_t got, acc_t exp) {
  if (got != exp) {
    std::printf("[ERROR] %s: got %d, expected %d\n", name, (int)got, (int)exp);
    std::exit(1);
  }
}

int main() {
  acc_t c00,c01,c10,c11;

  // Vec1: A=[[1,2],[3,4]], B=[[5,6],[7,8]] → C=[[19,22],[43,50]]
  maxmul2x2(1,2,3,4,  5,6,7,8,  c00,c01,c10,c11);
  std::printf("Vec1 C=[[%d,%d],[%d,%d]]\n",(int)c00,(int)c01,(int)c10,(int)c11);
  check("c00", c00, 19); check("c01", c01, 22);
  check("c10", c10, 43); check("c11", c11, 50);

  // Vec2: A=[[-1,2],[4,-3]], B=[[2,1],[0,5]] → C=[[-2,9],[8,-11]]
  maxmul2x2(-1,2,4,-3,  2,1,0,5,  c00,c01,c10,c11);
  std::printf("Vec2 C=[[%d,%d],[%d,%d]]\n",(int)c00,(int)c01,(int)c10,(int)c11);
  check("c00", c00, -2);  check("c01", c01,  9);
  check("c10", c10,  8);  check("c11", c11, -11);

  std::puts("[PASS] All tests");
  return 0;
}
