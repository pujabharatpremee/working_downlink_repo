-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Feb 10 09:58:29 2020
-- Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/puja/Desktop/working_downlink_chain/BBU/K_64_N_512_E_896/K_64_N_512_E_896.srcs/sources_1/bd/design_1/ip/design_1_config_decoder_0_0/design_1_config_decoder_0_0_sim_netlist.vhdl
-- Design      : design_1_config_decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu21dr-ffvd1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_config_decoder_0_0_config_decoder is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    dec_ctrl_V_V_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dec_ctrl_V_V_TVALID : out STD_LOGIC;
    dec_ctrl_V_V_TREADY : in STD_LOGIC;
    dec_din_words_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dec_din_words_TVALID : out STD_LOGIC;
    dec_din_words_TREADY : in STD_LOGIC;
    dec_din_words_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    dec_dout_words_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dec_dout_words_TVALID : out STD_LOGIC;
    dec_dout_words_TREADY : in STD_LOGIC;
    dec_dout_words_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_config_decoder_0_0_config_decoder : entity is "config_decoder";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of design_1_config_decoder_0_0_config_decoder : entity is "2'b01";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of design_1_config_decoder_0_0_config_decoder : entity is "2'b10";
  attribute ap_const_lv32_0 : integer;
  attribute ap_const_lv32_0 of design_1_config_decoder_0_0_config_decoder : entity is 0;
  attribute hls_module : string;
  attribute hls_module of design_1_config_decoder_0_0_config_decoder : entity is "yes";
end design_1_config_decoder_0_0_config_decoder;

architecture STRUCTURE of design_1_config_decoder_0_0_config_decoder is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ap_done\ : STD_LOGIC;
  signal ap_ready_INST_0_i_1_n_0 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal dec_ctrl_V_V_1_ack_in : STD_LOGIC;
  signal \dec_ctrl_V_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \dec_ctrl_V_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^dec_ctrl_v_v_tvalid\ : STD_LOGIC;
  signal \^dec_din_words_tvalid\ : STD_LOGIC;
  signal \dec_din_words_V_data_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \dec_din_words_V_data_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \dec_din_words_V_data_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \dec_din_words_V_data_V_1_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \dec_din_words_V_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \dec_din_words_V_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \dec_din_words_V_last_V_1_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^dec_dout_words_tvalid\ : STD_LOGIC;
  signal \dec_dout_words_V_data_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \dec_dout_words_V_data_V_1_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \dec_dout_words_V_data_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \dec_dout_words_V_data_V_1_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \dec_dout_words_V_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \dec_dout_words_V_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \dec_dout_words_V_last_V_1_state_reg_n_0_[1]\ : STD_LOGIC;
  signal p_61_in : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dec_ctrl_V_V_1_state[0]_i_2\ : label is "soft_lutpair0";
