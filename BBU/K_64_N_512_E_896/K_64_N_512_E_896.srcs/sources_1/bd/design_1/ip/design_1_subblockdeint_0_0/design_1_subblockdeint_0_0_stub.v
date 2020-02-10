// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 10 10:13:50 2020
// Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/puja/Desktop/working_downlink_chain/BBU/K_64_N_512_E_896/K_64_N_512_E_896.srcs/sources_1/bd/design_1/ip/design_1_subblockdeint_0_0/design_1_subblockdeint_0_0_stub.v
// Design      : design_1_subblockdeint_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu21dr-ffvd1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "subblockdeint,Vivado 2018.3" *)
module design_1_subblockdeint_0_0(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, DEITLVdataIn_TVALID, DEITLVdataIn_TREADY, DEITLVdataIn_TDATA, 
  DEITLVdataIn_TLAST, DEITLVdataOut_TVALID, DEITLVdataOut_TREADY, DEITLVdataOut_TDATA, 
  DEITLVdataOut_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,DEITLVdataIn_TVALID,DEITLVdataIn_TREADY,DEITLVdataIn_TDATA[127:0],DEITLVdataIn_TLAST[0:0],DEITLVdataOut_TVALID,DEITLVdataOut_TREADY,DEITLVdataOut_TDATA[127:0],DEITLVdataOut_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input DEITLVdataIn_TVALID;
  output DEITLVdataIn_TREADY;
  input [127:0]DEITLVdataIn_TDATA;
  input [0:0]DEITLVdataIn_TLAST;
  output DEITLVdataOut_TVALID;
  input DEITLVdataOut_TREADY;
  output [127:0]DEITLVdataOut_TDATA;
  output [0:0]DEITLVdataOut_TLAST;
endmodule
