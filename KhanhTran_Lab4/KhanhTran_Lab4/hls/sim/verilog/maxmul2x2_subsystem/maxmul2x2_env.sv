//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef MAXMUL2X2_ENV__SV                                                                                   
    `define MAXMUL2X2_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class maxmul2x2_env extends uvm_env;                                                                          
                                                                                                                    
        maxmul2x2_virtual_sequencer maxmul2x2_virtual_sqr;                                                      
        maxmul2x2_config maxmul2x2_cfg;                                                                         
                                                                                                                    
        svr_pkg::svr_env#(16) env_master_svr_a00;
        svr_pkg::svr_env#(16) env_master_svr_a01;
        svr_pkg::svr_env#(16) env_master_svr_a10;
        svr_pkg::svr_env#(16) env_master_svr_a11;
        svr_pkg::svr_env#(16) env_master_svr_b00;
        svr_pkg::svr_env#(16) env_master_svr_b01;
        svr_pkg::svr_env#(16) env_master_svr_b10;
        svr_pkg::svr_env#(16) env_master_svr_b11;
        svr_pkg::svr_env#(32) env_slave_svr_c00;
        svr_pkg::svr_env#(32) env_slave_svr_c01;
        svr_pkg::svr_env#(32) env_slave_svr_c10;
        svr_pkg::svr_env#(32) env_slave_svr_c11;
                                                                                                                    
        maxmul2x2_reference_model   refm;                                                                         
                                                                                                                    
        maxmul2x2_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(maxmul2x2_env)                                                                 
        `uvm_field_object (env_master_svr_a00,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_a01,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_a10,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_a11,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_b00,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_b01,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_b10,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_b11,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_c00,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_c01,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_c10,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_c11,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (maxmul2x2_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (maxmul2x2_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "maxmul2x2_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void maxmul2x2_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        maxmul2x2_cfg = maxmul2x2_config::type_id::create("maxmul2x2_cfg", this);                           
                                                                                                                    
        maxmul2x2_cfg.port_a00_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_a00  = svr_env#(16)::type_id::create("env_master_svr_a00", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_a00*", "cfg", maxmul2x2_cfg.port_a00_cfg);
        maxmul2x2_cfg.port_a00_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_a00_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_a00_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_a00_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_a01_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_a01  = svr_env#(16)::type_id::create("env_master_svr_a01", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_a01*", "cfg", maxmul2x2_cfg.port_a01_cfg);
        maxmul2x2_cfg.port_a01_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_a01_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_a01_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_a01_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_a10_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_a10  = svr_env#(16)::type_id::create("env_master_svr_a10", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_a10*", "cfg", maxmul2x2_cfg.port_a10_cfg);
        maxmul2x2_cfg.port_a10_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_a10_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_a10_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_a10_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_a11_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_a11  = svr_env#(16)::type_id::create("env_master_svr_a11", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_a11*", "cfg", maxmul2x2_cfg.port_a11_cfg);
        maxmul2x2_cfg.port_a11_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_a11_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_a11_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_a11_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_b00_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_b00  = svr_env#(16)::type_id::create("env_master_svr_b00", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_b00*", "cfg", maxmul2x2_cfg.port_b00_cfg);
        maxmul2x2_cfg.port_b00_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_b00_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_b00_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_b00_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_b01_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_b01  = svr_env#(16)::type_id::create("env_master_svr_b01", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_b01*", "cfg", maxmul2x2_cfg.port_b01_cfg);
        maxmul2x2_cfg.port_b01_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_b01_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_b01_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_b01_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_b10_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_b10  = svr_env#(16)::type_id::create("env_master_svr_b10", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_b10*", "cfg", maxmul2x2_cfg.port_b10_cfg);
        maxmul2x2_cfg.port_b10_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_b10_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_b10_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_b10_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_b11_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_b11  = svr_env#(16)::type_id::create("env_master_svr_b11", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_b11*", "cfg", maxmul2x2_cfg.port_b11_cfg);
        maxmul2x2_cfg.port_b11_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_b11_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_b11_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_b11_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_c00_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_c00  = svr_env#(32)::type_id::create("env_slave_svr_c00", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_c00*", "cfg", maxmul2x2_cfg.port_c00_cfg);
        maxmul2x2_cfg.port_c00_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_c00_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_c00_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_c00_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_c01_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_c01  = svr_env#(32)::type_id::create("env_slave_svr_c01", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_c01*", "cfg", maxmul2x2_cfg.port_c01_cfg);
        maxmul2x2_cfg.port_c01_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_c01_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_c01_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_c01_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_c10_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_c10  = svr_env#(32)::type_id::create("env_slave_svr_c10", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_c10*", "cfg", maxmul2x2_cfg.port_c10_cfg);
        maxmul2x2_cfg.port_c10_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_c10_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_c10_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_c10_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 
        maxmul2x2_cfg.port_c11_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_c11  = svr_env#(32)::type_id::create("env_slave_svr_c11", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_c11*", "cfg", maxmul2x2_cfg.port_c11_cfg);
        maxmul2x2_cfg.port_c11_cfg.prt_type = svr_pkg::AP_NONE;
        maxmul2x2_cfg.port_c11_cfg.is_active = svr_pkg::SVR_ACTIVE;
        maxmul2x2_cfg.port_c11_cfg.spec_cfg = svr_pkg::NORMAL;
        maxmul2x2_cfg.port_c11_cfg.reset_level = svr_pkg::RESET_LEVEL_HIGH;
 



        refm = maxmul2x2_reference_model::type_id::create("refm", this);


        uvm_config_db#(maxmul2x2_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = maxmul2x2_subsystem_monitor::type_id::create("subsys_mon", this);


        maxmul2x2_virtual_sqr = maxmul2x2_virtual_sequencer::type_id::create("maxmul2x2_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void maxmul2x2_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        maxmul2x2_virtual_sqr.svr_port_a00_sqr = env_master_svr_a00.m_agt.sqr;
        env_master_svr_a00.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_a00_imp);
 
        maxmul2x2_virtual_sqr.svr_port_a01_sqr = env_master_svr_a01.m_agt.sqr;
        env_master_svr_a01.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_a01_imp);
 
        maxmul2x2_virtual_sqr.svr_port_a10_sqr = env_master_svr_a10.m_agt.sqr;
        env_master_svr_a10.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_a10_imp);
 
        maxmul2x2_virtual_sqr.svr_port_a11_sqr = env_master_svr_a11.m_agt.sqr;
        env_master_svr_a11.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_a11_imp);
 
        maxmul2x2_virtual_sqr.svr_port_b00_sqr = env_master_svr_b00.m_agt.sqr;
        env_master_svr_b00.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_b00_imp);
 
        maxmul2x2_virtual_sqr.svr_port_b01_sqr = env_master_svr_b01.m_agt.sqr;
        env_master_svr_b01.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_b01_imp);
 
        maxmul2x2_virtual_sqr.svr_port_b10_sqr = env_master_svr_b10.m_agt.sqr;
        env_master_svr_b10.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_b10_imp);
 
        maxmul2x2_virtual_sqr.svr_port_b11_sqr = env_master_svr_b11.m_agt.sqr;
        env_master_svr_b11.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_b11_imp);
 
        maxmul2x2_virtual_sqr.svr_port_c00_sqr = env_slave_svr_c00.s_agt.sqr;
        env_slave_svr_c00.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_c00_imp);
 
        maxmul2x2_virtual_sqr.svr_port_c01_sqr = env_slave_svr_c01.s_agt.sqr;
        env_slave_svr_c01.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_c01_imp);
 
        maxmul2x2_virtual_sqr.svr_port_c10_sqr = env_slave_svr_c10.s_agt.sqr;
        env_slave_svr_c10.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_c10_imp);
 
        maxmul2x2_virtual_sqr.svr_port_c11_sqr = env_slave_svr_c11.s_agt.sqr;
        env_slave_svr_c11.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_c11_imp);
 
        refm.maxmul2x2_cfg = maxmul2x2_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task maxmul2x2_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "maxmul2x2_env is running", UVM_LOW)
    endtask


`endif
