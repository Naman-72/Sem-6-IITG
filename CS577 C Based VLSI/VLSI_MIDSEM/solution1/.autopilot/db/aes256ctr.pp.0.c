# 1 "dilithium3/aes256ctr.c"
# 1 "dilithium3/aes256ctr.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1






# 1 "D:/Xilinx/Vivado/2019.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 305 "D:/Xilinx/Vivado/2019.2/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 8 "<command line>" 2
# 1 "<built-in>" 2
# 1 "dilithium3/aes256ctr.c" 2
# 25 "dilithium3/aes256ctr.c"
# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 1 3 4
# 33 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 3 4
# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 1 3 4
# 28 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 3 4
# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3 4
# 10 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 1 3 4
# 10 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3 4
# 277 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 1 3 4
# 13 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3 4
# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3 4
# 674 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3 4
# 674 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3 4

# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3 4
# 675 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3 4
# 13 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 2 3 4


#pragma pack(push,_CRT_PACKING)








 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 102 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3 4
#pragma pack(pop)
# 277 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3 4


#pragma pack(push,_CRT_PACKING)
# 370 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef unsigned long long size_t;
# 380 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef long long ssize_t;
# 392 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef long long intptr_t;
# 405 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef unsigned long long uintptr_t;
# 418 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
__extension__ typedef long long ptrdiff_t;
# 428 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;
# 456 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;







typedef __time64_t time_t;
# 607 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3 4
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







const char *__mingw_get_crt_info (void);





#pragma pack(pop)
# 28 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 2 3 4




# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 1 3 4
# 31 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 3 4
typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;



typedef __typeof__(sizeof(int)) size_t;




typedef unsigned short wchar_t;
# 32 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 2 3 4



typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 33 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 2 3 4
# 26 "dilithium3/aes256ctr.c" 2
# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 1 3








# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
# 9 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 2 3
# 36 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 3
  __attribute__ ((__dllimport__)) void * _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
                void * memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  void * memset(void *_Dst,int _Val,size_t _Size);

  void * memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * _strset(char *_Str,int _Val) ;
  char * _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int strcmp(const char *_Str1,const char *_Str2);
  size_t strlen(const char *_Str);
  size_t strnlen(const char *_Str,size_t _MaxCount);
  void * memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char * _strdup(const char *_Src);
                char * strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char * _strerror(const char *_ErrMsg) ;
  char * strerror(int) ;
  __attribute__ ((__dllimport__)) char * _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char * strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char * _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char * _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
                char * strpbrk(const char *_Str,const char *_Control);
                char * strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char * _strrev(char *_Str);
  size_t strspn(const char *_Str,const char *_Control);
                char * strstr(const char *_Str,const char *_SubStr);
  char * strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) char * _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char * strdup(const char *_Src) ;
  int strcmpi(const char *_Str1,const char *_Str2) ;
  int stricmp(const char *_Str1,const char *_Str2) ;
  char * strlwr(char *_Str) ;
  int strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int strncasecmp (const char *, const char *, size_t);
  int strcasecmp (const char *, const char *);







  char * strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char * strrev(char *_Str) ;
  char * strset(char *_Str,int _Val) ;
  char * strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t * _wcsdup(const wchar_t *_Str);
  wchar_t * wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
                wchar_t * wcschr(const wchar_t *_Str,wchar_t _Ch);
  int wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t * wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t wcslen(const wchar_t *_Str);
  size_t wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t * _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
                wchar_t * wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
                wchar_t * wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t wcsspn(const wchar_t *_Str,const wchar_t *_Control);
                wchar_t * wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);
  wchar_t * wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) wchar_t * _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t * __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t * _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t * _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t * _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t * _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t * _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t * wcsdup(const wchar_t *_Str) ;

  int wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t * wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t * wcsrev(wchar_t *_Str) ;
  wchar_t * wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t * wcslwr(wchar_t *_Str) ;
  wchar_t * wcsupr(wchar_t *_Str) ;
  int wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;








# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/string_s.h" 1 3








# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 1 3
# 9 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/string_s.h" 2 3
# 175 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 2 3
# 27 "dilithium3/aes256ctr.c" 2
# 1 "dilithium3/aes256ctr.h" 1



# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 1 3 4
# 5 "dilithium3/aes256ctr.h" 2






