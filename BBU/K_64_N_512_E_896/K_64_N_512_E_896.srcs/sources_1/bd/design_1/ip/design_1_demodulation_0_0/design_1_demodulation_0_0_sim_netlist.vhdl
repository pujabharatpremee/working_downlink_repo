-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Feb 10 09:58:01 2020
-- Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/puja/Desktop/working_downlink_chain/BBU/K_64_N_512_E_896/K_64_N_512_E_896.srcs/sources_1/bd/design_1/ip/design_1_demodulation_0_0/design_1_demodulation_0_0_sim_netlist.vhdl
-- Design      : design_1_demodulation_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu21dr-ffvd1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_demodulation_0_0_demodulation is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    demod_out_TREADY : in STD_LOGIC;
    real_in_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    real_in_TVALID : in STD_LOGIC;
    real_in_TREADY : out STD_LOGIC;
    real_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    imag_in_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    imag_in_TVALID : in STD_LOGIC;
    imag_in_TREADY : out STD_LOGIC;
    imag_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    demod_out_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    demod_out_TVALID : out STD_LOGIC;
    demod_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_demodulation_0_0_demodulation : entity is "demodulation";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of design_1_demodulation_0_0_demodulation : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of design_1_demodulation_0_0_demodulation : entity is "yes";
end design_1_demodulation_0_0_demodulation;

architecture STRUCTURE of design_1_demodulation_0_0_demodulation is
  signal \<const1>\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal \^demod_out_tdata\ : STD_LOGIC_VECTOR ( 127 downto 6 );
  signal \^demod_out_tvalid\ : STD_LOGIC;
  signal demod_out_V_data_V_1_ack_in : STD_LOGIC;
  signal demod_out_V_data_V_1_load_B : STD_LOGIC;
  signal demod_out_V_data_V_1_payload_A : STD_LOGIC_VECTOR ( 127 downto 6 );
  signal \demod_out_V_data_V_1_payload_A[102]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[103]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[110]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_12_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_13_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_14_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_15_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_16_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_17_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_18_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_19_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_20_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_21_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_22_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_23_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_24_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_25_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_26_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_27_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_28_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_29_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_30_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_31_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[111]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[118]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[119]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[126]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_12_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_13_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_14_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_15_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_16_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_17_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_18_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_19_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_20_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_21_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_22_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_23_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_24_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_25_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_26_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_27_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_28_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_29_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_30_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_31_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_32_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[127]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_12_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_13_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_14_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_15_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_16_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_17_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_18_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_19_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_20_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_21_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_22_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_23_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_24_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_25_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_26_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_27_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_28_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_29_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_30_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_31_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[15]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[22]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[23]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[30]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_12_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_13_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_14_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_15_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_16_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_17_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_18_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_19_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_20_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_21_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_22_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_23_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_24_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_25_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_26_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_27_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_28_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_29_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_30_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_31_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[31]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[38]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[39]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[46]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_12_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_13_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_14_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_15_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_16_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_17_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_18_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_19_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_20_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_21_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_22_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_23_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_24_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_25_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_26_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_27_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_28_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_29_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_30_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_31_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[47]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[54]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[55]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[62]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_12_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_13_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_14_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_15_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_16_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_17_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_18_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_19_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_20_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_21_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_22_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_23_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_24_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_25_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_26_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_27_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_28_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_29_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_30_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_31_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[63]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[6]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[70]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[71]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[78]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_12_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_13_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_14_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_15_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_16_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_17_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_18_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_19_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_20_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_21_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_22_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_23_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_24_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_25_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_26_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_27_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_28_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_29_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_30_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_31_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[79]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[7]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[86]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[87]_i_9_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[94]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_11_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_12_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_13_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_14_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_15_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_16_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_17_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_18_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_19_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_20_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_21_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_22_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_23_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_24_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_25_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_26_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_27_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_28_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_29_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_30_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_31_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_payload_A[95]_i_9_n_0\ : STD_LOGIC;
  signal demod_out_V_data_V_1_payload_B : STD_LOGIC_VECTOR ( 127 downto 6 );
  signal demod_out_V_data_V_1_sel : STD_LOGIC;
  signal demod_out_V_data_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal demod_out_V_data_V_1_sel_wr : STD_LOGIC;
  signal demod_out_V_data_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \demod_out_V_data_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_data_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal demod_out_V_last_V_1_ack_in : STD_LOGIC;
  signal demod_out_V_last_V_1_load_B : STD_LOGIC;
  signal demod_out_V_last_V_1_payload_A : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_10_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_6_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_7_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_8_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_A[0]_i_9_n_0\ : STD_LOGIC;
  signal demod_out_V_last_V_1_payload_B : STD_LOGIC;
  signal \demod_out_V_last_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal demod_out_V_last_V_1_sel : STD_LOGIC;
  signal demod_out_V_last_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal demod_out_V_last_V_1_sel_wr : STD_LOGIC;
  signal demod_out_V_last_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \demod_out_V_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \demod_out_V_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^imag_in_tready\ : STD_LOGIC;
  signal imag_in_V_data_V_0_ack_in : STD_LOGIC;
  signal imag_in_V_data_V_0_load_B : STD_LOGIC;
  signal imag_in_V_data_V_0_payload_A : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\ : STD_LOGIC;
  signal imag_in_V_data_V_0_payload_B : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal imag_in_V_data_V_0_sel : STD_LOGIC;
  signal imag_in_V_data_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal imag_in_V_data_V_0_sel_wr : STD_LOGIC;
  signal imag_in_V_data_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \imag_in_V_data_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \imag_in_V_data_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \imag_in_V_data_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \imag_in_V_last_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \imag_in_V_last_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \imag_in_V_last_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^real_in_tready\ : STD_LOGIC;
  signal real_in_V_data_V_0_ack_in : STD_LOGIC;
  signal real_in_V_data_V_0_load_B : STD_LOGIC;
  signal real_in_V_data_V_0_payload_A : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \real_in_V_data_V_0_payload_A[127]_i_1_n_0\ : STD_LOGIC;
  signal real_in_V_data_V_0_payload_B : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal real_in_V_data_V_0_sel : STD_LOGIC;
  signal real_in_V_data_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal real_in_V_data_V_0_sel_wr : STD_LOGIC;
  signal real_in_V_data_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \real_in_V_data_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \real_in_V_data_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \real_in_V_data_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \real_in_V_last_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \real_in_V_last_V_0_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \real_in_V_last_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \soft_txn[0]_i_10_n_0\ : STD_LOGIC;
  signal \soft_txn[0]_i_2_n_0\ : STD_LOGIC;
  signal \soft_txn[0]_i_3_n_0\ : STD_LOGIC;
  signal \soft_txn[0]_i_4_n_0\ : STD_LOGIC;
  signal \soft_txn[0]_i_5_n_0\ : STD_LOGIC;
  signal \soft_txn[0]_i_6_n_0\ : STD_LOGIC;
  signal \soft_txn[0]_i_7_n_0\ : STD_LOGIC;
  signal \soft_txn[0]_i_8_n_0\ : STD_LOGIC;
  signal \soft_txn[0]_i_9_n_0\ : STD_LOGIC;
  signal \soft_txn[16]_i_2_n_0\ : STD_LOGIC;
  signal \soft_txn[16]_i_3_n_0\ : STD_LOGIC;
  signal \soft_txn[16]_i_4_n_0\ : STD_LOGIC;
  signal \soft_txn[16]_i_5_n_0\ : STD_LOGIC;
  signal \soft_txn[16]_i_6_n_0\ : STD_LOGIC;
  signal \soft_txn[16]_i_7_n_0\ : STD_LOGIC;
  signal \soft_txn[16]_i_8_n_0\ : STD_LOGIC;
  signal \soft_txn[16]_i_9_n_0\ : STD_LOGIC;
  signal \soft_txn[24]_i_2_n_0\ : STD_LOGIC;
  signal \soft_txn[24]_i_3_n_0\ : STD_LOGIC;
  signal \soft_txn[24]_i_4_n_0\ : STD_LOGIC;
  signal \soft_txn[24]_i_5_n_0\ : STD_LOGIC;
  signal \soft_txn[24]_i_6_n_0\ : STD_LOGIC;
  signal \soft_txn[24]_i_7_n_0\ : STD_LOGIC;
  signal \soft_txn[24]_i_8_n_0\ : STD_LOGIC;
  signal \soft_txn[24]_i_9_n_0\ : STD_LOGIC;
  signal \soft_txn[8]_i_2_n_0\ : STD_LOGIC;
  signal \soft_txn[8]_i_3_n_0\ : STD_LOGIC;
  signal \soft_txn[8]_i_4_n_0\ : STD_LOGIC;
  signal \soft_txn[8]_i_5_n_0\ : STD_LOGIC;
  signal \soft_txn[8]_i_6_n_0\ : STD_LOGIC;
  signal \soft_txn[8]_i_7_n_0\ : STD_LOGIC;
  signal \soft_txn[8]_i_8_n_0\ : STD_LOGIC;
  signal \soft_txn[8]_i_9_n_0\ : STD_LOGIC;
  signal soft_txn_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \soft_txn_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \soft_txn_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \soft_txn_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \soft_txn_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \soft_txn_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal tmp_data_V_fu_942_p90 : STD_LOGIC;
  signal \NLW_soft_txn_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \demod_out_TDATA[103]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \demod_out_TDATA[105]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \demod_out_TDATA[111]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \demod_out_TDATA[113]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \demod_out_TDATA[119]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \demod_out_TDATA[121]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \demod_out_TDATA[127]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \demod_out_TDATA[15]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \demod_out_TDATA[17]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \demod_out_TDATA[1]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \demod_out_TDATA[23]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \demod_out_TDATA[25]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \demod_out_TDATA[31]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \demod_out_TDATA[33]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \demod_out_TDATA[39]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \demod_out_TDATA[41]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \demod_out_TDATA[47]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \demod_out_TDATA[49]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \demod_out_TDATA[55]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \demod_out_TDATA[57]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \demod_out_TDATA[63]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \demod_out_TDATA[65]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \demod_out_TDATA[71]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \demod_out_TDATA[73]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \demod_out_TDATA[79]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \demod_out_TDATA[7]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \demod_out_TDATA[81]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \demod_out_TDATA[87]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \demod_out_TDATA[89]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \demod_out_TDATA[95]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \demod_out_TDATA[97]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \demod_out_TDATA[9]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \demod_out_TLAST[0]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[103]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[103]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[111]_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[111]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[127]_i_18\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[127]_i_25\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[15]_i_18\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[15]_i_20\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[15]_i_27\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[15]_i_29\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[15]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[23]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[23]_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[31]_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[31]_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[31]_i_17\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[31]_i_24\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[47]_i_17\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[47]_i_24\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[55]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[63]_i_14\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[63]_i_17\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[63]_i_24\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[71]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[79]_i_10\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[7]_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[87]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[87]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[95]_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_payload_A[95]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of demod_out_V_data_V_1_sel_rd_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \demod_out_V_data_V_1_state[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \demod_out_V_last_V_1_payload_A[0]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \demod_out_V_last_V_1_payload_B[0]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of demod_out_V_last_V_1_sel_rd_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of demod_out_V_last_V_1_sel_wr_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \demod_out_V_last_V_1_state[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of imag_in_V_data_V_0_sel_rd_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of imag_in_V_data_V_0_sel_wr_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \imag_in_V_data_V_0_state[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of real_in_V_data_V_0_sel_rd_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of real_in_V_data_V_0_sel_wr_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \real_in_V_data_V_0_state[1]_i_1\ : label is "soft_lutpair16";
begin
  ap_ready <= \^ap_ready\;
  demod_out_TDATA(127 downto 126) <= \^demod_out_tdata\(127 downto 126);
  demod_out_TDATA(125) <= \^demod_out_tdata\(126);
  demod_out_TDATA(124) <= \^demod_out_tdata\(126);
  demod_out_TDATA(123) <= \^demod_out_tdata\(126);
  demod_out_TDATA(122) <= \^demod_out_tdata\(126);
  demod_out_TDATA(121) <= \^demod_out_tdata\(126);
  demod_out_TDATA(120) <= \<const1>\;
  demod_out_TDATA(119 downto 118) <= \^demod_out_tdata\(119 downto 118);
  demod_out_TDATA(117) <= \^demod_out_tdata\(118);
  demod_out_TDATA(116) <= \^demod_out_tdata\(118);
  demod_out_TDATA(115) <= \^demod_out_tdata\(118);
  demod_out_TDATA(114) <= \^demod_out_tdata\(118);
  demod_out_TDATA(113) <= \^demod_out_tdata\(118);
  demod_out_TDATA(112) <= \<const1>\;
  demod_out_TDATA(111 downto 110) <= \^demod_out_tdata\(111 downto 110);
  demod_out_TDATA(109) <= \^demod_out_tdata\(110);
  demod_out_TDATA(108) <= \^demod_out_tdata\(110);
  demod_out_TDATA(107) <= \^demod_out_tdata\(110);
  demod_out_TDATA(106) <= \^demod_out_tdata\(110);
  demod_out_TDATA(105) <= \^demod_out_tdata\(110);
  demod_out_TDATA(104) <= \<const1>\;
  demod_out_TDATA(103 downto 102) <= \^demod_out_tdata\(103 downto 102);
  demod_out_TDATA(101) <= \^demod_out_tdata\(102);
  demod_out_TDATA(100) <= \^demod_out_tdata\(102);
  demod_out_TDATA(99) <= \^demod_out_tdata\(102);
  demod_out_TDATA(98) <= \^demod_out_tdata\(102);
  demod_out_TDATA(97) <= \^demod_out_tdata\(102);
  demod_out_TDATA(96) <= \<const1>\;
  demod_out_TDATA(95 downto 94) <= \^demod_out_tdata\(95 downto 94);
  demod_out_TDATA(93) <= \^demod_out_tdata\(94);
  demod_out_TDATA(92) <= \^demod_out_tdata\(94);
  demod_out_TDATA(91) <= \^demod_out_tdata\(94);
  demod_out_TDATA(90) <= \^demod_out_tdata\(94);
  demod_out_TDATA(89) <= \^demod_out_tdata\(94);
  demod_out_TDATA(88) <= \<const1>\;
  demod_out_TDATA(87 downto 86) <= \^demod_out_tdata\(87 downto 86);
  demod_out_TDATA(85) <= \^demod_out_tdata\(86);
  demod_out_TDATA(84) <= \^demod_out_tdata\(86);
  demod_out_TDATA(83) <= \^demod_out_tdata\(86);
  demod_out_TDATA(82) <= \^demod_out_tdata\(86);
  demod_out_TDATA(81) <= \^demod_out_tdata\(86);
  demod_out_TDATA(80) <= \<const1>\;
  demod_out_TDATA(79 downto 78) <= \^demod_out_tdata\(79 downto 78);
  demod_out_TDATA(77) <= \^demod_out_tdata\(78);
  demod_out_TDATA(76) <= \^demod_out_tdata\(78);
  demod_out_TDATA(75) <= \^demod_out_tdata\(78);
  demod_out_TDATA(74) <= \^demod_out_tdata\(78);
  demod_out_TDATA(73) <= \^demod_out_tdata\(78);
  demod_out_TDATA(72) <= \<const1>\;
  demod_out_TDATA(71 downto 70) <= \^demod_out_tdata\(71 downto 70);
  demod_out_TDATA(69) <= \^demod_out_tdata\(70);
  demod_out_TDATA(68) <= \^demod_out_tdata\(70);
  demod_out_TDATA(67) <= \^demod_out_tdata\(70);
  demod_out_TDATA(66) <= \^demod_out_tdata\(70);
  demod_out_TDATA(65) <= \^demod_out_tdata\(70);
  demod_out_TDATA(64) <= \<const1>\;
  demod_out_TDATA(63 downto 62) <= \^demod_out_tdata\(63 downto 62);
  demod_out_TDATA(61) <= \^demod_out_tdata\(62);
  demod_out_TDATA(60) <= \^demod_out_tdata\(62);
  demod_out_TDATA(59) <= \^demod_out_tdata\(62);
  demod_out_TDATA(58) <= \^demod_out_tdata\(62);
  demod_out_TDATA(57) <= \^demod_out_tdata\(62);
  demod_out_TDATA(56) <= \<const1>\;
  demod_out_TDATA(55 downto 54) <= \^demod_out_tdata\(55 downto 54);
  demod_out_TDATA(53) <= \^demod_out_tdata\(54);
  demod_out_TDATA(52) <= \^demod_out_tdata\(54);
  demod_out_TDATA(51) <= \^demod_out_tdata\(54);
  demod_out_TDATA(50) <= \^demod_out_tdata\(54);
  demod_out_TDATA(49) <= \^demod_out_tdata\(54);
  demod_out_TDATA(48) <= \<const1>\;
  demod_out_TDATA(47 downto 46) <= \^demod_out_tdata\(47 downto 46);
  demod_out_TDATA(45) <= \^demod_out_tdata\(46);
  demod_out_TDATA(44) <= \^demod_out_tdata\(46);
  demod_out_TDATA(43) <= \^demod_out_tdata\(46);
  demod_out_TDATA(42) <= \^demod_out_tdata\(46);
  demod_out_TDATA(41) <= \^demod_out_tdata\(46);
  demod_out_TDATA(40) <= \<const1>\;
  demod_out_TDATA(39 downto 38) <= \^demod_out_tdata\(39 downto 38);
  demod_out_TDATA(37) <= \^demod_out_tdata\(38);
  demod_out_TDATA(36) <= \^demod_out_tdata\(38);
  demod_out_TDATA(35) <= \^demod_out_tdata\(38);
  demod_out_TDATA(34) <= \^demod_out_tdata\(38);
  demod_out_TDATA(33) <= \^demod_out_tdata\(38);
  demod_out_TDATA(32) <= \<const1>\;
  demod_out_TDATA(31 downto 30) <= \^demod_out_tdata\(31 downto 30);
  demod_out_TDATA(29) <= \^demod_out_tdata\(30);
  demod_out_TDATA(28) <= \^demod_out_tdata\(30);
  demod_out_TDATA(27) <= \^demod_out_tdata\(30);
  demod_out_TDATA(26) <= \^demod_out_tdata\(30);
  demod_out_TDATA(25) <= \^demod_out_tdata\(30);
  demod_out_TDATA(24) <= \<const1>\;
  demod_out_TDATA(23 downto 22) <= \^demod_out_tdata\(23 downto 22);
  demod_out_TDATA(21) <= \^demod_out_tdata\(22);
  demod_out_TDATA(20) <= \^demod_out_tdata\(22);
  demod_out_TDATA(19) <= \^demod_out_tdata\(22);
  demod_out_TDATA(18) <= \^demod_out_tdata\(22);
  demod_out_TDATA(17) <= \^demod_out_tdata\(22);
  demod_out_TDATA(16) <= \<const1>\;
  demod_out_TDATA(15 downto 14) <= \^demod_out_tdata\(15 downto 14);
  demod_out_TDATA(13) <= \^demod_out_tdata\(14);
  demod_out_TDATA(12) <= \^demod_out_tdata\(14);
  demod_out_TDATA(11) <= \^demod_out_tdata\(14);
  demod_out_TDATA(10) <= \^demod_out_tdata\(14);
  demod_out_TDATA(9) <= \^demod_out_tdata\(14);
  demod_out_TDATA(8) <= \<const1>\;
  demod_out_TDATA(7 downto 6) <= \^demod_out_tdata\(7 downto 6);
  demod_out_TDATA(5) <= \^demod_out_tdata\(6);
  demod_out_TDATA(4) <= \^demod_out_tdata\(6);
  demod_out_TDATA(3) <= \^demod_out_tdata\(6);
  demod_out_TDATA(2) <= \^demod_out_tdata\(6);
  demod_out_TDATA(1) <= \^demod_out_tdata\(6);
  demod_out_TDATA(0) <= \<const1>\;
  demod_out_TVALID <= \^demod_out_tvalid\;
  imag_in_TREADY <= \^imag_in_tready\;
  real_in_TREADY <= \^real_in_tready\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
ap_done_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80CC000000000000"
    )
        port map (
      I0 => \imag_in_V_data_V_0_state_reg_n_0_[0]\,
      I1 => demod_out_V_data_V_1_ack_in,
      I2 => \real_in_V_data_V_0_state_reg_n_0_[0]\,
      I3 => ap_start,
      I4 => demod_out_V_last_V_1_ack_in,
      I5 => ap_enable_reg_pp0_iter1,
      O => ap_done
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2A2AAAAA2A2AAAA"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => demod_out_V_last_V_1_ack_in,
      I2 => ap_start,
      I3 => \real_in_V_data_V_0_state_reg_n_0_[0]\,
      I4 => demod_out_V_data_V_1_ack_in,
      I5 => \imag_in_V_data_V_0_state_reg_n_0_[0]\,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000080008000"
    )
        port map (
      I0 => \imag_in_V_data_V_0_state_reg_n_0_[0]\,
      I1 => demod_out_V_data_V_1_ack_in,
      I2 => \real_in_V_data_V_0_state_reg_n_0_[0]\,
      I3 => ap_start,
      I4 => demod_out_V_last_V_1_ack_in,
      I5 => ap_enable_reg_pp0_iter1,
      O => \^ap_ready\
    );
\demod_out_TDATA[103]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(103),
      I1 => demod_out_V_data_V_1_payload_A(103),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(103)
    );
\demod_out_TDATA[105]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(110),
      I1 => demod_out_V_data_V_1_payload_A(110),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(110)
    );
