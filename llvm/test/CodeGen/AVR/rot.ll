; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py UTC_ARGS: --version 2
; RUN: llc < %s -mtriple=avr | FileCheck %s
; RUN: llc < %s -mtriple=avr -mattr=+avrtiny | FileCheck --check-prefix=TINY %s

define i8 @rol8(i8 %val, i8 %amt) {
; CHECK-LABEL: rol8:
; CHECK:       ; %bb.0:
; CHECK-NEXT:    andi r22, 7
; CHECK-NEXT:    dec r22
; CHECK-NEXT:    brmi .LBB0_2
; CHECK-NEXT:  .LBB0_1: ; =>This Inner Loop Header: Depth=1
; CHECK-NEXT:    lsl r24
; CHECK-NEXT:    adc r24, r1
; CHECK-NEXT:    dec r22
; CHECK-NEXT:    brpl .LBB0_1
; CHECK-NEXT:  .LBB0_2:
; CHECK-NEXT:    ret
;
; TINY-LABEL: rol8:
; TINY:       ; %bb.0:
; TINY-NEXT:    andi r22, 7
; TINY-NEXT:    dec r22
; TINY-NEXT:    brmi .LBB0_2
; TINY-NEXT:  .LBB0_1: ; =>This Inner Loop Header: Depth=1
; TINY-NEXT:    lsl r24
; TINY-NEXT:    adc r24, r17
; TINY-NEXT:    dec r22
; TINY-NEXT:    brpl .LBB0_1
; TINY-NEXT:  .LBB0_2:
; TINY-NEXT:    ret
  %mod = urem i8 %amt, 8
  %inv = sub i8 8, %mod
  %parta = shl i8 %val, %mod
  %partb = lshr i8 %val, %inv
  %rotl = or i8 %parta, %partb
  ret i8 %rotl
}


define i8 @ror8(i8 %val, i8 %amt) {
; CHECK-LABEL: ror8:
; CHECK:       ; %bb.0:
; CHECK-NEXT:    andi r22, 7
; CHECK-NEXT:    dec r22
; CHECK-NEXT:    brmi .LBB1_2
; CHECK-NEXT:  .LBB1_1: ; =>This Inner Loop Header: Depth=1
; CHECK-NEXT:    bst r24, 0
; CHECK-NEXT:    ror r24
; CHECK-NEXT:    bld r24, 7
; CHECK-NEXT:    dec r22
; CHECK-NEXT:    brpl .LBB1_1
; CHECK-NEXT:  .LBB1_2:
; CHECK-NEXT:    ret
;
; TINY-LABEL: ror8:
; TINY:       ; %bb.0:
; TINY-NEXT:    andi r22, 7
; TINY-NEXT:    dec r22
; TINY-NEXT:    brmi .LBB1_2
; TINY-NEXT:  .LBB1_1: ; =>This Inner Loop Header: Depth=1
; TINY-NEXT:    bst r24, 0
; TINY-NEXT:    ror r24
; TINY-NEXT:    bld r24, 7
; TINY-NEXT:    dec r22
; TINY-NEXT:    brpl .LBB1_1
; TINY-NEXT:  .LBB1_2:
; TINY-NEXT:    ret
  %mod = urem i8 %amt, 8
  %inv = sub i8 8, %mod
  %parta = lshr i8 %val, %mod
  %partb = shl i8 %val, %inv
  %rotr = or i8 %parta, %partb
  ret i8 %rotr
}
