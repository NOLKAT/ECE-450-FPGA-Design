//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef MAXMUL2X2_CONFIG__SV                        
    `define MAXMUL2X2_CONFIG__SV                    
                                                            
    class maxmul2x2_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        svr_pkg::svr_config port_a00_cfg;
        svr_pkg::svr_config port_a01_cfg;
        svr_pkg::svr_config port_a10_cfg;
        svr_pkg::svr_config port_a11_cfg;
        svr_pkg::svr_config port_b00_cfg;
        svr_pkg::svr_config port_b01_cfg;
        svr_pkg::svr_config port_b10_cfg;
        svr_pkg::svr_config port_b11_cfg;
        svr_pkg::svr_config port_c00_cfg;
        svr_pkg::svr_config port_c01_cfg;
        svr_pkg::svr_config port_c10_cfg;
        svr_pkg::svr_config port_c11_cfg;

        `uvm_object_utils_begin(maxmul2x2_config)         
        `uvm_field_object(port_a00_cfg, UVM_DEFAULT)
        `uvm_field_object(port_a01_cfg, UVM_DEFAULT)
        `uvm_field_object(port_a10_cfg, UVM_DEFAULT)
        `uvm_field_object(port_a11_cfg, UVM_DEFAULT)
        `uvm_field_object(port_b00_cfg, UVM_DEFAULT)
        `uvm_field_object(port_b01_cfg, UVM_DEFAULT)
        `uvm_field_object(port_b10_cfg, UVM_DEFAULT)
        `uvm_field_object(port_b11_cfg, UVM_DEFAULT)
        `uvm_field_object(port_c00_cfg, UVM_DEFAULT)
        `uvm_field_object(port_c01_cfg, UVM_DEFAULT)
        `uvm_field_object(port_c10_cfg, UVM_DEFAULT)
        `uvm_field_object(port_c11_cfg, UVM_DEFAULT)
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "maxmul2x2_config");
            super.new(name);                                
            port_a00_cfg = svr_pkg::svr_config::type_id::create("port_a00_cfg");
            port_a01_cfg = svr_pkg::svr_config::type_id::create("port_a01_cfg");
            port_a10_cfg = svr_pkg::svr_config::type_id::create("port_a10_cfg");
            port_a11_cfg = svr_pkg::svr_config::type_id::create("port_a11_cfg");
            port_b00_cfg = svr_pkg::svr_config::type_id::create("port_b00_cfg");
            port_b01_cfg = svr_pkg::svr_config::type_id::create("port_b01_cfg");
            port_b10_cfg = svr_pkg::svr_config::type_id::create("port_b10_cfg");
            port_b11_cfg = svr_pkg::svr_config::type_id::create("port_b11_cfg");
            port_c00_cfg = svr_pkg::svr_config::type_id::create("port_c00_cfg");
            port_c01_cfg = svr_pkg::svr_config::type_id::create("port_c01_cfg");
            port_c10_cfg = svr_pkg::svr_config::type_id::create("port_c10_cfg");
            port_c11_cfg = svr_pkg::svr_config::type_id::create("port_c11_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