typedef struct {
  uint64_t sk_exp[120];
  uint32_t ivw[16];
} aes256ctr_ctx;


void pqcrystals_aes256ctr_ref_prf(uint8_t *out,
                   size_t outlen,
                   const uint8_t key[32],
                   const uint8_t nonce[12]);


void pqcrystals_aes256ctr_ref_init(aes256ctr_ctx *state,
                    const uint8_t key[32],
                    const uint8_t nonce[12]);


void pqcrystals_aes256ctr_ref_squeezeblocks(uint8_t *out,
                             size_t nblocks,
                             aes256ctr_ctx *state);
# 28 "dilithium3/aes256ctr.c" 2

static inline uint32_t br_dec32le(const uint8_t *src)
{
 return (uint32_t)src[0]
  | ((uint32_t)src[1] << 8)
  | ((uint32_t)src[2] << 16)
  | ((uint32_t)src[3] << 24);
}

static void br_range_dec32le(uint32_t *v, size_t num, const uint8_t *src)
{
 while (num-- > 0) {
  *v ++ = br_dec32le(src);
  src += 4;
 }
}

static inline uint32_t br_swap32(uint32_t x)
{
 x = ((x & (uint32_t)0x00FF00FF) << 8)
  | ((x >> 8) & (uint32_t)0x00FF00FF);
 return (x << 16) | (x >> 16);
}

static inline void br_enc32le(uint8_t *dst, uint32_t x)
{
 dst[0] = (uint8_t)x;
 dst[1] = (uint8_t)(x >> 8);
 dst[2] = (uint8_t)(x >> 16);
 dst[3] = (uint8_t)(x >> 24);
}

static void br_range_enc32le(uint8_t *dst, const uint32_t *v, size_t num)
{
 while (num-- > 0) {
  br_enc32le(dst, *v ++);
  dst += 4;
 }
}

