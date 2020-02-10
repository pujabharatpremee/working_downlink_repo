// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="demodulation,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu21dr-ffvd1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=2.033000,HLS_SYN_LAT=1,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=824,HLS_SYN_LUT=1190,HLS_VERSION=2018_3}" *)

module demodulation (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        demod_out_TREADY,
        real_in_TDATA,
        real_in_TVALID,
        real_in_TREADY,
        real_in_TLAST,
        imag_in_TDATA,
        imag_in_TVALID,
        imag_in_TREADY,
        imag_in_TLAST,
        demod_out_TDATA,
        demod_out_TVALID,
        demod_out_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   demod_out_TREADY;
input  [127:0] real_in_TDATA;
input   real_in_TVALID;
output   real_in_TREADY;
input  [0:0] real_in_TLAST;
input  [127:0] imag_in_TDATA;
input   imag_in_TVALID;
output   imag_in_TREADY;
input  [0:0] imag_in_TLAST;
output  [127:0] demod_out_TDATA;
output   demod_out_TVALID;
output  [0:0] demod_out_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    real_in_V_data_V_0_vld_out;
wire    imag_in_V_data_V_0_vld_out;
reg    ap_block_state1_pp0_stage0_iter0;
wire    demod_out_V_data_V_1_ack_in;
wire    demod_out_V_last_V_1_ack_in;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [127:0] real_in_V_data_V_0_data_out;
wire    real_in_V_data_V_0_vld_in;
wire    real_in_V_data_V_0_ack_in;
reg    real_in_V_data_V_0_ack_out;
reg   [127:0] real_in_V_data_V_0_payload_A;
reg   [127:0] real_in_V_data_V_0_payload_B;
reg    real_in_V_data_V_0_sel_rd;
reg    real_in_V_data_V_0_sel_wr;
wire    real_in_V_data_V_0_sel;
wire    real_in_V_data_V_0_load_A;
wire    real_in_V_data_V_0_load_B;
reg   [1:0] real_in_V_data_V_0_state;
wire    real_in_V_data_V_0_state_cmp_full;
wire    real_in_V_last_V_0_vld_in;
reg    real_in_V_last_V_0_ack_out;
reg   [1:0] real_in_V_last_V_0_state;
reg   [127:0] imag_in_V_data_V_0_data_out;
wire    imag_in_V_data_V_0_vld_in;
wire    imag_in_V_data_V_0_ack_in;
reg    imag_in_V_data_V_0_ack_out;
reg   [127:0] imag_in_V_data_V_0_payload_A;
reg   [127:0] imag_in_V_data_V_0_payload_B;
reg    imag_in_V_data_V_0_sel_rd;
reg    imag_in_V_data_V_0_sel_wr;
wire    imag_in_V_data_V_0_sel;
wire    imag_in_V_data_V_0_load_A;
wire    imag_in_V_data_V_0_load_B;
reg   [1:0] imag_in_V_data_V_0_state;
wire    imag_in_V_data_V_0_state_cmp_full;
wire    imag_in_V_last_V_0_vld_in;
reg    imag_in_V_last_V_0_ack_out;
reg   [1:0] imag_in_V_last_V_0_state;
reg   [127:0] demod_out_V_data_V_1_data_out;
reg    demod_out_V_data_V_1_vld_in;
wire    demod_out_V_data_V_1_vld_out;
wire    demod_out_V_data_V_1_ack_out;
reg   [127:0] demod_out_V_data_V_1_payload_A;
reg   [127:0] demod_out_V_data_V_1_payload_B;
reg    demod_out_V_data_V_1_sel_rd;
reg    demod_out_V_data_V_1_sel_wr;
wire    demod_out_V_data_V_1_sel;
wire    demod_out_V_data_V_1_load_A;
wire    demod_out_V_data_V_1_load_B;
reg   [1:0] demod_out_V_data_V_1_state;
wire    demod_out_V_data_V_1_state_cmp_full;
reg   [0:0] demod_out_V_last_V_1_data_out;
reg    demod_out_V_last_V_1_vld_in;
wire    demod_out_V_last_V_1_vld_out;
wire    demod_out_V_last_V_1_ack_out;
reg   [0:0] demod_out_V_last_V_1_payload_A;
reg   [0:0] demod_out_V_last_V_1_payload_B;
reg    demod_out_V_last_V_1_sel_rd;
reg    demod_out_V_last_V_1_sel_wr;
wire    demod_out_V_last_V_1_sel;
wire    demod_out_V_last_V_1_load_A;
wire    demod_out_V_last_V_1_load_B;
reg   [1:0] demod_out_V_last_V_1_state;
wire    demod_out_V_last_V_1_state_cmp_full;
reg   [31:0] soft_txn;
reg    real_in_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    imag_in_TDATA_blk_n;
reg    demod_out_TDATA_blk_n;
wire   [127:0] tmp_data_V_fu_940_p9;
wire   [0:0] tmp_last_V_fu_965_p2;
reg    ap_block_pp0_stage0_subdone;
wire   [31:0] tmp_1_fu_978_p3;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] tmp_3_fu_120_p1;
wire   [15:0] tmp_5_fu_124_p1;
wire   [0:0] tmp_6_fu_268_p2;
wire   [0:0] tmp_7_fu_274_p2;
wire   [0:0] tmp_4_fu_292_p2;
wire   [0:0] tmp_8_fu_280_p2;
wire   [0:0] tmp_9_fu_286_p2;
wire   [0:0] sel_tmp1_fu_304_p2;
wire   [0:0] tmp_fu_310_p2;
wire   [0:0] sel_tmp2_fu_316_p2;
wire   [0:0] tmp_2_fu_298_p2;
wire   [0:0] or_cond_fu_330_p2;
wire   [15:0] newSel_fu_322_p3;
wire   [15:0] newSel39_cast_cast_fu_336_p3;
wire   [15:0] p_Result_22_1_fu_128_p4;
wire   [15:0] p_Result_23_1_fu_138_p4;
wire   [0:0] tmp_6_1_fu_352_p2;
wire   [0:0] tmp_7_1_fu_358_p2;
wire   [0:0] tmp_4_1_fu_376_p2;
wire   [0:0] tmp_8_1_fu_364_p2;
wire   [0:0] tmp_9_1_fu_370_p2;
wire   [0:0] sel_tmp5_fu_388_p2;
wire   [0:0] tmp1_fu_394_p2;
wire   [0:0] sel_tmp6_fu_400_p2;
wire   [0:0] tmp_10_1_fu_382_p2;
wire   [0:0] or_cond1_fu_414_p2;
wire   [15:0] newSel2_fu_406_p3;
wire   [15:0] newSel45_cast_cast_fu_420_p3;
wire   [15:0] p_Result_22_2_fu_148_p4;
wire   [15:0] p_Result_23_2_fu_158_p4;
wire   [0:0] tmp_6_2_fu_436_p2;
wire   [0:0] tmp_7_2_fu_442_p2;
wire   [0:0] tmp_4_2_fu_460_p2;
wire   [0:0] tmp_8_2_fu_448_p2;
wire   [0:0] tmp_9_2_fu_454_p2;
wire   [0:0] sel_tmp9_fu_472_p2;
wire   [0:0] tmp2_fu_478_p2;
wire   [0:0] sel_tmp_fu_484_p2;
wire   [0:0] tmp_10_2_fu_466_p2;
wire   [0:0] or_cond2_fu_498_p2;
wire   [15:0] newSel4_fu_490_p3;
wire   [15:0] newSel51_cast_cast_fu_504_p3;
wire   [15:0] p_Result_22_3_fu_168_p4;
wire   [15:0] p_Result_23_3_fu_178_p4;
wire   [0:0] tmp_6_3_fu_520_p2;
wire   [0:0] tmp_7_3_fu_526_p2;
wire   [0:0] tmp_4_3_fu_544_p2;
wire   [0:0] tmp_8_3_fu_532_p2;
wire   [0:0] tmp_9_3_fu_538_p2;
wire   [0:0] sel_tmp3_fu_556_p2;
wire   [0:0] tmp3_fu_562_p2;
wire   [0:0] sel_tmp4_fu_568_p2;
wire   [0:0] tmp_10_3_fu_550_p2;
wire   [0:0] or_cond3_fu_582_p2;
wire   [15:0] newSel6_fu_574_p3;
wire   [15:0] newSel57_cast_cast_fu_588_p3;
wire   [15:0] p_Result_22_4_fu_188_p4;
wire   [15:0] p_Result_23_4_fu_198_p4;
wire   [0:0] tmp_6_4_fu_604_p2;
wire   [0:0] tmp_7_4_fu_610_p2;
wire   [0:0] tmp_4_4_fu_628_p2;
wire   [0:0] tmp_8_4_fu_616_p2;
wire   [0:0] tmp_9_4_fu_622_p2;
wire   [0:0] sel_tmp7_fu_640_p2;
wire   [0:0] tmp4_fu_646_p2;
wire   [0:0] sel_tmp8_fu_652_p2;
wire   [0:0] tmp_10_4_fu_634_p2;
wire   [0:0] or_cond4_fu_666_p2;
wire   [15:0] newSel8_fu_658_p3;
wire   [15:0] newSel63_cast_cast_fu_672_p3;
wire   [15:0] p_Result_22_5_fu_208_p4;
wire   [15:0] p_Result_23_5_fu_218_p4;
wire   [0:0] tmp_6_5_fu_688_p2;
wire   [0:0] tmp_7_5_fu_694_p2;
wire   [0:0] tmp_4_5_fu_712_p2;
wire   [0:0] tmp_8_5_fu_700_p2;
wire   [0:0] tmp_9_5_fu_706_p2;
wire   [0:0] sel_tmp10_fu_724_p2;
wire   [0:0] tmp5_fu_730_p2;
wire   [0:0] sel_tmp11_fu_736_p2;
wire   [0:0] tmp_10_5_fu_718_p2;
wire   [0:0] or_cond5_fu_750_p2;
wire   [15:0] newSel10_fu_742_p3;
wire   [15:0] newSel69_cast_cast_fu_756_p3;
wire   [15:0] p_Result_22_6_fu_228_p4;
wire   [15:0] p_Result_23_6_fu_238_p4;
wire   [0:0] tmp_6_6_fu_772_p2;
wire   [0:0] tmp_7_6_fu_778_p2;
wire   [0:0] tmp_4_6_fu_796_p2;
wire   [0:0] tmp_8_6_fu_784_p2;
wire   [0:0] tmp_9_6_fu_790_p2;
wire   [0:0] sel_tmp12_fu_808_p2;
wire   [0:0] tmp6_fu_814_p2;
wire   [0:0] sel_tmp13_fu_820_p2;
wire   [0:0] tmp_10_6_fu_802_p2;
wire   [0:0] or_cond6_fu_834_p2;
wire   [15:0] newSel12_fu_826_p3;
wire   [15:0] newSel75_cast_cast_fu_840_p3;
wire   [15:0] p_Result_22_7_fu_248_p4;
wire   [15:0] p_Result_23_7_fu_258_p4;
wire   [0:0] tmp_6_7_fu_856_p2;
wire   [0:0] tmp_7_7_fu_862_p2;
wire   [0:0] tmp_4_7_fu_880_p2;
wire   [0:0] tmp_8_7_fu_868_p2;
wire   [0:0] tmp_9_7_fu_874_p2;
wire   [0:0] sel_tmp14_fu_892_p2;
wire   [0:0] tmp7_fu_898_p2;
wire   [0:0] sel_tmp15_fu_904_p2;
wire   [0:0] tmp_10_7_fu_886_p2;
wire   [0:0] or_cond7_fu_918_p2;
wire   [15:0] newSel14_fu_910_p3;
wire   [15:0] newSel81_cast_cast_fu_924_p3;
wire   [15:0] newSel15_fu_932_p3;
wire   [15:0] newSel13_fu_848_p3;
wire   [15:0] newSel11_fu_764_p3;
wire   [15:0] newSel9_fu_680_p3;
wire   [15:0] newSel7_fu_596_p3;
wire   [15:0] newSel5_fu_512_p3;
wire   [15:0] newSel3_fu_428_p3;
wire   [15:0] newSel1_fu_344_p3;
wire   [31:0] soft_txn_load_op_fu_972_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 real_in_V_data_V_0_sel_rd = 1'b0;
#0 real_in_V_data_V_0_sel_wr = 1'b0;
#0 real_in_V_data_V_0_state = 2'd0;
#0 real_in_V_last_V_0_state = 2'd0;
#0 imag_in_V_data_V_0_sel_rd = 1'b0;
#0 imag_in_V_data_V_0_sel_wr = 1'b0;
#0 imag_in_V_data_V_0_state = 2'd0;
#0 imag_in_V_last_V_0_state = 2'd0;
#0 demod_out_V_data_V_1_sel_rd = 1'b0;
#0 demod_out_V_data_V_1_sel_wr = 1'b0;
#0 demod_out_V_data_V_1_state = 2'd0;
#0 demod_out_V_last_V_1_sel_rd = 1'b0;
#0 demod_out_V_last_V_1_sel_wr = 1'b0;
#0 demod_out_V_last_V_1_state = 2'd0;
#0 soft_txn = 32'd1;
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
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        demod_out_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((demod_out_V_data_V_1_ack_out == 1'b1) & (demod_out_V_data_V_1_vld_out == 1'b1))) begin
            demod_out_V_data_V_1_sel_rd <= ~demod_out_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        demod_out_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((demod_out_V_data_V_1_ack_in == 1'b1) & (demod_out_V_data_V_1_vld_in == 1'b1))) begin
            demod_out_V_data_V_1_sel_wr <= ~demod_out_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        demod_out_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((demod_out_V_data_V_1_state == 2'd2) & (demod_out_V_data_V_1_vld_in == 1'b0)) | ((demod_out_V_data_V_1_state == 2'd3) & (demod_out_V_data_V_1_vld_in == 1'b0) & (demod_out_V_data_V_1_ack_out == 1'b1)))) begin
            demod_out_V_data_V_1_state <= 2'd2;
        end else if ((((demod_out_V_data_V_1_state == 2'd1) & (demod_out_V_data_V_1_ack_out == 1'b0)) | ((demod_out_V_data_V_1_state == 2'd3) & (demod_out_V_data_V_1_ack_out == 1'b0) & (demod_out_V_data_V_1_vld_in == 1'b1)))) begin
            demod_out_V_data_V_1_state <= 2'd1;
        end else if (((~((demod_out_V_data_V_1_vld_in == 1'b0) & (demod_out_V_data_V_1_ack_out == 1'b1)) & ~((demod_out_V_data_V_1_ack_out == 1'b0) & (demod_out_V_data_V_1_vld_in == 1'b1)) & (demod_out_V_data_V_1_state == 2'd3)) | ((demod_out_V_data_V_1_state == 2'd1) & (demod_out_V_data_V_1_ack_out == 1'b1)) | ((demod_out_V_data_V_1_state == 2'd2) & (demod_out_V_data_V_1_vld_in == 1'b1)))) begin
            demod_out_V_data_V_1_state <= 2'd3;
        end else begin
            demod_out_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        demod_out_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((demod_out_V_last_V_1_ack_out == 1'b1) & (demod_out_V_last_V_1_vld_out == 1'b1))) begin
            demod_out_V_last_V_1_sel_rd <= ~demod_out_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        demod_out_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((demod_out_V_last_V_1_ack_in == 1'b1) & (demod_out_V_last_V_1_vld_in == 1'b1))) begin
            demod_out_V_last_V_1_sel_wr <= ~demod_out_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        demod_out_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((demod_out_V_last_V_1_state == 2'd2) & (demod_out_V_last_V_1_vld_in == 1'b0)) | ((demod_out_V_last_V_1_state == 2'd3) & (demod_out_V_last_V_1_vld_in == 1'b0) & (demod_out_V_last_V_1_ack_out == 1'b1)))) begin
            demod_out_V_last_V_1_state <= 2'd2;
        end else if ((((demod_out_V_last_V_1_state == 2'd1) & (demod_out_V_last_V_1_ack_out == 1'b0)) | ((demod_out_V_last_V_1_state == 2'd3) & (demod_out_V_last_V_1_ack_out == 1'b0) & (demod_out_V_last_V_1_vld_in == 1'b1)))) begin
            demod_out_V_last_V_1_state <= 2'd1;
        end else if (((~((demod_out_V_last_V_1_vld_in == 1'b0) & (demod_out_V_last_V_1_ack_out == 1'b1)) & ~((demod_out_V_last_V_1_ack_out == 1'b0) & (demod_out_V_last_V_1_vld_in == 1'b1)) & (demod_out_V_last_V_1_state == 2'd3)) | ((demod_out_V_last_V_1_state == 2'd1) & (demod_out_V_last_V_1_ack_out == 1'b1)) | ((demod_out_V_last_V_1_state == 2'd2) & (demod_out_V_last_V_1_vld_in == 1'b1)))) begin
            demod_out_V_last_V_1_state <= 2'd3;
        end else begin
            demod_out_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        imag_in_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((imag_in_V_data_V_0_vld_out == 1'b1) & (imag_in_V_data_V_0_ack_out == 1'b1))) begin
            imag_in_V_data_V_0_sel_rd <= ~imag_in_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        imag_in_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((imag_in_V_data_V_0_ack_in == 1'b1) & (imag_in_V_data_V_0_vld_in == 1'b1))) begin
            imag_in_V_data_V_0_sel_wr <= ~imag_in_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        imag_in_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((imag_in_V_data_V_0_state == 2'd2) & (imag_in_V_data_V_0_vld_in == 1'b0)) | ((imag_in_V_data_V_0_state == 2'd3) & (imag_in_V_data_V_0_vld_in == 1'b0) & (imag_in_V_data_V_0_ack_out == 1'b1)))) begin
            imag_in_V_data_V_0_state <= 2'd2;
        end else if ((((imag_in_V_data_V_0_state == 2'd1) & (imag_in_V_data_V_0_ack_out == 1'b0)) | ((imag_in_V_data_V_0_state == 2'd3) & (imag_in_V_data_V_0_ack_out == 1'b0) & (imag_in_V_data_V_0_vld_in == 1'b1)))) begin
            imag_in_V_data_V_0_state <= 2'd1;
        end else if (((~((imag_in_V_data_V_0_vld_in == 1'b0) & (imag_in_V_data_V_0_ack_out == 1'b1)) & ~((imag_in_V_data_V_0_ack_out == 1'b0) & (imag_in_V_data_V_0_vld_in == 1'b1)) & (imag_in_V_data_V_0_state == 2'd3)) | ((imag_in_V_data_V_0_state == 2'd1) & (imag_in_V_data_V_0_ack_out == 1'b1)) | ((imag_in_V_data_V_0_state == 2'd2) & (imag_in_V_data_V_0_vld_in == 1'b1)))) begin
            imag_in_V_data_V_0_state <= 2'd3;
        end else begin
            imag_in_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        imag_in_V_last_V_0_state <= 2'd0;
    end else begin
        if ((((imag_in_V_last_V_0_state == 2'd2) & (imag_in_V_last_V_0_vld_in == 1'b0)) | ((imag_in_V_last_V_0_state == 2'd3) & (imag_in_V_last_V_0_vld_in == 1'b0) & (imag_in_V_last_V_0_ack_out == 1'b1)))) begin
            imag_in_V_last_V_0_state <= 2'd2;
        end else if ((((imag_in_V_last_V_0_state == 2'd1) & (imag_in_V_last_V_0_ack_out == 1'b0)) | ((imag_in_V_last_V_0_state == 2'd3) & (imag_in_V_last_V_0_ack_out == 1'b0) & (imag_in_V_last_V_0_vld_in == 1'b1)))) begin
            imag_in_V_last_V_0_state <= 2'd1;
        end else if (((~((imag_in_V_last_V_0_vld_in == 1'b0) & (imag_in_V_last_V_0_ack_out == 1'b1)) & ~((imag_in_V_last_V_0_ack_out == 1'b0) & (imag_in_V_last_V_0_vld_in == 1'b1)) & (imag_in_V_last_V_0_state == 2'd3)) | ((imag_in_V_last_V_0_state == 2'd1) & (imag_in_V_last_V_0_ack_out == 1'b1)) | ((imag_in_V_last_V_0_state == 2'd2) & (imag_in_V_last_V_0_vld_in == 1'b1)))) begin
            imag_in_V_last_V_0_state <= 2'd3;
        end else begin
            imag_in_V_last_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        real_in_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((real_in_V_data_V_0_ack_out == 1'b1) & (real_in_V_data_V_0_vld_out == 1'b1))) begin
            real_in_V_data_V_0_sel_rd <= ~real_in_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        real_in_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((real_in_V_data_V_0_ack_in == 1'b1) & (real_in_V_data_V_0_vld_in == 1'b1))) begin
            real_in_V_data_V_0_sel_wr <= ~real_in_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        real_in_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((real_in_V_data_V_0_state == 2'd2) & (real_in_V_data_V_0_vld_in == 1'b0)) | ((real_in_V_data_V_0_state == 2'd3) & (real_in_V_data_V_0_vld_in == 1'b0) & (real_in_V_data_V_0_ack_out == 1'b1)))) begin
            real_in_V_data_V_0_state <= 2'd2;
        end else if ((((real_in_V_data_V_0_state == 2'd1) & (real_in_V_data_V_0_ack_out == 1'b0)) | ((real_in_V_data_V_0_state == 2'd3) & (real_in_V_data_V_0_ack_out == 1'b0) & (real_in_V_data_V_0_vld_in == 1'b1)))) begin
            real_in_V_data_V_0_state <= 2'd1;
        end else if (((~((real_in_V_data_V_0_ack_out == 1'b0) & (real_in_V_data_V_0_vld_in == 1'b1)) & ~((real_in_V_data_V_0_vld_in == 1'b0) & (real_in_V_data_V_0_ack_out == 1'b1)) & (real_in_V_data_V_0_state == 2'd3)) | ((real_in_V_data_V_0_state == 2'd1) & (real_in_V_data_V_0_ack_out == 1'b1)) | ((real_in_V_data_V_0_state == 2'd2) & (real_in_V_data_V_0_vld_in == 1'b1)))) begin
            real_in_V_data_V_0_state <= 2'd3;
        end else begin
            real_in_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        real_in_V_last_V_0_state <= 2'd0;
    end else begin
        if ((((real_in_V_last_V_0_state == 2'd2) & (real_in_V_last_V_0_vld_in == 1'b0)) | ((real_in_V_last_V_0_state == 2'd3) & (real_in_V_last_V_0_vld_in == 1'b0) & (real_in_V_last_V_0_ack_out == 1'b1)))) begin
            real_in_V_last_V_0_state <= 2'd2;
        end else if ((((real_in_V_last_V_0_state == 2'd1) & (real_in_V_last_V_0_ack_out == 1'b0)) | ((real_in_V_last_V_0_state == 2'd3) & (real_in_V_last_V_0_ack_out == 1'b0) & (real_in_V_last_V_0_vld_in == 1'b1)))) begin
            real_in_V_last_V_0_state <= 2'd1;
        end else if (((~((real_in_V_last_V_0_vld_in == 1'b0) & (real_in_V_last_V_0_ack_out == 1'b1)) & ~((real_in_V_last_V_0_ack_out == 1'b0) & (real_in_V_last_V_0_vld_in == 1'b1)) & (real_in_V_last_V_0_state == 2'd3)) | ((real_in_V_last_V_0_state == 2'd1) & (real_in_V_last_V_0_ack_out == 1'b1)) | ((real_in_V_last_V_0_state == 2'd2) & (real_in_V_last_V_0_vld_in == 1'b1)))) begin
            real_in_V_last_V_0_state <= 2'd3;
        end else begin
            real_in_V_last_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((demod_out_V_data_V_1_load_A == 1'b1)) begin
        demod_out_V_data_V_1_payload_A <= tmp_data_V_fu_940_p9;
    end
end

always @ (posedge ap_clk) begin
    if ((demod_out_V_data_V_1_load_B == 1'b1)) begin
        demod_out_V_data_V_1_payload_B <= tmp_data_V_fu_940_p9;
    end
end

always @ (posedge ap_clk) begin
    if ((demod_out_V_last_V_1_load_A == 1'b1)) begin
        demod_out_V_last_V_1_payload_A <= tmp_last_V_fu_965_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((demod_out_V_last_V_1_load_B == 1'b1)) begin
        demod_out_V_last_V_1_payload_B <= tmp_last_V_fu_965_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((imag_in_V_data_V_0_load_A == 1'b1)) begin
        imag_in_V_data_V_0_payload_A <= imag_in_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((imag_in_V_data_V_0_load_B == 1'b1)) begin
        imag_in_V_data_V_0_payload_B <= imag_in_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((real_in_V_data_V_0_load_A == 1'b1)) begin
        real_in_V_data_V_0_payload_A <= real_in_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((real_in_V_data_V_0_load_B == 1'b1)) begin
        real_in_V_data_V_0_payload_B <= real_in_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        soft_txn <= tmp_1_fu_978_p3;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        demod_out_TDATA_blk_n = demod_out_V_data_V_1_state[1'd1];
    end else begin
        demod_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((demod_out_V_data_V_1_sel == 1'b1)) begin
        demod_out_V_data_V_1_data_out = demod_out_V_data_V_1_payload_B;
    end else begin
        demod_out_V_data_V_1_data_out = demod_out_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        demod_out_V_data_V_1_vld_in = 1'b1;
    end else begin
        demod_out_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((demod_out_V_last_V_1_sel == 1'b1)) begin
        demod_out_V_last_V_1_data_out = demod_out_V_last_V_1_payload_B;
    end else begin
        demod_out_V_last_V_1_data_out = demod_out_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        demod_out_V_last_V_1_vld_in = 1'b1;
    end else begin
        demod_out_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imag_in_TDATA_blk_n = imag_in_V_data_V_0_state[1'd0];
    end else begin
        imag_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imag_in_V_data_V_0_ack_out = 1'b1;
    end else begin
        imag_in_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((imag_in_V_data_V_0_sel == 1'b1)) begin
        imag_in_V_data_V_0_data_out = imag_in_V_data_V_0_payload_B;
    end else begin
        imag_in_V_data_V_0_data_out = imag_in_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imag_in_V_last_V_0_ack_out = 1'b1;
    end else begin
        imag_in_V_last_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_in_TDATA_blk_n = real_in_V_data_V_0_state[1'd0];
    end else begin
        real_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_in_V_data_V_0_ack_out = 1'b1;
    end else begin
        real_in_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((real_in_V_data_V_0_sel == 1'b1)) begin
        real_in_V_data_V_0_data_out = real_in_V_data_V_0_payload_B;
    end else begin
        real_in_V_data_V_0_data_out = real_in_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        real_in_V_last_V_0_ack_out = 1'b1;
    end else begin
        real_in_V_last_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((demod_out_V_last_V_1_ack_in == 1'b0) | (demod_out_V_data_V_1_ack_in == 1'b0))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (imag_in_V_data_V_0_vld_out == 1'b0) | (real_in_V_data_V_0_vld_out == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((demod_out_V_last_V_1_ack_in == 1'b0) | (demod_out_V_data_V_1_ack_in == 1'b0))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (demod_out_V_data_V_1_ack_in == 1'b0) | (imag_in_V_data_V_0_vld_out == 1'b0) | (real_in_V_data_V_0_vld_out == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((demod_out_V_last_V_1_ack_in == 1'b0) | (demod_out_V_data_V_1_ack_in == 1'b0))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (demod_out_V_data_V_1_ack_in == 1'b0) | (imag_in_V_data_V_0_vld_out == 1'b0) | (real_in_V_data_V_0_vld_out == 1'b0))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (imag_in_V_data_V_0_vld_out == 1'b0) | (real_in_V_data_V_0_vld_out == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((demod_out_V_last_V_1_ack_in == 1'b0) | (demod_out_V_data_V_1_ack_in == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign demod_out_TDATA = demod_out_V_data_V_1_data_out;

assign demod_out_TLAST = demod_out_V_last_V_1_data_out;

assign demod_out_TVALID = demod_out_V_last_V_1_state[1'd0];

assign demod_out_V_data_V_1_ack_in = demod_out_V_data_V_1_state[1'd1];

assign demod_out_V_data_V_1_ack_out = demod_out_TREADY;

assign demod_out_V_data_V_1_load_A = (~demod_out_V_data_V_1_sel_wr & demod_out_V_data_V_1_state_cmp_full);

assign demod_out_V_data_V_1_load_B = (demod_out_V_data_V_1_state_cmp_full & demod_out_V_data_V_1_sel_wr);

assign demod_out_V_data_V_1_sel = demod_out_V_data_V_1_sel_rd;

assign demod_out_V_data_V_1_state_cmp_full = ((demod_out_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign demod_out_V_data_V_1_vld_out = demod_out_V_data_V_1_state[1'd0];

assign demod_out_V_last_V_1_ack_in = demod_out_V_last_V_1_state[1'd1];

assign demod_out_V_last_V_1_ack_out = demod_out_TREADY;

assign demod_out_V_last_V_1_load_A = (~demod_out_V_last_V_1_sel_wr & demod_out_V_last_V_1_state_cmp_full);

assign demod_out_V_last_V_1_load_B = (demod_out_V_last_V_1_state_cmp_full & demod_out_V_last_V_1_sel_wr);

assign demod_out_V_last_V_1_sel = demod_out_V_last_V_1_sel_rd;

assign demod_out_V_last_V_1_state_cmp_full = ((demod_out_V_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign demod_out_V_last_V_1_vld_out = demod_out_V_last_V_1_state[1'd0];

assign imag_in_TREADY = imag_in_V_last_V_0_state[1'd1];

assign imag_in_V_data_V_0_ack_in = imag_in_V_data_V_0_state[1'd1];

assign imag_in_V_data_V_0_load_A = (imag_in_V_data_V_0_state_cmp_full & ~imag_in_V_data_V_0_sel_wr);

assign imag_in_V_data_V_0_load_B = (imag_in_V_data_V_0_state_cmp_full & imag_in_V_data_V_0_sel_wr);

assign imag_in_V_data_V_0_sel = imag_in_V_data_V_0_sel_rd;

assign imag_in_V_data_V_0_state_cmp_full = ((imag_in_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign imag_in_V_data_V_0_vld_in = imag_in_TVALID;

assign imag_in_V_data_V_0_vld_out = imag_in_V_data_V_0_state[1'd0];

assign imag_in_V_last_V_0_vld_in = imag_in_TVALID;

assign newSel10_fu_742_p3 = ((sel_tmp11_fu_736_p2[0:0] === 1'b1) ? 16'd33151 : 16'd33153);

assign newSel11_fu_764_p3 = ((or_cond5_fu_750_p2[0:0] === 1'b1) ? newSel10_fu_742_p3 : newSel69_cast_cast_fu_756_p3);

assign newSel12_fu_826_p3 = ((sel_tmp13_fu_820_p2[0:0] === 1'b1) ? 16'd33151 : 16'd33153);

assign newSel13_fu_848_p3 = ((or_cond6_fu_834_p2[0:0] === 1'b1) ? newSel12_fu_826_p3 : newSel75_cast_cast_fu_840_p3);

assign newSel14_fu_910_p3 = ((sel_tmp15_fu_904_p2[0:0] === 1'b1) ? 16'd33151 : 16'd33153);

assign newSel15_fu_932_p3 = ((or_cond7_fu_918_p2[0:0] === 1'b1) ? newSel14_fu_910_p3 : newSel81_cast_cast_fu_924_p3);

assign newSel1_fu_344_p3 = ((or_cond_fu_330_p2[0:0] === 1'b1) ? newSel_fu_322_p3 : newSel39_cast_cast_fu_336_p3);

assign newSel2_fu_406_p3 = ((sel_tmp6_fu_400_p2[0:0] === 1'b1) ? 16'd33151 : 16'd33153);

assign newSel39_cast_cast_fu_336_p3 = ((tmp_2_fu_298_p2[0:0] === 1'b1) ? 16'd32641 : 16'd32639);

assign newSel3_fu_428_p3 = ((or_cond1_fu_414_p2[0:0] === 1'b1) ? newSel2_fu_406_p3 : newSel45_cast_cast_fu_420_p3);

assign newSel45_cast_cast_fu_420_p3 = ((tmp_10_1_fu_382_p2[0:0] === 1'b1) ? 16'd32641 : 16'd32639);

assign newSel4_fu_490_p3 = ((sel_tmp_fu_484_p2[0:0] === 1'b1) ? 16'd33151 : 16'd33153);

assign newSel51_cast_cast_fu_504_p3 = ((tmp_10_2_fu_466_p2[0:0] === 1'b1) ? 16'd32641 : 16'd32639);

assign newSel57_cast_cast_fu_588_p3 = ((tmp_10_3_fu_550_p2[0:0] === 1'b1) ? 16'd32641 : 16'd32639);

assign newSel5_fu_512_p3 = ((or_cond2_fu_498_p2[0:0] === 1'b1) ? newSel4_fu_490_p3 : newSel51_cast_cast_fu_504_p3);

assign newSel63_cast_cast_fu_672_p3 = ((tmp_10_4_fu_634_p2[0:0] === 1'b1) ? 16'd32641 : 16'd32639);

assign newSel69_cast_cast_fu_756_p3 = ((tmp_10_5_fu_718_p2[0:0] === 1'b1) ? 16'd32641 : 16'd32639);

assign newSel6_fu_574_p3 = ((sel_tmp4_fu_568_p2[0:0] === 1'b1) ? 16'd33151 : 16'd33153);

assign newSel75_cast_cast_fu_840_p3 = ((tmp_10_6_fu_802_p2[0:0] === 1'b1) ? 16'd32641 : 16'd32639);

assign newSel7_fu_596_p3 = ((or_cond3_fu_582_p2[0:0] === 1'b1) ? newSel6_fu_574_p3 : newSel57_cast_cast_fu_588_p3);

assign newSel81_cast_cast_fu_924_p3 = ((tmp_10_7_fu_886_p2[0:0] === 1'b1) ? 16'd32641 : 16'd32639);

assign newSel8_fu_658_p3 = ((sel_tmp8_fu_652_p2[0:0] === 1'b1) ? 16'd33151 : 16'd33153);

assign newSel9_fu_680_p3 = ((or_cond4_fu_666_p2[0:0] === 1'b1) ? newSel8_fu_658_p3 : newSel63_cast_cast_fu_672_p3);

assign newSel_fu_322_p3 = ((sel_tmp2_fu_316_p2[0:0] === 1'b1) ? 16'd33151 : 16'd33153);

assign or_cond1_fu_414_p2 = (tmp_8_1_fu_364_p2 | sel_tmp6_fu_400_p2);

assign or_cond2_fu_498_p2 = (tmp_8_2_fu_448_p2 | sel_tmp_fu_484_p2);

assign or_cond3_fu_582_p2 = (tmp_8_3_fu_532_p2 | sel_tmp4_fu_568_p2);

assign or_cond4_fu_666_p2 = (tmp_8_4_fu_616_p2 | sel_tmp8_fu_652_p2);

assign or_cond5_fu_750_p2 = (tmp_8_5_fu_700_p2 | sel_tmp11_fu_736_p2);

assign or_cond6_fu_834_p2 = (tmp_8_6_fu_784_p2 | sel_tmp13_fu_820_p2);

assign or_cond7_fu_918_p2 = (tmp_8_7_fu_868_p2 | sel_tmp15_fu_904_p2);

assign or_cond_fu_330_p2 = (tmp_8_fu_280_p2 | sel_tmp2_fu_316_p2);

assign p_Result_22_1_fu_128_p4 = {{real_in_V_data_V_0_data_out[31:16]}};

assign p_Result_22_2_fu_148_p4 = {{real_in_V_data_V_0_data_out[47:32]}};

assign p_Result_22_3_fu_168_p4 = {{real_in_V_data_V_0_data_out[63:48]}};

assign p_Result_22_4_fu_188_p4 = {{real_in_V_data_V_0_data_out[79:64]}};

assign p_Result_22_5_fu_208_p4 = {{real_in_V_data_V_0_data_out[95:80]}};

assign p_Result_22_6_fu_228_p4 = {{real_in_V_data_V_0_data_out[111:96]}};

assign p_Result_22_7_fu_248_p4 = {{real_in_V_data_V_0_data_out[127:112]}};

assign p_Result_23_1_fu_138_p4 = {{imag_in_V_data_V_0_data_out[31:16]}};

assign p_Result_23_2_fu_158_p4 = {{imag_in_V_data_V_0_data_out[47:32]}};

assign p_Result_23_3_fu_178_p4 = {{imag_in_V_data_V_0_data_out[63:48]}};

assign p_Result_23_4_fu_198_p4 = {{imag_in_V_data_V_0_data_out[79:64]}};

assign p_Result_23_5_fu_218_p4 = {{imag_in_V_data_V_0_data_out[95:80]}};

assign p_Result_23_6_fu_238_p4 = {{imag_in_V_data_V_0_data_out[111:96]}};

assign p_Result_23_7_fu_258_p4 = {{imag_in_V_data_V_0_data_out[127:112]}};

assign real_in_TREADY = real_in_V_last_V_0_state[1'd1];

assign real_in_V_data_V_0_ack_in = real_in_V_data_V_0_state[1'd1];

assign real_in_V_data_V_0_load_A = (real_in_V_data_V_0_state_cmp_full & ~real_in_V_data_V_0_sel_wr);

assign real_in_V_data_V_0_load_B = (real_in_V_data_V_0_state_cmp_full & real_in_V_data_V_0_sel_wr);

assign real_in_V_data_V_0_sel = real_in_V_data_V_0_sel_rd;

assign real_in_V_data_V_0_state_cmp_full = ((real_in_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign real_in_V_data_V_0_vld_in = real_in_TVALID;

assign real_in_V_data_V_0_vld_out = real_in_V_data_V_0_state[1'd0];

assign real_in_V_last_V_0_vld_in = real_in_TVALID;

assign sel_tmp10_fu_724_p2 = (tmp_8_5_fu_700_p2 ^ 1'd1);

assign sel_tmp11_fu_736_p2 = (tmp_6_5_fu_688_p2 & tmp5_fu_730_p2);

assign sel_tmp12_fu_808_p2 = (tmp_8_6_fu_784_p2 ^ 1'd1);

assign sel_tmp13_fu_820_p2 = (tmp_6_6_fu_772_p2 & tmp6_fu_814_p2);

assign sel_tmp14_fu_892_p2 = (tmp_8_7_fu_868_p2 ^ 1'd1);

assign sel_tmp15_fu_904_p2 = (tmp_6_7_fu_856_p2 & tmp7_fu_898_p2);

assign sel_tmp1_fu_304_p2 = (tmp_8_fu_280_p2 ^ 1'd1);

assign sel_tmp2_fu_316_p2 = (tmp_fu_310_p2 & tmp_6_fu_268_p2);

assign sel_tmp3_fu_556_p2 = (tmp_8_3_fu_532_p2 ^ 1'd1);

assign sel_tmp4_fu_568_p2 = (tmp_6_3_fu_520_p2 & tmp3_fu_562_p2);

assign sel_tmp5_fu_388_p2 = (tmp_8_1_fu_364_p2 ^ 1'd1);

assign sel_tmp6_fu_400_p2 = (tmp_6_1_fu_352_p2 & tmp1_fu_394_p2);

assign sel_tmp7_fu_640_p2 = (tmp_8_4_fu_616_p2 ^ 1'd1);

assign sel_tmp8_fu_652_p2 = (tmp_6_4_fu_604_p2 & tmp4_fu_646_p2);

assign sel_tmp9_fu_472_p2 = (tmp_8_2_fu_448_p2 ^ 1'd1);

assign sel_tmp_fu_484_p2 = (tmp_6_2_fu_436_p2 & tmp2_fu_478_p2);

assign soft_txn_load_op_fu_972_p2 = (32'd1 + soft_txn);

assign tmp1_fu_394_p2 = (tmp_9_1_fu_370_p2 & sel_tmp5_fu_388_p2);

assign tmp2_fu_478_p2 = (tmp_9_2_fu_454_p2 & sel_tmp9_fu_472_p2);

assign tmp3_fu_562_p2 = (tmp_9_3_fu_538_p2 & sel_tmp3_fu_556_p2);

assign tmp4_fu_646_p2 = (tmp_9_4_fu_622_p2 & sel_tmp7_fu_640_p2);

assign tmp5_fu_730_p2 = (tmp_9_5_fu_706_p2 & sel_tmp10_fu_724_p2);

assign tmp6_fu_814_p2 = (tmp_9_6_fu_790_p2 & sel_tmp12_fu_808_p2);

assign tmp7_fu_898_p2 = (tmp_9_7_fu_874_p2 & sel_tmp14_fu_892_p2);

assign tmp_10_1_fu_382_p2 = (tmp_7_1_fu_358_p2 & tmp_4_1_fu_376_p2);

assign tmp_10_2_fu_466_p2 = (tmp_7_2_fu_442_p2 & tmp_4_2_fu_460_p2);

assign tmp_10_3_fu_550_p2 = (tmp_7_3_fu_526_p2 & tmp_4_3_fu_544_p2);

assign tmp_10_4_fu_634_p2 = (tmp_7_4_fu_610_p2 & tmp_4_4_fu_628_p2);

assign tmp_10_5_fu_718_p2 = (tmp_7_5_fu_694_p2 & tmp_4_5_fu_712_p2);

assign tmp_10_6_fu_802_p2 = (tmp_7_6_fu_778_p2 & tmp_4_6_fu_796_p2);

assign tmp_10_7_fu_886_p2 = (tmp_7_7_fu_862_p2 & tmp_4_7_fu_880_p2);

assign tmp_1_fu_978_p3 = ((tmp_last_V_fu_965_p2[0:0] === 1'b1) ? 32'd1 : soft_txn_load_op_fu_972_p2);

assign tmp_2_fu_298_p2 = (tmp_7_fu_274_p2 & tmp_4_fu_292_p2);

assign tmp_3_fu_120_p1 = real_in_V_data_V_0_data_out[15:0];

assign tmp_4_1_fu_376_p2 = ((p_Result_22_1_fu_128_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_4_2_fu_460_p2 = ((p_Result_22_2_fu_148_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_4_3_fu_544_p2 = ((p_Result_22_3_fu_168_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_4_4_fu_628_p2 = ((p_Result_22_4_fu_188_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_4_5_fu_712_p2 = ((p_Result_22_5_fu_208_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_4_6_fu_796_p2 = ((p_Result_22_6_fu_228_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_4_7_fu_880_p2 = ((p_Result_22_7_fu_248_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_4_fu_292_p2 = ((tmp_3_fu_120_p1 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_5_fu_124_p1 = imag_in_V_data_V_0_data_out[15:0];

assign tmp_6_1_fu_352_p2 = ((p_Result_22_1_fu_128_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_6_2_fu_436_p2 = ((p_Result_22_2_fu_148_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_6_3_fu_520_p2 = ((p_Result_22_3_fu_168_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_6_4_fu_604_p2 = ((p_Result_22_4_fu_188_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_6_5_fu_688_p2 = ((p_Result_22_5_fu_208_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_6_6_fu_772_p2 = ((p_Result_22_6_fu_228_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_6_7_fu_856_p2 = ((p_Result_22_7_fu_248_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_6_fu_268_p2 = ((tmp_3_fu_120_p1 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_7_1_fu_358_p2 = ((p_Result_23_1_fu_138_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_7_2_fu_442_p2 = ((p_Result_23_2_fu_158_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_7_3_fu_526_p2 = ((p_Result_23_3_fu_178_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_7_4_fu_610_p2 = ((p_Result_23_4_fu_198_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_7_5_fu_694_p2 = ((p_Result_23_5_fu_218_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_7_6_fu_778_p2 = ((p_Result_23_6_fu_238_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_7_7_fu_862_p2 = ((p_Result_23_7_fu_258_p4 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_7_fu_274_p2 = ((tmp_5_fu_124_p1 == 16'd11585) ? 1'b1 : 1'b0);

assign tmp_8_1_fu_364_p2 = (tmp_7_1_fu_358_p2 & tmp_6_1_fu_352_p2);

assign tmp_8_2_fu_448_p2 = (tmp_7_2_fu_442_p2 & tmp_6_2_fu_436_p2);

assign tmp_8_3_fu_532_p2 = (tmp_7_3_fu_526_p2 & tmp_6_3_fu_520_p2);

assign tmp_8_4_fu_616_p2 = (tmp_7_4_fu_610_p2 & tmp_6_4_fu_604_p2);

assign tmp_8_5_fu_700_p2 = (tmp_7_5_fu_694_p2 & tmp_6_5_fu_688_p2);

assign tmp_8_6_fu_784_p2 = (tmp_7_6_fu_778_p2 & tmp_6_6_fu_772_p2);

assign tmp_8_7_fu_868_p2 = (tmp_7_7_fu_862_p2 & tmp_6_7_fu_856_p2);

assign tmp_8_fu_280_p2 = (tmp_7_fu_274_p2 & tmp_6_fu_268_p2);

assign tmp_9_1_fu_370_p2 = ((p_Result_23_1_fu_138_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_9_2_fu_454_p2 = ((p_Result_23_2_fu_158_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_9_3_fu_538_p2 = ((p_Result_23_3_fu_178_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_9_4_fu_622_p2 = ((p_Result_23_4_fu_198_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_9_5_fu_706_p2 = ((p_Result_23_5_fu_218_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_9_6_fu_790_p2 = ((p_Result_23_6_fu_238_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_9_7_fu_874_p2 = ((p_Result_23_7_fu_258_p4 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_9_fu_286_p2 = ((tmp_5_fu_124_p1 == 16'd53951) ? 1'b1 : 1'b0);

assign tmp_data_V_fu_940_p9 = {{{{{{{{newSel15_fu_932_p3}, {newSel13_fu_848_p3}}, {newSel11_fu_764_p3}}, {newSel9_fu_680_p3}}, {newSel7_fu_596_p3}}, {newSel5_fu_512_p3}}, {newSel3_fu_428_p3}}, {newSel1_fu_344_p3}};

assign tmp_fu_310_p2 = (tmp_9_fu_286_p2 & sel_tmp1_fu_304_p2);

assign tmp_last_V_fu_965_p2 = ((soft_txn == 32'd32) ? 1'b1 : 1'b0);

endmodule //demodulation
