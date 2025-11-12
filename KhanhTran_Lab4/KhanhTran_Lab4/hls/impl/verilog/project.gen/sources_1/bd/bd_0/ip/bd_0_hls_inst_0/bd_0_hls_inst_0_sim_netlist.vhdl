-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Nov  5 17:12:02 2025
-- Host        : katnlot running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ankha/Desktop/FPGA_Design/KhanhTran_Lab4/KhanhTran_Lab4/hls/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_maxmul2x2_flow_control_loop_pipe is
  port (
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \j11_fu_92_reg[0]\ : out STD_LOGIC;
    select_ln14_fu_218_p3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \i10_fu_72_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    B : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \i10_fu_72_reg[0]_0\ : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    \indvar_flatten9_fu_68_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \j11_fu_92_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln1413_fu_96_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \indvar_flatten9_fu_68_reg[0]_0\ : out STD_LOGIC;
    \j11_fu_92_reg[1]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    b01 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \icmp_ln20_1_reg_553_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    icmp_ln16_reg_563 : in STD_LOGIC;
    icmp_ln14_reg_568 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \add_ln1413_fu_96_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \add_ln1413_fu_96_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a00 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_maxmul2x2_flow_control_loop_pipe : entity is "maxmul2x2_flow_control_loop_pipe";
end bd_0_hls_inst_0_maxmul2x2_flow_control_loop_pipe;

architecture STRUCTURE of bd_0_hls_inst_0_maxmul2x2_flow_control_loop_pipe is
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal ap_sig_allocacmp_indvar_flatten9_load1 : STD_LOGIC;
  signal \^i10_fu_72_reg[0]_0\ : STD_LOGIC;
  signal \^j11_fu_92_reg[0]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \add_ln1413_fu_96[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \add_ln1413_fu_96[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i10_fu_72[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i10_fu_72[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \icmp_ln14_reg_568[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \icmp_ln16_reg_563[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \icmp_ln16_reg_563[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \icmp_ln20_1_reg_553[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \indvar_flatten9_fu_68[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \indvar_flatten9_fu_68[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \j11_fu_92[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \j11_fu_92[1]_i_1\ : label is "soft_lutpair0";
begin
  \i10_fu_72_reg[0]_0\ <= \^i10_fu_72_reg[0]_0\;
  \j11_fu_92_reg[0]\ <= \^j11_fu_92_reg[0]\;
\add_ln1413_fu_96[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B5B"
    )
        port map (
      I0 => ap_loop_init,
      I1 => \add_ln1413_fu_96_reg[1]_0\(0),
      I2 => p_1_in,
      I3 => \add_ln1413_fu_96_reg[1]_1\(0),
      O => D(0)
    );
\add_ln1413_fu_96[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3050AFCFC050A"
    )
        port map (
      I0 => \add_ln1413_fu_96_reg[1]_0\(0),
      I1 => \add_ln1413_fu_96_reg[1]_1\(0),
      I2 => ap_sig_allocacmp_indvar_flatten9_load1,
      I3 => \add_ln1413_fu_96_reg[1]_0\(1),
      I4 => p_1_in,
      I5 => \add_ln1413_fu_96_reg[1]_1\(1),
      O => D(1)
    );
\add_ln1413_fu_96[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init,
      I1 => ap_start,
      O => ap_sig_allocacmp_indvar_flatten9_load1
    );
ap_loop_init_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF3830"
    )
        port map (
      I0 => Q(1),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      I4 => ap_rst,
      O => ap_loop_init_i_1_n_0
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_i_1_n_0,
      Q => ap_loop_init,
      R => '0'
    );
ap_ready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Q(1),
      I1 => ap_start,
      I2 => ap_loop_init,
      I3 => Q(0),
      O => ap_ready
    );
\cond_reg_545_pp0_iter1_reg_reg[0]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F50303F0F5"
    )
        port map (
      I0 => \add_ln1413_fu_96_reg[1]_0\(0),
      I1 => \add_ln1413_fu_96_reg[1]_1\(0),
      I2 => ap_sig_allocacmp_indvar_flatten9_load1,
      I3 => \add_ln1413_fu_96_reg[1]_0\(1),
      I4 => p_1_in,
      I5 => \add_ln1413_fu_96_reg[1]_1\(1),
      O => \i10_fu_72_reg[0]\
    );
\i10_fu_72[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCB8"
    )
        port map (
      I0 => \add_ln1413_fu_96_reg[1]_1\(0),
      I1 => p_1_in,
      I2 => \add_ln1413_fu_96_reg[1]_0\(0),
      I3 => ap_loop_init,
      O => \add_ln1413_fu_96_reg[1]\(0)
    );
\i10_fu_72[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \add_ln1413_fu_96_reg[1]_1\(1),
      I1 => p_1_in,
      I2 => \add_ln1413_fu_96_reg[1]_0\(1),
      I3 => ap_loop_init,
      O => \add_ln1413_fu_96_reg[1]\(1)
    );
\icmp_ln14_reg_568[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init,
      I2 => ap_start,
      I3 => Q(1),
      O => \indvar_flatten9_fu_68_reg[0]_0\
    );
\icmp_ln16_reg_563[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \icmp_ln20_1_reg_553_reg[0]\(1),
      I1 => p_1_in,
      I2 => \icmp_ln20_1_reg_553_reg[0]\(0),
      I3 => ap_loop_init,
      O => \j11_fu_92_reg[1]\
    );
\icmp_ln16_reg_563[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F0"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => icmp_ln14_reg_568,
      I2 => icmp_ln16_reg_563,
      I3 => ap_loop_init,
      O => p_1_in
    );
\icmp_ln20_1_reg_553[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020202"
    )
        port map (
      I0 => \icmp_ln20_1_reg_553_reg[0]\(0),
      I1 => p_1_in,
      I2 => \icmp_ln20_1_reg_553_reg[0]\(1),
      I3 => ap_start,
      I4 => ap_loop_init,
      O => \^j11_fu_92_reg[0]\
    );
\icmp_ln20_reg_535[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0000AFCFC000A"
    )
        port map (
      I0 => \add_ln1413_fu_96_reg[1]_0\(0),
      I1 => \add_ln1413_fu_96_reg[1]_1\(0),
      I2 => ap_sig_allocacmp_indvar_flatten9_load1,
      I3 => \add_ln1413_fu_96_reg[1]_0\(1),
      I4 => p_1_in,
      I5 => \add_ln1413_fu_96_reg[1]_1\(1),
      O => \^i10_fu_72_reg[0]_0\
    );
\indvar_flatten9_fu_68[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init,
      I1 => Q(0),
      O => \indvar_flatten9_fu_68_reg[0]\(0)
    );
\indvar_flatten9_fu_68[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init,
      I2 => Q(1),
      O => \indvar_flatten9_fu_68_reg[0]\(1)
    );
\j11_fu_92[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => icmp_ln16_reg_563,
      I1 => ap_loop_init,
      I2 => \icmp_ln20_1_reg_553_reg[0]\(0),
      O => \j11_fu_92_reg[0]_0\(0)
    );
\j11_fu_92[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => \icmp_ln20_1_reg_553_reg[0]\(0),
      I1 => p_1_in,
      I2 => \icmp_ln20_1_reg_553_reg[0]\(1),
      I3 => ap_loop_init,
      O => \j11_fu_92_reg[0]_0\(1)
    );
m_reg_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(15),
      I1 => a00(15),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(15)
    );
m_reg_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(6),
      I1 => a00(6),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(6)
    );
m_reg_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(5),
      I1 => a00(5),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(5)
    );
m_reg_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(4),
      I1 => a00(4),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(4)
    );
m_reg_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(3),
      I1 => a00(3),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(3)
    );
m_reg_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(2),
      I1 => a00(2),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(2)
    );
m_reg_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(1),
      I1 => a00(1),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(1)
    );
m_reg_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(0),
      I1 => a00(0),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(0)
    );
m_reg_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(15),
      I1 => b00(15),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(15)
    );
m_reg_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(14),
      I1 => b00(14),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(14)
    );
m_reg_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(13),
      I1 => b00(13),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(13)
    );
m_reg_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(14),
      I1 => a00(14),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(14)
    );
m_reg_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(12),
      I1 => b00(12),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(12)
    );
m_reg_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(11),
      I1 => b00(11),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(11)
    );
m_reg_reg_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(10),
      I1 => b00(10),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(10)
    );
m_reg_reg_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(9),
      I1 => b00(9),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(9)
    );
m_reg_reg_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(8),
      I1 => b00(8),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(8)
    );
m_reg_reg_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(7),
      I1 => b00(7),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(7)
    );
m_reg_reg_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(6),
      I1 => b00(6),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(6)
    );
m_reg_reg_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(5),
      I1 => b00(5),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(5)
    );
m_reg_reg_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(4),
      I1 => b00(4),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(4)
    );
m_reg_reg_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(3),
      I1 => b00(3),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(3)
    );
m_reg_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(13),
      I1 => a00(13),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(13)
    );
m_reg_reg_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(2),
      I1 => b00(2),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(2)
    );
m_reg_reg_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(1),
      I1 => b00(1),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(1)
    );
m_reg_reg_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b01(0),
      I1 => b00(0),
      I2 => \^j11_fu_92_reg[0]\,
      O => A(0)
    );
m_reg_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(12),
      I1 => a00(12),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(12)
    );