begin
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_done\;
  dec_ctrl_V_V_TDATA(31) <= \<const0>\;
  dec_ctrl_V_V_TDATA(30) <= \<const0>\;
  dec_ctrl_V_V_TDATA(29) <= \<const0>\;
  dec_ctrl_V_V_TDATA(28) <= \<const0>\;
  dec_ctrl_V_V_TDATA(27) <= \<const0>\;
  dec_ctrl_V_V_TDATA(26) <= \<const0>\;
  dec_ctrl_V_V_TDATA(25) <= \<const0>\;
  dec_ctrl_V_V_TDATA(24) <= \<const0>\;
  dec_ctrl_V_V_TDATA(23) <= \<const0>\;
  dec_ctrl_V_V_TDATA(22) <= \<const0>\;
  dec_ctrl_V_V_TDATA(21) <= \<const0>\;
  dec_ctrl_V_V_TDATA(20) <= \<const0>\;
  dec_ctrl_V_V_TDATA(19) <= \<const0>\;
  dec_ctrl_V_V_TDATA(18) <= \<const0>\;
  dec_ctrl_V_V_TDATA(17) <= \<const0>\;
  dec_ctrl_V_V_TDATA(16) <= \<const0>\;
  dec_ctrl_V_V_TDATA(15) <= \<const0>\;
  dec_ctrl_V_V_TDATA(14) <= \<const0>\;
  dec_ctrl_V_V_TDATA(13) <= \<const0>\;
  dec_ctrl_V_V_TDATA(12) <= \<const0>\;
  dec_ctrl_V_V_TDATA(11) <= \<const0>\;
  dec_ctrl_V_V_TDATA(10) <= \<const0>\;
  dec_ctrl_V_V_TDATA(9) <= \<const0>\;
  dec_ctrl_V_V_TDATA(8) <= \<const0>\;
  dec_ctrl_V_V_TDATA(7) <= \<const0>\;
  dec_ctrl_V_V_TDATA(6) <= \<const0>\;
  dec_ctrl_V_V_TDATA(5) <= \<const0>\;
  dec_ctrl_V_V_TDATA(4) <= \<const0>\;
  dec_ctrl_V_V_TDATA(3) <= \<const0>\;
  dec_ctrl_V_V_TDATA(2) <= \<const0>\;
  dec_ctrl_V_V_TDATA(1) <= \<const0>\;
  dec_ctrl_V_V_TDATA(0) <= \<const0>\;
  dec_ctrl_V_V_TVALID <= \^dec_ctrl_v_v_tvalid\;
  dec_din_words_TDATA(7) <= \<const0>\;
  dec_din_words_TDATA(6) <= \<const0>\;
  dec_din_words_TDATA(5) <= \<const0>\;
  dec_din_words_TDATA(4) <= \<const1>\;
  dec_din_words_TDATA(3) <= \<const0>\;
  dec_din_words_TDATA(2) <= \<const0>\;
  dec_din_words_TDATA(1) <= \<const0>\;
  dec_din_words_TDATA(0) <= \<const0>\;
  dec_din_words_TLAST(0) <= \<const1>\;
  dec_din_words_TVALID <= \^dec_din_words_tvalid\;
  dec_dout_words_TDATA(7) <= \<const0>\;
  dec_dout_words_TDATA(6) <= \<const0>\;
  dec_dout_words_TDATA(5) <= \<const0>\;
  dec_dout_words_TDATA(4) <= \<const0>\;
  dec_dout_words_TDATA(3) <= \<const1>\;
  dec_dout_words_TDATA(2) <= \<const0>\;
  dec_dout_words_TDATA(1) <= \<const0>\;
  dec_dout_words_TDATA(0) <= \<const0>\;
  dec_dout_words_TLAST(0) <= \<const1>\;
  dec_dout_words_TVALID <= \^dec_dout_words_tvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0202"
    )
        port map (
      I0 => ap_ready_INST_0_i_1_n_0,
      I1 => \dec_dout_words_V_data_V_1_state_reg_n_0_[0]\,
      I2 => \ap_CS_fsm[1]_i_2_n_0\,
      I3 => p_61_in,
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD00FD"
    )
        port map (
      I0 => ap_ready_INST_0_i_1_n_0,
      I1 => \dec_dout_words_V_data_V_1_state_reg_n_0_[0]\,
      I2 => \ap_CS_fsm[1]_i_2_n_0\,
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => p_61_in,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^dec_din_words_tvalid\,
      I1 => \dec_din_words_V_data_V_1_state_reg_n_0_[0]\,
      I2 => \^dec_ctrl_v_v_tvalid\,
      I3 => \^dec_dout_words_tvalid\,
      O => \ap_CS_fsm[1]_i_2_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => ap_ready_INST_0_i_1_n_0,
      I1 => \dec_dout_words_V_data_V_1_state_reg_n_0_[0]\,
      I2 => \^dec_dout_words_tvalid\,
      I3 => \^dec_ctrl_v_v_tvalid\,
      I4 => \dec_din_words_V_data_V_1_state_reg_n_0_[0]\,
      I5 => \^dec_din_words_tvalid\,
      O => \^ap_done\
    );
ap_ready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \dec_din_words_V_last_V_1_state_reg_n_0_[1]\,
      I2 => dec_ctrl_V_V_1_ack_in,
      I3 => \dec_din_words_V_data_V_1_state_reg_n_0_[1]\,
      I4 => \dec_dout_words_V_last_V_1_state_reg_n_0_[1]\,
      I5 => \dec_dout_words_V_data_V_1_state_reg_n_0_[1]\,
      O => ap_ready_INST_0_i_1_n_0
    );
\dec_ctrl_V_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^dec_ctrl_v_v_tvalid\,
      I2 => dec_ctrl_V_V_1_ack_in,
      I3 => dec_ctrl_V_V_TREADY,
      I4 => p_61_in,
      O => \dec_ctrl_V_V_1_state[0]_i_1_n_0\
    );
\dec_ctrl_V_V_1_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => dec_ctrl_V_V_1_ack_in,
      I3 => \dec_din_words_V_data_V_1_state_reg_n_0_[1]\,
      I4 => \dec_dout_words_V_data_V_1_state_reg_n_0_[1]\,
      O => p_61_in
    );
\dec_ctrl_V_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3FB"
    )
        port map (
      I0 => dec_ctrl_V_V_1_ack_in,
      I1 => \^dec_ctrl_v_v_tvalid\,
      I2 => dec_ctrl_V_V_TREADY,
      I3 => p_61_in,
      O => \dec_ctrl_V_V_1_state[1]_i_1_n_0\
    );
