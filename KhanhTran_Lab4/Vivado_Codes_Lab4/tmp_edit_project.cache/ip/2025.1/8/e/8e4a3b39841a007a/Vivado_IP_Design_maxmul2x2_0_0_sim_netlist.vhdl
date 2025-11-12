-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Nov  8 21:02:05 2025
-- Host        : katnlot running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Vivado_IP_Design_maxmul2x2_0_0_sim_netlist.vhdl
-- Design      : Vivado_IP_Design_maxmul2x2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maxmul2x2 is
  port (
    c00 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c01 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_done : out STD_LOGIC;
    b00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a00 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    b10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a01 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b01 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a11 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maxmul2x2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maxmul2x2 is
  signal RSTP : STD_LOGIC;
  signal ap_done_i_1_n_0 : STD_LOGIC;
  signal c001_n_100 : STD_LOGIC;
  signal c001_n_101 : STD_LOGIC;
  signal c001_n_102 : STD_LOGIC;
  signal c001_n_103 : STD_LOGIC;
  signal c001_n_104 : STD_LOGIC;
  signal c001_n_105 : STD_LOGIC;
  signal c001_n_106 : STD_LOGIC;
  signal c001_n_107 : STD_LOGIC;
  signal c001_n_108 : STD_LOGIC;
  signal c001_n_109 : STD_LOGIC;
  signal c001_n_110 : STD_LOGIC;
  signal c001_n_111 : STD_LOGIC;
  signal c001_n_112 : STD_LOGIC;
  signal c001_n_113 : STD_LOGIC;
  signal c001_n_114 : STD_LOGIC;
  signal c001_n_115 : STD_LOGIC;
  signal c001_n_116 : STD_LOGIC;
  signal c001_n_117 : STD_LOGIC;
  signal c001_n_118 : STD_LOGIC;
  signal c001_n_119 : STD_LOGIC;
  signal c001_n_120 : STD_LOGIC;
  signal c001_n_121 : STD_LOGIC;
  signal c001_n_122 : STD_LOGIC;
  signal c001_n_123 : STD_LOGIC;
  signal c001_n_124 : STD_LOGIC;
  signal c001_n_125 : STD_LOGIC;
  signal c001_n_126 : STD_LOGIC;
  signal c001_n_127 : STD_LOGIC;
  signal c001_n_128 : STD_LOGIC;
  signal c001_n_129 : STD_LOGIC;
  signal c001_n_130 : STD_LOGIC;
  signal c001_n_131 : STD_LOGIC;
  signal c001_n_132 : STD_LOGIC;
  signal c001_n_133 : STD_LOGIC;
  signal c001_n_134 : STD_LOGIC;
  signal c001_n_135 : STD_LOGIC;
  signal c001_n_136 : STD_LOGIC;
  signal c001_n_137 : STD_LOGIC;
  signal c001_n_138 : STD_LOGIC;
  signal c001_n_139 : STD_LOGIC;
  signal c001_n_140 : STD_LOGIC;
  signal c001_n_141 : STD_LOGIC;
  signal c001_n_142 : STD_LOGIC;
  signal c001_n_143 : STD_LOGIC;
  signal c001_n_144 : STD_LOGIC;
  signal c001_n_145 : STD_LOGIC;
  signal c001_n_146 : STD_LOGIC;
  signal c001_n_147 : STD_LOGIC;
  signal c001_n_148 : STD_LOGIC;
  signal c001_n_149 : STD_LOGIC;
  signal c001_n_150 : STD_LOGIC;
  signal c001_n_151 : STD_LOGIC;
  signal c001_n_152 : STD_LOGIC;
  signal c001_n_153 : STD_LOGIC;
  signal c001_n_74 : STD_LOGIC;
  signal c001_n_75 : STD_LOGIC;
  signal c001_n_76 : STD_LOGIC;
  signal c001_n_77 : STD_LOGIC;
  signal c001_n_78 : STD_LOGIC;
  signal c001_n_79 : STD_LOGIC;
  signal c001_n_80 : STD_LOGIC;
  signal c001_n_81 : STD_LOGIC;
  signal c001_n_82 : STD_LOGIC;
  signal c001_n_83 : STD_LOGIC;
  signal c001_n_84 : STD_LOGIC;
  signal c001_n_85 : STD_LOGIC;
  signal c001_n_86 : STD_LOGIC;
  signal c001_n_87 : STD_LOGIC;
  signal c001_n_88 : STD_LOGIC;
  signal c001_n_89 : STD_LOGIC;
  signal c001_n_90 : STD_LOGIC;
  signal c001_n_91 : STD_LOGIC;
  signal c001_n_92 : STD_LOGIC;
  signal c001_n_93 : STD_LOGIC;
  signal c001_n_94 : STD_LOGIC;
  signal c001_n_95 : STD_LOGIC;
  signal c001_n_96 : STD_LOGIC;
  signal c001_n_97 : STD_LOGIC;
  signal c001_n_98 : STD_LOGIC;
  signal c001_n_99 : STD_LOGIC;
  signal c011_n_100 : STD_LOGIC;
  signal c011_n_101 : STD_LOGIC;
  signal c011_n_102 : STD_LOGIC;
  signal c011_n_103 : STD_LOGIC;
  signal c011_n_104 : STD_LOGIC;
  signal c011_n_105 : STD_LOGIC;
  signal c011_n_106 : STD_LOGIC;
  signal c011_n_107 : STD_LOGIC;
  signal c011_n_108 : STD_LOGIC;
  signal c011_n_109 : STD_LOGIC;
  signal c011_n_110 : STD_LOGIC;
  signal c011_n_111 : STD_LOGIC;
  signal c011_n_112 : STD_LOGIC;
  signal c011_n_113 : STD_LOGIC;
  signal c011_n_114 : STD_LOGIC;
  signal c011_n_115 : STD_LOGIC;
  signal c011_n_116 : STD_LOGIC;
  signal c011_n_117 : STD_LOGIC;
  signal c011_n_118 : STD_LOGIC;
  signal c011_n_119 : STD_LOGIC;
  signal c011_n_120 : STD_LOGIC;
  signal c011_n_121 : STD_LOGIC;
  signal c011_n_122 : STD_LOGIC;
  signal c011_n_123 : STD_LOGIC;
  signal c011_n_124 : STD_LOGIC;
  signal c011_n_125 : STD_LOGIC;
  signal c011_n_126 : STD_LOGIC;
  signal c011_n_127 : STD_LOGIC;
  signal c011_n_128 : STD_LOGIC;
  signal c011_n_129 : STD_LOGIC;
  signal c011_n_130 : STD_LOGIC;
  signal c011_n_131 : STD_LOGIC;
  signal c011_n_132 : STD_LOGIC;
  signal c011_n_133 : STD_LOGIC;
  signal c011_n_134 : STD_LOGIC;
  signal c011_n_135 : STD_LOGIC;
  signal c011_n_136 : STD_LOGIC;
  signal c011_n_137 : STD_LOGIC;
  signal c011_n_138 : STD_LOGIC;
  signal c011_n_139 : STD_LOGIC;
  signal c011_n_140 : STD_LOGIC;
  signal c011_n_141 : STD_LOGIC;
  signal c011_n_142 : STD_LOGIC;
  signal c011_n_143 : STD_LOGIC;
  signal c011_n_144 : STD_LOGIC;
  signal c011_n_145 : STD_LOGIC;
  signal c011_n_146 : STD_LOGIC;
  signal c011_n_147 : STD_LOGIC;
  signal c011_n_148 : STD_LOGIC;
  signal c011_n_149 : STD_LOGIC;
  signal c011_n_150 : STD_LOGIC;
  signal c011_n_151 : STD_LOGIC;
  signal c011_n_152 : STD_LOGIC;
  signal c011_n_153 : STD_LOGIC;
  signal c011_n_74 : STD_LOGIC;
  signal c011_n_75 : STD_LOGIC;
  signal c011_n_76 : STD_LOGIC;
  signal c011_n_77 : STD_LOGIC;
  signal c011_n_78 : STD_LOGIC;
  signal c011_n_79 : STD_LOGIC;
  signal c011_n_80 : STD_LOGIC;
  signal c011_n_81 : STD_LOGIC;
  signal c011_n_82 : STD_LOGIC;
  signal c011_n_83 : STD_LOGIC;
  signal c011_n_84 : STD_LOGIC;
  signal c011_n_85 : STD_LOGIC;
  signal c011_n_86 : STD_LOGIC;
  signal c011_n_87 : STD_LOGIC;
  signal c011_n_88 : STD_LOGIC;
  signal c011_n_89 : STD_LOGIC;
  signal c011_n_90 : STD_LOGIC;
  signal c011_n_91 : STD_LOGIC;
  signal c011_n_92 : STD_LOGIC;
  signal c011_n_93 : STD_LOGIC;
  signal c011_n_94 : STD_LOGIC;
  signal c011_n_95 : STD_LOGIC;
  signal c011_n_96 : STD_LOGIC;
  signal c011_n_97 : STD_LOGIC;
  signal c011_n_98 : STD_LOGIC;
  signal c011_n_99 : STD_LOGIC;
  signal c101_n_100 : STD_LOGIC;
  signal c101_n_101 : STD_LOGIC;
  signal c101_n_102 : STD_LOGIC;
  signal c101_n_103 : STD_LOGIC;
  signal c101_n_104 : STD_LOGIC;
  signal c101_n_105 : STD_LOGIC;
  signal c101_n_106 : STD_LOGIC;
  signal c101_n_107 : STD_LOGIC;
  signal c101_n_108 : STD_LOGIC;
  signal c101_n_109 : STD_LOGIC;
  signal c101_n_110 : STD_LOGIC;
  signal c101_n_111 : STD_LOGIC;
  signal c101_n_112 : STD_LOGIC;
  signal c101_n_113 : STD_LOGIC;
  signal c101_n_114 : STD_LOGIC;
  signal c101_n_115 : STD_LOGIC;
  signal c101_n_116 : STD_LOGIC;
  signal c101_n_117 : STD_LOGIC;
  signal c101_n_118 : STD_LOGIC;
  signal c101_n_119 : STD_LOGIC;
  signal c101_n_120 : STD_LOGIC;
  signal c101_n_121 : STD_LOGIC;
  signal c101_n_122 : STD_LOGIC;
  signal c101_n_123 : STD_LOGIC;
  signal c101_n_124 : STD_LOGIC;
  signal c101_n_125 : STD_LOGIC;
  signal c101_n_126 : STD_LOGIC;
  signal c101_n_127 : STD_LOGIC;
  signal c101_n_128 : STD_LOGIC;
  signal c101_n_129 : STD_LOGIC;
  signal c101_n_130 : STD_LOGIC;
  signal c101_n_131 : STD_LOGIC;
  signal c101_n_132 : STD_LOGIC;
  signal c101_n_133 : STD_LOGIC;
  signal c101_n_134 : STD_LOGIC;
  signal c101_n_135 : STD_LOGIC;
  signal c101_n_136 : STD_LOGIC;
  signal c101_n_137 : STD_LOGIC;
  signal c101_n_138 : STD_LOGIC;
  signal c101_n_139 : STD_LOGIC;
  signal c101_n_140 : STD_LOGIC;
  signal c101_n_141 : STD_LOGIC;
  signal c101_n_142 : STD_LOGIC;
  signal c101_n_143 : STD_LOGIC;
  signal c101_n_144 : STD_LOGIC;
  signal c101_n_145 : STD_LOGIC;
  signal c101_n_146 : STD_LOGIC;
  signal c101_n_147 : STD_LOGIC;
  signal c101_n_148 : STD_LOGIC;
  signal c101_n_149 : STD_LOGIC;
  signal c101_n_150 : STD_LOGIC;
  signal c101_n_151 : STD_LOGIC;
  signal c101_n_152 : STD_LOGIC;
  signal c101_n_153 : STD_LOGIC;
  signal c101_n_74 : STD_LOGIC;
  signal c101_n_75 : STD_LOGIC;
  signal c101_n_76 : STD_LOGIC;
  signal c101_n_77 : STD_LOGIC;
  signal c101_n_78 : STD_LOGIC;
  signal c101_n_79 : STD_LOGIC;
  signal c101_n_80 : STD_LOGIC;
  signal c101_n_81 : STD_LOGIC;
  signal c101_n_82 : STD_LOGIC;
  signal c101_n_83 : STD_LOGIC;
  signal c101_n_84 : STD_LOGIC;
  signal c101_n_85 : STD_LOGIC;
  signal c101_n_86 : STD_LOGIC;
  signal c101_n_87 : STD_LOGIC;
  signal c101_n_88 : STD_LOGIC;
  signal c101_n_89 : STD_LOGIC;
  signal c101_n_90 : STD_LOGIC;
  signal c101_n_91 : STD_LOGIC;
  signal c101_n_92 : STD_LOGIC;
  signal c101_n_93 : STD_LOGIC;
  signal c101_n_94 : STD_LOGIC;
  signal c101_n_95 : STD_LOGIC;
  signal c101_n_96 : STD_LOGIC;
  signal c101_n_97 : STD_LOGIC;
  signal c101_n_98 : STD_LOGIC;
  signal c101_n_99 : STD_LOGIC;
  signal c111_n_100 : STD_LOGIC;
  signal c111_n_101 : STD_LOGIC;
  signal c111_n_102 : STD_LOGIC;
  signal c111_n_103 : STD_LOGIC;
  signal c111_n_104 : STD_LOGIC;
  signal c111_n_105 : STD_LOGIC;
  signal c111_n_106 : STD_LOGIC;
  signal c111_n_107 : STD_LOGIC;
  signal c111_n_108 : STD_LOGIC;
  signal c111_n_109 : STD_LOGIC;
  signal c111_n_110 : STD_LOGIC;
  signal c111_n_111 : STD_LOGIC;
  signal c111_n_112 : STD_LOGIC;
  signal c111_n_113 : STD_LOGIC;
  signal c111_n_114 : STD_LOGIC;
  signal c111_n_115 : STD_LOGIC;
  signal c111_n_116 : STD_LOGIC;
  signal c111_n_117 : STD_LOGIC;
  signal c111_n_118 : STD_LOGIC;
  signal c111_n_119 : STD_LOGIC;
  signal c111_n_120 : STD_LOGIC;
  signal c111_n_121 : STD_LOGIC;
  signal c111_n_122 : STD_LOGIC;
  signal c111_n_123 : STD_LOGIC;
  signal c111_n_124 : STD_LOGIC;
  signal c111_n_125 : STD_LOGIC;
  signal c111_n_126 : STD_LOGIC;
  signal c111_n_127 : STD_LOGIC;
  signal c111_n_128 : STD_LOGIC;
  signal c111_n_129 : STD_LOGIC;
  signal c111_n_130 : STD_LOGIC;
  signal c111_n_131 : STD_LOGIC;
  signal c111_n_132 : STD_LOGIC;
  signal c111_n_133 : STD_LOGIC;
  signal c111_n_134 : STD_LOGIC;
  signal c111_n_135 : STD_LOGIC;
  signal c111_n_136 : STD_LOGIC;
  signal c111_n_137 : STD_LOGIC;
  signal c111_n_138 : STD_LOGIC;
  signal c111_n_139 : STD_LOGIC;
  signal c111_n_140 : STD_LOGIC;
  signal c111_n_141 : STD_LOGIC;
  signal c111_n_142 : STD_LOGIC;
  signal c111_n_143 : STD_LOGIC;
  signal c111_n_144 : STD_LOGIC;
  signal c111_n_145 : STD_LOGIC;
  signal c111_n_146 : STD_LOGIC;
  signal c111_n_147 : STD_LOGIC;
  signal c111_n_148 : STD_LOGIC;
  signal c111_n_149 : STD_LOGIC;
  signal c111_n_150 : STD_LOGIC;
  signal c111_n_151 : STD_LOGIC;
  signal c111_n_152 : STD_LOGIC;
  signal c111_n_153 : STD_LOGIC;
  signal c111_n_74 : STD_LOGIC;
  signal c111_n_75 : STD_LOGIC;
  signal c111_n_76 : STD_LOGIC;
  signal c111_n_77 : STD_LOGIC;
  signal c111_n_78 : STD_LOGIC;
  signal c111_n_79 : STD_LOGIC;
  signal c111_n_80 : STD_LOGIC;
  signal c111_n_81 : STD_LOGIC;
  signal c111_n_82 : STD_LOGIC;
  signal c111_n_83 : STD_LOGIC;
  signal c111_n_84 : STD_LOGIC;
  signal c111_n_85 : STD_LOGIC;
  signal c111_n_86 : STD_LOGIC;
  signal c111_n_87 : STD_LOGIC;
  signal c111_n_88 : STD_LOGIC;
  signal c111_n_89 : STD_LOGIC;
  signal c111_n_90 : STD_LOGIC;
  signal c111_n_91 : STD_LOGIC;
  signal c111_n_92 : STD_LOGIC;
  signal c111_n_93 : STD_LOGIC;
  signal c111_n_94 : STD_LOGIC;
  signal c111_n_95 : STD_LOGIC;
  signal c111_n_96 : STD_LOGIC;
  signal c111_n_97 : STD_LOGIC;
  signal c111_n_98 : STD_LOGIC;
  signal c111_n_99 : STD_LOGIC;
  signal start_d : STD_LOGIC;
  signal start_d_i_1_n_0 : STD_LOGIC;
  signal start_pulse : STD_LOGIC;
  signal NLW_c001_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c001_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c001_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c001_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c001_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c001_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c001_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_c001_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_c001_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c001_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_c00_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c00_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c00_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c00_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c00_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c00_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c00_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_c00_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_c00_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c00_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_c00_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_c011_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c011_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c011_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c011_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c011_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c011_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c011_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_c011_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_c011_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c011_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_c01_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c01_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c01_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c01_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c01_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c01_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c01_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_c01_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_c01_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c01_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_c01_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_c101_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c101_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c101_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c101_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c101_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c101_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c101_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_c101_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_c101_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c101_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_c10_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c10_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c10_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c10_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c10_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c10_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c10_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_c10_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_c10_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c10_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_c10_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_c111_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c111_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c111_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c111_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c111_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c111_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c111_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_c111_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_c111_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c111_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_c11_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c11_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_c11_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c11_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c11_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_c11_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_c11_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_c11_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_c11_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c11_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_c11_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_done_i_1 : label is "soft_lutpair0";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of c001 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of c00_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of c011 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of c01_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of c101 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of c10_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of c111 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of c11_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM of start_d_i_1 : label is "soft_lutpair0";
begin
ap_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => start_d,
      I1 => ap_start,
      I2 => ap_rst_n,
      O => ap_done_i_1_n_0
    );