m_reg_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(11),
      I1 => a00(11),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(11)
    );
m_reg_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(10),
      I1 => a00(10),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(10)
    );
m_reg_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(9),
      I1 => a00(9),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(9)
    );
m_reg_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(8),
      I1 => a00(8),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(8)
    );
m_reg_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a10(7),
      I1 => a00(7),
      I2 => \^i10_fu_72_reg[0]_0\,
      O => B(7)
    );
\select_ln14_reg_530_pp0_iter1_reg_reg[0]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404C004C404C404C"
    )
        port map (
      I0 => ap_start,
      I1 => \icmp_ln20_1_reg_553_reg[0]\(0),
      I2 => ap_loop_init,
      I3 => icmp_ln16_reg_563,
      I4 => icmp_ln14_reg_568,
      I5 => ap_enable_reg_pp0_iter1,
      O => select_ln14_fu_218_p3(0)
    );
\select_ln14_reg_530_pp0_iter1_reg_reg[1]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404C004C404C404C"
    )
        port map (
      I0 => ap_start,
      I1 => \icmp_ln20_1_reg_553_reg[0]\(1),
      I2 => ap_loop_init,
      I3 => icmp_ln16_reg_563,
      I4 => icmp_ln14_reg_568,
      I5 => ap_enable_reg_pp0_iter1,
      O => select_ln14_fu_218_p3(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1_DSP48_0 is
  port (
    c11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c01 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c00 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    m_reg_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_reg_reg_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b11_read_reg_510 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b10_read_reg_515 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    icmp_ln20_1_reg_553 : in STD_LOGIC;
    a11_read_reg_520 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a01_read_reg_525 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    icmp_ln20_reg_535 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cond_reg_545_pp0_iter2_reg : in STD_LOGIC;
    select_ln14_reg_530_pp0_iter2_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \empty_5_fu_80_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \empty_6_fu_84_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \empty_7_fu_88_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1_DSP48_0 : entity is "maxmul2x2_mac_muladd_16s_16s_32s_32_4_1_DSP48_0";
end bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1_DSP48_0;

architecture STRUCTURE of bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1_DSP48_0 is
  signal A : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal B : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m_reg_reg_n_106 : STD_LOGIC;
  signal m_reg_reg_n_107 : STD_LOGIC;
  signal m_reg_reg_n_108 : STD_LOGIC;
  signal m_reg_reg_n_109 : STD_LOGIC;
  signal m_reg_reg_n_110 : STD_LOGIC;
  signal m_reg_reg_n_111 : STD_LOGIC;
  signal m_reg_reg_n_112 : STD_LOGIC;
  signal m_reg_reg_n_113 : STD_LOGIC;
  signal m_reg_reg_n_114 : STD_LOGIC;
  signal m_reg_reg_n_115 : STD_LOGIC;
  signal m_reg_reg_n_116 : STD_LOGIC;
  signal m_reg_reg_n_117 : STD_LOGIC;
  signal m_reg_reg_n_118 : STD_LOGIC;
  signal m_reg_reg_n_119 : STD_LOGIC;
  signal m_reg_reg_n_120 : STD_LOGIC;
  signal m_reg_reg_n_121 : STD_LOGIC;
  signal m_reg_reg_n_122 : STD_LOGIC;
  signal m_reg_reg_n_123 : STD_LOGIC;
  signal m_reg_reg_n_124 : STD_LOGIC;
  signal m_reg_reg_n_125 : STD_LOGIC;
  signal m_reg_reg_n_126 : STD_LOGIC;
  signal m_reg_reg_n_127 : STD_LOGIC;
  signal m_reg_reg_n_128 : STD_LOGIC;
  signal m_reg_reg_n_129 : STD_LOGIC;
  signal m_reg_reg_n_130 : STD_LOGIC;
  signal m_reg_reg_n_131 : STD_LOGIC;
  signal m_reg_reg_n_132 : STD_LOGIC;
  signal m_reg_reg_n_133 : STD_LOGIC;
  signal m_reg_reg_n_134 : STD_LOGIC;
  signal m_reg_reg_n_135 : STD_LOGIC;
  signal m_reg_reg_n_136 : STD_LOGIC;
  signal m_reg_reg_n_137 : STD_LOGIC;
  signal m_reg_reg_n_138 : STD_LOGIC;
  signal m_reg_reg_n_139 : STD_LOGIC;
  signal m_reg_reg_n_140 : STD_LOGIC;
  signal m_reg_reg_n_141 : STD_LOGIC;
  signal m_reg_reg_n_142 : STD_LOGIC;
  signal m_reg_reg_n_143 : STD_LOGIC;
  signal m_reg_reg_n_144 : STD_LOGIC;
  signal m_reg_reg_n_145 : STD_LOGIC;
  signal m_reg_reg_n_146 : STD_LOGIC;
  signal m_reg_reg_n_147 : STD_LOGIC;
  signal m_reg_reg_n_148 : STD_LOGIC;
  signal m_reg_reg_n_149 : STD_LOGIC;
  signal m_reg_reg_n_150 : STD_LOGIC;
  signal m_reg_reg_n_151 : STD_LOGIC;
  signal m_reg_reg_n_152 : STD_LOGIC;
  signal m_reg_reg_n_153 : STD_LOGIC;
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_74 : STD_LOGIC;
  signal p_reg_reg_n_75 : STD_LOGIC;
  signal p_reg_reg_n_76 : STD_LOGIC;
  signal p_reg_reg_n_77 : STD_LOGIC;
  signal p_reg_reg_n_78 : STD_LOGIC;
  signal p_reg_reg_n_79 : STD_LOGIC;
  signal p_reg_reg_n_80 : STD_LOGIC;
  signal p_reg_reg_n_81 : STD_LOGIC;
  signal p_reg_reg_n_82 : STD_LOGIC;
  signal p_reg_reg_n_83 : STD_LOGIC;
  signal p_reg_reg_n_84 : STD_LOGIC;
  signal p_reg_reg_n_85 : STD_LOGIC;
  signal p_reg_reg_n_86 : STD_LOGIC;
  signal p_reg_reg_n_87 : STD_LOGIC;
  signal p_reg_reg_n_88 : STD_LOGIC;
  signal p_reg_reg_n_89 : STD_LOGIC;
  signal p_reg_reg_n_90 : STD_LOGIC;
  signal p_reg_reg_n_91 : STD_LOGIC;
  signal p_reg_reg_n_92 : STD_LOGIC;
  signal p_reg_reg_n_93 : STD_LOGIC;
  signal p_reg_reg_n_94 : STD_LOGIC;
  signal p_reg_reg_n_95 : STD_LOGIC;
  signal p_reg_reg_n_96 : STD_LOGIC;
  signal p_reg_reg_n_97 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_m_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_m_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_m_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_m_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_reg_reg : label is "{SYNTH-12 {cell *THIS*}}";
begin
\c00[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(0),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_105,
      O => c00(0)
    );
\c00[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(10),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_95,
      O => c00(10)
    );
\c00[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(11),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_94,
      O => c00(11)
    );
\c00[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(12),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_93,
      O => c00(12)
    );
\c00[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(13),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_92,
      O => c00(13)
    );
\c00[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(14),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_91,
      O => c00(14)
    );
\c00[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(15),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_90,
      O => c00(15)
    );
\c00[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(16),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_89,
      O => c00(16)
    );
\c00[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(17),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_88,
      O => c00(17)
    );
\c00[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(18),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_87,
      O => c00(18)
    );
\c00[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(19),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_86,
      O => c00(19)
    );
\c00[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(1),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_104,
      O => c00(1)
    );
\c00[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(20),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_85,
      O => c00(20)
    );
\c00[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(21),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_84,
      O => c00(21)
    );
\c00[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(22),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_83,
      O => c00(22)
    );
\c00[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(23),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_82,
      O => c00(23)
    );
\c00[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(24),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_81,
      O => c00(24)
    );
\c00[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(25),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_80,
      O => c00(25)
    );
\c00[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(26),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_79,
      O => c00(26)
    );
\c00[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(27),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_78,
      O => c00(27)
    );
\c00[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(28),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_77,
      O => c00(28)
    );
\c00[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(29),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_76,
      O => c00(29)
    );
\c00[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(2),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_103,
      O => c00(2)
    );
\c00[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(30),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_75,
      O => c00(30)
    );
\c00[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(31),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_74,
      O => c00(31)
    );
\c00[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(3),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_102,
      O => c00(3)
    );
\c00[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(4),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_101,
      O => c00(4)
    );
\c00[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(5),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_100,
      O => c00(5)
    );
\c00[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(6),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_99,
      O => c00(6)
    );
\c00[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(7),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_98,
      O => c00(7)
    );
\c00[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(8),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_97,
      O => c00(8)
    );
\c00[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => \empty_7_fu_88_reg[31]\(9),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_96,
      O => c00(9)
    );
\c01[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(0),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_105,
      O => c01(0)
    );
\c01[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(10),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_95,
      O => c01(10)
    );
\c01[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(11),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_94,
      O => c01(11)
    );
\c01[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(12),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_93,
      O => c01(12)
    );
\c01[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(13),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_92,
      O => c01(13)
    );
\c01[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(14),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_91,
      O => c01(14)
    );
\c01[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(15),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_90,
      O => c01(15)
    );
\c01[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(16),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_89,
      O => c01(16)
    );
\c01[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(17),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_88,
      O => c01(17)
    );
\c01[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(18),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_87,
      O => c01(18)
    );
\c01[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(19),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_86,
      O => c01(19)
    );
\c01[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(1),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_104,
      O => c01(1)
    );
\c01[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(20),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_85,
      O => c01(20)
    );
\c01[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(21),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_84,
      O => c01(21)
    );
\c01[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(22),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_83,
      O => c01(22)
    );
\c01[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(23),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_82,
      O => c01(23)
    );
\c01[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(24),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_81,
      O => c01(24)
    );
\c01[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(25),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_80,
      O => c01(25)
    );
\c01[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(26),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_79,
      O => c01(26)
    );
\c01[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(27),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_78,
      O => c01(27)
    );
\c01[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(28),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_77,
      O => c01(28)
    );
\c01[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(29),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_76,
      O => c01(29)
    );
\c01[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(2),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_103,
      O => c01(2)
    );
\c01[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(30),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_75,
      O => c01(30)
    );
\c01[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(31),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_74,
      O => c01(31)
    );
\c01[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(3),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_102,
      O => c01(3)
    );
\c01[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(4),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_101,
      O => c01(4)
    );
\c01[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(5),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_100,
      O => c01(5)
    );
\c01[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(6),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_99,
      O => c01(6)
    );
\c01[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(7),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_98,
      O => c01(7)
    );
\c01[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(8),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_97,
      O => c01(8)
    );
\c01[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => \empty_6_fu_84_reg[31]\(9),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_96,
      O => c01(9)
    );
\c10[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(0),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_105,
      O => c10(0)
    );
\c10[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(10),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_95,
      O => c10(10)
    );
\c10[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(11),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_94,
      O => c10(11)
    );
\c10[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(12),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_93,
      O => c10(12)
    );
\c10[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(13),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_92,
      O => c10(13)
    );
\c10[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(14),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_91,
      O => c10(14)
    );
\c10[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(15),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_90,
      O => c10(15)
    );
\c10[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(16),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_89,
      O => c10(16)
    );
\c10[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(17),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_88,
      O => c10(17)
    );
\c10[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(18),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_87,
      O => c10(18)
    );
\c10[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(19),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_86,
      O => c10(19)
    );
\c10[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(1),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_104,
      O => c10(1)
    );
\c10[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(20),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_85,
      O => c10(20)
    );
\c10[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(21),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_84,
      O => c10(21)
    );
\c10[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(22),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_83,
      O => c10(22)
    );
\c10[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(23),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_82,
      O => c10(23)
    );
\c10[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(24),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_81,
      O => c10(24)
    );
\c10[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(25),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_80,
      O => c10(25)
    );
\c10[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(26),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_79,
      O => c10(26)
    );
\c10[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(27),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_78,
      O => c10(27)
    );
\c10[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(28),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_77,
      O => c10(28)
    );
\c10[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(29),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_76,
      O => c10(29)
    );
\c10[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(2),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_103,
      O => c10(2)
    );
\c10[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(30),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_75,
      O => c10(30)
    );
\c10[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(31),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_74,
      O => c10(31)
    );
\c10[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(3),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_102,
      O => c10(3)
    );
\c10[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(4),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_101,
      O => c10(4)
    );
\c10[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(5),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_100,
      O => c10(5)
    );
\c10[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(6),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_99,
      O => c10(6)
    );
\c10[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(7),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_98,
      O => c10(7)
    );
\c10[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(8),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_97,
      O => c10(8)
    );
\c10[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \empty_5_fu_80_reg[31]\(9),
      I1 => select_ln14_reg_530_pp0_iter2_reg(1),
      I2 => select_ln14_reg_530_pp0_iter2_reg(0),
      I3 => cond_reg_545_pp0_iter2_reg,
      I4 => p_reg_reg_n_96,
      O => c10(9)
    );
\c11[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(0),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_105,
      O => c11(0)
    );
\c11[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(10),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_95,
      O => c11(10)
    );
\c11[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(11),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_94,
      O => c11(11)
    );
\c11[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(12),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_93,
      O => c11(12)
    );
\c11[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(13),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_92,
      O => c11(13)
    );
\c11[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(14),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_91,
      O => c11(14)
    );
\c11[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(15),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_90,
      O => c11(15)
    );
\c11[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(16),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_89,
      O => c11(16)
    );
\c11[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(17),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_88,
      O => c11(17)
    );
\c11[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(18),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_87,
      O => c11(18)
    );
\c11[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(19),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_86,
      O => c11(19)
    );
\c11[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(1),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_104,
      O => c11(1)
    );
\c11[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(20),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_85,
      O => c11(20)
    );
\c11[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(21),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_84,
      O => c11(21)
    );
\c11[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(22),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_83,
      O => c11(22)
    );
\c11[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(23),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_82,
      O => c11(23)
    );
\c11[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(24),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_81,
      O => c11(24)
    );
\c11[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(25),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_80,
      O => c11(25)
    );
\c11[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(26),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_79,
      O => c11(26)
    );
\c11[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(27),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_78,
      O => c11(27)
    );
\c11[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(28),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_77,
      O => c11(28)
    );
\c11[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(29),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_76,
      O => c11(29)
    );
\c11[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(2),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_103,
      O => c11(2)
    );
\c11[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(30),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_75,
      O => c11(30)
    );
\c11[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(31),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_74,
      O => c11(31)
    );
\c11[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(3),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_102,
      O => c11(3)
    );
\c11[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(4),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_101,
      O => c11(4)
    );
\c11[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(5),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_100,
      O => c11(5)
    );
\c11[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(6),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_99,
      O => c11(6)
    );
\c11[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(7),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_98,
      O => c11(7)
    );
\c11[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(8),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_97,
      O => c11(8)
    );
\c11[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBA888A"
    )
        port map (
      I0 => Q(9),
      I1 => cond_reg_545_pp0_iter2_reg,
      I2 => select_ln14_reg_530_pp0_iter2_reg(1),
      I3 => select_ln14_reg_530_pp0_iter2_reg(0),
      I4 => p_reg_reg_n_96,
      O => c11(9)
    );
m_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => m_reg_reg_1(15),
      A(28) => m_reg_reg_1(15),
      A(27) => m_reg_reg_1(15),
      A(26) => m_reg_reg_1(15),
      A(25) => m_reg_reg_1(15),
      A(24) => m_reg_reg_1(15),
      A(23) => m_reg_reg_1(15),
      A(22) => m_reg_reg_1(15),
      A(21) => m_reg_reg_1(15),
      A(20) => m_reg_reg_1(15),
      A(19) => m_reg_reg_1(15),
      A(18) => m_reg_reg_1(15),
      A(17) => m_reg_reg_1(15),
      A(16) => m_reg_reg_1(15),
      A(15 downto 0) => m_reg_reg_1(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_m_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => m_reg_reg_0(15),
      B(16) => m_reg_reg_0(15),
      B(15 downto 0) => m_reg_reg_0(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_m_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_m_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_m_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_m_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_m_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => NLW_m_reg_reg_P_UNCONNECTED(47 downto 0),
      PATTERNBDETECT => NLW_m_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_m_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => m_reg_reg_n_106,
      PCOUT(46) => m_reg_reg_n_107,
      PCOUT(45) => m_reg_reg_n_108,
      PCOUT(44) => m_reg_reg_n_109,
      PCOUT(43) => m_reg_reg_n_110,
      PCOUT(42) => m_reg_reg_n_111,
      PCOUT(41) => m_reg_reg_n_112,
      PCOUT(40) => m_reg_reg_n_113,
      PCOUT(39) => m_reg_reg_n_114,
      PCOUT(38) => m_reg_reg_n_115,
      PCOUT(37) => m_reg_reg_n_116,
      PCOUT(36) => m_reg_reg_n_117,
      PCOUT(35) => m_reg_reg_n_118,
      PCOUT(34) => m_reg_reg_n_119,
      PCOUT(33) => m_reg_reg_n_120,
      PCOUT(32) => m_reg_reg_n_121,
      PCOUT(31) => m_reg_reg_n_122,
      PCOUT(30) => m_reg_reg_n_123,
      PCOUT(29) => m_reg_reg_n_124,
      PCOUT(28) => m_reg_reg_n_125,
      PCOUT(27) => m_reg_reg_n_126,
      PCOUT(26) => m_reg_reg_n_127,
      PCOUT(25) => m_reg_reg_n_128,
      PCOUT(24) => m_reg_reg_n_129,
      PCOUT(23) => m_reg_reg_n_130,
      PCOUT(22) => m_reg_reg_n_131,
      PCOUT(21) => m_reg_reg_n_132,
      PCOUT(20) => m_reg_reg_n_133,
      PCOUT(19) => m_reg_reg_n_134,
      PCOUT(18) => m_reg_reg_n_135,
      PCOUT(17) => m_reg_reg_n_136,
      PCOUT(16) => m_reg_reg_n_137,
      PCOUT(15) => m_reg_reg_n_138,
      PCOUT(14) => m_reg_reg_n_139,
      PCOUT(13) => m_reg_reg_n_140,
      PCOUT(12) => m_reg_reg_n_141,
      PCOUT(11) => m_reg_reg_n_142,
      PCOUT(10) => m_reg_reg_n_143,
      PCOUT(9) => m_reg_reg_n_144,
      PCOUT(8) => m_reg_reg_n_145,
      PCOUT(7) => m_reg_reg_n_146,
      PCOUT(6) => m_reg_reg_n_147,
      PCOUT(5) => m_reg_reg_n_148,
      PCOUT(4) => m_reg_reg_n_149,
      PCOUT(3) => m_reg_reg_n_150,
      PCOUT(2) => m_reg_reg_n_151,
      PCOUT(1) => m_reg_reg_n_152,
      PCOUT(0) => m_reg_reg_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_m_reg_reg_UNDERFLOW_UNCONNECTED
    );
p_reg_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(15),
      B(16) => B(15),
      B(15 downto 0) => B(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 32),
      P(31) => p_reg_reg_n_74,
      P(30) => p_reg_reg_n_75,
      P(29) => p_reg_reg_n_76,
      P(28) => p_reg_reg_n_77,
      P(27) => p_reg_reg_n_78,
      P(26) => p_reg_reg_n_79,
      P(25) => p_reg_reg_n_80,
      P(24) => p_reg_reg_n_81,
      P(23) => p_reg_reg_n_82,
      P(22) => p_reg_reg_n_83,
      P(21) => p_reg_reg_n_84,
      P(20) => p_reg_reg_n_85,
      P(19) => p_reg_reg_n_86,
      P(18) => p_reg_reg_n_87,
      P(17) => p_reg_reg_n_88,
      P(16) => p_reg_reg_n_89,
      P(15) => p_reg_reg_n_90,
      P(14) => p_reg_reg_n_91,
      P(13) => p_reg_reg_n_92,
      P(12) => p_reg_reg_n_93,
      P(11) => p_reg_reg_n_94,
      P(10) => p_reg_reg_n_95,
      P(9) => p_reg_reg_n_96,
      P(8) => p_reg_reg_n_97,
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => m_reg_reg_n_106,
      PCIN(46) => m_reg_reg_n_107,
      PCIN(45) => m_reg_reg_n_108,
      PCIN(44) => m_reg_reg_n_109,
      PCIN(43) => m_reg_reg_n_110,
      PCIN(42) => m_reg_reg_n_111,
      PCIN(41) => m_reg_reg_n_112,
      PCIN(40) => m_reg_reg_n_113,
      PCIN(39) => m_reg_reg_n_114,
      PCIN(38) => m_reg_reg_n_115,
      PCIN(37) => m_reg_reg_n_116,
      PCIN(36) => m_reg_reg_n_117,
      PCIN(35) => m_reg_reg_n_118,
      PCIN(34) => m_reg_reg_n_119,
      PCIN(33) => m_reg_reg_n_120,
      PCIN(32) => m_reg_reg_n_121,
      PCIN(31) => m_reg_reg_n_122,
      PCIN(30) => m_reg_reg_n_123,
      PCIN(29) => m_reg_reg_n_124,
      PCIN(28) => m_reg_reg_n_125,
      PCIN(27) => m_reg_reg_n_126,
      PCIN(26) => m_reg_reg_n_127,
      PCIN(25) => m_reg_reg_n_128,
      PCIN(24) => m_reg_reg_n_129,
      PCIN(23) => m_reg_reg_n_130,
      PCIN(22) => m_reg_reg_n_131,
      PCIN(21) => m_reg_reg_n_132,
      PCIN(20) => m_reg_reg_n_133,
      PCIN(19) => m_reg_reg_n_134,
      PCIN(18) => m_reg_reg_n_135,
      PCIN(17) => m_reg_reg_n_136,
      PCIN(16) => m_reg_reg_n_137,
      PCIN(15) => m_reg_reg_n_138,
      PCIN(14) => m_reg_reg_n_139,
      PCIN(13) => m_reg_reg_n_140,
      PCIN(12) => m_reg_reg_n_141,
      PCIN(11) => m_reg_reg_n_142,
      PCIN(10) => m_reg_reg_n_143,
      PCIN(9) => m_reg_reg_n_144,
      PCIN(8) => m_reg_reg_n_145,
      PCIN(7) => m_reg_reg_n_146,
      PCIN(6) => m_reg_reg_n_147,
      PCIN(5) => m_reg_reg_n_148,
      PCIN(4) => m_reg_reg_n_149,
      PCIN(3) => m_reg_reg_n_150,
      PCIN(2) => m_reg_reg_n_151,
      PCIN(1) => m_reg_reg_n_152,
      PCIN(0) => m_reg_reg_n_153,
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED
    );
p_reg_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(15),
      I1 => a01_read_reg_525(15),
      I2 => icmp_ln20_reg_535,
      O => B(15)
    );
p_reg_reg_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(6),
      I1 => a01_read_reg_525(6),
      I2 => icmp_ln20_reg_535,
      O => B(6)
    );
p_reg_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(5),
      I1 => a01_read_reg_525(5),
      I2 => icmp_ln20_reg_535,
      O => B(5)
    );
