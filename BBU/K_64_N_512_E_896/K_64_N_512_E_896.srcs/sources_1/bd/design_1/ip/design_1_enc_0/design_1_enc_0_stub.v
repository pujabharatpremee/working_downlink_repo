// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 10 12:04:57 2020
// Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/puja/Desktop/working_downlink_chain/BBU/K_64_N_512_E_896/K_64_N_512_E_896.srcs/sources_1/bd/design_1/ip/design_1_enc_0/design_1_enc_0_stub.v
// Design      : design_1_enc_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu21dr-ffvd1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "polar_v1_0_2,Vivado 2018.3" *)
module design_1_enc_0(reset_n, core_clk, s_axi_awaddr, s_axi_awvalid, 
  s_axi_awready, s_axi_wdata, s_axi_wvalid, s_axi_wready, s_axi_bready, s_axi_bvalid, 
  s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rready, s_axi_rdata, s_axi_rvalid, 
  interrupt, s_axis_din_words_tready, s_axis_din_words_tvalid, s_axis_din_words_tlast, 
  s_axis_din_words_tdata, s_axis_ctrl_tready, s_axis_ctrl_tvalid, s_axis_ctrl_tdata, 
  s_axis_din_tready, s_axis_din_tvalid, s_axis_din_tlast, s_axis_din_tdata, 
  m_axis_status_tready, m_axis_status_tvalid, m_axis_status_tdata, 
  s_axis_dout_words_tready, s_axis_dout_words_tvalid, s_axis_dout_words_tlast, 
  s_axis_dout_words_tdata, m_axis_dout_tready, m_axis_dout_tvalid, m_axis_dout_tlast, 
  m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="reset_n,core_clk,s_axi_awaddr[17:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_bready,s_axi_bvalid,s_axi_araddr[17:0],s_axi_arvalid,s_axi_arready,s_axi_rready,s_axi_rdata[31:0],s_axi_rvalid,interrupt,s_axis_din_words_tready,s_axis_din_words_tvalid,s_axis_din_words_tlast,s_axis_din_words_tdata[7:0],s_axis_ctrl_tready,s_axis_ctrl_tvalid,s_axis_ctrl_tdata[31:0],s_axis_din_tready,s_axis_din_tvalid,s_axis_din_tlast,s_axis_din_tdata[127:0],m_axis_status_tready,m_axis_status_tvalid,m_axis_status_tdata[31:0],s_axis_dout_words_tready,s_axis_dout_words_tvalid,s_axis_dout_words_tlast,s_axis_dout_words_tdata[7:0],m_axis_dout_tready,m_axis_dout_tvalid,m_axis_dout_tlast,m_axis_dout_tdata[127:0]" */;
  input reset_n;
  input core_clk;
  input [17:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  output s_axi_wready;
  input s_axi_bready;
  output s_axi_bvalid;
  input [17:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  input s_axi_rready;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output interrupt;
  output s_axis_din_words_tready;
  input s_axis_din_words_tvalid;
  input s_axis_din_words_tlast;
  input [7:0]s_axis_din_words_tdata;
  output s_axis_ctrl_tready;
  input s_axis_ctrl_tvalid;
  input [31:0]s_axis_ctrl_tdata;
  output s_axis_din_tready;
  input s_axis_din_tvalid;
  input s_axis_din_tlast;
  input [127:0]s_axis_din_tdata;
  input m_axis_status_tready;
  output m_axis_status_tvalid;
  output [31:0]m_axis_status_tdata;
  output s_axis_dout_words_tready;
  input s_axis_dout_words_tvalid;
  input s_axis_dout_words_tlast;
  input [7:0]s_axis_dout_words_tdata;
  input m_axis_dout_tready;
  output m_axis_dout_tvalid;
  output m_axis_dout_tlast;
  output [127:0]m_axis_dout_tdata;
endmodule
