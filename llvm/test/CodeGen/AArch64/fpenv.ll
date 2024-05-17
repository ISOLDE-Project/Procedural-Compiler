; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py UTC_ARGS: --version 4
; RUN: llc -mtriple=aarch64-none-linux-gnu %s -o - | FileCheck %s

define void @func_set_rounding_dyn(i32 %rm) {
; CHECK-LABEL: func_set_rounding_dyn:
; CHECK:       // %bb.0:
; CHECK-NEXT:    sub w9, w0, #1
; CHECK-NEXT:    mrs x8, FPCR
; CHECK-NEXT:    and w9, w9, #0x3
; CHECK-NEXT:    and x8, x8, #0xffffffffff3fffff
; CHECK-NEXT:    lsl w9, w9, #22
; CHECK-NEXT:    orr x8, x8, x9
; CHECK-NEXT:    msr FPCR, x8
; CHECK-NEXT:    ret
  call void @llvm.set.rounding(i32 %rm)
  ret void
}

define void @func_set_rounding_toward_zero() {
; CHECK-LABEL: func_set_rounding_toward_zero:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mrs x8, FPCR
; CHECK-NEXT:    orr x8, x8, #0xc00000
; CHECK-NEXT:    msr FPCR, x8
; CHECK-NEXT:    ret
  call void @llvm.set.rounding(i32 0)
  ret void
}

define void @func_set_rounding_tonearest_even() {
; CHECK-LABEL: func_set_rounding_tonearest_even:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mrs x8, FPCR
; CHECK-NEXT:    and x8, x8, #0xffffffffff3fffff
; CHECK-NEXT:    msr FPCR, x8
; CHECK-NEXT:    ret
  call void @llvm.set.rounding(i32 1)
  ret void
}

define void @func_set_rounding_upward() {
; CHECK-LABEL: func_set_rounding_upward:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mrs x8, FPCR
; CHECK-NEXT:    and x8, x8, #0xffffffffff3fffff
; CHECK-NEXT:    orr x8, x8, #0x400000
; CHECK-NEXT:    msr FPCR, x8
; CHECK-NEXT:    ret
  call void @llvm.set.rounding(i32 2)
  ret void
}

define void @func_set_rounding_downward() {
; CHECK-LABEL: func_set_rounding_downward:
; CHECK:       // %bb.0:
; CHECK-NEXT:    mrs x8, FPCR
; CHECK-NEXT:    and x8, x8, #0xffffffffff3fffff
; CHECK-NEXT:    orr x8, x8, #0x800000
; CHECK-NEXT:    msr FPCR, x8
; CHECK-NEXT:    ret
  call void @llvm.set.rounding(i32 3)
  ret void
}

declare void @llvm.set.rounding(i32)