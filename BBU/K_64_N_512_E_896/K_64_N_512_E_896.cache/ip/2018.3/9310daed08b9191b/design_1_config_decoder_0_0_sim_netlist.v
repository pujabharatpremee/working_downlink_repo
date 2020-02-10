// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 10 09:58:28 2020
// Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_config_decoder_0_0_sim_netlist.v
// Design      : design_1_config_decoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu21dr-ffvd1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ap_ST_fsm_state1 = "2'b01" *) (* ap_ST_fsm_state2 = "2'b10" *) (* ap_const_lv32_0 = "0" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_config_decoder
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    dec_ctrl_V_V_TDATA,
    dec_ctrl_V_V_TVALID,
    dec_ctrl_V_V_TREADY,
    dec_din_words_TDATA,
    dec_din_words_TVALID,
    dec_din_words_TREADY,
    dec_din_words_TLAST,
    dec_dout_words_TDATA,
    dec_dout_words_TVALID,
    dec_dout_words_TREADY,
    dec_dout_words_TLAST);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]dec_ctrl_V_V_TDATA;
  output dec_ctrl_V_V_TVALID;
  input dec_ctrl_V_V_TREADY;
  output [7:0]dec_din_words_TDATA;
  output dec_din_words_TVALID;
  input dec_din_words_TREADY;
  output [0:0]dec_din_words_TLAST;
  output [7:0]dec_dout_words_TDATA;
  output dec_dout_words_TVALID;
  input dec_dout_words_TREADY;
  output [0:0]dec_dout_words_TLAST;

  wire \<const0> ;
  wire \<const1> ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready_INST_0_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire dec_ctrl_V_V_1_ack_in;
  wire \dec_ctrl_V_V_1_state[0]_i_1_n_0 ;
  wire \dec_ctrl_V_V_1_state[1]_i_1_n_0 ;
  wire dec_ctrl_V_V_TREADY;
  wire dec_ctrl_V_V_TVALID;
  wire dec_din_words_TREADY;
  wire dec_din_words_TVALID;
  wire \dec_din_words_V_data_V_1_state[0]_i_1_n_0 ;
  wire \dec_din_words_V_data_V_1_state[1]_i_1_n_0 ;
  wire \dec_din_words_V_data_V_1_state_reg_n_0_[0] ;
  wire \dec_din_words_V_data_V_1_state_reg_n_0_[1] ;
  wire \dec_din_words_V_last_V_1_state[0]_i_1_n_0 ;
  wire \dec_din_words_V_last_V_1_state[1]_i_1_n_0 ;
  wire \dec_din_words_V_last_V_1_state_reg_n_0_[1] ;
  wire dec_dout_words_TREADY;
  wire dec_dout_words_TVALID;
  wire \dec_dout_words_V_data_V_1_state[0]_i_1_n_0 ;
  wire \dec_dout_words_V_data_V_1_state[1]_i_2_n_0 ;
  wire \dec_dout_words_V_data_V_1_state_reg_n_0_[0] ;
  wire \dec_dout_words_V_data_V_1_state_reg_n_0_[1] ;
  wire \dec_dout_words_V_last_V_1_state[0]_i_1_n_0 ;
  wire \dec_dout_words_V_last_V_1_state[1]_i_1_n_0 ;
  wire \dec_dout_words_V_last_V_1_state_reg_n_0_[1] ;
  wire p_61_in;

  assign ap_ready = ap_done;
  assign dec_ctrl_V_V_TDATA[31] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[30] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[29] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[28] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[27] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[26] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[25] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[24] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[23] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[22] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[21] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[20] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[19] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[18] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[17] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[16] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[15] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[14] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[13] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[12] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[11] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[10] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[9] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[8] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[7] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[6] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[5] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[4] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[3] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[2] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[1] = \<const0> ;
  assign dec_ctrl_V_V_TDATA[0] = \<const0> ;
  assign dec_din_words_TDATA[7] = \<const0> ;
  assign dec_din_words_TDATA[6] = \<const0> ;
  assign dec_din_words_TDATA[5] = \<const0> ;
  assign dec_din_words_TDATA[4] = \<const1> ;
  assign dec_din_words_TDATA[3] = \<const0> ;
  assign dec_din_words_TDATA[2] = \<const0> ;
  assign dec_din_words_TDATA[1] = \<const0> ;
  assign dec_din_words_TDATA[0] = \<const0> ;
  assign dec_din_words_TLAST[0] = \<const1> ;
  assign dec_dout_words_TDATA[7] = \<const0> ;
  assign dec_dout_words_TDATA[6] = \<const0> ;
  assign dec_dout_words_TDATA[5] = \<const0> ;
  assign dec_dout_words_TDATA[4] = \<const0> ;
  assign dec_dout_words_TDATA[3] = \<const1> ;
  assign dec_dout_words_TDATA[2] = \<const0> ;
  assign dec_dout_words_TDATA[1] = \<const0> ;
  assign dec_dout_words_TDATA[0] = \<const0> ;
  assign dec_dout_words_TLAST[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h00FF0202)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(\dec_dout_words_V_data_V_1_state_reg_n_0_[0] ),
        .I2(\ap_CS_fsm[1]_i_2_n_0 ),
        .I3(p_61_in),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  LUT5 #(
    .INIT(32'hFFFD00FD)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(\dec_dout_words_V_data_V_1_state_reg_n_0_[0] ),
        .I2(\ap_CS_fsm[1]_i_2_n_0 ),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(p_61_in),
        .O(ap_NS_fsm[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(dec_din_words_TVALID),
        .I1(\dec_din_words_V_data_V_1_state_reg_n_0_[0] ),
        .I2(dec_ctrl_V_V_TVALID),
        .I3(dec_dout_words_TVALID),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    ap_ready_INST_0
       (.I0(ap_ready_INST_0_i_1_n_0),
        .I1(\dec_dout_words_V_data_V_1_state_reg_n_0_[0] ),
        .I2(dec_dout_words_TVALID),
        .I3(dec_ctrl_V_V_TVALID),
        .I4(\dec_din_words_V_data_V_1_state_reg_n_0_[0] ),
        .I5(dec_din_words_TVALID),
        .O(ap_done));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ap_ready_INST_0_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\dec_din_words_V_last_V_1_state_reg_n_0_[1] ),
        .I2(dec_ctrl_V_V_1_ack_in),
        .I3(\dec_din_words_V_data_V_1_state_reg_n_0_[1] ),
        .I4(\dec_dout_words_V_last_V_1_state_reg_n_0_[1] ),
        .I5(\dec_dout_words_V_data_V_1_state_reg_n_0_[1] ),
        .O(ap_ready_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \dec_ctrl_V_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(dec_ctrl_V_V_TVALID),
        .I2(dec_ctrl_V_V_1_ack_in),
        .I3(dec_ctrl_V_V_TREADY),
        .I4(p_61_in),
        .O(\dec_ctrl_V_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \dec_ctrl_V_V_1_state[0]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(dec_ctrl_V_V_1_ack_in),
        .I3(\dec_din_words_V_data_V_1_state_reg_n_0_[1] ),
        .I4(\dec_dout_words_V_data_V_1_state_reg_n_0_[1] ),
        .O(p_61_in));
  LUT4 #(
    .INIT(16'hF3FB)) 
    \dec_ctrl_V_V_1_state[1]_i_1 
       (.I0(dec_ctrl_V_V_1_ack_in),
        .I1(dec_ctrl_V_V_TVALID),
        .I2(dec_ctrl_V_V_TREADY),
        .I3(p_61_in),
        .O(\dec_ctrl_V_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_ctrl_V_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_ctrl_V_V_1_state[0]_i_1_n_0 ),
        .Q(dec_ctrl_V_V_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dec_ctrl_V_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_ctrl_V_V_1_state[1]_i_1_n_0 ),
        .Q(dec_ctrl_V_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \dec_din_words_V_data_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\dec_din_words_V_data_V_1_state_reg_n_0_[0] ),
        .I2(\dec_din_words_V_data_V_1_state_reg_n_0_[1] ),
        .I3(dec_din_words_TREADY),
        .I4(p_61_in),
        .O(\dec_din_words_V_data_V_1_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFCF)) 
    \dec_din_words_V_data_V_1_state[1]_i_1 
       (.I0(p_61_in),
        .I1(dec_din_words_TREADY),
        .I2(\dec_din_words_V_data_V_1_state_reg_n_0_[0] ),
        .I3(\dec_din_words_V_data_V_1_state_reg_n_0_[1] ),
        .O(\dec_din_words_V_data_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_din_words_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_din_words_V_data_V_1_state[0]_i_1_n_0 ),
        .Q(\dec_din_words_V_data_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dec_din_words_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_din_words_V_data_V_1_state[1]_i_1_n_0 ),
        .Q(\dec_din_words_V_data_V_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \dec_din_words_V_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(dec_din_words_TVALID),
        .I2(\dec_din_words_V_last_V_1_state_reg_n_0_[1] ),
        .I3(dec_din_words_TREADY),
        .I4(p_61_in),
        .O(\dec_din_words_V_last_V_1_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFCF)) 
    \dec_din_words_V_last_V_1_state[1]_i_1 
       (.I0(p_61_in),
        .I1(dec_din_words_TREADY),
        .I2(dec_din_words_TVALID),
        .I3(\dec_din_words_V_last_V_1_state_reg_n_0_[1] ),
        .O(\dec_din_words_V_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_din_words_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_din_words_V_last_V_1_state[0]_i_1_n_0 ),
        .Q(dec_din_words_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dec_din_words_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_din_words_V_last_V_1_state[1]_i_1_n_0 ),
        .Q(\dec_din_words_V_last_V_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \dec_dout_words_V_data_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\dec_dout_words_V_data_V_1_state_reg_n_0_[0] ),
        .I2(\dec_dout_words_V_data_V_1_state_reg_n_0_[1] ),
        .I3(dec_dout_words_TREADY),
        .I4(p_61_in),
        .O(\dec_dout_words_V_data_V_1_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dec_dout_words_V_data_V_1_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hF3FB)) 
    \dec_dout_words_V_data_V_1_state[1]_i_2 
       (.I0(\dec_dout_words_V_data_V_1_state_reg_n_0_[1] ),
        .I1(\dec_dout_words_V_data_V_1_state_reg_n_0_[0] ),
        .I2(dec_dout_words_TREADY),
        .I3(p_61_in),
        .O(\dec_dout_words_V_data_V_1_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_dout_words_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_dout_words_V_data_V_1_state[0]_i_1_n_0 ),
        .Q(\dec_dout_words_V_data_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dec_dout_words_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_dout_words_V_data_V_1_state[1]_i_2_n_0 ),
        .Q(\dec_dout_words_V_data_V_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \dec_dout_words_V_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(dec_dout_words_TVALID),
        .I2(\dec_dout_words_V_last_V_1_state_reg_n_0_[1] ),
        .I3(dec_dout_words_TREADY),
        .I4(p_61_in),
        .O(\dec_dout_words_V_last_V_1_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFCF)) 
    \dec_dout_words_V_last_V_1_state[1]_i_1 
       (.I0(p_61_in),
        .I1(dec_dout_words_TREADY),
        .I2(dec_dout_words_TVALID),
        .I3(\dec_dout_words_V_last_V_1_state_reg_n_0_[1] ),
        .O(\dec_dout_words_V_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_dout_words_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_dout_words_V_last_V_1_state[0]_i_1_n_0 ),
        .Q(dec_dout_words_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dec_dout_words_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\dec_dout_words_V_last_V_1_state[1]_i_1_n_0 ),
        .Q(\dec_dout_words_V_last_V_1_state_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_config_decoder_0_0,config_decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "config_decoder,Vivado 2018.3" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    dec_ctrl_V_V_TVALID,
    dec_ctrl_V_V_TREADY,
    dec_ctrl_V_V_TDATA,
    dec_din_words_TVALID,
    dec_din_words_TREADY,
    dec_din_words_TDATA,
    dec_din_words_TLAST,
    dec_dout_words_TVALID,
    dec_dout_words_TREADY,
    dec_dout_words_TDATA,
    dec_dout_words_TLAST);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF dec_ctrl_V_V:dec_din_words:dec_dout_words, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_ctrl_V_V TVALID" *) output dec_ctrl_V_V_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_ctrl_V_V TREADY" *) input dec_ctrl_V_V_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_ctrl_V_V TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dec_ctrl_V_V, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [31:0]dec_ctrl_V_V_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_din_words TVALID" *) output dec_din_words_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_din_words TREADY" *) input dec_din_words_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_din_words TDATA" *) output [7:0]dec_din_words_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_din_words TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dec_din_words, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]dec_din_words_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_dout_words TVALID" *) output dec_dout_words_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_dout_words TREADY" *) input dec_dout_words_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_dout_words TDATA" *) output [7:0]dec_dout_words_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dec_dout_words TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dec_dout_words, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]dec_dout_words_TLAST;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [31:0]dec_ctrl_V_V_TDATA;
  wire dec_ctrl_V_V_TREADY;
  wire dec_ctrl_V_V_TVALID;
  wire [7:0]dec_din_words_TDATA;
  wire [0:0]dec_din_words_TLAST;
  wire dec_din_words_TREADY;
  wire dec_din_words_TVALID;
  wire [7:0]dec_dout_words_TDATA;
  wire [0:0]dec_dout_words_TLAST;
  wire dec_dout_words_TREADY;
  wire dec_dout_words_TVALID;

  (* ap_ST_fsm_state1 = "2'b01" *) 
  (* ap_ST_fsm_state2 = "2'b10" *) 
  (* ap_const_lv32_0 = "0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_config_decoder inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .dec_ctrl_V_V_TDATA(dec_ctrl_V_V_TDATA),
        .dec_ctrl_V_V_TREADY(dec_ctrl_V_V_TREADY),
        .dec_ctrl_V_V_TVALID(dec_ctrl_V_V_TVALID),
        .dec_din_words_TDATA(dec_din_words_TDATA),
        .dec_din_words_TLAST(dec_din_words_TLAST),
        .dec_din_words_TREADY(dec_din_words_TREADY),
        .dec_din_words_TVALID(dec_din_words_TVALID),
        .dec_dout_words_TDATA(dec_dout_words_TDATA),
        .dec_dout_words_TLAST(dec_dout_words_TLAST),
        .dec_dout_words_TREADY(dec_dout_words_TREADY),
        .dec_dout_words_TVALID(dec_dout_words_TVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
