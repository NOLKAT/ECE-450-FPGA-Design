//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef MAXMUL2X2_SCOREBOARD__SV                                                       
    `define MAXMUL2X2_SCOREBOARD__SV                                                   
                                                                                               
    `define AUTOTB_TVOUT_c00_c00_wrapc  "../tv/rtldatafile/rtl.maxmul2x2.autotvout_c00.dat"
    `define AUTOTB_TVOUT_c01_c01_wrapc  "../tv/rtldatafile/rtl.maxmul2x2.autotvout_c01.dat"
    `define AUTOTB_TVOUT_c10_c10_wrapc  "../tv/rtldatafile/rtl.maxmul2x2.autotvout_c10.dat"
    `define AUTOTB_TVOUT_c11_c11_wrapc  "../tv/rtldatafile/rtl.maxmul2x2.autotvout_c11.dat"
                                                                                               
    class maxmul2x2_scoreboard extends uvm_component;                                        
                                                                                               
        maxmul2x2_reference_model refm;                                                      
                                                                                               
        typedef integer TRANS_SIZE_QUEUE_TYPE [$];                                      
        TRANS_SIZE_QUEUE_TYPE TVOUT_transaction_size_queue;                                
        int write_file_done_c00_c00;                                                          
        int write_file_done_c01_c01;                                                          
        int write_file_done_c10_c10;                                                          
        int write_file_done_c11_c11;                                                          
        int write_section_done_c00_c00 = 0;                                                   
        int write_section_done_c01_c01 = 0;                                                   
        int write_section_done_c10_c10 = 0;                                                   
        int write_section_done_c11_c11 = 0;                                                   
                                                                                           
        file_agent_pkg::file_write_agent#(32) file_wr_port_c00_c00;
        file_agent_pkg::file_write_agent#(32) file_wr_port_c01_c01;
        file_agent_pkg::file_write_agent#(32) file_wr_port_c10_c10;
        file_agent_pkg::file_write_agent#(32) file_wr_port_c11_c11;
                                                                                               
        `uvm_component_utils_begin(maxmul2x2_scoreboard)                                     
        `uvm_field_object(refm  , UVM_DEFAULT)                                                 
        `uvm_field_queue_int(TVOUT_transaction_size_queue, UVM_DEFAULT)                    
        `uvm_field_object(file_wr_port_c00_c00, UVM_DEFAULT)
        `uvm_field_int(write_file_done_c00_c00, UVM_DEFAULT)
        `uvm_field_int(write_section_done_c00_c00, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_c01_c01, UVM_DEFAULT)
        `uvm_field_int(write_file_done_c01_c01, UVM_DEFAULT)
        `uvm_field_int(write_section_done_c01_c01, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_c10_c10, UVM_DEFAULT)
        `uvm_field_int(write_file_done_c10_c10, UVM_DEFAULT)
        `uvm_field_int(write_section_done_c10_c10, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_c11_c11, UVM_DEFAULT)
        `uvm_field_int(write_file_done_c11_c11, UVM_DEFAULT)
        `uvm_field_int(write_section_done_c11_c11, UVM_DEFAULT)
        `uvm_component_utils_end                                                               
                                                                                               
        virtual function void build_phase(uvm_phase phase);                                    
            if (!uvm_config_db #(maxmul2x2_reference_model)::get(this, "", "refm", refm))
                `uvm_fatal(this.get_full_name(), "No refm from high level")                  
            `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM) 
                                                                                               
            file_wr_port_c00_c00 = file_agent_pkg::file_write_agent#(32)::type_id::create("file_wr_port_c00_c00", this);
            file_wr_port_c01_c01 = file_agent_pkg::file_write_agent#(32)::type_id::create("file_wr_port_c01_c01", this);
            file_wr_port_c10_c10 = file_agent_pkg::file_write_agent#(32)::type_id::create("file_wr_port_c10_c10", this);
            file_wr_port_c11_c11 = file_agent_pkg::file_write_agent#(32)::type_id::create("file_wr_port_c11_c11", this);
        endfunction                                                                            
                                                                                               
        function new (string name = "", uvm_component parent = null);                        
            super.new(name, parent);                                                           
            write_file_done_c00_c00 = 0;                                                          
            write_file_done_c01_c01 = 0;                                                          
            write_file_done_c10_c10 = 0;                                                          
            write_file_done_c11_c11 = 0;                                                          
        endfunction                                                                            
                                                                                               
        virtual task run_phase(uvm_phase phase);                                               
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_c00_c00.config_file(   
                    `AUTOTB_TVOUT_c00_c00_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_c01_c01.config_file(   
                    `AUTOTB_TVOUT_c01_c01_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_c10_c10.config_file(   
                    `AUTOTB_TVOUT_c10_c10_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_depth(1);
            file_wr_port_c11_c11.config_file(   
                    `AUTOTB_TVOUT_c11_c11_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            

            fork                                                                               
                                                                                               
                forever begin                                                                  
                    @refm.dut2tb_ap_done;                                                             
                    `uvm_info(this.get_full_name(), "receive ap_done_for_nexttrans and do axim dump", UVM_LOW)           
                    file_wr_port_c00_c00.receive_ap_done();
                    file_wr_port_c01_c01.receive_ap_done();
                    file_wr_port_c10_c10.receive_ap_done();
                    file_wr_port_c11_c11.receive_ap_done();
                end                                                                            
                begin                                                                          
                    @refm.finish;                                                              
                    `uvm_info(this.get_full_name(), "receive FINISH", UVM_LOW)               
                    file_wr_port_c00_c00.wait_write_file_done();
                    file_wr_port_c01_c01.wait_write_file_done();
                    file_wr_port_c10_c10.wait_write_file_done();
                    file_wr_port_c11_c11.wait_write_file_done();
                end                                                                            
                begin                                                                      
                    forever begin                                                              
                        wait(write_section_done_c00_c00 && write_section_done_c01_c01 && write_section_done_c10_c10 && write_section_done_c11_c11);                          
                        write_section_done_c00_c00 = 0;                                               
                        write_section_done_c01_c01 = 0;                                               
                        write_section_done_c10_c10 = 0;                                               
                        write_section_done_c11_c11 = 0;                                               
                        -> refm.allsvr_output_done;                                         
                    end                                                                        
                end                                                                        
            join                                                                               
        endtask                                                                                
                                                                                               
        virtual function void create_TVOUT_transaction_size_queue_by_depth(integer depth); 
            integer i;                                                                     
            TVOUT_transaction_size_queue.delete();                                         
            for (i = 0; i < 2; i++)                                    
                TVOUT_transaction_size_queue.push_back(depth);                             
        endfunction                                                                        
                                                                                           
        virtual function void write_svr_master_a00(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port a00 collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_master_a01(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port a01 collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_master_a10(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port a10 collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_master_a11(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port a11 collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_master_b00(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port b00 collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_master_b01(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port b01 collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_master_b10(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port b10 collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_master_b11(svr_transfer#(16) tr);
            `uvm_info(this.get_full_name(), "port b11 collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_slave_c00(svr_transfer#(32) tr);
            `uvm_info(this.get_full_name(), "port c00 collected one pkt", UVM_DEBUG);          
            file_wr_port_c00_c00.write_TVOUT_data(tr.data[31: 0]);
            write_file_done_c00_c00 = file_wr_port_c00_c00.is_write_file_done();
            write_section_done_c00_c00 = file_wr_port_c00_c00.is_write_section_done();
            if(write_section_done_c00_c00) 
                `uvm_info("c00 rx data done", "signal name:c00", UVM_MEDIUM)
        endfunction
                   
        virtual function void write_svr_slave_c01(svr_transfer#(32) tr);
            `uvm_info(this.get_full_name(), "port c01 collected one pkt", UVM_DEBUG);          
            file_wr_port_c01_c01.write_TVOUT_data(tr.data[31: 0]);
            write_file_done_c01_c01 = file_wr_port_c01_c01.is_write_file_done();
            write_section_done_c01_c01 = file_wr_port_c01_c01.is_write_section_done();
            if(write_section_done_c01_c01) 
                `uvm_info("c01 rx data done", "signal name:c01", UVM_MEDIUM)
        endfunction
                   
        virtual function void write_svr_slave_c10(svr_transfer#(32) tr);
            `uvm_info(this.get_full_name(), "port c10 collected one pkt", UVM_DEBUG);          
            file_wr_port_c10_c10.write_TVOUT_data(tr.data[31: 0]);
            write_file_done_c10_c10 = file_wr_port_c10_c10.is_write_file_done();
            write_section_done_c10_c10 = file_wr_port_c10_c10.is_write_section_done();
            if(write_section_done_c10_c10) 
                `uvm_info("c10 rx data done", "signal name:c10", UVM_MEDIUM)
        endfunction
                   
        virtual function void write_svr_slave_c11(svr_transfer#(32) tr);
            `uvm_info(this.get_full_name(), "port c11 collected one pkt", UVM_DEBUG);          
            file_wr_port_c11_c11.write_TVOUT_data(tr.data[31: 0]);
            write_file_done_c11_c11 = file_wr_port_c11_c11.is_write_file_done();
            write_section_done_c11_c11 = file_wr_port_c11_c11.is_write_section_done();
            if(write_section_done_c11_c11) 
                `uvm_info("c11 rx data done", "signal name:c11", UVM_MEDIUM)
        endfunction
                   
    endclass                                                                                   
                                                                                               
`endif                                                                                         
