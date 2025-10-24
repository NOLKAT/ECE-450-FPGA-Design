set SynModuleInfo {
  {SRCNAME sobel_rgb_axis_Pipeline_init_cols MODELNAME sobel_rgb_axis_Pipeline_init_cols RTLNAME sobel_rgb_axis_sobel_rgb_axis_Pipeline_init_cols
    SUBMODULES {
      {MODELNAME sobel_rgb_axis_flow_control_loop_pipe_sequential_init RTLNAME sobel_rgb_axis_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sobel_rgb_axis_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sobel_rgb_axis_Pipeline_row_loop_col_loop MODELNAME sobel_rgb_axis_Pipeline_row_loop_col_loop RTLNAME sobel_rgb_axis_sobel_rgb_axis_Pipeline_row_loop_col_loop
    SUBMODULES {
      {MODELNAME sobel_rgb_axis_mul_8ns_9ns_16_1_1 RTLNAME sobel_rgb_axis_mul_8ns_9ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME sobel_rgb_axis_mac_muladd_8ns_7ns_16ns_16_4_1 RTLNAME sobel_rgb_axis_mac_muladd_8ns_7ns_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME sobel_rgb_axis_mac_muladd_8ns_5ns_8ns_13_4_1 RTLNAME sobel_rgb_axis_mac_muladd_8ns_5ns_8ns_13_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME sobel_rgb_axis MODELNAME sobel_rgb_axis RTLNAME sobel_rgb_axis IS_TOP 1
    SUBMODULES {
      {MODELNAME sobel_rgb_axis_mul_31ns_11ns_41_2_1 RTLNAME sobel_rgb_axis_mul_31ns_11ns_41_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME sobel_rgb_axis_line0_RAM_2P_BRAM_1R1W RTLNAME sobel_rgb_axis_line0_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sobel_rgb_axis_line1_RAM_2P_BRAM_1R1W RTLNAME sobel_rgb_axis_line1_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sobel_rgb_axis_CTRL_s_axi RTLNAME sobel_rgb_axis_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME sobel_rgb_axis_regslice_both RTLNAME sobel_rgb_axis_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
