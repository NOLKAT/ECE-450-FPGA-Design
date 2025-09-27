set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {mux_2to1} -testplusarg UVM_VERBOSITY=UVM_NONE -testplusarg UVM_TESTNAME=mux_2to1_test_lib -testplusarg UVM_TIMEOUT=20000000000000 -view {{mux_2to1_dataflow_ana.wcfg}} -tclbatch {mux_2to1.tcl} -protoinst {mux_2to1.protoinst}
