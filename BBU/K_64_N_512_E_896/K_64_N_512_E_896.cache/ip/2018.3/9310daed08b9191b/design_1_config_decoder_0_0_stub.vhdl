-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Feb 10 09:58:28 2020
-- Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_config_decoder_0_0_stub.vhdl
-- Design      : design_1_config_decoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu21dr-ffvd1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,dec_ctrl_V_V_TVALID,dec_ctrl_V_V_TREADY,dec_ctrl_V_V_TDATA[31:0],dec_din_words_TVALID,dec_din_words_TREADY,dec_din_words_TDATA[7:0],dec_din_words_TLAST[0:0],dec_dout_words_TVALID,dec_dout_words_TREADY,dec_dout_words_TDATA[7:0],dec_dout_words_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "config_decoder,Vivado 2018.3";
begin
end;
