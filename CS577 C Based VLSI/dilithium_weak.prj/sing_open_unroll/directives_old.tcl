############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "shake256_squeezeblocks" shake256_squeezeblocks
set_directive_inline "shake256_squeezeblocks"
set_directive_allocation -limit 1 -type function "shake256_absorb" shake256_absorb
set_directive_inline "shake256_absorb"
set_directive_allocation -limit 1 -type function "shake128_squeezeblocks" shake128_squeezeblocks
set_directive_allocation -limit 1 -type function "shake128_absorb" shake128_absorb
set_directive_inline "shake128_absorb"
set_directive_allocation -limit 1 -type function "keccak_absorb" keccak_absorb
set_directive_inline "keccak_absorb"
set_directive_allocation -limit 1 -type function "keccak_squeezeblocks" keccak_squeezeblocks
set_directive_inline "keccak_squeezeblocks"
set_directive_inline "shake128_squeezeblocks"
set_directive_inline "montgomery_reduce"
set_directive_inline "decompose"
set_directive_unroll "ntt/ntt_label2"
set_directive_unroll "invntt_frominvmont/invntt_frominvmont_label4"
set_directive_unroll "ntt/ntt_label3"
set_directive_unroll "polyveck_use_hint/polyveck_use_hint_label23"
set_directive_unroll "polyveck_make_hint/polyveck_make_hint_label22"
set_directive_unroll "polyveck_decompose/polyveck_decompose_label21"
set_directive_unroll "polyveck_power2round/polyveck_power2round_label20"
set_directive_unroll "polyveck_chknorm/polyveck_chknorm_label19"
set_directive_unroll "polyveck_invntt_montgomery/polyveck_invntt_montgomery_label18"
set_directive_unroll "polyveck_ntt/polyveck_ntt_label17"
set_directive_unroll "polyveck_shiftl/polyveck_shiftl_label16"
set_directive_unroll "polyveck_neg/polyveck_neg_label15"
set_directive_unroll "polyveck_sub/polyveck_sub_label14"
set_directive_unroll "polyveck_add/polyveck_add_label13"
set_directive_unroll "polyveck_freeze/polyveck_freeze_label12"
set_directive_unroll "polyvecl_chknorm/polyvecl_chknorm_label11"
set_directive_unroll "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label7"
set_directive_unroll "polyvecl_pointwise_acc_invmontgomery/polyvecl_pointwise_acc_invmontgomery_label6"
set_directive_unroll "polyvecl_ntt/polyvecl_ntt_label8"
set_directive_unroll "polyvecl_add/polyvecl_add_label9"
set_directive_unroll "polyvecl_freeze/polyvecl_freeze_label10"
