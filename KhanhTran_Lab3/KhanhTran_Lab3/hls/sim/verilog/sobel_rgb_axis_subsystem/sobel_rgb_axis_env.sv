//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SOBEL_RGB_AXIS_ENV__SV                                                                                   
    `define SOBEL_RGB_AXIS_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class sobel_rgb_axis_env extends uvm_env;                                                                          
                                                                                                                    
        sobel_rgb_axis_virtual_sequencer sobel_rgb_axis_virtual_sqr;                                                      
        sobel_rgb_axis_config sobel_rgb_axis_cfg;                                                                         
                                                                                                                    
        svr_pkg::svr_env#(34) env_master_svr_in_axis;
        svr_pkg::svr_env#(34) env_slave_svr_out_axis;
        axi_pkg::axi_env#(5,4,4,3,1) axi_lite_CTRL;
                                                                                                                    
        sobel_rgb_axis_reference_model   refm;                                                                         
                                                                                                                    
        sobel_rgb_axis_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(sobel_rgb_axis_env)                                                                 
        `uvm_field_object (env_master_svr_in_axis,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_out_axis,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (sobel_rgb_axis_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (sobel_rgb_axis_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "sobel_rgb_axis_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void sobel_rgb_axis_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        sobel_rgb_axis_cfg = sobel_rgb_axis_config::type_id::create("sobel_rgb_axis_cfg", this);                           
                                                                                                                    
        sobel_rgb_axis_cfg.port_in_axis_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_in_axis  = svr_env#(34)::type_id::create("env_master_svr_in_axis", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_in_axis*", "cfg", sobel_rgb_axis_cfg.port_in_axis_cfg);
        sobel_rgb_axis_cfg.port_in_axis_cfg.prt_type = svr_pkg::AXIS;
        sobel_rgb_axis_cfg.port_in_axis_cfg.is_active = svr_pkg::SVR_ACTIVE;
        sobel_rgb_axis_cfg.port_in_axis_cfg.spec_cfg = svr_pkg::NORMAL;
        sobel_rgb_axis_cfg.port_in_axis_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 
        sobel_rgb_axis_cfg.port_out_axis_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_out_axis  = svr_env#(34)::type_id::create("env_slave_svr_out_axis", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_out_axis*", "cfg", sobel_rgb_axis_cfg.port_out_axis_cfg);
        sobel_rgb_axis_cfg.port_out_axis_cfg.prt_type = svr_pkg::AXIS;
        sobel_rgb_axis_cfg.port_out_axis_cfg.is_active = svr_pkg::SVR_ACTIVE;
        sobel_rgb_axis_cfg.port_out_axis_cfg.spec_cfg = svr_pkg::NORMAL;
        sobel_rgb_axis_cfg.port_out_axis_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 

        sobel_rgb_axis_cfg.CTRL_cfg.set_default();
        sobel_rgb_axis_cfg.CTRL_cfg.drv_type = axi_pkg::MASTER;
        sobel_rgb_axis_cfg.CTRL_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_CTRL*", "cfg", sobel_rgb_axis_cfg.CTRL_cfg);
        axi_lite_CTRL = axi_pkg::axi_env#(5,4,4,3,1)::type_id::create("axi_lite_CTRL", this);



        refm = sobel_rgb_axis_reference_model::type_id::create("refm", this);


        uvm_config_db#(sobel_rgb_axis_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = sobel_rgb_axis_subsystem_monitor::type_id::create("subsys_mon", this);


        sobel_rgb_axis_virtual_sqr = sobel_rgb_axis_virtual_sequencer::type_id::create("sobel_rgb_axis_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void sobel_rgb_axis_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        sobel_rgb_axis_virtual_sqr.svr_port_in_axis_sqr = env_master_svr_in_axis.m_agt.sqr;
        env_master_svr_in_axis.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_in_axis_imp);
 
        sobel_rgb_axis_virtual_sqr.svr_port_out_axis_sqr = env_slave_svr_out_axis.s_agt.sqr;
        env_slave_svr_out_axis.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_out_axis_imp);
 
        if(sobel_rgb_axis_cfg.CTRL_cfg.drv_type==axi_pkg::MASTER ||sobel_rgb_axis_cfg.CTRL_cfg.drv_type==axi_pkg::SLAVE)
            sobel_rgb_axis_virtual_sqr.CTRL_sqr = axi_lite_CTRL.vsqr;
        axi_lite_CTRL.item_wtr_port.connect(subsys_mon.CTRL_wtr_imp);
        axi_lite_CTRL.item_rtr_port.connect(subsys_mon.CTRL_rtr_imp);
        refm.sobel_rgb_axis_cfg = sobel_rgb_axis_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task sobel_rgb_axis_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "sobel_rgb_axis_env is running", UVM_LOW)
    endtask


`endif