\demod_out_TDATA[111]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(111),
      I1 => demod_out_V_data_V_1_payload_A(111),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(111)
    );
\demod_out_TDATA[113]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(118),
      I1 => demod_out_V_data_V_1_payload_A(118),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(118)
    );
\demod_out_TDATA[119]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(119),
      I1 => demod_out_V_data_V_1_payload_A(119),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(119)
    );
\demod_out_TDATA[121]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(126),
      I1 => demod_out_V_data_V_1_payload_A(126),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(126)
    );
\demod_out_TDATA[127]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(127),
      I1 => demod_out_V_data_V_1_payload_A(127),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(127)
    );
\demod_out_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(15),
      I1 => demod_out_V_data_V_1_payload_A(15),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(15)
    );
\demod_out_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(22),
      I1 => demod_out_V_data_V_1_payload_A(22),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(22)
    );
\demod_out_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(6),
      I1 => demod_out_V_data_V_1_payload_A(6),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(6)
    );
\demod_out_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(23),
      I1 => demod_out_V_data_V_1_payload_A(23),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(23)
    );
\demod_out_TDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(30),
      I1 => demod_out_V_data_V_1_payload_A(30),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(30)
    );
\demod_out_TDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(31),
      I1 => demod_out_V_data_V_1_payload_A(31),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(31)
    );
\demod_out_TDATA[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(38),
      I1 => demod_out_V_data_V_1_payload_A(38),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(38)
    );
\demod_out_TDATA[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(39),
      I1 => demod_out_V_data_V_1_payload_A(39),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(39)
    );
\demod_out_TDATA[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(46),
      I1 => demod_out_V_data_V_1_payload_A(46),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(46)
    );
\demod_out_TDATA[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(47),
      I1 => demod_out_V_data_V_1_payload_A(47),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(47)
    );
\demod_out_TDATA[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(54),
      I1 => demod_out_V_data_V_1_payload_A(54),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(54)
    );
\demod_out_TDATA[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(55),
      I1 => demod_out_V_data_V_1_payload_A(55),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(55)
    );
\demod_out_TDATA[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(62),
      I1 => demod_out_V_data_V_1_payload_A(62),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(62)
    );
\demod_out_TDATA[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(63),
      I1 => demod_out_V_data_V_1_payload_A(63),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(63)
    );
\demod_out_TDATA[65]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(70),
      I1 => demod_out_V_data_V_1_payload_A(70),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(70)
    );
\demod_out_TDATA[71]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(71),
      I1 => demod_out_V_data_V_1_payload_A(71),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(71)
    );
\demod_out_TDATA[73]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(78),
      I1 => demod_out_V_data_V_1_payload_A(78),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(78)
    );
\demod_out_TDATA[79]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(79),
      I1 => demod_out_V_data_V_1_payload_A(79),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(79)
    );
\demod_out_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(7),
      I1 => demod_out_V_data_V_1_payload_A(7),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(7)
    );
\demod_out_TDATA[81]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(86),
      I1 => demod_out_V_data_V_1_payload_A(86),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(86)
    );
\demod_out_TDATA[87]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(87),
      I1 => demod_out_V_data_V_1_payload_A(87),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(87)
    );
\demod_out_TDATA[89]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(94),
      I1 => demod_out_V_data_V_1_payload_A(94),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(94)
    );
\demod_out_TDATA[95]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(95),
      I1 => demod_out_V_data_V_1_payload_A(95),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(95)
    );
\demod_out_TDATA[97]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(102),
      I1 => demod_out_V_data_V_1_payload_A(102),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(102)
    );
\demod_out_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => demod_out_V_data_V_1_payload_B(14),
      I1 => demod_out_V_data_V_1_payload_A(14),
      I2 => demod_out_V_data_V_1_sel,
      O => \^demod_out_tdata\(14)
    );
\demod_out_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => demod_out_V_last_V_1_payload_B,
      I1 => demod_out_V_last_V_1_sel,
      I2 => demod_out_V_last_V_1_payload_A,
      O => demod_out_TLAST(0)
    );
\demod_out_V_data_V_1_payload_A[102]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[103]_i_3_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[103]_i_2_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[111]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[111]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[102]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[103]_i_2_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[103]_i_3_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[111]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[111]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[103]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(102),
      I1 => real_in_V_data_V_0_payload_B(102),
      I2 => real_in_V_data_V_0_payload_A(111),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(111),
      O => \demod_out_V_data_V_1_payload_A[103]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(96),
      I1 => real_in_V_data_V_0_payload_B(96),
      I2 => real_in_V_data_V_0_payload_A(105),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(105),
      O => \demod_out_V_data_V_1_payload_A[103]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[103]_i_4_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[103]_i_5_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[103]_i_6_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[103]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[103]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[103]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[103]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[103]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[103]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[103]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(108),
      I1 => real_in_V_data_V_0_payload_B(108),
      I2 => real_in_V_data_V_0_payload_A(99),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(99),
      O => \demod_out_V_data_V_1_payload_A[103]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(110),
      I1 => real_in_V_data_V_0_payload_B(110),
      I2 => real_in_V_data_V_0_payload_A(107),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(107),
      O => \demod_out_V_data_V_1_payload_A[103]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(109),
      I1 => real_in_V_data_V_0_payload_B(109),
      I2 => real_in_V_data_V_0_payload_A(106),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(106),
      O => \demod_out_V_data_V_1_payload_A[103]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(104),
      I1 => real_in_V_data_V_0_payload_B(104),
      I2 => real_in_V_data_V_0_payload_A(101),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(101),
      O => \demod_out_V_data_V_1_payload_A[103]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(103),
      I1 => real_in_V_data_V_0_payload_B(103),
      I2 => real_in_V_data_V_0_payload_A(98),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(98),
      O => \demod_out_V_data_V_1_payload_A[103]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[103]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(100),
      I1 => real_in_V_data_V_0_payload_B(100),
      I2 => real_in_V_data_V_0_payload_A(97),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(97),
      O => \demod_out_V_data_V_1_payload_A[103]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[110]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[111]_i_5_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[111]_i_4_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[111]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[111]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[110]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[111]_i_4_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[111]_i_5_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[111]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[111]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[111]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(110),
      I1 => real_in_V_data_V_0_payload_B(110),
      I2 => real_in_V_data_V_0_payload_A(107),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(107),
      O => \demod_out_V_data_V_1_payload_A[111]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(105),
      I1 => real_in_V_data_V_0_payload_B(105),
      I2 => real_in_V_data_V_0_payload_A(111),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(111),
      O => \demod_out_V_data_V_1_payload_A[111]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(108),
      I1 => real_in_V_data_V_0_payload_B(108),
      I2 => real_in_V_data_V_0_payload_A(102),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(102),
      O => \demod_out_V_data_V_1_payload_A[111]_i_12_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(103),
      I1 => real_in_V_data_V_0_payload_B(103),
      I2 => real_in_V_data_V_0_payload_A(109),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(109),
      O => \demod_out_V_data_V_1_payload_A[111]_i_13_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(97),
      I1 => real_in_V_data_V_0_payload_B(97),
      I2 => real_in_V_data_V_0_payload_A(98),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(98),
      O => \demod_out_V_data_V_1_payload_A[111]_i_14_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(100),
      I1 => real_in_V_data_V_0_payload_B(100),
      I2 => real_in_V_data_V_0_payload_A(99),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(99),
      O => \demod_out_V_data_V_1_payload_A[111]_i_15_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(109),
      I1 => imag_in_V_data_V_0_payload_B(109),
      I2 => imag_in_V_data_V_0_payload_A(111),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(111),
      O => \demod_out_V_data_V_1_payload_A[111]_i_16_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(101),
      I1 => imag_in_V_data_V_0_payload_B(101),
      I2 => imag_in_V_data_V_0_payload_A(107),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(107),
      O => \demod_out_V_data_V_1_payload_A[111]_i_17_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(102),
      I1 => imag_in_V_data_V_0_payload_B(102),
      I2 => imag_in_V_data_V_0_payload_A(106),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(106),
      O => \demod_out_V_data_V_1_payload_A[111]_i_18_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(100),
      I1 => imag_in_V_data_V_0_payload_B(100),
      I2 => imag_in_V_data_V_0_payload_A(105),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(105),
      O => \demod_out_V_data_V_1_payload_A[111]_i_19_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[111]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[111]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[111]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(108),
      I1 => imag_in_V_data_V_0_payload_B(108),
      I2 => imag_in_V_data_V_0_payload_A(97),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(97),
      O => \demod_out_V_data_V_1_payload_A[111]_i_20_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(98),
      I1 => imag_in_V_data_V_0_payload_B(98),
      I2 => imag_in_V_data_V_0_payload_A(96),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(96),
      O => \demod_out_V_data_V_1_payload_A[111]_i_21_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(99),
      I1 => imag_in_V_data_V_0_payload_B(99),
      I2 => imag_in_V_data_V_0_payload_A(110),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(110),
      O => \demod_out_V_data_V_1_payload_A[111]_i_22_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(104),
      I1 => imag_in_V_data_V_0_payload_B(104),
      I2 => imag_in_V_data_V_0_payload_A(103),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(103),
      O => \demod_out_V_data_V_1_payload_A[111]_i_23_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(108),
      I1 => imag_in_V_data_V_0_payload_B(108),
      I2 => imag_in_V_data_V_0_payload_A(102),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(102),
      O => \demod_out_V_data_V_1_payload_A[111]_i_24_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(103),
      I1 => imag_in_V_data_V_0_payload_B(103),
      I2 => imag_in_V_data_V_0_payload_A(109),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(109),
      O => \demod_out_V_data_V_1_payload_A[111]_i_25_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(97),
      I1 => imag_in_V_data_V_0_payload_B(97),
      I2 => imag_in_V_data_V_0_payload_A(98),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(98),
      O => \demod_out_V_data_V_1_payload_A[111]_i_26_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(100),
      I1 => imag_in_V_data_V_0_payload_B(100),
      I2 => imag_in_V_data_V_0_payload_A(99),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(99),
      O => \demod_out_V_data_V_1_payload_A[111]_i_27_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(101),
      I1 => imag_in_V_data_V_0_payload_B(101),
      I2 => imag_in_V_data_V_0_payload_A(104),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(104),
      O => \demod_out_V_data_V_1_payload_A[111]_i_28_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(96),
      I1 => imag_in_V_data_V_0_payload_B(96),
      I2 => imag_in_V_data_V_0_payload_A(106),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(106),
      O => \demod_out_V_data_V_1_payload_A[111]_i_29_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_12_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_13_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[111]_i_14_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[111]_i_15_n_0\,
      O => \demod_out_V_data_V_1_payload_A[111]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(110),
      I1 => imag_in_V_data_V_0_payload_B(110),
      I2 => imag_in_V_data_V_0_payload_A(107),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(107),
      O => \demod_out_V_data_V_1_payload_A[111]_i_30_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(105),
      I1 => imag_in_V_data_V_0_payload_B(105),
      I2 => imag_in_V_data_V_0_payload_A(111),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(111),
      O => \demod_out_V_data_V_1_payload_A[111]_i_31_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_16_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_17_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[111]_i_18_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[111]_i_19_n_0\,
      O => \demod_out_V_data_V_1_payload_A[111]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_20_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_21_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[111]_i_22_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[111]_i_23_n_0\,
      O => \demod_out_V_data_V_1_payload_A[111]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_24_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_25_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[111]_i_26_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[111]_i_27_n_0\,
      O => \demod_out_V_data_V_1_payload_A[111]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[111]_i_28_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[111]_i_29_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[111]_i_30_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[111]_i_31_n_0\,
      O => \demod_out_V_data_V_1_payload_A[111]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(101),
      I1 => real_in_V_data_V_0_payload_B(101),
      I2 => real_in_V_data_V_0_payload_A(104),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(104),
      O => \demod_out_V_data_V_1_payload_A[111]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[111]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(96),
      I1 => real_in_V_data_V_0_payload_B(96),
      I2 => real_in_V_data_V_0_payload_A(106),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(106),
      O => \demod_out_V_data_V_1_payload_A[111]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[118]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_3_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_4_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[119]_i_3_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[119]_i_2_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[127]_i_7_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[127]_i_8_n_0\,
      O => \demod_out_V_data_V_1_payload_A[118]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_7_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[119]_i_2_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[119]_i_3_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[127]_i_4_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[127]_i_3_n_0\,
      O => \demod_out_V_data_V_1_payload_A[119]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(123),
      I1 => real_in_V_data_V_0_payload_B(123),
      I2 => real_in_V_data_V_0_payload_A(119),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(119),
      O => \demod_out_V_data_V_1_payload_A[119]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(118),
      I1 => real_in_V_data_V_0_payload_B(118),
      I2 => real_in_V_data_V_0_payload_A(115),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(115),
      O => \demod_out_V_data_V_1_payload_A[119]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[119]_i_4_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[119]_i_5_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[119]_i_6_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[119]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[119]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[119]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[119]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[119]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[119]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[119]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(116),
      I1 => real_in_V_data_V_0_payload_B(116),
      I2 => real_in_V_data_V_0_payload_A(124),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(124),
      O => \demod_out_V_data_V_1_payload_A[119]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(126),
      I1 => real_in_V_data_V_0_payload_B(126),
      I2 => real_in_V_data_V_0_payload_A(125),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(125),
      O => \demod_out_V_data_V_1_payload_A[119]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(122),
      I1 => real_in_V_data_V_0_payload_B(122),
      I2 => real_in_V_data_V_0_payload_A(114),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(114),
      O => \demod_out_V_data_V_1_payload_A[119]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(120),
      I1 => real_in_V_data_V_0_payload_B(120),
      I2 => real_in_V_data_V_0_payload_A(113),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(113),
      O => \demod_out_V_data_V_1_payload_A[119]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(127),
      I1 => real_in_V_data_V_0_payload_B(127),
      I2 => real_in_V_data_V_0_payload_A(121),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(121),
      O => \demod_out_V_data_V_1_payload_A[119]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[119]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(117),
      I1 => real_in_V_data_V_0_payload_B(117),
      I2 => real_in_V_data_V_0_payload_A(112),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(112),
      O => \demod_out_V_data_V_1_payload_A[119]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[126]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_7_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[127]_i_6_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[127]_i_5_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[127]_i_4_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[127]_i_3_n_0\,
      O => \demod_out_V_data_V_1_payload_A[126]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \demod_out_V_data_V_1_state_reg_n_0_[0]\,
      I1 => demod_out_V_data_V_1_ack_in,
      I2 => demod_out_V_data_V_1_sel_wr,
      O => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(123),
      I1 => real_in_V_data_V_0_payload_B(123),
      I2 => real_in_V_data_V_0_payload_A(112),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(112),
      O => \demod_out_V_data_V_1_payload_A[127]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(121),
      I1 => real_in_V_data_V_0_payload_B(121),
      I2 => real_in_V_data_V_0_payload_A(115),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(115),
      O => \demod_out_V_data_V_1_payload_A[127]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(114),
      I1 => real_in_V_data_V_0_payload_B(114),
      I2 => real_in_V_data_V_0_payload_A(113),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(113),
      O => \demod_out_V_data_V_1_payload_A[127]_i_12_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(116),
      I1 => real_in_V_data_V_0_payload_B(116),
      I2 => real_in_V_data_V_0_payload_A(125),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(125),
      O => \demod_out_V_data_V_1_payload_A[127]_i_13_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(127),
      I1 => real_in_V_data_V_0_payload_B(127),
      I2 => real_in_V_data_V_0_payload_A(118),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(118),
      O => \demod_out_V_data_V_1_payload_A[127]_i_14_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(126),
      I1 => real_in_V_data_V_0_payload_B(126),
      I2 => real_in_V_data_V_0_payload_A(124),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(124),
      O => \demod_out_V_data_V_1_payload_A[127]_i_15_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(117),
      I1 => real_in_V_data_V_0_payload_B(117),
      I2 => real_in_V_data_V_0_payload_A(119),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(119),
      O => \demod_out_V_data_V_1_payload_A[127]_i_16_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(123),
      I1 => imag_in_V_data_V_0_payload_B(123),
      I2 => imag_in_V_data_V_0_payload_A(124),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(124),
      O => \demod_out_V_data_V_1_payload_A[127]_i_17_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(122),
      I1 => imag_in_V_data_V_0_payload_B(122),
      I2 => imag_in_V_data_V_0_payload_A(118),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(118),
      O => \demod_out_V_data_V_1_payload_A[127]_i_18_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(113),
      I1 => imag_in_V_data_V_0_payload_B(113),
      I2 => imag_in_V_data_V_0_payload_A(116),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(116),
      O => \demod_out_V_data_V_1_payload_A[127]_i_19_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_3_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_4_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[127]_i_5_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[127]_i_6_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[127]_i_7_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[127]_i_8_n_0\,
      O => \demod_out_V_data_V_1_payload_A[127]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(120),
      I1 => imag_in_V_data_V_0_payload_B(120),
      I2 => imag_in_V_data_V_0_payload_A(119),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(119),
      O => \demod_out_V_data_V_1_payload_A[127]_i_20_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(121),
      I1 => imag_in_V_data_V_0_payload_B(121),
      I2 => imag_in_V_data_V_0_payload_A(112),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(112),
      O => \demod_out_V_data_V_1_payload_A[127]_i_21_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(125),
      I1 => imag_in_V_data_V_0_payload_B(125),
      I2 => imag_in_V_data_V_0_payload_A(115),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(115),
      O => \demod_out_V_data_V_1_payload_A[127]_i_22_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(114),
      I1 => imag_in_V_data_V_0_payload_B(114),
      I2 => imag_in_V_data_V_0_payload_A(127),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(127),
      O => \demod_out_V_data_V_1_payload_A[127]_i_23_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(126),
      I1 => imag_in_V_data_V_0_payload_B(126),
      I2 => imag_in_V_data_V_0_payload_A(117),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(117),
      O => \demod_out_V_data_V_1_payload_A[127]_i_24_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(122),
      I1 => imag_in_V_data_V_0_payload_B(122),
      I2 => imag_in_V_data_V_0_payload_A(118),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(118),
      O => \demod_out_V_data_V_1_payload_A[127]_i_25_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(121),
      I1 => imag_in_V_data_V_0_payload_B(121),
      I2 => imag_in_V_data_V_0_payload_A(114),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(114),
      O => \demod_out_V_data_V_1_payload_A[127]_i_26_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(123),
      I1 => imag_in_V_data_V_0_payload_B(123),
      I2 => imag_in_V_data_V_0_payload_A(120),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(120),
      O => \demod_out_V_data_V_1_payload_A[127]_i_27_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(115),
      I1 => imag_in_V_data_V_0_payload_B(115),
      I2 => imag_in_V_data_V_0_payload_A(113),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(113),
      O => \demod_out_V_data_V_1_payload_A[127]_i_28_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(116),
      I1 => imag_in_V_data_V_0_payload_B(116),
      I2 => imag_in_V_data_V_0_payload_A(126),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(126),
      O => \demod_out_V_data_V_1_payload_A[127]_i_29_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_9_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_10_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[127]_i_11_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[127]_i_12_n_0\,
      O => \demod_out_V_data_V_1_payload_A[127]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(124),
      I1 => imag_in_V_data_V_0_payload_B(124),
      I2 => imag_in_V_data_V_0_payload_A(127),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(127),
      O => \demod_out_V_data_V_1_payload_A[127]_i_30_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(119),
      I1 => imag_in_V_data_V_0_payload_B(119),
      I2 => imag_in_V_data_V_0_payload_A(117),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(117),
      O => \demod_out_V_data_V_1_payload_A[127]_i_31_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(125),
      I1 => imag_in_V_data_V_0_payload_B(125),
      I2 => imag_in_V_data_V_0_payload_A(112),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(112),
      O => \demod_out_V_data_V_1_payload_A[127]_i_32_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_13_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_14_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[127]_i_15_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[127]_i_16_n_0\,
      O => \demod_out_V_data_V_1_payload_A[127]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_17_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_18_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[127]_i_19_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[127]_i_20_n_0\,
      O => \demod_out_V_data_V_1_payload_A[127]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_21_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_22_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[127]_i_23_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[127]_i_24_n_0\,
      O => \demod_out_V_data_V_1_payload_A[127]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_25_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_26_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[127]_i_27_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[127]_i_28_n_0\,
      O => \demod_out_V_data_V_1_payload_A[127]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[127]_i_29_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[127]_i_30_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[127]_i_31_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[127]_i_32_n_0\,
      O => \demod_out_V_data_V_1_payload_A[127]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[127]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(122),
      I1 => real_in_V_data_V_0_payload_B(122),
      I2 => real_in_V_data_V_0_payload_A(120),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(120),
      O => \demod_out_V_data_V_1_payload_A[127]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[15]_i_5_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[15]_i_4_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[15]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[15]_i_2_n_0\,
      O => tmp_data_V_fu_942_p90
    );
