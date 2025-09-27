set SynModuleInfo {
  {SRCNAME compute_Pipeline_loop_i MODELNAME compute_Pipeline_loop_i RTLNAME compute_compute_Pipeline_loop_i
    SUBMODULES {
      {MODELNAME compute_mul_64s_64s_64_1_1 RTLNAME compute_mul_64s_64s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute_flow_control_loop_pipe_sequential_init RTLNAME compute_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME compute_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute MODELNAME compute RTLNAME compute IS_TOP 1
    SUBMODULES {
      {MODELNAME compute_mul_32s_32s_64_2_1 RTLNAME compute_mul_32s_32s_64_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
}
