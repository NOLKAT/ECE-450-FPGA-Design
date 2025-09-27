//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef COMPUTE_SUBSYSTEM_PKG__SV          
    `define COMPUTE_SUBSYSTEM_PKG__SV      
                                                     
    package compute_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import svr_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "compute_config.sv"           
        `include "compute_reference_model.sv"  
        `include "compute_scoreboard.sv"       
        `include "compute_subsystem_monitor.sv"
        `include "compute_virtual_sequencer.sv"
        `include "compute_pkg_sequence_lib.sv" 
        `include "compute_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
