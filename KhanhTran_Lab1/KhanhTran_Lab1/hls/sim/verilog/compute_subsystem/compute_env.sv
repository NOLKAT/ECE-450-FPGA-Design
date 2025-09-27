//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef COMPUTE_ENV__SV                                                                                   
    `define COMPUTE_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class compute_env extends uvm_env;                                                                          
                                                                                                                    
        compute_virtual_sequencer compute_virtual_sqr;                                                      
        compute_config compute_cfg;                                                                         
                                                                                                                    
        svr_pkg::svr_env#(32) env_master_svr_a;
        svr_pkg::svr_env#(32) env_master_svr_b;
        svr_pkg::svr_env#(32) env_slave_svr_c;
                                                                                                                    
        compute_reference_model   refm;                                                                         
                                                                                                                    
        compute_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(compute_env)                                                                 
        `uvm_field_object (env_master_svr_a,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_b,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_c,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (compute_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (compute_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "compute_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void compute_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        compute_cfg = compute_config::type_id::create("compute_cfg", this);                           
                                                                                                                    
        compute_cfg.port_a_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_a  = svr_env#(32)::type_id::create("env_master_svr_a", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_a*", "cfg", compute_cfg.port_a_cfg);
        compute_cfg.port_a_cfg.prt_type = svr_pkg::AP_NONE;
        compute_cfg.port_a_cfg.is_active = svr_pkg::SVR_ACTIVE;
        compute_cfg.port_a_cfg.spec_cfg = svr_pkg::NORMAL;
        compute_cfg.port_a_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        compute_cfg.port_b_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_b  = svr_env#(32)::type_id::create("env_master_svr_b", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_b*", "cfg", compute_cfg.port_b_cfg);
        compute_cfg.port_b_cfg.prt_type = svr_pkg::AP_NONE;
        compute_cfg.port_b_cfg.is_active = svr_pkg::SVR_ACTIVE;
        compute_cfg.port_b_cfg.spec_cfg = svr_pkg::NORMAL;
        compute_cfg.port_b_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        compute_cfg.port_c_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_c  = svr_env#(32)::type_id::create("env_slave_svr_c", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_c*", "cfg", compute_cfg.port_c_cfg);
        compute_cfg.port_c_cfg.prt_type = svr_pkg::AP_VLD;
        compute_cfg.port_c_cfg.is_active = svr_pkg::SVR_ACTIVE;
        compute_cfg.port_c_cfg.spec_cfg = svr_pkg::NORMAL;
        compute_cfg.port_c_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 



        refm = compute_reference_model::type_id::create("refm", this);


        uvm_config_db#(compute_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = compute_subsystem_monitor::type_id::create("subsys_mon", this);


        compute_virtual_sqr = compute_virtual_sequencer::type_id::create("compute_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void compute_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        compute_virtual_sqr.svr_port_a_sqr = env_master_svr_a.m_agt.sqr;
        env_master_svr_a.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_a_imp);
 
        compute_virtual_sqr.svr_port_b_sqr = env_master_svr_b.m_agt.sqr;
        env_master_svr_b.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_b_imp);
 
        compute_virtual_sqr.svr_port_c_sqr = env_slave_svr_c.s_agt.sqr;
        env_slave_svr_c.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_c_imp);
 
        refm.compute_cfg = compute_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task compute_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "compute_env is running", UVM_LOW)
    endtask


`endif