\dec_ctrl_V_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_ctrl_V_V_1_state[0]_i_1_n_0\,
      Q => \^dec_ctrl_v_v_tvalid\,
      R => '0'
    );
\dec_ctrl_V_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_ctrl_V_V_1_state[1]_i_1_n_0\,
      Q => dec_ctrl_V_V_1_ack_in,
      R => ap_rst_n_inv
    );
\dec_din_words_V_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \dec_din_words_V_data_V_1_state_reg_n_0_[0]\,
      I2 => \dec_din_words_V_data_V_1_state_reg_n_0_[1]\,
      I3 => dec_din_words_TREADY,
      I4 => p_61_in,
      O => \dec_din_words_V_data_V_1_state[0]_i_1_n_0\
    );
\dec_din_words_V_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFCF"
    )
        port map (
      I0 => p_61_in,
      I1 => dec_din_words_TREADY,
      I2 => \dec_din_words_V_data_V_1_state_reg_n_0_[0]\,
      I3 => \dec_din_words_V_data_V_1_state_reg_n_0_[1]\,
      O => \dec_din_words_V_data_V_1_state[1]_i_1_n_0\
    );
\dec_din_words_V_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_din_words_V_data_V_1_state[0]_i_1_n_0\,
      Q => \dec_din_words_V_data_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\dec_din_words_V_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_din_words_V_data_V_1_state[1]_i_1_n_0\,
      Q => \dec_din_words_V_data_V_1_state_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\dec_din_words_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^dec_din_words_tvalid\,
      I2 => \dec_din_words_V_last_V_1_state_reg_n_0_[1]\,
      I3 => dec_din_words_TREADY,
      I4 => p_61_in,
      O => \dec_din_words_V_last_V_1_state[0]_i_1_n_0\
    );
\dec_din_words_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFCF"
    )
        port map (
      I0 => p_61_in,
      I1 => dec_din_words_TREADY,
      I2 => \^dec_din_words_tvalid\,
      I3 => \dec_din_words_V_last_V_1_state_reg_n_0_[1]\,
      O => \dec_din_words_V_last_V_1_state[1]_i_1_n_0\
    );
\dec_din_words_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_din_words_V_last_V_1_state[0]_i_1_n_0\,
      Q => \^dec_din_words_tvalid\,
      R => '0'
    );
\dec_din_words_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_din_words_V_last_V_1_state[1]_i_1_n_0\,
      Q => \dec_din_words_V_last_V_1_state_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\dec_dout_words_V_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \dec_dout_words_V_data_V_1_state_reg_n_0_[0]\,
      I2 => \dec_dout_words_V_data_V_1_state_reg_n_0_[1]\,
      I3 => dec_dout_words_TREADY,
      I4 => p_61_in,
      O => \dec_dout_words_V_data_V_1_state[0]_i_1_n_0\
    );
\dec_dout_words_V_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\dec_dout_words_V_data_V_1_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3FB"
    )
        port map (
      I0 => \dec_dout_words_V_data_V_1_state_reg_n_0_[1]\,
      I1 => \dec_dout_words_V_data_V_1_state_reg_n_0_[0]\,
      I2 => dec_dout_words_TREADY,
      I3 => p_61_in,
      O => \dec_dout_words_V_data_V_1_state[1]_i_2_n_0\
    );
\dec_dout_words_V_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_dout_words_V_data_V_1_state[0]_i_1_n_0\,
      Q => \dec_dout_words_V_data_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\dec_dout_words_V_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_dout_words_V_data_V_1_state[1]_i_2_n_0\,
      Q => \dec_dout_words_V_data_V_1_state_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\dec_dout_words_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A80888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^dec_dout_words_tvalid\,
      I2 => \dec_dout_words_V_last_V_1_state_reg_n_0_[1]\,
      I3 => dec_dout_words_TREADY,
      I4 => p_61_in,
      O => \dec_dout_words_V_last_V_1_state[0]_i_1_n_0\
    );
\dec_dout_words_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFCF"
    )
        port map (
      I0 => p_61_in,
      I1 => dec_dout_words_TREADY,
      I2 => \^dec_dout_words_tvalid\,
      I3 => \dec_dout_words_V_last_V_1_state_reg_n_0_[1]\,
      O => \dec_dout_words_V_last_V_1_state[1]_i_1_n_0\
    );
\dec_dout_words_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_dout_words_V_last_V_1_state[0]_i_1_n_0\,
      Q => \^dec_dout_words_tvalid\,
      R => '0'
    );
