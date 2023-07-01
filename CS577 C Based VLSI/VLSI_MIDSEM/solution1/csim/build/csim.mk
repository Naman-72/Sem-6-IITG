# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__HLS_FPO_v6_1__ = 1

__SIM_MATHHLS__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../dilithium3/test/cpucycles.c ../../../../dilithium3/test/speed_print.c ../../../../dilithium3/test/test_dilithium.c ../../../../dilithium3/test/test_mul.c ../../../../dilithium3/test/test_speed.c ../../../../dilithium3/test/test_vectors.c ../../../../dilithium3/PQCgenKAT_sign.c ../../../../dilithium3/aes.c ../../../../dilithium3/aes256ctr.c ../../../../dilithium3/fips202.c ../../../../dilithium3/ntt.c ../../../../dilithium3/packing.c ../../../../dilithium3/poly.c ../../../../dilithium3/polyvec.c ../../../../dilithium3/randombytes.c ../../../../dilithium3/reduce.c ../../../../dilithium3/rng.c ../../../../dilithium3/rounding.c ../../../../dilithium3/sign.c ../../../../dilithium3/symmetric-aes.c ../../../../dilithium3/symmetric-shake.c

TARGET := csim.exe

AUTOPILOT_ROOT := D:/Xilinx/Vivado/2019.2
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/Xilinx/Vivado/2019.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/tps/win64/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__HLS_FPO_v6_1__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -DAUTOCC
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += 
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



AUTOCC := cmd //c apcc.bat  

$(ObjDir)/cpucycles.o: ../../../../dilithium3/test/cpucycles.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/test/cpucycles.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/cpucycles.d

$(ObjDir)/speed_print.o: ../../../../dilithium3/test/speed_print.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/test/speed_print.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/speed_print.d

$(ObjDir)/test_dilithium.o: ../../../../dilithium3/test/test_dilithium.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/test/test_dilithium.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/test_dilithium.d

$(ObjDir)/test_mul.o: ../../../../dilithium3/test/test_mul.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/test/test_mul.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/test_mul.d

$(ObjDir)/test_speed.o: ../../../../dilithium3/test/test_speed.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/test/test_speed.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/test_speed.d

$(ObjDir)/test_vectors.o: ../../../../dilithium3/test/test_vectors.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/test/test_vectors.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/test_vectors.d

$(ObjDir)/PQCgenKAT_sign.o: ../../../../dilithium3/PQCgenKAT_sign.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/PQCgenKAT_sign.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/PQCgenKAT_sign.d

$(ObjDir)/aes.o: ../../../../dilithium3/aes.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/aes.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/aes.d

$(ObjDir)/aes256ctr.o: ../../../../dilithium3/aes256ctr.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/aes256ctr.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/aes256ctr.d

$(ObjDir)/fips202.o: ../../../../dilithium3/fips202.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/fips202.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fips202.d

$(ObjDir)/ntt.o: ../../../../dilithium3/ntt.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/ntt.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/ntt.d

$(ObjDir)/packing.o: ../../../../dilithium3/packing.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/packing.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/packing.d

$(ObjDir)/poly.o: ../../../../dilithium3/poly.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/poly.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/poly.d

$(ObjDir)/polyvec.o: ../../../../dilithium3/polyvec.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/polyvec.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/polyvec.d

$(ObjDir)/randombytes.o: ../../../../dilithium3/randombytes.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/randombytes.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/randombytes.d

$(ObjDir)/reduce.o: ../../../../dilithium3/reduce.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/reduce.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/reduce.d

$(ObjDir)/rng.o: ../../../../dilithium3/rng.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/rng.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/rng.d

$(ObjDir)/rounding.o: ../../../../dilithium3/rounding.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/rounding.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/rounding.d

$(ObjDir)/sign.o: ../../../../dilithium3/sign.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/sign.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sign.d

$(ObjDir)/symmetric-aes.o: ../../../../dilithium3/symmetric-aes.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/symmetric-aes.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/symmetric-aes.d

$(ObjDir)/symmetric-shake.o: ../../../../dilithium3/symmetric-shake.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../../dilithium3/symmetric-shake.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/symmetric-shake.d