static void br_aes_ct64_bitslice_Sbox(uint64_t *q)
{
# 80 "dilithium3/aes256ctr.c"
 uint64_t x0, x1, x2, x3, x4, x5, x6, x7;
 uint64_t y1, y2, y3, y4, y5, y6, y7, y8, y9;
 uint64_t y10, y11, y12, y13, y14, y15, y16, y17, y18, y19;
 uint64_t y20, y21;
 uint64_t z0, z1, z2, z3, z4, z5, z6, z7, z8, z9;
 uint64_t z10, z11, z12, z13, z14, z15, z16, z17;
 uint64_t t0, t1, t2, t3, t4, t5, t6, t7, t8, t9;
 uint64_t t10, t11, t12, t13, t14, t15, t16, t17, t18, t19;
 uint64_t t20, t21, t22, t23, t24, t25, t26, t27, t28, t29;
 uint64_t t30, t31, t32, t33, t34, t35, t36, t37, t38, t39;
 uint64_t t40, t41, t42, t43, t44, t45, t46, t47, t48, t49;
 uint64_t t50, t51, t52, t53, t54, t55, t56, t57, t58, t59;
 uint64_t t60, t61, t62, t63, t64, t65, t66, t67;
 uint64_t s0, s1, s2, s3, s4, s5, s6, s7;

 x0 = q[7];
 x1 = q[6];
 x2 = q[5];
 x3 = q[4];
 x4 = q[3];
 x5 = q[2];
 x6 = q[1];
 x7 = q[0];




 y14 = x3 ^ x5;
 y13 = x0 ^ x6;
 y9 = x0 ^ x3;
 y8 = x0 ^ x5;
 t0 = x1 ^ x2;
 y1 = t0 ^ x7;
 y4 = y1 ^ x3;
 y12 = y13 ^ y14;
 y2 = y1 ^ x0;
 y5 = y1 ^ x6;
 y3 = y5 ^ y8;
 t1 = x4 ^ y12;
 y15 = t1 ^ x5;
 y20 = t1 ^ x1;
 y6 = y15 ^ x7;
 y10 = y15 ^ t0;
 y11 = y20 ^ y9;
 y7 = x7 ^ y11;
 y17 = y10 ^ y11;
 y19 = y10 ^ y8;
 y16 = t0 ^ y11;
 y21 = y13 ^ y16;
 y18 = x0 ^ y16;




 t2 = y12 & y15;
 t3 = y3 & y6;
 t4 = t3 ^ t2;
 t5 = y4 & x7;
 t6 = t5 ^ t2;
 t7 = y13 & y16;
 t8 = y5 & y1;
 t9 = t8 ^ t7;
 t10 = y2 & y7;
 t11 = t10 ^ t7;
 t12 = y9 & y11;
 t13 = y14 & y17;
 t14 = t13 ^ t12;
 t15 = y8 & y10;
 t16 = t15 ^ t12;
 t17 = t4 ^ t14;
 t18 = t6 ^ t16;
 t19 = t9 ^ t14;
 t20 = t11 ^ t16;
 t21 = t17 ^ y20;
 t22 = t18 ^ y19;
 t23 = t19 ^ y21;
 t24 = t20 ^ y18;

 t25 = t21 ^ t22;
 t26 = t21 & t23;
 t27 = t24 ^ t26;
 t28 = t25 & t27;
 t29 = t28 ^ t22;
 t30 = t23 ^ t24;
 t31 = t22 ^ t26;
 t32 = t31 & t30;
 t33 = t32 ^ t24;
 t34 = t23 ^ t33;
 t35 = t27 ^ t33;
 t36 = t24 & t35;
 t37 = t36 ^ t34;
 t38 = t27 ^ t36;
 t39 = t29 & t38;
 t40 = t25 ^ t39;

 t41 = t40 ^ t37;
 t42 = t29 ^ t33;
 t43 = t29 ^ t40;
 t44 = t33 ^ t37;
 t45 = t42 ^ t41;
 z0 = t44 & y15;
 z1 = t37 & y6;
 z2 = t33 & x7;
 z3 = t43 & y16;
 z4 = t40 & y1;
 z5 = t29 & y7;
 z6 = t42 & y11;
 z7 = t45 & y17;
 z8 = t41 & y10;
 z9 = t44 & y12;
 z10 = t37 & y3;
 z11 = t33 & y4;
 z12 = t43 & y13;
 z13 = t40 & y5;
 z14 = t29 & y2;
 z15 = t42 & y9;
 z16 = t45 & y14;
 z17 = t41 & y8;




 t46 = z15 ^ z16;
 t47 = z10 ^ z11;
 t48 = z5 ^ z13;
 t49 = z9 ^ z10;
 t50 = z2 ^ z12;
 t51 = z2 ^ z5;
 t52 = z7 ^ z8;
 t53 = z0 ^ z3;
 t54 = z6 ^ z7;
 t55 = z16 ^ z17;
 t56 = z12 ^ t48;
 t57 = t50 ^ t53;
 t58 = z4 ^ t46;
 t59 = z3 ^ t54;
 t60 = t46 ^ t57;
 t61 = z14 ^ t57;
 t62 = t52 ^ t58;
 t63 = t49 ^ t58;
 t64 = z4 ^ t59;
 t65 = t61 ^ t62;
 t66 = z1 ^ t63;
 s0 = t59 ^ t63;
 s6 = t56 ^ ~t62;
 s7 = t48 ^ ~t60;
 t67 = t64 ^ t65;
 s3 = t53 ^ t66;
 s4 = t51 ^ t66;
 s5 = t47 ^ t65;
 s1 = t64 ^ ~s3;
 s2 = t55 ^ ~t67;

 q[7] = s0;
 q[6] = s1;
 q[5] = s2;
 q[4] = s3;
 q[3] = s4;
 q[2] = s5;
 q[1] = s6;
 q[0] = s7;
}

