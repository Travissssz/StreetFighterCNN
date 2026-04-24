//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef STREET_FIGHTER_CNN_SUBSYSTEM_PKG__SV          
    `define STREET_FIGHTER_CNN_SUBSYSTEM_PKG__SV      
                                                     
    package street_fighter_cnn_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "street_fighter_cnn_config.sv"           
        `include "street_fighter_cnn_reference_model.sv"  
        `include "street_fighter_cnn_scoreboard.sv"       
        `include "street_fighter_cnn_subsystem_monitor.sv"
        `include "street_fighter_cnn_virtual_sequencer.sv"
        `include "street_fighter_cnn_pkg_sequence_lib.sv" 
        `include "street_fighter_cnn_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
