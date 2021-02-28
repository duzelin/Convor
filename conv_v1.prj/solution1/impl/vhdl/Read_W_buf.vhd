-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Read_W_buf is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    W_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    W_ce0 : OUT STD_LOGIC;
    W_we0 : OUT STD_LOGIC;
    W_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_W_ddr_AWVALID : OUT STD_LOGIC;
    m_axi_W_ddr_AWREADY : IN STD_LOGIC;
    m_axi_W_ddr_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_W_ddr_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_W_ddr_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_W_ddr_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_W_ddr_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_W_ddr_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_W_ddr_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_W_ddr_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_W_ddr_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_W_ddr_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_W_ddr_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_W_ddr_WVALID : OUT STD_LOGIC;
    m_axi_W_ddr_WREADY : IN STD_LOGIC;
    m_axi_W_ddr_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_W_ddr_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_W_ddr_WLAST : OUT STD_LOGIC;
    m_axi_W_ddr_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_W_ddr_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_W_ddr_ARVALID : OUT STD_LOGIC;
    m_axi_W_ddr_ARREADY : IN STD_LOGIC;
    m_axi_W_ddr_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_W_ddr_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_W_ddr_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_W_ddr_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_W_ddr_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_W_ddr_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_W_ddr_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_W_ddr_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_W_ddr_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_W_ddr_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_W_ddr_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_W_ddr_RVALID : IN STD_LOGIC;
    m_axi_W_ddr_RREADY : OUT STD_LOGIC;
    m_axi_W_ddr_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_W_ddr_RLAST : IN STD_LOGIC;
    m_axi_W_ddr_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_W_ddr_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_W_ddr_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_W_ddr_BVALID : IN STD_LOGIC;
    m_axi_W_ddr_BREADY : OUT STD_LOGIC;
    m_axi_W_ddr_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_W_ddr_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_W_ddr_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    W_ddr_offset : IN STD_LOGIC_VECTOR (29 downto 0);
    length_r : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of Read_W_buf is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal W_ddr_blk_n_AR : STD_LOGIC;
    signal W_ddr_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal icmp_ln274_fu_115_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_0_rec_cast_fu_107_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_0_rec_cast_reg_138 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state8 : BOOLEAN;
    signal i_fu_120_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reg_146 : STD_LOGIC_VECTOR (30 downto 0);
    signal W_ddr_addr_read_reg_151 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_rec_reg_85 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal zext_ln273_fu_96_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_0_cast_fu_111_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    p_0_rec_reg_85_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                p_0_rec_reg_85 <= i_reg_146;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                p_0_rec_reg_85 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((m_axi_W_ddr_RVALID = ap_const_logic_0) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) and (ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) then
                W_ddr_addr_read_reg_151 <= m_axi_W_ddr_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((m_axi_W_ddr_RVALID = ap_const_logic_0) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                i_reg_146 <= i_fu_120_p2;
                    p_0_rec_cast_reg_138(30 downto 0) <= p_0_rec_cast_fu_107_p1(30 downto 0);
            end if;
        end if;
    end process;
    p_0_rec_cast_reg_138(63 downto 31) <= "000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_W_ddr_ARREADY, m_axi_W_ddr_RVALID, ap_CS_fsm_state8, icmp_ln274_fu_115_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((m_axi_W_ddr_ARREADY = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if ((not(((m_axi_W_ddr_RVALID = ap_const_logic_0) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) and (icmp_ln274_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif ((not(((m_axi_W_ddr_RVALID = ap_const_logic_0) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) and (ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    W_address0 <= p_0_rec_cast_reg_138(9 - 1 downto 0);

    W_ce0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            W_ce0 <= ap_const_logic_1;
        else 
            W_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    W_d0 <= W_ddr_addr_read_reg_151;

    W_ddr_blk_n_AR_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_W_ddr_ARREADY)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            W_ddr_blk_n_AR <= m_axi_W_ddr_ARREADY;
        else 
            W_ddr_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    W_ddr_blk_n_R_assign_proc : process(m_axi_W_ddr_RVALID, ap_CS_fsm_state8, icmp_ln274_fu_115_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) then 
            W_ddr_blk_n_R <= m_axi_W_ddr_RVALID;
        else 
            W_ddr_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;


    W_we0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            W_we0 <= ap_const_logic_1;
        else 
            W_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state8_assign_proc : process(m_axi_W_ddr_RVALID, icmp_ln274_fu_115_p2)
    begin
                ap_block_state8 <= ((m_axi_W_ddr_RVALID = ap_const_logic_0) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_W_ddr_RVALID, ap_CS_fsm_state8, icmp_ln274_fu_115_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (not(((m_axi_W_ddr_RVALID = ap_const_logic_0) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) and (icmp_ln274_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
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


    ap_ready_assign_proc : process(m_axi_W_ddr_RVALID, ap_CS_fsm_state8, icmp_ln274_fu_115_p2)
    begin
        if ((not(((m_axi_W_ddr_RVALID = ap_const_logic_0) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) and (icmp_ln274_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_0_cast_fu_111_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_0_rec_reg_85),32));
    i_fu_120_p2 <= std_logic_vector(unsigned(p_0_rec_reg_85) + unsigned(ap_const_lv31_1));
    icmp_ln274_fu_115_p2 <= "1" when (signed(i_0_cast_fu_111_p1) < signed(length_r)) else "0";
    m_axi_W_ddr_ARADDR <= zext_ln273_fu_96_p1(32 - 1 downto 0);
    m_axi_W_ddr_ARBURST <= ap_const_lv2_0;
    m_axi_W_ddr_ARCACHE <= ap_const_lv4_0;
    m_axi_W_ddr_ARID <= ap_const_lv1_0;
    m_axi_W_ddr_ARLEN <= length_r;
    m_axi_W_ddr_ARLOCK <= ap_const_lv2_0;
    m_axi_W_ddr_ARPROT <= ap_const_lv3_0;
    m_axi_W_ddr_ARQOS <= ap_const_lv4_0;
    m_axi_W_ddr_ARREGION <= ap_const_lv4_0;
    m_axi_W_ddr_ARSIZE <= ap_const_lv3_0;
    m_axi_W_ddr_ARUSER <= ap_const_lv1_0;

    m_axi_W_ddr_ARVALID_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_W_ddr_ARREADY)
    begin
        if ((not(((m_axi_W_ddr_ARREADY = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_W_ddr_ARVALID <= ap_const_logic_1;
        else 
            m_axi_W_ddr_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_W_ddr_AWADDR <= ap_const_lv32_0;
    m_axi_W_ddr_AWBURST <= ap_const_lv2_0;
    m_axi_W_ddr_AWCACHE <= ap_const_lv4_0;
    m_axi_W_ddr_AWID <= ap_const_lv1_0;
    m_axi_W_ddr_AWLEN <= ap_const_lv32_0;
    m_axi_W_ddr_AWLOCK <= ap_const_lv2_0;
    m_axi_W_ddr_AWPROT <= ap_const_lv3_0;
    m_axi_W_ddr_AWQOS <= ap_const_lv4_0;
    m_axi_W_ddr_AWREGION <= ap_const_lv4_0;
    m_axi_W_ddr_AWSIZE <= ap_const_lv3_0;
    m_axi_W_ddr_AWUSER <= ap_const_lv1_0;
    m_axi_W_ddr_AWVALID <= ap_const_logic_0;
    m_axi_W_ddr_BREADY <= ap_const_logic_0;

    m_axi_W_ddr_RREADY_assign_proc : process(m_axi_W_ddr_RVALID, ap_CS_fsm_state8, icmp_ln274_fu_115_p2)
    begin
        if ((not(((m_axi_W_ddr_RVALID = ap_const_logic_0) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) and (ap_const_logic_1 = ap_CS_fsm_state8) and (icmp_ln274_fu_115_p2 = ap_const_lv1_1))) then 
            m_axi_W_ddr_RREADY <= ap_const_logic_1;
        else 
            m_axi_W_ddr_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_W_ddr_WDATA <= ap_const_lv32_0;
    m_axi_W_ddr_WID <= ap_const_lv1_0;
    m_axi_W_ddr_WLAST <= ap_const_logic_0;
    m_axi_W_ddr_WSTRB <= ap_const_lv4_0;
    m_axi_W_ddr_WUSER <= ap_const_lv1_0;
    m_axi_W_ddr_WVALID <= ap_const_logic_0;
    p_0_rec_cast_fu_107_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_0_rec_reg_85),64));
    zext_ln273_fu_96_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(W_ddr_offset),64));
end behav;
