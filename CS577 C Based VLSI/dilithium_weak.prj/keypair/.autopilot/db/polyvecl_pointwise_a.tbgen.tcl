set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3588", "EstimateLatencyMax" : "3588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 6 FirstWrite 5}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3588", "Max" : "3588"}
	, {"Name" : "Interval", "Min" : "3588", "Max" : "3588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 3 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4356", "EstimateLatencyMax" : "4356",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 4 FirstWrite 4}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4356", "Max" : "4356"}
	, {"Name" : "Interval", "Min" : "4356", "Max" : "4356"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 3 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4356", "EstimateLatencyMax" : "4356",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 4 FirstWrite 4}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4356", "Max" : "4356"}
	, {"Name" : "Interval", "Min" : "4356", "Max" : "4356"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3716", "EstimateLatencyMax" : "3716",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 5 FirstWrite 4}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3716", "Max" : "3716"}
	, {"Name" : "Interval", "Min" : "3716", "Max" : "3716"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3588", "EstimateLatencyMax" : "3588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 6 FirstWrite 5}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3588", "Max" : "3588"}
	, {"Name" : "Interval", "Min" : "3588", "Max" : "3588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3588", "EstimateLatencyMax" : "3588",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 8 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3588", "Max" : "3588"}
	, {"Name" : "Interval", "Min" : "3588", "Max" : "3588"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3589", "EstimateLatencyMax" : "3589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_add_1_fu_342"}],
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_poly_add_1_fu_342", "Port" : "c_coeffs"}]},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_add_1_fu_342", "Parent" : "0",
		"CDFG" : "poly_add_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "257", "EstimateLatencyMax" : "257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 12 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}
	poly_add_1 {
		c_coeffs {Type IO LastRead 9 FirstWrite 9}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3589", "Max" : "3589"}
	, {"Name" : "Interval", "Min" : "3589", "Max" : "3589"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3589", "EstimateLatencyMax" : "3589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_add_1_fu_494"}],
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_poly_add_1_fu_494", "Port" : "c_coeffs"}]},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_add_1_fu_494", "Parent" : "0",
		"CDFG" : "poly_add_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "257", "EstimateLatencyMax" : "257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reduce32_fu_502", "Parent" : "0",
		"CDFG" : "reduce32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reduce32_fu_507", "Parent" : "0",
		"CDFG" : "reduce32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 20 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}
	poly_add_1 {
		c_coeffs {Type IO LastRead 17 FirstWrite 17}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 17 FirstWrite -1}}
	reduce32 {
		a {Type I LastRead 0 FirstWrite -1}}
	reduce32 {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3589", "Max" : "3589"}
	, {"Name" : "Interval", "Min" : "3589", "Max" : "3589"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3589", "EstimateLatencyMax" : "3589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_add_1_fu_814"}],
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_poly_add_1_fu_814", "Port" : "c_coeffs"}]},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_add_1_fu_814", "Parent" : "0",
		"CDFG" : "poly_add_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "257", "EstimateLatencyMax" : "257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reduce32_fu_822", "Parent" : "0",
		"CDFG" : "reduce32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reduce32_fu_827", "Parent" : "0",
		"CDFG" : "reduce32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 36 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}
	poly_add_1 {
		c_coeffs {Type IO LastRead 33 FirstWrite 33}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 33 FirstWrite -1}}
	reduce32 {
		a {Type I LastRead 0 FirstWrite -1}}
	reduce32 {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3589", "Max" : "3589"}
	, {"Name" : "Interval", "Min" : "3589", "Max" : "3589"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3589", "EstimateLatencyMax" : "3589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_add_1_fu_1454"}],
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_poly_add_1_fu_1454", "Port" : "c_coeffs"}]},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_add_1_fu_1454", "Parent" : "0",
		"CDFG" : "poly_add_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "257", "EstimateLatencyMax" : "257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reduce32_fu_1462", "Parent" : "0",
		"CDFG" : "reduce32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reduce32_fu_1467", "Parent" : "0",
		"CDFG" : "reduce32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 68 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}
	poly_add_1 {
		c_coeffs {Type IO LastRead 65 FirstWrite 65}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 65 FirstWrite -1}}
	reduce32 {
		a {Type I LastRead 0 FirstWrite -1}}
	reduce32 {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3589", "Max" : "3589"}
	, {"Name" : "Interval", "Min" : "3589", "Max" : "3589"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3591", "EstimateLatencyMax" : "3591",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 5 FirstWrite 4}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3591", "Max" : "3591"}
	, {"Name" : "Interval", "Min" : "3591", "Max" : "3591"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3591", "EstimateLatencyMax" : "3591",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 6 FirstWrite 4}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3591", "Max" : "3591"}
	, {"Name" : "Interval", "Min" : "3591", "Max" : "3591"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3590", "EstimateLatencyMax" : "3590",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 7 FirstWrite 5}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3590", "Max" : "3590"}
	, {"Name" : "Interval", "Min" : "3590", "Max" : "3590"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3590", "EstimateLatencyMax" : "3590",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 9 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3590", "Max" : "3590"}
	, {"Name" : "Interval", "Min" : "3590", "Max" : "3590"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3591", "EstimateLatencyMax" : "3591",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_add_1_fu_357"}],
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_poly_add_1_fu_357", "Port" : "c_coeffs"}]},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_add_1_fu_357", "Parent" : "0",
		"CDFG" : "poly_add_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 12 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}
	poly_add_1 {
		c_coeffs {Type IO LastRead 9 FirstWrite 9}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3591", "Max" : "3591"}
	, {"Name" : "Interval", "Min" : "3591", "Max" : "3591"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3622", "EstimateLatencyMax" : "3622",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_add_1_fu_509"}],
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_poly_add_1_fu_509", "Port" : "c_coeffs"}]},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_add_1_fu_509", "Parent" : "0",
		"CDFG" : "poly_add_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reduce32_fu_517", "Parent" : "0",
		"CDFG" : "reduce32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 20 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}
	poly_add_1 {
		c_coeffs {Type IO LastRead 17 FirstWrite 17}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 17 FirstWrite -1}}
	reduce32 {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3622", "Max" : "3622"}
	, {"Name" : "Interval", "Min" : "3622", "Max" : "3622"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3654", "EstimateLatencyMax" : "3654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_add_1_fu_829"}],
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_poly_add_1_fu_829", "Port" : "c_coeffs"}]},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_add_1_fu_829", "Parent" : "0",
		"CDFG" : "poly_add_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reduce32_fu_837", "Parent" : "0",
		"CDFG" : "reduce32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 36 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}
	poly_add_1 {
		c_coeffs {Type IO LastRead 33 FirstWrite 33}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 33 FirstWrite -1}}
	reduce32 {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3654", "Max" : "3654"}
	, {"Name" : "Interval", "Min" : "3654", "Max" : "3654"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
set moduleName polyvecl_pointwise_a
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
set C_modelName {polyvecl_pointwise_a}
set C_modelType { void 0 }
set C_modelArgList {
	{ w_coeffs int 32 regular {array 768 { 2 2 } 1 1 }  }
	{ w_coeffs_offset int 2 regular  }
	{ u_vec_coeffs int 23 regular {array 1536 { 1 3 } 1 1 }  }
	{ v_vec_coeffs int 32 regular {array 512 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "w_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "w_coeffs_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "u_vec_coeffs", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "v_vec_coeffs", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_coeffs_address0 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we0 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d0 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q0 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_address1 sc_out sc_lv 10 signal 0 } 
	{ w_coeffs_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_we1 sc_out sc_logic 1 signal 0 } 
	{ w_coeffs_d1 sc_out sc_lv 32 signal 0 } 
	{ w_coeffs_q1 sc_in sc_lv 32 signal 0 } 
	{ w_coeffs_offset sc_in sc_lv 2 signal 1 } 
	{ u_vec_coeffs_address0 sc_out sc_lv 11 signal 2 } 
	{ u_vec_coeffs_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_vec_coeffs_q0 sc_in sc_lv 23 signal 2 } 
	{ v_vec_coeffs_address0 sc_out sc_lv 9 signal 3 } 
	{ v_vec_coeffs_ce0 sc_out sc_logic 1 signal 3 } 
	{ v_vec_coeffs_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address0" }} , 
 	{ "name": "w_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce0" }} , 
 	{ "name": "w_coeffs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we0" }} , 
 	{ "name": "w_coeffs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d0" }} , 
 	{ "name": "w_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q0" }} , 
 	{ "name": "w_coeffs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_coeffs", "role": "address1" }} , 
 	{ "name": "w_coeffs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "ce1" }} , 
 	{ "name": "w_coeffs_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_coeffs", "role": "we1" }} , 
 	{ "name": "w_coeffs_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "d1" }} , 
 	{ "name": "w_coeffs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_coeffs", "role": "q1" }} , 
 	{ "name": "w_coeffs_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w_coeffs_offset", "role": "default" }} , 
 	{ "name": "u_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "address0" }} , 
 	{ "name": "u_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "u_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "u_vec_coeffs", "role": "q0" }} , 
 	{ "name": "v_vec_coeffs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "address0" }} , 
 	{ "name": "v_vec_coeffs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "ce0" }} , 
 	{ "name": "v_vec_coeffs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v_vec_coeffs", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "polyvecl_pointwise_a",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3718", "EstimateLatencyMax" : "3718",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_poly_add_1_fu_1469"}],
		"Port" : [
			{"Name" : "w_coeffs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_poly_add_1_fu_1469", "Port" : "c_coeffs"}]},
			{"Name" : "w_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_vec_coeffs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_vec_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_coeffs_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_poly_add_1_fu_1469", "Parent" : "0",
		"CDFG" : "poly_add_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "c_coeffs", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a_coeffs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_coeffs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reduce32_fu_1477", "Parent" : "0",
		"CDFG" : "reduce32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	polyvecl_pointwise_a {
		w_coeffs {Type IO LastRead 68 FirstWrite 6}
		w_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		u_vec_coeffs {Type I LastRead 2 FirstWrite -1}
		v_vec_coeffs {Type I LastRead 2 FirstWrite -1}}
	poly_add_1 {
		c_coeffs {Type IO LastRead 65 FirstWrite 65}
		a_coeffs_offset {Type I LastRead 0 FirstWrite -1}
		b_coeffs {Type I LastRead 65 FirstWrite -1}}
	reduce32 {
		a {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3718", "Max" : "3718"}
	, {"Name" : "Interval", "Min" : "3718", "Max" : "3718"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w_coeffs { ap_memory {  { w_coeffs_address0 mem_address 1 10 }  { w_coeffs_ce0 mem_ce 1 1 }  { w_coeffs_we0 mem_we 1 1 }  { w_coeffs_d0 mem_din 1 32 }  { w_coeffs_q0 mem_dout 0 32 }  { w_coeffs_address1 mem_address 1 10 }  { w_coeffs_ce1 mem_ce 1 1 }  { w_coeffs_we1 mem_we 1 1 }  { w_coeffs_d1 mem_din 1 32 }  { w_coeffs_q1 mem_dout 0 32 } } }
	w_coeffs_offset { ap_none {  { w_coeffs_offset in_data 0 2 } } }
	u_vec_coeffs { ap_memory {  { u_vec_coeffs_address0 mem_address 1 11 }  { u_vec_coeffs_ce0 mem_ce 1 1 }  { u_vec_coeffs_q0 mem_dout 0 23 } } }
	v_vec_coeffs { ap_memory {  { v_vec_coeffs_address0 mem_address 1 9 }  { v_vec_coeffs_ce0 mem_ce 1 1 }  { v_vec_coeffs_q0 mem_dout 0 32 } } }
}
