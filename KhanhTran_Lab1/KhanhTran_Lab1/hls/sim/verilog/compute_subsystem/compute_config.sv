//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef COMPUTE_CONFIG__SV                        
    `define COMPUTE_CONFIG__SV                    
                                                            
    class compute_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        svr_pkg::svr_config port_a_cfg;
        svr_pkg::svr_config port_b_cfg;
        svr_pkg::svr_config port_c_cfg;

        `uvm_object_utils_begin(compute_config)         
        `uvm_field_object(port_a_cfg, UVM_DEFAULT)
        `uvm_field_object(port_b_cfg, UVM_DEFAULT)
        `uvm_field_object(port_c_cfg, UVM_DEFAULT)
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "compute_config");
            super.new(name);                                
            port_a_cfg = svr_pkg::svr_config::type_id::create("port_a_cfg");
            port_b_cfg = svr_pkg::svr_config::type_id::create("port_b_cfg");
            port_c_cfg = svr_pkg::svr_config::type_id::create("port_c_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
