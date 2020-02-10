-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Feb 10 10:00:02 2020
-- Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_modulation_0_0_stub.vhdl
-- Design      : design_1_modulation_0_0
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
    sym_real_TVALID : out STD_LOGIC;
    sym_real_TREADY : in STD_LOGIC;
    sym_real_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    sym_real_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    sym_imag_TVALID : out STD_LOGIC;
    sym_imag_TREADY : in STD_LOGIC;
    sym_imag_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    sym_imag_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    bit_in_TVALID : in STD_LOGIC;
    bit_in_TREADY : out STD_LOGIC;
    bit_in_TDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    bit_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,sym_real_TVALID,sym_real_TREADY,sym_real_TDATA[127:0],sym_real_TLAST[0:0],sym_imag_TVALID,sym_imag_TREADY,sym_imag_TDATA[127:0],sym_imag_TLAST[0:0],bit_in_TVALID,bit_in_TREADY,bit_in_TDATA[127:0],bit_in_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "modulation,Vivado 2018.3";
begin
end;
