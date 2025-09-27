//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef MUX_2TO1_REFERENCE_MODEL_SV
`define MUX_2TO1_REFERENCE_MODEL_SV

class mux_2to1_reference_model extends uvm_component;
    event allsvr_input_done;
    event allsvr_output_done;
    int trans_num_total = 8;
    int trans_num_idx;
    int ap_done_cnt=1;
    event dut2tb_ap_ready;
    event dut2tb_ap_done;
    event ap_ready_for_nexttrans;
    event ap_done_for_nexttrans;
    event finish;
    mux_2to1_config mux_2to1_cfg;
    virtual interface misc_interface misc_if;

    
    `uvm_component_utils_begin(mux_2to1_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
misc_if.dut2tb_ap_done = 0;
    misc_if.dut2tb_ap_ready = 0;
        fork
            forever begin
                @allsvr_input_done;
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_ready_evt;
                    end
                join_none
                fork
                    begin
                        -> dut2tb_ap_ready;
                        misc_if.dut2tb_ap_ready = 1;
                        @(posedge misc_if.clock);
                        misc_if.dut2tb_ap_ready = 0;
                    end
                join_none
                -> ap_ready_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_ready_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_ready_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_ready_for_nexttrans = 0;
                    end
                join_none
            end
      begin
      wait(misc_if.tb2dut_ap_start === 1'b1);
      repeat(0) @(posedge misc_if.clock);
      for(int j=0; j<8; j++) begin
          misc_if.dut2tb_ap_done = 1;
          @(posedge misc_if.clock);
      end
      misc_if.dut2tb_ap_done = 0;
    end
            forever begin
                @allsvr_output_done;
                ->dut2tb_ap_done;
                fork
                    begin
                        @(negedge misc_if.clock);
                        ->misc_if.dut2tb_ap_done_evt;
                    end
                join_none
                -> ap_done_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_done_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_done_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_done_for_nexttrans = 0;
                    end
                join_none
            end

        join
    endtask

    virtual function void write_svr_master_a(svr_transfer#(1) tr);
    //  trans_size++;
        `uvm_info(this.get_full_name(), "port a collected one pkt", UVM_DEBUG);
    endfunction

    virtual function void write_svr_master_b(svr_transfer#(1) tr);
    //  trans_size++;
        `uvm_info(this.get_full_name(), "port a collected one pkt", UVM_DEBUG);
    endfunction

    virtual function void write_svr_master_sel(svr_transfer#(1) tr);
    //  trans_size++;
        `uvm_info(this.get_full_name(), "port a collected one pkt", UVM_DEBUG);
    endfunction

    virtual function void write_svr_slave_y(svr_transfer#(1) tr);
    //  trans_size++;
        `uvm_info(this.get_full_name(), "port a collected one pkt", UVM_DEBUG);
    endfunction
endclass
`endif