\dec_dout_words_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dec_dout_words_V_last_V_1_state[1]_i_1_n_0\,
      Q => \dec_dout_words_V_last_V_1_state_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_config_decoder_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    dec_ctrl_V_V_TVALID : out STD_LOGIC;
    dec_ctrl_V_V_TREADY : in STD_LOGIC;
    dec_ctrl_V_V_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dec_din_words_TVALID : out STD_LOGIC;
    dec_din_words_TREADY : in STD_LOGIC;
    dec_din_words_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dec_din_words_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    dec_dout_words_TVALID : out STD_LOGIC;
    dec_dout_words_TREADY : in STD_LOGIC;
    dec_dout_words_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dec_dout_words_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_config_decoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_config_decoder_0_0 : entity is "design_1_config_decoder_0_0,config_decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_config_decoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_config_decoder_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_config_decoder_0_0 : entity is "config_decoder,Vivado 2018.3";
  attribute hls_module : string;
  attribute hls_module of design_1_config_decoder_0_0 : entity is "yes";
end design_1_config_decoder_0_0;

architecture STRUCTURE of design_1_config_decoder_0_0 is
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "2'b01";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "2'b10";
  attribute ap_const_lv32_0 : integer;
  attribute ap_const_lv32_0 of inst : label is 0;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF dec_ctrl_V_V:dec_din_words:dec_dout_words, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_PARAMETER of ap_ready : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of dec_ctrl_V_V_TREADY : signal is "xilinx.com:interface:axis:1.0 dec_ctrl_V_V TREADY";
  attribute X_INTERFACE_INFO of dec_ctrl_V_V_TVALID : signal is "xilinx.com:interface:axis:1.0 dec_ctrl_V_V TVALID";
  attribute X_INTERFACE_INFO of dec_din_words_TREADY : signal is "xilinx.com:interface:axis:1.0 dec_din_words TREADY";
  attribute X_INTERFACE_INFO of dec_din_words_TVALID : signal is "xilinx.com:interface:axis:1.0 dec_din_words TVALID";
  attribute X_INTERFACE_INFO of dec_dout_words_TREADY : signal is "xilinx.com:interface:axis:1.0 dec_dout_words TREADY";
  attribute X_INTERFACE_INFO of dec_dout_words_TVALID : signal is "xilinx.com:interface:axis:1.0 dec_dout_words TVALID";
  attribute X_INTERFACE_INFO of dec_ctrl_V_V_TDATA : signal is "xilinx.com:interface:axis:1.0 dec_ctrl_V_V TDATA";
  attribute X_INTERFACE_PARAMETER of dec_ctrl_V_V_TDATA : signal is "XIL_INTERFACENAME dec_ctrl_V_V, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dec_din_words_TDATA : signal is "xilinx.com:interface:axis:1.0 dec_din_words TDATA";
  attribute X_INTERFACE_INFO of dec_din_words_TLAST : signal is "xilinx.com:interface:axis:1.0 dec_din_words TLAST";
  attribute X_INTERFACE_PARAMETER of dec_din_words_TLAST : signal is "XIL_INTERFACENAME dec_din_words, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dec_dout_words_TDATA : signal is "xilinx.com:interface:axis:1.0 dec_dout_words TDATA";
  attribute X_INTERFACE_INFO of dec_dout_words_TLAST : signal is "xilinx.com:interface:axis:1.0 dec_dout_words TLAST";
  attribute X_INTERFACE_PARAMETER of dec_dout_words_TLAST : signal is "XIL_INTERFACENAME dec_dout_words, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
inst: entity work.design_1_config_decoder_0_0_config_decoder
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      dec_ctrl_V_V_TDATA(31 downto 0) => dec_ctrl_V_V_TDATA(31 downto 0),
      dec_ctrl_V_V_TREADY => dec_ctrl_V_V_TREADY,
      dec_ctrl_V_V_TVALID => dec_ctrl_V_V_TVALID,
      dec_din_words_TDATA(7 downto 0) => dec_din_words_TDATA(7 downto 0),
      dec_din_words_TLAST(0) => dec_din_words_TLAST(0),
      dec_din_words_TREADY => dec_din_words_TREADY,
      dec_din_words_TVALID => dec_din_words_TVALID,
      dec_dout_words_TDATA(7 downto 0) => dec_dout_words_TDATA(7 downto 0),
      dec_dout_words_TLAST(0) => dec_dout_words_TLAST(0),
      dec_dout_words_TREADY => dec_dout_words_TREADY,
      dec_dout_words_TVALID => dec_dout_words_TVALID
    );
end STRUCTURE;
