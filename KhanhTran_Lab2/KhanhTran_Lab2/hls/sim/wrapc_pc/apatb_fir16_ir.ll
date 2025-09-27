; ModuleID = 'C:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab2/KhanhTran_Lab2/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<16>" = type { %"struct.ap_int_base<16, true>" }
%"struct.ap_int_base<16, true>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"struct.ap_int<24>" = type { %"struct.ap_int_base<24, true>" }
%"struct.ap_int_base<24, true>" = type { %"struct.ssdm_int<24, true>" }
%"struct.ssdm_int<24, true>" = type { i24 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_fir16_ir(%"struct.ap_int<16>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="256" %x, %"struct.ap_int<24>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="256" %y) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_int<16>"* %x to [256 x %"struct.ap_int<16>"]*
  %x_copy = alloca [256 x i16], align 512
  %1 = bitcast %"struct.ap_int<24>"* %y to [256 x %"struct.ap_int<24>"]*
  %y_copy = alloca [256 x i24], align 512
  call fastcc void @copy_in([256 x %"struct.ap_int<16>"]* nonnull %0, [256 x i16]* nonnull align 512 %x_copy, [256 x %"struct.ap_int<24>"]* nonnull %1, [256 x i24]* nonnull align 512 %y_copy)
  call void @apatb_fir16_hw([256 x i16]* %x_copy, [256 x i24]* %y_copy)
  call void @copy_back([256 x %"struct.ap_int<16>"]* %0, [256 x i16]* %x_copy, [256 x %"struct.ap_int<24>"]* %1, [256 x i24]* %y_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([256 x %"struct.ap_int<16>"]* noalias readonly "unpacked"="0", [256 x i16]* noalias nocapture align 512 "unpacked"="1.0", [256 x %"struct.ap_int<24>"]* noalias readonly "unpacked"="2", [256 x i24]* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_int<16>.16"([256 x i16]* align 512 %1, [256 x %"struct.ap_int<16>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_int<24>"([256 x i24]* align 512 %3, [256 x %"struct.ap_int<24>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_int<16>"([256 x %"struct.ap_int<16>"]* noalias "unpacked"="0" %dst, [256 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [256 x %"struct.ap_int<16>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_int<16>"([256 x %"struct.ap_int<16>"]* nonnull %dst, [256 x i16]* %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_int<16>"([256 x %"struct.ap_int<16>"]* "unpacked"="0" %dst, [256 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_int<16>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x i16], [256 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [256 x %"struct.ap_int<16>"], [256 x %"struct.ap_int<16>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_int<24>"([256 x i24]* noalias nocapture align 512 "unpacked"="0.0" %dst, [256 x %"struct.ap_int<24>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [256 x %"struct.ap_int<24>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_int<24>"([256 x i24]* %dst, [256 x %"struct.ap_int<24>"]* nonnull %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_int<24>"([256 x i24]* nocapture "unpacked"="0.0" %dst, [256 x %"struct.ap_int<24>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_int<24>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x %"struct.ap_int<24>"], [256 x %"struct.ap_int<24>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [256 x i24], [256 x i24]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i24, i24* %src.addr.0.0.05, align 4
  store i24 %1, i24* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([256 x %"struct.ap_int<16>"]* noalias "unpacked"="0", [256 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0", [256 x %"struct.ap_int<24>"]* noalias "unpacked"="2", [256 x i24]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_int<16>"([256 x %"struct.ap_int<16>"]* %0, [256 x i16]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_int<24>.6"([256 x %"struct.ap_int<24>"]* %2, [256 x i24]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_int<24>.6"([256 x %"struct.ap_int<24>"]* noalias "unpacked"="0" %dst, [256 x i24]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [256 x %"struct.ap_int<24>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_int<24>.9"([256 x %"struct.ap_int<24>"]* nonnull %dst, [256 x i24]* %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_int<24>.9"([256 x %"struct.ap_int<24>"]* "unpacked"="0" %dst, [256 x i24]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_int<24>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x i24], [256 x i24]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [256 x %"struct.ap_int<24>"], [256 x %"struct.ap_int<24>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i24, i24* %src.addr.0.0.05, align 4
  store i24 %1, i24* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_int<16>.16"([256 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [256 x %"struct.ap_int<16>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [256 x %"struct.ap_int<16>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_int<16>.19"([256 x i16]* %dst, [256 x %"struct.ap_int<16>"]* nonnull %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_int<16>.19"([256 x i16]* nocapture "unpacked"="0.0" %dst, [256 x %"struct.ap_int<16>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_int<16>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x %"struct.ap_int<16>"], [256 x %"struct.ap_int<16>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [256 x i16], [256 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_fir16_hw([256 x i16]*, [256 x i24]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([256 x %"struct.ap_int<16>"]* noalias "unpacked"="0", [256 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0", [256 x %"struct.ap_int<24>"]* noalias "unpacked"="2", [256 x i24]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_int<24>.6"([256 x %"struct.ap_int<24>"]* %2, [256 x i24]* align 512 %3)
  ret void
}

declare void @fir16_hw_stub(%"struct.ap_int<16>"* noalias nocapture nonnull readonly, %"struct.ap_int<24>"* noalias nocapture nonnull)

define void @fir16_hw_stub_wrapper([256 x i16]*, [256 x i24]*) #5 {
entry:
  %2 = call i8* @malloc(i64 512)
  %3 = bitcast i8* %2 to [256 x %"struct.ap_int<16>"]*
  %4 = call i8* @malloc(i64 1024)
  %5 = bitcast i8* %4 to [256 x %"struct.ap_int<24>"]*
  call void @copy_out([256 x %"struct.ap_int<16>"]* %3, [256 x i16]* %0, [256 x %"struct.ap_int<24>"]* %5, [256 x i24]* %1)
  %6 = bitcast [256 x %"struct.ap_int<16>"]* %3 to %"struct.ap_int<16>"*
  %7 = bitcast [256 x %"struct.ap_int<24>"]* %5 to %"struct.ap_int<24>"*
  call void @fir16_hw_stub(%"struct.ap_int<16>"* %6, %"struct.ap_int<24>"* %7)
  call void @copy_in([256 x %"struct.ap_int<16>"]* %3, [256 x i16]* %0, [256 x %"struct.ap_int<24>"]* %5, [256 x i24]* %1)
  call void @free(i8* %2)
  call void @free(i8* %4)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
