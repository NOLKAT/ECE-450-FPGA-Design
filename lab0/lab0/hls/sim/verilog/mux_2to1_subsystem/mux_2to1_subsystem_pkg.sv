//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef MUX_2TO1_SUBSYSTEM_PKG__SV          
    `define MUX_2TO1_SUBSYSTEM_PKG__SV      
                                                     
    package mux_2to1_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import svr_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "mux_2to1_config.sv"           
        `include "mux_2to1_reference_model.sv"  
        `include "mux_2to1_scoreboard.sv"       
        `include "mux_2to1_subsystem_monitor.sv"
        `include "mux_2to1_virtual_sequencer.sv"
        `include "mux_2to1_pkg_sequence_lib.sv" 
        `include "mux_2to1_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
