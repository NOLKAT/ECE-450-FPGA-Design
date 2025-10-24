//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef SOBEL_RGB_AXIS_SUBSYSTEM_PKG__SV          
    `define SOBEL_RGB_AXIS_SUBSYSTEM_PKG__SV      
                                                     
    package sobel_rgb_axis_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import svr_pkg::*;
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "sobel_rgb_axis_config.sv"           
        `include "sobel_rgb_axis_reference_model.sv"  
        `include "sobel_rgb_axis_scoreboard.sv"       
        `include "sobel_rgb_axis_subsystem_monitor.sv"
        `include "sobel_rgb_axis_virtual_sequencer.sv"
        `include "sobel_rgb_axis_pkg_sequence_lib.sv" 
        `include "sobel_rgb_axis_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