p_reg_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(4),
      I1 => a01_read_reg_525(4),
      I2 => icmp_ln20_reg_535,
      O => B(4)
    );
p_reg_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(3),
      I1 => a01_read_reg_525(3),
      I2 => icmp_ln20_reg_535,
      O => B(3)
    );
p_reg_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(2),
      I1 => a01_read_reg_525(2),
      I2 => icmp_ln20_reg_535,
      O => B(2)
    );
p_reg_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(1),
      I1 => a01_read_reg_525(1),
      I2 => icmp_ln20_reg_535,
      O => B(1)
    );
p_reg_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(0),
      I1 => a01_read_reg_525(0),
      I2 => icmp_ln20_reg_535,
      O => B(0)
    );
p_reg_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(15),
      I1 => b10_read_reg_515(15),
      I2 => icmp_ln20_1_reg_553,
      O => A(15)
    );
p_reg_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(14),
      I1 => b10_read_reg_515(14),
      I2 => icmp_ln20_1_reg_553,
      O => A(14)
    );
p_reg_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(13),
      I1 => b10_read_reg_515(13),
      I2 => icmp_ln20_1_reg_553,
      O => A(13)
    );
p_reg_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(14),
      I1 => a01_read_reg_525(14),
      I2 => icmp_ln20_reg_535,
      O => B(14)
    );
