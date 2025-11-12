set SynModuleInfo {
  {SRCNAME maxmul2x2 MODELNAME maxmul2x2 RTLNAME maxmul2x2 IS_TOP 1
    SUBMODULES {
      {MODELNAME maxmul2x2_mul_16s_16s_32_1_1 RTLNAME maxmul2x2_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME maxmul2x2_mac_muladd_16s_16s_32s_32_4_1 RTLNAME maxmul2x2_mac_muladd_16s_16s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME maxmul2x2_flow_control_loop_pipe RTLNAME maxmul2x2_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME maxmul2x2_flow_control_loop_pipe_U}
    }
  }
}
