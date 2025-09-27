//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef FIR16_CONFIG__SV                        
    `define FIR16_CONFIG__SV                    
                                                            
    class fir16_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      

        `uvm_object_utils_begin(fir16_config)         
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "fir16_config");
            super.new(name);                                
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
