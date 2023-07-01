set moduleName polyveck_use_hint
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
set C_modelName {polyveck_use_hint}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_vec_coeffs int 6 regular {array 768 { 0 3 } 0 1 }  }
	{ u_vec_coeffs int 32 regular {array 768 { 1 3 } 1 1 }  }
	{ h_vec_coeffs int 1 regular {array 768 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_vec_coeffs", "interface" : "memory", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_vec_coeffs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_vec_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_vec_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_vec_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_vec_coeffs_d0 sc_out sc_lv 6 signal 0 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 10 signal 1 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 1 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 32 signal 1 } 
	{ h_vec_coeffs_address0 sc_out sc_lv 10 signal 2 } 
	{ h_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ h_vec_coeffs_q0 sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_vec_coeffs", "role": "address0" }} , 
 	{ "name": "w_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "w_vec_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_vec_coeffs", "role": "we0" }} , 
 	{ "name": "w_vec_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "w_vec_coeffs", "role": "d0" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "h_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "h_vec_coeffs", "role": "address0" }} , 
 	{ "name": "h_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "h_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "polyveck_use_hint",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3079", "EstimateLatencyMax" : "3079",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_vec_coeffs", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	polyveck_use_hint {
		w_vec_coeffs {Type O LastRead -1 FirstWrite 5}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		h_vec_coeffs {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3079", "Max" : "3079"}
	, {"Name" : "Interval", "Min" : "3079", "Max" : "3079"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_vec_coeffs { ap_memory {  { w_vec_coeffs_address0 mem_address 1 10 }  { w_vec_coeffs_ce0 mem_ce 1 1 }  { w_vec_coeffs_we0 mem_we 1 1 }  { w_vec_coeffs_d0 mem_din 1 6 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 10 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 32 } } }
	h_vec_coeffs { ap_memory {  { h_vec_coeffs_address0 mem_address 1 10 }  { h_vec_coeffs_ce0 mem_ce 1 1 }  { h_vec_coeffs_q0 mem_dout 0 1 } } }
}