p_reg_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(12),
      I1 => b10_read_reg_515(12),
      I2 => icmp_ln20_1_reg_553,
      O => A(12)
    );
p_reg_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(11),
      I1 => b10_read_reg_515(11),
      I2 => icmp_ln20_1_reg_553,
      O => A(11)
    );
p_reg_reg_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(10),
      I1 => b10_read_reg_515(10),
      I2 => icmp_ln20_1_reg_553,
      O => A(10)
    );
p_reg_reg_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(9),
      I1 => b10_read_reg_515(9),
      I2 => icmp_ln20_1_reg_553,
      O => A(9)
    );
p_reg_reg_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(8),
      I1 => b10_read_reg_515(8),
      I2 => icmp_ln20_1_reg_553,
      O => A(8)
    );
p_reg_reg_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(7),
      I1 => b10_read_reg_515(7),
      I2 => icmp_ln20_1_reg_553,
      O => A(7)
    );
p_reg_reg_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(6),
      I1 => b10_read_reg_515(6),
      I2 => icmp_ln20_1_reg_553,
      O => A(6)
    );
p_reg_reg_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(5),
      I1 => b10_read_reg_515(5),
      I2 => icmp_ln20_1_reg_553,
      O => A(5)
    );
p_reg_reg_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(4),
      I1 => b10_read_reg_515(4),
      I2 => icmp_ln20_1_reg_553,
      O => A(4)
    );
p_reg_reg_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(3),
      I1 => b10_read_reg_515(3),
      I2 => icmp_ln20_1_reg_553,
      O => A(3)
    );
p_reg_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(13),
      I1 => a01_read_reg_525(13),
      I2 => icmp_ln20_reg_535,
      O => B(13)
    );
p_reg_reg_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(2),
      I1 => b10_read_reg_515(2),
      I2 => icmp_ln20_1_reg_553,
      O => A(2)
    );
p_reg_reg_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(1),
      I1 => b10_read_reg_515(1),
      I2 => icmp_ln20_1_reg_553,
      O => A(1)
    );
p_reg_reg_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => b11_read_reg_510(0),
      I1 => b10_read_reg_515(0),
      I2 => icmp_ln20_1_reg_553,
      O => A(0)
    );
p_reg_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(12),
      I1 => a01_read_reg_525(12),
      I2 => icmp_ln20_reg_535,
      O => B(12)
    );
p_reg_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(11),
      I1 => a01_read_reg_525(11),
      I2 => icmp_ln20_reg_535,
      O => B(11)
    );
p_reg_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(10),
      I1 => a01_read_reg_525(10),
      I2 => icmp_ln20_reg_535,
      O => B(10)
    );
p_reg_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(9),
      I1 => a01_read_reg_525(9),
      I2 => icmp_ln20_reg_535,
      O => B(9)
    );
p_reg_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(8),
      I1 => a01_read_reg_525(8),
      I2 => icmp_ln20_reg_535,
      O => B(8)
    );
