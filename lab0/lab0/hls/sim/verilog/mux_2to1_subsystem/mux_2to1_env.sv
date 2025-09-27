//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef MUX_2TO1_ENV__SV                                                                                   
    `define MUX_2TO1_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class mux_2to1_env extends uvm_env;                                                                          
                                                                                                                    
        mux_2to1_virtual_sequencer mux_2to1_virtual_sqr;                                                      
        mux_2to1_config mux_2to1_cfg;                                                                         
                                                                                                                    
        svr_pkg::svr_env#(1) env_master_svr_a;
        svr_pkg::svr_env#(1) env_master_svr_b;
        svr_pkg::svr_env#(1) env_master_svr_sel;
        svr_pkg::svr_env#(1) env_slave_svr_y;
                                                                                                                    
        mux_2to1_reference_model   refm;                                                                         
                                                                                                                    
        mux_2to1_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(mux_2to1_env)                                                                 
        `uvm_field_object (env_master_svr_a,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_b,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_sel,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_y,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (mux_2to1_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (mux_2to1_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "mux_2to1_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void mux_2to1_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        mux_2to1_cfg = mux_2to1_config::type_id::create("mux_2to1_cfg", this);                           
                                                                                                                    
        mux_2to1_cfg.port_a_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_a  = svr_env#(1)::type_id::create("env_master_svr_a", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_a*", "cfg", mux_2to1_cfg.port_a_cfg);
        mux_2to1_cfg.port_a_cfg.prt_type = svr_pkg::AP_NONE;
        mux_2to1_cfg.port_a_cfg.is_active = svr_pkg::SVR_ACTIVE;
        mux_2to1_cfg.port_a_cfg.spec_cfg = svr_pkg::NORMAL;
        mux_2to1_cfg.port_a_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        mux_2to1_cfg.port_b_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_b  = svr_env#(1)::type_id::create("env_master_svr_b", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_b*", "cfg", mux_2to1_cfg.port_b_cfg);
        mux_2to1_cfg.port_b_cfg.prt_type = svr_pkg::AP_NONE;
        mux_2to1_cfg.port_b_cfg.is_active = svr_pkg::SVR_ACTIVE;
        mux_2to1_cfg.port_b_cfg.spec_cfg = svr_pkg::NORMAL;
        mux_2to1_cfg.port_b_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        mux_2to1_cfg.port_sel_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_sel  = svr_env#(1)::type_id::create("env_master_svr_sel", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_sel*", "cfg", mux_2to1_cfg.port_sel_cfg);
        mux_2to1_cfg.port_sel_cfg.prt_type = svr_pkg::AP_NONE;
        mux_2to1_cfg.port_sel_cfg.is_active = svr_pkg::SVR_ACTIVE;
        mux_2to1_cfg.port_sel_cfg.spec_cfg = svr_pkg::NORMAL;
        mux_2to1_cfg.port_sel_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        mux_2to1_cfg.port_y_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_y  = svr_env#(1)::type_id::create("env_slave_svr_y", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_y*", "cfg", mux_2to1_cfg.port_y_cfg);
        mux_2to1_cfg.port_y_cfg.prt_type = svr_pkg::AP_NONE;
        mux_2to1_cfg.port_y_cfg.is_active = svr_pkg::SVR_ACTIVE;
        mux_2to1_cfg.port_y_cfg.spec_cfg = svr_pkg::NORMAL;
        mux_2to1_cfg.port_y_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 



        refm = mux_2to1_reference_model::type_id::create("refm", this);


        uvm_config_db#(mux_2to1_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = mux_2to1_subsystem_monitor::type_id::create("subsys_mon", this);


        mux_2to1_virtual_sqr = mux_2to1_virtual_sequencer::type_id::create("mux_2to1_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void mux_2to1_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        mux_2to1_virtual_sqr.svr_port_a_sqr = env_master_svr_a.m_agt.sqr;
        env_master_svr_a.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_a_imp);
 
        mux_2to1_virtual_sqr.svr_port_b_sqr = env_master_svr_b.m_agt.sqr;
        env_master_svr_b.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_b_imp);
 
        mux_2to1_virtual_sqr.svr_port_sel_sqr = env_master_svr_sel.m_agt.sqr;
        env_master_svr_sel.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_sel_imp);
 
        mux_2to1_virtual_sqr.svr_port_y_sqr = env_slave_svr_y.s_agt.sqr;
        env_slave_svr_y.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_y_imp);
 
        refm.mux_2to1_cfg = mux_2to1_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task mux_2to1_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "mux_2to1_env is running", UVM_LOW)
    endtask


`endif