\demod_out_V_data_V_1_payload_A[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[15]_i_4_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[15]_i_5_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[15]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[15]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[15]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(3),
      I1 => real_in_V_data_V_0_payload_B(3),
      I2 => real_in_V_data_V_0_payload_A(13),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(13),
      O => \demod_out_V_data_V_1_payload_A[15]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(14),
      I1 => real_in_V_data_V_0_payload_B(14),
      I2 => real_in_V_data_V_0_payload_A(9),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(9),
      O => \demod_out_V_data_V_1_payload_A[15]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(1),
      I1 => real_in_V_data_V_0_payload_B(1),
      I2 => real_in_V_data_V_0_payload_A(6),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(6),
      O => \demod_out_V_data_V_1_payload_A[15]_i_12_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(0),
      I1 => real_in_V_data_V_0_payload_B(0),
      I2 => real_in_V_data_V_0_payload_A(10),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(10),
      O => \demod_out_V_data_V_1_payload_A[15]_i_13_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(12),
      I1 => real_in_V_data_V_0_payload_B(12),
      I2 => real_in_V_data_V_0_payload_A(11),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(11),
      O => \demod_out_V_data_V_1_payload_A[15]_i_14_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(7),
      I1 => real_in_V_data_V_0_payload_B(7),
      I2 => real_in_V_data_V_0_payload_A(8),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(8),
      O => \demod_out_V_data_V_1_payload_A[15]_i_15_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(1),
      I1 => imag_in_V_data_V_0_payload_B(1),
      I2 => imag_in_V_data_V_0_payload_A(12),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(12),
      O => \demod_out_V_data_V_1_payload_A[15]_i_16_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(9),
      I1 => imag_in_V_data_V_0_payload_B(9),
      I2 => imag_in_V_data_V_0_payload_A(11),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(11),
      O => \demod_out_V_data_V_1_payload_A[15]_i_17_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(8),
      I1 => imag_in_V_data_V_0_payload_B(8),
      I2 => imag_in_V_data_V_0_payload_A(7),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(7),
      O => \demod_out_V_data_V_1_payload_A[15]_i_18_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(0),
      I1 => imag_in_V_data_V_0_payload_B(0),
      I2 => imag_in_V_data_V_0_payload_A(2),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(2),
      O => \demod_out_V_data_V_1_payload_A[15]_i_19_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[15]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[15]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[15]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(15),
      I1 => imag_in_V_data_V_0_payload_B(15),
      I2 => imag_in_V_data_V_0_payload_A(4),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(4),
      O => \demod_out_V_data_V_1_payload_A[15]_i_20_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(13),
      I1 => imag_in_V_data_V_0_payload_B(13),
      I2 => imag_in_V_data_V_0_payload_A(5),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(5),
      O => \demod_out_V_data_V_1_payload_A[15]_i_21_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(6),
      I1 => imag_in_V_data_V_0_payload_B(6),
      I2 => imag_in_V_data_V_0_payload_A(3),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(3),
      O => \demod_out_V_data_V_1_payload_A[15]_i_22_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(10),
      I1 => imag_in_V_data_V_0_payload_B(10),
      I2 => imag_in_V_data_V_0_payload_A(14),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(14),
      O => \demod_out_V_data_V_1_payload_A[15]_i_23_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(1),
      I1 => imag_in_V_data_V_0_payload_B(1),
      I2 => imag_in_V_data_V_0_payload_A(6),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(6),
      O => \demod_out_V_data_V_1_payload_A[15]_i_24_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(0),
      I1 => imag_in_V_data_V_0_payload_B(0),
      I2 => imag_in_V_data_V_0_payload_A(10),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(10),
      O => \demod_out_V_data_V_1_payload_A[15]_i_25_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(12),
      I1 => imag_in_V_data_V_0_payload_B(12),
      I2 => imag_in_V_data_V_0_payload_A(11),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(11),
      O => \demod_out_V_data_V_1_payload_A[15]_i_26_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(7),
      I1 => imag_in_V_data_V_0_payload_B(7),
      I2 => imag_in_V_data_V_0_payload_A(8),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(8),
      O => \demod_out_V_data_V_1_payload_A[15]_i_27_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(2),
      I1 => imag_in_V_data_V_0_payload_B(2),
      I2 => imag_in_V_data_V_0_payload_A(5),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(5),
      O => \demod_out_V_data_V_1_payload_A[15]_i_28_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(15),
      I1 => imag_in_V_data_V_0_payload_B(15),
      I2 => imag_in_V_data_V_0_payload_A(4),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(4),
      O => \demod_out_V_data_V_1_payload_A[15]_i_29_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_12_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_13_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[15]_i_14_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[15]_i_15_n_0\,
      O => \demod_out_V_data_V_1_payload_A[15]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(3),
      I1 => imag_in_V_data_V_0_payload_B(3),
      I2 => imag_in_V_data_V_0_payload_A(13),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(13),
      O => \demod_out_V_data_V_1_payload_A[15]_i_30_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(14),
      I1 => imag_in_V_data_V_0_payload_B(14),
      I2 => imag_in_V_data_V_0_payload_A(9),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(9),
      O => \demod_out_V_data_V_1_payload_A[15]_i_31_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_16_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_17_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[15]_i_18_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[15]_i_19_n_0\,
      O => \demod_out_V_data_V_1_payload_A[15]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_20_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_21_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[15]_i_22_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[15]_i_23_n_0\,
      O => \demod_out_V_data_V_1_payload_A[15]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_24_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_25_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[15]_i_26_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[15]_i_27_n_0\,
      O => \demod_out_V_data_V_1_payload_A[15]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_28_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_29_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[15]_i_30_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[15]_i_31_n_0\,
      O => \demod_out_V_data_V_1_payload_A[15]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(2),
      I1 => real_in_V_data_V_0_payload_B(2),
      I2 => real_in_V_data_V_0_payload_A(5),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(5),
      O => \demod_out_V_data_V_1_payload_A[15]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[15]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(15),
      I1 => real_in_V_data_V_0_payload_B(15),
      I2 => real_in_V_data_V_0_payload_A(4),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(4),
      O => \demod_out_V_data_V_1_payload_A[15]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[23]_i_3_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[23]_i_2_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[31]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[31]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[22]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[23]_i_2_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[23]_i_3_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[31]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[31]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[23]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(29),
      I1 => real_in_V_data_V_0_payload_B(29),
      I2 => real_in_V_data_V_0_payload_A(27),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(27),
      O => \demod_out_V_data_V_1_payload_A[23]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(28),
      I1 => real_in_V_data_V_0_payload_B(28),
      I2 => real_in_V_data_V_0_payload_A(16),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(16),
      O => \demod_out_V_data_V_1_payload_A[23]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[23]_i_4_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[23]_i_5_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[23]_i_6_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[23]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[23]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[23]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[23]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[23]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[23]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[23]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(23),
      I1 => real_in_V_data_V_0_payload_B(23),
      I2 => real_in_V_data_V_0_payload_A(30),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(30),
      O => \demod_out_V_data_V_1_payload_A[23]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(18),
      I1 => real_in_V_data_V_0_payload_B(18),
      I2 => real_in_V_data_V_0_payload_A(17),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(17),
      O => \demod_out_V_data_V_1_payload_A[23]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(26),
      I1 => real_in_V_data_V_0_payload_B(26),
      I2 => real_in_V_data_V_0_payload_A(19),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(19),
      O => \demod_out_V_data_V_1_payload_A[23]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(24),
      I1 => real_in_V_data_V_0_payload_B(24),
      I2 => real_in_V_data_V_0_payload_A(20),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(20),
      O => \demod_out_V_data_V_1_payload_A[23]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(21),
      I1 => real_in_V_data_V_0_payload_B(21),
      I2 => real_in_V_data_V_0_payload_A(25),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(25),
      O => \demod_out_V_data_V_1_payload_A[23]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[23]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(22),
      I1 => real_in_V_data_V_0_payload_B(22),
      I2 => real_in_V_data_V_0_payload_A(31),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(31),
      O => \demod_out_V_data_V_1_payload_A[23]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[31]_i_5_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[31]_i_4_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[31]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[31]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[30]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[31]_i_4_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[31]_i_5_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[31]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[31]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[31]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(25),
      I1 => real_in_V_data_V_0_payload_B(25),
      I2 => real_in_V_data_V_0_payload_A(19),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(19),
      O => \demod_out_V_data_V_1_payload_A[31]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(18),
      I1 => real_in_V_data_V_0_payload_B(18),
      I2 => real_in_V_data_V_0_payload_A(17),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(17),
      O => \demod_out_V_data_V_1_payload_A[31]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(20),
      I1 => real_in_V_data_V_0_payload_B(20),
      I2 => real_in_V_data_V_0_payload_A(29),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(29),
      O => \demod_out_V_data_V_1_payload_A[31]_i_12_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(31),
      I1 => real_in_V_data_V_0_payload_B(31),
      I2 => real_in_V_data_V_0_payload_A(22),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(22),
      O => \demod_out_V_data_V_1_payload_A[31]_i_13_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(30),
      I1 => real_in_V_data_V_0_payload_B(30),
      I2 => real_in_V_data_V_0_payload_A(28),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(28),
      O => \demod_out_V_data_V_1_payload_A[31]_i_14_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(21),
      I1 => real_in_V_data_V_0_payload_B(21),
      I2 => real_in_V_data_V_0_payload_A(23),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(23),
      O => \demod_out_V_data_V_1_payload_A[31]_i_15_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(27),
      I1 => imag_in_V_data_V_0_payload_B(27),
      I2 => imag_in_V_data_V_0_payload_A(28),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(28),
      O => \demod_out_V_data_V_1_payload_A[31]_i_16_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(26),
      I1 => imag_in_V_data_V_0_payload_B(26),
      I2 => imag_in_V_data_V_0_payload_A(22),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(22),
      O => \demod_out_V_data_V_1_payload_A[31]_i_17_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(17),
      I1 => imag_in_V_data_V_0_payload_B(17),
      I2 => imag_in_V_data_V_0_payload_A(20),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(20),
      O => \demod_out_V_data_V_1_payload_A[31]_i_18_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(24),
      I1 => imag_in_V_data_V_0_payload_B(24),
      I2 => imag_in_V_data_V_0_payload_A(23),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(23),
      O => \demod_out_V_data_V_1_payload_A[31]_i_19_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[31]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[31]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[31]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(25),
      I1 => imag_in_V_data_V_0_payload_B(25),
      I2 => imag_in_V_data_V_0_payload_A(16),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(16),
      O => \demod_out_V_data_V_1_payload_A[31]_i_20_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(29),
      I1 => imag_in_V_data_V_0_payload_B(29),
      I2 => imag_in_V_data_V_0_payload_A(19),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(19),
      O => \demod_out_V_data_V_1_payload_A[31]_i_21_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(18),
      I1 => imag_in_V_data_V_0_payload_B(18),
      I2 => imag_in_V_data_V_0_payload_A(31),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(31),
      O => \demod_out_V_data_V_1_payload_A[31]_i_22_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(30),
      I1 => imag_in_V_data_V_0_payload_B(30),
      I2 => imag_in_V_data_V_0_payload_A(21),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(21),
      O => \demod_out_V_data_V_1_payload_A[31]_i_23_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(26),
      I1 => imag_in_V_data_V_0_payload_B(26),
      I2 => imag_in_V_data_V_0_payload_A(22),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(22),
      O => \demod_out_V_data_V_1_payload_A[31]_i_24_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(25),
      I1 => imag_in_V_data_V_0_payload_B(25),
      I2 => imag_in_V_data_V_0_payload_A(18),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(18),
      O => \demod_out_V_data_V_1_payload_A[31]_i_25_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(27),
      I1 => imag_in_V_data_V_0_payload_B(27),
      I2 => imag_in_V_data_V_0_payload_A(24),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(24),
      O => \demod_out_V_data_V_1_payload_A[31]_i_26_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(19),
      I1 => imag_in_V_data_V_0_payload_B(19),
      I2 => imag_in_V_data_V_0_payload_A(17),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(17),
      O => \demod_out_V_data_V_1_payload_A[31]_i_27_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(20),
      I1 => imag_in_V_data_V_0_payload_B(20),
      I2 => imag_in_V_data_V_0_payload_A(30),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(30),
      O => \demod_out_V_data_V_1_payload_A[31]_i_28_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(28),
      I1 => imag_in_V_data_V_0_payload_B(28),
      I2 => imag_in_V_data_V_0_payload_A(31),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(31),
      O => \demod_out_V_data_V_1_payload_A[31]_i_29_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_12_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_13_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[31]_i_14_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[31]_i_15_n_0\,
      O => \demod_out_V_data_V_1_payload_A[31]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(23),
      I1 => imag_in_V_data_V_0_payload_B(23),
      I2 => imag_in_V_data_V_0_payload_A(21),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(21),
      O => \demod_out_V_data_V_1_payload_A[31]_i_30_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(29),
      I1 => imag_in_V_data_V_0_payload_B(29),
      I2 => imag_in_V_data_V_0_payload_A(16),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(16),
      O => \demod_out_V_data_V_1_payload_A[31]_i_31_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_16_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_17_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[31]_i_18_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[31]_i_19_n_0\,
      O => \demod_out_V_data_V_1_payload_A[31]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_20_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_21_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[31]_i_22_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[31]_i_23_n_0\,
      O => \demod_out_V_data_V_1_payload_A[31]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_24_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_25_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[31]_i_26_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[31]_i_27_n_0\,
      O => \demod_out_V_data_V_1_payload_A[31]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[31]_i_28_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[31]_i_29_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[31]_i_30_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[31]_i_31_n_0\,
      O => \demod_out_V_data_V_1_payload_A[31]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(26),
      I1 => real_in_V_data_V_0_payload_B(26),
      I2 => real_in_V_data_V_0_payload_A(24),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(24),
      O => \demod_out_V_data_V_1_payload_A[31]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(27),
      I1 => real_in_V_data_V_0_payload_B(27),
      I2 => real_in_V_data_V_0_payload_A(16),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(16),
      O => \demod_out_V_data_V_1_payload_A[31]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[39]_i_3_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[39]_i_2_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[47]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[47]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[38]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[39]_i_2_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[39]_i_3_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[47]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[47]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[39]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(43),
      I1 => real_in_V_data_V_0_payload_B(43),
      I2 => real_in_V_data_V_0_payload_A(39),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(39),
      O => \demod_out_V_data_V_1_payload_A[39]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(38),
      I1 => real_in_V_data_V_0_payload_B(38),
      I2 => real_in_V_data_V_0_payload_A(35),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(35),
      O => \demod_out_V_data_V_1_payload_A[39]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[39]_i_4_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[39]_i_5_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[39]_i_6_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[39]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[39]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[39]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[39]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[39]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[39]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[39]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(36),
      I1 => real_in_V_data_V_0_payload_B(36),
      I2 => real_in_V_data_V_0_payload_A(44),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(44),
      O => \demod_out_V_data_V_1_payload_A[39]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(46),
      I1 => real_in_V_data_V_0_payload_B(46),
      I2 => real_in_V_data_V_0_payload_A(45),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(45),
      O => \demod_out_V_data_V_1_payload_A[39]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(42),
      I1 => real_in_V_data_V_0_payload_B(42),
      I2 => real_in_V_data_V_0_payload_A(34),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(34),
      O => \demod_out_V_data_V_1_payload_A[39]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(40),
      I1 => real_in_V_data_V_0_payload_B(40),
      I2 => real_in_V_data_V_0_payload_A(33),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(33),
      O => \demod_out_V_data_V_1_payload_A[39]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(47),
      I1 => real_in_V_data_V_0_payload_B(47),
      I2 => real_in_V_data_V_0_payload_A(41),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(41),
      O => \demod_out_V_data_V_1_payload_A[39]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[39]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(37),
      I1 => real_in_V_data_V_0_payload_B(37),
      I2 => real_in_V_data_V_0_payload_A(32),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(32),
      O => \demod_out_V_data_V_1_payload_A[39]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[47]_i_5_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[47]_i_4_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[47]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[47]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[46]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[47]_i_4_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[47]_i_5_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[47]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[47]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[47]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(41),
      I1 => real_in_V_data_V_0_payload_B(41),
      I2 => real_in_V_data_V_0_payload_A(35),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(35),
      O => \demod_out_V_data_V_1_payload_A[47]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(34),
      I1 => real_in_V_data_V_0_payload_B(34),
      I2 => real_in_V_data_V_0_payload_A(33),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(33),
      O => \demod_out_V_data_V_1_payload_A[47]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(36),
      I1 => real_in_V_data_V_0_payload_B(36),
      I2 => real_in_V_data_V_0_payload_A(45),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(45),
      O => \demod_out_V_data_V_1_payload_A[47]_i_12_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(47),
      I1 => real_in_V_data_V_0_payload_B(47),
      I2 => real_in_V_data_V_0_payload_A(38),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(38),
      O => \demod_out_V_data_V_1_payload_A[47]_i_13_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(46),
      I1 => real_in_V_data_V_0_payload_B(46),
      I2 => real_in_V_data_V_0_payload_A(44),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(44),
      O => \demod_out_V_data_V_1_payload_A[47]_i_14_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(37),
      I1 => real_in_V_data_V_0_payload_B(37),
      I2 => real_in_V_data_V_0_payload_A(39),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(39),
      O => \demod_out_V_data_V_1_payload_A[47]_i_15_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(43),
      I1 => imag_in_V_data_V_0_payload_B(43),
      I2 => imag_in_V_data_V_0_payload_A(44),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(44),
      O => \demod_out_V_data_V_1_payload_A[47]_i_16_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(42),
      I1 => imag_in_V_data_V_0_payload_B(42),
      I2 => imag_in_V_data_V_0_payload_A(38),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(38),
      O => \demod_out_V_data_V_1_payload_A[47]_i_17_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(33),
      I1 => imag_in_V_data_V_0_payload_B(33),
      I2 => imag_in_V_data_V_0_payload_A(36),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(36),
      O => \demod_out_V_data_V_1_payload_A[47]_i_18_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(40),
      I1 => imag_in_V_data_V_0_payload_B(40),
      I2 => imag_in_V_data_V_0_payload_A(39),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(39),
      O => \demod_out_V_data_V_1_payload_A[47]_i_19_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[47]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[47]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[47]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(41),
      I1 => imag_in_V_data_V_0_payload_B(41),
      I2 => imag_in_V_data_V_0_payload_A(32),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(32),
      O => \demod_out_V_data_V_1_payload_A[47]_i_20_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(45),
      I1 => imag_in_V_data_V_0_payload_B(45),
      I2 => imag_in_V_data_V_0_payload_A(35),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(35),
      O => \demod_out_V_data_V_1_payload_A[47]_i_21_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(34),
      I1 => imag_in_V_data_V_0_payload_B(34),
      I2 => imag_in_V_data_V_0_payload_A(47),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(47),
      O => \demod_out_V_data_V_1_payload_A[47]_i_22_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(46),
      I1 => imag_in_V_data_V_0_payload_B(46),
      I2 => imag_in_V_data_V_0_payload_A(37),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(37),
      O => \demod_out_V_data_V_1_payload_A[47]_i_23_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(42),
      I1 => imag_in_V_data_V_0_payload_B(42),
      I2 => imag_in_V_data_V_0_payload_A(38),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(38),
      O => \demod_out_V_data_V_1_payload_A[47]_i_24_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(41),
      I1 => imag_in_V_data_V_0_payload_B(41),
      I2 => imag_in_V_data_V_0_payload_A(34),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(34),
      O => \demod_out_V_data_V_1_payload_A[47]_i_25_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(43),
      I1 => imag_in_V_data_V_0_payload_B(43),
      I2 => imag_in_V_data_V_0_payload_A(40),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(40),
      O => \demod_out_V_data_V_1_payload_A[47]_i_26_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(35),
      I1 => imag_in_V_data_V_0_payload_B(35),
      I2 => imag_in_V_data_V_0_payload_A(33),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(33),
      O => \demod_out_V_data_V_1_payload_A[47]_i_27_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(36),
      I1 => imag_in_V_data_V_0_payload_B(36),
      I2 => imag_in_V_data_V_0_payload_A(46),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(46),
      O => \demod_out_V_data_V_1_payload_A[47]_i_28_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(44),
      I1 => imag_in_V_data_V_0_payload_B(44),
      I2 => imag_in_V_data_V_0_payload_A(47),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(47),
      O => \demod_out_V_data_V_1_payload_A[47]_i_29_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_12_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_13_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[47]_i_14_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[47]_i_15_n_0\,
      O => \demod_out_V_data_V_1_payload_A[47]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(39),
      I1 => imag_in_V_data_V_0_payload_B(39),
      I2 => imag_in_V_data_V_0_payload_A(37),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(37),
      O => \demod_out_V_data_V_1_payload_A[47]_i_30_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(45),
      I1 => imag_in_V_data_V_0_payload_B(45),
      I2 => imag_in_V_data_V_0_payload_A(32),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(32),
      O => \demod_out_V_data_V_1_payload_A[47]_i_31_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_16_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_17_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[47]_i_18_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[47]_i_19_n_0\,
      O => \demod_out_V_data_V_1_payload_A[47]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_20_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_21_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[47]_i_22_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[47]_i_23_n_0\,
      O => \demod_out_V_data_V_1_payload_A[47]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_24_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_25_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[47]_i_26_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[47]_i_27_n_0\,
      O => \demod_out_V_data_V_1_payload_A[47]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[47]_i_28_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[47]_i_29_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[47]_i_30_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[47]_i_31_n_0\,
      O => \demod_out_V_data_V_1_payload_A[47]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(42),
      I1 => real_in_V_data_V_0_payload_B(42),
      I2 => real_in_V_data_V_0_payload_A(40),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(40),
      O => \demod_out_V_data_V_1_payload_A[47]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[47]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(43),
      I1 => real_in_V_data_V_0_payload_B(43),
      I2 => real_in_V_data_V_0_payload_A(32),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(32),
      O => \demod_out_V_data_V_1_payload_A[47]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[55]_i_3_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[55]_i_2_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[63]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[63]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[54]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[55]_i_2_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[55]_i_3_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[63]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[63]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[55]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(58),
      I1 => real_in_V_data_V_0_payload_B(58),
      I2 => real_in_V_data_V_0_payload_A(63),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(63),
      O => \demod_out_V_data_V_1_payload_A[55]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(59),
      I1 => real_in_V_data_V_0_payload_B(59),
      I2 => real_in_V_data_V_0_payload_A(50),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(50),
      O => \demod_out_V_data_V_1_payload_A[55]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[55]_i_4_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[55]_i_5_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[55]_i_6_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[55]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[55]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[55]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[55]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[55]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[55]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[55]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(49),
      I1 => real_in_V_data_V_0_payload_B(49),
      I2 => real_in_V_data_V_0_payload_A(57),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(57),
      O => \demod_out_V_data_V_1_payload_A[55]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(53),
      I1 => real_in_V_data_V_0_payload_B(53),
      I2 => real_in_V_data_V_0_payload_A(48),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(48),
      O => \demod_out_V_data_V_1_payload_A[55]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(62),
      I1 => real_in_V_data_V_0_payload_B(62),
      I2 => real_in_V_data_V_0_payload_A(60),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(60),
      O => \demod_out_V_data_V_1_payload_A[55]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(52),
      I1 => real_in_V_data_V_0_payload_B(52),
      I2 => real_in_V_data_V_0_payload_A(55),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(55),
      O => \demod_out_V_data_V_1_payload_A[55]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(54),
      I1 => real_in_V_data_V_0_payload_B(54),
      I2 => real_in_V_data_V_0_payload_A(51),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(51),
      O => \demod_out_V_data_V_1_payload_A[55]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[55]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(61),
      I1 => real_in_V_data_V_0_payload_B(61),
      I2 => real_in_V_data_V_0_payload_A(56),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(56),
      O => \demod_out_V_data_V_1_payload_A[55]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[63]_i_5_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[63]_i_4_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[63]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[63]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[62]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[63]_i_4_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[63]_i_5_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[63]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[63]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[63]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(57),
      I1 => real_in_V_data_V_0_payload_B(57),
      I2 => real_in_V_data_V_0_payload_A(51),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(51),
      O => \demod_out_V_data_V_1_payload_A[63]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(50),
      I1 => real_in_V_data_V_0_payload_B(50),
      I2 => real_in_V_data_V_0_payload_A(49),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(49),
      O => \demod_out_V_data_V_1_payload_A[63]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(52),
      I1 => real_in_V_data_V_0_payload_B(52),
      I2 => real_in_V_data_V_0_payload_A(61),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(61),
      O => \demod_out_V_data_V_1_payload_A[63]_i_12_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(63),
      I1 => real_in_V_data_V_0_payload_B(63),
      I2 => real_in_V_data_V_0_payload_A(54),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(54),
      O => \demod_out_V_data_V_1_payload_A[63]_i_13_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(62),
      I1 => real_in_V_data_V_0_payload_B(62),
      I2 => real_in_V_data_V_0_payload_A(60),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(60),
      O => \demod_out_V_data_V_1_payload_A[63]_i_14_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(53),
      I1 => real_in_V_data_V_0_payload_B(53),
      I2 => real_in_V_data_V_0_payload_A(55),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(55),
      O => \demod_out_V_data_V_1_payload_A[63]_i_15_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(59),
      I1 => imag_in_V_data_V_0_payload_B(59),
      I2 => imag_in_V_data_V_0_payload_A(60),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(60),
      O => \demod_out_V_data_V_1_payload_A[63]_i_16_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(58),
      I1 => imag_in_V_data_V_0_payload_B(58),
      I2 => imag_in_V_data_V_0_payload_A(54),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(54),
      O => \demod_out_V_data_V_1_payload_A[63]_i_17_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(49),
      I1 => imag_in_V_data_V_0_payload_B(49),
      I2 => imag_in_V_data_V_0_payload_A(52),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(52),
      O => \demod_out_V_data_V_1_payload_A[63]_i_18_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(56),
      I1 => imag_in_V_data_V_0_payload_B(56),
      I2 => imag_in_V_data_V_0_payload_A(55),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(55),
      O => \demod_out_V_data_V_1_payload_A[63]_i_19_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[63]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[63]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[63]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(57),
      I1 => imag_in_V_data_V_0_payload_B(57),
      I2 => imag_in_V_data_V_0_payload_A(48),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(48),
      O => \demod_out_V_data_V_1_payload_A[63]_i_20_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(61),
      I1 => imag_in_V_data_V_0_payload_B(61),
      I2 => imag_in_V_data_V_0_payload_A(51),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(51),
      O => \demod_out_V_data_V_1_payload_A[63]_i_21_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(50),
      I1 => imag_in_V_data_V_0_payload_B(50),
      I2 => imag_in_V_data_V_0_payload_A(63),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(63),
      O => \demod_out_V_data_V_1_payload_A[63]_i_22_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(62),
      I1 => imag_in_V_data_V_0_payload_B(62),
      I2 => imag_in_V_data_V_0_payload_A(53),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(53),
      O => \demod_out_V_data_V_1_payload_A[63]_i_23_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(58),
      I1 => imag_in_V_data_V_0_payload_B(58),
      I2 => imag_in_V_data_V_0_payload_A(54),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(54),
      O => \demod_out_V_data_V_1_payload_A[63]_i_24_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(57),
      I1 => imag_in_V_data_V_0_payload_B(57),
      I2 => imag_in_V_data_V_0_payload_A(50),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(50),
      O => \demod_out_V_data_V_1_payload_A[63]_i_25_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(59),
      I1 => imag_in_V_data_V_0_payload_B(59),
      I2 => imag_in_V_data_V_0_payload_A(56),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(56),
      O => \demod_out_V_data_V_1_payload_A[63]_i_26_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(51),
      I1 => imag_in_V_data_V_0_payload_B(51),
      I2 => imag_in_V_data_V_0_payload_A(49),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(49),
      O => \demod_out_V_data_V_1_payload_A[63]_i_27_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(52),
      I1 => imag_in_V_data_V_0_payload_B(52),
      I2 => imag_in_V_data_V_0_payload_A(62),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(62),
      O => \demod_out_V_data_V_1_payload_A[63]_i_28_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(60),
      I1 => imag_in_V_data_V_0_payload_B(60),
      I2 => imag_in_V_data_V_0_payload_A(63),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(63),
      O => \demod_out_V_data_V_1_payload_A[63]_i_29_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_12_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_13_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[63]_i_14_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[63]_i_15_n_0\,
      O => \demod_out_V_data_V_1_payload_A[63]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(55),
      I1 => imag_in_V_data_V_0_payload_B(55),
      I2 => imag_in_V_data_V_0_payload_A(53),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(53),
      O => \demod_out_V_data_V_1_payload_A[63]_i_30_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(61),
      I1 => imag_in_V_data_V_0_payload_B(61),
      I2 => imag_in_V_data_V_0_payload_A(48),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(48),
      O => \demod_out_V_data_V_1_payload_A[63]_i_31_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_16_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_17_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[63]_i_18_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[63]_i_19_n_0\,
      O => \demod_out_V_data_V_1_payload_A[63]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_20_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_21_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[63]_i_22_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[63]_i_23_n_0\,
      O => \demod_out_V_data_V_1_payload_A[63]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_24_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_25_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[63]_i_26_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[63]_i_27_n_0\,
      O => \demod_out_V_data_V_1_payload_A[63]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[63]_i_28_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[63]_i_29_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[63]_i_30_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[63]_i_31_n_0\,
      O => \demod_out_V_data_V_1_payload_A[63]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(58),
      I1 => real_in_V_data_V_0_payload_B(58),
      I2 => real_in_V_data_V_0_payload_A(56),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(56),
      O => \demod_out_V_data_V_1_payload_A[63]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[63]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(59),
      I1 => real_in_V_data_V_0_payload_B(59),
      I2 => real_in_V_data_V_0_payload_A(48),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(48),
      O => \demod_out_V_data_V_1_payload_A[63]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[7]_i_3_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[7]_i_2_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[15]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[15]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[6]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[70]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[71]_i_3_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[71]_i_2_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[79]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[79]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[70]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[71]_i_2_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[71]_i_3_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[79]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[79]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[71]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(77),
      I1 => real_in_V_data_V_0_payload_B(77),
      I2 => real_in_V_data_V_0_payload_A(68),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(68),
      O => \demod_out_V_data_V_1_payload_A[71]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(70),
      I1 => real_in_V_data_V_0_payload_B(70),
      I2 => real_in_V_data_V_0_payload_A(72),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(72),
      O => \demod_out_V_data_V_1_payload_A[71]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[71]_i_4_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[71]_i_5_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[71]_i_6_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[71]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[71]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[71]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[71]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[71]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[71]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[71]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(71),
      I1 => real_in_V_data_V_0_payload_B(71),
      I2 => real_in_V_data_V_0_payload_A(65),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(65),
      O => \demod_out_V_data_V_1_payload_A[71]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(76),
      I1 => real_in_V_data_V_0_payload_B(76),
      I2 => real_in_V_data_V_0_payload_A(73),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(73),
      O => \demod_out_V_data_V_1_payload_A[71]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(74),
      I1 => real_in_V_data_V_0_payload_B(74),
      I2 => real_in_V_data_V_0_payload_A(66),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(66),
      O => \demod_out_V_data_V_1_payload_A[71]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(75),
      I1 => real_in_V_data_V_0_payload_B(75),
      I2 => real_in_V_data_V_0_payload_A(78),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(78),
      O => \demod_out_V_data_V_1_payload_A[71]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(69),
      I1 => real_in_V_data_V_0_payload_B(69),
      I2 => real_in_V_data_V_0_payload_A(79),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(79),
      O => \demod_out_V_data_V_1_payload_A[71]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[71]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(67),
      I1 => real_in_V_data_V_0_payload_B(67),
      I2 => real_in_V_data_V_0_payload_A(64),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(64),
      O => \demod_out_V_data_V_1_payload_A[71]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[78]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[79]_i_5_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[79]_i_4_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[79]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[79]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[78]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[79]_i_4_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[79]_i_5_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[79]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[79]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[79]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(78),
      I1 => real_in_V_data_V_0_payload_B(78),
      I2 => real_in_V_data_V_0_payload_A(75),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(75),
      O => \demod_out_V_data_V_1_payload_A[79]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(73),
      I1 => real_in_V_data_V_0_payload_B(73),
      I2 => real_in_V_data_V_0_payload_A(79),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(79),
      O => \demod_out_V_data_V_1_payload_A[79]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(76),
      I1 => real_in_V_data_V_0_payload_B(76),
      I2 => real_in_V_data_V_0_payload_A(70),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(70),
      O => \demod_out_V_data_V_1_payload_A[79]_i_12_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(71),
      I1 => real_in_V_data_V_0_payload_B(71),
      I2 => real_in_V_data_V_0_payload_A(77),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(77),
      O => \demod_out_V_data_V_1_payload_A[79]_i_13_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(65),
      I1 => real_in_V_data_V_0_payload_B(65),
      I2 => real_in_V_data_V_0_payload_A(66),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(66),
      O => \demod_out_V_data_V_1_payload_A[79]_i_14_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(68),
      I1 => real_in_V_data_V_0_payload_B(68),
      I2 => real_in_V_data_V_0_payload_A(67),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(67),
      O => \demod_out_V_data_V_1_payload_A[79]_i_15_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(77),
      I1 => imag_in_V_data_V_0_payload_B(77),
      I2 => imag_in_V_data_V_0_payload_A(79),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(79),
      O => \demod_out_V_data_V_1_payload_A[79]_i_16_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(69),
      I1 => imag_in_V_data_V_0_payload_B(69),
      I2 => imag_in_V_data_V_0_payload_A(75),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(75),
      O => \demod_out_V_data_V_1_payload_A[79]_i_17_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(70),
      I1 => imag_in_V_data_V_0_payload_B(70),
      I2 => imag_in_V_data_V_0_payload_A(74),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(74),
      O => \demod_out_V_data_V_1_payload_A[79]_i_18_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(68),
      I1 => imag_in_V_data_V_0_payload_B(68),
      I2 => imag_in_V_data_V_0_payload_A(73),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(73),
      O => \demod_out_V_data_V_1_payload_A[79]_i_19_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[79]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[79]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[79]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(76),
      I1 => imag_in_V_data_V_0_payload_B(76),
      I2 => imag_in_V_data_V_0_payload_A(65),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(65),
      O => \demod_out_V_data_V_1_payload_A[79]_i_20_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(66),
      I1 => imag_in_V_data_V_0_payload_B(66),
      I2 => imag_in_V_data_V_0_payload_A(64),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(64),
      O => \demod_out_V_data_V_1_payload_A[79]_i_21_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(67),
      I1 => imag_in_V_data_V_0_payload_B(67),
      I2 => imag_in_V_data_V_0_payload_A(78),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(78),
      O => \demod_out_V_data_V_1_payload_A[79]_i_22_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(72),
      I1 => imag_in_V_data_V_0_payload_B(72),
      I2 => imag_in_V_data_V_0_payload_A(71),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(71),
      O => \demod_out_V_data_V_1_payload_A[79]_i_23_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(76),
      I1 => imag_in_V_data_V_0_payload_B(76),
      I2 => imag_in_V_data_V_0_payload_A(70),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(70),
      O => \demod_out_V_data_V_1_payload_A[79]_i_24_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(71),
      I1 => imag_in_V_data_V_0_payload_B(71),
      I2 => imag_in_V_data_V_0_payload_A(77),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(77),
      O => \demod_out_V_data_V_1_payload_A[79]_i_25_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(65),
      I1 => imag_in_V_data_V_0_payload_B(65),
      I2 => imag_in_V_data_V_0_payload_A(66),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(66),
      O => \demod_out_V_data_V_1_payload_A[79]_i_26_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(68),
      I1 => imag_in_V_data_V_0_payload_B(68),
      I2 => imag_in_V_data_V_0_payload_A(67),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(67),
      O => \demod_out_V_data_V_1_payload_A[79]_i_27_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(69),
      I1 => imag_in_V_data_V_0_payload_B(69),
      I2 => imag_in_V_data_V_0_payload_A(72),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(72),
      O => \demod_out_V_data_V_1_payload_A[79]_i_28_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(64),
      I1 => imag_in_V_data_V_0_payload_B(64),
      I2 => imag_in_V_data_V_0_payload_A(74),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(74),
      O => \demod_out_V_data_V_1_payload_A[79]_i_29_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_12_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_13_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[79]_i_14_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[79]_i_15_n_0\,
      O => \demod_out_V_data_V_1_payload_A[79]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(78),
      I1 => imag_in_V_data_V_0_payload_B(78),
      I2 => imag_in_V_data_V_0_payload_A(75),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(75),
      O => \demod_out_V_data_V_1_payload_A[79]_i_30_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(73),
      I1 => imag_in_V_data_V_0_payload_B(73),
      I2 => imag_in_V_data_V_0_payload_A(79),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(79),
      O => \demod_out_V_data_V_1_payload_A[79]_i_31_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_16_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_17_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[79]_i_18_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[79]_i_19_n_0\,
      O => \demod_out_V_data_V_1_payload_A[79]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_20_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_21_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[79]_i_22_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[79]_i_23_n_0\,
      O => \demod_out_V_data_V_1_payload_A[79]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_24_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_25_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[79]_i_26_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[79]_i_27_n_0\,
      O => \demod_out_V_data_V_1_payload_A[79]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[79]_i_28_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[79]_i_29_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[79]_i_30_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[79]_i_31_n_0\,
      O => \demod_out_V_data_V_1_payload_A[79]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(69),
      I1 => real_in_V_data_V_0_payload_B(69),
      I2 => real_in_V_data_V_0_payload_A(72),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(72),
      O => \demod_out_V_data_V_1_payload_A[79]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[79]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(64),
      I1 => real_in_V_data_V_0_payload_B(64),
      I2 => real_in_V_data_V_0_payload_A(74),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(74),
      O => \demod_out_V_data_V_1_payload_A[79]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[15]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[15]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[7]_i_2_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[7]_i_3_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[15]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[15]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[7]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(15),
      I1 => real_in_V_data_V_0_payload_B(15),
      I2 => real_in_V_data_V_0_payload_A(4),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(4),
      O => \demod_out_V_data_V_1_payload_A[7]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(6),
      I1 => real_in_V_data_V_0_payload_B(6),
      I2 => real_in_V_data_V_0_payload_A(2),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(2),
      O => \demod_out_V_data_V_1_payload_A[7]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[7]_i_4_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[7]_i_5_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[7]_i_6_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[7]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[7]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[7]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[7]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[7]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[7]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[7]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(0),
      I1 => real_in_V_data_V_0_payload_B(0),
      I2 => real_in_V_data_V_0_payload_A(12),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(12),
      O => \demod_out_V_data_V_1_payload_A[7]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(9),
      I1 => real_in_V_data_V_0_payload_B(9),
      I2 => real_in_V_data_V_0_payload_A(11),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(11),
      O => \demod_out_V_data_V_1_payload_A[7]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(13),
      I1 => real_in_V_data_V_0_payload_B(13),
      I2 => real_in_V_data_V_0_payload_A(14),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(14),
      O => \demod_out_V_data_V_1_payload_A[7]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(10),
      I1 => real_in_V_data_V_0_payload_B(10),
      I2 => real_in_V_data_V_0_payload_A(8),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(8),
      O => \demod_out_V_data_V_1_payload_A[7]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(7),
      I1 => real_in_V_data_V_0_payload_B(7),
      I2 => real_in_V_data_V_0_payload_A(5),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(5),
      O => \demod_out_V_data_V_1_payload_A[7]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(1),
      I1 => real_in_V_data_V_0_payload_B(1),
      I2 => real_in_V_data_V_0_payload_A(3),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(3),
      O => \demod_out_V_data_V_1_payload_A[7]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[86]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[87]_i_3_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[87]_i_2_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[95]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[95]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[86]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[87]_i_2_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[87]_i_3_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[95]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[95]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[87]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(86),
      I1 => real_in_V_data_V_0_payload_B(86),
      I2 => real_in_V_data_V_0_payload_A(95),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(95),
      O => \demod_out_V_data_V_1_payload_A[87]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(80),
      I1 => real_in_V_data_V_0_payload_B(80),
      I2 => real_in_V_data_V_0_payload_A(89),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(89),
      O => \demod_out_V_data_V_1_payload_A[87]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[87]_i_4_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[87]_i_5_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[87]_i_6_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[87]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[87]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[87]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[87]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[87]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[87]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[87]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(92),
      I1 => real_in_V_data_V_0_payload_B(92),
      I2 => real_in_V_data_V_0_payload_A(83),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(83),
      O => \demod_out_V_data_V_1_payload_A[87]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(94),
      I1 => real_in_V_data_V_0_payload_B(94),
      I2 => real_in_V_data_V_0_payload_A(91),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(91),
      O => \demod_out_V_data_V_1_payload_A[87]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(93),
      I1 => real_in_V_data_V_0_payload_B(93),
      I2 => real_in_V_data_V_0_payload_A(90),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(90),
      O => \demod_out_V_data_V_1_payload_A[87]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(88),
      I1 => real_in_V_data_V_0_payload_B(88),
      I2 => real_in_V_data_V_0_payload_A(85),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(85),
      O => \demod_out_V_data_V_1_payload_A[87]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(87),
      I1 => real_in_V_data_V_0_payload_B(87),
      I2 => real_in_V_data_V_0_payload_A(82),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(82),
      O => \demod_out_V_data_V_1_payload_A[87]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[87]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(84),
      I1 => real_in_V_data_V_0_payload_B(84),
      I2 => real_in_V_data_V_0_payload_A(81),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(81),
      O => \demod_out_V_data_V_1_payload_A[87]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A[94]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE0EE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_7_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_6_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[95]_i_5_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[95]_i_4_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[95]_i_3_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[95]_i_2_n_0\,
      O => \demod_out_V_data_V_1_payload_A[94]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000101111"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_2_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_3_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[95]_i_4_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[95]_i_5_n_0\,
      I4 => \demod_out_V_data_V_1_payload_A[95]_i_6_n_0\,
      I5 => \demod_out_V_data_V_1_payload_A[95]_i_7_n_0\,
      O => \demod_out_V_data_V_1_payload_A[95]_i_1_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(94),
      I1 => real_in_V_data_V_0_payload_B(94),
      I2 => real_in_V_data_V_0_payload_A(91),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(91),
      O => \demod_out_V_data_V_1_payload_A[95]_i_10_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(89),
      I1 => real_in_V_data_V_0_payload_B(89),
      I2 => real_in_V_data_V_0_payload_A(95),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(95),
      O => \demod_out_V_data_V_1_payload_A[95]_i_11_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(92),
      I1 => real_in_V_data_V_0_payload_B(92),
      I2 => real_in_V_data_V_0_payload_A(86),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(86),
      O => \demod_out_V_data_V_1_payload_A[95]_i_12_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(87),
      I1 => real_in_V_data_V_0_payload_B(87),
      I2 => real_in_V_data_V_0_payload_A(93),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(93),
      O => \demod_out_V_data_V_1_payload_A[95]_i_13_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(81),
      I1 => real_in_V_data_V_0_payload_B(81),
      I2 => real_in_V_data_V_0_payload_A(82),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(82),
      O => \demod_out_V_data_V_1_payload_A[95]_i_14_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(84),
      I1 => real_in_V_data_V_0_payload_B(84),
      I2 => real_in_V_data_V_0_payload_A(83),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(83),
      O => \demod_out_V_data_V_1_payload_A[95]_i_15_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(92),
      I1 => imag_in_V_data_V_0_payload_B(92),
      I2 => imag_in_V_data_V_0_payload_A(95),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(95),
      O => \demod_out_V_data_V_1_payload_A[95]_i_16_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(82),
      I1 => imag_in_V_data_V_0_payload_B(82),
      I2 => imag_in_V_data_V_0_payload_A(85),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(85),
      O => \demod_out_V_data_V_1_payload_A[95]_i_17_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(91),
      I1 => imag_in_V_data_V_0_payload_B(91),
      I2 => imag_in_V_data_V_0_payload_A(80),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(80),
      O => \demod_out_V_data_V_1_payload_A[95]_i_18_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(84),
      I1 => imag_in_V_data_V_0_payload_B(84),
      I2 => imag_in_V_data_V_0_payload_A(89),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(89),
      O => \demod_out_V_data_V_1_payload_A[95]_i_19_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_8_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_9_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[95]_i_10_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[95]_i_11_n_0\,
      O => \demod_out_V_data_V_1_payload_A[95]_i_2_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(93),
      I1 => imag_in_V_data_V_0_payload_B(93),
      I2 => imag_in_V_data_V_0_payload_A(81),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(81),
      O => \demod_out_V_data_V_1_payload_A[95]_i_20_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(86),
      I1 => imag_in_V_data_V_0_payload_B(86),
      I2 => imag_in_V_data_V_0_payload_A(90),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(90),
      O => \demod_out_V_data_V_1_payload_A[95]_i_21_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(88),
      I1 => imag_in_V_data_V_0_payload_B(88),
      I2 => imag_in_V_data_V_0_payload_A(83),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(83),
      O => \demod_out_V_data_V_1_payload_A[95]_i_22_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(87),
      I1 => imag_in_V_data_V_0_payload_B(87),
      I2 => imag_in_V_data_V_0_payload_A(94),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(94),
      O => \demod_out_V_data_V_1_payload_A[95]_i_23_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(92),
      I1 => imag_in_V_data_V_0_payload_B(92),
      I2 => imag_in_V_data_V_0_payload_A(86),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(86),
      O => \demod_out_V_data_V_1_payload_A[95]_i_24_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(87),
      I1 => imag_in_V_data_V_0_payload_B(87),
      I2 => imag_in_V_data_V_0_payload_A(93),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(93),
      O => \demod_out_V_data_V_1_payload_A[95]_i_25_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(81),
      I1 => imag_in_V_data_V_0_payload_B(81),
      I2 => imag_in_V_data_V_0_payload_A(82),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(82),
      O => \demod_out_V_data_V_1_payload_A[95]_i_26_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(84),
      I1 => imag_in_V_data_V_0_payload_B(84),
      I2 => imag_in_V_data_V_0_payload_A(83),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(83),
      O => \demod_out_V_data_V_1_payload_A[95]_i_27_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(85),
      I1 => imag_in_V_data_V_0_payload_B(85),
      I2 => imag_in_V_data_V_0_payload_A(88),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(88),
      O => \demod_out_V_data_V_1_payload_A[95]_i_28_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(80),
      I1 => imag_in_V_data_V_0_payload_B(80),
      I2 => imag_in_V_data_V_0_payload_A(90),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(90),
      O => \demod_out_V_data_V_1_payload_A[95]_i_29_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_12_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_13_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[95]_i_14_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[95]_i_15_n_0\,
      O => \demod_out_V_data_V_1_payload_A[95]_i_3_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(94),
      I1 => imag_in_V_data_V_0_payload_B(94),
      I2 => imag_in_V_data_V_0_payload_A(91),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(91),
      O => \demod_out_V_data_V_1_payload_A[95]_i_30_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => imag_in_V_data_V_0_payload_A(89),
      I1 => imag_in_V_data_V_0_payload_B(89),
      I2 => imag_in_V_data_V_0_payload_A(95),
      I3 => imag_in_V_data_V_0_sel,
      I4 => imag_in_V_data_V_0_payload_B(95),
      O => \demod_out_V_data_V_1_payload_A[95]_i_31_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_16_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_17_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[95]_i_18_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[95]_i_19_n_0\,
      O => \demod_out_V_data_V_1_payload_A[95]_i_4_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_20_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_21_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[95]_i_22_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[95]_i_23_n_0\,
      O => \demod_out_V_data_V_1_payload_A[95]_i_5_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_24_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_25_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[95]_i_26_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[95]_i_27_n_0\,
      O => \demod_out_V_data_V_1_payload_A[95]_i_6_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \demod_out_V_data_V_1_payload_A[95]_i_28_n_0\,
      I1 => \demod_out_V_data_V_1_payload_A[95]_i_29_n_0\,
      I2 => \demod_out_V_data_V_1_payload_A[95]_i_30_n_0\,
      I3 => \demod_out_V_data_V_1_payload_A[95]_i_31_n_0\,
      O => \demod_out_V_data_V_1_payload_A[95]_i_7_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(85),
      I1 => real_in_V_data_V_0_payload_B(85),
      I2 => real_in_V_data_V_0_payload_A(88),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(88),
      O => \demod_out_V_data_V_1_payload_A[95]_i_8_n_0\
    );