p_reg_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => a11_read_reg_520(7),
      I1 => a01_read_reg_525(7),
      I2 => icmp_ln20_reg_535,
      O => B(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1 is
  port (
    c11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c01 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c00 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    m_reg_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_reg_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b11_read_reg_510 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b10_read_reg_515 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    icmp_ln20_1_reg_553 : in STD_LOGIC;
    a11_read_reg_520 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a01_read_reg_525 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    icmp_ln20_reg_535 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cond_reg_545_pp0_iter2_reg : in STD_LOGIC;
    select_ln14_reg_530_pp0_iter2_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \empty_5_fu_80_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \empty_6_fu_84_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \empty_7_fu_88_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1 : entity is "maxmul2x2_mac_muladd_16s_16s_32s_32_4_1";
end bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1;

architecture STRUCTURE of bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1 is
begin
maxmul2x2_mac_muladd_16s_16s_32s_32_4_1_DSP48_0_U: entity work.bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1_DSP48_0
     port map (
      Q(31 downto 0) => Q(31 downto 0),
      a01_read_reg_525(15 downto 0) => a01_read_reg_525(15 downto 0),
      a11_read_reg_520(15 downto 0) => a11_read_reg_520(15 downto 0),
      ap_clk => ap_clk,
      b10_read_reg_515(15 downto 0) => b10_read_reg_515(15 downto 0),
      b11_read_reg_510(15 downto 0) => b11_read_reg_510(15 downto 0),
      c00(31 downto 0) => c00(31 downto 0),
      c01(31 downto 0) => c01(31 downto 0),
      c10(31 downto 0) => c10(31 downto 0),
      c11(31 downto 0) => c11(31 downto 0),
      cond_reg_545_pp0_iter2_reg => cond_reg_545_pp0_iter2_reg,
      \empty_5_fu_80_reg[31]\(31 downto 0) => \empty_5_fu_80_reg[31]\(31 downto 0),
      \empty_6_fu_84_reg[31]\(31 downto 0) => \empty_6_fu_84_reg[31]\(31 downto 0),
      \empty_7_fu_88_reg[31]\(31 downto 0) => \empty_7_fu_88_reg[31]\(31 downto 0),
      icmp_ln20_1_reg_553 => icmp_ln20_1_reg_553,
      icmp_ln20_reg_535 => icmp_ln20_reg_535,
      m_reg_reg_0(15 downto 0) => m_reg_reg(15 downto 0),
      m_reg_reg_1(15 downto 0) => m_reg_reg_0(15 downto 0),
      select_ln14_reg_530_pp0_iter2_reg(1 downto 0) => select_ln14_reg_530_pp0_iter2_reg(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_maxmul2x2 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a01 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b01 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c00 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c01 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c11 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_maxmul2x2 : entity is "maxmul2x2";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of bd_0_hls_inst_0_maxmul2x2 : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0_maxmul2x2 : entity is "yes";
end bd_0_hls_inst_0_maxmul2x2;

architecture STRUCTURE of bd_0_hls_inst_0_maxmul2x2 is
  signal a01_read_reg_525 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal a11_read_reg_520 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal add_ln1413_fu_96 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal add_ln14_1_fu_282_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal add_ln14_fu_294_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3_i_1_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0 : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal b10_read_reg_515 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal b11_read_reg_510 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^c00\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^c01\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^c10\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^c11\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cond_reg_545_pp0_iter1_reg_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal cond_reg_545_pp0_iter2_reg : STD_LOGIC;
  signal empty_5_fu_80 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal empty_6_fu_84 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal empty_7_fu_88 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal empty_fu_76 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal flow_control_loop_pipe_U_n_16 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_19 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_38 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_44 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_45 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_46 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_47 : STD_LOGIC;
  signal i10_fu_72 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal icmp_ln14_reg_568 : STD_LOGIC;
  signal icmp_ln16_reg_563 : STD_LOGIC;
  signal icmp_ln20_1_reg_553 : STD_LOGIC;
  signal icmp_ln20_reg_535 : STD_LOGIC;
  signal indvar_flatten9_fu_68 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal j11_fu_92 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal j_fu_276_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal select_ln14_fu_218_p3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \select_ln14_reg_530_pp0_iter1_reg_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \select_ln14_reg_530_pp0_iter1_reg_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal select_ln14_reg_530_pp0_iter2_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal select_ln20_2_fu_264_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal select_ln20_fu_240_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter3_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair7";
  attribute srl_name : string;
  attribute srl_name of ap_loop_exit_ready_pp0_iter2_reg_reg_srl2 : label is "inst/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \cond_reg_545_pp0_iter1_reg_reg[0]_srl2\ : label is "inst/\cond_reg_545_pp0_iter1_reg_reg ";
  attribute srl_name of \cond_reg_545_pp0_iter1_reg_reg[0]_srl2\ : label is "inst/\cond_reg_545_pp0_iter1_reg_reg[0]_srl2 ";
  attribute srl_bus_name of \select_ln14_reg_530_pp0_iter1_reg_reg[0]_srl2\ : label is "inst/\select_ln14_reg_530_pp0_iter1_reg_reg ";
  attribute srl_name of \select_ln14_reg_530_pp0_iter1_reg_reg[0]_srl2\ : label is "inst/\select_ln14_reg_530_pp0_iter1_reg_reg[0]_srl2 ";
  attribute srl_bus_name of \select_ln14_reg_530_pp0_iter1_reg_reg[1]_srl2\ : label is "inst/\select_ln14_reg_530_pp0_iter1_reg_reg ";
  attribute srl_name of \select_ln14_reg_530_pp0_iter1_reg_reg[1]_srl2\ : label is "inst/\select_ln14_reg_530_pp0_iter1_reg_reg[1]_srl2 ";
begin
  ap_ready <= \^ap_ready\;
  c00(31 downto 0) <= \^c00\(31 downto 0);
  c01(31 downto 0) <= \^c01\(31 downto 0);
  c10(31 downto 0) <= \^c10\(31 downto 0);
  c11(31 downto 0) <= \^c11\(31 downto 0);
\a01_read_reg_525_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(0),
      Q => a01_read_reg_525(0),
      R => '0'
    );
\a01_read_reg_525_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(10),
      Q => a01_read_reg_525(10),
      R => '0'
    );
\a01_read_reg_525_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(11),
      Q => a01_read_reg_525(11),
      R => '0'
    );
\a01_read_reg_525_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(12),
      Q => a01_read_reg_525(12),
      R => '0'
    );
\a01_read_reg_525_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(13),
      Q => a01_read_reg_525(13),
      R => '0'
    );
\a01_read_reg_525_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(14),
      Q => a01_read_reg_525(14),
      R => '0'
    );
\a01_read_reg_525_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(15),
      Q => a01_read_reg_525(15),
      R => '0'
    );
\a01_read_reg_525_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(1),
      Q => a01_read_reg_525(1),
      R => '0'
    );
\a01_read_reg_525_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(2),
      Q => a01_read_reg_525(2),
      R => '0'
    );
\a01_read_reg_525_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(3),
      Q => a01_read_reg_525(3),
      R => '0'
    );
\a01_read_reg_525_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(4),
      Q => a01_read_reg_525(4),
      R => '0'
    );
\a01_read_reg_525_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(5),
      Q => a01_read_reg_525(5),
      R => '0'
    );
\a01_read_reg_525_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(6),
      Q => a01_read_reg_525(6),
      R => '0'
    );
\a01_read_reg_525_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(7),
      Q => a01_read_reg_525(7),
      R => '0'
    );
\a01_read_reg_525_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(8),
      Q => a01_read_reg_525(8),
      R => '0'
    );
\a01_read_reg_525_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a01(9),
      Q => a01_read_reg_525(9),
      R => '0'
    );
\a11_read_reg_520_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(0),
      Q => a11_read_reg_520(0),
      R => '0'
    );
\a11_read_reg_520_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(10),
      Q => a11_read_reg_520(10),
      R => '0'
    );
\a11_read_reg_520_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(11),
      Q => a11_read_reg_520(11),
      R => '0'
    );
\a11_read_reg_520_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(12),
      Q => a11_read_reg_520(12),
      R => '0'
    );
\a11_read_reg_520_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(13),
      Q => a11_read_reg_520(13),
      R => '0'
    );
\a11_read_reg_520_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(14),
      Q => a11_read_reg_520(14),
      R => '0'
    );
\a11_read_reg_520_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(15),
      Q => a11_read_reg_520(15),
      R => '0'
    );
\a11_read_reg_520_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(1),
      Q => a11_read_reg_520(1),
      R => '0'
    );
\a11_read_reg_520_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(2),
      Q => a11_read_reg_520(2),
      R => '0'
    );
\a11_read_reg_520_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(3),
      Q => a11_read_reg_520(3),
      R => '0'
    );
\a11_read_reg_520_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(4),
      Q => a11_read_reg_520(4),
      R => '0'
    );
\a11_read_reg_520_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(5),
      Q => a11_read_reg_520(5),
      R => '0'
    );
\a11_read_reg_520_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(6),
      Q => a11_read_reg_520(6),
      R => '0'
    );
\a11_read_reg_520_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(7),
      Q => a11_read_reg_520(7),
      R => '0'
    );
\a11_read_reg_520_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(8),
      Q => a11_read_reg_520(8),
      R => '0'
    );
\a11_read_reg_520_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => a11(9),
      Q => a11_read_reg_520(9),
      R => '0'
    );
\add_ln1413_fu_96_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => add_ln14_fu_294_p2(0),
      Q => add_ln1413_fu_96(0),
      R => '0'
    );
\add_ln1413_fu_96_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => add_ln14_fu_294_p2(1),
      Q => add_ln1413_fu_96(1),
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_start,
      I1 => ap_rst,
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
      R => '0'
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_rst,
      O => ap_enable_reg_pp0_iter2_i_1_n_0
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_0,
      Q => ap_enable_reg_pp0_iter2,
      R => '0'
    );
