// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 10 09:56:54 2020
// Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_config_encoder_0_0_stub.v
// Design      : design_1_config_encoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu21dr-ffvd1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "config_encoder,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, enc_ctrl_V_V_TVALID, enc_ctrl_V_V_TREADY, enc_ctrl_V_V_TDATA, din_words_TVALID, 
  din_words_TREADY, din_words_TDATA, din_words_TLAST, dout_words_TVALID, dout_words_TREADY, 
  dout_words_TDATA, dout_words_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,enc_ctrl_V_V_TVALID,enc_ctrl_V_V_TREADY,enc_ctrl_V_V_TDATA[31:0],din_words_TVALID,din_words_TREADY,din_words_TDATA[7:0],din_words_TLAST[0:0],dout_words_TVALID,dout_words_TREADY,dout_words_TDATA[7:0],dout_words_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output enc_ctrl_V_V_TVALID;
  input enc_ctrl_V_V_TREADY;
  output [31:0]enc_ctrl_V_V_TDATA;
  output din_words_TVALID;
  input din_words_TREADY;
  output [7:0]din_words_TDATA;
  output [0:0]din_words_TLAST;
  output dout_words_TVALID;
  input dout_words_TREADY;
  output [7:0]dout_words_TDATA;
  output [0:0]dout_words_TLAST;
endmodule
