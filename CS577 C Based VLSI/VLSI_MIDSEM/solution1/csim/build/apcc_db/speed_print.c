/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;
/* Structure forward decls */
typedef struct l_struct_OC__iobuf l_struct_OC__iobuf;

/* Structure contents */
struct l_struct_OC__iobuf {
   char *field0;
  unsigned int field1;
   char *field2;
  unsigned int field3;
  unsigned int field4;
  unsigned int field5;
  unsigned int field6;
   char *field7;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void print_results( char *llvm_cbe_s, signed long long *llvm_cbe_t, signed long long llvm_cbe_tlen);
signed long long cpucycles_overhead(void);
static signed long long aesl_internal_median(signed long long *llvm_cbe_l, signed long long llvm_cbe_llen);
static signed long long aesl_internal_average(signed long long *llvm_cbe_t, signed long long llvm_cbe_tlen);
static signed int aesl_internal_cmp_uint64( char *llvm_cbe_a,  char *llvm_cbe_b);


/* Global Variable Definitions and Initialization */
static unsigned long long aesl_internal_print_results_OC_overhead = 18446744073709551615ull;
static  char aesl_internal__OC_str[39] = "ERROR: Need a least two cycle counts!\n";
static  char aesl_internal__OC_str2[27] = "median: %llu cycles/ticks\n";
static  char aesl_internal__OC_str3[28] = "average: %llu cycles/ticks\n";


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void print_results( char *llvm_cbe_s, signed long long *llvm_cbe_t, signed long long llvm_cbe_tlen) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  unsigned long long llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  unsigned long long llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  unsigned long long llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned long long llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned long long llvm_cbe_storemerge2;
  unsigned long long llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned long long llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  signed long long *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned long long llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  signed long long *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  unsigned long long llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  unsigned long long llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  unsigned long long llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned long long llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts_count = 0;
  unsigned int llvm_cbe_puts;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  unsigned long long llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  unsigned long long llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_putchar_count = 0;
  unsigned int llvm_cbe_putchar;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @print_results\n");
  if ((((unsigned long long )llvm_cbe_tlen&18446744073709551615ULL) < ((unsigned long long )2ull&18446744073709551615ULL))) {
    goto llvm_cbe_tmp__19;
  } else {
    goto llvm_cbe_tmp__20;
  }

llvm_cbe_tmp__19:
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = tail call %%struct._iobuf* @__iob_func() nounwind, !dbg !6 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__1 = (l_struct_OC__iobuf *) /*tail*/ __iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds %%struct._iobuf* %%3, i64 2, !dbg !6 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_18_count);
  llvm_cbe_tmp__2 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__1[(((signed long long )2ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8]* @aesl_internal_.str, i64 0, i64 0), i64 38, i64 1, %%struct._iobuf* %%4), !dbg !6 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_19_count);
   /*tail*/ fwrite(( char *)((&aesl_internal__OC_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 39
#endif
])), 38ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",38ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__3);
}
  goto llvm_cbe_tmp__21;

llvm_cbe_tmp__20:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i64* @aesl_internal_print_results.overhead, align 8, !dbg !7 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_21_count);
  llvm_cbe_tmp__4 = (unsigned long long )*(&aesl_internal_print_results_OC_overhead);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__4);
  if (((llvm_cbe_tmp__4&18446744073709551615ULL) == (18446744073709551615ull&18446744073709551615ULL))) {
    goto llvm_cbe_tmp__22;
  } else {
    goto llvm_cbe_tmp__23;
  }

llvm_cbe_tmp__22:
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = tail call i64 @cpucycles_overhead() nounwind, !dbg !7 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__5 = (unsigned long long ) /*tail*/ cpucycles_overhead();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__5);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i64 %%10, i64* @aesl_internal_print_results.overhead, align 8, !dbg !7 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_25_count);
  *(&aesl_internal_print_results_OC_overhead) = llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__5);
  goto llvm_cbe_tmp__23;

llvm_cbe_tmp__23:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = add i64 %%tlen, -1, !dbg !6 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__6 = (unsigned long long )((unsigned long long )(llvm_cbe_tlen&18446744073709551615ull)) + ((unsigned long long )(18446744073709551615ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__6&18446744073709551615ull)));
  if (((llvm_cbe_tmp__6&18446744073709551615ULL) == (0ull&18446744073709551615ULL))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned long long )0ull;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i64 [ %%14, %%.lr.ph ], [ 0, %%11  for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned long long )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%I64X",llvm_cbe_storemerge2);
