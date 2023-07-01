############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "keccak_absorb" keccak_absorb
set_directive_inline "keccak_absorb"
set_directive_allocation -limit 1 -type function "keccak_squeezeblocks" keccak_squeezeblocks
set_directive_inline "keccak_squeezeblocks"
set_directive_allocation -limit 1 -type function "shake256" shake256
set_directive_inline "shake256"
set_directive_unroll -factor 128 "ntt/ntt_label1"
set_directive_unroll -factor 128 "invntt_frominvmont/invntt_frominvmont_label0"
set_directive_unroll -factor 128 "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label6"
set_directive_unroll -factor 128 "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label7"
set_directive_unroll -factor 128 "rej_eta/rej_eta_label41"
set_directive_unroll -factor 128 "poly_add/poly_add_label25"
set_directive_unroll -factor 128 "poly_freeze/poly_freeze_label24"
set_directive_pipeline "invntt_frominvmont/invntt_frominvmont_label0"
set_directive_pipeline "ntt/ntt_label1"
set_directive_pipeline "poly_freeze/poly_freeze_label24"
set_directive_pipeline "poly_add/poly_add_label25"
set_directive_pipeline "rej_eta/rej_eta_label41"
set_directive_pipeline "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label6"
set_directive_pipeline "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label7"
