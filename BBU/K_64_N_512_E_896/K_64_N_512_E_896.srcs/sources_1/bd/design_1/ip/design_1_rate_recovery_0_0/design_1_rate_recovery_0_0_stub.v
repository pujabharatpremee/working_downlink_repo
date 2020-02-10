// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 10 10:06:09 2020
// Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/puja/Desktop/working_downlink_chain/BBU/K_64_N_512_E_896/K_64_N_512_E_896.srcs/sources_1/bd/design_1/ip/design_1_rate_recovery_0_0/design_1_rate_recovery_0_0_stub.v
// Design      : design_1_rate_recovery_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu21dr-ffvd1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rate_recovery,Vivado 2018.3" *)
module design_1_rate_recovery_0_0(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, RRdataIn_TVALID, RRdataIn_TREADY, RRdataIn_TDATA, RRdataIn_TLAST, 
  RRdataOut_TVALID, RRdataOut_TREADY, RRdataOut_TDATA, RRdataOut_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,RRdataIn_TVALID,RRdataIn_TREADY,RRdataIn_TDATA[127:0],RRdataIn_TLAST[0:0],RRdataOut_TVALID,RRdataOut_TREADY,RRdataOut_TDATA[127:0],RRdataOut_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input RRdataIn_TVALID;
  output RRdataIn_TREADY;
  input [127:0]RRdataIn_TDATA;
  input [0:0]RRdataIn_TLAST;
  output RRdataOut_TVALID;
  input RRdataOut_TREADY;
  output [127:0]RRdataOut_TDATA;
  output [0:0]RRdataOut_TLAST;
endmodule