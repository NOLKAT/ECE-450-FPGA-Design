set ModuleHierarchy {[{
"Name" : "sobel_rgb_axis", "RefName" : "sobel_rgb_axis","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_sobel_rgb_axis_Pipeline_init_cols_fu_102", "RefName" : "sobel_rgb_axis_Pipeline_init_cols","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "init_cols","RefName" : "init_cols","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_sobel_rgb_axis_Pipeline_row_loop_col_loop_fu_112", "RefName" : "sobel_rgb_axis_Pipeline_row_loop_col_loop","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "row_loop_col_loop","RefName" : "row_loop_col_loop","ID" : "4","Type" : "pipeline"},]},]
}]}