\demod_out_V_data_V_1_payload_A[95]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => real_in_V_data_V_0_payload_A(80),
      I1 => real_in_V_data_V_0_payload_B(80),
      I2 => real_in_V_data_V_0_payload_A(90),
      I3 => real_in_V_data_V_0_sel,
      I4 => real_in_V_data_V_0_payload_B(90),
      O => \demod_out_V_data_V_1_payload_A[95]_i_9_n_0\
    );
\demod_out_V_data_V_1_payload_A_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[102]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(102),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[103]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(103),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[110]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(110),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[111]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(111),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[118]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(118),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[119]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(119),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[126]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(126),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[127]_i_2_n_0\,
      Q => demod_out_V_data_V_1_payload_A(127),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => tmp_data_V_fu_942_p90,
      Q => demod_out_V_data_V_1_payload_A(14),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[15]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(15),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[22]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(22),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[23]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(23),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[30]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(30),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[31]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(31),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[38]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(38),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[39]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(39),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[46]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(46),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[47]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(47),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[54]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(54),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[55]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(55),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[62]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(62),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(63),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[6]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(6),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[70]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(70),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[71]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(71),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[78]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(78),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[79]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(79),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[7]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(7),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[86]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(86),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[87]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(87),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[94]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(94),
      R => '0'
    );