static void br_aes_ct64_ortho(uint64_t *q)
{
# 257 "dilithium3/aes256ctr.c"
 do { uint64_t a, b; a = (q[0]); b = (q[1]); (q[0]) = (a & (uint64_t)0x5555555555555555) | ((b & (uint64_t)0x5555555555555555) << (1)); (q[1]) = ((a & (uint64_t)0xAAAAAAAAAAAAAAAA) >> (1)) | (b & (uint64_t)0xAAAAAAAAAAAAAAAA); } while (0);
 do { uint64_t a, b; a = (q[2]); b = (q[3]); (q[2]) = (a & (uint64_t)0x5555555555555555) | ((b & (uint64_t)0x5555555555555555) << (1)); (q[3]) = ((a & (uint64_t)0xAAAAAAAAAAAAAAAA) >> (1)) | (b & (uint64_t)0xAAAAAAAAAAAAAAAA); } while (0);
 do { uint64_t a, b; a = (q[4]); b = (q[5]); (q[4]) = (a & (uint64_t)0x5555555555555555) | ((b & (uint64_t)0x5555555555555555) << (1)); (q[5]) = ((a & (uint64_t)0xAAAAAAAAAAAAAAAA) >> (1)) | (b & (uint64_t)0xAAAAAAAAAAAAAAAA); } while (0);
 do { uint64_t a, b; a = (q[6]); b = (q[7]); (q[6]) = (a & (uint64_t)0x5555555555555555) | ((b & (uint64_t)0x5555555555555555) << (1)); (q[7]) = ((a & (uint64_t)0xAAAAAAAAAAAAAAAA) >> (1)) | (b & (uint64_t)0xAAAAAAAAAAAAAAAA); } while (0);

 do { uint64_t a, b; a = (q[0]); b = (q[2]); (q[0]) = (a & (uint64_t)0x3333333333333333) | ((b & (uint64_t)0x3333333333333333) << (2)); (q[2]) = ((a & (uint64_t)0xCCCCCCCCCCCCCCCC) >> (2)) | (b & (uint64_t)0xCCCCCCCCCCCCCCCC); } while (0);
 do { uint64_t a, b; a = (q[1]); b = (q[3]); (q[1]) = (a & (uint64_t)0x3333333333333333) | ((b & (uint64_t)0x3333333333333333) << (2)); (q[3]) = ((a & (uint64_t)0xCCCCCCCCCCCCCCCC) >> (2)) | (b & (uint64_t)0xCCCCCCCCCCCCCCCC); } while (0);
 do { uint64_t a, b; a = (q[4]); b = (q[6]); (q[4]) = (a & (uint64_t)0x3333333333333333) | ((b & (uint64_t)0x3333333333333333) << (2)); (q[6]) = ((a & (uint64_t)0xCCCCCCCCCCCCCCCC) >> (2)) | (b & (uint64_t)0xCCCCCCCCCCCCCCCC); } while (0);
 do { uint64_t a, b; a = (q[5]); b = (q[7]); (q[5]) = (a & (uint64_t)0x3333333333333333) | ((b & (uint64_t)0x3333333333333333) << (2)); (q[7]) = ((a & (uint64_t)0xCCCCCCCCCCCCCCCC) >> (2)) | (b & (uint64_t)0xCCCCCCCCCCCCCCCC); } while (0);

 do { uint64_t a, b; a = (q[0]); b = (q[4]); (q[0]) = (a & (uint64_t)0x0F0F0F0F0F0F0F0F) | ((b & (uint64_t)0x0F0F0F0F0F0F0F0F) << (4)); (q[4]) = ((a & (uint64_t)0xF0F0F0F0F0F0F0F0) >> (4)) | (b & (uint64_t)0xF0F0F0F0F0F0F0F0); } while (0);
 do { uint64_t a, b; a = (q[1]); b = (q[5]); (q[1]) = (a & (uint64_t)0x0F0F0F0F0F0F0F0F) | ((b & (uint64_t)0x0F0F0F0F0F0F0F0F) << (4)); (q[5]) = ((a & (uint64_t)0xF0F0F0F0F0F0F0F0) >> (4)) | (b & (uint64_t)0xF0F0F0F0F0F0F0F0); } while (0);
 do { uint64_t a, b; a = (q[2]); b = (q[6]); (q[2]) = (a & (uint64_t)0x0F0F0F0F0F0F0F0F) | ((b & (uint64_t)0x0F0F0F0F0F0F0F0F) << (4)); (q[6]) = ((a & (uint64_t)0xF0F0F0F0F0F0F0F0) >> (4)) | (b & (uint64_t)0xF0F0F0F0F0F0F0F0); } while (0);
 do { uint64_t a, b; a = (q[3]); b = (q[7]); (q[3]) = (a & (uint64_t)0x0F0F0F0F0F0F0F0F) | ((b & (uint64_t)0x0F0F0F0F0F0F0F0F) << (4)); (q[7]) = ((a & (uint64_t)0xF0F0F0F0F0F0F0F0) >> (4)) | (b & (uint64_t)0xF0F0F0F0F0F0F0F0); } while (0);
}

