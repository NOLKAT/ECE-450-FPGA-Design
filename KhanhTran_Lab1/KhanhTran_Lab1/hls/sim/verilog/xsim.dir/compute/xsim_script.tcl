set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {compute} -testplusarg UVM_VERBOSITY=UVM_NONE -testplusarg UVM_TESTNAME=compute_test_lib -testplusarg UVM_TIMEOUT=20000000000000 -view {{compute_dataflow_ana.wcfg}} -tclbatch {compute.tcl} -protoinst {compute.protoinst}
