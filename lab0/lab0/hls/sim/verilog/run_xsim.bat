
set PATH=
call D:/Xilinx_2025/2025.1/Vivado/bin/xelab xil_defaultlib.apatb_mux_2to1_top xil_defaultlib.glbl -Oenable_linking_all_libraries -prj mux_2to1.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_1_20 -L floating_point_v7_0_25 --lib "ieee_proposed=./ieee_proposed" -L uvm -relax -i ./svr -i ./axivip -i ./svtb -i ./file_agent -i ./mux_2to1_subsystem  -s mux_2to1 -debug all
call D:/Xilinx_2025/2025.1/Vivado/bin/xsim -testplusarg "UVM_VERBOSITY=UVM_NONE" -testplusarg "UVM_TESTNAME=mux_2to1_test_lib" -testplusarg "UVM_TIMEOUT=20000000000000" --noieeewarnings mux_2to1 -tclbatch mux_2to1.tcl -gui -view mux_2to1_dataflow_ana.wcfg -protoinst mux_2to1.protoinst

