//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef MUX_2TO1_SUBSYSTEM_MONITOR_SV
`define MUX_2TO1_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_svr_master_a)
`uvm_analysis_imp_decl(_svr_master_b)
`uvm_analysis_imp_decl(_svr_master_sel)
`uvm_analysis_imp_decl(_svr_slave_y)

class mux_2to1_subsystem_monitor extends uvm_component;

    mux_2to1_reference_model refm;
    mux_2to1_scoreboard scbd;

    `uvm_component_utils_begin(mux_2to1_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_svr_master_a#(svr_pkg::svr_transfer#(1), mux_2to1_subsystem_monitor) svr_master_a_imp;
    uvm_analysis_imp_svr_master_b#(svr_pkg::svr_transfer#(1), mux_2to1_subsystem_monitor) svr_master_b_imp;
    uvm_analysis_imp_svr_master_sel#(svr_pkg::svr_transfer#(1), mux_2to1_subsystem_monitor) svr_master_sel_imp;
    uvm_analysis_imp_svr_slave_y#(svr_pkg::svr_transfer#(1), mux_2to1_subsystem_monitor) svr_slave_y_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(mux_2to1_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = mux_2to1_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        svr_master_a_imp = new("svr_master_a_imp", this);
        svr_master_b_imp = new("svr_master_b_imp", this);
        svr_master_sel_imp = new("svr_master_sel_imp", this);
        svr_slave_y_imp = new("svr_slave_y_imp", this);
    endfunction

    virtual function void write_svr_master_a(svr_transfer#(1) tr);
        refm.write_svr_master_a(tr);
        scbd.write_svr_master_a(tr);
    endfunction

    virtual function void write_svr_master_b(svr_transfer#(1) tr);
        refm.write_svr_master_b(tr);
        scbd.write_svr_master_b(tr);
    endfunction

    virtual function void write_svr_master_sel(svr_transfer#(1) tr);
        refm.write_svr_master_sel(tr);
        scbd.write_svr_master_sel(tr);
    endfunction

    virtual function void write_svr_slave_y(svr_transfer#(1) tr);
        refm.write_svr_slave_y(tr);
        scbd.write_svr_slave_y(tr);
    endfunction
endclass
`endif
