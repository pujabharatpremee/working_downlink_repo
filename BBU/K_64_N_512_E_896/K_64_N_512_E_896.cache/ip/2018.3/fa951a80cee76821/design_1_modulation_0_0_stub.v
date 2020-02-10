// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 10 10:00:02 2020
// Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_modulation_0_0_stub.v
// Design      : design_1_modulation_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu21dr-ffvd1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "modulation,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, sym_real_TVALID, sym_real_TREADY, sym_real_TDATA, sym_real_TLAST, 
  sym_imag_TVALID, sym_imag_TREADY, sym_imag_TDATA, sym_imag_TLAST, bit_in_TVALID, 
  bit_in_TREADY, bit_in_TDATA, bit_in_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,sym_real_TVALID,sym_real_TREADY,sym_real_TDATA[127:0],sym_real_TLAST[0:0],sym_imag_TVALID,sym_imag_TREADY,sym_imag_TDATA[127:0],sym_imag_TLAST[0:0],bit_in_TVALID,bit_in_TREADY,bit_in_TDATA[127:0],bit_in_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output sym_real_TVALID;
  input sym_real_TREADY;
  output [127:0]sym_real_TDATA;
  output [0:0]sym_real_TLAST;
  output sym_imag_TVALID;
  input sym_imag_TREADY;
  output [127:0]sym_imag_TDATA;
  output [0:0]sym_imag_TLAST;
  input bit_in_TVALID;
  output bit_in_TREADY;
  input [127:0]bit_in_TDATA;
  input [0:0]bit_in_TLAST;
endmodule
