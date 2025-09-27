//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef COMPUTE_SUBSYSTEM_MONITOR_SV
`define COMPUTE_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_svr_master_a)
`uvm_analysis_imp_decl(_svr_master_b)
`uvm_analysis_imp_decl(_svr_slave_c)

class compute_subsystem_monitor extends uvm_component;

    compute_reference_model refm;
    compute_scoreboard scbd;

    `uvm_component_utils_begin(compute_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_svr_master_a#(svr_pkg::svr_transfer#(32), compute_subsystem_monitor) svr_master_a_imp;
    uvm_analysis_imp_svr_master_b#(svr_pkg::svr_transfer#(32), compute_subsystem_monitor) svr_master_b_imp;
    uvm_analysis_imp_svr_slave_c#(svr_pkg::svr_transfer#(32), compute_subsystem_monitor) svr_slave_c_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(compute_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = compute_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        svr_master_a_imp = new("svr_master_a_imp", this);
        svr_master_b_imp = new("svr_master_b_imp", this);
        svr_slave_c_imp = new("svr_slave_c_imp", this);
    endfunction

    virtual function void write_svr_master_a(svr_transfer#(32) tr);
        refm.write_svr_master_a(tr);
        scbd.write_svr_master_a(tr);
    endfunction

    virtual function void write_svr_master_b(svr_transfer#(32) tr);
        refm.write_svr_master_b(tr);
        scbd.write_svr_master_b(tr);
    endfunction

    virtual function void write_svr_slave_c(svr_transfer#(32) tr);
        refm.write_svr_slave_c(tr);
        scbd.write_svr_slave_c(tr);
    endfunction
endclass
`endif