static void br_aes_ct64_interleave_in(uint64_t *q0, uint64_t *q1, const uint32_t *w)
{
 uint64_t x0, x1, x2, x3;

 x0 = w[0];
 x1 = w[1];
 x2 = w[2];
 x3 = w[3];
 x0 |= (x0 << 16);
 x1 |= (x1 << 16);
 x2 |= (x2 << 16);
 x3 |= (x3 << 16);
 x0 &= (uint64_t)0x0000FFFF0000FFFF;
 x1 &= (uint64_t)0x0000FFFF0000FFFF;
 x2 &= (uint64_t)0x0000FFFF0000FFFF;
 x3 &= (uint64_t)0x0000FFFF0000FFFF;
 x0 |= (x0 << 8);
 x1 |= (x1 << 8);
 x2 |= (x2 << 8);
 x3 |= (x3 << 8);
 x0 &= (uint64_t)0x00FF00FF00FF00FF;
 x1 &= (uint64_t)0x00FF00FF00FF00FF;
 x2 &= (uint64_t)0x00FF00FF00FF00FF;
 x3 &= (uint64_t)0x00FF00FF00FF00FF;
 *q0 = x0 | (x2 << 8);
 *q1 = x1 | (x3 << 8);
}

static void br_aes_ct64_interleave_out(uint32_t *w, uint64_t q0, uint64_t q1)
{
 uint64_t x0, x1, x2, x3;

 x0 = q0 & (uint64_t)0x00FF00FF00FF00FF;
 x1 = q1 & (uint64_t)0x00FF00FF00FF00FF;
 x2 = (q0 >> 8) & (uint64_t)0x00FF00FF00FF00FF;
 x3 = (q1 >> 8) & (uint64_t)0x00FF00FF00FF00FF;
 x0 |= (x0 >> 8);
 x1 |= (x1 >> 8);
 x2 |= (x2 >> 8);
 x3 |= (x3 >> 8);
 x0 &= (uint64_t)0x0000FFFF0000FFFF;
 x1 &= (uint64_t)0x0000FFFF0000FFFF;
 x2 &= (uint64_t)0x0000FFFF0000FFFF;
 x3 &= (uint64_t)0x0000FFFF0000FFFF;
 w[0] = (uint32_t)x0 | (uint32_t)(x0 >> 16);
 w[1] = (uint32_t)x1 | (uint32_t)(x1 >> 16);
 w[2] = (uint32_t)x2 | (uint32_t)(x2 >> 16);
 w[3] = (uint32_t)x3 | (uint32_t)(x3 >> 16);
}

static const uint8_t Rcon[] = {
 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1B, 0x36
};

static uint32_t sub_word(uint32_t x)
{
 uint64_t q[8];

 memset(q, 0, sizeof q);
 q[0] = x;
 br_aes_ct64_ortho(q);
 br_aes_ct64_bitslice_Sbox(q);
 br_aes_ct64_ortho(q);
 return (uint32_t)q[0];
}

static void br_aes_ct64_keysched(uint64_t *comp_skey, const uint8_t *key)
{
 int i, j, k, nk, nkf;
 uint32_t tmp;
 uint32_t skey[60];

 int key_len = 32;

 nk = (int)(key_len >> 2);
 nkf = (int)((14 + 1) << 2);
 br_range_dec32le(skey, (key_len >> 2), key);
 tmp = skey[(key_len >> 2) - 1];
 for (i = nk, j = 0, k = 0; i < nkf; i ++) {
  if (j == 0) {
   tmp = (tmp << 24) | (tmp >> 8);
   tmp = sub_word(tmp) ^ Rcon[k];
  } else if (nk > 6 && j == 4) {
   tmp = sub_word(tmp);
  }
  tmp ^= skey[i - nk];
  skey[i] = tmp;
  if (++ j == nk) {
   j = 0;
   k ++;
  }
 }

 for (i = 0, j = 0; i < nkf; i += 4, j += 2) {
  uint64_t q[8];

  br_aes_ct64_interleave_in(&q[0], &q[4], skey + i);
  q[1] = q[0];
  q[2] = q[0];
  q[3] = q[0];
  q[5] = q[4];
  q[6] = q[4];
  q[7] = q[4];
  br_aes_ct64_ortho(q);
  comp_skey[j + 0] =
     (q[0] & (uint64_t)0x1111111111111111)
   | (q[1] & (uint64_t)0x2222222222222222)
   | (q[2] & (uint64_t)0x4444444444444444)
   | (q[3] & (uint64_t)0x8888888888888888);
  comp_skey[j + 1] =
     (q[4] & (uint64_t)0x1111111111111111)
   | (q[5] & (uint64_t)0x2222222222222222)
   | (q[6] & (uint64_t)0x4444444444444444)
   | (q[7] & (uint64_t)0x8888888888888888);
 }
}

