-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity config_encoder is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    enc_ctrl_V_V_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    enc_ctrl_V_V_TVALID : OUT STD_LOGIC;
    enc_ctrl_V_V_TREADY : IN STD_LOGIC;
    din_words_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    din_words_TVALID : OUT STD_LOGIC;
    din_words_TREADY : IN STD_LOGIC;
    din_words_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    dout_words_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    dout_words_TVALID : OUT STD_LOGIC;
    dout_words_TREADY : IN STD_LOGIC;
    dout_words_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of config_encoder is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "config_encoder,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu21dr-ffvd1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=82,HLS_SYN_LUT=142,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv8_4 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_const_lv8_10 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal enc_ctrl_V_V_1_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal enc_ctrl_V_V_1_vld_in : STD_LOGIC;
    signal enc_ctrl_V_V_1_vld_out : STD_LOGIC;
    signal enc_ctrl_V_V_1_ack_in : STD_LOGIC;
    signal enc_ctrl_V_V_1_ack_out : STD_LOGIC;
    signal enc_ctrl_V_V_1_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal enc_ctrl_V_V_1_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal enc_ctrl_V_V_1_sel_rd : STD_LOGIC := '0';
    signal enc_ctrl_V_V_1_sel_wr : STD_LOGIC := '0';
    signal enc_ctrl_V_V_1_sel : STD_LOGIC;
    signal enc_ctrl_V_V_1_load_A : STD_LOGIC;
    signal enc_ctrl_V_V_1_load_B : STD_LOGIC;
    signal enc_ctrl_V_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal enc_ctrl_V_V_1_state_cmp_full : STD_LOGIC;
    signal din_words_V_data_V_1_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal din_words_V_data_V_1_vld_in : STD_LOGIC;
    signal din_words_V_data_V_1_vld_out : STD_LOGIC;
    signal din_words_V_data_V_1_ack_in : STD_LOGIC;
    signal din_words_V_data_V_1_ack_out : STD_LOGIC;
    signal din_words_V_data_V_1_sel_rd : STD_LOGIC := '0';
    signal din_words_V_data_V_1_sel : STD_LOGIC;
    signal din_words_V_data_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal din_words_V_last_V_1_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal din_words_V_last_V_1_vld_in : STD_LOGIC;
    signal din_words_V_last_V_1_vld_out : STD_LOGIC;
    signal din_words_V_last_V_1_ack_in : STD_LOGIC;
    signal din_words_V_last_V_1_ack_out : STD_LOGIC;
    signal din_words_V_last_V_1_sel_rd : STD_LOGIC := '0';
    signal din_words_V_last_V_1_sel : STD_LOGIC;
    signal din_words_V_last_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal dout_words_V_data_V_1_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal dout_words_V_data_V_1_vld_in : STD_LOGIC;
    signal dout_words_V_data_V_1_vld_out : STD_LOGIC;
    signal dout_words_V_data_V_1_ack_in : STD_LOGIC;
    signal dout_words_V_data_V_1_ack_out : STD_LOGIC;
    signal dout_words_V_data_V_1_sel_rd : STD_LOGIC := '0';
    signal dout_words_V_data_V_1_sel : STD_LOGIC;
    signal dout_words_V_data_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal dout_words_V_last_V_1_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal dout_words_V_last_V_1_vld_in : STD_LOGIC;
    signal dout_words_V_last_V_1_vld_out : STD_LOGIC;
    signal dout_words_V_last_V_1_ack_in : STD_LOGIC;
    signal dout_words_V_last_V_1_ack_out : STD_LOGIC;
    signal dout_words_V_last_V_1_sel_rd : STD_LOGIC := '0';
    signal dout_words_V_last_V_1_sel : STD_LOGIC;
    signal dout_words_V_last_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal enc_ctrl_V_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal din_words_TDATA_blk_n : STD_LOGIC;
    signal dout_words_TDATA_blk_n : STD_LOGIC;
    signal p_Result_2_fu_117_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1_io : BOOLEAN;
    signal p_Result_s_fu_93_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_1_fu_105_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    din_words_V_data_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                din_words_V_data_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((din_words_V_data_V_1_vld_out = ap_const_logic_1) and (din_words_V_data_V_1_ack_out = ap_const_logic_1))) then 
                                        din_words_V_data_V_1_sel_rd <= not(din_words_V_data_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    din_words_V_data_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                din_words_V_data_V_1_state <= ap_const_lv2_0;
            else
                if ((((din_words_V_data_V_1_state = ap_const_lv2_2) and (din_words_V_data_V_1_vld_in = ap_const_logic_0)) or ((din_words_V_data_V_1_state = ap_const_lv2_3) and (din_words_V_data_V_1_vld_in = ap_const_logic_0) and (din_words_V_data_V_1_ack_out = ap_const_logic_1)))) then 
                    din_words_V_data_V_1_state <= ap_const_lv2_2;
                elsif ((((din_words_V_data_V_1_state = ap_const_lv2_1) and (din_words_V_data_V_1_ack_out = ap_const_logic_0)) or ((din_words_V_data_V_1_state = ap_const_lv2_3) and (din_words_V_data_V_1_ack_out = ap_const_logic_0) and (din_words_V_data_V_1_vld_in = ap_const_logic_1)))) then 
                    din_words_V_data_V_1_state <= ap_const_lv2_1;
                elsif (((not(((din_words_V_data_V_1_vld_in = ap_const_logic_0) and (din_words_V_data_V_1_ack_out = ap_const_logic_1))) and not(((din_words_V_data_V_1_ack_out = ap_const_logic_0) and (din_words_V_data_V_1_vld_in = ap_const_logic_1))) and (din_words_V_data_V_1_state = ap_const_lv2_3)) or ((din_words_V_data_V_1_state = ap_const_lv2_1) and (din_words_V_data_V_1_ack_out = ap_const_logic_1)) or ((din_words_V_data_V_1_state = ap_const_lv2_2) and (din_words_V_data_V_1_vld_in = ap_const_logic_1)))) then 
                    din_words_V_data_V_1_state <= ap_const_lv2_3;
                else 
                    din_words_V_data_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    din_words_V_last_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                din_words_V_last_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((din_words_V_last_V_1_ack_out = ap_const_logic_1) and (din_words_V_last_V_1_vld_out = ap_const_logic_1))) then 
                                        din_words_V_last_V_1_sel_rd <= not(din_words_V_last_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    din_words_V_last_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                din_words_V_last_V_1_state <= ap_const_lv2_0;
            else
                if ((((din_words_V_last_V_1_state = ap_const_lv2_2) and (din_words_V_last_V_1_vld_in = ap_const_logic_0)) or ((din_words_V_last_V_1_state = ap_const_lv2_3) and (din_words_V_last_V_1_vld_in = ap_const_logic_0) and (din_words_V_last_V_1_ack_out = ap_const_logic_1)))) then 
                    din_words_V_last_V_1_state <= ap_const_lv2_2;
                elsif ((((din_words_V_last_V_1_state = ap_const_lv2_1) and (din_words_V_last_V_1_ack_out = ap_const_logic_0)) or ((din_words_V_last_V_1_state = ap_const_lv2_3) and (din_words_V_last_V_1_ack_out = ap_const_logic_0) and (din_words_V_last_V_1_vld_in = ap_const_logic_1)))) then 
                    din_words_V_last_V_1_state <= ap_const_lv2_1;
                elsif (((not(((din_words_V_last_V_1_vld_in = ap_const_logic_0) and (din_words_V_last_V_1_ack_out = ap_const_logic_1))) and not(((din_words_V_last_V_1_ack_out = ap_const_logic_0) and (din_words_V_last_V_1_vld_in = ap_const_logic_1))) and (din_words_V_last_V_1_state = ap_const_lv2_3)) or ((din_words_V_last_V_1_state = ap_const_lv2_1) and (din_words_V_last_V_1_ack_out = ap_const_logic_1)) or ((din_words_V_last_V_1_state = ap_const_lv2_2) and (din_words_V_last_V_1_vld_in = ap_const_logic_1)))) then 
                    din_words_V_last_V_1_state <= ap_const_lv2_3;
                else 
                    din_words_V_last_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    dout_words_V_data_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                dout_words_V_data_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((dout_words_V_data_V_1_ack_out = ap_const_logic_1) and (dout_words_V_data_V_1_vld_out = ap_const_logic_1))) then 
                                        dout_words_V_data_V_1_sel_rd <= not(dout_words_V_data_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    dout_words_V_data_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                dout_words_V_data_V_1_state <= ap_const_lv2_0;
            else
                if ((((dout_words_V_data_V_1_state = ap_const_lv2_2) and (dout_words_V_data_V_1_vld_in = ap_const_logic_0)) or ((dout_words_V_data_V_1_state = ap_const_lv2_3) and (dout_words_V_data_V_1_vld_in = ap_const_logic_0) and (dout_words_V_data_V_1_ack_out = ap_const_logic_1)))) then 
                    dout_words_V_data_V_1_state <= ap_const_lv2_2;
                elsif ((((dout_words_V_data_V_1_state = ap_const_lv2_1) and (dout_words_V_data_V_1_ack_out = ap_const_logic_0)) or ((dout_words_V_data_V_1_state = ap_const_lv2_3) and (dout_words_V_data_V_1_ack_out = ap_const_logic_0) and (dout_words_V_data_V_1_vld_in = ap_const_logic_1)))) then 
                    dout_words_V_data_V_1_state <= ap_const_lv2_1;
                elsif (((not(((dout_words_V_data_V_1_vld_in = ap_const_logic_0) and (dout_words_V_data_V_1_ack_out = ap_const_logic_1))) and not(((dout_words_V_data_V_1_ack_out = ap_const_logic_0) and (dout_words_V_data_V_1_vld_in = ap_const_logic_1))) and (dout_words_V_data_V_1_state = ap_const_lv2_3)) or ((dout_words_V_data_V_1_state = ap_const_lv2_1) and (dout_words_V_data_V_1_ack_out = ap_const_logic_1)) or ((dout_words_V_data_V_1_state = ap_const_lv2_2) and (dout_words_V_data_V_1_vld_in = ap_const_logic_1)))) then 
                    dout_words_V_data_V_1_state <= ap_const_lv2_3;
                else 
                    dout_words_V_data_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    dout_words_V_last_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                dout_words_V_last_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((dout_words_V_last_V_1_ack_out = ap_const_logic_1) and (dout_words_V_last_V_1_vld_out = ap_const_logic_1))) then 
                                        dout_words_V_last_V_1_sel_rd <= not(dout_words_V_last_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    dout_words_V_last_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                dout_words_V_last_V_1_state <= ap_const_lv2_0;
            else
                if ((((dout_words_V_last_V_1_state = ap_const_lv2_2) and (dout_words_V_last_V_1_vld_in = ap_const_logic_0)) or ((dout_words_V_last_V_1_state = ap_const_lv2_3) and (dout_words_V_last_V_1_vld_in = ap_const_logic_0) and (dout_words_V_last_V_1_ack_out = ap_const_logic_1)))) then 
                    dout_words_V_last_V_1_state <= ap_const_lv2_2;
                elsif ((((dout_words_V_last_V_1_state = ap_const_lv2_1) and (dout_words_V_last_V_1_ack_out = ap_const_logic_0)) or ((dout_words_V_last_V_1_state = ap_const_lv2_3) and (dout_words_V_last_V_1_ack_out = ap_const_logic_0) and (dout_words_V_last_V_1_vld_in = ap_const_logic_1)))) then 
                    dout_words_V_last_V_1_state <= ap_const_lv2_1;
                elsif (((not(((dout_words_V_last_V_1_vld_in = ap_const_logic_0) and (dout_words_V_last_V_1_ack_out = ap_const_logic_1))) and not(((dout_words_V_last_V_1_ack_out = ap_const_logic_0) and (dout_words_V_last_V_1_vld_in = ap_const_logic_1))) and (dout_words_V_last_V_1_state = ap_const_lv2_3)) or ((dout_words_V_last_V_1_state = ap_const_lv2_1) and (dout_words_V_last_V_1_ack_out = ap_const_logic_1)) or ((dout_words_V_last_V_1_state = ap_const_lv2_2) and (dout_words_V_last_V_1_vld_in = ap_const_logic_1)))) then 
                    dout_words_V_last_V_1_state <= ap_const_lv2_3;
                else 
                    dout_words_V_last_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    enc_ctrl_V_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                enc_ctrl_V_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((enc_ctrl_V_V_1_ack_out = ap_const_logic_1) and (enc_ctrl_V_V_1_vld_out = ap_const_logic_1))) then 
                                        enc_ctrl_V_V_1_sel_rd <= not(enc_ctrl_V_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    enc_ctrl_V_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                enc_ctrl_V_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((enc_ctrl_V_V_1_ack_in = ap_const_logic_1) and (enc_ctrl_V_V_1_vld_in = ap_const_logic_1))) then 
                                        enc_ctrl_V_V_1_sel_wr <= not(enc_ctrl_V_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    enc_ctrl_V_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                enc_ctrl_V_V_1_state <= ap_const_lv2_0;
            else
                if ((((enc_ctrl_V_V_1_state = ap_const_lv2_2) and (enc_ctrl_V_V_1_vld_in = ap_const_logic_0)) or ((enc_ctrl_V_V_1_state = ap_const_lv2_3) and (enc_ctrl_V_V_1_vld_in = ap_const_logic_0) and (enc_ctrl_V_V_1_ack_out = ap_const_logic_1)))) then 
                    enc_ctrl_V_V_1_state <= ap_const_lv2_2;
                elsif ((((enc_ctrl_V_V_1_state = ap_const_lv2_1) and (enc_ctrl_V_V_1_ack_out = ap_const_logic_0)) or ((enc_ctrl_V_V_1_state = ap_const_lv2_3) and (enc_ctrl_V_V_1_ack_out = ap_const_logic_0) and (enc_ctrl_V_V_1_vld_in = ap_const_logic_1)))) then 
                    enc_ctrl_V_V_1_state <= ap_const_lv2_1;
                elsif (((not(((enc_ctrl_V_V_1_vld_in = ap_const_logic_0) and (enc_ctrl_V_V_1_ack_out = ap_const_logic_1))) and not(((enc_ctrl_V_V_1_ack_out = ap_const_logic_0) and (enc_ctrl_V_V_1_vld_in = ap_const_logic_1))) and (enc_ctrl_V_V_1_state = ap_const_lv2_3)) or ((enc_ctrl_V_V_1_state = ap_const_lv2_1) and (enc_ctrl_V_V_1_ack_out = ap_const_logic_1)) or ((enc_ctrl_V_V_1_state = ap_const_lv2_2) and (enc_ctrl_V_V_1_vld_in = ap_const_logic_1)))) then 
                    enc_ctrl_V_V_1_state <= ap_const_lv2_3;
                else 
                    enc_ctrl_V_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((enc_ctrl_V_V_1_load_A = ap_const_logic_1)) then
                enc_ctrl_V_V_1_payload_A <= p_Result_2_fu_117_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((enc_ctrl_V_V_1_load_B = ap_const_logic_1)) then
                enc_ctrl_V_V_1_payload_B <= p_Result_2_fu_117_p5;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, enc_ctrl_V_V_1_ack_in, enc_ctrl_V_V_1_state, din_words_V_data_V_1_ack_in, din_words_V_data_V_1_state, din_words_V_last_V_1_ack_in, din_words_V_last_V_1_state, dout_words_V_data_V_1_ack_in, dout_words_V_data_V_1_state, dout_words_V_last_V_1_ack_in, dout_words_V_last_V_1_state, ap_CS_fsm_state2, ap_block_state1_io, ap_block_state2_io)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state1_io))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not(((din_words_V_data_V_1_ack_in = ap_const_logic_0) or (enc_ctrl_V_V_1_ack_in = ap_const_logic_0) or (dout_words_V_last_V_1_ack_in = ap_const_logic_0) or (dout_words_V_data_V_1_ack_in = ap_const_logic_0) or (din_words_V_last_V_1_ack_in = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state2_io))) and (enc_ctrl_V_V_1_state(0) = ap_const_logic_0) and (dout_words_V_last_V_1_state(0) = ap_const_logic_0) and (dout_words_V_data_V_1_state(0) = ap_const_logic_0) and (din_words_V_last_V_1_state(0) = ap_const_logic_0) and (din_words_V_data_V_1_state(0) = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_block_state1_io_assign_proc : process(enc_ctrl_V_V_1_ack_in, din_words_V_data_V_1_ack_in, dout_words_V_data_V_1_ack_in)
    begin
                ap_block_state1_io <= ((din_words_V_data_V_1_ack_in = ap_const_logic_0) or (enc_ctrl_V_V_1_ack_in = ap_const_logic_0) or (dout_words_V_data_V_1_ack_in = ap_const_logic_0));
    end process;


    ap_block_state2_assign_proc : process(enc_ctrl_V_V_1_ack_in, din_words_V_data_V_1_ack_in, din_words_V_last_V_1_ack_in, dout_words_V_data_V_1_ack_in, dout_words_V_last_V_1_ack_in)
    begin
                ap_block_state2 <= ((din_words_V_data_V_1_ack_in = ap_const_logic_0) or (enc_ctrl_V_V_1_ack_in = ap_const_logic_0) or (dout_words_V_last_V_1_ack_in = ap_const_logic_0) or (dout_words_V_data_V_1_ack_in = ap_const_logic_0) or (din_words_V_last_V_1_ack_in = ap_const_logic_0));
    end process;


    ap_block_state2_io_assign_proc : process(enc_ctrl_V_V_1_ack_in, din_words_V_data_V_1_ack_in, dout_words_V_data_V_1_ack_in)
    begin
                ap_block_state2_io <= ((din_words_V_data_V_1_ack_in = ap_const_logic_0) or (enc_ctrl_V_V_1_ack_in = ap_const_logic_0) or (dout_words_V_data_V_1_ack_in = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(enc_ctrl_V_V_1_ack_in, enc_ctrl_V_V_1_state, din_words_V_data_V_1_ack_in, din_words_V_data_V_1_state, din_words_V_last_V_1_ack_in, din_words_V_last_V_1_state, dout_words_V_data_V_1_ack_in, dout_words_V_data_V_1_state, dout_words_V_last_V_1_ack_in, dout_words_V_last_V_1_state, ap_CS_fsm_state2, ap_block_state2_io)
    begin
        if ((not(((din_words_V_data_V_1_ack_in = ap_const_logic_0) or (enc_ctrl_V_V_1_ack_in = ap_const_logic_0) or (dout_words_V_last_V_1_ack_in = ap_const_logic_0) or (dout_words_V_data_V_1_ack_in = ap_const_logic_0) or (din_words_V_last_V_1_ack_in = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state2_io))) and (enc_ctrl_V_V_1_state(0) = ap_const_logic_0) and (dout_words_V_last_V_1_state(0) = ap_const_logic_0) and (dout_words_V_data_V_1_state(0) = ap_const_logic_0) and (din_words_V_last_V_1_state(0) = ap_const_logic_0) and (din_words_V_data_V_1_state(0) = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(enc_ctrl_V_V_1_ack_in, enc_ctrl_V_V_1_state, din_words_V_data_V_1_ack_in, din_words_V_data_V_1_state, din_words_V_last_V_1_ack_in, din_words_V_last_V_1_state, dout_words_V_data_V_1_ack_in, dout_words_V_data_V_1_state, dout_words_V_last_V_1_ack_in, dout_words_V_last_V_1_state, ap_CS_fsm_state2, ap_block_state2_io)
    begin
        if ((not(((din_words_V_data_V_1_ack_in = ap_const_logic_0) or (enc_ctrl_V_V_1_ack_in = ap_const_logic_0) or (dout_words_V_last_V_1_ack_in = ap_const_logic_0) or (dout_words_V_data_V_1_ack_in = ap_const_logic_0) or (din_words_V_last_V_1_ack_in = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state2_io))) and (enc_ctrl_V_V_1_state(0) = ap_const_logic_0) and (dout_words_V_last_V_1_state(0) = ap_const_logic_0) and (dout_words_V_data_V_1_state(0) = ap_const_logic_0) and (din_words_V_last_V_1_state(0) = ap_const_logic_0) and (din_words_V_data_V_1_state(0) = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    din_words_TDATA <= din_words_V_data_V_1_data_out;

    din_words_TDATA_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, din_words_V_data_V_1_state, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            din_words_TDATA_blk_n <= din_words_V_data_V_1_state(1);
        else 
            din_words_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    din_words_TLAST <= din_words_V_last_V_1_data_out;
    din_words_TVALID <= din_words_V_last_V_1_state(0);
    din_words_V_data_V_1_ack_in <= din_words_V_data_V_1_state(1);
    din_words_V_data_V_1_ack_out <= din_words_TREADY;
    din_words_V_data_V_1_data_out <= ap_const_lv8_4;
    din_words_V_data_V_1_sel <= din_words_V_data_V_1_sel_rd;

    din_words_V_data_V_1_vld_in_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_block_state1_io)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state1_io))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            din_words_V_data_V_1_vld_in <= ap_const_logic_1;
        else 
            din_words_V_data_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    din_words_V_data_V_1_vld_out <= din_words_V_data_V_1_state(0);
    din_words_V_last_V_1_ack_in <= din_words_V_last_V_1_state(1);
    din_words_V_last_V_1_ack_out <= din_words_TREADY;
    din_words_V_last_V_1_data_out <= ap_const_lv1_1;
    din_words_V_last_V_1_sel <= din_words_V_last_V_1_sel_rd;

    din_words_V_last_V_1_vld_in_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_block_state1_io)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state1_io))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            din_words_V_last_V_1_vld_in <= ap_const_logic_1;
        else 
            din_words_V_last_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    din_words_V_last_V_1_vld_out <= din_words_V_last_V_1_state(0);
    dout_words_TDATA <= dout_words_V_data_V_1_data_out;

    dout_words_TDATA_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, dout_words_V_data_V_1_state, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            dout_words_TDATA_blk_n <= dout_words_V_data_V_1_state(1);
        else 
            dout_words_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dout_words_TLAST <= dout_words_V_last_V_1_data_out;
    dout_words_TVALID <= dout_words_V_last_V_1_state(0);
    dout_words_V_data_V_1_ack_in <= dout_words_V_data_V_1_state(1);
    dout_words_V_data_V_1_ack_out <= dout_words_TREADY;
    dout_words_V_data_V_1_data_out <= ap_const_lv8_10;
    dout_words_V_data_V_1_sel <= dout_words_V_data_V_1_sel_rd;

    dout_words_V_data_V_1_vld_in_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_block_state1_io)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state1_io))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dout_words_V_data_V_1_vld_in <= ap_const_logic_1;
        else 
            dout_words_V_data_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    dout_words_V_data_V_1_vld_out <= dout_words_V_data_V_1_state(0);
    dout_words_V_last_V_1_ack_in <= dout_words_V_last_V_1_state(1);
    dout_words_V_last_V_1_ack_out <= dout_words_TREADY;
    dout_words_V_last_V_1_data_out <= ap_const_lv1_1;
    dout_words_V_last_V_1_sel <= dout_words_V_last_V_1_sel_rd;

    dout_words_V_last_V_1_vld_in_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_block_state1_io)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state1_io))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dout_words_V_last_V_1_vld_in <= ap_const_logic_1;
        else 
            dout_words_V_last_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    dout_words_V_last_V_1_vld_out <= dout_words_V_last_V_1_state(0);
    enc_ctrl_V_V_1_ack_in <= enc_ctrl_V_V_1_state(1);
    enc_ctrl_V_V_1_ack_out <= enc_ctrl_V_V_TREADY;

    enc_ctrl_V_V_1_data_out_assign_proc : process(enc_ctrl_V_V_1_payload_A, enc_ctrl_V_V_1_payload_B, enc_ctrl_V_V_1_sel)
    begin
        if ((enc_ctrl_V_V_1_sel = ap_const_logic_1)) then 
            enc_ctrl_V_V_1_data_out <= enc_ctrl_V_V_1_payload_B;
        else 
            enc_ctrl_V_V_1_data_out <= enc_ctrl_V_V_1_payload_A;
        end if; 
    end process;

    enc_ctrl_V_V_1_load_A <= (not(enc_ctrl_V_V_1_sel_wr) and enc_ctrl_V_V_1_state_cmp_full);
    enc_ctrl_V_V_1_load_B <= (enc_ctrl_V_V_1_state_cmp_full and enc_ctrl_V_V_1_sel_wr);
    enc_ctrl_V_V_1_sel <= enc_ctrl_V_V_1_sel_rd;
    enc_ctrl_V_V_1_state_cmp_full <= '0' when (enc_ctrl_V_V_1_state = ap_const_lv2_1) else '1';

    enc_ctrl_V_V_1_vld_in_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_block_state1_io)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_const_boolean_1 = ap_block_state1_io))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            enc_ctrl_V_V_1_vld_in <= ap_const_logic_1;
        else 
            enc_ctrl_V_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    enc_ctrl_V_V_1_vld_out <= enc_ctrl_V_V_1_state(0);
    enc_ctrl_V_V_TDATA <= enc_ctrl_V_V_1_data_out;

    enc_ctrl_V_V_TDATA_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, enc_ctrl_V_V_1_state, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            enc_ctrl_V_V_TDATA_blk_n <= enc_ctrl_V_V_1_state(1);
        else 
            enc_ctrl_V_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    enc_ctrl_V_V_TVALID <= enc_ctrl_V_V_1_state(0);
    p_Result_1_fu_105_p5 <= (p_Result_s_fu_93_p5(31 downto 24) & ap_const_lv16_0 & p_Result_s_fu_93_p5(7 downto 0));
    p_Result_2_fu_117_p5 <= (p_Result_1_fu_105_p5(31 downto 7) & ap_const_lv7_0);
    p_Result_s_fu_93_p5 <= (ap_const_lv8_0 & ap_const_lv32_0(23 downto 0));
end behav;
