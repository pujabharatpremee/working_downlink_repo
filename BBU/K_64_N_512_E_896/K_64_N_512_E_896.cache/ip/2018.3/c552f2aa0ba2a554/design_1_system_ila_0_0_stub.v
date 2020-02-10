// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 10 10:08:07 2020
// Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu21dr-ffvd1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f60c,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, SLOT_0_AXIS_tdata, 
  SLOT_0_AXIS_tlast, SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, SLOT_1_AXIS_tid, 
  SLOT_1_AXIS_tdest, SLOT_1_AXIS_tdata, SLOT_1_AXIS_tstrb, SLOT_1_AXIS_tkeep, 
  SLOT_1_AXIS_tlast, SLOT_1_AXIS_tuser, SLOT_1_AXIS_tvalid, SLOT_1_AXIS_tready, 
  SLOT_2_AXIS_tdata, SLOT_2_AXIS_tlast, SLOT_2_AXIS_tvalid, SLOT_2_AXIS_tready, 
  SLOT_3_AXIS_tdata, SLOT_3_AXIS_tlast, SLOT_3_AXIS_tvalid, SLOT_3_AXIS_tready, 
  SLOT_4_AXIS_tdata, SLOT_4_AXIS_tlast, SLOT_4_AXIS_tvalid, SLOT_4_AXIS_tready, 
  SLOT_5_AXIS_tdata, SLOT_5_AXIS_tlast, SLOT_5_AXIS_tvalid, SLOT_5_AXIS_tready, 
  SLOT_6_AXIS_tdata, SLOT_6_AXIS_tlast, SLOT_6_AXIS_tvalid, SLOT_6_AXIS_tready, 
  SLOT_7_AXIS_tdata, SLOT_7_AXIS_tlast, SLOT_7_AXIS_tvalid, SLOT_7_AXIS_tready, 
  SLOT_8_AXIS_tdata, SLOT_8_AXIS_tlast, SLOT_8_AXIS_tvalid, SLOT_8_AXIS_tready, 
  SLOT_9_AXIS_tdata, SLOT_9_AXIS_tlast, SLOT_9_AXIS_tvalid, SLOT_9_AXIS_tready, 
  SLOT_10_AXIS_tdata, SLOT_10_AXIS_tlast, SLOT_10_AXIS_tvalid, SLOT_10_AXIS_tready, 
  SLOT_11_AXIS_tdata, SLOT_11_AXIS_tlast, SLOT_11_AXIS_tvalid, SLOT_11_AXIS_tready, 
  SLOT_12_AXIS_tdata, SLOT_12_AXIS_tlast, SLOT_12_AXIS_tvalid, SLOT_12_AXIS_tready, 
  SLOT_13_AXIS_tdata, SLOT_13_AXIS_tstrb, SLOT_13_AXIS_tkeep, SLOT_13_AXIS_tlast, 
  SLOT_13_AXIS_tvalid, SLOT_13_AXIS_tready, SLOT_14_AXIS_tdata, SLOT_14_AXIS_tlast, 
  SLOT_14_AXIS_tvalid, SLOT_14_AXIS_tready, SLOT_15_AXIS_tdata, SLOT_15_AXIS_tlast, 
  SLOT_15_AXIS_tvalid, SLOT_15_AXIS_tready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],SLOT_0_AXIS_tdata[31:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_AXIS_tid[7:0],SLOT_1_AXIS_tdest[7:0],SLOT_1_AXIS_tdata[31:0],SLOT_1_AXIS_tstrb[3:0],SLOT_1_AXIS_tkeep[3:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tuser[7:0],SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,SLOT_2_AXIS_tdata[31:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tdata[31:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXIS_tdata[127:0],SLOT_4_AXIS_tlast,SLOT_4_AXIS_tvalid,SLOT_4_AXIS_tready,SLOT_5_AXIS_tdata[31:0],SLOT_5_AXIS_tlast,SLOT_5_AXIS_tvalid,SLOT_5_AXIS_tready,SLOT_6_AXIS_tdata[127:0],SLOT_6_AXIS_tlast,SLOT_6_AXIS_tvalid,SLOT_6_AXIS_tready,SLOT_7_AXIS_tdata[127:0],SLOT_7_AXIS_tlast,SLOT_7_AXIS_tvalid,SLOT_7_AXIS_tready,SLOT_8_AXIS_tdata[127:0],SLOT_8_AXIS_tlast,SLOT_8_AXIS_tvalid,SLOT_8_AXIS_tready,SLOT_9_AXIS_tdata[127:0],SLOT_9_AXIS_tlast,SLOT_9_AXIS_tvalid,SLOT_9_AXIS_tready,SLOT_10_AXIS_tdata[127:0],SLOT_10_AXIS_tlast,SLOT_10_AXIS_tvalid,SLOT_10_AXIS_tready,SLOT_11_AXIS_tdata[31:0],SLOT_11_AXIS_tlast,SLOT_11_AXIS_tvalid,SLOT_11_AXIS_tready,SLOT_12_AXIS_tdata[31:0],SLOT_12_AXIS_tlast,SLOT_12_AXIS_tvalid,SLOT_12_AXIS_tready,SLOT_13_AXIS_tdata[31:0],SLOT_13_AXIS_tstrb[3:0],SLOT_13_AXIS_tkeep[3:0],SLOT_13_AXIS_tlast,SLOT_13_AXIS_tvalid,SLOT_13_AXIS_tready,SLOT_14_AXIS_tdata[127:0],SLOT_14_AXIS_tlast,SLOT_14_AXIS_tvalid,SLOT_14_AXIS_tready,SLOT_15_AXIS_tdata[31:0],SLOT_15_AXIS_tlast,SLOT_15_AXIS_tvalid,SLOT_15_AXIS_tready,resetn" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [31:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input [7:0]SLOT_1_AXIS_tid;
  input [7:0]SLOT_1_AXIS_tdest;
  input [31:0]SLOT_1_AXIS_tdata;
  input [3:0]SLOT_1_AXIS_tstrb;
  input [3:0]SLOT_1_AXIS_tkeep;
  input SLOT_1_AXIS_tlast;
  input [7:0]SLOT_1_AXIS_tuser;
  input SLOT_1_AXIS_tvalid;
  input SLOT_1_AXIS_tready;
  input [31:0]SLOT_2_AXIS_tdata;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tvalid;
  input SLOT_2_AXIS_tready;
  input [31:0]SLOT_3_AXIS_tdata;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tvalid;
  input SLOT_3_AXIS_tready;
  input [127:0]SLOT_4_AXIS_tdata;
  input SLOT_4_AXIS_tlast;
  input SLOT_4_AXIS_tvalid;
  input SLOT_4_AXIS_tready;
  input [31:0]SLOT_5_AXIS_tdata;
  input SLOT_5_AXIS_tlast;
  input SLOT_5_AXIS_tvalid;
  input SLOT_5_AXIS_tready;
  input [127:0]SLOT_6_AXIS_tdata;
  input SLOT_6_AXIS_tlast;
  input SLOT_6_AXIS_tvalid;
  input SLOT_6_AXIS_tready;
  input [127:0]SLOT_7_AXIS_tdata;
  input SLOT_7_AXIS_tlast;
  input SLOT_7_AXIS_tvalid;
  input SLOT_7_AXIS_tready;
  input [127:0]SLOT_8_AXIS_tdata;
  input SLOT_8_AXIS_tlast;
  input SLOT_8_AXIS_tvalid;
  input SLOT_8_AXIS_tready;
  input [127:0]SLOT_9_AXIS_tdata;
  input SLOT_9_AXIS_tlast;
  input SLOT_9_AXIS_tvalid;
  input SLOT_9_AXIS_tready;
  input [127:0]SLOT_10_AXIS_tdata;
  input SLOT_10_AXIS_tlast;
  input SLOT_10_AXIS_tvalid;
  input SLOT_10_AXIS_tready;
  input [31:0]SLOT_11_AXIS_tdata;
  input SLOT_11_AXIS_tlast;
  input SLOT_11_AXIS_tvalid;
  input SLOT_11_AXIS_tready;
  input [31:0]SLOT_12_AXIS_tdata;
  input SLOT_12_AXIS_tlast;
  input SLOT_12_AXIS_tvalid;
  input SLOT_12_AXIS_tready;
  input [31:0]SLOT_13_AXIS_tdata;
  input [3:0]SLOT_13_AXIS_tstrb;
  input [3:0]SLOT_13_AXIS_tkeep;
  input SLOT_13_AXIS_tlast;
  input SLOT_13_AXIS_tvalid;
  input SLOT_13_AXIS_tready;
  input [127:0]SLOT_14_AXIS_tdata;
  input SLOT_14_AXIS_tlast;
  input SLOT_14_AXIS_tvalid;
  input SLOT_14_AXIS_tready;
  input [31:0]SLOT_15_AXIS_tdata;
  input SLOT_15_AXIS_tlast;
  input SLOT_15_AXIS_tvalid;
  input SLOT_15_AXIS_tready;
  input resetn;
endmodule