static void br_aes_ct64_skey_expand(uint64_t *skey, const uint64_t *comp_skey)
{
 unsigned u, v, n;

 n = (14 + 1) << 1;
 for (u = 0, v = 0; u < n; u ++, v += 4) {
  uint64_t x0, x1, x2, x3;

  x0 = x1 = x2 = x3 = comp_skey[u];
  x0 &= (uint64_t)0x1111111111111111;
  x1 &= (uint64_t)0x2222222222222222;
  x2 &= (uint64_t)0x4444444444444444;
  x3 &= (uint64_t)0x8888888888888888;
  x1 >>= 1;
  x2 >>= 2;
  x3 >>= 3;
  skey[v + 0] = (x0 << 4) - x0;
  skey[v + 1] = (x1 << 4) - x1;
  skey[v + 2] = (x2 << 4) - x2;
  skey[v + 3] = (x3 << 4) - x3;
 }
}

static inline void add_round_key(uint64_t *q, const uint64_t *sk)
{
 q[0] ^= sk[0];
 q[1] ^= sk[1];
 q[2] ^= sk[2];
 q[3] ^= sk[3];
 q[4] ^= sk[4];
 q[5] ^= sk[5];
 q[6] ^= sk[6];
 q[7] ^= sk[7];
}

static inline void shift_rows(uint64_t *q)
{
 int i;

 for (i = 0; i < 8; i ++) {
  uint64_t x;

  x = q[i];
  q[i] = (x & (uint64_t)0x000000000000FFFF)
   | ((x & (uint64_t)0x00000000FFF00000) >> 4)
   | ((x & (uint64_t)0x00000000000F0000) << 12)
   | ((x & (uint64_t)0x0000FF0000000000) >> 8)
   | ((x & (uint64_t)0x000000FF00000000) << 8)
   | ((x & (uint64_t)0xF000000000000000) >> 12)
   | ((x & (uint64_t)0x0FFF000000000000) << 4);
 }
}

static inline uint64_t rotr32(uint64_t x)
{
 return (x << 32) | (x >> 32);
}

static inline void mix_columns(uint64_t *q)
{
 uint64_t q0, q1, q2, q3, q4, q5, q6, q7;
 uint64_t r0, r1, r2, r3, r4, r5, r6, r7;

 q0 = q[0];
 q1 = q[1];
 q2 = q[2];
 q3 = q[3];
 q4 = q[4];
 q5 = q[5];
 q6 = q[6];
 q7 = q[7];
 r0 = (q0 >> 16) | (q0 << 48);
 r1 = (q1 >> 16) | (q1 << 48);
 r2 = (q2 >> 16) | (q2 << 48);
 r3 = (q3 >> 16) | (q3 << 48);
 r4 = (q4 >> 16) | (q4 << 48);
 r5 = (q5 >> 16) | (q5 << 48);
 r6 = (q6 >> 16) | (q6 << 48);
 r7 = (q7 >> 16) | (q7 << 48);

 q[0] = q7 ^ r7 ^ r0 ^ rotr32(q0 ^ r0);
 q[1] = q0 ^ r0 ^ q7 ^ r7 ^ r1 ^ rotr32(q1 ^ r1);
 q[2] = q1 ^ r1 ^ r2 ^ rotr32(q2 ^ r2);
 q[3] = q2 ^ r2 ^ q7 ^ r7 ^ r3 ^ rotr32(q3 ^ r3);
 q[4] = q3 ^ r3 ^ q7 ^ r7 ^ r4 ^ rotr32(q4 ^ r4);
 q[5] = q4 ^ r4 ^ r5 ^ rotr32(q5 ^ r5);
 q[6] = q5 ^ r5 ^ r6 ^ rotr32(q6 ^ r6);
 q[7] = q6 ^ r6 ^ r7 ^ rotr32(q7 ^ r7);
}