ap_done_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_i_1_n_0,
      Q => ap_done,
      R => '0'
    );
c001: unisim.vcomponents.DSP48E1
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
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => a00(15),
      A(28) => a00(15),
      A(27) => a00(15),
      A(26) => a00(15),
      A(25) => a00(15),
      A(24) => a00(15),
      A(23) => a00(15),
      A(22) => a00(15),
      A(21) => a00(15),
      A(20) => a00(15),
      A(19) => a00(15),
      A(18) => a00(15),
      A(17) => a00(15),
      A(16) => a00(15),
      A(15 downto 0) => a00(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_c001_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b00(15),
      B(16) => b00(15),
      B(15 downto 0) => b00(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_c001_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_c001_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_c001_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_c001_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_c001_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_c001_P_UNCONNECTED(47 downto 32),
      P(31) => c001_n_74,
      P(30) => c001_n_75,
      P(29) => c001_n_76,
      P(28) => c001_n_77,
      P(27) => c001_n_78,
      P(26) => c001_n_79,
      P(25) => c001_n_80,
      P(24) => c001_n_81,
      P(23) => c001_n_82,
      P(22) => c001_n_83,
      P(21) => c001_n_84,
      P(20) => c001_n_85,
      P(19) => c001_n_86,
      P(18) => c001_n_87,
      P(17) => c001_n_88,
      P(16) => c001_n_89,
      P(15) => c001_n_90,
      P(14) => c001_n_91,
      P(13) => c001_n_92,
      P(12) => c001_n_93,
      P(11) => c001_n_94,
      P(10) => c001_n_95,
      P(9) => c001_n_96,
      P(8) => c001_n_97,
      P(7) => c001_n_98,
      P(6) => c001_n_99,
      P(5) => c001_n_100,
      P(4) => c001_n_101,
      P(3) => c001_n_102,
      P(2) => c001_n_103,
      P(1) => c001_n_104,
      P(0) => c001_n_105,
      PATTERNBDETECT => NLW_c001_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_c001_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => c001_n_106,
      PCOUT(46) => c001_n_107,
      PCOUT(45) => c001_n_108,
      PCOUT(44) => c001_n_109,
      PCOUT(43) => c001_n_110,
      PCOUT(42) => c001_n_111,
      PCOUT(41) => c001_n_112,
      PCOUT(40) => c001_n_113,
      PCOUT(39) => c001_n_114,
      PCOUT(38) => c001_n_115,
      PCOUT(37) => c001_n_116,
      PCOUT(36) => c001_n_117,
      PCOUT(35) => c001_n_118,
      PCOUT(34) => c001_n_119,
      PCOUT(33) => c001_n_120,
      PCOUT(32) => c001_n_121,
      PCOUT(31) => c001_n_122,
      PCOUT(30) => c001_n_123,
      PCOUT(29) => c001_n_124,
      PCOUT(28) => c001_n_125,
      PCOUT(27) => c001_n_126,
      PCOUT(26) => c001_n_127,
      PCOUT(25) => c001_n_128,
      PCOUT(24) => c001_n_129,
      PCOUT(23) => c001_n_130,
      PCOUT(22) => c001_n_131,
      PCOUT(21) => c001_n_132,
      PCOUT(20) => c001_n_133,
      PCOUT(19) => c001_n_134,
      PCOUT(18) => c001_n_135,
      PCOUT(17) => c001_n_136,
      PCOUT(16) => c001_n_137,
      PCOUT(15) => c001_n_138,
      PCOUT(14) => c001_n_139,
      PCOUT(13) => c001_n_140,
      PCOUT(12) => c001_n_141,
      PCOUT(11) => c001_n_142,
      PCOUT(10) => c001_n_143,
      PCOUT(9) => c001_n_144,
      PCOUT(8) => c001_n_145,
      PCOUT(7) => c001_n_146,
      PCOUT(6) => c001_n_147,
      PCOUT(5) => c001_n_148,
      PCOUT(4) => c001_n_149,
      PCOUT(3) => c001_n_150,
      PCOUT(2) => c001_n_151,
      PCOUT(1) => c001_n_152,
      PCOUT(0) => c001_n_153,
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
      UNDERFLOW => NLW_c001_UNDERFLOW_UNCONNECTED
    );
c00_reg: unisim.vcomponents.DSP48E1
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
      A(29) => a01(15),
      A(28) => a01(15),
      A(27) => a01(15),
      A(26) => a01(15),
      A(25) => a01(15),
      A(24) => a01(15),
      A(23) => a01(15),
      A(22) => a01(15),
      A(21) => a01(15),
      A(20) => a01(15),
      A(19) => a01(15),
      A(18) => a01(15),
      A(17) => a01(15),
      A(16) => a01(15),
      A(15 downto 0) => a01(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_c00_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b10(15),
      B(16) => b10(15),
      B(15 downto 0) => b10(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_c00_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_c00_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_c00_reg_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEM => '0',
      CEP => start_pulse,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_c00_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_c00_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_c00_reg_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => c00(31 downto 0),
      PATTERNBDETECT => NLW_c00_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_c00_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => c001_n_106,
      PCIN(46) => c001_n_107,
      PCIN(45) => c001_n_108,
      PCIN(44) => c001_n_109,
      PCIN(43) => c001_n_110,
      PCIN(42) => c001_n_111,
      PCIN(41) => c001_n_112,
      PCIN(40) => c001_n_113,
      PCIN(39) => c001_n_114,
      PCIN(38) => c001_n_115,
      PCIN(37) => c001_n_116,
      PCIN(36) => c001_n_117,
      PCIN(35) => c001_n_118,
      PCIN(34) => c001_n_119,
      PCIN(33) => c001_n_120,
      PCIN(32) => c001_n_121,
      PCIN(31) => c001_n_122,
      PCIN(30) => c001_n_123,
      PCIN(29) => c001_n_124,
      PCIN(28) => c001_n_125,
      PCIN(27) => c001_n_126,
      PCIN(26) => c001_n_127,
      PCIN(25) => c001_n_128,
      PCIN(24) => c001_n_129,
      PCIN(23) => c001_n_130,
      PCIN(22) => c001_n_131,
      PCIN(21) => c001_n_132,
      PCIN(20) => c001_n_133,
      PCIN(19) => c001_n_134,
      PCIN(18) => c001_n_135,
      PCIN(17) => c001_n_136,
      PCIN(16) => c001_n_137,
      PCIN(15) => c001_n_138,
      PCIN(14) => c001_n_139,
      PCIN(13) => c001_n_140,
      PCIN(12) => c001_n_141,
      PCIN(11) => c001_n_142,
      PCIN(10) => c001_n_143,
      PCIN(9) => c001_n_144,
      PCIN(8) => c001_n_145,
      PCIN(7) => c001_n_146,
      PCIN(6) => c001_n_147,
      PCIN(5) => c001_n_148,
      PCIN(4) => c001_n_149,
      PCIN(3) => c001_n_150,
      PCIN(2) => c001_n_151,
      PCIN(1) => c001_n_152,
      PCIN(0) => c001_n_153,
      PCOUT(47 downto 0) => NLW_c00_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTP,
      UNDERFLOW => NLW_c00_reg_UNDERFLOW_UNCONNECTED
    );
c00_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_start,
      I1 => start_d,
      O => start_pulse
    );
c00_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => RSTP
    );
