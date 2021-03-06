-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Feb 10 12:07:47 2020
-- Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/puja/Desktop/working_downlink_chain/BBU/K_64_N_512_E_896/K_64_N_512_E_896.srcs/sources_1/bd/design_1/ip/design_1_dec_0/design_1_dec_0_stub.vhdl
-- Design      : design_1_dec_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu21dr-ffvd1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_dec_0 is
  Port ( 
    reset_n : in STD_LOGIC;
    core_clk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_din_words_tready : out STD_LOGIC;
    s_axis_din_words_tvalid : in STD_LOGIC;
    s_axis_din_words_tlast : in STD_LOGIC;
    s_axis_din_words_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_ctrl_tready : out STD_LOGIC;
    s_axis_ctrl_tvalid : in STD_LOGIC;
    s_axis_ctrl_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_din_tready : out STD_LOGIC;
    s_axis_din_tvalid : in STD_LOGIC;
    s_axis_din_tlast : in STD_LOGIC;
    s_axis_din_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_status_tready : in STD_LOGIC;
    m_axis_status_tvalid : out STD_LOGIC;
    m_axis_status_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_dout_words_tready : out STD_LOGIC;
    s_axis_dout_words_tvalid : in STD_LOGIC;
    s_axis_dout_words_tlast : in STD_LOGIC;
    s_axis_dout_words_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_dout_tready : in STD_LOGIC;
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tlast : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end design_1_dec_0;

architecture stub of design_1_dec_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset_n,core_clk,s_axi_awaddr[17:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_bready,s_axi_bvalid,s_axi_araddr[17:0],s_axi_arvalid,s_axi_arready,s_axi_rready,s_axi_rdata[31:0],s_axi_rvalid,interrupt,s_axis_din_words_tready,s_axis_din_words_tvalid,s_axis_din_words_tlast,s_axis_din_words_tdata[7:0],s_axis_ctrl_tready,s_axis_ctrl_tvalid,s_axis_ctrl_tdata[31:0],s_axis_din_tready,s_axis_din_tvalid,s_axis_din_tlast,s_axis_din_tdata[127:0],m_axis_status_tready,m_axis_status_tvalid,m_axis_status_tdata[31:0],s_axis_dout_words_tready,s_axis_dout_words_tvalid,s_axis_dout_words_tlast,s_axis_dout_words_tdata[7:0],m_axis_dout_tready,m_axis_dout_tvalid,m_axis_dout_tlast,m_axis_dout_tdata[127:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "polar_v1_0_2,Vivado 2018.3";
begin
end;
