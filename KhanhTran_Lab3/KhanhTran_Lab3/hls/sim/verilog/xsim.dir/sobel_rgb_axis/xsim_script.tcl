set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {sobel_rgb_axis} -testplusarg UVM_VERBOSITY=UVM_NONE -testplusarg UVM_TESTNAME=sobel_rgb_axis_test_lib -testplusarg UVM_TIMEOUT=20000000000000 -view {{sobel_rgb_axis_dataflow_ana.wcfg}} -tclbatch {sobel_rgb_axis.tcl} -protoinst {sobel_rgb_axis.protoinst}
