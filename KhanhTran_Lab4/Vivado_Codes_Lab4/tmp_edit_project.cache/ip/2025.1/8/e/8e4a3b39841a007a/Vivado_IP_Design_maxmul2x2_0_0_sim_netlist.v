// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov  8 21:02:05 2025
// Host        : katnlot running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Vivado_IP_Design_maxmul2x2_0_0_sim_netlist.v
// Design      : Vivado_IP_Design_maxmul2x2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Vivado_IP_Design_maxmul2x2_0_0,maxmul2x2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "maxmul2x2,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a00,
    a01,
    a10,
    a11,
    b00,
    b01,
    b10,
    b11,
    c00,
    c01,
    c10,
    c11);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [15:0]a00;
  input [15:0]a01;
  input [15:0]a10;
  input [15:0]a11;
  input [15:0]b00;
  input [15:0]b01;
  input [15:0]b10;
  input [15:0]b11;
  output [31:0]c00;
  output [31:0]c01;
  output [31:0]c10;
  output [31:0]c11;

  wire \<const1> ;
  wire [15:0]a00;
  wire [15:0]a01;
  wire [15:0]a10;
  wire [15:0]a11;
  wire ap_clk;
  wire ap_done;
  wire ap_rst_n;
  wire ap_start;
  wire [15:0]b00;
  wire [15:0]b01;
  wire [15:0]b10;
  wire [15:0]b11;
  wire [31:0]c00;
  wire [31:0]c01;
  wire [31:0]c10;
  wire [31:0]c11;

  assign ap_idle = \<const1> ;
  assign ap_ready = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maxmul2x2 inst
       (.a00(a00),
        .a01(a01),
        .a10(a10),
        .a11(a11),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .b00(b00),
        .b01(b01),
        .b10(b10),
        .b11(b11),
        .c00(c00),
        .c01(c01),
        .c10(c10),
        .c11(c11));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_maxmul2x2
   (c00,
    c01,
    c10,
    c11,
    ap_done,
    b00,
    a00,
    ap_clk,
    b10,
    a01,
    b01,
    b11,
    a10,
    a11,
    ap_start,
    ap_rst_n);
  output [31:0]c00;
  output [31:0]c01;
  output [31:0]c10;
  output [31:0]c11;
  output ap_done;
  input [15:0]b00;
  input [15:0]a00;
  input ap_clk;
  input [15:0]b10;
  input [15:0]a01;
  input [15:0]b01;
  input [15:0]b11;
  input [15:0]a10;
  input [15:0]a11;
  input ap_start;
  input ap_rst_n;

  wire RSTP;
  wire [15:0]a00;
  wire [15:0]a01;
  wire [15:0]a10;
  wire [15:0]a11;
  wire ap_clk;
  wire ap_done;
  wire ap_done_i_1_n_0;
  wire ap_rst_n;
  wire ap_start;
  wire [15:0]b00;
  wire [15:0]b01;
  wire [15:0]b10;
  wire [15:0]b11;
  wire [31:0]c00;
  wire c001_n_100;
  wire c001_n_101;
  wire c001_n_102;
  wire c001_n_103;
  wire c001_n_104;
  wire c001_n_105;
  wire c001_n_106;
  wire c001_n_107;
  wire c001_n_108;
  wire c001_n_109;
  wire c001_n_110;
  wire c001_n_111;
  wire c001_n_112;
  wire c001_n_113;
  wire c001_n_114;
  wire c001_n_115;
  wire c001_n_116;
  wire c001_n_117;
  wire c001_n_118;
  wire c001_n_119;
  wire c001_n_120;
  wire c001_n_121;
  wire c001_n_122;
  wire c001_n_123;
  wire c001_n_124;
  wire c001_n_125;
  wire c001_n_126;
  wire c001_n_127;
  wire c001_n_128;
  wire c001_n_129;
  wire c001_n_130;
  wire c001_n_131;
  wire c001_n_132;
  wire c001_n_133;
  wire c001_n_134;
  wire c001_n_135;
  wire c001_n_136;
  wire c001_n_137;
  wire c001_n_138;
  wire c001_n_139;
  wire c001_n_140;
  wire c001_n_141;
  wire c001_n_142;
  wire c001_n_143;
  wire c001_n_144;
  wire c001_n_145;
  wire c001_n_146;
  wire c001_n_147;
  wire c001_n_148;
  wire c001_n_149;
  wire c001_n_150;
  wire c001_n_151;
  wire c001_n_152;
  wire c001_n_153;
  wire c001_n_74;
  wire c001_n_75;
  wire c001_n_76;
  wire c001_n_77;
  wire c001_n_78;
  wire c001_n_79;
  wire c001_n_80;
  wire c001_n_81;
  wire c001_n_82;
  wire c001_n_83;
  wire c001_n_84;
  wire c001_n_85;
  wire c001_n_86;
  wire c001_n_87;
  wire c001_n_88;
  wire c001_n_89;
  wire c001_n_90;
  wire c001_n_91;
  wire c001_n_92;
  wire c001_n_93;
  wire c001_n_94;
  wire c001_n_95;
  wire c001_n_96;
  wire c001_n_97;
  wire c001_n_98;
  wire c001_n_99;
  wire [31:0]c01;
  wire c011_n_100;
  wire c011_n_101;
  wire c011_n_102;
  wire c011_n_103;
  wire c011_n_104;
  wire c011_n_105;
  wire c011_n_106;
  wire c011_n_107;
  wire c011_n_108;
  wire c011_n_109;
  wire c011_n_110;
  wire c011_n_111;
  wire c011_n_112;
  wire c011_n_113;
  wire c011_n_114;
  wire c011_n_115;
  wire c011_n_116;
  wire c011_n_117;
  wire c011_n_118;
  wire c011_n_119;
  wire c011_n_120;
  wire c011_n_121;
  wire c011_n_122;
  wire c011_n_123;
  wire c011_n_124;
  wire c011_n_125;
  wire c011_n_126;
  wire c011_n_127;
  wire c011_n_128;
  wire c011_n_129;
  wire c011_n_130;
  wire c011_n_131;
  wire c011_n_132;
  wire c011_n_133;
  wire c011_n_134;
  wire c011_n_135;
  wire c011_n_136;
  wire c011_n_137;
  wire c011_n_138;
  wire c011_n_139;
  wire c011_n_140;
  wire c011_n_141;
  wire c011_n_142;
  wire c011_n_143;
  wire c011_n_144;
  wire c011_n_145;
  wire c011_n_146;
  wire c011_n_147;
  wire c011_n_148;
  wire c011_n_149;
  wire c011_n_150;
  wire c011_n_151;
  wire c011_n_152;
  wire c011_n_153;
  wire c011_n_74;
  wire c011_n_75;
  wire c011_n_76;
  wire c011_n_77;
  wire c011_n_78;
  wire c011_n_79;
  wire c011_n_80;
  wire c011_n_81;
  wire c011_n_82;
  wire c011_n_83;
  wire c011_n_84;
  wire c011_n_85;
  wire c011_n_86;
  wire c011_n_87;
  wire c011_n_88;
  wire c011_n_89;
  wire c011_n_90;
  wire c011_n_91;
  wire c011_n_92;
  wire c011_n_93;
  wire c011_n_94;
  wire c011_n_95;
  wire c011_n_96;
  wire c011_n_97;
  wire c011_n_98;
  wire c011_n_99;
  wire [31:0]c10;
  wire c101_n_100;
  wire c101_n_101;
  wire c101_n_102;
  wire c101_n_103;
  wire c101_n_104;
  wire c101_n_105;
  wire c101_n_106;
  wire c101_n_107;
  wire c101_n_108;
  wire c101_n_109;
  wire c101_n_110;
  wire c101_n_111;
  wire c101_n_112;
  wire c101_n_113;
  wire c101_n_114;
  wire c101_n_115;
  wire c101_n_116;
  wire c101_n_117;
  wire c101_n_118;
  wire c101_n_119;
  wire c101_n_120;
  wire c101_n_121;
  wire c101_n_122;
  wire c101_n_123;
  wire c101_n_124;
  wire c101_n_125;
  wire c101_n_126;
  wire c101_n_127;
  wire c101_n_128;
  wire c101_n_129;
  wire c101_n_130;
  wire c101_n_131;
  wire c101_n_132;
  wire c101_n_133;
  wire c101_n_134;
  wire c101_n_135;
  wire c101_n_136;
  wire c101_n_137;
  wire c101_n_138;
  wire c101_n_139;
  wire c101_n_140;
  wire c101_n_141;
  wire c101_n_142;
  wire c101_n_143;
  wire c101_n_144;
  wire c101_n_145;
  wire c101_n_146;
  wire c101_n_147;
  wire c101_n_148;
  wire c101_n_149;
  wire c101_n_150;
  wire c101_n_151;
  wire c101_n_152;
  wire c101_n_153;
  wire c101_n_74;
  wire c101_n_75;
  wire c101_n_76;
  wire c101_n_77;
  wire c101_n_78;
  wire c101_n_79;
  wire c101_n_80;
  wire c101_n_81;
  wire c101_n_82;
  wire c101_n_83;
  wire c101_n_84;
  wire c101_n_85;
  wire c101_n_86;
  wire c101_n_87;
  wire c101_n_88;
  wire c101_n_89;
  wire c101_n_90;
  wire c101_n_91;
  wire c101_n_92;
  wire c101_n_93;
  wire c101_n_94;
  wire c101_n_95;
  wire c101_n_96;
  wire c101_n_97;
  wire c101_n_98;
  wire c101_n_99;
  wire [31:0]c11;
  wire c111_n_100;
  wire c111_n_101;
  wire c111_n_102;
  wire c111_n_103;
  wire c111_n_104;
  wire c111_n_105;
  wire c111_n_106;
  wire c111_n_107;
  wire c111_n_108;
  wire c111_n_109;
  wire c111_n_110;
  wire c111_n_111;
  wire c111_n_112;
  wire c111_n_113;
  wire c111_n_114;
  wire c111_n_115;
  wire c111_n_116;
  wire c111_n_117;
  wire c111_n_118;
  wire c111_n_119;
  wire c111_n_120;
  wire c111_n_121;
  wire c111_n_122;
  wire c111_n_123;
  wire c111_n_124;
  wire c111_n_125;
  wire c111_n_126;
  wire c111_n_127;
  wire c111_n_128;
  wire c111_n_129;
  wire c111_n_130;
  wire c111_n_131;
  wire c111_n_132;
  wire c111_n_133;
  wire c111_n_134;
  wire c111_n_135;
  wire c111_n_136;
  wire c111_n_137;
  wire c111_n_138;
  wire c111_n_139;
  wire c111_n_140;
  wire c111_n_141;
  wire c111_n_142;
  wire c111_n_143;
  wire c111_n_144;
  wire c111_n_145;
  wire c111_n_146;
  wire c111_n_147;
  wire c111_n_148;
  wire c111_n_149;
  wire c111_n_150;
  wire c111_n_151;
  wire c111_n_152;
  wire c111_n_153;
  wire c111_n_74;
  wire c111_n_75;
  wire c111_n_76;
  wire c111_n_77;
  wire c111_n_78;
  wire c111_n_79;
  wire c111_n_80;
  wire c111_n_81;
  wire c111_n_82;
  wire c111_n_83;
  wire c111_n_84;
  wire c111_n_85;
  wire c111_n_86;
  wire c111_n_87;
  wire c111_n_88;
  wire c111_n_89;
  wire c111_n_90;
  wire c111_n_91;
  wire c111_n_92;
  wire c111_n_93;
  wire c111_n_94;
  wire c111_n_95;
  wire c111_n_96;
  wire c111_n_97;
  wire c111_n_98;
  wire c111_n_99;
  wire start_d;
  wire start_d_i_1_n_0;
  wire start_pulse;
  wire NLW_c001_CARRYCASCOUT_UNCONNECTED;
  wire NLW_c001_MULTSIGNOUT_UNCONNECTED;
  wire NLW_c001_OVERFLOW_UNCONNECTED;
  wire NLW_c001_PATTERNBDETECT_UNCONNECTED;
  wire NLW_c001_PATTERNDETECT_UNCONNECTED;
  wire NLW_c001_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_c001_ACOUT_UNCONNECTED;
  wire [17:0]NLW_c001_BCOUT_UNCONNECTED;
  wire [3:0]NLW_c001_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_c001_P_UNCONNECTED;
  wire NLW_c00_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_c00_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_c00_reg_OVERFLOW_UNCONNECTED;
  wire NLW_c00_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_c00_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_c00_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_c00_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_c00_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_c00_reg_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_c00_reg_P_UNCONNECTED;
  wire [47:0]NLW_c00_reg_PCOUT_UNCONNECTED;
  wire NLW_c011_CARRYCASCOUT_UNCONNECTED;
  wire NLW_c011_MULTSIGNOUT_UNCONNECTED;
  wire NLW_c011_OVERFLOW_UNCONNECTED;
  wire NLW_c011_PATTERNBDETECT_UNCONNECTED;
  wire NLW_c011_PATTERNDETECT_UNCONNECTED;
  wire NLW_c011_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_c011_ACOUT_UNCONNECTED;
  wire [17:0]NLW_c011_BCOUT_UNCONNECTED;
  wire [3:0]NLW_c011_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_c011_P_UNCONNECTED;
  wire NLW_c01_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_c01_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_c01_reg_OVERFLOW_UNCONNECTED;
  wire NLW_c01_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_c01_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_c01_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_c01_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_c01_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_c01_reg_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_c01_reg_P_UNCONNECTED;
  wire [47:0]NLW_c01_reg_PCOUT_UNCONNECTED;
  wire NLW_c101_CARRYCASCOUT_UNCONNECTED;
  wire NLW_c101_MULTSIGNOUT_UNCONNECTED;
  wire NLW_c101_OVERFLOW_UNCONNECTED;
  wire NLW_c101_PATTERNBDETECT_UNCONNECTED;
  wire NLW_c101_PATTERNDETECT_UNCONNECTED;
  wire NLW_c101_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_c101_ACOUT_UNCONNECTED;
  wire [17:0]NLW_c101_BCOUT_UNCONNECTED;
  wire [3:0]NLW_c101_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_c101_P_UNCONNECTED;
  wire NLW_c10_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_c10_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_c10_reg_OVERFLOW_UNCONNECTED;
  wire NLW_c10_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_c10_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_c10_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_c10_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_c10_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_c10_reg_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_c10_reg_P_UNCONNECTED;
  wire [47:0]NLW_c10_reg_PCOUT_UNCONNECTED;
  wire NLW_c111_CARRYCASCOUT_UNCONNECTED;
  wire NLW_c111_MULTSIGNOUT_UNCONNECTED;
  wire NLW_c111_OVERFLOW_UNCONNECTED;
  wire NLW_c111_PATTERNBDETECT_UNCONNECTED;
  wire NLW_c111_PATTERNDETECT_UNCONNECTED;
  wire NLW_c111_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_c111_ACOUT_UNCONNECTED;
  wire [17:0]NLW_c111_BCOUT_UNCONNECTED;
  wire [3:0]NLW_c111_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_c111_P_UNCONNECTED;
  wire NLW_c11_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_c11_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_c11_reg_OVERFLOW_UNCONNECTED;
  wire NLW_c11_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_c11_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_c11_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_c11_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_c11_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_c11_reg_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_c11_reg_P_UNCONNECTED;
  wire [47:0]NLW_c11_reg_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    ap_done_i_1
       (.I0(start_d),
        .I1(ap_start),
        .I2(ap_rst_n),
        .O(ap_done_i_1_n_0));
  FDRE ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_i_1_n_0),
        .Q(ap_done),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    c001
       (.A({a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_c001_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b00[15],b00[15],b00}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_c001_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_c001_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_c001_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_c001_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_c001_OVERFLOW_UNCONNECTED),
        .P({NLW_c001_P_UNCONNECTED[47:32],c001_n_74,c001_n_75,c001_n_76,c001_n_77,c001_n_78,c001_n_79,c001_n_80,c001_n_81,c001_n_82,c001_n_83,c001_n_84,c001_n_85,c001_n_86,c001_n_87,c001_n_88,c001_n_89,c001_n_90,c001_n_91,c001_n_92,c001_n_93,c001_n_94,c001_n_95,c001_n_96,c001_n_97,c001_n_98,c001_n_99,c001_n_100,c001_n_101,c001_n_102,c001_n_103,c001_n_104,c001_n_105}),
        .PATTERNBDETECT(NLW_c001_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_c001_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({c001_n_106,c001_n_107,c001_n_108,c001_n_109,c001_n_110,c001_n_111,c001_n_112,c001_n_113,c001_n_114,c001_n_115,c001_n_116,c001_n_117,c001_n_118,c001_n_119,c001_n_120,c001_n_121,c001_n_122,c001_n_123,c001_n_124,c001_n_125,c001_n_126,c001_n_127,c001_n_128,c001_n_129,c001_n_130,c001_n_131,c001_n_132,c001_n_133,c001_n_134,c001_n_135,c001_n_136,c001_n_137,c001_n_138,c001_n_139,c001_n_140,c001_n_141,c001_n_142,c001_n_143,c001_n_144,c001_n_145,c001_n_146,c001_n_147,c001_n_148,c001_n_149,c001_n_150,c001_n_151,c001_n_152,c001_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_c001_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    c00_reg
       (.A({a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_c00_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b10[15],b10[15],b10}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_c00_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_c00_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_c00_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(start_pulse),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_c00_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_c00_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_c00_reg_P_UNCONNECTED[47:32],c00}),
        .PATTERNBDETECT(NLW_c00_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_c00_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({c001_n_106,c001_n_107,c001_n_108,c001_n_109,c001_n_110,c001_n_111,c001_n_112,c001_n_113,c001_n_114,c001_n_115,c001_n_116,c001_n_117,c001_n_118,c001_n_119,c001_n_120,c001_n_121,c001_n_122,c001_n_123,c001_n_124,c001_n_125,c001_n_126,c001_n_127,c001_n_128,c001_n_129,c001_n_130,c001_n_131,c001_n_132,c001_n_133,c001_n_134,c001_n_135,c001_n_136,c001_n_137,c001_n_138,c001_n_139,c001_n_140,c001_n_141,c001_n_142,c001_n_143,c001_n_144,c001_n_145,c001_n_146,c001_n_147,c001_n_148,c001_n_149,c001_n_150,c001_n_151,c001_n_152,c001_n_153}),
        .PCOUT(NLW_c00_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_c00_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    c00_reg_i_1
       (.I0(ap_start),
        .I1(start_d),
        .O(start_pulse));
  LUT1 #(
    .INIT(2'h1)) 
    c00_reg_i_2
       (.I0(ap_rst_n),
        .O(RSTP));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    c011
       (.A({a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00[15],a00}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_c011_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b01[15],b01[15],b01}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_c011_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_c011_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_c011_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_c011_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_c011_OVERFLOW_UNCONNECTED),
        .P({NLW_c011_P_UNCONNECTED[47:32],c011_n_74,c011_n_75,c011_n_76,c011_n_77,c011_n_78,c011_n_79,c011_n_80,c011_n_81,c011_n_82,c011_n_83,c011_n_84,c011_n_85,c011_n_86,c011_n_87,c011_n_88,c011_n_89,c011_n_90,c011_n_91,c011_n_92,c011_n_93,c011_n_94,c011_n_95,c011_n_96,c011_n_97,c011_n_98,c011_n_99,c011_n_100,c011_n_101,c011_n_102,c011_n_103,c011_n_104,c011_n_105}),
        .PATTERNBDETECT(NLW_c011_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_c011_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({c011_n_106,c011_n_107,c011_n_108,c011_n_109,c011_n_110,c011_n_111,c011_n_112,c011_n_113,c011_n_114,c011_n_115,c011_n_116,c011_n_117,c011_n_118,c011_n_119,c011_n_120,c011_n_121,c011_n_122,c011_n_123,c011_n_124,c011_n_125,c011_n_126,c011_n_127,c011_n_128,c011_n_129,c011_n_130,c011_n_131,c011_n_132,c011_n_133,c011_n_134,c011_n_135,c011_n_136,c011_n_137,c011_n_138,c011_n_139,c011_n_140,c011_n_141,c011_n_142,c011_n_143,c011_n_144,c011_n_145,c011_n_146,c011_n_147,c011_n_148,c011_n_149,c011_n_150,c011_n_151,c011_n_152,c011_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_c011_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    c01_reg
       (.A({a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01[15],a01}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_c01_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b11[15],b11[15],b11}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_c01_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_c01_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_c01_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(start_pulse),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_c01_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_c01_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_c01_reg_P_UNCONNECTED[47:32],c01}),
        .PATTERNBDETECT(NLW_c01_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_c01_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({c011_n_106,c011_n_107,c011_n_108,c011_n_109,c011_n_110,c011_n_111,c011_n_112,c011_n_113,c011_n_114,c011_n_115,c011_n_116,c011_n_117,c011_n_118,c011_n_119,c011_n_120,c011_n_121,c011_n_122,c011_n_123,c011_n_124,c011_n_125,c011_n_126,c011_n_127,c011_n_128,c011_n_129,c011_n_130,c011_n_131,c011_n_132,c011_n_133,c011_n_134,c011_n_135,c011_n_136,c011_n_137,c011_n_138,c011_n_139,c011_n_140,c011_n_141,c011_n_142,c011_n_143,c011_n_144,c011_n_145,c011_n_146,c011_n_147,c011_n_148,c011_n_149,c011_n_150,c011_n_151,c011_n_152,c011_n_153}),
        .PCOUT(NLW_c01_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_c01_reg_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    c101
       (.A({a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_c101_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b00[15],b00[15],b00}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_c101_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_c101_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_c101_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_c101_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_c101_OVERFLOW_UNCONNECTED),
        .P({NLW_c101_P_UNCONNECTED[47:32],c101_n_74,c101_n_75,c101_n_76,c101_n_77,c101_n_78,c101_n_79,c101_n_80,c101_n_81,c101_n_82,c101_n_83,c101_n_84,c101_n_85,c101_n_86,c101_n_87,c101_n_88,c101_n_89,c101_n_90,c101_n_91,c101_n_92,c101_n_93,c101_n_94,c101_n_95,c101_n_96,c101_n_97,c101_n_98,c101_n_99,c101_n_100,c101_n_101,c101_n_102,c101_n_103,c101_n_104,c101_n_105}),
        .PATTERNBDETECT(NLW_c101_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_c101_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({c101_n_106,c101_n_107,c101_n_108,c101_n_109,c101_n_110,c101_n_111,c101_n_112,c101_n_113,c101_n_114,c101_n_115,c101_n_116,c101_n_117,c101_n_118,c101_n_119,c101_n_120,c101_n_121,c101_n_122,c101_n_123,c101_n_124,c101_n_125,c101_n_126,c101_n_127,c101_n_128,c101_n_129,c101_n_130,c101_n_131,c101_n_132,c101_n_133,c101_n_134,c101_n_135,c101_n_136,c101_n_137,c101_n_138,c101_n_139,c101_n_140,c101_n_141,c101_n_142,c101_n_143,c101_n_144,c101_n_145,c101_n_146,c101_n_147,c101_n_148,c101_n_149,c101_n_150,c101_n_151,c101_n_152,c101_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_c101_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    c10_reg
       (.A({a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_c10_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b10[15],b10[15],b10}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_c10_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_c10_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_c10_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(start_pulse),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_c10_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_c10_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_c10_reg_P_UNCONNECTED[47:32],c10}),
        .PATTERNBDETECT(NLW_c10_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_c10_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({c101_n_106,c101_n_107,c101_n_108,c101_n_109,c101_n_110,c101_n_111,c101_n_112,c101_n_113,c101_n_114,c101_n_115,c101_n_116,c101_n_117,c101_n_118,c101_n_119,c101_n_120,c101_n_121,c101_n_122,c101_n_123,c101_n_124,c101_n_125,c101_n_126,c101_n_127,c101_n_128,c101_n_129,c101_n_130,c101_n_131,c101_n_132,c101_n_133,c101_n_134,c101_n_135,c101_n_136,c101_n_137,c101_n_138,c101_n_139,c101_n_140,c101_n_141,c101_n_142,c101_n_143,c101_n_144,c101_n_145,c101_n_146,c101_n_147,c101_n_148,c101_n_149,c101_n_150,c101_n_151,c101_n_152,c101_n_153}),
        .PCOUT(NLW_c10_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_c10_reg_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    c111
       (.A({a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10[15],a10}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_c111_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b01[15],b01[15],b01}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_c111_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_c111_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_c111_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_c111_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_c111_OVERFLOW_UNCONNECTED),
        .P({NLW_c111_P_UNCONNECTED[47:32],c111_n_74,c111_n_75,c111_n_76,c111_n_77,c111_n_78,c111_n_79,c111_n_80,c111_n_81,c111_n_82,c111_n_83,c111_n_84,c111_n_85,c111_n_86,c111_n_87,c111_n_88,c111_n_89,c111_n_90,c111_n_91,c111_n_92,c111_n_93,c111_n_94,c111_n_95,c111_n_96,c111_n_97,c111_n_98,c111_n_99,c111_n_100,c111_n_101,c111_n_102,c111_n_103,c111_n_104,c111_n_105}),
        .PATTERNBDETECT(NLW_c111_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_c111_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({c111_n_106,c111_n_107,c111_n_108,c111_n_109,c111_n_110,c111_n_111,c111_n_112,c111_n_113,c111_n_114,c111_n_115,c111_n_116,c111_n_117,c111_n_118,c111_n_119,c111_n_120,c111_n_121,c111_n_122,c111_n_123,c111_n_124,c111_n_125,c111_n_126,c111_n_127,c111_n_128,c111_n_129,c111_n_130,c111_n_131,c111_n_132,c111_n_133,c111_n_134,c111_n_135,c111_n_136,c111_n_137,c111_n_138,c111_n_139,c111_n_140,c111_n_141,c111_n_142,c111_n_143,c111_n_144,c111_n_145,c111_n_146,c111_n_147,c111_n_148,c111_n_149,c111_n_150,c111_n_151,c111_n_152,c111_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_c111_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    c11_reg
       (.A({a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11[15],a11}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_c11_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b11[15],b11[15],b11}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_c11_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_c11_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_c11_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(start_pulse),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_c11_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_c11_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_c11_reg_P_UNCONNECTED[47:32],c11}),
        .PATTERNBDETECT(NLW_c11_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_c11_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({c111_n_106,c111_n_107,c111_n_108,c111_n_109,c111_n_110,c111_n_111,c111_n_112,c111_n_113,c111_n_114,c111_n_115,c111_n_116,c111_n_117,c111_n_118,c111_n_119,c111_n_120,c111_n_121,c111_n_122,c111_n_123,c111_n_124,c111_n_125,c111_n_126,c111_n_127,c111_n_128,c111_n_129,c111_n_130,c111_n_131,c111_n_132,c111_n_133,c111_n_134,c111_n_135,c111_n_136,c111_n_137,c111_n_138,c111_n_139,c111_n_140,c111_n_141,c111_n_142,c111_n_143,c111_n_144,c111_n_145,c111_n_146,c111_n_147,c111_n_148,c111_n_149,c111_n_150,c111_n_151,c111_n_152,c111_n_153}),
        .PCOUT(NLW_c11_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_c11_reg_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    start_d_i_1
       (.I0(ap_start),
        .I1(ap_rst_n),
        .O(start_d_i_1_n_0));
  FDRE start_d_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_d_i_1_n_0),
        .Q(start_d),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