ap_enable_reg_pp0_iter3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_rst,
      O => ap_enable_reg_pp0_iter3_i_1_n_0
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3_i_1_n_0,
      Q => ap_enable_reg_pp0_iter3,
      R => '0'
    );
ap_idle_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_enable_reg_pp0_iter2,
      I2 => ap_enable_reg_pp0_iter3,
      I3 => ap_start,
      O => ap_idle
    );
ap_loop_exit_ready_pp0_iter2_reg_reg_srl2: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \^ap_ready\,
      Q => ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0
    );
ap_loop_exit_ready_pp0_iter3_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0,
      Q => ap_done,
      R => '0'
    );
\b10_read_reg_515_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(0),
      Q => b10_read_reg_515(0),
      R => '0'
    );
\b10_read_reg_515_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(10),
      Q => b10_read_reg_515(10),
      R => '0'
    );
\b10_read_reg_515_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(11),
      Q => b10_read_reg_515(11),
      R => '0'
    );
\b10_read_reg_515_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(12),
      Q => b10_read_reg_515(12),
      R => '0'
    );
\b10_read_reg_515_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(13),
      Q => b10_read_reg_515(13),
      R => '0'
    );
\b10_read_reg_515_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(14),
      Q => b10_read_reg_515(14),
      R => '0'
    );
\b10_read_reg_515_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(15),
      Q => b10_read_reg_515(15),
      R => '0'
    );
\b10_read_reg_515_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(1),
      Q => b10_read_reg_515(1),
      R => '0'
    );
\b10_read_reg_515_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(2),
      Q => b10_read_reg_515(2),
      R => '0'
    );
\b10_read_reg_515_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(3),
      Q => b10_read_reg_515(3),
      R => '0'
    );
\b10_read_reg_515_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(4),
      Q => b10_read_reg_515(4),
      R => '0'
    );
\b10_read_reg_515_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(5),
      Q => b10_read_reg_515(5),
      R => '0'
    );
\b10_read_reg_515_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(6),
      Q => b10_read_reg_515(6),
      R => '0'
    );
\b10_read_reg_515_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(7),
      Q => b10_read_reg_515(7),
      R => '0'
    );
\b10_read_reg_515_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(8),
      Q => b10_read_reg_515(8),
      R => '0'
    );
\b10_read_reg_515_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b10(9),
      Q => b10_read_reg_515(9),
      R => '0'
    );
\b11_read_reg_510_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(0),
      Q => b11_read_reg_510(0),
      R => '0'
    );
\b11_read_reg_510_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(10),
      Q => b11_read_reg_510(10),
      R => '0'
    );
\b11_read_reg_510_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(11),
      Q => b11_read_reg_510(11),
      R => '0'
    );
\b11_read_reg_510_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(12),
      Q => b11_read_reg_510(12),
      R => '0'
    );
\b11_read_reg_510_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(13),
      Q => b11_read_reg_510(13),
      R => '0'
    );
\b11_read_reg_510_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(14),
      Q => b11_read_reg_510(14),
      R => '0'
    );
\b11_read_reg_510_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(15),
      Q => b11_read_reg_510(15),
      R => '0'
    );
\b11_read_reg_510_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(1),
      Q => b11_read_reg_510(1),
      R => '0'
    );
\b11_read_reg_510_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(2),
      Q => b11_read_reg_510(2),
      R => '0'
    );
\b11_read_reg_510_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(3),
      Q => b11_read_reg_510(3),
      R => '0'
    );
\b11_read_reg_510_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(4),
      Q => b11_read_reg_510(4),
      R => '0'
    );
\b11_read_reg_510_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(5),
      Q => b11_read_reg_510(5),
      R => '0'
    );
\b11_read_reg_510_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(6),
      Q => b11_read_reg_510(6),
      R => '0'
    );
\b11_read_reg_510_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(7),
      Q => b11_read_reg_510(7),
      R => '0'
    );
\b11_read_reg_510_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(8),
      Q => b11_read_reg_510(8),
      R => '0'
    );
\b11_read_reg_510_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => b11(9),
      Q => b11_read_reg_510(9),
      R => '0'
    );
\cond_reg_545_pp0_iter1_reg_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => flow_control_loop_pipe_U_n_19,
      Q => \cond_reg_545_pp0_iter1_reg_reg[0]_srl2_n_0\
    );
\cond_reg_545_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \cond_reg_545_pp0_iter1_reg_reg[0]_srl2_n_0\,
      Q => cond_reg_545_pp0_iter2_reg,
      R => '0'
    );
\empty_5_fu_80_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(0),
      Q => empty_5_fu_80(0),
      R => '0'
    );
\empty_5_fu_80_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(10),
      Q => empty_5_fu_80(10),
      R => '0'
    );
\empty_5_fu_80_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(11),
      Q => empty_5_fu_80(11),
      R => '0'
    );
\empty_5_fu_80_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(12),
      Q => empty_5_fu_80(12),
      R => '0'
    );
\empty_5_fu_80_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(13),
      Q => empty_5_fu_80(13),
      R => '0'
    );
\empty_5_fu_80_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(14),
      Q => empty_5_fu_80(14),
      R => '0'
    );
\empty_5_fu_80_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(15),
      Q => empty_5_fu_80(15),
      R => '0'
    );
\empty_5_fu_80_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(16),
      Q => empty_5_fu_80(16),
      R => '0'
    );
\empty_5_fu_80_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(17),
      Q => empty_5_fu_80(17),
      R => '0'
    );
\empty_5_fu_80_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(18),
      Q => empty_5_fu_80(18),
      R => '0'
    );
\empty_5_fu_80_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(19),
      Q => empty_5_fu_80(19),
      R => '0'
    );
\empty_5_fu_80_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(1),
      Q => empty_5_fu_80(1),
      R => '0'
    );
\empty_5_fu_80_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(20),
      Q => empty_5_fu_80(20),
      R => '0'
    );
\empty_5_fu_80_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(21),
      Q => empty_5_fu_80(21),
      R => '0'
    );
\empty_5_fu_80_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(22),
      Q => empty_5_fu_80(22),
      R => '0'
    );
\empty_5_fu_80_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(23),
      Q => empty_5_fu_80(23),
      R => '0'
    );
\empty_5_fu_80_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(24),
      Q => empty_5_fu_80(24),
      R => '0'
    );
\empty_5_fu_80_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(25),
      Q => empty_5_fu_80(25),
      R => '0'
    );
\empty_5_fu_80_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(26),
      Q => empty_5_fu_80(26),
      R => '0'
    );
\empty_5_fu_80_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(27),
      Q => empty_5_fu_80(27),
      R => '0'
    );
\empty_5_fu_80_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(28),
      Q => empty_5_fu_80(28),
      R => '0'
    );
\empty_5_fu_80_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(29),
      Q => empty_5_fu_80(29),
      R => '0'
    );
\empty_5_fu_80_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(2),
      Q => empty_5_fu_80(2),
      R => '0'
    );
\empty_5_fu_80_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(30),
      Q => empty_5_fu_80(30),
      R => '0'
    );
\empty_5_fu_80_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(31),
      Q => empty_5_fu_80(31),
      R => '0'
    );
\empty_5_fu_80_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(3),
      Q => empty_5_fu_80(3),
      R => '0'
    );
\empty_5_fu_80_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(4),
      Q => empty_5_fu_80(4),
      R => '0'
    );
\empty_5_fu_80_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(5),
      Q => empty_5_fu_80(5),
      R => '0'
    );
\empty_5_fu_80_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(6),
      Q => empty_5_fu_80(6),
      R => '0'
    );
\empty_5_fu_80_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(7),
      Q => empty_5_fu_80(7),
      R => '0'
    );
\empty_5_fu_80_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(8),
      Q => empty_5_fu_80(8),
      R => '0'
    );
\empty_5_fu_80_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c10\(9),
      Q => empty_5_fu_80(9),
      R => '0'
    );
\empty_6_fu_84_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(0),
      Q => empty_6_fu_84(0),
      R => '0'
    );
\empty_6_fu_84_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(10),
      Q => empty_6_fu_84(10),
      R => '0'
    );
\empty_6_fu_84_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(11),
      Q => empty_6_fu_84(11),
      R => '0'
    );
\empty_6_fu_84_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(12),
      Q => empty_6_fu_84(12),
      R => '0'
    );
\empty_6_fu_84_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(13),
      Q => empty_6_fu_84(13),
      R => '0'
    );
\empty_6_fu_84_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(14),
      Q => empty_6_fu_84(14),
      R => '0'
    );
\empty_6_fu_84_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(15),
      Q => empty_6_fu_84(15),
      R => '0'
    );
\empty_6_fu_84_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(16),
      Q => empty_6_fu_84(16),
      R => '0'
    );
\empty_6_fu_84_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(17),
      Q => empty_6_fu_84(17),
      R => '0'
    );
\empty_6_fu_84_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(18),
      Q => empty_6_fu_84(18),
      R => '0'
    );
\empty_6_fu_84_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(19),
      Q => empty_6_fu_84(19),
      R => '0'
    );
\empty_6_fu_84_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(1),
      Q => empty_6_fu_84(1),
      R => '0'
    );
\empty_6_fu_84_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(20),
      Q => empty_6_fu_84(20),
      R => '0'
    );