c011: unisim.vcomponents.DSP48E1
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
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => a00(15),
      A(28) => a00(15),
      A(27) => a00(15),
      A(26) => a00(15),
      A(25) => a00(15),
      A(24) => a00(15),
      A(23) => a00(15),
      A(22) => a00(15),
      A(21) => a00(15),
      A(20) => a00(15),
      A(19) => a00(15),
      A(18) => a00(15),
      A(17) => a00(15),
      A(16) => a00(15),
      A(15 downto 0) => a00(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_c011_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b01(15),
      B(16) => b01(15),
      B(15 downto 0) => b01(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_c011_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_c011_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_c011_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_c011_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_c011_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_c011_P_UNCONNECTED(47 downto 32),
      P(31) => c011_n_74,
      P(30) => c011_n_75,
      P(29) => c011_n_76,
      P(28) => c011_n_77,
      P(27) => c011_n_78,
      P(26) => c011_n_79,
      P(25) => c011_n_80,
      P(24) => c011_n_81,
      P(23) => c011_n_82,
      P(22) => c011_n_83,
      P(21) => c011_n_84,
      P(20) => c011_n_85,
      P(19) => c011_n_86,
      P(18) => c011_n_87,
      P(17) => c011_n_88,
      P(16) => c011_n_89,
      P(15) => c011_n_90,
      P(14) => c011_n_91,
      P(13) => c011_n_92,
      P(12) => c011_n_93,
      P(11) => c011_n_94,
      P(10) => c011_n_95,
      P(9) => c011_n_96,
      P(8) => c011_n_97,
      P(7) => c011_n_98,
      P(6) => c011_n_99,
      P(5) => c011_n_100,
      P(4) => c011_n_101,
      P(3) => c011_n_102,
      P(2) => c011_n_103,
      P(1) => c011_n_104,
      P(0) => c011_n_105,
      PATTERNBDETECT => NLW_c011_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_c011_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => c011_n_106,
      PCOUT(46) => c011_n_107,
      PCOUT(45) => c011_n_108,
      PCOUT(44) => c011_n_109,
      PCOUT(43) => c011_n_110,
      PCOUT(42) => c011_n_111,
      PCOUT(41) => c011_n_112,
      PCOUT(40) => c011_n_113,
      PCOUT(39) => c011_n_114,
      PCOUT(38) => c011_n_115,
      PCOUT(37) => c011_n_116,
      PCOUT(36) => c011_n_117,
      PCOUT(35) => c011_n_118,
      PCOUT(34) => c011_n_119,
      PCOUT(33) => c011_n_120,
      PCOUT(32) => c011_n_121,
      PCOUT(31) => c011_n_122,
      PCOUT(30) => c011_n_123,
      PCOUT(29) => c011_n_124,
      PCOUT(28) => c011_n_125,
      PCOUT(27) => c011_n_126,
      PCOUT(26) => c011_n_127,
      PCOUT(25) => c011_n_128,
      PCOUT(24) => c011_n_129,
      PCOUT(23) => c011_n_130,
      PCOUT(22) => c011_n_131,
      PCOUT(21) => c011_n_132,
      PCOUT(20) => c011_n_133,
      PCOUT(19) => c011_n_134,
      PCOUT(18) => c011_n_135,
      PCOUT(17) => c011_n_136,
      PCOUT(16) => c011_n_137,
      PCOUT(15) => c011_n_138,
      PCOUT(14) => c011_n_139,
      PCOUT(13) => c011_n_140,
      PCOUT(12) => c011_n_141,
      PCOUT(11) => c011_n_142,
      PCOUT(10) => c011_n_143,
      PCOUT(9) => c011_n_144,
      PCOUT(8) => c011_n_145,
      PCOUT(7) => c011_n_146,
      PCOUT(6) => c011_n_147,
      PCOUT(5) => c011_n_148,
      PCOUT(4) => c011_n_149,
      PCOUT(3) => c011_n_150,
      PCOUT(2) => c011_n_151,
      PCOUT(1) => c011_n_152,
      PCOUT(0) => c011_n_153,
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
      UNDERFLOW => NLW_c011_UNDERFLOW_UNCONNECTED
    );
c01_reg: unisim.vcomponents.DSP48E1
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
      A(29) => a01(15),
      A(28) => a01(15),
      A(27) => a01(15),
      A(26) => a01(15),
      A(25) => a01(15),
      A(24) => a01(15),
      A(23) => a01(15),
      A(22) => a01(15),
      A(21) => a01(15),
      A(20) => a01(15),
      A(19) => a01(15),
      A(18) => a01(15),
      A(17) => a01(15),
      A(16) => a01(15),
      A(15 downto 0) => a01(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_c01_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b11(15),
      B(16) => b11(15),
      B(15 downto 0) => b11(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_c01_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_c01_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_c01_reg_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEM => '0',
      CEP => start_pulse,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_c01_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_c01_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_c01_reg_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => c01(31 downto 0),
      PATTERNBDETECT => NLW_c01_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_c01_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => c011_n_106,
      PCIN(46) => c011_n_107,
      PCIN(45) => c011_n_108,
      PCIN(44) => c011_n_109,
      PCIN(43) => c011_n_110,
      PCIN(42) => c011_n_111,
      PCIN(41) => c011_n_112,
      PCIN(40) => c011_n_113,
      PCIN(39) => c011_n_114,
      PCIN(38) => c011_n_115,
      PCIN(37) => c011_n_116,
      PCIN(36) => c011_n_117,
      PCIN(35) => c011_n_118,
      PCIN(34) => c011_n_119,
      PCIN(33) => c011_n_120,
      PCIN(32) => c011_n_121,
      PCIN(31) => c011_n_122,
      PCIN(30) => c011_n_123,
      PCIN(29) => c011_n_124,
      PCIN(28) => c011_n_125,
      PCIN(27) => c011_n_126,
      PCIN(26) => c011_n_127,
      PCIN(25) => c011_n_128,
      PCIN(24) => c011_n_129,
      PCIN(23) => c011_n_130,
      PCIN(22) => c011_n_131,
      PCIN(21) => c011_n_132,
      PCIN(20) => c011_n_133,
      PCIN(19) => c011_n_134,
      PCIN(18) => c011_n_135,
      PCIN(17) => c011_n_136,
      PCIN(16) => c011_n_137,
      PCIN(15) => c011_n_138,
      PCIN(14) => c011_n_139,
      PCIN(13) => c011_n_140,
      PCIN(12) => c011_n_141,
      PCIN(11) => c011_n_142,
      PCIN(10) => c011_n_143,
      PCIN(9) => c011_n_144,
      PCIN(8) => c011_n_145,
      PCIN(7) => c011_n_146,
      PCIN(6) => c011_n_147,
      PCIN(5) => c011_n_148,
      PCIN(4) => c011_n_149,
      PCIN(3) => c011_n_150,
      PCIN(2) => c011_n_151,
      PCIN(1) => c011_n_152,
      PCIN(0) => c011_n_153,
      PCOUT(47 downto 0) => NLW_c01_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTP,
      UNDERFLOW => NLW_c01_reg_UNDERFLOW_UNCONNECTED
    );
c101: unisim.vcomponents.DSP48E1
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
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => a10(15),
      A(28) => a10(15),
      A(27) => a10(15),
      A(26) => a10(15),
      A(25) => a10(15),
      A(24) => a10(15),
      A(23) => a10(15),
      A(22) => a10(15),
      A(21) => a10(15),
      A(20) => a10(15),
      A(19) => a10(15),
      A(18) => a10(15),
      A(17) => a10(15),
      A(16) => a10(15),
      A(15 downto 0) => a10(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_c101_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b00(15),
      B(16) => b00(15),
      B(15 downto 0) => b00(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_c101_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_c101_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_c101_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_c101_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_c101_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_c101_P_UNCONNECTED(47 downto 32),
      P(31) => c101_n_74,
      P(30) => c101_n_75,
      P(29) => c101_n_76,
      P(28) => c101_n_77,
      P(27) => c101_n_78,
      P(26) => c101_n_79,
      P(25) => c101_n_80,
      P(24) => c101_n_81,
      P(23) => c101_n_82,
      P(22) => c101_n_83,
      P(21) => c101_n_84,
      P(20) => c101_n_85,
      P(19) => c101_n_86,
      P(18) => c101_n_87,
      P(17) => c101_n_88,
      P(16) => c101_n_89,
      P(15) => c101_n_90,
      P(14) => c101_n_91,
      P(13) => c101_n_92,
      P(12) => c101_n_93,
      P(11) => c101_n_94,
      P(10) => c101_n_95,
      P(9) => c101_n_96,
      P(8) => c101_n_97,
      P(7) => c101_n_98,
      P(6) => c101_n_99,
      P(5) => c101_n_100,
      P(4) => c101_n_101,
      P(3) => c101_n_102,
      P(2) => c101_n_103,
      P(1) => c101_n_104,
      P(0) => c101_n_105,
      PATTERNBDETECT => NLW_c101_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_c101_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => c101_n_106,
      PCOUT(46) => c101_n_107,
      PCOUT(45) => c101_n_108,
      PCOUT(44) => c101_n_109,
      PCOUT(43) => c101_n_110,
      PCOUT(42) => c101_n_111,
      PCOUT(41) => c101_n_112,
      PCOUT(40) => c101_n_113,
      PCOUT(39) => c101_n_114,
      PCOUT(38) => c101_n_115,
      PCOUT(37) => c101_n_116,
      PCOUT(36) => c101_n_117,
      PCOUT(35) => c101_n_118,
      PCOUT(34) => c101_n_119,
      PCOUT(33) => c101_n_120,
      PCOUT(32) => c101_n_121,
      PCOUT(31) => c101_n_122,
      PCOUT(30) => c101_n_123,
      PCOUT(29) => c101_n_124,
      PCOUT(28) => c101_n_125,
      PCOUT(27) => c101_n_126,
      PCOUT(26) => c101_n_127,
      PCOUT(25) => c101_n_128,
      PCOUT(24) => c101_n_129,
      PCOUT(23) => c101_n_130,
      PCOUT(22) => c101_n_131,
      PCOUT(21) => c101_n_132,
      PCOUT(20) => c101_n_133,
      PCOUT(19) => c101_n_134,
      PCOUT(18) => c101_n_135,
      PCOUT(17) => c101_n_136,
      PCOUT(16) => c101_n_137,
      PCOUT(15) => c101_n_138,
      PCOUT(14) => c101_n_139,
      PCOUT(13) => c101_n_140,
      PCOUT(12) => c101_n_141,
      PCOUT(11) => c101_n_142,
      PCOUT(10) => c101_n_143,
      PCOUT(9) => c101_n_144,
      PCOUT(8) => c101_n_145,
      PCOUT(7) => c101_n_146,
      PCOUT(6) => c101_n_147,
      PCOUT(5) => c101_n_148,
      PCOUT(4) => c101_n_149,
      PCOUT(3) => c101_n_150,
      PCOUT(2) => c101_n_151,
      PCOUT(1) => c101_n_152,
      PCOUT(0) => c101_n_153,
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
      UNDERFLOW => NLW_c101_UNDERFLOW_UNCONNECTED
    );
c10_reg: unisim.vcomponents.DSP48E1
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
      A(29) => a11(15),
      A(28) => a11(15),
      A(27) => a11(15),
      A(26) => a11(15),
      A(25) => a11(15),
      A(24) => a11(15),
      A(23) => a11(15),
      A(22) => a11(15),
      A(21) => a11(15),
      A(20) => a11(15),
      A(19) => a11(15),
      A(18) => a11(15),
      A(17) => a11(15),
      A(16) => a11(15),
      A(15 downto 0) => a11(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_c10_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b10(15),
      B(16) => b10(15),
      B(15 downto 0) => b10(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_c10_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_c10_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_c10_reg_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEM => '0',
      CEP => start_pulse,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_c10_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_c10_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_c10_reg_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => c10(31 downto 0),
      PATTERNBDETECT => NLW_c10_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_c10_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => c101_n_106,
      PCIN(46) => c101_n_107,
      PCIN(45) => c101_n_108,
      PCIN(44) => c101_n_109,
      PCIN(43) => c101_n_110,
      PCIN(42) => c101_n_111,
      PCIN(41) => c101_n_112,
      PCIN(40) => c101_n_113,
      PCIN(39) => c101_n_114,
      PCIN(38) => c101_n_115,
      PCIN(37) => c101_n_116,
      PCIN(36) => c101_n_117,
      PCIN(35) => c101_n_118,
      PCIN(34) => c101_n_119,
      PCIN(33) => c101_n_120,
      PCIN(32) => c101_n_121,
      PCIN(31) => c101_n_122,
      PCIN(30) => c101_n_123,
      PCIN(29) => c101_n_124,
      PCIN(28) => c101_n_125,
      PCIN(27) => c101_n_126,
      PCIN(26) => c101_n_127,
      PCIN(25) => c101_n_128,
      PCIN(24) => c101_n_129,
      PCIN(23) => c101_n_130,
      PCIN(22) => c101_n_131,
      PCIN(21) => c101_n_132,
      PCIN(20) => c101_n_133,
      PCIN(19) => c101_n_134,
      PCIN(18) => c101_n_135,
      PCIN(17) => c101_n_136,
      PCIN(16) => c101_n_137,
      PCIN(15) => c101_n_138,
      PCIN(14) => c101_n_139,
      PCIN(13) => c101_n_140,
      PCIN(12) => c101_n_141,
      PCIN(11) => c101_n_142,
      PCIN(10) => c101_n_143,
      PCIN(9) => c101_n_144,
      PCIN(8) => c101_n_145,
      PCIN(7) => c101_n_146,
      PCIN(6) => c101_n_147,
      PCIN(5) => c101_n_148,
      PCIN(4) => c101_n_149,
      PCIN(3) => c101_n_150,
      PCIN(2) => c101_n_151,
      PCIN(1) => c101_n_152,
      PCIN(0) => c101_n_153,
      PCOUT(47 downto 0) => NLW_c10_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTP,
      UNDERFLOW => NLW_c10_reg_UNDERFLOW_UNCONNECTED
    );
c111: unisim.vcomponents.DSP48E1
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
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => a10(15),
      A(28) => a10(15),
      A(27) => a10(15),
      A(26) => a10(15),
      A(25) => a10(15),
      A(24) => a10(15),
      A(23) => a10(15),
      A(22) => a10(15),
      A(21) => a10(15),
      A(20) => a10(15),
      A(19) => a10(15),
      A(18) => a10(15),
      A(17) => a10(15),
      A(16) => a10(15),
      A(15 downto 0) => a10(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_c111_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b01(15),
      B(16) => b01(15),
      B(15 downto 0) => b01(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_c111_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_c111_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_c111_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_c111_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_c111_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_c111_P_UNCONNECTED(47 downto 32),
      P(31) => c111_n_74,
      P(30) => c111_n_75,
      P(29) => c111_n_76,
      P(28) => c111_n_77,
      P(27) => c111_n_78,
      P(26) => c111_n_79,
      P(25) => c111_n_80,
      P(24) => c111_n_81,
      P(23) => c111_n_82,
      P(22) => c111_n_83,
      P(21) => c111_n_84,
      P(20) => c111_n_85,
      P(19) => c111_n_86,
      P(18) => c111_n_87,
      P(17) => c111_n_88,
      P(16) => c111_n_89,
      P(15) => c111_n_90,
      P(14) => c111_n_91,
      P(13) => c111_n_92,
      P(12) => c111_n_93,
      P(11) => c111_n_94,
      P(10) => c111_n_95,
      P(9) => c111_n_96,
      P(8) => c111_n_97,
      P(7) => c111_n_98,
      P(6) => c111_n_99,
      P(5) => c111_n_100,
      P(4) => c111_n_101,
      P(3) => c111_n_102,
      P(2) => c111_n_103,
      P(1) => c111_n_104,
      P(0) => c111_n_105,
      PATTERNBDETECT => NLW_c111_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_c111_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => c111_n_106,
      PCOUT(46) => c111_n_107,
      PCOUT(45) => c111_n_108,
      PCOUT(44) => c111_n_109,
      PCOUT(43) => c111_n_110,
      PCOUT(42) => c111_n_111,
      PCOUT(41) => c111_n_112,
      PCOUT(40) => c111_n_113,
      PCOUT(39) => c111_n_114,
      PCOUT(38) => c111_n_115,
      PCOUT(37) => c111_n_116,
      PCOUT(36) => c111_n_117,
      PCOUT(35) => c111_n_118,
      PCOUT(34) => c111_n_119,
      PCOUT(33) => c111_n_120,
      PCOUT(32) => c111_n_121,
      PCOUT(31) => c111_n_122,
      PCOUT(30) => c111_n_123,
      PCOUT(29) => c111_n_124,
      PCOUT(28) => c111_n_125,
      PCOUT(27) => c111_n_126,
      PCOUT(26) => c111_n_127,
      PCOUT(25) => c111_n_128,
      PCOUT(24) => c111_n_129,
      PCOUT(23) => c111_n_130,
      PCOUT(22) => c111_n_131,
      PCOUT(21) => c111_n_132,
      PCOUT(20) => c111_n_133,
      PCOUT(19) => c111_n_134,
      PCOUT(18) => c111_n_135,
      PCOUT(17) => c111_n_136,
      PCOUT(16) => c111_n_137,
      PCOUT(15) => c111_n_138,
      PCOUT(14) => c111_n_139,
      PCOUT(13) => c111_n_140,
      PCOUT(12) => c111_n_141,
      PCOUT(11) => c111_n_142,
      PCOUT(10) => c111_n_143,
      PCOUT(9) => c111_n_144,
      PCOUT(8) => c111_n_145,
      PCOUT(7) => c111_n_146,
      PCOUT(6) => c111_n_147,
      PCOUT(5) => c111_n_148,
      PCOUT(4) => c111_n_149,
      PCOUT(3) => c111_n_150,
      PCOUT(2) => c111_n_151,
      PCOUT(1) => c111_n_152,
      PCOUT(0) => c111_n_153,
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
      UNDERFLOW => NLW_c111_UNDERFLOW_UNCONNECTED
    );
c11_reg: unisim.vcomponents.DSP48E1
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
      A(29) => a11(15),
      A(28) => a11(15),
      A(27) => a11(15),
      A(26) => a11(15),
      A(25) => a11(15),
      A(24) => a11(15),
      A(23) => a11(15),
      A(22) => a11(15),
      A(21) => a11(15),
      A(20) => a11(15),
      A(19) => a11(15),
      A(18) => a11(15),
      A(17) => a11(15),
      A(16) => a11(15),
      A(15 downto 0) => a11(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_c11_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b11(15),
      B(16) => b11(15),
      B(15 downto 0) => b11(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_c11_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_c11_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_c11_reg_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEM => '0',
      CEP => start_pulse,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_c11_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_c11_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_c11_reg_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => c11(31 downto 0),
      PATTERNBDETECT => NLW_c11_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_c11_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => c111_n_106,
      PCIN(46) => c111_n_107,
      PCIN(45) => c111_n_108,
      PCIN(44) => c111_n_109,
      PCIN(43) => c111_n_110,
      PCIN(42) => c111_n_111,
      PCIN(41) => c111_n_112,
      PCIN(40) => c111_n_113,
      PCIN(39) => c111_n_114,
      PCIN(38) => c111_n_115,
      PCIN(37) => c111_n_116,
      PCIN(36) => c111_n_117,
      PCIN(35) => c111_n_118,
      PCIN(34) => c111_n_119,
      PCIN(33) => c111_n_120,
      PCIN(32) => c111_n_121,
      PCIN(31) => c111_n_122,
      PCIN(30) => c111_n_123,
      PCIN(29) => c111_n_124,
      PCIN(28) => c111_n_125,
      PCIN(27) => c111_n_126,
      PCIN(26) => c111_n_127,
      PCIN(25) => c111_n_128,
      PCIN(24) => c111_n_129,
      PCIN(23) => c111_n_130,
      PCIN(22) => c111_n_131,
      PCIN(21) => c111_n_132,
      PCIN(20) => c111_n_133,
      PCIN(19) => c111_n_134,
      PCIN(18) => c111_n_135,
      PCIN(17) => c111_n_136,
      PCIN(16) => c111_n_137,
      PCIN(15) => c111_n_138,
      PCIN(14) => c111_n_139,
      PCIN(13) => c111_n_140,
      PCIN(12) => c111_n_141,
      PCIN(11) => c111_n_142,
      PCIN(10) => c111_n_143,
      PCIN(9) => c111_n_144,
      PCIN(8) => c111_n_145,
      PCIN(7) => c111_n_146,
      PCIN(6) => c111_n_147,
      PCIN(5) => c111_n_148,
      PCIN(4) => c111_n_149,
      PCIN(3) => c111_n_150,
      PCIN(2) => c111_n_151,
      PCIN(1) => c111_n_152,
      PCIN(0) => c111_n_153,
      PCOUT(47 downto 0) => NLW_c11_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTP,
      UNDERFLOW => NLW_c11_reg_UNDERFLOW_UNCONNECTED
    );
start_d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => ap_rst_n,
      O => start_d_i_1_n_0
    );
start_d_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => start_d_i_1_n_0,
      Q => start_d,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Vivado_IP_Design_maxmul2x2_0_0,maxmul2x2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "maxmul2x2,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  ap_idle <= \<const1>\;
  ap_ready <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maxmul2x2
     port map (
      a00(15 downto 0) => a00(15 downto 0),
      a01(15 downto 0) => a01(15 downto 0),
      a10(15 downto 0) => a10(15 downto 0),
      a11(15 downto 0) => a11(15 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_rst_n => ap_rst_n,
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
