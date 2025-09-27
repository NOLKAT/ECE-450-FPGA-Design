//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef FIR16_ENV__SV                                                                                   
    `define FIR16_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class fir16_env extends uvm_env;                                                                          
                                                                                                                    
        fir16_virtual_sequencer fir16_virtual_sqr;                                                      
        fir16_config fir16_cfg;                                                                         
                                                                                                                    
                                                                                                                    
        fir16_reference_model   refm;                                                                         
                                                                                                                    
        fir16_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(fir16_env)                                                                 
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (fir16_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (fir16_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "fir16_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void fir16_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        fir16_cfg = fir16_config::type_id::create("fir16_cfg", this);                           
                                                                                                                    



        refm = fir16_reference_model::type_id::create("refm", this);


        uvm_config_db#(fir16_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = fir16_subsystem_monitor::type_id::create("subsys_mon", this);


        fir16_virtual_sqr = fir16_virtual_sequencer::type_id::create("fir16_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void fir16_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        refm.fir16_cfg = fir16_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task fir16_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "fir16_env is running", UVM_LOW)
    endtask


`endif
