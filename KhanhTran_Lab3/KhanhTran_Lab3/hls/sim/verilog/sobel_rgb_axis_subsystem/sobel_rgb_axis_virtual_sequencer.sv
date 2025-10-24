//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SOBEL_RGB_AXIS_VIRTUAL_SEQUENCER__SV                        
    `define SOBEL_RGB_AXIS_VIRTUAL_SEQUENCER__SV                    
                                                                       
    class sobel_rgb_axis_virtual_sequencer extends uvm_sequencer;         
        svr_master_sequencer#(34) svr_port_in_axis_sqr;
        svr_slave_sequencer#(34) svr_port_out_axis_sqr;
        axi_pkg::axi_virtual_sequencer CTRL_sqr; 
 
        function new (string name, uvm_component parent);              
            super.new(name, parent);                                   
            //`uvm_info(this.get_full_name(), "new is called", UVM_LOW)
        endfunction                                                    
                                                                       
        `uvm_component_utils_begin(sobel_rgb_axis_virtual_sequencer)      
        `uvm_component_utils_end                                       
                                                                       
    endclass

`endif
