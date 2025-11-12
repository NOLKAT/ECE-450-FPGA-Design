#pragma once
#include <stdint.h>

// Tunable types
typedef int16_t  data_t;
typedef int32_t  acc_t;

// Triple-nested loops: Row (outer), Col (middle), Product (inner)
template<int R, int C, int K>
void maxmul_core(const data_t A[R][K],
                 const data_t B[K][C],
                 acc_t        Cmat[R][C]) {
Row:
  for (int i = 0; i < R; i++) {
Col:
    for (int j = 0; j < C; j++) {
      acc_t sum = 0;
Product:
      for (int k = 0; k < K; k++) {
        sum += (acc_t)A[i][k] * (acc_t)B[k][j];
      }
      Cmat[i][j] = sum;
    }
  }
}
