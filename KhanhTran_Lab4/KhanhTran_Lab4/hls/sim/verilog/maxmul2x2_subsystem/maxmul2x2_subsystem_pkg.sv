//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef MAXMUL2X2_SUBSYSTEM_PKG__SV          
    `define MAXMUL2X2_SUBSYSTEM_PKG__SV      
                                                     
    package maxmul2x2_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import svr_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "maxmul2x2_config.sv"           
        `include "maxmul2x2_reference_model.sv"  
        `include "maxmul2x2_scoreboard.sv"       
        `include "maxmul2x2_subsystem_monitor.sv"
        `include "maxmul2x2_virtual_sequencer.sv"
        `include "maxmul2x2_pkg_sequence_lib.sv" 
        `include "maxmul2x2_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
