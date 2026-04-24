//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef STREET_FIGHTER_CNN_SUBSYSTEM_MONITOR_SV
`define STREET_FIGHTER_CNN_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_axi_wtr_gmem0)
`uvm_analysis_imp_decl(_axi_rtr_gmem0)
`uvm_analysis_imp_decl(_axi_wtr_control)
`uvm_analysis_imp_decl(_axi_rtr_control)

class street_fighter_cnn_subsystem_monitor extends uvm_component;

    street_fighter_cnn_reference_model refm;
    street_fighter_cnn_scoreboard scbd;

    `uvm_component_utils_begin(street_fighter_cnn_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_axi_wtr_gmem0#(axi_pkg::axi_transfer, street_fighter_cnn_subsystem_monitor) gmem0_wtr_imp;
    uvm_analysis_imp_axi_rtr_gmem0#(axi_pkg::axi_transfer, street_fighter_cnn_subsystem_monitor) gmem0_rtr_imp;
    uvm_analysis_imp_axi_wtr_control#(axi_pkg::axi_transfer, street_fighter_cnn_subsystem_monitor) control_wtr_imp;
    uvm_analysis_imp_axi_rtr_control#(axi_pkg::axi_transfer, street_fighter_cnn_subsystem_monitor) control_rtr_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(street_fighter_cnn_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = street_fighter_cnn_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        gmem0_wtr_imp = new("gmem0_wtr_imp", this);
        gmem0_rtr_imp = new("gmem0_rtr_imp", this);
        control_wtr_imp = new("control_wtr_imp", this);
        control_rtr_imp = new("control_rtr_imp", this);
    endfunction

    virtual function void write_axi_wtr_gmem0(axi_transfer tr);
        refm.write_axi_wtr_gmem0(tr);
        scbd.write_axi_wtr_gmem0(tr);
    endfunction

    virtual function void write_axi_rtr_gmem0(axi_transfer tr);
        refm.write_axi_rtr_gmem0(tr);
        scbd.write_axi_rtr_gmem0(tr);
    endfunction

    virtual function void write_axi_wtr_control(axi_transfer tr);
        refm.write_axi_wtr_control(tr);
        scbd.write_axi_wtr_control(tr);
    endfunction

    virtual function void write_axi_rtr_control(axi_transfer tr);
        refm.write_axi_rtr_control(tr);
        scbd.write_axi_rtr_control(tr);
    endfunction
endclass
`endif
