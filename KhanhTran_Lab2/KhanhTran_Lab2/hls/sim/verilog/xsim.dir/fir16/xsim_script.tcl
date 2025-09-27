set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {fir16} -testplusarg UVM_VERBOSITY=UVM_NONE -testplusarg UVM_TESTNAME=fir16_test_lib -testplusarg UVM_TIMEOUT=20000000000000 -view {{fir16_dataflow_ana.wcfg}} -tclbatch {fir16.tcl} -protoinst {fir16.protoinst}
