//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef STREET_FIGHTER_CNN_REFERENCE_MODEL_SV
`define STREET_FIGHTER_CNN_REFERENCE_MODEL_SV
typedef class street_fighter_cnn_reference_model;
class memaccess_axi_state_cbs extends axi_pkg::axi_state_cbs;
    street_fighter_cnn_reference_model refm;
    string memid;
    //function new(string name="memaccess_axi_state_cbs");
    //    super.new(name);
    //endfunction
    virtual function void memmodel_read_fromar(ref logic[7:0] data[$], input longint addr, input longint len);
        if(memid=="gmem0") refm.mem_blk_pages_gmem0.read_elems_pipepage(data, addr, len);
    endfunction
endclass

class street_fighter_cnn_reference_model extends uvm_component;
`define TV_IN_gmem0 "../tv/cdatafile/c.street_fighter_cnn.autotvin_gmem0.dat"
`define TV_OUT_gmem0 "../tv/rtldatafile/rtl.street_fighter_cnn.autotvout_gmem0.dat"
`define TV_IN_OFFSET_input_r "../tv/cdatafile/c.street_fighter_cnn.autotvin_input_r.dat"
`define TV_IN_input_r "../tv/cdatafile/c.street_fighter_cnn.autotvin_input_r.dat"
`define TV_OUT_input_r ""
`define TV_IN_prediction ""
`define TV_OUT_prediction "../tv/rtldatafile/rtl.street_fighter_cnn.autotvout_prediction.dat"
`define TV_IN_confidence ""
`define TV_OUT_confidence "../tv/rtldatafile/rtl.street_fighter_cnn.autotvout_confidence.dat"
`define TV_IN_dbg_in0 ""
`define TV_OUT_dbg_in0 "../tv/rtldatafile/rtl.street_fighter_cnn.autotvout_dbg_in0.dat"
`define TV_IN_dbg_l1_0 ""
`define TV_OUT_dbg_l1_0 "../tv/rtldatafile/rtl.street_fighter_cnn.autotvout_dbg_l1_0.dat"
`define TV_IN_dbg_gap0 ""
`define TV_OUT_dbg_gap0 "../tv/rtldatafile/rtl.street_fighter_cnn.autotvout_dbg_gap0.dat"
`define TV_IN_dbg_score0 ""
`define TV_OUT_dbg_score0 "../tv/rtldatafile/rtl.street_fighter_cnn.autotvout_dbg_score0.dat"
    bit  read_data_finish_control;
    bit  write_data_finish_control;
    event allaxilite_read_data_finish;
    event allaxilite_read_one_transaction_finish;
    event allaxilite_write_data_finish;
    event allaxilite_write_one_transaction_finish;
    event write_start_finish;
    int trans_num_total = 20;
    int trans_num_idx;
    int ap_done_cnt=1;
    event dut2tb_ap_ready;
    event dut2tb_ap_done;
    event ap_ready_for_nexttrans;
    event ap_done_for_nexttrans;
    event finish;
    street_fighter_cnn_config street_fighter_cnn_cfg;
    virtual interface misc_interface misc_if;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_gmem0;
    int blk_id_gmem0 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem0;

    mem_model_pages#(32,8) mem_blk_pages_control_prediction;
    mem_model_pages#(16,8) mem_blk_pages_control_confidence;
    mem_model_pages#(16,8) mem_blk_pages_control_dbg_in0;
    mem_model_pages#(16,8) mem_blk_pages_control_dbg_l1_0;
    mem_model_pages#(16,8) mem_blk_pages_control_dbg_gap0;
    mem_model_pages#(16,8) mem_blk_pages_control_dbg_score0;
    
    `uvm_component_utils_begin(street_fighter_cnn_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
        axi_memaccess_cb_gmem0 = new;
        axi_memaccess_cb_gmem0.refm = this;
        axi_memaccess_cb_gmem0.memid = "gmem0";
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
misc_if.dut2tb_ap_done = 0;

        mem_blk_pages_control_prediction = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_prediction");
        mem_blk_pages_control_prediction.init_pages(trans_num_total, 1*((32+7)/8), 28);
        mem_blk_pages_control_prediction.tvoutdump_atinit(`TV_OUT_prediction);


        mem_blk_pages_control_confidence = mem_model_pages#(16,8)::type_id::create("mem_blk_pages_control_confidence");
        mem_blk_pages_control_confidence.init_pages(trans_num_total, 1*((16+7)/8), 44);
        mem_blk_pages_control_confidence.tvoutdump_atinit(`TV_OUT_confidence);


        mem_blk_pages_control_dbg_in0 = mem_model_pages#(16,8)::type_id::create("mem_blk_pages_control_dbg_in0");
        mem_blk_pages_control_dbg_in0.init_pages(trans_num_total, 1*((16+7)/8), 60);
        mem_blk_pages_control_dbg_in0.tvoutdump_atinit(`TV_OUT_dbg_in0);


        mem_blk_pages_control_dbg_l1_0 = mem_model_pages#(16,8)::type_id::create("mem_blk_pages_control_dbg_l1_0");
        mem_blk_pages_control_dbg_l1_0.init_pages(trans_num_total, 1*((16+7)/8), 76);
        mem_blk_pages_control_dbg_l1_0.tvoutdump_atinit(`TV_OUT_dbg_l1_0);


        mem_blk_pages_control_dbg_gap0 = mem_model_pages#(16,8)::type_id::create("mem_blk_pages_control_dbg_gap0");
        mem_blk_pages_control_dbg_gap0.init_pages(trans_num_total, 1*((16+7)/8), 92);
        mem_blk_pages_control_dbg_gap0.tvoutdump_atinit(`TV_OUT_dbg_gap0);


        mem_blk_pages_control_dbg_score0 = mem_model_pages#(16,8)::type_id::create("mem_blk_pages_control_dbg_score0");
        mem_blk_pages_control_dbg_score0.init_pages(trans_num_total, 1*((16+7)/8), 108);
        mem_blk_pages_control_dbg_score0.tvoutdump_atinit(`TV_OUT_dbg_score0);

        fpath.push_back(`TV_IN_gmem0);
        mem_blk_pages_gmem0 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_gmem0");
        mem_blk_pages_gmem0.whole_page_size=496;
        mem_blk_pages_gmem0.maxi_bundlevar_fpath["input_r"]=`TV_IN_OFFSET_input_r;
        mem_blk_pages_gmem0.set_binary(1);
        mem_blk_pages_gmem0.tvinload_pagechk_atinit(fpath, 15*((128+7)/8), 0, 0);
        fpath.delete();

        fork
            forever begin
                wait(write_data_finish_control);
                `uvm_info("", "trigger_allaxilite_data_write_finish", UVM_LOW)
                @(posedge misc_if.clock);
                write_data_finish_control = 0;
                -> allaxilite_write_data_finish;
            end
            forever begin
                wait(read_data_finish_control);
                `uvm_info("", "trigger_allaxilite_data_read_finish", UVM_LOW)
                @(posedge misc_if.clock);
                read_data_finish_control = 0;
                -> allaxilite_read_data_finish;
            end
            forever begin
                //this is non-pipeline case
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                @allaxilite_read_data_finish;
                @(posedge misc_if.clock);
                @allaxilite_write_data_finish;
                @(posedge misc_if.clock);
                -> ap_ready_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_ready_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_ready_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_ready_for_nexttrans = 0;
                    end
                join_none
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_done_evt;
                        #0;
                        -> misc_if.dut2tb_ap_ready_evt;
                    end
                join_none
                @allaxilite_read_data_finish;
                @(posedge misc_if.clock);
                -> ap_done_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_done_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_done_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_done_for_nexttrans = 0;
                    end
                join_none
            end

            for(int i=1; i<20; i++) begin
                @dut2tb_ap_ready;
                mem_blk_pages_gmem0.incr_rd_page_idx() ;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_ready === 1)   break;
                end
                @(posedge misc_if.clock);
                `uvm_info(this.get_full_name(), "trigger event DUT2TB_AP_READY", UVM_LOW)
                -> dut2tb_ap_ready;
                 misc_if.tb2dut_ap_start = 0;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_done_kernel === 1)   break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        `uvm_info(this.get_full_name(), "trigger event dut2tb_ap_done_kernel_evt", UVM_LOW)
                        -> misc_if.dut2tb_ap_done_kernel_evt;
                    end
                join_none
            end
        join
    endtask

    virtual function void write_axi_wtr_gmem0(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem0.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem0(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
        if(tr.addr == 0 && tr.len == 0 && tr.data[0][0]==1) begin //addr 0 and bit 0 are parameter
            -> write_start_finish;
            misc_if.tb2dut_ap_start = 1;
        end
        if(tr.addr == 0 && tr.len == 0 && tr.data[0][4]==1) begin //addr 0 and bit 0 are parameter
            misc_if.tb2dut_ap_continue = 1;
        end
    endfunction
    virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(tr.addr == 0 && tr.len == 0) begin
            if(tr.data[0][1]==1) begin  //bit 1 is parameter
                `uvm_info("status polling", "ap_done is polled", UVM_LOW);
                fork
                    begin
                        misc_if.dut2tb_ap_done = 1;
                        @(posedge misc_if.clock);
                        #0;
                        misc_if.dut2tb_ap_done = 0;
                        misc_if.tb2dut_ap_continue = 0;
                        -> dut2tb_ap_done;
                    end
                join_none
            end
            begin
                misc_if.dut2tb_ap_idle = tr.data[0][2];
            end
        end else begin
            mem_blk_pages_control_prediction.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_control_confidence.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_control_dbg_in0.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_control_dbg_l1_0.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_control_dbg_gap0.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_control_dbg_score0.write_elems_frontpage(tr.data, tr.byte_addr);
        end
    endfunction
endclass
`endif