\demod_out_V_data_V_1_payload_A_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \demod_out_V_data_V_1_payload_A[127]_i_1_n_0\,
      D => \demod_out_V_data_V_1_payload_A[95]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_A(95),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => demod_out_V_data_V_1_sel_wr,
      I1 => \demod_out_V_data_V_1_state_reg_n_0_[0]\,
      I2 => demod_out_V_data_V_1_ack_in,
      O => demod_out_V_data_V_1_load_B
    );
\demod_out_V_data_V_1_payload_B_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[102]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(102),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[103]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(103),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[110]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(110),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[111]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(111),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[118]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(118),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[119]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(119),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[126]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(126),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[127]_i_2_n_0\,
      Q => demod_out_V_data_V_1_payload_B(127),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => tmp_data_V_fu_942_p90,
      Q => demod_out_V_data_V_1_payload_B(14),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[15]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(15),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[22]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(22),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[23]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(23),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[30]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(30),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[31]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(31),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[38]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(38),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[39]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(39),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[46]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(46),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[47]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(47),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[54]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(54),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[55]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(55),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[62]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(62),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[63]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(63),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[6]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(6),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[70]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(70),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[71]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(71),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[78]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(78),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[79]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(79),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[7]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(7),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[86]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(86),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[87]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(87),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[94]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(94),
      R => '0'
    );
\demod_out_V_data_V_1_payload_B_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => demod_out_V_data_V_1_load_B,
      D => \demod_out_V_data_V_1_payload_A[95]_i_1_n_0\,
      Q => demod_out_V_data_V_1_payload_B(95),
      R => '0'
    );
demod_out_V_data_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => demod_out_TREADY,
      I1 => \demod_out_V_data_V_1_state_reg_n_0_[0]\,
      I2 => demod_out_V_data_V_1_sel,
      O => demod_out_V_data_V_1_sel_rd_i_1_n_0
    );
demod_out_V_data_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => demod_out_V_data_V_1_sel_rd_i_1_n_0,
      Q => demod_out_V_data_V_1_sel,
      R => ap_rst_n_inv
    );
demod_out_V_data_V_1_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => demod_out_V_data_V_1_ack_in,
      I1 => \^ap_ready\,
      I2 => demod_out_V_data_V_1_sel_wr,
      O => demod_out_V_data_V_1_sel_wr_i_1_n_0
    );
demod_out_V_data_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => demod_out_V_data_V_1_sel_wr_i_1_n_0,
      Q => demod_out_V_data_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\demod_out_V_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \demod_out_V_data_V_1_state_reg_n_0_[0]\,
      I2 => demod_out_V_data_V_1_ack_in,
      I3 => demod_out_TREADY,
      I4 => \^ap_ready\,
      O => \demod_out_V_data_V_1_state[0]_i_1_n_0\
    );
\demod_out_V_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3FB"
    )
        port map (
      I0 => demod_out_V_data_V_1_ack_in,
      I1 => \demod_out_V_data_V_1_state_reg_n_0_[0]\,
      I2 => demod_out_TREADY,
      I3 => \^ap_ready\,
      O => \demod_out_V_data_V_1_state[1]_i_1_n_0\
    );
\demod_out_V_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \demod_out_V_data_V_1_state[0]_i_1_n_0\,
      Q => \demod_out_V_data_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\demod_out_V_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \demod_out_V_data_V_1_state[1]_i_1_n_0\,
      Q => demod_out_V_data_V_1_ack_in,
      R => ap_rst_n_inv
    );
\demod_out_V_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_6_n_0\,
      I5 => demod_out_V_last_V_1_payload_A,
      O => \demod_out_V_last_V_1_payload_A[0]_i_1_n_0\
    );
\demod_out_V_last_V_1_payload_A[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => soft_txn_reg(10),
      I1 => soft_txn_reg(11),
      I2 => soft_txn_reg(8),
      I3 => soft_txn_reg(9),
      O => \demod_out_V_last_V_1_payload_A[0]_i_10_n_0\
    );
\demod_out_V_last_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => soft_txn_reg(21),
      I1 => soft_txn_reg(20),
      I2 => soft_txn_reg(23),
      I3 => soft_txn_reg(22),
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_7_n_0\,
      O => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\
    );
\demod_out_V_last_V_1_payload_A[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => soft_txn_reg(29),
      I1 => soft_txn_reg(28),
      I2 => soft_txn_reg(30),
      I3 => soft_txn_reg(31),
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_8_n_0\,
      O => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\
    );
\demod_out_V_last_V_1_payload_A[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => soft_txn_reg(2),
      I1 => soft_txn_reg(0),
      I2 => soft_txn_reg(7),
      I3 => soft_txn_reg(6),
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_9_n_0\,
      O => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\
    );
\demod_out_V_last_V_1_payload_A[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => soft_txn_reg(13),
      I1 => soft_txn_reg(12),
      I2 => soft_txn_reg(15),
      I3 => soft_txn_reg(14),
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_10_n_0\,
      O => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\
    );
\demod_out_V_last_V_1_payload_A[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^demod_out_tvalid\,
      I1 => demod_out_V_last_V_1_ack_in,
      I2 => demod_out_V_last_V_1_sel_wr,
      O => \demod_out_V_last_V_1_payload_A[0]_i_6_n_0\
    );
\demod_out_V_last_V_1_payload_A[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => soft_txn_reg(18),
      I1 => soft_txn_reg(19),
      I2 => soft_txn_reg(16),
      I3 => soft_txn_reg(17),
      O => \demod_out_V_last_V_1_payload_A[0]_i_7_n_0\
    );
\demod_out_V_last_V_1_payload_A[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => soft_txn_reg(26),
      I1 => soft_txn_reg(27),
      I2 => soft_txn_reg(24),
      I3 => soft_txn_reg(25),
      O => \demod_out_V_last_V_1_payload_A[0]_i_8_n_0\
    );
\demod_out_V_last_V_1_payload_A[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => soft_txn_reg(5),
      I1 => soft_txn_reg(1),
      I2 => soft_txn_reg(4),
      I3 => soft_txn_reg(3),
      O => \demod_out_V_last_V_1_payload_A[0]_i_9_n_0\
    );
\demod_out_V_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \demod_out_V_last_V_1_payload_A[0]_i_1_n_0\,
      Q => demod_out_V_last_V_1_payload_A,
      R => '0'
    );
\demod_out_V_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I4 => demod_out_V_last_V_1_load_B,
      I5 => demod_out_V_last_V_1_payload_B,
      O => \demod_out_V_last_V_1_payload_B[0]_i_1_n_0\
    );
\demod_out_V_last_V_1_payload_B[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => demod_out_V_last_V_1_sel_wr,
      I1 => \^demod_out_tvalid\,
      I2 => demod_out_V_last_V_1_ack_in,
      O => demod_out_V_last_V_1_load_B
    );
\demod_out_V_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \demod_out_V_last_V_1_payload_B[0]_i_1_n_0\,
      Q => demod_out_V_last_V_1_payload_B,
      R => '0'
    );
demod_out_V_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => demod_out_TREADY,
      I1 => \^demod_out_tvalid\,
      I2 => demod_out_V_last_V_1_sel,
      O => demod_out_V_last_V_1_sel_rd_i_1_n_0
    );
demod_out_V_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => demod_out_V_last_V_1_sel_rd_i_1_n_0,
      Q => demod_out_V_last_V_1_sel,
      R => ap_rst_n_inv
    );
demod_out_V_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => demod_out_V_last_V_1_ack_in,
      I1 => \^ap_ready\,
      I2 => demod_out_V_last_V_1_sel_wr,
      O => demod_out_V_last_V_1_sel_wr_i_1_n_0
    );
demod_out_V_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => demod_out_V_last_V_1_sel_wr_i_1_n_0,
      Q => demod_out_V_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\demod_out_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^demod_out_tvalid\,
      I2 => demod_out_V_last_V_1_ack_in,
      I3 => demod_out_TREADY,
      I4 => \^ap_ready\,
      O => \demod_out_V_last_V_1_state[0]_i_1_n_0\
    );
