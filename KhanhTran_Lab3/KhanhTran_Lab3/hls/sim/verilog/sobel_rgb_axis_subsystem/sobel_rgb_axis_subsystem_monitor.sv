//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SOBEL_RGB_AXIS_SUBSYSTEM_MONITOR_SV
`define SOBEL_RGB_AXIS_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_svr_master_in_axis)
`uvm_analysis_imp_decl(_svr_slave_out_axis)
`uvm_analysis_imp_decl(_axi_wtr_CTRL)
`uvm_analysis_imp_decl(_axi_rtr_CTRL)

class sobel_rgb_axis_subsystem_monitor extends uvm_component;

    sobel_rgb_axis_reference_model refm;
    sobel_rgb_axis_scoreboard scbd;

    `uvm_component_utils_begin(sobel_rgb_axis_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_svr_master_in_axis#(svr_pkg::svr_transfer#(34), sobel_rgb_axis_subsystem_monitor) svr_master_in_axis_imp;
    uvm_analysis_imp_svr_slave_out_axis#(svr_pkg::svr_transfer#(34), sobel_rgb_axis_subsystem_monitor) svr_slave_out_axis_imp;
    uvm_analysis_imp_axi_wtr_CTRL#(axi_pkg::axi_transfer, sobel_rgb_axis_subsystem_monitor) CTRL_wtr_imp;
    uvm_analysis_imp_axi_rtr_CTRL#(axi_pkg::axi_transfer, sobel_rgb_axis_subsystem_monitor) CTRL_rtr_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(sobel_rgb_axis_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = sobel_rgb_axis_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        svr_master_in_axis_imp = new("svr_master_in_axis_imp", this);
        svr_slave_out_axis_imp = new("svr_slave_out_axis_imp", this);
        CTRL_wtr_imp = new("CTRL_wtr_imp", this);
        CTRL_rtr_imp = new("CTRL_rtr_imp", this);
    endfunction

    virtual function void write_svr_master_in_axis(svr_transfer#(34) tr);
        refm.write_svr_master_in_axis(tr);
        scbd.write_svr_master_in_axis(tr);
    endfunction

    virtual function void write_svr_slave_out_axis(svr_transfer#(34) tr);
        refm.write_svr_slave_out_axis(tr);
        scbd.write_svr_slave_out_axis(tr);
    endfunction

    virtual function void write_axi_wtr_CTRL(axi_transfer tr);
        refm.write_axi_wtr_CTRL(tr);
        scbd.write_axi_wtr_CTRL(tr);
    endfunction

    virtual function void write_axi_rtr_CTRL(axi_transfer tr);
        refm.write_axi_rtr_CTRL(tr);
        scbd.write_axi_rtr_CTRL(tr);
    endfunction
endclass
`endif
