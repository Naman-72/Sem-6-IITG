
set TopModule "crypto_sign_open"
set ClockPeriod "15.000000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7a200t:fbg676:-2"
set SourceFiles {sc {} c {../../sign.c ../../rounding.c ../../rng.c ../../reduce.c ../../polyvec.c ../../poly.c ../../packing.c ../../ntt.c ../../fips202.c ../../aes.c}}
set SourceFlags {sc {} c {{} {} {} {} {} {} {} {} {} {}}}
set DirectiveFile {/home/dss545/vivado_hls/CRYSTALS-Dilithium/Optimized_Implementation/Dilithium_weak/dilithium_weak.prj/sign_open_pipeline/sign_open_pipeline.directive}
set TBFiles {verilog ../../newtest_sign.c bc ../../newtest_sign.c vhdl ../../newtest_sign.c sc ../../newtest_sign.c cas ../../newtest_sign.c c {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/artix7/artix7 xilinx/artix7/artix7_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "sign_open_pipeline.aps"
set AvePath "../.."
set HPFPO "0"