\demod_out_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3FB"
    )
        port map (
      I0 => demod_out_V_last_V_1_ack_in,
      I1 => \^demod_out_tvalid\,
      I2 => demod_out_TREADY,
      I3 => \^ap_ready\,
      O => \demod_out_V_last_V_1_state[1]_i_1_n_0\
    );
\demod_out_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \demod_out_V_last_V_1_state[0]_i_1_n_0\,
      Q => \^demod_out_tvalid\,
      R => '0'
    );
\demod_out_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \demod_out_V_last_V_1_state[1]_i_1_n_0\,
      Q => demod_out_V_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\imag_in_V_data_V_0_payload_A[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \imag_in_V_data_V_0_state_reg_n_0_[0]\,
      I1 => imag_in_V_data_V_0_ack_in,
      I2 => imag_in_V_data_V_0_sel_wr,
      O => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\
    );
\imag_in_V_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(0),
      Q => imag_in_V_data_V_0_payload_A(0),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(100),
      Q => imag_in_V_data_V_0_payload_A(100),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(101),
      Q => imag_in_V_data_V_0_payload_A(101),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(102),
      Q => imag_in_V_data_V_0_payload_A(102),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(103),
      Q => imag_in_V_data_V_0_payload_A(103),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(104),
      Q => imag_in_V_data_V_0_payload_A(104),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(105),
      Q => imag_in_V_data_V_0_payload_A(105),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(106),
      Q => imag_in_V_data_V_0_payload_A(106),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(107),
      Q => imag_in_V_data_V_0_payload_A(107),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(108),
      Q => imag_in_V_data_V_0_payload_A(108),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(109),
      Q => imag_in_V_data_V_0_payload_A(109),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(10),
      Q => imag_in_V_data_V_0_payload_A(10),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(110),
      Q => imag_in_V_data_V_0_payload_A(110),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(111),
      Q => imag_in_V_data_V_0_payload_A(111),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(112),
      Q => imag_in_V_data_V_0_payload_A(112),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(113),
      Q => imag_in_V_data_V_0_payload_A(113),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(114),
      Q => imag_in_V_data_V_0_payload_A(114),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(115),
      Q => imag_in_V_data_V_0_payload_A(115),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(116),
      Q => imag_in_V_data_V_0_payload_A(116),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(117),
      Q => imag_in_V_data_V_0_payload_A(117),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(118),
      Q => imag_in_V_data_V_0_payload_A(118),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(119),
      Q => imag_in_V_data_V_0_payload_A(119),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(11),
      Q => imag_in_V_data_V_0_payload_A(11),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(120),
      Q => imag_in_V_data_V_0_payload_A(120),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(121),
      Q => imag_in_V_data_V_0_payload_A(121),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(122),
      Q => imag_in_V_data_V_0_payload_A(122),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(123),
      Q => imag_in_V_data_V_0_payload_A(123),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(124),
      Q => imag_in_V_data_V_0_payload_A(124),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(125),
      Q => imag_in_V_data_V_0_payload_A(125),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(126),
      Q => imag_in_V_data_V_0_payload_A(126),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(127),
      Q => imag_in_V_data_V_0_payload_A(127),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(12),
      Q => imag_in_V_data_V_0_payload_A(12),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(13),
      Q => imag_in_V_data_V_0_payload_A(13),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(14),
      Q => imag_in_V_data_V_0_payload_A(14),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(15),
      Q => imag_in_V_data_V_0_payload_A(15),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(16),
      Q => imag_in_V_data_V_0_payload_A(16),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(17),
      Q => imag_in_V_data_V_0_payload_A(17),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(18),
      Q => imag_in_V_data_V_0_payload_A(18),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(19),
      Q => imag_in_V_data_V_0_payload_A(19),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(1),
      Q => imag_in_V_data_V_0_payload_A(1),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(20),
      Q => imag_in_V_data_V_0_payload_A(20),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(21),
      Q => imag_in_V_data_V_0_payload_A(21),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(22),
      Q => imag_in_V_data_V_0_payload_A(22),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(23),
      Q => imag_in_V_data_V_0_payload_A(23),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(24),
      Q => imag_in_V_data_V_0_payload_A(24),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(25),
      Q => imag_in_V_data_V_0_payload_A(25),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(26),
      Q => imag_in_V_data_V_0_payload_A(26),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(27),
      Q => imag_in_V_data_V_0_payload_A(27),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(28),
      Q => imag_in_V_data_V_0_payload_A(28),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(29),
      Q => imag_in_V_data_V_0_payload_A(29),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(2),
      Q => imag_in_V_data_V_0_payload_A(2),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(30),
      Q => imag_in_V_data_V_0_payload_A(30),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(31),
      Q => imag_in_V_data_V_0_payload_A(31),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(32),
      Q => imag_in_V_data_V_0_payload_A(32),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(33),
      Q => imag_in_V_data_V_0_payload_A(33),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(34),
      Q => imag_in_V_data_V_0_payload_A(34),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(35),
      Q => imag_in_V_data_V_0_payload_A(35),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(36),
      Q => imag_in_V_data_V_0_payload_A(36),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(37),
      Q => imag_in_V_data_V_0_payload_A(37),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(38),
      Q => imag_in_V_data_V_0_payload_A(38),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(39),
      Q => imag_in_V_data_V_0_payload_A(39),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(3),
      Q => imag_in_V_data_V_0_payload_A(3),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(40),
      Q => imag_in_V_data_V_0_payload_A(40),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(41),
      Q => imag_in_V_data_V_0_payload_A(41),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(42),
      Q => imag_in_V_data_V_0_payload_A(42),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(43),
      Q => imag_in_V_data_V_0_payload_A(43),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(44),
      Q => imag_in_V_data_V_0_payload_A(44),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(45),
      Q => imag_in_V_data_V_0_payload_A(45),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(46),
      Q => imag_in_V_data_V_0_payload_A(46),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(47),
      Q => imag_in_V_data_V_0_payload_A(47),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(48),
      Q => imag_in_V_data_V_0_payload_A(48),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(49),
      Q => imag_in_V_data_V_0_payload_A(49),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(4),
      Q => imag_in_V_data_V_0_payload_A(4),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(50),
      Q => imag_in_V_data_V_0_payload_A(50),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(51),
      Q => imag_in_V_data_V_0_payload_A(51),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(52),
      Q => imag_in_V_data_V_0_payload_A(52),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(53),
      Q => imag_in_V_data_V_0_payload_A(53),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(54),
      Q => imag_in_V_data_V_0_payload_A(54),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(55),
      Q => imag_in_V_data_V_0_payload_A(55),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(56),
      Q => imag_in_V_data_V_0_payload_A(56),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(57),
      Q => imag_in_V_data_V_0_payload_A(57),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(58),
      Q => imag_in_V_data_V_0_payload_A(58),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(59),
      Q => imag_in_V_data_V_0_payload_A(59),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(5),
      Q => imag_in_V_data_V_0_payload_A(5),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(60),
      Q => imag_in_V_data_V_0_payload_A(60),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(61),
      Q => imag_in_V_data_V_0_payload_A(61),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(62),
      Q => imag_in_V_data_V_0_payload_A(62),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(63),
      Q => imag_in_V_data_V_0_payload_A(63),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(64),
      Q => imag_in_V_data_V_0_payload_A(64),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(65),
      Q => imag_in_V_data_V_0_payload_A(65),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(66),
      Q => imag_in_V_data_V_0_payload_A(66),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(67),
      Q => imag_in_V_data_V_0_payload_A(67),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(68),
      Q => imag_in_V_data_V_0_payload_A(68),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(69),
      Q => imag_in_V_data_V_0_payload_A(69),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(6),
      Q => imag_in_V_data_V_0_payload_A(6),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(70),
      Q => imag_in_V_data_V_0_payload_A(70),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(71),
      Q => imag_in_V_data_V_0_payload_A(71),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(72),
      Q => imag_in_V_data_V_0_payload_A(72),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(73),
      Q => imag_in_V_data_V_0_payload_A(73),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(74),
      Q => imag_in_V_data_V_0_payload_A(74),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(75),
      Q => imag_in_V_data_V_0_payload_A(75),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(76),
      Q => imag_in_V_data_V_0_payload_A(76),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(77),
      Q => imag_in_V_data_V_0_payload_A(77),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(78),
      Q => imag_in_V_data_V_0_payload_A(78),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(79),
      Q => imag_in_V_data_V_0_payload_A(79),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(7),
      Q => imag_in_V_data_V_0_payload_A(7),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(80),
      Q => imag_in_V_data_V_0_payload_A(80),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(81),
      Q => imag_in_V_data_V_0_payload_A(81),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(82),
      Q => imag_in_V_data_V_0_payload_A(82),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(83),
      Q => imag_in_V_data_V_0_payload_A(83),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(84),
      Q => imag_in_V_data_V_0_payload_A(84),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(85),
      Q => imag_in_V_data_V_0_payload_A(85),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(86),
      Q => imag_in_V_data_V_0_payload_A(86),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(87),
      Q => imag_in_V_data_V_0_payload_A(87),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(88),
      Q => imag_in_V_data_V_0_payload_A(88),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(89),
      Q => imag_in_V_data_V_0_payload_A(89),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(8),
      Q => imag_in_V_data_V_0_payload_A(8),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(90),
      Q => imag_in_V_data_V_0_payload_A(90),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(91),
      Q => imag_in_V_data_V_0_payload_A(91),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(92),
      Q => imag_in_V_data_V_0_payload_A(92),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(93),
      Q => imag_in_V_data_V_0_payload_A(93),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(94),
      Q => imag_in_V_data_V_0_payload_A(94),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(95),
      Q => imag_in_V_data_V_0_payload_A(95),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(96),
      Q => imag_in_V_data_V_0_payload_A(96),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(97),
      Q => imag_in_V_data_V_0_payload_A(97),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(98),
      Q => imag_in_V_data_V_0_payload_A(98),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(99),
      Q => imag_in_V_data_V_0_payload_A(99),
      R => '0'
    );
\imag_in_V_data_V_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \imag_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => imag_in_TDATA(9),
      Q => imag_in_V_data_V_0_payload_A(9),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => imag_in_V_data_V_0_sel_wr,
      I1 => \imag_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => imag_in_V_data_V_0_ack_in,
      O => imag_in_V_data_V_0_load_B
    );
\imag_in_V_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(0),
      Q => imag_in_V_data_V_0_payload_B(0),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(100),
      Q => imag_in_V_data_V_0_payload_B(100),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(101),
      Q => imag_in_V_data_V_0_payload_B(101),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(102),
      Q => imag_in_V_data_V_0_payload_B(102),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(103),
      Q => imag_in_V_data_V_0_payload_B(103),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(104),
      Q => imag_in_V_data_V_0_payload_B(104),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(105),
      Q => imag_in_V_data_V_0_payload_B(105),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(106),
      Q => imag_in_V_data_V_0_payload_B(106),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(107),
      Q => imag_in_V_data_V_0_payload_B(107),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(108),
      Q => imag_in_V_data_V_0_payload_B(108),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(109),
      Q => imag_in_V_data_V_0_payload_B(109),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(10),
      Q => imag_in_V_data_V_0_payload_B(10),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(110),
      Q => imag_in_V_data_V_0_payload_B(110),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(111),
      Q => imag_in_V_data_V_0_payload_B(111),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(112),
      Q => imag_in_V_data_V_0_payload_B(112),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(113),
      Q => imag_in_V_data_V_0_payload_B(113),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(114),
      Q => imag_in_V_data_V_0_payload_B(114),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(115),
      Q => imag_in_V_data_V_0_payload_B(115),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(116),
      Q => imag_in_V_data_V_0_payload_B(116),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(117),
      Q => imag_in_V_data_V_0_payload_B(117),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(118),
      Q => imag_in_V_data_V_0_payload_B(118),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(119),
      Q => imag_in_V_data_V_0_payload_B(119),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(11),
      Q => imag_in_V_data_V_0_payload_B(11),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(120),
      Q => imag_in_V_data_V_0_payload_B(120),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(121),
      Q => imag_in_V_data_V_0_payload_B(121),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(122),
      Q => imag_in_V_data_V_0_payload_B(122),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(123),
      Q => imag_in_V_data_V_0_payload_B(123),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(124),
      Q => imag_in_V_data_V_0_payload_B(124),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(125),
      Q => imag_in_V_data_V_0_payload_B(125),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(126),
      Q => imag_in_V_data_V_0_payload_B(126),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(127),
      Q => imag_in_V_data_V_0_payload_B(127),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(12),
      Q => imag_in_V_data_V_0_payload_B(12),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(13),
      Q => imag_in_V_data_V_0_payload_B(13),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(14),
      Q => imag_in_V_data_V_0_payload_B(14),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(15),
      Q => imag_in_V_data_V_0_payload_B(15),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(16),
      Q => imag_in_V_data_V_0_payload_B(16),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(17),
      Q => imag_in_V_data_V_0_payload_B(17),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(18),
      Q => imag_in_V_data_V_0_payload_B(18),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(19),
      Q => imag_in_V_data_V_0_payload_B(19),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(1),
      Q => imag_in_V_data_V_0_payload_B(1),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(20),
      Q => imag_in_V_data_V_0_payload_B(20),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(21),
      Q => imag_in_V_data_V_0_payload_B(21),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(22),
      Q => imag_in_V_data_V_0_payload_B(22),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(23),
      Q => imag_in_V_data_V_0_payload_B(23),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(24),
      Q => imag_in_V_data_V_0_payload_B(24),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(25),
      Q => imag_in_V_data_V_0_payload_B(25),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(26),
      Q => imag_in_V_data_V_0_payload_B(26),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(27),
      Q => imag_in_V_data_V_0_payload_B(27),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(28),
      Q => imag_in_V_data_V_0_payload_B(28),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(29),
      Q => imag_in_V_data_V_0_payload_B(29),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(2),
      Q => imag_in_V_data_V_0_payload_B(2),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(30),
      Q => imag_in_V_data_V_0_payload_B(30),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(31),
      Q => imag_in_V_data_V_0_payload_B(31),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(32),
      Q => imag_in_V_data_V_0_payload_B(32),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(33),
      Q => imag_in_V_data_V_0_payload_B(33),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(34),
      Q => imag_in_V_data_V_0_payload_B(34),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(35),
      Q => imag_in_V_data_V_0_payload_B(35),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(36),
      Q => imag_in_V_data_V_0_payload_B(36),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(37),
      Q => imag_in_V_data_V_0_payload_B(37),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(38),
      Q => imag_in_V_data_V_0_payload_B(38),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(39),
      Q => imag_in_V_data_V_0_payload_B(39),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(3),
      Q => imag_in_V_data_V_0_payload_B(3),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(40),
      Q => imag_in_V_data_V_0_payload_B(40),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(41),
      Q => imag_in_V_data_V_0_payload_B(41),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(42),
      Q => imag_in_V_data_V_0_payload_B(42),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(43),
      Q => imag_in_V_data_V_0_payload_B(43),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(44),
      Q => imag_in_V_data_V_0_payload_B(44),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(45),
      Q => imag_in_V_data_V_0_payload_B(45),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(46),
      Q => imag_in_V_data_V_0_payload_B(46),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(47),
      Q => imag_in_V_data_V_0_payload_B(47),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(48),
      Q => imag_in_V_data_V_0_payload_B(48),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(49),
      Q => imag_in_V_data_V_0_payload_B(49),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(4),
      Q => imag_in_V_data_V_0_payload_B(4),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(50),
      Q => imag_in_V_data_V_0_payload_B(50),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(51),
      Q => imag_in_V_data_V_0_payload_B(51),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(52),
      Q => imag_in_V_data_V_0_payload_B(52),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(53),
      Q => imag_in_V_data_V_0_payload_B(53),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(54),
      Q => imag_in_V_data_V_0_payload_B(54),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(55),
      Q => imag_in_V_data_V_0_payload_B(55),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(56),
      Q => imag_in_V_data_V_0_payload_B(56),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(57),
      Q => imag_in_V_data_V_0_payload_B(57),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(58),
      Q => imag_in_V_data_V_0_payload_B(58),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(59),
      Q => imag_in_V_data_V_0_payload_B(59),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(5),
      Q => imag_in_V_data_V_0_payload_B(5),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(60),
      Q => imag_in_V_data_V_0_payload_B(60),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(61),
      Q => imag_in_V_data_V_0_payload_B(61),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(62),
      Q => imag_in_V_data_V_0_payload_B(62),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(63),
      Q => imag_in_V_data_V_0_payload_B(63),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(64),
      Q => imag_in_V_data_V_0_payload_B(64),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(65),
      Q => imag_in_V_data_V_0_payload_B(65),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(66),
      Q => imag_in_V_data_V_0_payload_B(66),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(67),
      Q => imag_in_V_data_V_0_payload_B(67),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(68),
      Q => imag_in_V_data_V_0_payload_B(68),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(69),
      Q => imag_in_V_data_V_0_payload_B(69),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(6),
      Q => imag_in_V_data_V_0_payload_B(6),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(70),
      Q => imag_in_V_data_V_0_payload_B(70),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(71),
      Q => imag_in_V_data_V_0_payload_B(71),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(72),
      Q => imag_in_V_data_V_0_payload_B(72),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(73),
      Q => imag_in_V_data_V_0_payload_B(73),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(74),
      Q => imag_in_V_data_V_0_payload_B(74),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(75),
      Q => imag_in_V_data_V_0_payload_B(75),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(76),
      Q => imag_in_V_data_V_0_payload_B(76),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(77),
      Q => imag_in_V_data_V_0_payload_B(77),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(78),
      Q => imag_in_V_data_V_0_payload_B(78),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(79),
      Q => imag_in_V_data_V_0_payload_B(79),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(7),
      Q => imag_in_V_data_V_0_payload_B(7),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(80),
      Q => imag_in_V_data_V_0_payload_B(80),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(81),
      Q => imag_in_V_data_V_0_payload_B(81),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(82),
      Q => imag_in_V_data_V_0_payload_B(82),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(83),
      Q => imag_in_V_data_V_0_payload_B(83),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(84),
      Q => imag_in_V_data_V_0_payload_B(84),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(85),
      Q => imag_in_V_data_V_0_payload_B(85),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(86),
      Q => imag_in_V_data_V_0_payload_B(86),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(87),
      Q => imag_in_V_data_V_0_payload_B(87),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(88),
      Q => imag_in_V_data_V_0_payload_B(88),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(89),
      Q => imag_in_V_data_V_0_payload_B(89),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(8),
      Q => imag_in_V_data_V_0_payload_B(8),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(90),
      Q => imag_in_V_data_V_0_payload_B(90),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(91),
      Q => imag_in_V_data_V_0_payload_B(91),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(92),
      Q => imag_in_V_data_V_0_payload_B(92),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(93),
      Q => imag_in_V_data_V_0_payload_B(93),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(94),
      Q => imag_in_V_data_V_0_payload_B(94),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(95),
      Q => imag_in_V_data_V_0_payload_B(95),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(96),
      Q => imag_in_V_data_V_0_payload_B(96),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(97),
      Q => imag_in_V_data_V_0_payload_B(97),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(98),
      Q => imag_in_V_data_V_0_payload_B(98),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(99),
      Q => imag_in_V_data_V_0_payload_B(99),
      R => '0'
    );
\imag_in_V_data_V_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => imag_in_V_data_V_0_load_B,
      D => imag_in_TDATA(9),
      Q => imag_in_V_data_V_0_payload_B(9),
      R => '0'
    );
imag_in_V_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \imag_in_V_data_V_0_state_reg_n_0_[0]\,
      I1 => \^ap_ready\,
      I2 => imag_in_V_data_V_0_sel,
      O => imag_in_V_data_V_0_sel_rd_i_1_n_0
    );
imag_in_V_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => imag_in_V_data_V_0_sel_rd_i_1_n_0,
      Q => imag_in_V_data_V_0_sel,
      R => ap_rst_n_inv
    );
