//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef MAXMUL2X2_SUBSYSTEM_MONITOR_SV
`define MAXMUL2X2_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_svr_master_a00)
`uvm_analysis_imp_decl(_svr_master_a01)
`uvm_analysis_imp_decl(_svr_master_a10)
`uvm_analysis_imp_decl(_svr_master_a11)
`uvm_analysis_imp_decl(_svr_master_b00)
`uvm_analysis_imp_decl(_svr_master_b01)
`uvm_analysis_imp_decl(_svr_master_b10)
`uvm_analysis_imp_decl(_svr_master_b11)
`uvm_analysis_imp_decl(_svr_slave_c00)
`uvm_analysis_imp_decl(_svr_slave_c01)
`uvm_analysis_imp_decl(_svr_slave_c10)
`uvm_analysis_imp_decl(_svr_slave_c11)

class maxmul2x2_subsystem_monitor extends uvm_component;

    maxmul2x2_reference_model refm;
    maxmul2x2_scoreboard scbd;

    `uvm_component_utils_begin(maxmul2x2_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_svr_master_a00#(svr_pkg::svr_transfer#(16), maxmul2x2_subsystem_monitor) svr_master_a00_imp;
    uvm_analysis_imp_svr_master_a01#(svr_pkg::svr_transfer#(16), maxmul2x2_subsystem_monitor) svr_master_a01_imp;
    uvm_analysis_imp_svr_master_a10#(svr_pkg::svr_transfer#(16), maxmul2x2_subsystem_monitor) svr_master_a10_imp;
    uvm_analysis_imp_svr_master_a11#(svr_pkg::svr_transfer#(16), maxmul2x2_subsystem_monitor) svr_master_a11_imp;
    uvm_analysis_imp_svr_master_b00#(svr_pkg::svr_transfer#(16), maxmul2x2_subsystem_monitor) svr_master_b00_imp;
    uvm_analysis_imp_svr_master_b01#(svr_pkg::svr_transfer#(16), maxmul2x2_subsystem_monitor) svr_master_b01_imp;
    uvm_analysis_imp_svr_master_b10#(svr_pkg::svr_transfer#(16), maxmul2x2_subsystem_monitor) svr_master_b10_imp;
    uvm_analysis_imp_svr_master_b11#(svr_pkg::svr_transfer#(16), maxmul2x2_subsystem_monitor) svr_master_b11_imp;
    uvm_analysis_imp_svr_slave_c00#(svr_pkg::svr_transfer#(32), maxmul2x2_subsystem_monitor) svr_slave_c00_imp;
    uvm_analysis_imp_svr_slave_c01#(svr_pkg::svr_transfer#(32), maxmul2x2_subsystem_monitor) svr_slave_c01_imp;
    uvm_analysis_imp_svr_slave_c10#(svr_pkg::svr_transfer#(32), maxmul2x2_subsystem_monitor) svr_slave_c10_imp;
    uvm_analysis_imp_svr_slave_c11#(svr_pkg::svr_transfer#(32), maxmul2x2_subsystem_monitor) svr_slave_c11_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(maxmul2x2_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = maxmul2x2_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        svr_master_a00_imp = new("svr_master_a00_imp", this);
        svr_master_a01_imp = new("svr_master_a01_imp", this);
        svr_master_a10_imp = new("svr_master_a10_imp", this);
        svr_master_a11_imp = new("svr_master_a11_imp", this);
        svr_master_b00_imp = new("svr_master_b00_imp", this);
        svr_master_b01_imp = new("svr_master_b01_imp", this);
        svr_master_b10_imp = new("svr_master_b10_imp", this);
        svr_master_b11_imp = new("svr_master_b11_imp", this);
        svr_slave_c00_imp = new("svr_slave_c00_imp", this);
        svr_slave_c01_imp = new("svr_slave_c01_imp", this);
        svr_slave_c10_imp = new("svr_slave_c10_imp", this);
        svr_slave_c11_imp = new("svr_slave_c11_imp", this);
    endfunction

    virtual function void write_svr_master_a00(svr_transfer#(16) tr);
        refm.write_svr_master_a00(tr);
        scbd.write_svr_master_a00(tr);
    endfunction

    virtual function void write_svr_master_a01(svr_transfer#(16) tr);
        refm.write_svr_master_a01(tr);
        scbd.write_svr_master_a01(tr);
    endfunction

    virtual function void write_svr_master_a10(svr_transfer#(16) tr);
        refm.write_svr_master_a10(tr);
        scbd.write_svr_master_a10(tr);
    endfunction

    virtual function void write_svr_master_a11(svr_transfer#(16) tr);
        refm.write_svr_master_a11(tr);
        scbd.write_svr_master_a11(tr);
    endfunction

    virtual function void write_svr_master_b00(svr_transfer#(16) tr);
        refm.write_svr_master_b00(tr);
        scbd.write_svr_master_b00(tr);
    endfunction

    virtual function void write_svr_master_b01(svr_transfer#(16) tr);
        refm.write_svr_master_b01(tr);
        scbd.write_svr_master_b01(tr);
    endfunction

    virtual function void write_svr_master_b10(svr_transfer#(16) tr);
        refm.write_svr_master_b10(tr);
        scbd.write_svr_master_b10(tr);
    endfunction

    virtual function void write_svr_master_b11(svr_transfer#(16) tr);
        refm.write_svr_master_b11(tr);
        scbd.write_svr_master_b11(tr);
    endfunction

    virtual function void write_svr_slave_c00(svr_transfer#(32) tr);
        refm.write_svr_slave_c00(tr);
        scbd.write_svr_slave_c00(tr);
    endfunction

    virtual function void write_svr_slave_c01(svr_transfer#(32) tr);
        refm.write_svr_slave_c01(tr);
        scbd.write_svr_slave_c01(tr);
    endfunction

    virtual function void write_svr_slave_c10(svr_transfer#(32) tr);
        refm.write_svr_slave_c10(tr);
        scbd.write_svr_slave_c10(tr);
    endfunction

    virtual function void write_svr_slave_c11(svr_transfer#(32) tr);
        refm.write_svr_slave_c11(tr);
        scbd.write_svr_slave_c11(tr);
    endfunction
endclass
`endif