printf("\n = 0x%I64X",llvm_cbe_tmp__7);
printf("\n = 0x%I64X",0ull);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add i64 %%storemerge2, 1, !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__7 = (unsigned long long )((unsigned long long )(llvm_cbe_storemerge2&18446744073709551615ull)) + ((unsigned long long )(1ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__7&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds i64* %%t, i64 %%14, !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__8 = (signed long long *)(&llvm_cbe_t[(((signed long long )llvm_cbe_tmp__7))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__7));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = load i64* %%15, align 8, !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__9 = (unsigned long long )*llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds i64* %%t, i64 %%storemerge2, !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__10 = (signed long long *)(&llvm_cbe_t[(((signed long long )llvm_cbe_storemerge2))]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%I64X",((signed long long )llvm_cbe_storemerge2));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i64* %%17, align 8, !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__11 = (unsigned long long )*llvm_cbe_tmp__10;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = load i64* @aesl_internal_print_results.overhead, align 8, !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__12 = (unsigned long long )*(&aesl_internal_print_results_OC_overhead);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = sub i64 %%16, %%18, !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__13 = (unsigned long long )((unsigned long long )(llvm_cbe_tmp__9&18446744073709551615ull)) - ((unsigned long long )(llvm_cbe_tmp__11&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__13&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = sub i64 %%20, %%19, !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__14 = (unsigned long long )((unsigned long long )(llvm_cbe_tmp__13&18446744073709551615ull)) - ((unsigned long long )(llvm_cbe_tmp__12&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__14&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i64 %%21, i64* %%17, align 8, !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_50_count);
  *llvm_cbe_tmp__10 = llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__14);
  if (((llvm_cbe_tmp__7&18446744073709551615ULL) == (llvm_cbe_tmp__6&18446744073709551615ULL))) {
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned long long )llvm_cbe_tmp__7;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%puts = tail call i32 @puts(i8* %%s), !dbg !5 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_puts_count);
   /*tail*/ puts(( char *)llvm_cbe_s);
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts = 0x%X",llvm_cbe_puts);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = tail call fastcc i64 @aesl_internal_median(i64* %%t, i64 %%12), !dbg !6 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__15 = (unsigned long long ) /*tail*/ aesl_internal_median((signed long long *)llvm_cbe_t, llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",llvm_cbe_tmp__6);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__15);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @aesl_internal_.str2, i64 0, i64 0), i64 %%22) nounwind, !dbg !6 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_59_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 27
#endif
])), llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",llvm_cbe_tmp__15);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__16);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = tail call fastcc i64 @aesl_internal_average(i64* %%t, i64 %%12), !dbg !6 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__17 = (unsigned long long ) /*tail*/ aesl_internal_average((signed long long *)llvm_cbe_t, llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",llvm_cbe_tmp__6);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__17);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @aesl_internal_.str3, i64 0, i64 0), i64 %%24) nounwind, !dbg !6 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_61_count);
   /*tail*/ printf(( char *)((&aesl_internal__OC_str3[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 28
#endif
])), llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",llvm_cbe_tmp__17);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__18);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%putchar = tail call i32 @putchar(i32 10) nounwind, !dbg !7 for 0x%I64xth hint within @print_results  --> \n", ++aesl_llvm_cbe_putchar_count);
   /*tail*/ putchar(10u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",10u);
printf("\nReturn putchar = 0x%X",llvm_cbe_putchar);
}
  goto llvm_cbe_tmp__21;

llvm_cbe_tmp__21:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @print_results}\n");
  return;
}


static signed long long aesl_internal_median(signed long long *llvm_cbe_l, signed long long llvm_cbe_llen) {
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
   char *llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  unsigned long long llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  unsigned long long llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  signed long long *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  unsigned long long llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  unsigned long long llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  unsigned long long llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  signed long long *llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  unsigned long long llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  signed long long *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  unsigned long long llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  unsigned long long llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned long long llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned long long llvm_cbe_storemerge;
  unsigned long long llvm_cbe_storemerge__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @aesl_internal_median\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast i64* %%l to i8*, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__24 = ( char *)(( char *)llvm_cbe_l);
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @qsort(i8* %%1, i64 %%llen, i64 8, i32 (i8*, i8*)* @aesl_internal_cmp_uint64) nounwind, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_76_count);
   /*tail*/ qsort(( char *)llvm_cbe_tmp__24, llvm_cbe_llen, 8ull, aesl_internal_cmp_uint64);
if (AESL_DEBUG_TRACE) {
printf("\nArgument llen = 0x%I64X",llvm_cbe_llen);
printf("\nArgument  = 0x%I64X",8ull);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = and i64 %%llen, 1, !dbg !6 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__25 = (unsigned long long )llvm_cbe_llen & 1ull;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__25);
  if (((llvm_cbe_tmp__25&18446744073709551615ULL) == (0ull&18446744073709551615ULL))) {
    goto llvm_cbe_tmp__37;
  } else {
    goto llvm_cbe_tmp__38;
  }

