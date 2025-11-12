//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef MAXMUL2X2_VIRTUAL_SEQUENCER__SV                        
    `define MAXMUL2X2_VIRTUAL_SEQUENCER__SV                    
                                                                       
    class maxmul2x2_virtual_sequencer extends uvm_sequencer;         
        svr_master_sequencer#(16) svr_port_a00_sqr;
        svr_master_sequencer#(16) svr_port_a01_sqr;
        svr_master_sequencer#(16) svr_port_a10_sqr;
        svr_master_sequencer#(16) svr_port_a11_sqr;
        svr_master_sequencer#(16) svr_port_b00_sqr;
        svr_master_sequencer#(16) svr_port_b01_sqr;
        svr_master_sequencer#(16) svr_port_b10_sqr;
        svr_master_sequencer#(16) svr_port_b11_sqr;
        svr_slave_sequencer#(32) svr_port_c00_sqr;
        svr_slave_sequencer#(32) svr_port_c01_sqr;
        svr_slave_sequencer#(32) svr_port_c10_sqr;
        svr_slave_sequencer#(32) svr_port_c11_sqr;
 
        function new (string name, uvm_component parent);              
            super.new(name, parent);                                   
            //`uvm_info(this.get_full_name(), "new is called", UVM_LOW)
        endfunction                                                    
                                                                       
        `uvm_component_utils_begin(maxmul2x2_virtual_sequencer)      
        `uvm_component_utils_end                                       
                                                                       
    endclass

`endif
