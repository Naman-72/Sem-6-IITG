set moduleName invntt_frominvmont_1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {invntt_frominvmont.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ p int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ p_offset int 2 regular  }
	{ loop2_max_1 int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "loop2_max_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_address0 sc_out sc_lv 10 signal 0 } 
	{ p_ce0 sc_out sc_logic 1 signal 0 } 
	{ p_we0 sc_out sc_logic 1 signal 0 } 
	{ p_d0 sc_out sc_lv 32 signal 0 } 
	{ p_q0 sc_in sc_lv 32 signal 0 } 
	{ p_address1 sc_out sc_lv 10 signal 0 } 
	{ p_ce1 sc_out sc_logic 1 signal 0 } 
	{ p_we1 sc_out sc_logic 1 signal 0 } 
	{ p_d1 sc_out sc_lv 32 signal 0 } 
	{ p_q1 sc_in sc_lv 32 signal 0 } 
	{ p_offset sc_in sc_lv 2 signal 1 } 
	{ loop2_max_1_i sc_in sc_lv 32 signal 2 } 
	{ loop2_max_1_o sc_out sc_lv 32 signal 2 } 
	{ loop2_max_1_o_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address0" }} , 
 	{ "name": "p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce0" }} , 
 	{ "name": "p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we0" }} , 
 	{ "name": "p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d0" }} , 
 	{ "name": "p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q0" }} , 
 	{ "name": "p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p", "role": "address1" }} , 
 	{ "name": "p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "ce1" }} , 
 	{ "name": "p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p", "role": "we1" }} , 
 	{ "name": "p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "d1" }} , 
 	{ "name": "p_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p", "role": "q1" }} , 
 	{ "name": "p_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_offset", "role": "default" }} , 
 	{ "name": "loop2_max_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "loop2_max_1", "role": "i" }} , 
 	{ "name": "loop2_max_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "loop2_max_1", "role": "o" }} , 
 	{ "name": "loop2_max_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "loop2_max_1", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "invntt_frominvmont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "loop2_max_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zetas_inv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zetas_inv_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	invntt_frominvmont_1 {
		p {Type IO LastRead 7 FirstWrite 5}
		p_offset {Type I LastRead 0 FirstWrite -1}
		loop2_max_1 {Type IO LastRead 5 FirstWrite 4}
		zetas_inv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p { ap_memory {  { p_address0 mem_address 1 10 }  { p_ce0 mem_ce 1 1 }  { p_we0 mem_we 1 1 }  { p_d0 mem_din 1 32 }  { p_q0 mem_dout 0 32 }  { p_address1 mem_address 1 10 }  { p_ce1 mem_ce 1 1 }  { p_we1 mem_we 1 1 }  { p_d1 mem_din 1 32 }  { p_q1 mem_dout 0 32 } } }
	p_offset { ap_none {  { p_offset in_data 0 2 } } }
	loop2_max_1 { ap_ovld {  { loop2_max_1_i in_data 0 32 }  { loop2_max_1_o out_data 1 32 }  { loop2_max_1_o_ap_vld out_vld 1 1 } } }
}
