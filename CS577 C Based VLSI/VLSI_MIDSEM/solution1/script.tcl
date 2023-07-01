############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project VLSI_MIDSEM
set_top crypto_sign_keypair
add_files dilithium3/Makefile
add_files dilithium3/aes.c
add_files dilithium3/aes.h
add_files dilithium3/aes256ctr.c
add_files dilithium3/aes256ctr.h
add_files dilithium3/api.h
add_files dilithium3/config.h
add_files dilithium3/fips202.c
add_files dilithium3/fips202.h
add_files dilithium3/ntt.c
add_files dilithium3/ntt.h
add_files dilithium3/packing.c
add_files dilithium3/packing.h
add_files dilithium3/params.h
add_files dilithium3/poly.c
add_files dilithium3/poly.h
add_files dilithium3/polyvec.c
add_files dilithium3/polyvec.h
add_files dilithium3/precomp.gp
add_files dilithium3/randombytes.c
add_files dilithium3/randombytes.h
add_files dilithium3/reduce.c
add_files dilithium3/reduce.h
add_files dilithium3/rng.c
add_files dilithium3/rng.h
add_files dilithium3/rounding.c
add_files dilithium3/rounding.h
add_files dilithium3/sign.c
add_files dilithium3/sign.h
add_files dilithium3/symmetric-aes.c
add_files dilithium3/symmetric-shake.c
add_files dilithium3/symmetric.h
add_files -tb dilithium3/test/cpucycles.c -cflags "-Wno-unknown-pragmas"
add_files -tb dilithium3/test/cpucycles.h -cflags "-Wno-unknown-pragmas"
add_files -tb dilithium3/test/speed_print.c -cflags "-Wno-unknown-pragmas"
add_files -tb dilithium3/test/speed_print.h -cflags "-Wno-unknown-pragmas"
add_files -tb dilithium3/test/test_dilithium.c -cflags "-Wno-unknown-pragmas"
add_files -tb dilithium3/test/test_mul.c -cflags "-Wno-unknown-pragmas"
add_files -tb dilithium3/test/test_speed.c -cflags "-Wno-unknown-pragmas"
add_files -tb dilithium3/test/test_vectors.c -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7vx485t-ffg1157-1}
create_clock -period 10 -name default
#source "./VLSI_MIDSEM/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
