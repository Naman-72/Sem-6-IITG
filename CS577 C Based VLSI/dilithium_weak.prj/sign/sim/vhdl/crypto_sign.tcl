
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set sm_group [add_wave_group sm(memory) -into $cinoutgroup]
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sm_q0 -into $sm_group -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sm_d0 -into $sm_group -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sm_we0 -into $sm_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sm_ce0 -into $sm_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sm_address0 -into $sm_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/ap_return -into $return_group -radix hex
set smlen_group [add_wave_group smlen(memory) -into $coutputgroup]
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/smlen_d0 -into $smlen_group -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/smlen_we0 -into $smlen_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/smlen_ce0 -into $smlen_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/smlen_address0 -into $smlen_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set sk_group [add_wave_group sk(memory) -into $cinputgroup]
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sk_q1 -into $sk_group -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sk_ce1 -into $sk_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sk_address1 -into $sk_group -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sk_q0 -into $sk_group -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sk_ce0 -into $sk_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/sk_address0 -into $sk_group -radix hex
set mlen_group [add_wave_group mlen(wire) -into $cinputgroup]
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/mlen -into $mlen_group -radix hex
set m_group [add_wave_group m(memory) -into $cinputgroup]
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/m_q0 -into $m_group -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/m_ce0 -into $m_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/m_address0 -into $m_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/ap_start -into $blocksiggroup
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/ap_done -into $blocksiggroup
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/ap_idle -into $blocksiggroup
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_crypto_sign_top/AESL_inst_crypto_sign/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_crypto_sign_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_crypto_sign_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_crypto_sign_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_crypto_sign_top/LENGTH_sm -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_top/LENGTH_smlen -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_top/LENGTH_m -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_top/LENGTH_mlen -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_top/LENGTH_sk -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_sm_group [add_wave_group sm(memory) -into $tbcinoutgroup]
add_wave /apatb_crypto_sign_top/sm_q0 -into $tb_sm_group -radix hex
add_wave /apatb_crypto_sign_top/sm_d0 -into $tb_sm_group -radix hex
add_wave /apatb_crypto_sign_top/sm_we0 -into $tb_sm_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/sm_ce0 -into $tb_sm_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/sm_address0 -into $tb_sm_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_crypto_sign_top/ap_return -into $tb_return_group -radix hex
set tb_smlen_group [add_wave_group smlen(memory) -into $tbcoutputgroup]
add_wave /apatb_crypto_sign_top/smlen_d0 -into $tb_smlen_group -radix hex
add_wave /apatb_crypto_sign_top/smlen_we0 -into $tb_smlen_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/smlen_ce0 -into $tb_smlen_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/smlen_address0 -into $tb_smlen_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_sk_group [add_wave_group sk(memory) -into $tbcinputgroup]
add_wave /apatb_crypto_sign_top/sk_q1 -into $tb_sk_group -radix hex
add_wave /apatb_crypto_sign_top/sk_ce1 -into $tb_sk_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/sk_address1 -into $tb_sk_group -radix hex
add_wave /apatb_crypto_sign_top/sk_q0 -into $tb_sk_group -radix hex
add_wave /apatb_crypto_sign_top/sk_ce0 -into $tb_sk_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/sk_address0 -into $tb_sk_group -radix hex
set tb_mlen_group [add_wave_group mlen(wire) -into $tbcinputgroup]
add_wave /apatb_crypto_sign_top/mlen -into $tb_mlen_group -radix hex
set tb_m_group [add_wave_group m(memory) -into $tbcinputgroup]
add_wave /apatb_crypto_sign_top/m_q0 -into $tb_m_group -radix hex
add_wave /apatb_crypto_sign_top/m_ce0 -into $tb_m_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_top/m_address0 -into $tb_m_group -radix hex
save_wave_config crypto_sign.wcfg
run all
quit