imag_in_V_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => imag_in_V_data_V_0_ack_in,
      I1 => imag_in_TVALID,
      I2 => imag_in_V_data_V_0_sel_wr,
      O => imag_in_V_data_V_0_sel_wr_i_1_n_0
    );
imag_in_V_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => imag_in_V_data_V_0_sel_wr_i_1_n_0,
      Q => imag_in_V_data_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\imag_in_V_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => imag_in_V_data_V_0_ack_in,
      I2 => \imag_in_V_data_V_0_state_reg_n_0_[0]\,
      I3 => imag_in_TVALID,
      I4 => \^ap_ready\,
      O => \imag_in_V_data_V_0_state[0]_i_1_n_0\
    );
\imag_in_V_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => \^ap_ready\,
      I1 => imag_in_TVALID,
      I2 => imag_in_V_data_V_0_ack_in,
      I3 => \imag_in_V_data_V_0_state_reg_n_0_[0]\,
      O => \imag_in_V_data_V_0_state[1]_i_1_n_0\
    );
\imag_in_V_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \imag_in_V_data_V_0_state[0]_i_1_n_0\,
      Q => \imag_in_V_data_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\imag_in_V_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \imag_in_V_data_V_0_state[1]_i_1_n_0\,
      Q => imag_in_V_data_V_0_ack_in,
      R => ap_rst_n_inv
    );
\imag_in_V_last_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^imag_in_tready\,
      I2 => \imag_in_V_last_V_0_state_reg_n_0_[0]\,
      I3 => imag_in_TVALID,
      I4 => \^ap_ready\,
      O => \imag_in_V_last_V_0_state[0]_i_1_n_0\
    );
\imag_in_V_last_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => \^ap_ready\,
      I1 => imag_in_TVALID,
      I2 => \^imag_in_tready\,
      I3 => \imag_in_V_last_V_0_state_reg_n_0_[0]\,
      O => \imag_in_V_last_V_0_state[1]_i_1_n_0\
    );
\imag_in_V_last_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \imag_in_V_last_V_0_state[0]_i_1_n_0\,
      Q => \imag_in_V_last_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\imag_in_V_last_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \imag_in_V_last_V_0_state[1]_i_1_n_0\,
      Q => \^imag_in_tready\,
      R => ap_rst_n_inv
    );
\real_in_V_data_V_0_payload_A[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \real_in_V_data_V_0_state_reg_n_0_[0]\,
      I1 => real_in_V_data_V_0_ack_in,
      I2 => real_in_V_data_V_0_sel_wr,
      O => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\
    );
\real_in_V_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(0),
      Q => real_in_V_data_V_0_payload_A(0),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(100),
      Q => real_in_V_data_V_0_payload_A(100),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(101),
      Q => real_in_V_data_V_0_payload_A(101),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(102),
      Q => real_in_V_data_V_0_payload_A(102),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(103),
      Q => real_in_V_data_V_0_payload_A(103),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(104),
      Q => real_in_V_data_V_0_payload_A(104),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(105),
      Q => real_in_V_data_V_0_payload_A(105),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(106),
      Q => real_in_V_data_V_0_payload_A(106),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(107),
      Q => real_in_V_data_V_0_payload_A(107),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(108),
      Q => real_in_V_data_V_0_payload_A(108),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(109),
      Q => real_in_V_data_V_0_payload_A(109),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(10),
      Q => real_in_V_data_V_0_payload_A(10),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(110),
      Q => real_in_V_data_V_0_payload_A(110),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(111),
      Q => real_in_V_data_V_0_payload_A(111),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(112),
      Q => real_in_V_data_V_0_payload_A(112),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(113),
      Q => real_in_V_data_V_0_payload_A(113),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(114),
      Q => real_in_V_data_V_0_payload_A(114),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(115),
      Q => real_in_V_data_V_0_payload_A(115),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(116),
      Q => real_in_V_data_V_0_payload_A(116),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(117),
      Q => real_in_V_data_V_0_payload_A(117),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(118),
      Q => real_in_V_data_V_0_payload_A(118),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(119),
      Q => real_in_V_data_V_0_payload_A(119),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(11),
      Q => real_in_V_data_V_0_payload_A(11),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(120),
      Q => real_in_V_data_V_0_payload_A(120),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(121),
      Q => real_in_V_data_V_0_payload_A(121),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(122),
      Q => real_in_V_data_V_0_payload_A(122),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(123),
      Q => real_in_V_data_V_0_payload_A(123),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(124),
      Q => real_in_V_data_V_0_payload_A(124),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(125),
      Q => real_in_V_data_V_0_payload_A(125),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(126),
      Q => real_in_V_data_V_0_payload_A(126),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(127),
      Q => real_in_V_data_V_0_payload_A(127),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(12),
      Q => real_in_V_data_V_0_payload_A(12),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(13),
      Q => real_in_V_data_V_0_payload_A(13),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(14),
      Q => real_in_V_data_V_0_payload_A(14),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(15),
      Q => real_in_V_data_V_0_payload_A(15),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(16),
      Q => real_in_V_data_V_0_payload_A(16),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(17),
      Q => real_in_V_data_V_0_payload_A(17),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(18),
      Q => real_in_V_data_V_0_payload_A(18),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(19),
      Q => real_in_V_data_V_0_payload_A(19),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(1),
      Q => real_in_V_data_V_0_payload_A(1),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(20),
      Q => real_in_V_data_V_0_payload_A(20),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(21),
      Q => real_in_V_data_V_0_payload_A(21),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(22),
      Q => real_in_V_data_V_0_payload_A(22),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(23),
      Q => real_in_V_data_V_0_payload_A(23),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(24),
      Q => real_in_V_data_V_0_payload_A(24),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(25),
      Q => real_in_V_data_V_0_payload_A(25),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(26),
      Q => real_in_V_data_V_0_payload_A(26),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(27),
      Q => real_in_V_data_V_0_payload_A(27),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(28),
      Q => real_in_V_data_V_0_payload_A(28),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(29),
      Q => real_in_V_data_V_0_payload_A(29),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(2),
      Q => real_in_V_data_V_0_payload_A(2),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(30),
      Q => real_in_V_data_V_0_payload_A(30),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(31),
      Q => real_in_V_data_V_0_payload_A(31),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(32),
      Q => real_in_V_data_V_0_payload_A(32),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(33),
      Q => real_in_V_data_V_0_payload_A(33),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(34),
      Q => real_in_V_data_V_0_payload_A(34),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(35),
      Q => real_in_V_data_V_0_payload_A(35),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(36),
      Q => real_in_V_data_V_0_payload_A(36),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(37),
      Q => real_in_V_data_V_0_payload_A(37),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(38),
      Q => real_in_V_data_V_0_payload_A(38),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(39),
      Q => real_in_V_data_V_0_payload_A(39),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(3),
      Q => real_in_V_data_V_0_payload_A(3),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(40),
      Q => real_in_V_data_V_0_payload_A(40),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(41),
      Q => real_in_V_data_V_0_payload_A(41),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(42),
      Q => real_in_V_data_V_0_payload_A(42),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(43),
      Q => real_in_V_data_V_0_payload_A(43),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(44),
      Q => real_in_V_data_V_0_payload_A(44),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(45),
      Q => real_in_V_data_V_0_payload_A(45),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(46),
      Q => real_in_V_data_V_0_payload_A(46),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(47),
      Q => real_in_V_data_V_0_payload_A(47),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(48),
      Q => real_in_V_data_V_0_payload_A(48),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(49),
      Q => real_in_V_data_V_0_payload_A(49),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(4),
      Q => real_in_V_data_V_0_payload_A(4),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(50),
      Q => real_in_V_data_V_0_payload_A(50),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(51),
      Q => real_in_V_data_V_0_payload_A(51),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(52),
      Q => real_in_V_data_V_0_payload_A(52),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(53),
      Q => real_in_V_data_V_0_payload_A(53),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(54),
      Q => real_in_V_data_V_0_payload_A(54),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(55),
      Q => real_in_V_data_V_0_payload_A(55),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(56),
      Q => real_in_V_data_V_0_payload_A(56),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(57),
      Q => real_in_V_data_V_0_payload_A(57),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(58),
      Q => real_in_V_data_V_0_payload_A(58),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(59),
      Q => real_in_V_data_V_0_payload_A(59),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(5),
      Q => real_in_V_data_V_0_payload_A(5),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(60),
      Q => real_in_V_data_V_0_payload_A(60),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(61),
      Q => real_in_V_data_V_0_payload_A(61),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(62),
      Q => real_in_V_data_V_0_payload_A(62),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(63),
      Q => real_in_V_data_V_0_payload_A(63),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(64),
      Q => real_in_V_data_V_0_payload_A(64),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(65),
      Q => real_in_V_data_V_0_payload_A(65),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(66),
      Q => real_in_V_data_V_0_payload_A(66),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(67),
      Q => real_in_V_data_V_0_payload_A(67),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(68),
      Q => real_in_V_data_V_0_payload_A(68),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(69),
      Q => real_in_V_data_V_0_payload_A(69),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(6),
      Q => real_in_V_data_V_0_payload_A(6),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(70),
      Q => real_in_V_data_V_0_payload_A(70),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(71),
      Q => real_in_V_data_V_0_payload_A(71),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(72),
      Q => real_in_V_data_V_0_payload_A(72),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(73),
      Q => real_in_V_data_V_0_payload_A(73),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(74),
      Q => real_in_V_data_V_0_payload_A(74),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(75),
      Q => real_in_V_data_V_0_payload_A(75),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(76),
      Q => real_in_V_data_V_0_payload_A(76),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(77),
      Q => real_in_V_data_V_0_payload_A(77),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(78),
      Q => real_in_V_data_V_0_payload_A(78),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(79),
      Q => real_in_V_data_V_0_payload_A(79),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(7),
      Q => real_in_V_data_V_0_payload_A(7),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(80),
      Q => real_in_V_data_V_0_payload_A(80),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(81),
      Q => real_in_V_data_V_0_payload_A(81),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(82),
      Q => real_in_V_data_V_0_payload_A(82),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(83),
      Q => real_in_V_data_V_0_payload_A(83),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(84),
      Q => real_in_V_data_V_0_payload_A(84),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(85),
      Q => real_in_V_data_V_0_payload_A(85),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(86),
      Q => real_in_V_data_V_0_payload_A(86),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(87),
      Q => real_in_V_data_V_0_payload_A(87),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(88),
      Q => real_in_V_data_V_0_payload_A(88),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(89),
      Q => real_in_V_data_V_0_payload_A(89),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(8),
      Q => real_in_V_data_V_0_payload_A(8),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(90),
      Q => real_in_V_data_V_0_payload_A(90),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(91),
      Q => real_in_V_data_V_0_payload_A(91),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(92),
      Q => real_in_V_data_V_0_payload_A(92),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(93),
      Q => real_in_V_data_V_0_payload_A(93),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(94),
      Q => real_in_V_data_V_0_payload_A(94),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(95),
      Q => real_in_V_data_V_0_payload_A(95),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(96),
      Q => real_in_V_data_V_0_payload_A(96),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(97),
      Q => real_in_V_data_V_0_payload_A(97),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(98),
      Q => real_in_V_data_V_0_payload_A(98),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(99),
      Q => real_in_V_data_V_0_payload_A(99),
      R => '0'
    );
\real_in_V_data_V_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \real_in_V_data_V_0_payload_A[127]_i_1_n_0\,
      D => real_in_TDATA(9),
      Q => real_in_V_data_V_0_payload_A(9),
      R => '0'
    );
\real_in_V_data_V_0_payload_B[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => real_in_V_data_V_0_sel_wr,
      I1 => \real_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => real_in_V_data_V_0_ack_in,
      O => real_in_V_data_V_0_load_B
    );
\real_in_V_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(0),
      Q => real_in_V_data_V_0_payload_B(0),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(100),
      Q => real_in_V_data_V_0_payload_B(100),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(101),
      Q => real_in_V_data_V_0_payload_B(101),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(102),
      Q => real_in_V_data_V_0_payload_B(102),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(103),
      Q => real_in_V_data_V_0_payload_B(103),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(104),
      Q => real_in_V_data_V_0_payload_B(104),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(105),
      Q => real_in_V_data_V_0_payload_B(105),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(106),
      Q => real_in_V_data_V_0_payload_B(106),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(107),
      Q => real_in_V_data_V_0_payload_B(107),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(108),
      Q => real_in_V_data_V_0_payload_B(108),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(109),
      Q => real_in_V_data_V_0_payload_B(109),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(10),
      Q => real_in_V_data_V_0_payload_B(10),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(110),
      Q => real_in_V_data_V_0_payload_B(110),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(111),
      Q => real_in_V_data_V_0_payload_B(111),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(112),
      Q => real_in_V_data_V_0_payload_B(112),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(113),
      Q => real_in_V_data_V_0_payload_B(113),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(114),
      Q => real_in_V_data_V_0_payload_B(114),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(115),
      Q => real_in_V_data_V_0_payload_B(115),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(116),
      Q => real_in_V_data_V_0_payload_B(116),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(117),
      Q => real_in_V_data_V_0_payload_B(117),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(118),
      Q => real_in_V_data_V_0_payload_B(118),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(119),
      Q => real_in_V_data_V_0_payload_B(119),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(11),
      Q => real_in_V_data_V_0_payload_B(11),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(120),
      Q => real_in_V_data_V_0_payload_B(120),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(121),
      Q => real_in_V_data_V_0_payload_B(121),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(122),
      Q => real_in_V_data_V_0_payload_B(122),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(123),
      Q => real_in_V_data_V_0_payload_B(123),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(124),
      Q => real_in_V_data_V_0_payload_B(124),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(125),
      Q => real_in_V_data_V_0_payload_B(125),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(126),
      Q => real_in_V_data_V_0_payload_B(126),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(127),
      Q => real_in_V_data_V_0_payload_B(127),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(12),
      Q => real_in_V_data_V_0_payload_B(12),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(13),
      Q => real_in_V_data_V_0_payload_B(13),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(14),
      Q => real_in_V_data_V_0_payload_B(14),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(15),
      Q => real_in_V_data_V_0_payload_B(15),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(16),
      Q => real_in_V_data_V_0_payload_B(16),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(17),
      Q => real_in_V_data_V_0_payload_B(17),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(18),
      Q => real_in_V_data_V_0_payload_B(18),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(19),
      Q => real_in_V_data_V_0_payload_B(19),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(1),
      Q => real_in_V_data_V_0_payload_B(1),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(20),
      Q => real_in_V_data_V_0_payload_B(20),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(21),
      Q => real_in_V_data_V_0_payload_B(21),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(22),
      Q => real_in_V_data_V_0_payload_B(22),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(23),
      Q => real_in_V_data_V_0_payload_B(23),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(24),
      Q => real_in_V_data_V_0_payload_B(24),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(25),
      Q => real_in_V_data_V_0_payload_B(25),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(26),
      Q => real_in_V_data_V_0_payload_B(26),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(27),
      Q => real_in_V_data_V_0_payload_B(27),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(28),
      Q => real_in_V_data_V_0_payload_B(28),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(29),
      Q => real_in_V_data_V_0_payload_B(29),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(2),
      Q => real_in_V_data_V_0_payload_B(2),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(30),
      Q => real_in_V_data_V_0_payload_B(30),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(31),
      Q => real_in_V_data_V_0_payload_B(31),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(32),
      Q => real_in_V_data_V_0_payload_B(32),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(33),
      Q => real_in_V_data_V_0_payload_B(33),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(34),
      Q => real_in_V_data_V_0_payload_B(34),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(35),
      Q => real_in_V_data_V_0_payload_B(35),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(36),
      Q => real_in_V_data_V_0_payload_B(36),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(37),
      Q => real_in_V_data_V_0_payload_B(37),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(38),
      Q => real_in_V_data_V_0_payload_B(38),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(39),
      Q => real_in_V_data_V_0_payload_B(39),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(3),
      Q => real_in_V_data_V_0_payload_B(3),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(40),
      Q => real_in_V_data_V_0_payload_B(40),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(41),
      Q => real_in_V_data_V_0_payload_B(41),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(42),
      Q => real_in_V_data_V_0_payload_B(42),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(43),
      Q => real_in_V_data_V_0_payload_B(43),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(44),
      Q => real_in_V_data_V_0_payload_B(44),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(45),
      Q => real_in_V_data_V_0_payload_B(45),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(46),
      Q => real_in_V_data_V_0_payload_B(46),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(47),
      Q => real_in_V_data_V_0_payload_B(47),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(48),
      Q => real_in_V_data_V_0_payload_B(48),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(49),
      Q => real_in_V_data_V_0_payload_B(49),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(4),
      Q => real_in_V_data_V_0_payload_B(4),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(50),
      Q => real_in_V_data_V_0_payload_B(50),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(51),
      Q => real_in_V_data_V_0_payload_B(51),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(52),
      Q => real_in_V_data_V_0_payload_B(52),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(53),
      Q => real_in_V_data_V_0_payload_B(53),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(54),
      Q => real_in_V_data_V_0_payload_B(54),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(55),
      Q => real_in_V_data_V_0_payload_B(55),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(56),
      Q => real_in_V_data_V_0_payload_B(56),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(57),
      Q => real_in_V_data_V_0_payload_B(57),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(58),
      Q => real_in_V_data_V_0_payload_B(58),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(59),
      Q => real_in_V_data_V_0_payload_B(59),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(5),
      Q => real_in_V_data_V_0_payload_B(5),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(60),
      Q => real_in_V_data_V_0_payload_B(60),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(61),
      Q => real_in_V_data_V_0_payload_B(61),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(62),
      Q => real_in_V_data_V_0_payload_B(62),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(63),
      Q => real_in_V_data_V_0_payload_B(63),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(64),
      Q => real_in_V_data_V_0_payload_B(64),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(65),
      Q => real_in_V_data_V_0_payload_B(65),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(66),
      Q => real_in_V_data_V_0_payload_B(66),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(67),
      Q => real_in_V_data_V_0_payload_B(67),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(68),
      Q => real_in_V_data_V_0_payload_B(68),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(69),
      Q => real_in_V_data_V_0_payload_B(69),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(6),
      Q => real_in_V_data_V_0_payload_B(6),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(70),
      Q => real_in_V_data_V_0_payload_B(70),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(71),
      Q => real_in_V_data_V_0_payload_B(71),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(72),
      Q => real_in_V_data_V_0_payload_B(72),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(73),
      Q => real_in_V_data_V_0_payload_B(73),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(74),
      Q => real_in_V_data_V_0_payload_B(74),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(75),
      Q => real_in_V_data_V_0_payload_B(75),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(76),
      Q => real_in_V_data_V_0_payload_B(76),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(77),
      Q => real_in_V_data_V_0_payload_B(77),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(78),
      Q => real_in_V_data_V_0_payload_B(78),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(79),
      Q => real_in_V_data_V_0_payload_B(79),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(7),
      Q => real_in_V_data_V_0_payload_B(7),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(80),
      Q => real_in_V_data_V_0_payload_B(80),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(81),
      Q => real_in_V_data_V_0_payload_B(81),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(82),
      Q => real_in_V_data_V_0_payload_B(82),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(83),
      Q => real_in_V_data_V_0_payload_B(83),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(84),
      Q => real_in_V_data_V_0_payload_B(84),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(85),
      Q => real_in_V_data_V_0_payload_B(85),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(86),
      Q => real_in_V_data_V_0_payload_B(86),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(87),
      Q => real_in_V_data_V_0_payload_B(87),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(88),
      Q => real_in_V_data_V_0_payload_B(88),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(89),
      Q => real_in_V_data_V_0_payload_B(89),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(8),
      Q => real_in_V_data_V_0_payload_B(8),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(90),
      Q => real_in_V_data_V_0_payload_B(90),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(91),
      Q => real_in_V_data_V_0_payload_B(91),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(92),
      Q => real_in_V_data_V_0_payload_B(92),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(93),
      Q => real_in_V_data_V_0_payload_B(93),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(94),
      Q => real_in_V_data_V_0_payload_B(94),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(95),
      Q => real_in_V_data_V_0_payload_B(95),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(96),
      Q => real_in_V_data_V_0_payload_B(96),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(97),
      Q => real_in_V_data_V_0_payload_B(97),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(98),
      Q => real_in_V_data_V_0_payload_B(98),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(99),
      Q => real_in_V_data_V_0_payload_B(99),
      R => '0'
    );
