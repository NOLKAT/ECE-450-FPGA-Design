// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab4/main.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 420 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab4/main.cpp" 2
# 1 "C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab4/maxmul.h" 1

# 1 "D:/Xilinx_2025/2025.1/Vitis/win64/tools/vcxx/lib/clang/14.0.6/include/stdint.h" 1 3
# 52 "D:/Xilinx_2025/2025.1/Vitis/win64/tools/vcxx/lib/clang/14.0.6/include/stdint.h" 3
# 1 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/stdint.h" 1 3
# 28 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/stdint.h" 3
# 1 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/crtdefs.h" 1 3
# 10 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/crtdefs.h" 3
# 1 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 1 3
# 10 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
# 1 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 1 3
# 10 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw_mac.h" 1 3
# 11 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 1 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw_secapi.h" 1 3
# 44 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw_secapi.h" 3
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
# 12 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 289 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "D:/Xilinx_2025/2025.1/Vitis/win64/tools/vcxx/lib/clang/14.0.6/include/vadefs.h" 1 3
# 12 "D:/Xilinx_2025/2025.1/Vitis/win64/tools/vcxx/lib/clang/14.0.6/include/vadefs.h" 3
# 1 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/vadefs.h" 1 3








# 1 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 1 3
# 623 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3
# 624 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 10 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)



extern "C" {





  typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 99 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/vadefs.h" 3
}



#pragma pack(pop)
# 13 "D:/Xilinx_2025/2025.1/Vitis/win64/tools/vcxx/lib/clang/14.0.6/include/vadefs.h" 2 3
# 290 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 575 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
extern "C" {
# 586 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{

  __asm__ __volatile__("int {$}3":);







}




const char *__mingw_get_crt_info (void);


}
# 11 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef unsigned long long size_t;
# 45 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef long long intptr_t;
# 75 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 88 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef long long ptrdiff_t;
# 106 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
typedef __time64_t time_t;
# 430 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {





  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;

} threadlocinfo;
# 501 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
#pragma pack(pop)
# 11 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/crtdefs.h" 2 3
# 29 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/stdint.h" 2 3



# 1 "D:/Xilinx_2025/2025.1/Vitis/win64/tools/vcxx/lib/clang/14.0.6/include/stddef.h" 1 3
# 33 "D:/Xilinx_2025/2025.1/Vitis/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/stdint.h" 2 3


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 53 "D:/Xilinx_2025/2025.1/Vitis/win64/tools/vcxx/lib/clang/14.0.6/include/stdint.h" 2 3
# 3 "C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab4/maxmul.h" 2


typedef int16_t data_t;
typedef int32_t acc_t;


template<int R, int C, int K>
void maxmul_core(const data_t A[R][K],
                 const data_t B[K][C],
                 acc_t Cmat[R][C]) {
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
# 2 "C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab4/main.cpp" 2

extern "C" {
void maxmul2x2(


  data_t a00, data_t a01,
  data_t a10, data_t a11,


  data_t b00, data_t b01,
  data_t b10, data_t b11,


  acc_t &c00, acc_t &c01,
  acc_t &c10, acc_t &c11)
{
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE ap_none port=a00
#pragma HLS INTERFACE ap_none port=a01
#pragma HLS INTERFACE ap_none port=a10
#pragma HLS INTERFACE ap_none port=a11
#pragma HLS INTERFACE ap_none port=b00
#pragma HLS INTERFACE ap_none port=b01
#pragma HLS INTERFACE ap_none port=b10
#pragma HLS INTERFACE ap_none port=b11
#pragma HLS INTERFACE ap_none port=c00
#pragma HLS INTERFACE ap_none port=c01
#pragma HLS INTERFACE ap_none port=c10
#pragma HLS INTERFACE ap_none port=c11

  data_t A[2][2] = {{a00, a01}, {a10, a11}};
  data_t B[2][2] = {{b00, b01}, {b10, b11}};
  acc_t C[2][2];

  maxmul_core<2,2,2>(A, B, C);

  c00 = C[0][0]; c01 = C[0][1];
  c10 = C[1][0]; c11 = C[1][1];
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_maxmul2x2_ir(short, short, short, short, short, short, short, short, int &, int &, int &, int &);
#ifdef __cplusplus
extern "C"
#endif
void maxmul2x2_hw_stub(short a00, short a01, short a10, short a11, short b00, short b01, short b10, short b11, int &c00, int &c01, int &c10, int &c11){
maxmul2x2(a00, a01, a10, a11, b00, b01, b10, b11, c00, c01, c10, c11);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_maxmul2x2_sw(short a00, short a01, short a10, short a11, short b00, short b01, short b10, short b11, int &c00, int &c01, int &c10, int &c11){
refine_signal_handler();
apatb_maxmul2x2_ir(a00, a01, a10, a11, b00, b01, b10, b11, c00, c01, c10, c11);
return ;
}
#endif
# 40 "C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab4/main.cpp"

}