\empty_6_fu_84_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(21),
      Q => empty_6_fu_84(21),
      R => '0'
    );
\empty_6_fu_84_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(22),
      Q => empty_6_fu_84(22),
      R => '0'
    );
\empty_6_fu_84_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(23),
      Q => empty_6_fu_84(23),
      R => '0'
    );
\empty_6_fu_84_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(24),
      Q => empty_6_fu_84(24),
      R => '0'
    );
\empty_6_fu_84_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(25),
      Q => empty_6_fu_84(25),
      R => '0'
    );
\empty_6_fu_84_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(26),
      Q => empty_6_fu_84(26),
      R => '0'
    );
\empty_6_fu_84_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(27),
      Q => empty_6_fu_84(27),
      R => '0'
    );
\empty_6_fu_84_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(28),
      Q => empty_6_fu_84(28),
      R => '0'
    );
\empty_6_fu_84_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(29),
      Q => empty_6_fu_84(29),
      R => '0'
    );
\empty_6_fu_84_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(2),
      Q => empty_6_fu_84(2),
      R => '0'
    );
\empty_6_fu_84_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(30),
      Q => empty_6_fu_84(30),
      R => '0'
    );
\empty_6_fu_84_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(31),
      Q => empty_6_fu_84(31),
      R => '0'
    );
\empty_6_fu_84_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(3),
      Q => empty_6_fu_84(3),
      R => '0'
    );
\empty_6_fu_84_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(4),
      Q => empty_6_fu_84(4),
      R => '0'
    );
\empty_6_fu_84_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(5),
      Q => empty_6_fu_84(5),
      R => '0'
    );
\empty_6_fu_84_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(6),
      Q => empty_6_fu_84(6),
      R => '0'
    );
\empty_6_fu_84_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(7),
      Q => empty_6_fu_84(7),
      R => '0'
    );
\empty_6_fu_84_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(8),
      Q => empty_6_fu_84(8),
      R => '0'
    );
\empty_6_fu_84_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c01\(9),
      Q => empty_6_fu_84(9),
      R => '0'
    );
\empty_7_fu_88_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(0),
      Q => empty_7_fu_88(0),
      R => '0'
    );
\empty_7_fu_88_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(10),
      Q => empty_7_fu_88(10),
      R => '0'
    );
\empty_7_fu_88_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(11),
      Q => empty_7_fu_88(11),
      R => '0'
    );
\empty_7_fu_88_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(12),
      Q => empty_7_fu_88(12),
      R => '0'
    );
\empty_7_fu_88_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(13),
      Q => empty_7_fu_88(13),
      R => '0'
    );
\empty_7_fu_88_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(14),
      Q => empty_7_fu_88(14),
      R => '0'
    );
\empty_7_fu_88_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(15),
      Q => empty_7_fu_88(15),
      R => '0'
    );
\empty_7_fu_88_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(16),
      Q => empty_7_fu_88(16),
      R => '0'
    );
\empty_7_fu_88_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(17),
      Q => empty_7_fu_88(17),
      R => '0'
    );
\empty_7_fu_88_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(18),
      Q => empty_7_fu_88(18),
      R => '0'
    );
\empty_7_fu_88_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(19),
      Q => empty_7_fu_88(19),
      R => '0'
    );
\empty_7_fu_88_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(1),
      Q => empty_7_fu_88(1),
      R => '0'
    );
\empty_7_fu_88_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(20),
      Q => empty_7_fu_88(20),
      R => '0'
    );
\empty_7_fu_88_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(21),
      Q => empty_7_fu_88(21),
      R => '0'
    );
\empty_7_fu_88_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(22),
      Q => empty_7_fu_88(22),
      R => '0'
    );
\empty_7_fu_88_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(23),
      Q => empty_7_fu_88(23),
      R => '0'
    );
\empty_7_fu_88_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(24),
      Q => empty_7_fu_88(24),
      R => '0'
    );
\empty_7_fu_88_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(25),
      Q => empty_7_fu_88(25),
      R => '0'
    );
\empty_7_fu_88_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(26),
      Q => empty_7_fu_88(26),
      R => '0'
    );
\empty_7_fu_88_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(27),
      Q => empty_7_fu_88(27),
      R => '0'
    );
\empty_7_fu_88_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(28),
      Q => empty_7_fu_88(28),
      R => '0'
    );
\empty_7_fu_88_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(29),
      Q => empty_7_fu_88(29),
      R => '0'
    );
\empty_7_fu_88_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(2),
      Q => empty_7_fu_88(2),
      R => '0'
    );
\empty_7_fu_88_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(30),
      Q => empty_7_fu_88(30),
      R => '0'
    );
\empty_7_fu_88_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(31),
      Q => empty_7_fu_88(31),
      R => '0'
    );
\empty_7_fu_88_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(3),
      Q => empty_7_fu_88(3),
      R => '0'
    );
\empty_7_fu_88_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(4),
      Q => empty_7_fu_88(4),
      R => '0'
    );
\empty_7_fu_88_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(5),
      Q => empty_7_fu_88(5),
      R => '0'
    );
\empty_7_fu_88_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(6),
      Q => empty_7_fu_88(6),
      R => '0'
    );
\empty_7_fu_88_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(7),
      Q => empty_7_fu_88(7),
      R => '0'
    );
\empty_7_fu_88_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(8),
      Q => empty_7_fu_88(8),
      R => '0'
    );
\empty_7_fu_88_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c00\(9),
      Q => empty_7_fu_88(9),
      R => '0'
    );
\empty_fu_76_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(0),
      Q => empty_fu_76(0),
      R => '0'
    );
\empty_fu_76_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(10),
      Q => empty_fu_76(10),
      R => '0'
    );
\empty_fu_76_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(11),
      Q => empty_fu_76(11),
      R => '0'
    );
\empty_fu_76_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(12),
      Q => empty_fu_76(12),
      R => '0'
    );
\empty_fu_76_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(13),
      Q => empty_fu_76(13),
      R => '0'
    );
\empty_fu_76_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(14),
      Q => empty_fu_76(14),
      R => '0'
    );
\empty_fu_76_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(15),
      Q => empty_fu_76(15),
      R => '0'
    );
\empty_fu_76_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(16),
      Q => empty_fu_76(16),
      R => '0'
    );
\empty_fu_76_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(17),
      Q => empty_fu_76(17),
      R => '0'
    );
\empty_fu_76_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(18),
      Q => empty_fu_76(18),
      R => '0'
    );
\empty_fu_76_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(19),
      Q => empty_fu_76(19),
      R => '0'
    );
\empty_fu_76_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(1),
      Q => empty_fu_76(1),
      R => '0'
    );
\empty_fu_76_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(20),
      Q => empty_fu_76(20),
      R => '0'
    );
\empty_fu_76_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(21),
      Q => empty_fu_76(21),
      R => '0'
    );
\empty_fu_76_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(22),
      Q => empty_fu_76(22),
      R => '0'
    );
\empty_fu_76_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(23),
      Q => empty_fu_76(23),
      R => '0'
    );
\empty_fu_76_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(24),
      Q => empty_fu_76(24),
      R => '0'
    );
\empty_fu_76_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(25),
      Q => empty_fu_76(25),
      R => '0'
    );
\empty_fu_76_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(26),
      Q => empty_fu_76(26),
      R => '0'
    );
\empty_fu_76_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(27),
      Q => empty_fu_76(27),
      R => '0'
    );
\empty_fu_76_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(28),
      Q => empty_fu_76(28),
      R => '0'
    );
\empty_fu_76_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(29),
      Q => empty_fu_76(29),
      R => '0'
    );
\empty_fu_76_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(2),
      Q => empty_fu_76(2),
      R => '0'
    );
\empty_fu_76_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(30),
      Q => empty_fu_76(30),
      R => '0'
    );
\empty_fu_76_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(31),
      Q => empty_fu_76(31),
      R => '0'
    );
\empty_fu_76_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(3),
      Q => empty_fu_76(3),
      R => '0'
    );
\empty_fu_76_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(4),
      Q => empty_fu_76(4),
      R => '0'
    );
\empty_fu_76_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(5),
      Q => empty_fu_76(5),
      R => '0'
    );
\empty_fu_76_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(6),
      Q => empty_fu_76(6),
      R => '0'
    );
\empty_fu_76_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(7),
      Q => empty_fu_76(7),
      R => '0'
    );
\empty_fu_76_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(8),
      Q => empty_fu_76(8),
      R => '0'
    );
\empty_fu_76_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter3,
      D => \^c11\(9),
      Q => empty_fu_76(9),
      R => '0'
    );
