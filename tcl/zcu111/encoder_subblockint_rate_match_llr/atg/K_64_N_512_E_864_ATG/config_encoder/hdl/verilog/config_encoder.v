// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="config_encoder,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu21dr-ffvd1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=82,HLS_SYN_LUT=142,HLS_VERSION=2018_3}" *)

module config_encoder (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        enc_ctrl_V_V_TDATA,
        enc_ctrl_V_V_TVALID,
        enc_ctrl_V_V_TREADY,
        din_words_TDATA,
        din_words_TVALID,
        din_words_TREADY,
        din_words_TLAST,
        dout_words_TDATA,
        dout_words_TVALID,
        dout_words_TREADY,
        dout_words_TLAST
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
parameter    ap_const_lv32_0 = 32'd0;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] enc_ctrl_V_V_TDATA;
output   enc_ctrl_V_V_TVALID;
input   enc_ctrl_V_V_TREADY;
output  [7:0] din_words_TDATA;
output   din_words_TVALID;
input   din_words_TREADY;
output  [0:0] din_words_TLAST;
output  [7:0] dout_words_TDATA;
output   dout_words_TVALID;
input   dout_words_TREADY;
output  [0:0] dout_words_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] enc_ctrl_V_V_1_data_out;
reg    enc_ctrl_V_V_1_vld_in;
wire    enc_ctrl_V_V_1_vld_out;
wire    enc_ctrl_V_V_1_ack_in;
wire    enc_ctrl_V_V_1_ack_out;
reg   [31:0] enc_ctrl_V_V_1_payload_A;
reg   [31:0] enc_ctrl_V_V_1_payload_B;
reg    enc_ctrl_V_V_1_sel_rd;
reg    enc_ctrl_V_V_1_sel_wr;
wire    enc_ctrl_V_V_1_sel;
wire    enc_ctrl_V_V_1_load_A;
wire    enc_ctrl_V_V_1_load_B;
reg   [1:0] enc_ctrl_V_V_1_state;
wire    enc_ctrl_V_V_1_state_cmp_full;
wire   [7:0] din_words_V_data_V_1_data_out;
reg    din_words_V_data_V_1_vld_in;
wire    din_words_V_data_V_1_vld_out;
wire    din_words_V_data_V_1_ack_in;
wire    din_words_V_data_V_1_ack_out;
reg    din_words_V_data_V_1_sel_rd;
wire    din_words_V_data_V_1_sel;
reg   [1:0] din_words_V_data_V_1_state;
wire   [0:0] din_words_V_last_V_1_data_out;
reg    din_words_V_last_V_1_vld_in;
wire    din_words_V_last_V_1_vld_out;
wire    din_words_V_last_V_1_ack_in;
wire    din_words_V_last_V_1_ack_out;
reg    din_words_V_last_V_1_sel_rd;
wire    din_words_V_last_V_1_sel;
reg   [1:0] din_words_V_last_V_1_state;
wire   [7:0] dout_words_V_data_V_1_data_out;
reg    dout_words_V_data_V_1_vld_in;
wire    dout_words_V_data_V_1_vld_out;
wire    dout_words_V_data_V_1_ack_in;
wire    dout_words_V_data_V_1_ack_out;
reg    dout_words_V_data_V_1_sel_rd;
wire    dout_words_V_data_V_1_sel;
reg   [1:0] dout_words_V_data_V_1_state;
wire   [0:0] dout_words_V_last_V_1_data_out;
reg    dout_words_V_last_V_1_vld_in;
wire    dout_words_V_last_V_1_vld_out;
wire    dout_words_V_last_V_1_ack_in;
wire    dout_words_V_last_V_1_ack_out;
reg    dout_words_V_last_V_1_sel_rd;
wire    dout_words_V_last_V_1_sel;
reg   [1:0] dout_words_V_last_V_1_state;
reg    enc_ctrl_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state2;
reg    din_words_TDATA_blk_n;
reg    dout_words_TDATA_blk_n;
wire   [31:0] p_Result_2_fu_117_p5;
reg    ap_block_state1_io;
wire   [31:0] p_Result_s_fu_93_p5;
wire   [31:0] p_Result_1_fu_105_p5;
reg    ap_block_state2;
reg    ap_block_state2_io;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 enc_ctrl_V_V_1_sel_rd = 1'b0;
#0 enc_ctrl_V_V_1_sel_wr = 1'b0;
#0 enc_ctrl_V_V_1_state = 2'd0;
#0 din_words_V_data_V_1_sel_rd = 1'b0;
#0 din_words_V_data_V_1_state = 2'd0;
#0 din_words_V_last_V_1_sel_rd = 1'b0;
#0 din_words_V_last_V_1_state = 2'd0;
#0 dout_words_V_data_V_1_sel_rd = 1'b0;
#0 dout_words_V_data_V_1_state = 2'd0;
#0 dout_words_V_last_V_1_sel_rd = 1'b0;
#0 dout_words_V_last_V_1_state = 2'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_words_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((din_words_V_data_V_1_vld_out == 1'b1) & (din_words_V_data_V_1_ack_out == 1'b1))) begin
            din_words_V_data_V_1_sel_rd <= ~din_words_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_words_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((din_words_V_data_V_1_state == 2'd2) & (din_words_V_data_V_1_vld_in == 1'b0)) | ((din_words_V_data_V_1_state == 2'd3) & (din_words_V_data_V_1_vld_in == 1'b0) & (din_words_V_data_V_1_ack_out == 1'b1)))) begin
            din_words_V_data_V_1_state <= 2'd2;
        end else if ((((din_words_V_data_V_1_state == 2'd1) & (din_words_V_data_V_1_ack_out == 1'b0)) | ((din_words_V_data_V_1_state == 2'd3) & (din_words_V_data_V_1_ack_out == 1'b0) & (din_words_V_data_V_1_vld_in == 1'b1)))) begin
            din_words_V_data_V_1_state <= 2'd1;
        end else if (((~((din_words_V_data_V_1_vld_in == 1'b0) & (din_words_V_data_V_1_ack_out == 1'b1)) & ~((din_words_V_data_V_1_ack_out == 1'b0) & (din_words_V_data_V_1_vld_in == 1'b1)) & (din_words_V_data_V_1_state == 2'd3)) | ((din_words_V_data_V_1_state == 2'd1) & (din_words_V_data_V_1_ack_out == 1'b1)) | ((din_words_V_data_V_1_state == 2'd2) & (din_words_V_data_V_1_vld_in == 1'b1)))) begin
            din_words_V_data_V_1_state <= 2'd3;
        end else begin
            din_words_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_words_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((din_words_V_last_V_1_ack_out == 1'b1) & (din_words_V_last_V_1_vld_out == 1'b1))) begin
            din_words_V_last_V_1_sel_rd <= ~din_words_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_words_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((din_words_V_last_V_1_state == 2'd2) & (din_words_V_last_V_1_vld_in == 1'b0)) | ((din_words_V_last_V_1_state == 2'd3) & (din_words_V_last_V_1_vld_in == 1'b0) & (din_words_V_last_V_1_ack_out == 1'b1)))) begin
            din_words_V_last_V_1_state <= 2'd2;
        end else if ((((din_words_V_last_V_1_state == 2'd1) & (din_words_V_last_V_1_ack_out == 1'b0)) | ((din_words_V_last_V_1_state == 2'd3) & (din_words_V_last_V_1_ack_out == 1'b0) & (din_words_V_last_V_1_vld_in == 1'b1)))) begin
            din_words_V_last_V_1_state <= 2'd1;
        end else if (((~((din_words_V_last_V_1_vld_in == 1'b0) & (din_words_V_last_V_1_ack_out == 1'b1)) & ~((din_words_V_last_V_1_ack_out == 1'b0) & (din_words_V_last_V_1_vld_in == 1'b1)) & (din_words_V_last_V_1_state == 2'd3)) | ((din_words_V_last_V_1_state == 2'd1) & (din_words_V_last_V_1_ack_out == 1'b1)) | ((din_words_V_last_V_1_state == 2'd2) & (din_words_V_last_V_1_vld_in == 1'b1)))) begin
            din_words_V_last_V_1_state <= 2'd3;
        end else begin
            din_words_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_words_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dout_words_V_data_V_1_ack_out == 1'b1) & (dout_words_V_data_V_1_vld_out == 1'b1))) begin
            dout_words_V_data_V_1_sel_rd <= ~dout_words_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_words_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((dout_words_V_data_V_1_state == 2'd2) & (dout_words_V_data_V_1_vld_in == 1'b0)) | ((dout_words_V_data_V_1_state == 2'd3) & (dout_words_V_data_V_1_vld_in == 1'b0) & (dout_words_V_data_V_1_ack_out == 1'b1)))) begin
            dout_words_V_data_V_1_state <= 2'd2;
        end else if ((((dout_words_V_data_V_1_state == 2'd1) & (dout_words_V_data_V_1_ack_out == 1'b0)) | ((dout_words_V_data_V_1_state == 2'd3) & (dout_words_V_data_V_1_ack_out == 1'b0) & (dout_words_V_data_V_1_vld_in == 1'b1)))) begin
            dout_words_V_data_V_1_state <= 2'd1;
        end else if (((~((dout_words_V_data_V_1_vld_in == 1'b0) & (dout_words_V_data_V_1_ack_out == 1'b1)) & ~((dout_words_V_data_V_1_ack_out == 1'b0) & (dout_words_V_data_V_1_vld_in == 1'b1)) & (dout_words_V_data_V_1_state == 2'd3)) | ((dout_words_V_data_V_1_state == 2'd1) & (dout_words_V_data_V_1_ack_out == 1'b1)) | ((dout_words_V_data_V_1_state == 2'd2) & (dout_words_V_data_V_1_vld_in == 1'b1)))) begin
            dout_words_V_data_V_1_state <= 2'd3;
        end else begin
            dout_words_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_words_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dout_words_V_last_V_1_ack_out == 1'b1) & (dout_words_V_last_V_1_vld_out == 1'b1))) begin
            dout_words_V_last_V_1_sel_rd <= ~dout_words_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_words_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((dout_words_V_last_V_1_state == 2'd2) & (dout_words_V_last_V_1_vld_in == 1'b0)) | ((dout_words_V_last_V_1_state == 2'd3) & (dout_words_V_last_V_1_vld_in == 1'b0) & (dout_words_V_last_V_1_ack_out == 1'b1)))) begin
            dout_words_V_last_V_1_state <= 2'd2;
        end else if ((((dout_words_V_last_V_1_state == 2'd1) & (dout_words_V_last_V_1_ack_out == 1'b0)) | ((dout_words_V_last_V_1_state == 2'd3) & (dout_words_V_last_V_1_ack_out == 1'b0) & (dout_words_V_last_V_1_vld_in == 1'b1)))) begin
            dout_words_V_last_V_1_state <= 2'd1;
        end else if (((~((dout_words_V_last_V_1_vld_in == 1'b0) & (dout_words_V_last_V_1_ack_out == 1'b1)) & ~((dout_words_V_last_V_1_ack_out == 1'b0) & (dout_words_V_last_V_1_vld_in == 1'b1)) & (dout_words_V_last_V_1_state == 2'd3)) | ((dout_words_V_last_V_1_state == 2'd1) & (dout_words_V_last_V_1_ack_out == 1'b1)) | ((dout_words_V_last_V_1_state == 2'd2) & (dout_words_V_last_V_1_vld_in == 1'b1)))) begin
            dout_words_V_last_V_1_state <= 2'd3;
        end else begin
            dout_words_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        enc_ctrl_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((enc_ctrl_V_V_1_ack_out == 1'b1) & (enc_ctrl_V_V_1_vld_out == 1'b1))) begin
            enc_ctrl_V_V_1_sel_rd <= ~enc_ctrl_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        enc_ctrl_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((enc_ctrl_V_V_1_ack_in == 1'b1) & (enc_ctrl_V_V_1_vld_in == 1'b1))) begin
            enc_ctrl_V_V_1_sel_wr <= ~enc_ctrl_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        enc_ctrl_V_V_1_state <= 2'd0;
    end else begin
        if ((((enc_ctrl_V_V_1_state == 2'd2) & (enc_ctrl_V_V_1_vld_in == 1'b0)) | ((enc_ctrl_V_V_1_state == 2'd3) & (enc_ctrl_V_V_1_vld_in == 1'b0) & (enc_ctrl_V_V_1_ack_out == 1'b1)))) begin
            enc_ctrl_V_V_1_state <= 2'd2;
        end else if ((((enc_ctrl_V_V_1_state == 2'd1) & (enc_ctrl_V_V_1_ack_out == 1'b0)) | ((enc_ctrl_V_V_1_state == 2'd3) & (enc_ctrl_V_V_1_ack_out == 1'b0) & (enc_ctrl_V_V_1_vld_in == 1'b1)))) begin
            enc_ctrl_V_V_1_state <= 2'd1;
        end else if (((~((enc_ctrl_V_V_1_vld_in == 1'b0) & (enc_ctrl_V_V_1_ack_out == 1'b1)) & ~((enc_ctrl_V_V_1_ack_out == 1'b0) & (enc_ctrl_V_V_1_vld_in == 1'b1)) & (enc_ctrl_V_V_1_state == 2'd3)) | ((enc_ctrl_V_V_1_state == 2'd1) & (enc_ctrl_V_V_1_ack_out == 1'b1)) | ((enc_ctrl_V_V_1_state == 2'd2) & (enc_ctrl_V_V_1_vld_in == 1'b1)))) begin
            enc_ctrl_V_V_1_state <= 2'd3;
        end else begin
            enc_ctrl_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((enc_ctrl_V_V_1_load_A == 1'b1)) begin
        enc_ctrl_V_V_1_payload_A <= p_Result_2_fu_117_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((enc_ctrl_V_V_1_load_B == 1'b1)) begin
        enc_ctrl_V_V_1_payload_B <= p_Result_2_fu_117_p5;
    end
end

always @ (*) begin
    if ((~((din_words_V_data_V_1_ack_in == 1'b0) | (enc_ctrl_V_V_1_ack_in == 1'b0) | (dout_words_V_last_V_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_last_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state2_io)) & (enc_ctrl_V_V_1_state[1'd0] == 1'b0) & (dout_words_V_last_V_1_state[1'd0] == 1'b0) & (dout_words_V_data_V_1_state[1'd0] == 1'b0) & (din_words_V_last_V_1_state[1'd0] == 1'b0) & (din_words_V_data_V_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((din_words_V_data_V_1_ack_in == 1'b0) | (enc_ctrl_V_V_1_ack_in == 1'b0) | (dout_words_V_last_V_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_last_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state2_io)) & (enc_ctrl_V_V_1_state[1'd0] == 1'b0) & (dout_words_V_last_V_1_state[1'd0] == 1'b0) & (dout_words_V_data_V_1_state[1'd0] == 1'b0) & (din_words_V_last_V_1_state[1'd0] == 1'b0) & (din_words_V_data_V_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        din_words_TDATA_blk_n = din_words_V_data_V_1_state[1'd1];
    end else begin
        din_words_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        din_words_V_data_V_1_vld_in = 1'b1;
    end else begin
        din_words_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        din_words_V_last_V_1_vld_in = 1'b1;
    end else begin
        din_words_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        dout_words_TDATA_blk_n = dout_words_V_data_V_1_state[1'd1];
    end else begin
        dout_words_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        dout_words_V_data_V_1_vld_in = 1'b1;
    end else begin
        dout_words_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        dout_words_V_last_V_1_vld_in = 1'b1;
    end else begin
        dout_words_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((enc_ctrl_V_V_1_sel == 1'b1)) begin
        enc_ctrl_V_V_1_data_out = enc_ctrl_V_V_1_payload_B;
    end else begin
        enc_ctrl_V_V_1_data_out = enc_ctrl_V_V_1_payload_A;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        enc_ctrl_V_V_1_vld_in = 1'b1;
    end else begin
        enc_ctrl_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        enc_ctrl_V_V_TDATA_blk_n = enc_ctrl_V_V_1_state[1'd1];
    end else begin
        enc_ctrl_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((din_words_V_data_V_1_ack_in == 1'b0) | (enc_ctrl_V_V_1_ack_in == 1'b0) | (dout_words_V_last_V_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_last_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state2_io)) & (enc_ctrl_V_V_1_state[1'd0] == 1'b0) & (dout_words_V_last_V_1_state[1'd0] == 1'b0) & (dout_words_V_data_V_1_state[1'd0] == 1'b0) & (din_words_V_last_V_1_state[1'd0] == 1'b0) & (din_words_V_data_V_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1_io = ((din_words_V_data_V_1_ack_in == 1'b0) | (enc_ctrl_V_V_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state2 = ((din_words_V_data_V_1_ack_in == 1'b0) | (enc_ctrl_V_V_1_ack_in == 1'b0) | (dout_words_V_last_V_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_last_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state2_io = ((din_words_V_data_V_1_ack_in == 1'b0) | (enc_ctrl_V_V_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign din_words_TDATA = din_words_V_data_V_1_data_out;

assign din_words_TLAST = din_words_V_last_V_1_data_out;

assign din_words_TVALID = din_words_V_last_V_1_state[1'd0];

assign din_words_V_data_V_1_ack_in = din_words_V_data_V_1_state[1'd1];

assign din_words_V_data_V_1_ack_out = din_words_TREADY;

assign din_words_V_data_V_1_data_out = 8'd4;

assign din_words_V_data_V_1_sel = din_words_V_data_V_1_sel_rd;

assign din_words_V_data_V_1_vld_out = din_words_V_data_V_1_state[1'd0];

assign din_words_V_last_V_1_ack_in = din_words_V_last_V_1_state[1'd1];

assign din_words_V_last_V_1_ack_out = din_words_TREADY;

assign din_words_V_last_V_1_data_out = 1'd1;

assign din_words_V_last_V_1_sel = din_words_V_last_V_1_sel_rd;

assign din_words_V_last_V_1_vld_out = din_words_V_last_V_1_state[1'd0];

assign dout_words_TDATA = dout_words_V_data_V_1_data_out;

assign dout_words_TLAST = dout_words_V_last_V_1_data_out;

assign dout_words_TVALID = dout_words_V_last_V_1_state[1'd0];

assign dout_words_V_data_V_1_ack_in = dout_words_V_data_V_1_state[1'd1];

assign dout_words_V_data_V_1_ack_out = dout_words_TREADY;

assign dout_words_V_data_V_1_data_out = 8'd16;

assign dout_words_V_data_V_1_sel = dout_words_V_data_V_1_sel_rd;

assign dout_words_V_data_V_1_vld_out = dout_words_V_data_V_1_state[1'd0];

assign dout_words_V_last_V_1_ack_in = dout_words_V_last_V_1_state[1'd1];

assign dout_words_V_last_V_1_ack_out = dout_words_TREADY;

assign dout_words_V_last_V_1_data_out = 1'd1;

assign dout_words_V_last_V_1_sel = dout_words_V_last_V_1_sel_rd;

assign dout_words_V_last_V_1_vld_out = dout_words_V_last_V_1_state[1'd0];

assign enc_ctrl_V_V_1_ack_in = enc_ctrl_V_V_1_state[1'd1];

assign enc_ctrl_V_V_1_ack_out = enc_ctrl_V_V_TREADY;

assign enc_ctrl_V_V_1_load_A = (~enc_ctrl_V_V_1_sel_wr & enc_ctrl_V_V_1_state_cmp_full);

assign enc_ctrl_V_V_1_load_B = (enc_ctrl_V_V_1_state_cmp_full & enc_ctrl_V_V_1_sel_wr);

assign enc_ctrl_V_V_1_sel = enc_ctrl_V_V_1_sel_rd;

assign enc_ctrl_V_V_1_state_cmp_full = ((enc_ctrl_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign enc_ctrl_V_V_1_vld_out = enc_ctrl_V_V_1_state[1'd0];

assign enc_ctrl_V_V_TDATA = enc_ctrl_V_V_1_data_out;

assign enc_ctrl_V_V_TVALID = enc_ctrl_V_V_1_state[1'd0];

assign p_Result_1_fu_105_p5 = {{p_Result_s_fu_93_p5[31:24]}, {16'd0}, {p_Result_s_fu_93_p5[7:0]}};

assign p_Result_2_fu_117_p5 = {{p_Result_1_fu_105_p5[31:7]}, {7'd0}};

assign p_Result_s_fu_93_p5 = {{8'd0}, {ap_const_lv32_0[23:0]}};

endmodule //config_encoder
