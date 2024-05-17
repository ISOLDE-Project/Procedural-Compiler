; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=aarch64--linux-gnu -mattr=+sve2p1 < %s | FileCheck %s
; RUN: llc -mtriple=aarch64--linux-gnu -mattr=+sme2p1 < %s | FileCheck %s

;
; FMAXNMQV
;

define <8 x half> @fmaxnmqv_f16(<vscale x 8 x i1> %pg, <vscale x 8 x half> %a) {
; CHECK-LABEL: fmaxnmqv_f16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmaxnmqv v0.8h, p0, z0.h
; CHECK-NEXT:    ret
  %res = call <8 x half> @llvm.aarch64.sve.fmaxnmqv.v8f16.nxv8f16(<vscale x 8 x i1> %pg,
                                                                  <vscale x 8 x half> %a)
  ret <8 x half> %res
}

define <4 x float> @fmaxnmqv_f32(<vscale x 4 x i1> %pg, <vscale x 4 x float> %a) {
; CHECK-LABEL: fmaxnmqv_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmaxnmqv v0.4s, p0, z0.s
; CHECK-NEXT:    ret
  %res = call <4 x float> @llvm.aarch64.sve.fmaxnmqv.v4f32.nxv4f32(<vscale x 4 x i1> %pg,
                                                                   <vscale x 4 x float> %a)
  ret <4 x float> %res
}

define <2 x double> @fmaxnmqv_f64(<vscale x 2 x i1> %pg, <vscale x 2 x double> %a) {
; CHECK-LABEL: fmaxnmqv_f64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmaxnmqv v0.2d, p0, z0.d
; CHECK-NEXT:    ret
  %res = call <2 x double> @llvm.aarch64.sve.fmaxnmqv.v2f64.nxv2f64(<vscale x 2 x i1> %pg,
                                                                    <vscale x 2 x double> %a)
  ret <2 x double> %res
}

;
; FMINNMQV
;

define <8 x half> @fminnmqv_f16(<vscale x 8 x i1> %pg, <vscale x 8 x half> %a) {
; CHECK-LABEL: fminnmqv_f16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fminnmqv v0.8h, p0, z0.h
; CHECK-NEXT:    ret
  %res = call <8 x half> @llvm.aarch64.sve.fminnmqv.v8f16.nxv8f16(<vscale x 8 x i1> %pg,
                                                                  <vscale x 8 x half> %a)
  ret <8 x half> %res
}

define <4 x float> @fminnmqv_f32(<vscale x 4 x i1> %pg, <vscale x 4 x float> %a) {
; CHECK-LABEL: fminnmqv_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fminnmqv v0.4s, p0, z0.s
; CHECK-NEXT:    ret
  %res = call <4 x float> @llvm.aarch64.sve.fminnmqv.v4f32.nxv4f32(<vscale x 4 x i1> %pg,
                                                                   <vscale x 4 x float> %a)
  ret <4 x float> %res
}

define <2 x double> @fminnmqv_f64(<vscale x 2 x i1> %pg, <vscale x 2 x double> %a) {
; CHECK-LABEL: fminnmqv_f64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fminnmqv v0.2d, p0, z0.d
; CHECK-NEXT:    ret
  %res = call <2 x double> @llvm.aarch64.sve.fminnmqv.v2f64.nxv2f64(<vscale x 2 x i1> %pg,
                                                                    <vscale x 2 x double> %a)
  ret <2 x double> %res
}

;
; FADDQV
;

define <8 x half> @faddqv_f16(<vscale x 8 x i1> %pg, <vscale x 8 x half> %a) {
; CHECK-LABEL: faddqv_f16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    faddqv v0.8h, p0, z0.h
; CHECK-NEXT:    ret
  %res = call <8 x half> @llvm.aarch64.sve.addqv.v8f16.nxv8f16(<vscale x 8 x i1> %pg,
                                                               <vscale x 8 x half> %a)
  ret <8 x half> %res
}

define <4 x float> @faddqv_f32(<vscale x 4 x i1> %pg, <vscale x 4 x float> %a) {
; CHECK-LABEL: faddqv_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    faddqv v0.4s, p0, z0.s
; CHECK-NEXT:    ret
  %res = call <4 x float> @llvm.aarch64.sve.addqv.v4f32.nxv4f32(<vscale x 4 x i1> %pg,
                                                                <vscale x 4 x float> %a)
  ret <4 x float> %res
}

define <2 x double> @faddqv_f64(<vscale x 2 x i1> %pg, <vscale x 2 x double> %a) {
; CHECK-LABEL: faddqv_f64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    faddqv v0.2d, p0, z0.d
; CHECK-NEXT:    ret
  %res = call <2 x double> @llvm.aarch64.sve.addqv.v2f64.nxv2f64(<vscale x 2 x i1> %pg,
                                                                 <vscale x 2 x double> %a)
  ret <2 x double> %res
}

;
; FMINQV
;

define <8 x half> @fminqv_f16(<vscale x 8 x i1> %pg, <vscale x 8 x half> %a) {
; CHECK-LABEL: fminqv_f16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fminqv v0.8h, p0, z0.h
; CHECK-NEXT:    ret
  %res = call <8 x half> @llvm.aarch64.sve.fminqv.v8f16.nxv8f16(<vscale x 8 x i1> %pg,
                                                                <vscale x 8 x half> %a)
  ret <8 x half> %res
}

