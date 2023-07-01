############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dilithium_weak.prj
set_top crypto_sign
add_files aes.c
add_files fips202.c
add_files ntt.c
add_files packing.c
add_files poly.c
add_files polyvec.c
add_files reduce.c
add_files rng.c
add_files sign.c
add_files -tb test/cpucycles.c
add_files -tb test/cpucycles.h
add_files -tb test/speed.c
add_files -tb test/speed.h
add_files -tb test/test_dilithium.c
add_files -tb test/test_mul.c
add_files -tb test/test_vectors.c
open_solution "sign"
set_part {xc7a100tcsg324-2}
create_clock -period 10 -name default
config_interface -clock_enable=0 -expose_global -m_axi_addr64=0 -m_axi_offset off -register_io off -trim_dangling_port=0
source "./dilithium_weak.prj/sign/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl
export_design -flow impl -rtl verilog -format ip_catalog
