; ModuleID = 'C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab3/KhanhTran_Lab3/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<24>, 1, 1, 1, '8', false>" }
%"struct.hls::axis<ap_uint<24>, 1, 1, 1, '8', false>" = type { %"struct.ap_uint<24>", %"struct.ap_uint<3>", %"struct.ap_uint<3>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<24>" = type { %"struct.ap_int_base<24, false>" }
%"struct.ap_int_base<24, false>" = type { %"struct.ssdm_int<24, false>" }
%"struct.ssdm_int<24, false>" = type { i24 }
%"struct.ap_uint<3>" = type { %"struct.ap_int_base<3, false>" }
%"struct.ap_int_base<3, false>" = type { %"struct.ssdm_int<3, false>" }
%"struct.ssdm_int<3, false>" = type { i3 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline willreturn
define void @apatb_sobel_rgb_axis_ir(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(12) %in_axis, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull dereferenceable(12) %out_axis, i32 %width, i32 %height) local_unnamed_addr #0 {
entry:
  %in_axis_copy.data = alloca i24, align 512
  %in_axis_copy.keep = alloca i3, align 512
  %in_axis_copy.strb = alloca i3, align 512
  %in_axis_copy.user = alloca i1, align 512
  %in_axis_copy.last = alloca i1, align 512
  %in_axis_copy.id = alloca i1, align 512
  %in_axis_copy.dest = alloca i1, align 512
  %out_axis_copy.data = alloca i24, align 512
  %out_axis_copy.keep = alloca i3, align 512
  %out_axis_copy.strb = alloca i3, align 512
  %out_axis_copy.user = alloca i1, align 512
  %out_axis_copy.last = alloca i1, align 512
  %out_axis_copy.id = alloca i1, align 512
  %out_axis_copy.dest = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %in_axis, i24* nonnull align 512 %in_axis_copy.data, i3* nonnull align 512 %in_axis_copy.keep, i3* nonnull align 512 %in_axis_copy.strb, i1* nonnull align 512 %in_axis_copy.user, i1* nonnull align 512 %in_axis_copy.last, i1* nonnull align 512 %in_axis_copy.id, i1* nonnull align 512 %in_axis_copy.dest, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %out_axis, i24* nonnull align 512 %out_axis_copy.data, i3* nonnull align 512 %out_axis_copy.keep, i3* nonnull align 512 %out_axis_copy.strb, i1* nonnull align 512 %out_axis_copy.user, i1* nonnull align 512 %out_axis_copy.last, i1* nonnull align 512 %out_axis_copy.id, i1* nonnull align 512 %out_axis_copy.dest)
  call void @apatb_sobel_rgb_axis_hw(i24* %in_axis_copy.data, i3* %in_axis_copy.keep, i3* %in_axis_copy.strb, i1* %in_axis_copy.user, i1* %in_axis_copy.last, i1* %in_axis_copy.id, i1* %in_axis_copy.dest, i24* %out_axis_copy.data, i3* %out_axis_copy.keep, i3* %out_axis_copy.strb, i1* %out_axis_copy.user, i1* %out_axis_copy.last, i1* %out_axis_copy.id, i1* %out_axis_copy.dest, i32 %width, i32 %height)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %in_axis, i24* %in_axis_copy.data, i3* %in_axis_copy.keep, i3* %in_axis_copy.strb, i1* %in_axis_copy.user, i1* %in_axis_copy.last, i1* %in_axis_copy.id, i1* %in_axis_copy.dest, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %out_axis, i24* %out_axis_copy.data, i3* %out_axis_copy.keep, i3* %out_axis_copy.strb, i1* %out_axis_copy.user, i1* %out_axis_copy.last, i1* %out_axis_copy.id, i1* %out_axis_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias, i24* noalias align 512 "unpacked"="1.0" %_V_data_V, i3* noalias align 512 "unpacked"="1.1" %_V_keep_V, i3* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias, i24* noalias align 512 "unpacked"="3.0" %_V_data_V1, i3* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i3* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "unpacked"="3.6" %_V_dest_V7) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.20"(i24* align 512 %_V_data_V, i3* align 512 %_V_keep_V, i3* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.20"(i24* align 512 %_V_data_V1, i3* align 512 %_V_keep_V2, i3* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias, i24* noalias align 512 "unpacked"="1.0" %_V_data_V, i3* noalias align 512 "unpacked"="1.1" %_V_keep_V, i3* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias, i24* noalias align 512 "unpacked"="3.0" %_V_data_V1, i3* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i3* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "unpacked"="3.6" %_V_dest_V7) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0, i24* align 512 %_V_data_V, i3* align 512 %_V_keep_V, i3* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1, i24* align 512 %_V_data_V1, i3* align 512 %_V_keep_V2, i3* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias %dst, i24* noalias align 512 "unpacked"="1.0" %src_V_data_V, i3* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i3* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_user_V, i1* noalias align 512 "unpacked"="1.4" %src_V_last_V, i1* noalias align 512 "unpacked"="1.5" %src_V_id_V, i1* noalias align 512 "unpacked"="1.6" %src_V_dest_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.15"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %dst, i24* align 512 %src_V_data_V, i3* align 512 %src_V_keep_V, i3* align 512 %src_V_strb_V, i1* align 512 %src_V_user_V, i1* align 512 %src_V_last_V, i1* align 512 %src_V_id_V, i1* align 512 %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.15"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nocapture, i24* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i3* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i3* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="1.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="1.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca i24
  %2 = alloca i3
  %3 = alloca i3
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i24* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i24* %1 to i8*
  %12 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = load volatile i24, i24* %1
  %14 = bitcast i3* %3 to i8*
  %15 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %14, i8* %15)
  %16 = bitcast i3* %3 to i8*
  %17 = load i8, i8* %16
  %18 = trunc i8 %17 to i3
  %19 = bitcast i3* %2 to i8*
  %20 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %19, i8* %20)
  %21 = bitcast i3* %2 to i8*
  %22 = load i8, i8* %21
  %23 = trunc i8 %22 to i3
  %24 = bitcast i1* %7 to i8*
  %25 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %7 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = bitcast i1* %6 to i8*
  %30 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %29, i8* %30)
  %31 = bitcast i1* %6 to i8*
  %32 = load i8, i8* %31
  %33 = trunc i8 %32 to i1
  %34 = bitcast i1* %5 to i8*
  %35 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %34, i8* %35)
  %36 = bitcast i1* %5 to i8*
  %37 = load i8, i8* %36
  %38 = trunc i8 %37 to i1
  %39 = bitcast i1* %4 to i8*
  %40 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %39, i8* %40)
  %41 = bitcast i1* %4 to i8*
  %42 = load i8, i8* %41
  %43 = trunc i8 %42 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" undef, i24 %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i3 %18, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i3 %23, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %28, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.3.0.0.0.insert, i1 %33, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.4.0.0.0.insert, i1 %38, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.5.0.0.0.insert, i1 %43, 0, 6, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %.fca.0.6.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %8
  %44 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %8 to i8*
  %45 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %44, i8* %45)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.20"(i24* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i3* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i3* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_user_V, i1* noalias align 512 "unpacked"="0.4" %dst_V_last_V, i1* noalias align 512 "unpacked"="0.5" %dst_V_id_V, i1* noalias align 512 "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.23"(i24* align 512 %dst_V_data_V, i3* align 512 %dst_V_keep_V, i3* align 512 %dst_V_strb_V, i1* align 512 %dst_V_user_V, i1* align 512 %dst_V_last_V, i1* align 512 %dst_V_id_V, i1* align 512 %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>.23"(i24* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i3* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i3* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_user_V, i1* noalias nocapture align 512 "unpacked"="0.4" %_V_last_V, i1* noalias nocapture align 512 "unpacked"="0.5" %_V_id_V, i1* noalias nocapture align 512 "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"
  %2 = alloca i24
  %3 = alloca i3
  %4 = alloca i3
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  %10 = call i1 @fpga_fifo_not_empty_12(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1 to i8*
  %12 = bitcast %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %11, i8* %12)
  %13 = load volatile %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 2, 0, 0, 0
  %.fca.0.3.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 3, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 4, 0, 0, 0
  %.fca.0.5.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 5, 0, 0, 0
  %.fca.0.6.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>" %13, 0, 6, 0, 0, 0
  store i24 %.fca.0.0.0.0.0.extract, i24* %2
  %14 = bitcast i24* %2 to i8*
  %15 = bitcast i24* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %14, i8* %15)
  store i3 %.fca.0.1.0.0.0.extract, i3* %4
  %16 = bitcast i3* %4 to i8*
  %17 = bitcast i3* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  store i3 %.fca.0.2.0.0.0.extract, i3* %3
  %18 = bitcast i3* %3 to i8*
  %19 = bitcast i3* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  store i1 %.fca.0.3.0.0.0.extract, i1* %8
  %20 = bitcast i1* %8 to i8*
  %21 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  store i1 %.fca.0.4.0.0.0.extract, i1* %7
  %22 = bitcast i1* %7 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  store i1 %.fca.0.5.0.0.0.extract, i1* %6
  %24 = bitcast i1* %6 to i8*
  %25 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %24, i8* %25)
  store i1 %.fca.0.6.0.0.0.extract, i1* %5
  %26 = bitcast i1* %5 to i8*
  %27 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_sobel_rgb_axis_hw(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i24*, i3*, i3*, i1*, i1*, i1*, i1*, i32, i32)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias, i24* noalias align 512 "unpacked"="1.0" %_V_data_V, i3* noalias align 512 "unpacked"="1.1" %_V_keep_V, i3* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_user_V, i1* noalias align 512 "unpacked"="1.4" %_V_last_V, i1* noalias align 512 "unpacked"="1.5" %_V_id_V, i1* noalias align 512 "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias, i24* noalias align 512 "unpacked"="3.0" %_V_data_V1, i3* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i3* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_user_V4, i1* noalias align 512 "unpacked"="3.4" %_V_last_V5, i1* noalias align 512 "unpacked"="3.5" %_V_id_V6, i1* noalias align 512 "unpacked"="3.6" %_V_dest_V7) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %0, i24* align 512 %_V_data_V, i3* align 512 %_V_keep_V, i3* align 512 %_V_strb_V, i1* align 512 %_V_user_V, i1* align 512 %_V_last_V, i1* align 512 %_V_id_V, i1* align 512 %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %1, i24* align 512 %_V_data_V1, i3* align 512 %_V_keep_V2, i3* align 512 %_V_strb_V3, i1* align 512 %_V_user_V4, i1* align 512 %_V_last_V5, i1* align 512 %_V_id_V6, i1* align 512 %_V_dest_V7)
  ret void
}

declare void @sobel_rgb_axis_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* noalias nonnull, i32, i32)

define void @sobel_rgb_axis_hw_stub_wrapper(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i24*, i3*, i3*, i1*, i1*, i1*, i1*, i32, i32) #5 {
entry:
  %16 = call i8* @malloc(i64 12)
  %17 = bitcast i8* %16 to %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"*
  %18 = call i8* @malloc(i64 12)
  %19 = bitcast i8* %18 to %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %17, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %19, i24* %7, i3* %8, i3* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  call void @sobel_rgb_axis_hw_stub(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %17, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %19, i32 %14, i32 %15)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %17, i24* %0, i3* %1, i3* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_uint<24>, 1, 1, 1, '8', false>, 0>"* %19, i24* %7, i3* %8, i3* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  call void @free(i8* %16)
  call void @free(i8* %18)
  ret void
}

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