define <4 x float> @fminqv_f32(<vscale x 4 x i1> %pg, <vscale x 4 x float> %a) {
; CHECK-LABEL: fminqv_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fminqv v0.4s, p0, z0.s
; CHECK-NEXT:    ret
  %res = call <4 x float> @llvm.aarch64.sve.fminqv.v4f32.nxv4f32(<vscale x 4 x i1> %pg,
                                                                 <vscale x 4 x float> %a)
  ret <4 x float> %res
}

define <2 x double> @fminqv_f64(<vscale x 2 x i1> %pg, <vscale x 2 x double> %a) {
; CHECK-LABEL: fminqv_f64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fminqv v0.2d, p0, z0.d
; CHECK-NEXT:    ret
  %res = call <2 x double> @llvm.aarch64.sve.fminqv.v2f64.nxv2f64(<vscale x 2 x i1> %pg,
                                                                  <vscale x 2 x double> %a)
  ret <2 x double> %res
}

;
; FMAXQV
;

define <8 x half> @fmaxqv_f16(<vscale x 8 x i1> %pg, <vscale x 8 x half> %a) {
; CHECK-LABEL: fmaxqv_f16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmaxqv v0.8h, p0, z0.h
; CHECK-NEXT:    ret
  %res = call <8 x half> @llvm.aarch64.sve.fmaxqv.v8f16.nxv8f16(<vscale x 8 x i1> %pg,
                                                                <vscale x 8 x half> %a)
  ret <8 x half> %res
}

define <4 x float> @fmaxqv_f32(<vscale x 4 x i1> %pg, <vscale x 4 x float> %a) {
; CHECK-LABEL: fmaxqv_f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmaxqv v0.4s, p0, z0.s
; CHECK-NEXT:    ret
  %res = call <4 x float> @llvm.aarch64.sve.fmaxqv.v4f32.nxv4f32(<vscale x 4 x i1> %pg,
                                                                 <vscale x 4 x float> %a)
  ret <4 x float> %res
}

define <2 x double> @fmaxqv_f64(<vscale x 2 x i1> %pg, <vscale x 2 x double> %a) {
; CHECK-LABEL: fmaxqv_f64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    fmaxqv v0.2d, p0, z0.d
; CHECK-NEXT:    ret
  %res = call <2 x double> @llvm.aarch64.sve.fmaxqv.v2f64.nxv2f64(<vscale x 2 x i1> %pg,
                                                                  <vscale x 2 x double> %a)
  ret <2 x double> %res
}

declare <8 x half> @llvm.aarch64.sve.fmaxnmqv.v8f16.nxv8f16(<vscale x 8 x i1>, <vscale x 8 x half>)
declare <4 x float> @llvm.aarch64.sve.fmaxnmqv.v4f32.nxv4f32(<vscale x 4 x i1>, <vscale x 4 x float>)
declare <2 x double> @llvm.aarch64.sve.fmaxnmqv.v2f64.nxv2f64(<vscale x 2 x i1>, <vscale x 2 x double>)
declare <8 x half> @llvm.aarch64.sve.fminnmqv.v8f16.nxv8f16(<vscale x 8 x i1>, <vscale x 8 x half>)
declare <4 x float> @llvm.aarch64.sve.fminnmqv.v4f32.nxv4f32(<vscale x 4 x i1>, <vscale x 4 x float>)
declare <2 x double> @llvm.aarch64.sve.fminnmqv.v2f64.nxv2f64(<vscale x 2 x i1>, <vscale x 2 x double>)
declare <8 x half> @llvm.aarch64.sve.addqv.v8f16.nxv8f16(<vscale x 8 x i1>, <vscale x 8 x half>)
declare <4 x float> @llvm.aarch64.sve.addqv.v4f32.nxv4f32(<vscale x 4 x i1>, <vscale x 4 x float>)
declare <2 x double> @llvm.aarch64.sve.addqv.v2f64.nxv2f64(<vscale x 2 x i1>, <vscale x 2 x double>)
declare <8 x half> @llvm.aarch64.sve.fminqv.v8f16.nxv8f16(<vscale x 8 x i1>, <vscale x 8 x half>)
declare <4 x float> @llvm.aarch64.sve.fminqv.v4f32.nxv4f32(<vscale x 4 x i1>, <vscale x 4 x float>)
declare <2 x double> @llvm.aarch64.sve.fminqv.v2f64.nxv2f64(<vscale x 2 x i1>, <vscale x 2 x double>)
declare <8 x half> @llvm.aarch64.sve.fmaxqv.v8f16.nxv8f16(<vscale x 8 x i1>, <vscale x 8 x half>)
declare <4 x float> @llvm.aarch64.sve.fmaxqv.v4f32.nxv4f32(<vscale x 4 x i1>, <vscale x 4 x float>)
declare <2 x double> @llvm.aarch64.sve.fmaxqv.v2f64.nxv2f64(<vscale x 2 x i1>, <vscale x 2 x double>)