set ModuleHierarchy {[{
"Name" : "street_fighter_cnn", "RefName" : "street_fighter_cnn","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_street_fighter_cnn_Pipeline_LOAD_INPUT_fu_1007", "RefName" : "street_fighter_cnn_Pipeline_LOAD_INPUT","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "LOAD_INPUT","RefName" : "LOAD_INPUT","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_street_fighter_cnn_Pipeline_CONV1_OUT_VITIS_LOOP_72_1_fu_1046", "RefName" : "street_fighter_cnn_Pipeline_CONV1_OUT_VITIS_LOOP_72_1","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CONV1_OUT_VITIS_LOOP_72_1","RefName" : "CONV1_OUT_VITIS_LOOP_72_1","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_street_fighter_cnn_Pipeline_POOL1_VITIS_LOOP_91_3_fu_1144", "RefName" : "street_fighter_cnn_Pipeline_POOL1_VITIS_LOOP_91_3","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "POOL1_VITIS_LOOP_91_3","RefName" : "POOL1_VITIS_LOOP_91_3","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_street_fighter_cnn_Pipeline_CONV2_OUT_VITIS_LOOP_114_4_fu_1156", "RefName" : "street_fighter_cnn_Pipeline_CONV2_OUT_VITIS_LOOP_114_4","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CONV2_OUT_VITIS_LOOP_114_4","RefName" : "CONV2_OUT_VITIS_LOOP_114_4","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "grp_street_fighter_cnn_Pipeline_ARGMAX_fu_1562", "RefName" : "street_fighter_cnn_Pipeline_ARGMAX","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ARGMAX","RefName" : "ARGMAX","ID" : "10","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "FC_LAYER","RefName" : "FC_LAYER","ID" : "11","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_street_fighter_cnn_Pipeline_VITIS_LOOP_136_6_fu_1577", "RefName" : "street_fighter_cnn_Pipeline_VITIS_LOOP_136_6","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_136_6","RefName" : "VITIS_LOOP_136_6","ID" : "13","Type" : "pipeline"},]},]},]
}]}