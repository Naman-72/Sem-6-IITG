############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
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
set_directive_inline "store64"
set_directive_inline "load64"
set_directive_unroll "load64/load64_label38"
set_directive_unroll "store64/store64_label39"
set_directive_pipeline "KeccakF1600_StatePermute/KeccakF1600_StatePermute_label1"
set_directive_pipeline "poly_add/poly_add_label25"
set_directive_pipeline "poly_sub/poly_sub_label33"
set_directive_pipeline "poly_shiftl/poly_shiftl_label31"
set_directive_pipeline "poly_uniform/poly_uniform_label40"
set_directive_pipeline "rej_eta/rej_eta_label41"
set_directive_pipeline "polyeta_pack/polyeta_pack_label34"
set_directive_pipeline "polyeta_unpack/polyeta_unpack_label35"
set_directive_pipeline "polyt1_pack/polyt1_pack_label43"
set_directive_pipeline "polyt0_pack/polyt0_pack_label45"
set_directive_pipeline "polyw1_pack/polyw1_pack_label26"
