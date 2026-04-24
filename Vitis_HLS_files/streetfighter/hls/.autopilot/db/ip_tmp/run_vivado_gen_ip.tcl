create_project prj -part xczu3eg-sbva484-1-i -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/eswar/OneDrive/Desktop/streetfighter/streetfighter/hls/syn/verilog/street_fighter_cnn_faddfsub_32ns_32ns_32_5_full_dsp_1_ip.tcl"
source "C:/Users/eswar/OneDrive/Desktop/streetfighter/streetfighter/hls/syn/verilog/street_fighter_cnn_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "C:/Users/eswar/OneDrive/Desktop/streetfighter/streetfighter/hls/syn/verilog/street_fighter_cnn_fdiv_32ns_32ns_32_10_no_dsp_1_ip.tcl"
source "C:/Users/eswar/OneDrive/Desktop/streetfighter/streetfighter/hls/syn/verilog/street_fighter_cnn_fexp_32ns_32ns_32_8_full_dsp_1_ip.tcl"
source "C:/Users/eswar/OneDrive/Desktop/streetfighter/streetfighter/hls/syn/verilog/street_fighter_cnn_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "C:/Users/eswar/OneDrive/Desktop/streetfighter/streetfighter/hls/syn/verilog/street_fighter_cnn_fpext_32ns_64_2_no_dsp_1_ip.tcl"
source "C:/Users/eswar/OneDrive/Desktop/streetfighter/streetfighter/hls/syn/verilog/street_fighter_cnn_fsub_32ns_32ns_32_5_full_dsp_1_ip.tcl"
