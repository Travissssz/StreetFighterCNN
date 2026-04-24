//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef STREET_FIGHTER_CNN_CONFIG__SV                        
    `define STREET_FIGHTER_CNN_CONFIG__SV                    
                                                            
    class street_fighter_cnn_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        axi_pkg::axi_cfg gmem0_cfg;
        axi_pkg::axi_cfg control_cfg;

        `uvm_object_utils_begin(street_fighter_cnn_config)         
        `uvm_field_object(gmem0_cfg, UVM_DEFAULT);
        `uvm_field_object(control_cfg, UVM_DEFAULT);
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "street_fighter_cnn_config");
            super.new(name);                                
            gmem0_cfg = new("gmem0_cfg", 1);
            control_cfg = axi_pkg::axi_cfg::type_id::create("control_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
