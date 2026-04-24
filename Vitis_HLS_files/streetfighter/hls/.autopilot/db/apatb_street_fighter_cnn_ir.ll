; ModuleID = 'C:/Users/eswar/OneDrive/Desktop/streetfighter/streetfighter/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 6>" = type { %"struct.ap_fixed_base<16, 6>" }
%"struct.ap_fixed_base<16, 6>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_street_fighter_cnn_ir(%"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly "maxi" %input, i32* noalias nocapture nonnull align 4 dereferenceable(4) %prediction, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull align 2 dereferenceable(2) %confidence, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull align 2 dereferenceable(2) %dbg_in0, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull align 2 dereferenceable(2) %dbg_l1_0, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull align 2 dereferenceable(2) %dbg_gap0, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull align 2 dereferenceable(2) %dbg_score0) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_fixed<16, 6>"* %input to [120 x %"struct.ap_fixed<16, 6>"]*
  %input_copy = alloca [120 x i16], align 512
  %prediction_copy = alloca i32, align 512
  %confidence_copy = alloca i16, align 512
  %dbg_in0_copy = alloca i16, align 512
  %dbg_l1_0_copy = alloca i16, align 512
  %dbg_gap0_copy = alloca i16, align 512
  %dbg_score0_copy = alloca i16, align 512
  call fastcc void @copy_in([120 x %"struct.ap_fixed<16, 6>"]* nonnull %0, [120 x i16]* nonnull align 512 %input_copy, i32* nonnull %prediction, i32* nonnull align 512 %prediction_copy, %"struct.ap_fixed<16, 6>"* nonnull %confidence, i16* nonnull align 512 %confidence_copy, %"struct.ap_fixed<16, 6>"* nonnull %dbg_in0, i16* nonnull align 512 %dbg_in0_copy, %"struct.ap_fixed<16, 6>"* nonnull %dbg_l1_0, i16* nonnull align 512 %dbg_l1_0_copy, %"struct.ap_fixed<16, 6>"* nonnull %dbg_gap0, i16* nonnull align 512 %dbg_gap0_copy, %"struct.ap_fixed<16, 6>"* nonnull %dbg_score0, i16* nonnull align 512 %dbg_score0_copy)
  call void @apatb_street_fighter_cnn_hw([120 x i16]* %input_copy, i32* %prediction_copy, i16* %confidence_copy, i16* %dbg_in0_copy, i16* %dbg_l1_0_copy, i16* %dbg_gap0_copy, i16* %dbg_score0_copy)
  call void @copy_back([120 x %"struct.ap_fixed<16, 6>"]* %0, [120 x i16]* %input_copy, i32* %prediction, i32* %prediction_copy, %"struct.ap_fixed<16, 6>"* %confidence, i16* %confidence_copy, %"struct.ap_fixed<16, 6>"* %dbg_in0, i16* %dbg_in0_copy, %"struct.ap_fixed<16, 6>"* %dbg_l1_0, i16* %dbg_l1_0_copy, %"struct.ap_fixed<16, 6>"* %dbg_gap0, i16* %dbg_gap0_copy, %"struct.ap_fixed<16, 6>"* %dbg_score0, i16* %dbg_score0_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([120 x %"struct.ap_fixed<16, 6>"]* noalias readonly "unpacked"="0", [120 x i16]* noalias nocapture align 512 "unpacked"="1.0", i32* noalias readonly "unpacked"="2", i32* noalias align 512 "unpacked"="3", %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="4", i16* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="6", i16* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="8", i16* noalias nocapture align 512 "unpacked"="9.0", %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="10", i16* noalias nocapture align 512 "unpacked"="11.0", %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="12", i16* noalias nocapture align 512 "unpacked"="13.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a120struct.ap_fixed<16, 6>.42"([120 x i16]* align 512 %1, [120 x %"struct.ap_fixed<16, 6>"]* %0)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %3, i32* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* align 512 %5, %"struct.ap_fixed<16, 6>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* align 512 %7, %"struct.ap_fixed<16, 6>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* align 512 %9, %"struct.ap_fixed<16, 6>"* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* align 512 %11, %"struct.ap_fixed<16, 6>"* %10)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* align 512 %13, %"struct.ap_fixed<16, 6>"* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a120struct.ap_fixed<16, 6>"([120 x %"struct.ap_fixed<16, 6>"]* noalias "unpacked"="0" %dst, [120 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [120 x %"struct.ap_fixed<16, 6>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a120struct.ap_fixed<16, 6>"([120 x %"struct.ap_fixed<16, 6>"]* nonnull %dst, [120 x i16]* %src, i64 120)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a120struct.ap_fixed<16, 6>"([120 x %"struct.ap_fixed<16, 6>"]* "unpacked"="0" %dst, [120 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [120 x %"struct.ap_fixed<16, 6>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [120 x i16], [120 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [120 x %"struct.ap_fixed<16, 6>"], [120 x %"struct.ap_fixed<16, 6>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
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
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512 %dst, i32* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i32, i32* %src, align 4
  store i32 %3, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([120 x %"struct.ap_fixed<16, 6>"]* noalias "unpacked"="0", [120 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0", i32* noalias "unpacked"="2", i32* noalias readonly align 512 "unpacked"="3", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="4", i16* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="6", i16* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="8", i16* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="10", i16* noalias nocapture readonly align 512 "unpacked"="11.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="12", i16* noalias nocapture readonly align 512 "unpacked"="13.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a120struct.ap_fixed<16, 6>"([120 x %"struct.ap_fixed<16, 6>"]* %0, [120 x i16]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %4, i16* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %6, i16* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %8, i16* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %10, i16* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %12, i16* align 512 %13)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* noalias "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_fixed<16, 6>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_fixed<16, 6>", %"struct.ap_fixed<16, 6>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src, align 512
  store i16 %1, i16* %dst.0.0.04, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_fixed<16, 6>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_fixed<16, 6>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_fixed<16, 6>", %"struct.ap_fixed<16, 6>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.0.0.03, align 2
  store i16 %1, i16* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a120struct.ap_fixed<16, 6>.42"([120 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [120 x %"struct.ap_fixed<16, 6>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [120 x %"struct.ap_fixed<16, 6>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a120struct.ap_fixed<16, 6>.45"([120 x i16]* %dst, [120 x %"struct.ap_fixed<16, 6>"]* nonnull %src, i64 120)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a120struct.ap_fixed<16, 6>.45"([120 x i16]* nocapture "unpacked"="0.0" %dst, [120 x %"struct.ap_fixed<16, 6>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [120 x %"struct.ap_fixed<16, 6>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [120 x %"struct.ap_fixed<16, 6>"], [120 x %"struct.ap_fixed<16, 6>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [120 x i16], [120 x i16]* %dst, i64 0, i64 %for.loop.idx2
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

declare void @apatb_street_fighter_cnn_hw([120 x i16]*, i32*, i16*, i16*, i16*, i16*, i16*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([120 x %"struct.ap_fixed<16, 6>"]* noalias "unpacked"="0", [120 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0", i32* noalias "unpacked"="2", i32* noalias readonly align 512 "unpacked"="3", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="4", i16* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="6", i16* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="8", i16* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="10", i16* noalias nocapture readonly align 512 "unpacked"="11.0", %"struct.ap_fixed<16, 6>"* noalias "unpacked"="12", i16* noalias nocapture readonly align 512 "unpacked"="13.0") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %4, i16* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %6, i16* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %8, i16* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %10, i16* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 6>.20"(%"struct.ap_fixed<16, 6>"* %12, i16* align 512 %13)
  ret void
}

declare void @street_fighter_cnn_hw_stub(%"struct.ap_fixed<16, 6>"* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull, %"struct.ap_fixed<16, 6>"* noalias nocapture nonnull)

define void @street_fighter_cnn_hw_stub_wrapper([120 x i16]*, i32*, i16*, i16*, i16*, i16*, i16*) #5 {
entry:
  %7 = call i8* @malloc(i64 240)
  %8 = bitcast i8* %7 to [120 x %"struct.ap_fixed<16, 6>"]*
  %9 = call i8* @malloc(i64 2)
  %10 = bitcast i8* %9 to %"struct.ap_fixed<16, 6>"*
  %11 = call i8* @malloc(i64 2)
  %12 = bitcast i8* %11 to %"struct.ap_fixed<16, 6>"*
  %13 = call i8* @malloc(i64 2)
  %14 = bitcast i8* %13 to %"struct.ap_fixed<16, 6>"*
  %15 = call i8* @malloc(i64 2)
  %16 = bitcast i8* %15 to %"struct.ap_fixed<16, 6>"*
  %17 = call i8* @malloc(i64 2)
  %18 = bitcast i8* %17 to %"struct.ap_fixed<16, 6>"*
  call void @copy_out([120 x %"struct.ap_fixed<16, 6>"]* %8, [120 x i16]* %0, i32* null, i32* %1, %"struct.ap_fixed<16, 6>"* %10, i16* %2, %"struct.ap_fixed<16, 6>"* %12, i16* %3, %"struct.ap_fixed<16, 6>"* %14, i16* %4, %"struct.ap_fixed<16, 6>"* %16, i16* %5, %"struct.ap_fixed<16, 6>"* %18, i16* %6)
  %19 = bitcast [120 x %"struct.ap_fixed<16, 6>"]* %8 to %"struct.ap_fixed<16, 6>"*
  call void @street_fighter_cnn_hw_stub(%"struct.ap_fixed<16, 6>"* %19, i32* %1, %"struct.ap_fixed<16, 6>"* %10, %"struct.ap_fixed<16, 6>"* %12, %"struct.ap_fixed<16, 6>"* %14, %"struct.ap_fixed<16, 6>"* %16, %"struct.ap_fixed<16, 6>"* %18)
  call void @copy_in([120 x %"struct.ap_fixed<16, 6>"]* %8, [120 x i16]* %0, i32* null, i32* %1, %"struct.ap_fixed<16, 6>"* %10, i16* %2, %"struct.ap_fixed<16, 6>"* %12, i16* %3, %"struct.ap_fixed<16, 6>"* %14, i16* %4, %"struct.ap_fixed<16, 6>"* %16, i16* %5, %"struct.ap_fixed<16, 6>"* %18, i16* %6)
  call void @free(i8* %7)
  call void @free(i8* %9)
  call void @free(i8* %11)
  call void @free(i8* %13)
  call void @free(i8* %15)
  call void @free(i8* %17)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
