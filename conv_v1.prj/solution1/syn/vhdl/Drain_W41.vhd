-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Drain_W41 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    W_next_V4_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    W_next_V4_empty_n : IN STD_LOGIC;
    W_next_V4_read : OUT STD_LOGIC;
    p_c_s_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_c_s_empty_n : IN STD_LOGIC;
    p_c_s_read : OUT STD_LOGIC;
    p_chin_s_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_chin_s_empty_n : IN STD_LOGIC;
    p_chin_s_read : OUT STD_LOGIC;
    p_k_s_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_k_s_empty_n : IN STD_LOGIC;
    p_k_s_read : OUT STD_LOGIC );
end;


architecture behav of Drain_W41 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal W_next_V4_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln170_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_c_s_blk_n : STD_LOGIC;
    signal p_chin_s_blk_n : STD_LOGIC;
    signal p_k_s_blk_n : STD_LOGIC;
    signal p_c_read_reg_178 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal p_chin_read_reg_183 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_k_read_reg_188 : STD_LOGIC_VECTOR (31 downto 0);
    signal col_fu_131_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal col_reg_197 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal chi_fu_146_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal chi_reg_205 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal kr_fu_161_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal kr_reg_213 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal kc_fu_172_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state5 : BOOLEAN;
    signal col_0_i_i_reg_78 : STD_LOGIC_VECTOR (30 downto 0);
    signal icmp_ln166_fu_141_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal chi_0_i_i_reg_89 : STD_LOGIC_VECTOR (30 downto 0);
    signal icmp_ln164_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln168_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal kr_0_i_i_reg_100 : STD_LOGIC_VECTOR (30 downto 0);
    signal kc_0_i_i_reg_111 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln164_fu_122_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln166_fu_137_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln168_fu_152_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((icmp_ln164_fu_126_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    chi_0_i_i_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln168_fu_156_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                chi_0_i_i_reg_89 <= chi_reg_205;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln164_fu_126_p2 = ap_const_lv1_1))) then 
                chi_0_i_i_reg_89 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    col_0_i_i_reg_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln166_fu_141_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                col_0_i_i_reg_78 <= col_reg_197;
            elsif ((not(((p_k_s_empty_n = ap_const_logic_0) or (p_chin_s_empty_n = ap_const_logic_0) or (p_c_s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                col_0_i_i_reg_78 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    kc_0_i_i_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_0 = W_next_V4_empty_n))) and (icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                kc_0_i_i_reg_111 <= kc_fu_172_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln168_fu_156_p2 = ap_const_lv1_1))) then 
                kc_0_i_i_reg_111 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    kr_0_i_i_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_0 = W_next_V4_empty_n))) and (icmp_ln170_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                kr_0_i_i_reg_100 <= kr_reg_213;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln166_fu_141_p2 = ap_const_lv1_1))) then 
                kr_0_i_i_reg_100 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                chi_reg_205 <= chi_fu_146_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                col_reg_197 <= col_fu_131_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                kr_reg_213 <= kr_fu_161_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((p_k_s_empty_n = ap_const_logic_0) or (p_chin_s_empty_n = ap_const_logic_0) or (p_c_s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                p_c_read_reg_178 <= p_c_s_dout;
                p_chin_read_reg_183 <= p_chin_s_dout;
                p_k_read_reg_188 <= p_k_s_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, W_next_V4_empty_n, p_c_s_empty_n, p_chin_s_empty_n, p_k_s_empty_n, ap_CS_fsm_state5, icmp_ln170_fu_167_p2, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, icmp_ln166_fu_141_p2, icmp_ln164_fu_126_p2, icmp_ln168_fu_156_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((p_k_s_empty_n = ap_const_logic_0) or (p_chin_s_empty_n = ap_const_logic_0) or (p_c_s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln164_fu_126_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln166_fu_141_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln168_fu_156_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if ((not(((icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_0 = W_next_V4_empty_n))) and (icmp_ln170_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                elsif ((not(((icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_0 = W_next_V4_empty_n))) and (icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    W_next_V4_blk_n_assign_proc : process(W_next_V4_empty_n, ap_CS_fsm_state5, icmp_ln170_fu_167_p2)
    begin
        if (((icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            W_next_V4_blk_n <= W_next_V4_empty_n;
        else 
            W_next_V4_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    W_next_V4_read_assign_proc : process(W_next_V4_empty_n, ap_CS_fsm_state5, icmp_ln170_fu_167_p2)
    begin
        if ((not(((icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_0 = W_next_V4_empty_n))) and (icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            W_next_V4_read <= ap_const_logic_1;
        else 
            W_next_V4_read <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, p_c_s_empty_n, p_chin_s_empty_n, p_k_s_empty_n)
    begin
                ap_block_state1 <= ((p_k_s_empty_n = ap_const_logic_0) or (p_chin_s_empty_n = ap_const_logic_0) or (p_c_s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state5_assign_proc : process(W_next_V4_empty_n, icmp_ln170_fu_167_p2)
    begin
                ap_block_state5 <= ((icmp_ln170_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_0 = W_next_V4_empty_n));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln164_fu_126_p2)
    begin
        if (((icmp_ln164_fu_126_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln164_fu_126_p2)
    begin
        if (((icmp_ln164_fu_126_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    chi_fu_146_p2 <= std_logic_vector(unsigned(chi_0_i_i_reg_89) + unsigned(ap_const_lv31_1));
    col_fu_131_p2 <= std_logic_vector(unsigned(col_0_i_i_reg_78) + unsigned(ap_const_lv31_1));
    icmp_ln164_fu_126_p2 <= "1" when (signed(zext_ln164_fu_122_p1) < signed(p_c_read_reg_178)) else "0";
    icmp_ln166_fu_141_p2 <= "1" when (signed(zext_ln166_fu_137_p1) < signed(p_chin_read_reg_183)) else "0";
    icmp_ln168_fu_156_p2 <= "1" when (signed(zext_ln168_fu_152_p1) < signed(p_k_read_reg_188)) else "0";
    icmp_ln170_fu_167_p2 <= "1" when (kc_0_i_i_reg_111 = p_k_read_reg_188) else "0";
    kc_fu_172_p2 <= std_logic_vector(unsigned(kc_0_i_i_reg_111) + unsigned(ap_const_lv32_1));
    kr_fu_161_p2 <= std_logic_vector(unsigned(kr_0_i_i_reg_100) + unsigned(ap_const_lv31_1));

    p_c_s_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_c_s_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_c_s_blk_n <= p_c_s_empty_n;
        else 
            p_c_s_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_c_s_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_c_s_empty_n, p_chin_s_empty_n, p_k_s_empty_n)
    begin
        if ((not(((p_k_s_empty_n = ap_const_logic_0) or (p_chin_s_empty_n = ap_const_logic_0) or (p_c_s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_c_s_read <= ap_const_logic_1;
        else 
            p_c_s_read <= ap_const_logic_0;
        end if; 
    end process;


    p_chin_s_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_chin_s_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_chin_s_blk_n <= p_chin_s_empty_n;
        else 
            p_chin_s_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_chin_s_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_c_s_empty_n, p_chin_s_empty_n, p_k_s_empty_n)
    begin
        if ((not(((p_k_s_empty_n = ap_const_logic_0) or (p_chin_s_empty_n = ap_const_logic_0) or (p_c_s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_chin_s_read <= ap_const_logic_1;
        else 
            p_chin_s_read <= ap_const_logic_0;
        end if; 
    end process;


    p_k_s_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_k_s_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_k_s_blk_n <= p_k_s_empty_n;
        else 
            p_k_s_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_k_s_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_c_s_empty_n, p_chin_s_empty_n, p_k_s_empty_n)
    begin
        if ((not(((p_k_s_empty_n = ap_const_logic_0) or (p_chin_s_empty_n = ap_const_logic_0) or (p_c_s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_k_s_read <= ap_const_logic_1;
        else 
            p_k_s_read <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln164_fu_122_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col_0_i_i_reg_78),32));
    zext_ln166_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(chi_0_i_i_reg_89),32));
    zext_ln168_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(kr_0_i_i_reg_100),32));
end behav;