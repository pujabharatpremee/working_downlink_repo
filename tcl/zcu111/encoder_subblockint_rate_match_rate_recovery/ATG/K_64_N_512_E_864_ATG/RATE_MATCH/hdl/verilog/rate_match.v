// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="rate_match,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu21dr-ffvd1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=7,HLS_SYN_TPT=7,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=889,HLS_SYN_LUT=258,HLS_VERSION=2018_3}" *)

module rate_match (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        RMdataOut_TREADY,
        RMdataIn_TDATA,
        RMdataIn_TVALID,
        RMdataIn_TREADY,
        RMdataIn_TLAST,
        RMdataOut_TDATA,
        RMdataOut_TVALID,
        RMdataOut_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   RMdataOut_TREADY;
input  [127:0] RMdataIn_TDATA;
input   RMdataIn_TVALID;
output   RMdataIn_TREADY;
input  [0:0] RMdataIn_TLAST;
output  [127:0] RMdataOut_TDATA;
output   RMdataOut_TVALID;
output  [0:0] RMdataOut_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_state7_pp0_stage6_iter0;
wire    RMdataOut_V_data_V_1_ack_in;
reg    ap_block_pp0_stage6_11001;
reg   [127:0] RMdataIn_V_data_V_0_data_out;
wire    RMdataIn_V_data_V_0_vld_in;
wire    RMdataIn_V_data_V_0_vld_out;
wire    RMdataIn_V_data_V_0_ack_in;
reg    RMdataIn_V_data_V_0_ack_out;
reg   [127:0] RMdataIn_V_data_V_0_payload_A;
reg   [127:0] RMdataIn_V_data_V_0_payload_B;
reg    RMdataIn_V_data_V_0_sel_rd;
reg    RMdataIn_V_data_V_0_sel_wr;
wire    RMdataIn_V_data_V_0_sel;
wire    RMdataIn_V_data_V_0_load_A;
wire    RMdataIn_V_data_V_0_load_B;
reg   [1:0] RMdataIn_V_data_V_0_state;
wire    RMdataIn_V_data_V_0_state_cmp_full;
wire    RMdataIn_V_last_V_0_vld_in;
reg    RMdataIn_V_last_V_0_ack_out;
reg   [1:0] RMdataIn_V_last_V_0_state;
reg   [127:0] RMdataOut_V_data_V_1_data_in;
reg   [127:0] RMdataOut_V_data_V_1_data_out;
reg    RMdataOut_V_data_V_1_vld_in;
wire    RMdataOut_V_data_V_1_vld_out;
wire    RMdataOut_V_data_V_1_ack_out;
reg   [127:0] RMdataOut_V_data_V_1_payload_A;
reg   [127:0] RMdataOut_V_data_V_1_payload_B;
reg    RMdataOut_V_data_V_1_sel_rd;
reg    RMdataOut_V_data_V_1_sel_wr;
wire    RMdataOut_V_data_V_1_sel;
wire    RMdataOut_V_data_V_1_load_A;
wire    RMdataOut_V_data_V_1_load_B;
reg   [1:0] RMdataOut_V_data_V_1_state;
wire    RMdataOut_V_data_V_1_state_cmp_full;
reg   [0:0] RMdataOut_V_last_V_1_data_in;
reg   [0:0] RMdataOut_V_last_V_1_data_out;
reg    RMdataOut_V_last_V_1_vld_in;
wire    RMdataOut_V_last_V_1_vld_out;
wire    RMdataOut_V_last_V_1_ack_in;
wire    RMdataOut_V_last_V_1_ack_out;
reg   [0:0] RMdataOut_V_last_V_1_payload_A;
reg   [0:0] RMdataOut_V_last_V_1_payload_B;
reg    RMdataOut_V_last_V_1_sel_rd;
reg    RMdataOut_V_last_V_1_sel_wr;
wire    RMdataOut_V_last_V_1_sel;
wire    RMdataOut_V_last_V_1_load_A;
wire    RMdataOut_V_last_V_1_load_B;
reg   [1:0] RMdataOut_V_last_V_1_state;
wire    RMdataOut_V_last_V_1_state_cmp_full;
reg    RMdataIn_TDATA_blk_n;
wire    ap_block_pp0_stage0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg    RMdataOut_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
reg    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_11001;
reg    ap_block_state4_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_11001;
reg   [127:0] tmp_data_V_reg_76;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state8_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [127:0] tmp_data_V_1_reg_81;
reg    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_11001;
wire   [95:0] tmp_fu_68_p1;
reg   [95:0] tmp_reg_86;
wire   [127:0] tmp_data_V_4_fu_72_p1;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage6_subdone;
reg    ap_block_pp0_stage0_01001;
reg    ap_block_pp0_stage1_01001;
reg    ap_block_pp0_stage2_01001;
reg    ap_block_pp0_stage3_01001;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_01001;
wire    ap_block_state6_pp0_stage5_iter0;
wire    ap_block_pp0_stage5_01001;
wire    ap_block_pp0_stage6_01001;
reg    ap_block_pp0_stage4_11001;
reg    ap_block_pp0_stage5_11001;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
reg    ap_block_pp0_stage3_subdone;
reg    ap_block_pp0_stage4_subdone;
reg    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 RMdataIn_V_data_V_0_sel_rd = 1'b0;
#0 RMdataIn_V_data_V_0_sel_wr = 1'b0;
#0 RMdataIn_V_data_V_0_state = 2'd0;
#0 RMdataIn_V_last_V_0_state = 2'd0;
#0 RMdataOut_V_data_V_1_sel_rd = 1'b0;
#0 RMdataOut_V_data_V_1_sel_wr = 1'b0;
#0 RMdataOut_V_data_V_1_state = 2'd0;
#0 RMdataOut_V_last_V_1_sel_rd = 1'b0;
#0 RMdataOut_V_last_V_1_sel_wr = 1'b0;
#0 RMdataOut_V_last_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataIn_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == RMdataIn_V_data_V_0_ack_out) & (1'b1 == RMdataIn_V_data_V_0_vld_out))) begin
            RMdataIn_V_data_V_0_sel_rd <= ~RMdataIn_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataIn_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == RMdataIn_V_data_V_0_ack_in) & (1'b1 == RMdataIn_V_data_V_0_vld_in))) begin
            RMdataIn_V_data_V_0_sel_wr <= ~RMdataIn_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataIn_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == RMdataIn_V_data_V_0_state) & (1'b0 == RMdataIn_V_data_V_0_vld_in)) | ((2'd3 == RMdataIn_V_data_V_0_state) & (1'b0 == RMdataIn_V_data_V_0_vld_in) & (1'b1 == RMdataIn_V_data_V_0_ack_out)))) begin
            RMdataIn_V_data_V_0_state <= 2'd2;
        end else if ((((2'd1 == RMdataIn_V_data_V_0_state) & (1'b0 == RMdataIn_V_data_V_0_ack_out)) | ((2'd3 == RMdataIn_V_data_V_0_state) & (1'b0 == RMdataIn_V_data_V_0_ack_out) & (1'b1 == RMdataIn_V_data_V_0_vld_in)))) begin
            RMdataIn_V_data_V_0_state <= 2'd1;
        end else if (((~((1'b0 == RMdataIn_V_data_V_0_vld_in) & (1'b1 == RMdataIn_V_data_V_0_ack_out)) & ~((1'b0 == RMdataIn_V_data_V_0_ack_out) & (1'b1 == RMdataIn_V_data_V_0_vld_in)) & (2'd3 == RMdataIn_V_data_V_0_state)) | ((2'd1 == RMdataIn_V_data_V_0_state) & (1'b1 == RMdataIn_V_data_V_0_ack_out)) | ((2'd2 == RMdataIn_V_data_V_0_state) & (1'b1 == RMdataIn_V_data_V_0_vld_in)))) begin
            RMdataIn_V_data_V_0_state <= 2'd3;
        end else begin
            RMdataIn_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataIn_V_last_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == RMdataIn_V_last_V_0_state) & (1'b0 == RMdataIn_V_last_V_0_vld_in)) | ((2'd3 == RMdataIn_V_last_V_0_state) & (1'b0 == RMdataIn_V_last_V_0_vld_in) & (1'b1 == RMdataIn_V_last_V_0_ack_out)))) begin
            RMdataIn_V_last_V_0_state <= 2'd2;
        end else if ((((2'd1 == RMdataIn_V_last_V_0_state) & (1'b0 == RMdataIn_V_last_V_0_ack_out)) | ((2'd3 == RMdataIn_V_last_V_0_state) & (1'b0 == RMdataIn_V_last_V_0_ack_out) & (1'b1 == RMdataIn_V_last_V_0_vld_in)))) begin
            RMdataIn_V_last_V_0_state <= 2'd1;
        end else if (((~((1'b0 == RMdataIn_V_last_V_0_vld_in) & (1'b1 == RMdataIn_V_last_V_0_ack_out)) & ~((1'b0 == RMdataIn_V_last_V_0_ack_out) & (1'b1 == RMdataIn_V_last_V_0_vld_in)) & (2'd3 == RMdataIn_V_last_V_0_state)) | ((2'd1 == RMdataIn_V_last_V_0_state) & (1'b1 == RMdataIn_V_last_V_0_ack_out)) | ((2'd2 == RMdataIn_V_last_V_0_state) & (1'b1 == RMdataIn_V_last_V_0_vld_in)))) begin
            RMdataIn_V_last_V_0_state <= 2'd3;
        end else begin
            RMdataIn_V_last_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataOut_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == RMdataOut_V_data_V_1_ack_out) & (1'b1 == RMdataOut_V_data_V_1_vld_out))) begin
            RMdataOut_V_data_V_1_sel_rd <= ~RMdataOut_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataOut_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == RMdataOut_V_data_V_1_ack_in) & (1'b1 == RMdataOut_V_data_V_1_vld_in))) begin
            RMdataOut_V_data_V_1_sel_wr <= ~RMdataOut_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataOut_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == RMdataOut_V_data_V_1_state) & (1'b0 == RMdataOut_V_data_V_1_vld_in)) | ((2'd3 == RMdataOut_V_data_V_1_state) & (1'b0 == RMdataOut_V_data_V_1_vld_in) & (1'b1 == RMdataOut_V_data_V_1_ack_out)))) begin
            RMdataOut_V_data_V_1_state <= 2'd2;
        end else if ((((2'd1 == RMdataOut_V_data_V_1_state) & (1'b0 == RMdataOut_V_data_V_1_ack_out)) | ((2'd3 == RMdataOut_V_data_V_1_state) & (1'b0 == RMdataOut_V_data_V_1_ack_out) & (1'b1 == RMdataOut_V_data_V_1_vld_in)))) begin
            RMdataOut_V_data_V_1_state <= 2'd1;
        end else if (((~((1'b0 == RMdataOut_V_data_V_1_vld_in) & (1'b1 == RMdataOut_V_data_V_1_ack_out)) & ~((1'b0 == RMdataOut_V_data_V_1_ack_out) & (1'b1 == RMdataOut_V_data_V_1_vld_in)) & (2'd3 == RMdataOut_V_data_V_1_state)) | ((2'd1 == RMdataOut_V_data_V_1_state) & (1'b1 == RMdataOut_V_data_V_1_ack_out)) | ((2'd2 == RMdataOut_V_data_V_1_state) & (1'b1 == RMdataOut_V_data_V_1_vld_in)))) begin
            RMdataOut_V_data_V_1_state <= 2'd3;
        end else begin
            RMdataOut_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataOut_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == RMdataOut_V_last_V_1_ack_out) & (1'b1 == RMdataOut_V_last_V_1_vld_out))) begin
            RMdataOut_V_last_V_1_sel_rd <= ~RMdataOut_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataOut_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == RMdataOut_V_last_V_1_ack_in) & (1'b1 == RMdataOut_V_last_V_1_vld_in))) begin
            RMdataOut_V_last_V_1_sel_wr <= ~RMdataOut_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        RMdataOut_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == RMdataOut_V_last_V_1_state) & (1'b0 == RMdataOut_V_last_V_1_vld_in)) | ((2'd3 == RMdataOut_V_last_V_1_state) & (1'b0 == RMdataOut_V_last_V_1_vld_in) & (1'b1 == RMdataOut_V_last_V_1_ack_out)))) begin
            RMdataOut_V_last_V_1_state <= 2'd2;
        end else if ((((2'd1 == RMdataOut_V_last_V_1_state) & (1'b0 == RMdataOut_V_last_V_1_ack_out)) | ((2'd3 == RMdataOut_V_last_V_1_state) & (1'b0 == RMdataOut_V_last_V_1_ack_out) & (1'b1 == RMdataOut_V_last_V_1_vld_in)))) begin
            RMdataOut_V_last_V_1_state <= 2'd1;
        end else if (((~((1'b0 == RMdataOut_V_last_V_1_vld_in) & (1'b1 == RMdataOut_V_last_V_1_ack_out)) & ~((1'b0 == RMdataOut_V_last_V_1_ack_out) & (1'b1 == RMdataOut_V_last_V_1_vld_in)) & (2'd3 == RMdataOut_V_last_V_1_state)) | ((2'd1 == RMdataOut_V_last_V_1_state) & (1'b1 == RMdataOut_V_last_V_1_ack_out)) | ((2'd2 == RMdataOut_V_last_V_1_state) & (1'b1 == RMdataOut_V_last_V_1_vld_in)))) begin
            RMdataOut_V_last_V_1_state <= 2'd3;
        end else begin
            RMdataOut_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == RMdataIn_V_data_V_0_load_A)) begin
        RMdataIn_V_data_V_0_payload_A <= RMdataIn_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == RMdataIn_V_data_V_0_load_B)) begin
        RMdataIn_V_data_V_0_payload_B <= RMdataIn_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == RMdataOut_V_data_V_1_load_A)) begin
        RMdataOut_V_data_V_1_payload_A <= RMdataOut_V_data_V_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == RMdataOut_V_data_V_1_load_B)) begin
        RMdataOut_V_data_V_1_payload_B <= RMdataOut_V_data_V_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == RMdataOut_V_last_V_1_load_A)) begin
        RMdataOut_V_last_V_1_payload_A <= RMdataOut_V_last_V_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == RMdataOut_V_last_V_1_load_B)) begin
        RMdataOut_V_last_V_1_payload_B <= RMdataOut_V_last_V_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        tmp_data_V_1_reg_81 <= RMdataIn_V_data_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_data_V_reg_76 <= RMdataIn_V_data_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_reg_86 <= tmp_fu_68_p1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1)))) begin
        RMdataIn_TDATA_blk_n = RMdataIn_V_data_V_0_state[1'd0];
    end else begin
        RMdataIn_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        RMdataIn_V_data_V_0_ack_out = 1'b1;
    end else begin
        RMdataIn_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == RMdataIn_V_data_V_0_sel)) begin
        RMdataIn_V_data_V_0_data_out = RMdataIn_V_data_V_0_payload_B;
    end else begin
        RMdataIn_V_data_V_0_data_out = RMdataIn_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        RMdataIn_V_last_V_0_ack_out = 1'b1;
    end else begin
        RMdataIn_V_last_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        RMdataOut_TDATA_blk_n = RMdataOut_V_data_V_1_state[1'd1];
    end else begin
        RMdataOut_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_01001) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        RMdataOut_V_data_V_1_data_in = tmp_data_V_4_fu_72_p1;
    end else if (((1'b0 == ap_block_pp0_stage5_01001) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        RMdataOut_V_data_V_1_data_in = tmp_data_V_1_reg_81;
    end else if (((1'b0 == ap_block_pp0_stage4_01001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        RMdataOut_V_data_V_1_data_in = tmp_data_V_reg_76;
    end else if ((((1'b0 == ap_block_pp0_stage3_01001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_01001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_01001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        RMdataOut_V_data_V_1_data_in = RMdataIn_V_data_V_0_data_out;
    end else begin
        RMdataOut_V_data_V_1_data_in = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == RMdataOut_V_data_V_1_sel)) begin
        RMdataOut_V_data_V_1_data_out = RMdataOut_V_data_V_1_payload_B;
    end else begin
        RMdataOut_V_data_V_1_data_out = RMdataOut_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        RMdataOut_V_data_V_1_vld_in = 1'b1;
    end else begin
        RMdataOut_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_01001) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        RMdataOut_V_last_V_1_data_in = 1'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_01001) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage4_01001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage3_01001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_01001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_01001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        RMdataOut_V_last_V_1_data_in = 1'd0;
    end else begin
        RMdataOut_V_last_V_1_data_in = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == RMdataOut_V_last_V_1_sel)) begin
        RMdataOut_V_last_V_1_data_out = RMdataOut_V_last_V_1_payload_B;
    end else begin
        RMdataOut_V_last_V_1_data_out = RMdataOut_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        RMdataOut_V_last_V_1_vld_in = 1'b1;
    end else begin
        RMdataOut_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign RMdataIn_TREADY = RMdataIn_V_last_V_0_state[1'd1];

assign RMdataIn_V_data_V_0_ack_in = RMdataIn_V_data_V_0_state[1'd1];

assign RMdataIn_V_data_V_0_load_A = (~RMdataIn_V_data_V_0_sel_wr & RMdataIn_V_data_V_0_state_cmp_full);

assign RMdataIn_V_data_V_0_load_B = (RMdataIn_V_data_V_0_state_cmp_full & RMdataIn_V_data_V_0_sel_wr);

assign RMdataIn_V_data_V_0_sel = RMdataIn_V_data_V_0_sel_rd;

assign RMdataIn_V_data_V_0_state_cmp_full = ((RMdataIn_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign RMdataIn_V_data_V_0_vld_in = RMdataIn_TVALID;

assign RMdataIn_V_data_V_0_vld_out = RMdataIn_V_data_V_0_state[1'd0];

assign RMdataIn_V_last_V_0_vld_in = RMdataIn_TVALID;

assign RMdataOut_TDATA = RMdataOut_V_data_V_1_data_out;

assign RMdataOut_TLAST = RMdataOut_V_last_V_1_data_out;

assign RMdataOut_TVALID = RMdataOut_V_last_V_1_state[1'd0];

assign RMdataOut_V_data_V_1_ack_in = RMdataOut_V_data_V_1_state[1'd1];

assign RMdataOut_V_data_V_1_ack_out = RMdataOut_TREADY;

assign RMdataOut_V_data_V_1_load_A = (~RMdataOut_V_data_V_1_sel_wr & RMdataOut_V_data_V_1_state_cmp_full);

assign RMdataOut_V_data_V_1_load_B = (RMdataOut_V_data_V_1_state_cmp_full & RMdataOut_V_data_V_1_sel_wr);

assign RMdataOut_V_data_V_1_sel = RMdataOut_V_data_V_1_sel_rd;

assign RMdataOut_V_data_V_1_state_cmp_full = ((RMdataOut_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign RMdataOut_V_data_V_1_vld_out = RMdataOut_V_data_V_1_state[1'd0];

assign RMdataOut_V_last_V_1_ack_in = RMdataOut_V_last_V_1_state[1'd1];

assign RMdataOut_V_last_V_1_ack_out = RMdataOut_TREADY;

assign RMdataOut_V_last_V_1_load_A = (~RMdataOut_V_last_V_1_sel_wr & RMdataOut_V_last_V_1_state_cmp_full);

assign RMdataOut_V_last_V_1_load_B = (RMdataOut_V_last_V_1_state_cmp_full & RMdataOut_V_last_V_1_sel_wr);

assign RMdataOut_V_last_V_1_sel = RMdataOut_V_last_V_1_sel_rd;

assign RMdataOut_V_last_V_1_state_cmp_full = ((RMdataOut_V_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign RMdataOut_V_last_V_1_vld_out = RMdataOut_V_last_V_1_state[1'd0];

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (ap_start == 1'b0))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b0 == RMdataOut_V_data_V_1_ack_in) | (1'b0 == RMdataOut_V_last_V_1_ack_in))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (1'b0 == RMdataOut_V_data_V_1_ack_in) | (ap_start == 1'b0))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b0 == RMdataOut_V_data_V_1_ack_in) | (1'b0 == RMdataOut_V_last_V_1_ack_in))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (1'b0 == RMdataOut_V_data_V_1_ack_in) | (ap_start == 1'b0))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b0 == RMdataOut_V_data_V_1_ack_in) | (1'b0 == RMdataOut_V_last_V_1_ack_in))));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = ((1'b0 == RMdataIn_V_data_V_0_vld_out) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (1'b0 == RMdataOut_V_data_V_1_ack_in)));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (1'b0 == RMdataOut_V_data_V_1_ack_in)));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_01001 = ((1'b0 == RMdataIn_V_data_V_0_vld_out) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (1'b0 == RMdataOut_V_data_V_1_ack_in)));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (1'b0 == RMdataOut_V_data_V_1_ack_in)));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_01001 = ((1'b0 == RMdataIn_V_data_V_0_vld_out) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (1'b0 == RMdataOut_V_data_V_1_ack_in)));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (1'b0 == RMdataOut_V_data_V_1_ack_in)));
end

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage4_11001 = ((1'b0 == RMdataOut_V_data_V_1_ack_in) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage4_subdone = ((1'b0 == RMdataOut_V_data_V_1_ack_in) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage5_11001 = ((1'b0 == RMdataOut_V_data_V_1_ack_in) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage5_subdone = ((1'b0 == RMdataOut_V_data_V_1_ack_in) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage6_11001 = ((1'b0 == RMdataOut_V_data_V_1_ack_in) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage6_subdone = ((1'b0 == RMdataOut_V_data_V_1_ack_in) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((1'b0 == RMdataIn_V_data_V_0_vld_out) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = (1'b0 == RMdataIn_V_data_V_0_vld_out);
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = (1'b0 == RMdataIn_V_data_V_0_vld_out);
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = (1'b0 == RMdataIn_V_data_V_0_vld_out);
end

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state8_pp0_stage0_iter1 = ((1'b0 == RMdataOut_V_data_V_1_ack_in) | (1'b0 == RMdataOut_V_last_V_1_ack_in));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign tmp_data_V_4_fu_72_p1 = tmp_reg_86;

assign tmp_fu_68_p1 = RMdataIn_V_data_V_0_data_out[95:0];

endmodule //rate_match