llvm_cbe_tmp__38:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = lshr i64 %%llen, 1, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__26 = (unsigned long long )((unsigned long long )(((unsigned long long )(llvm_cbe_llen&18446744073709551615ull)) >> ((unsigned long long )(1ull&18446744073709551615ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__26&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds i64* %%l, i64 %%5, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__27 = (signed long long *)(&llvm_cbe_l[(((signed long long )llvm_cbe_tmp__26))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__26));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = load i64* %%6, align 8, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__28 = (unsigned long long )*llvm_cbe_tmp__27;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__28);
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned long long )llvm_cbe_tmp__28;   /* for PHI node */
  goto llvm_cbe_tmp__39;

llvm_cbe_tmp__37:
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = lshr i64 %%llen, 1, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__29 = (unsigned long long )((unsigned long long )(((unsigned long long )(llvm_cbe_llen&18446744073709551615ull)) >> ((unsigned long long )(1ull&18446744073709551615ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__29&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = add i64 %%9, -1, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_85_count);
  llvm_cbe_tmp__30 = (unsigned long long )((unsigned long long )(llvm_cbe_tmp__29&18446744073709551615ull)) + ((unsigned long long )(18446744073709551615ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__30&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds i64* %%l, i64 %%10, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__31 = (signed long long *)(&llvm_cbe_l[(((signed long long )llvm_cbe_tmp__30))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__30));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i64* %%11, align 8, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__32 = (unsigned long long )*llvm_cbe_tmp__31;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds i64* %%l, i64 %%9, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__33 = (signed long long *)(&llvm_cbe_l[(((signed long long )llvm_cbe_tmp__29))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__29));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i64* %%13, align 8, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__34 = (unsigned long long )*llvm_cbe_tmp__33;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = add i64 %%14, %%12, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__35 = (unsigned long long )((unsigned long long )(llvm_cbe_tmp__34&18446744073709551615ull)) + ((unsigned long long )(llvm_cbe_tmp__32&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__35&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = lshr i64 %%15, 1, !dbg !5 for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__36 = (unsigned long long )((unsigned long long )(((unsigned long long )(llvm_cbe_tmp__35&18446744073709551615ull)) >> ((unsigned long long )(1ull&18446744073709551615ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__36&18446744073709551615ull)));
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned long long )llvm_cbe_tmp__36;   /* for PHI node */
  goto llvm_cbe_tmp__39;

llvm_cbe_tmp__39:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = phi i64 [ %%7, %%4 ], [ %%16, %%8  for 0x%I64xth hint within @aesl_internal_median  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned long long )llvm_cbe_storemerge__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge = 0x%I64X",llvm_cbe_storemerge);
printf("\n = 0x%I64X",llvm_cbe_tmp__28);
printf("\n = 0x%I64X",llvm_cbe_tmp__36);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @aesl_internal_median}\n");
  return llvm_cbe_storemerge;
}


static signed long long aesl_internal_average(signed long long *llvm_cbe_t, signed long long llvm_cbe_tlen) {
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned long long llvm_cbe_storemerge1;
  unsigned long long llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  unsigned long long llvm_cbe_tmp__40;
  unsigned long long llvm_cbe_tmp__40__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  signed long long *llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  unsigned long long llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  unsigned long long llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  unsigned long long llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa_count = 0;
  unsigned long long llvm_cbe__2e_lcssa;
  unsigned long long llvm_cbe__2e_lcssa__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  unsigned long long llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @aesl_internal_average\n");
  if (((llvm_cbe_tlen&18446744073709551615ULL) == (0ull&18446744073709551615ULL))) {
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (unsigned long long )0ull;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned long long )0ull;   /* for PHI node */
    llvm_cbe_tmp__40__PHI_TEMPORARY = (unsigned long long )0ull;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  do {     /* Syntactic loop '.lr.ph' to make GCC happy */
llvm_cbe__2e_lr_2e_ph:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i64 [ %%6, %%.lr.ph ], [ 0, %%0  for 0x%I64xth hint within @aesl_internal_average  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned long long )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%I64X",llvm_cbe_storemerge1);
printf("\n = 0x%I64X",llvm_cbe_tmp__44);
printf("\n = 0x%I64X",0ull);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = phi i64 [ %%5, %%.lr.ph ], [ 0, %%0  for 0x%I64xth hint within @aesl_internal_average  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__40 = (unsigned long long )llvm_cbe_tmp__40__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",llvm_cbe_tmp__40);
printf("\n = 0x%I64X",llvm_cbe_tmp__43);
printf("\n = 0x%I64X",0ull);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i64* %%t, i64 %%storemerge1, !dbg !5 for 0x%I64xth hint within @aesl_internal_average  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__41 = (signed long long *)(&llvm_cbe_t[(((signed long long )llvm_cbe_storemerge1))]);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%I64X",((signed long long )llvm_cbe_storemerge1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i64* %%3, align 8, !dbg !5 for 0x%I64xth hint within @aesl_internal_average  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__42 = (unsigned long long )*llvm_cbe_tmp__41;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__42);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = add i64 %%4, %%2, !dbg !5 for 0x%I64xth hint within @aesl_internal_average  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__43 = (unsigned long long )((unsigned long long )(llvm_cbe_tmp__42&18446744073709551615ull)) + ((unsigned long long )(llvm_cbe_tmp__40&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__43&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = add i64 %%storemerge1, 1, !dbg !6 for 0x%I64xth hint within @aesl_internal_average  --> \n", ++aesl_llvm_cbe_115_count);
  llvm_cbe_tmp__44 = (unsigned long long )((unsigned long long )(llvm_cbe_storemerge1&18446744073709551615ull)) + ((unsigned long long )(1ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__44&18446744073709551615ull)));
  if (((llvm_cbe_tmp__44&18446744073709551615ULL) == (llvm_cbe_tlen&18446744073709551615ULL))) {
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (unsigned long long )llvm_cbe_tmp__43;   /* for PHI node */
    goto llvm_cbe__2e__crit_edge;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned long long )llvm_cbe_tmp__44;   /* for PHI node */
    llvm_cbe_tmp__40__PHI_TEMPORARY = (unsigned long long )llvm_cbe_tmp__43;   /* for PHI node */
    goto llvm_cbe__2e_lr_2e_ph;
  }

  } while (1); /* end of syntactic loop '.lr.ph' */
llvm_cbe__2e__crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa = phi i64 [ 0, %%0 ], [ %%5, %%.lr.ph  for 0x%I64xth hint within @aesl_internal_average  --> \n", ++aesl_llvm_cbe__2e_lcssa_count);
  llvm_cbe__2e_lcssa = (unsigned long long )llvm_cbe__2e_lcssa__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa = 0x%I64X",llvm_cbe__2e_lcssa);
printf("\n = 0x%I64X",0ull);
printf("\n = 0x%I64X",llvm_cbe_tmp__43);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = udiv i64 %%.lcssa, %%tlen, !dbg !6 for 0x%I64xth hint within @aesl_internal_average  --> \n", ++aesl_llvm_cbe_121_count);
  llvm_cbe_tmp__45 = (unsigned long long )((unsigned long long )(((unsigned long long )(llvm_cbe__2e_lcssa&18446744073709551615ull)) / ((unsigned long long )(llvm_cbe_tlen&18446744073709551615ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", ((unsigned long long )(llvm_cbe_tmp__45&18446744073709551615ull)));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @aesl_internal_average}\n");
  return llvm_cbe_tmp__45;
}


static signed int aesl_internal_cmp_uint64( char *llvm_cbe_a,  char *llvm_cbe_b) {
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  signed long long *llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  unsigned long long llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  signed long long *llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  unsigned long long llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  unsigned int llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @aesl_internal_cmp_uint64\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast i8* %%a to i64*, !dbg !5 for 0x%I64xth hint within @aesl_internal_cmp_uint64  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__46 = (signed long long *)((signed long long *)llvm_cbe_a);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = load i64* %%1, align 8, !dbg !5 for 0x%I64xth hint within @aesl_internal_cmp_uint64  --> \n", ++aesl_llvm_cbe_130_count);
  llvm_cbe_tmp__47 = (unsigned long long )*llvm_cbe_tmp__46;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = bitcast i8* %%b to i64*, !dbg !5 for 0x%I64xth hint within @aesl_internal_cmp_uint64  --> \n", ++aesl_llvm_cbe_131_count);
  llvm_cbe_tmp__48 = (signed long long *)((signed long long *)llvm_cbe_b);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i64* %%3, align 8, !dbg !5 for 0x%I64xth hint within @aesl_internal_cmp_uint64  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__49 = (unsigned long long )*llvm_cbe_tmp__48;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__49);
  if ((((unsigned long long )llvm_cbe_tmp__47&18446744073709551615ULL) < ((unsigned long long )llvm_cbe_tmp__49&18446744073709551615ULL))) {
    goto llvm_cbe_tmp__50;
  } else {
    goto llvm_cbe_tmp__51;
  }

llvm_cbe_tmp__51:
if (AESL_DEBUG_TRACE)
printf("\n  %%. = zext i1 %%7 to i32, !dbg !5 for 0x%I64xth hint within @aesl_internal_cmp_uint64  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (unsigned int )((unsigned int )(bool )(((unsigned long long )llvm_cbe_tmp__47&18446744073709551615ULL) > ((unsigned long long )llvm_cbe_tmp__49&18446744073709551615ULL))&1U);
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @aesl_internal_cmp_uint64}\n");
  return llvm_cbe__2e_;
llvm_cbe_tmp__50:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @aesl_internal_cmp_uint64}\n");
  return 4294967295u;
}

