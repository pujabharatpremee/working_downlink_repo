-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Feb 10 10:08:18 2020
-- Host        : puja-MS-7B48 running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/puja/Desktop/working_downlink_chain/BBU/K_64_N_512_E_896/K_64_N_512_E_896.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_0/design_1_system_ila_0_0_stub.vhdl
-- Design      : design_1_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu21dr-ffvd1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXIS_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXIS_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_2_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXIS_tlast : in STD_LOGIC;
    SLOT_2_AXIS_tvalid : in STD_LOGIC;
    SLOT_2_AXIS_tready : in STD_LOGIC;
    SLOT_3_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXIS_tlast : in STD_LOGIC;
    SLOT_3_AXIS_tvalid : in STD_LOGIC;
    SLOT_3_AXIS_tready : in STD_LOGIC;
    SLOT_4_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_4_AXIS_tlast : in STD_LOGIC;
    SLOT_4_AXIS_tvalid : in STD_LOGIC;
    SLOT_4_AXIS_tready : in STD_LOGIC;
    SLOT_5_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXIS_tlast : in STD_LOGIC;
    SLOT_5_AXIS_tvalid : in STD_LOGIC;
    SLOT_5_AXIS_tready : in STD_LOGIC;
    SLOT_6_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_6_AXIS_tlast : in STD_LOGIC;
    SLOT_6_AXIS_tvalid : in STD_LOGIC;
    SLOT_6_AXIS_tready : in STD_LOGIC;
    SLOT_7_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_7_AXIS_tlast : in STD_LOGIC;
    SLOT_7_AXIS_tvalid : in STD_LOGIC;
    SLOT_7_AXIS_tready : in STD_LOGIC;
    SLOT_8_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_8_AXIS_tlast : in STD_LOGIC;
    SLOT_8_AXIS_tvalid : in STD_LOGIC;
    SLOT_8_AXIS_tready : in STD_LOGIC;
    SLOT_9_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_9_AXIS_tlast : in STD_LOGIC;
    SLOT_9_AXIS_tvalid : in STD_LOGIC;
    SLOT_9_AXIS_tready : in STD_LOGIC;
    SLOT_10_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_10_AXIS_tlast : in STD_LOGIC;
    SLOT_10_AXIS_tvalid : in STD_LOGIC;
    SLOT_10_AXIS_tready : in STD_LOGIC;
    SLOT_11_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXIS_tlast : in STD_LOGIC;
    SLOT_11_AXIS_tvalid : in STD_LOGIC;
    SLOT_11_AXIS_tready : in STD_LOGIC;
    SLOT_12_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_12_AXIS_tlast : in STD_LOGIC;
    SLOT_12_AXIS_tvalid : in STD_LOGIC;
    SLOT_12_AXIS_tready : in STD_LOGIC;
    SLOT_13_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_13_AXIS_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_13_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_13_AXIS_tlast : in STD_LOGIC;
    SLOT_13_AXIS_tvalid : in STD_LOGIC;
    SLOT_13_AXIS_tready : in STD_LOGIC;
    SLOT_14_AXIS_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_14_AXIS_tlast : in STD_LOGIC;
    SLOT_14_AXIS_tvalid : in STD_LOGIC;
    SLOT_14_AXIS_tready : in STD_LOGIC;
    SLOT_15_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_15_AXIS_tlast : in STD_LOGIC;
    SLOT_15_AXIS_tvalid : in STD_LOGIC;
    SLOT_15_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end design_1_system_ila_0_0;

architecture stub of design_1_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[0:0],probe1[0:0],SLOT_0_AXIS_tdata[31:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_AXIS_tid[7:0],SLOT_1_AXIS_tdest[7:0],SLOT_1_AXIS_tdata[31:0],SLOT_1_AXIS_tstrb[3:0],SLOT_1_AXIS_tkeep[3:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tuser[7:0],SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,SLOT_2_AXIS_tdata[31:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tdata[31:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXIS_tdata[127:0],SLOT_4_AXIS_tlast,SLOT_4_AXIS_tvalid,SLOT_4_AXIS_tready,SLOT_5_AXIS_tdata[31:0],SLOT_5_AXIS_tlast,SLOT_5_AXIS_tvalid,SLOT_5_AXIS_tready,SLOT_6_AXIS_tdata[127:0],SLOT_6_AXIS_tlast,SLOT_6_AXIS_tvalid,SLOT_6_AXIS_tready,SLOT_7_AXIS_tdata[127:0],SLOT_7_AXIS_tlast,SLOT_7_AXIS_tvalid,SLOT_7_AXIS_tready,SLOT_8_AXIS_tdata[127:0],SLOT_8_AXIS_tlast,SLOT_8_AXIS_tvalid,SLOT_8_AXIS_tready,SLOT_9_AXIS_tdata[127:0],SLOT_9_AXIS_tlast,SLOT_9_AXIS_tvalid,SLOT_9_AXIS_tready,SLOT_10_AXIS_tdata[127:0],SLOT_10_AXIS_tlast,SLOT_10_AXIS_tvalid,SLOT_10_AXIS_tready,SLOT_11_AXIS_tdata[31:0],SLOT_11_AXIS_tlast,SLOT_11_AXIS_tvalid,SLOT_11_AXIS_tready,SLOT_12_AXIS_tdata[31:0],SLOT_12_AXIS_tlast,SLOT_12_AXIS_tvalid,SLOT_12_AXIS_tready,SLOT_13_AXIS_tdata[31:0],SLOT_13_AXIS_tstrb[3:0],SLOT_13_AXIS_tkeep[3:0],SLOT_13_AXIS_tlast,SLOT_13_AXIS_tvalid,SLOT_13_AXIS_tready,SLOT_14_AXIS_tdata[127:0],SLOT_14_AXIS_tlast,SLOT_14_AXIS_tvalid,SLOT_14_AXIS_tready,SLOT_15_AXIS_tdata[31:0],SLOT_15_AXIS_tlast,SLOT_15_AXIS_tvalid,SLOT_15_AXIS_tready,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_f60c,Vivado 2018.3";
begin
end;