\real_in_V_data_V_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => real_in_V_data_V_0_load_B,
      D => real_in_TDATA(9),
      Q => real_in_V_data_V_0_payload_B(9),
      R => '0'
    );
real_in_V_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^ap_ready\,
      I1 => \real_in_V_data_V_0_state_reg_n_0_[0]\,
      I2 => real_in_V_data_V_0_sel,
      O => real_in_V_data_V_0_sel_rd_i_1_n_0
    );
real_in_V_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => real_in_V_data_V_0_sel_rd_i_1_n_0,
      Q => real_in_V_data_V_0_sel,
      R => ap_rst_n_inv
    );
real_in_V_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => real_in_V_data_V_0_ack_in,
      I1 => real_in_TVALID,
      I2 => real_in_V_data_V_0_sel_wr,
      O => real_in_V_data_V_0_sel_wr_i_1_n_0
    );
real_in_V_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => real_in_V_data_V_0_sel_wr_i_1_n_0,
      Q => real_in_V_data_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\real_in_V_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => real_in_V_data_V_0_ack_in,
      I2 => \real_in_V_data_V_0_state_reg_n_0_[0]\,
      I3 => real_in_TVALID,
      I4 => \^ap_ready\,
      O => \real_in_V_data_V_0_state[0]_i_1_n_0\
    );
\real_in_V_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => \^ap_ready\,
      I1 => real_in_TVALID,
      I2 => real_in_V_data_V_0_ack_in,
      I3 => \real_in_V_data_V_0_state_reg_n_0_[0]\,
      O => \real_in_V_data_V_0_state[1]_i_1_n_0\
    );
\real_in_V_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \real_in_V_data_V_0_state[0]_i_1_n_0\,
      Q => \real_in_V_data_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\real_in_V_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \real_in_V_data_V_0_state[1]_i_1_n_0\,
      Q => real_in_V_data_V_0_ack_in,
      R => ap_rst_n_inv
    );
\real_in_V_last_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A820A8A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^real_in_tready\,
      I2 => \real_in_V_last_V_0_state_reg_n_0_[0]\,
      I3 => real_in_TVALID,
      I4 => \^ap_ready\,
      O => \real_in_V_last_V_0_state[0]_i_1_n_0\
    );
\real_in_V_last_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\real_in_V_last_V_0_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => \^ap_ready\,
      I1 => real_in_TVALID,
      I2 => \^real_in_tready\,
      I3 => \real_in_V_last_V_0_state_reg_n_0_[0]\,
      O => \real_in_V_last_V_0_state[1]_i_2_n_0\
    );
\real_in_V_last_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \real_in_V_last_V_0_state[0]_i_1_n_0\,
      Q => \real_in_V_last_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\real_in_V_last_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \real_in_V_last_V_0_state[1]_i_2_n_0\,
      Q => \^real_in_tready\,
      R => ap_rst_n_inv
    );
\soft_txn[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555557"
    )
        port map (
      I0 => soft_txn_reg(0),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[0]_i_10_n_0\
    );
\soft_txn[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      I4 => soft_txn_reg(0),
      O => \soft_txn[0]_i_2_n_0\
    );
\soft_txn[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(7),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[0]_i_3_n_0\
    );
\soft_txn[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(6),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[0]_i_4_n_0\
    );
\soft_txn[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(5),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[0]_i_5_n_0\
    );
\soft_txn[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(4),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[0]_i_6_n_0\
    );
\soft_txn[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(3),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[0]_i_7_n_0\
    );
\soft_txn[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(2),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[0]_i_8_n_0\
    );
\soft_txn[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(1),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[0]_i_9_n_0\
    );
\soft_txn[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(23),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[16]_i_2_n_0\
    );
\soft_txn[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(22),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[16]_i_3_n_0\
    );
\soft_txn[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(21),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[16]_i_4_n_0\
    );
\soft_txn[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(20),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[16]_i_5_n_0\
    );
\soft_txn[16]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(19),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[16]_i_6_n_0\
    );
\soft_txn[16]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(18),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[16]_i_7_n_0\
    );
\soft_txn[16]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(17),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[16]_i_8_n_0\
    );
\soft_txn[16]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(16),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[16]_i_9_n_0\
    );
\soft_txn[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(31),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[24]_i_2_n_0\
    );
\soft_txn[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(30),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[24]_i_3_n_0\
    );
\soft_txn[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(29),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[24]_i_4_n_0\
    );
\soft_txn[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(28),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[24]_i_5_n_0\
    );
\soft_txn[24]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(27),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[24]_i_6_n_0\
    );
\soft_txn[24]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(26),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[24]_i_7_n_0\
    );
\soft_txn[24]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(25),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[24]_i_8_n_0\
    );
\soft_txn[24]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(24),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[24]_i_9_n_0\
    );
\soft_txn[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(15),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[8]_i_2_n_0\
    );
\soft_txn[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(14),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[8]_i_3_n_0\
    );
\soft_txn[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(13),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[8]_i_4_n_0\
    );
\soft_txn[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(12),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[8]_i_5_n_0\
    );
\soft_txn[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(11),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[8]_i_6_n_0\
    );
\soft_txn[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(10),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[8]_i_7_n_0\
    );
\soft_txn[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(9),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[8]_i_8_n_0\
    );
\soft_txn[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => soft_txn_reg(8),
      I1 => \demod_out_V_last_V_1_payload_A[0]_i_5_n_0\,
      I2 => \demod_out_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \demod_out_V_last_V_1_payload_A[0]_i_3_n_0\,
      I4 => \demod_out_V_last_V_1_payload_A[0]_i_2_n_0\,
      O => \soft_txn[8]_i_9_n_0\
    );
\soft_txn_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[0]_i_1_n_15\,
      Q => soft_txn_reg(0),
      R => '0'
    );
\soft_txn_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \soft_txn_reg[0]_i_1_n_0\,
      CO(6) => \soft_txn_reg[0]_i_1_n_1\,
      CO(5) => \soft_txn_reg[0]_i_1_n_2\,
      CO(4) => \soft_txn_reg[0]_i_1_n_3\,
      CO(3) => \soft_txn_reg[0]_i_1_n_4\,
      CO(2) => \soft_txn_reg[0]_i_1_n_5\,
      CO(1) => \soft_txn_reg[0]_i_1_n_6\,
      CO(0) => \soft_txn_reg[0]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \soft_txn[0]_i_2_n_0\,
      O(7) => \soft_txn_reg[0]_i_1_n_8\,
      O(6) => \soft_txn_reg[0]_i_1_n_9\,
      O(5) => \soft_txn_reg[0]_i_1_n_10\,
      O(4) => \soft_txn_reg[0]_i_1_n_11\,
      O(3) => \soft_txn_reg[0]_i_1_n_12\,
      O(2) => \soft_txn_reg[0]_i_1_n_13\,
      O(1) => \soft_txn_reg[0]_i_1_n_14\,
      O(0) => \soft_txn_reg[0]_i_1_n_15\,
      S(7) => \soft_txn[0]_i_3_n_0\,
      S(6) => \soft_txn[0]_i_4_n_0\,
      S(5) => \soft_txn[0]_i_5_n_0\,
      S(4) => \soft_txn[0]_i_6_n_0\,
      S(3) => \soft_txn[0]_i_7_n_0\,
      S(2) => \soft_txn[0]_i_8_n_0\,
      S(1) => \soft_txn[0]_i_9_n_0\,
      S(0) => \soft_txn[0]_i_10_n_0\
    );
\soft_txn_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[8]_i_1_n_13\,
      Q => soft_txn_reg(10),
      R => '0'
    );
\soft_txn_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[8]_i_1_n_12\,
      Q => soft_txn_reg(11),
      R => '0'
    );
\soft_txn_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[8]_i_1_n_11\,
      Q => soft_txn_reg(12),
      R => '0'
    );
\soft_txn_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[8]_i_1_n_10\,
      Q => soft_txn_reg(13),
      R => '0'
    );
\soft_txn_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[8]_i_1_n_9\,
      Q => soft_txn_reg(14),
      R => '0'
    );
\soft_txn_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[8]_i_1_n_8\,
      Q => soft_txn_reg(15),
      R => '0'
    );
\soft_txn_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[16]_i_1_n_15\,
      Q => soft_txn_reg(16),
      R => '0'
    );
\soft_txn_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \soft_txn_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \soft_txn_reg[16]_i_1_n_0\,
      CO(6) => \soft_txn_reg[16]_i_1_n_1\,
      CO(5) => \soft_txn_reg[16]_i_1_n_2\,
      CO(4) => \soft_txn_reg[16]_i_1_n_3\,
      CO(3) => \soft_txn_reg[16]_i_1_n_4\,
      CO(2) => \soft_txn_reg[16]_i_1_n_5\,
      CO(1) => \soft_txn_reg[16]_i_1_n_6\,
      CO(0) => \soft_txn_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \soft_txn_reg[16]_i_1_n_8\,
      O(6) => \soft_txn_reg[16]_i_1_n_9\,
      O(5) => \soft_txn_reg[16]_i_1_n_10\,
      O(4) => \soft_txn_reg[16]_i_1_n_11\,
      O(3) => \soft_txn_reg[16]_i_1_n_12\,
      O(2) => \soft_txn_reg[16]_i_1_n_13\,
      O(1) => \soft_txn_reg[16]_i_1_n_14\,
      O(0) => \soft_txn_reg[16]_i_1_n_15\,
      S(7) => \soft_txn[16]_i_2_n_0\,
      S(6) => \soft_txn[16]_i_3_n_0\,
      S(5) => \soft_txn[16]_i_4_n_0\,
      S(4) => \soft_txn[16]_i_5_n_0\,
      S(3) => \soft_txn[16]_i_6_n_0\,
      S(2) => \soft_txn[16]_i_7_n_0\,
      S(1) => \soft_txn[16]_i_8_n_0\,
      S(0) => \soft_txn[16]_i_9_n_0\
    );
\soft_txn_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[16]_i_1_n_14\,
      Q => soft_txn_reg(17),
      R => '0'
    );
\soft_txn_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[16]_i_1_n_13\,
      Q => soft_txn_reg(18),
      R => '0'
    );
\soft_txn_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[16]_i_1_n_12\,
      Q => soft_txn_reg(19),
      R => '0'
    );
\soft_txn_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[0]_i_1_n_14\,
      Q => soft_txn_reg(1),
      R => '0'
    );
\soft_txn_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[16]_i_1_n_11\,
      Q => soft_txn_reg(20),
      R => '0'
    );
\soft_txn_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[16]_i_1_n_10\,
      Q => soft_txn_reg(21),
      R => '0'
    );
\soft_txn_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[16]_i_1_n_9\,
      Q => soft_txn_reg(22),
      R => '0'
    );
\soft_txn_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[16]_i_1_n_8\,
      Q => soft_txn_reg(23),
      R => '0'
    );
\soft_txn_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[24]_i_1_n_15\,
      Q => soft_txn_reg(24),
      R => '0'
    );
\soft_txn_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \soft_txn_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_soft_txn_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \soft_txn_reg[24]_i_1_n_1\,
      CO(5) => \soft_txn_reg[24]_i_1_n_2\,
      CO(4) => \soft_txn_reg[24]_i_1_n_3\,
      CO(3) => \soft_txn_reg[24]_i_1_n_4\,
      CO(2) => \soft_txn_reg[24]_i_1_n_5\,
      CO(1) => \soft_txn_reg[24]_i_1_n_6\,
      CO(0) => \soft_txn_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \soft_txn_reg[24]_i_1_n_8\,
      O(6) => \soft_txn_reg[24]_i_1_n_9\,
      O(5) => \soft_txn_reg[24]_i_1_n_10\,
      O(4) => \soft_txn_reg[24]_i_1_n_11\,
      O(3) => \soft_txn_reg[24]_i_1_n_12\,
      O(2) => \soft_txn_reg[24]_i_1_n_13\,
      O(1) => \soft_txn_reg[24]_i_1_n_14\,
      O(0) => \soft_txn_reg[24]_i_1_n_15\,
      S(7) => \soft_txn[24]_i_2_n_0\,
      S(6) => \soft_txn[24]_i_3_n_0\,
      S(5) => \soft_txn[24]_i_4_n_0\,
      S(4) => \soft_txn[24]_i_5_n_0\,
      S(3) => \soft_txn[24]_i_6_n_0\,
      S(2) => \soft_txn[24]_i_7_n_0\,
      S(1) => \soft_txn[24]_i_8_n_0\,
      S(0) => \soft_txn[24]_i_9_n_0\
    );
\soft_txn_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[24]_i_1_n_14\,
      Q => soft_txn_reg(25),
      R => '0'
    );
\soft_txn_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[24]_i_1_n_13\,
      Q => soft_txn_reg(26),
      R => '0'
    );
\soft_txn_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[24]_i_1_n_12\,
      Q => soft_txn_reg(27),
      R => '0'
    );
\soft_txn_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[24]_i_1_n_11\,
      Q => soft_txn_reg(28),
      R => '0'
    );
\soft_txn_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[24]_i_1_n_10\,
      Q => soft_txn_reg(29),
      R => '0'
    );
\soft_txn_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[0]_i_1_n_13\,
      Q => soft_txn_reg(2),
      R => '0'
    );
\soft_txn_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[24]_i_1_n_9\,
      Q => soft_txn_reg(30),
      R => '0'
    );
\soft_txn_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[24]_i_1_n_8\,
      Q => soft_txn_reg(31),
      R => '0'
    );
\soft_txn_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[0]_i_1_n_12\,
      Q => soft_txn_reg(3),
      R => '0'
    );
\soft_txn_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[0]_i_1_n_11\,
      Q => soft_txn_reg(4),
      R => '0'
    );
\soft_txn_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[0]_i_1_n_10\,
      Q => soft_txn_reg(5),
      R => '0'
    );
\soft_txn_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[0]_i_1_n_9\,
      Q => soft_txn_reg(6),
      R => '0'
    );
\soft_txn_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[0]_i_1_n_8\,
      Q => soft_txn_reg(7),
      R => '0'
    );
\soft_txn_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[8]_i_1_n_15\,
      Q => soft_txn_reg(8),
      R => '0'
    );
\soft_txn_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \soft_txn_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \soft_txn_reg[8]_i_1_n_0\,
      CO(6) => \soft_txn_reg[8]_i_1_n_1\,
      CO(5) => \soft_txn_reg[8]_i_1_n_2\,
      CO(4) => \soft_txn_reg[8]_i_1_n_3\,
      CO(3) => \soft_txn_reg[8]_i_1_n_4\,
      CO(2) => \soft_txn_reg[8]_i_1_n_5\,
      CO(1) => \soft_txn_reg[8]_i_1_n_6\,
      CO(0) => \soft_txn_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \soft_txn_reg[8]_i_1_n_8\,
      O(6) => \soft_txn_reg[8]_i_1_n_9\,
      O(5) => \soft_txn_reg[8]_i_1_n_10\,
      O(4) => \soft_txn_reg[8]_i_1_n_11\,
      O(3) => \soft_txn_reg[8]_i_1_n_12\,
      O(2) => \soft_txn_reg[8]_i_1_n_13\,
      O(1) => \soft_txn_reg[8]_i_1_n_14\,
      O(0) => \soft_txn_reg[8]_i_1_n_15\,
      S(7) => \soft_txn[8]_i_2_n_0\,
      S(6) => \soft_txn[8]_i_3_n_0\,
      S(5) => \soft_txn[8]_i_4_n_0\,
      S(4) => \soft_txn[8]_i_5_n_0\,
      S(3) => \soft_txn[8]_i_6_n_0\,
      S(2) => \soft_txn[8]_i_7_n_0\,
      S(1) => \soft_txn[8]_i_8_n_0\,
      S(0) => \soft_txn[8]_i_9_n_0\
    );
\soft_txn_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready\,
      D => \soft_txn_reg[8]_i_1_n_14\,
      Q => soft_txn_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_demodulation_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    demod_out_TVALID : out STD_LOGIC;
    demod_out_TREADY : in STD_LOGIC;
    demod_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    demod_out_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    real_in_TVALID : in STD_LOGIC;
    real_in_TREADY : out STD_LOGIC;
    real_in_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    real_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    imag_in_TVALID : in STD_LOGIC;
    imag_in_TREADY : out STD_LOGIC;
    imag_in_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    imag_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_demodulation_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_demodulation_0_0 : entity is "design_1_demodulation_0_0,demodulation,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_demodulation_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_demodulation_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_demodulation_0_0 : entity is "demodulation,Vivado 2018.3";
  attribute hls_module : string;
  attribute hls_module of design_1_demodulation_0_0 : entity is "yes";
end design_1_demodulation_0_0;

architecture STRUCTURE of design_1_demodulation_0_0 is
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF demod_out:real_in:imag_in, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_PARAMETER of ap_ready : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of demod_out_TREADY : signal is "xilinx.com:interface:axis:1.0 demod_out TREADY";
  attribute X_INTERFACE_INFO of demod_out_TVALID : signal is "xilinx.com:interface:axis:1.0 demod_out TVALID";
  attribute X_INTERFACE_INFO of imag_in_TREADY : signal is "xilinx.com:interface:axis:1.0 imag_in TREADY";
  attribute X_INTERFACE_INFO of imag_in_TVALID : signal is "xilinx.com:interface:axis:1.0 imag_in TVALID";
  attribute X_INTERFACE_INFO of real_in_TREADY : signal is "xilinx.com:interface:axis:1.0 real_in TREADY";
  attribute X_INTERFACE_INFO of real_in_TVALID : signal is "xilinx.com:interface:axis:1.0 real_in TVALID";
  attribute X_INTERFACE_INFO of demod_out_TDATA : signal is "xilinx.com:interface:axis:1.0 demod_out TDATA";
  attribute X_INTERFACE_PARAMETER of demod_out_TDATA : signal is "XIL_INTERFACENAME demod_out, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 128} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 128}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of demod_out_TLAST : signal is "xilinx.com:interface:axis:1.0 demod_out TLAST";
  attribute X_INTERFACE_INFO of imag_in_TDATA : signal is "xilinx.com:interface:axis:1.0 imag_in TDATA";
  attribute X_INTERFACE_INFO of imag_in_TLAST : signal is "xilinx.com:interface:axis:1.0 imag_in TLAST";
  attribute X_INTERFACE_PARAMETER of imag_in_TLAST : signal is "XIL_INTERFACENAME imag_in, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 128} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 128}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of real_in_TDATA : signal is "xilinx.com:interface:axis:1.0 real_in TDATA";
  attribute X_INTERFACE_INFO of real_in_TLAST : signal is "xilinx.com:interface:axis:1.0 real_in TLAST";
  attribute X_INTERFACE_PARAMETER of real_in_TLAST : signal is "XIL_INTERFACENAME real_in, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 128} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 128}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
inst: entity work.design_1_demodulation_0_0_demodulation
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      demod_out_TDATA(127 downto 0) => demod_out_TDATA(127 downto 0),
      demod_out_TLAST(0) => demod_out_TLAST(0),
      demod_out_TREADY => demod_out_TREADY,
      demod_out_TVALID => demod_out_TVALID,
      imag_in_TDATA(127 downto 0) => imag_in_TDATA(127 downto 0),
      imag_in_TLAST(0) => imag_in_TLAST(0),
      imag_in_TREADY => imag_in_TREADY,
      imag_in_TVALID => imag_in_TVALID,
      real_in_TDATA(127 downto 0) => real_in_TDATA(127 downto 0),
      real_in_TLAST(0) => real_in_TLAST(0),
      real_in_TREADY => real_in_TREADY,
      real_in_TVALID => real_in_TVALID
    );
end STRUCTURE;