static void inc4_be(uint32_t *x)
{
  *x = br_swap32(*x)+4;
  *x = br_swap32(*x);
}

static void aes_ctr4x(uint8_t out[64], uint32_t ivw[16], uint64_t sk_exp[64])
{_ssdm_SpecArrayDimSize(out, 64);_ssdm_SpecArrayDimSize(ivw, 16);_ssdm_SpecArrayDimSize(sk_exp, 64);
  uint32_t w[16];
  uint64_t q[8];
  int i;

  memcpy(w, ivw, sizeof(w));
  for (i = 0; i < 4; i++) {
    br_aes_ct64_interleave_in(&q[i], &q[i + 4], w + (i << 2));
  }
  br_aes_ct64_ortho(q);

  add_round_key(q, sk_exp);
  for (i = 1; i < 14; i++) {
    br_aes_ct64_bitslice_Sbox(q);
    shift_rows(q);
    mix_columns(q);
    add_round_key(q, sk_exp + (i << 3));
  }
  br_aes_ct64_bitslice_Sbox(q);
  shift_rows(q);
  add_round_key(q, sk_exp + 112);

  br_aes_ct64_ortho(q);
  for (i = 0; i < 4; i ++) {
    br_aes_ct64_interleave_out(w + (i << 2), q[i], q[i + 4]);
  }
  br_range_enc32le(out, w, 16);


  inc4_be(ivw+3);
  inc4_be(ivw+7);
  inc4_be(ivw+11);
  inc4_be(ivw+15);
}

static void br_aes_ct64_ctr_init(uint64_t sk_exp[120], const uint8_t *key)
{_ssdm_SpecArrayDimSize(sk_exp, 120);
 uint64_t skey[30];

 br_aes_ct64_keysched(skey, key);
 br_aes_ct64_skey_expand(sk_exp, skey);
}

static void br_aes_ct64_ctr_run(uint64_t sk_exp[120], const uint8_t *iv, uint32_t cc, uint8_t *data, size_t len)
{_ssdm_SpecArrayDimSize(sk_exp, 120);
 uint32_t ivw[16];
 size_t i;

 br_range_dec32le(ivw, 3, iv);
 memcpy(ivw + 4, ivw, 3 * sizeof(uint32_t));
 memcpy(ivw + 8, ivw, 3 * sizeof(uint32_t));
 memcpy(ivw + 12, ivw, 3 * sizeof(uint32_t));
 ivw[ 3] = br_swap32(cc);
 ivw[ 7] = br_swap32(cc + 1);
 ivw[11] = br_swap32(cc + 2);
 ivw[15] = br_swap32(cc + 3);

 while (len > 64) {
  aes_ctr4x(data, ivw, sk_exp);
  data += 64;
  len -= 64;
 }
 if(len > 0) {
  uint8_t tmp[64];
  aes_ctr4x(tmp, ivw, sk_exp);
  for(i=0;i<len;i++)
   data[i] = tmp[i];
 }
}

void pqcrystals_aes256ctr_ref_prf(uint8_t *out, size_t outlen, const uint8_t *key, const uint8_t *nonce)
{
  uint64_t sk_exp[120];

  br_aes_ct64_ctr_init(sk_exp, key);
  br_aes_ct64_ctr_run(sk_exp, nonce, 0, out, outlen);
}

void pqcrystals_aes256ctr_ref_init(aes256ctr_ctx *s, const uint8_t *key, const uint8_t *nonce)
{
  br_aes_ct64_ctr_init(s->sk_exp, key);

  br_range_dec32le(s->ivw, 3, nonce);
  memcpy(s->ivw + 4, s->ivw, 3 * sizeof(uint32_t));
  memcpy(s->ivw + 8, s->ivw, 3 * sizeof(uint32_t));
  memcpy(s->ivw + 12, s->ivw, 3 * sizeof(uint32_t));
  s->ivw[ 3] = br_swap32(0);
  s->ivw[ 7] = br_swap32(1);
  s->ivw[11] = br_swap32(2);
  s->ivw[15] = br_swap32(3);
}

void pqcrystals_aes256ctr_ref_squeezeblocks(uint8_t *out, size_t nblocks, aes256ctr_ctx *s)
{
  while (nblocks > 0) {
    aes_ctr4x(out, s->ivw, s->sk_exp);
    out += 64;
    nblocks--;
  }
}