flow_control_loop_pipe_U: entity work.bd_0_hls_inst_0_maxmul2x2_flow_control_loop_pipe
     port map (
      A(15 downto 0) => select_ln20_2_fu_264_p3(15 downto 0),
      B(15 downto 0) => select_ln20_fu_240_p3(15 downto 0),
      D(1 downto 0) => add_ln14_fu_294_p2(1 downto 0),
      Q(1 downto 0) => indvar_flatten9_fu_68(1 downto 0),
      a00(15 downto 0) => a00(15 downto 0),
      a10(15 downto 0) => a10(15 downto 0),
      \add_ln1413_fu_96_reg[1]\(1) => flow_control_loop_pipe_U_n_44,
      \add_ln1413_fu_96_reg[1]\(0) => flow_control_loop_pipe_U_n_45,
      \add_ln1413_fu_96_reg[1]_0\(1 downto 0) => i10_fu_72(1 downto 0),
      \add_ln1413_fu_96_reg[1]_1\(1 downto 0) => add_ln1413_fu_96(1 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_ready => \^ap_ready\,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b00(15 downto 0) => b00(15 downto 0),
      b01(15 downto 0) => b01(15 downto 0),
      \i10_fu_72_reg[0]\ => flow_control_loop_pipe_U_n_19,
      \i10_fu_72_reg[0]_0\ => flow_control_loop_pipe_U_n_38,
      icmp_ln14_reg_568 => icmp_ln14_reg_568,
      icmp_ln16_reg_563 => icmp_ln16_reg_563,
      \icmp_ln20_1_reg_553_reg[0]\(1 downto 0) => j11_fu_92(1 downto 0),
      \indvar_flatten9_fu_68_reg[0]\(1 downto 0) => add_ln14_1_fu_282_p2(1 downto 0),
      \indvar_flatten9_fu_68_reg[0]_0\ => flow_control_loop_pipe_U_n_46,
      \j11_fu_92_reg[0]\ => flow_control_loop_pipe_U_n_16,
      \j11_fu_92_reg[0]_0\(1 downto 0) => j_fu_276_p2(1 downto 0),
      \j11_fu_92_reg[1]\ => flow_control_loop_pipe_U_n_47,
      select_ln14_fu_218_p3(1 downto 0) => select_ln14_fu_218_p3(1 downto 0)
    );
\i10_fu_72_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => flow_control_loop_pipe_U_n_45,
      Q => i10_fu_72(0),
      R => '0'
    );
\i10_fu_72_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => flow_control_loop_pipe_U_n_44,
      Q => i10_fu_72(1),
      R => '0'
    );
\icmp_ln14_reg_568_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_46,
      Q => icmp_ln14_reg_568,
      R => '0'
    );
\icmp_ln16_reg_563_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_start,
      D => flow_control_loop_pipe_U_n_47,
      Q => icmp_ln16_reg_563,
      R => '0'
    );
\icmp_ln20_1_reg_553_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_16,
      Q => icmp_ln20_1_reg_553,
      R => '0'
    );
\icmp_ln20_reg_535_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_38,
      Q => icmp_ln20_reg_535,
      R => '0'
    );
\indvar_flatten9_fu_68_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => add_ln14_1_fu_282_p2(0),
      Q => indvar_flatten9_fu_68(0),
      R => '0'
    );
\indvar_flatten9_fu_68_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => add_ln14_1_fu_282_p2(1),
      Q => indvar_flatten9_fu_68(1),
      R => '0'
    );
\j11_fu_92_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => j_fu_276_p2(0),
      Q => j11_fu_92(0),
      R => '0'
    );
\j11_fu_92_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => j_fu_276_p2(1),
      Q => j11_fu_92(1),
      R => '0'
    );
mac_muladd_16s_16s_32s_32_4_1_U2: entity work.bd_0_hls_inst_0_maxmul2x2_mac_muladd_16s_16s_32s_32_4_1
     port map (
      Q(31 downto 0) => empty_fu_76(31 downto 0),
      a01_read_reg_525(15 downto 0) => a01_read_reg_525(15 downto 0),
      a11_read_reg_520(15 downto 0) => a11_read_reg_520(15 downto 0),
      ap_clk => ap_clk,
      b10_read_reg_515(15 downto 0) => b10_read_reg_515(15 downto 0),
      b11_read_reg_510(15 downto 0) => b11_read_reg_510(15 downto 0),
      c00(31 downto 0) => \^c00\(31 downto 0),
      c01(31 downto 0) => \^c01\(31 downto 0),
      c10(31 downto 0) => \^c10\(31 downto 0),
      c11(31 downto 0) => \^c11\(31 downto 0),
      cond_reg_545_pp0_iter2_reg => cond_reg_545_pp0_iter2_reg,
      \empty_5_fu_80_reg[31]\(31 downto 0) => empty_5_fu_80(31 downto 0),
      \empty_6_fu_84_reg[31]\(31 downto 0) => empty_6_fu_84(31 downto 0),
      \empty_7_fu_88_reg[31]\(31 downto 0) => empty_7_fu_88(31 downto 0),
      icmp_ln20_1_reg_553 => icmp_ln20_1_reg_553,
      icmp_ln20_reg_535 => icmp_ln20_reg_535,
      m_reg_reg(15 downto 0) => select_ln20_fu_240_p3(15 downto 0),
      m_reg_reg_0(15 downto 0) => select_ln20_2_fu_264_p3(15 downto 0),
      select_ln14_reg_530_pp0_iter2_reg(1 downto 0) => select_ln14_reg_530_pp0_iter2_reg(1 downto 0)
    );
\select_ln14_reg_530_pp0_iter1_reg_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => select_ln14_fu_218_p3(0),
      Q => \select_ln14_reg_530_pp0_iter1_reg_reg[0]_srl2_n_0\
    );
\select_ln14_reg_530_pp0_iter1_reg_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => select_ln14_fu_218_p3(1),
      Q => \select_ln14_reg_530_pp0_iter1_reg_reg[1]_srl2_n_0\
    );
\select_ln14_reg_530_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \select_ln14_reg_530_pp0_iter1_reg_reg[0]_srl2_n_0\,
      Q => select_ln14_reg_530_pp0_iter2_reg(0),
      R => '0'
    );
\select_ln14_reg_530_pp0_iter2_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \select_ln14_reg_530_pp0_iter1_reg_reg[1]_srl2_n_0\,
      Q => select_ln14_reg_530_pp0_iter2_reg(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    a00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a01 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b01 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c00 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c01 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c11 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,maxmul2x2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0_hls_inst_0 : entity is "maxmul2x2,Vivado 2025.1";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0 : entity is "yes";
end bd_0_hls_inst_0;

architecture STRUCTURE of bd_0_hls_inst_0 is
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_MODE of ap_done : signal is "slave";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_MODE of ap_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of a00 : signal is "xilinx.com:signal:data:1.0 a00 DATA";
  attribute X_INTERFACE_MODE of a00 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of a00 : signal is "XIL_INTERFACENAME a00, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a01 : signal is "xilinx.com:signal:data:1.0 a01 DATA";
  attribute X_INTERFACE_MODE of a01 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of a01 : signal is "XIL_INTERFACENAME a01, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a10 : signal is "xilinx.com:signal:data:1.0 a10 DATA";
  attribute X_INTERFACE_MODE of a10 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of a10 : signal is "XIL_INTERFACENAME a10, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of a11 : signal is "xilinx.com:signal:data:1.0 a11 DATA";
  attribute X_INTERFACE_MODE of a11 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of a11 : signal is "XIL_INTERFACENAME a11, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b00 : signal is "xilinx.com:signal:data:1.0 b00 DATA";
  attribute X_INTERFACE_MODE of b00 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of b00 : signal is "XIL_INTERFACENAME b00, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b01 : signal is "xilinx.com:signal:data:1.0 b01 DATA";
  attribute X_INTERFACE_MODE of b01 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of b01 : signal is "XIL_INTERFACENAME b01, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b10 : signal is "xilinx.com:signal:data:1.0 b10 DATA";
  attribute X_INTERFACE_MODE of b10 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of b10 : signal is "XIL_INTERFACENAME b10, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b11 : signal is "xilinx.com:signal:data:1.0 b11 DATA";
  attribute X_INTERFACE_MODE of b11 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of b11 : signal is "XIL_INTERFACENAME b11, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c00 : signal is "xilinx.com:signal:data:1.0 c00 DATA";
  attribute X_INTERFACE_MODE of c00 : signal is "master";
  attribute X_INTERFACE_PARAMETER of c00 : signal is "XIL_INTERFACENAME c00, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c01 : signal is "xilinx.com:signal:data:1.0 c01 DATA";
  attribute X_INTERFACE_MODE of c01 : signal is "master";
  attribute X_INTERFACE_PARAMETER of c01 : signal is "XIL_INTERFACENAME c01, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c10 : signal is "xilinx.com:signal:data:1.0 c10 DATA";
  attribute X_INTERFACE_MODE of c10 : signal is "master";
  attribute X_INTERFACE_PARAMETER of c10 : signal is "XIL_INTERFACENAME c10, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c11 : signal is "xilinx.com:signal:data:1.0 c11 DATA";
  attribute X_INTERFACE_MODE of c11 : signal is "master";
  attribute X_INTERFACE_PARAMETER of c11 : signal is "XIL_INTERFACENAME c11, LAYERED_METADATA undef";
begin
inst: entity work.bd_0_hls_inst_0_maxmul2x2
     port map (
      a00(15 downto 0) => a00(15 downto 0),
      a01(15 downto 0) => a01(15 downto 0),
      a10(15 downto 0) => a10(15 downto 0),
      a11(15 downto 0) => a11(15 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      b00(15 downto 0) => b00(15 downto 0),
      b01(15 downto 0) => b01(15 downto 0),
      b10(15 downto 0) => b10(15 downto 0),
      b11(15 downto 0) => b11(15 downto 0),
      c00(31 downto 0) => c00(31 downto 0),
      c01(31 downto 0) => c01(31 downto 0),
      c10(31 downto 0) => c10(31 downto 0),
      c11(31 downto 0) => c11(31 downto 0)
    );
end STRUCTURE;
