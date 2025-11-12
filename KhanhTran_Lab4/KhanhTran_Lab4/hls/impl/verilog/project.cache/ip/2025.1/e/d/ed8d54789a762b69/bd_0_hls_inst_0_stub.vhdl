-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Nov  5 17:12:02 2025
-- Host        : katnlot running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,maxmul2x2,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,maxmul2x2,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=maxmul2x2,x_ipVersion=1.0,x_ipCoreRevision=2114335150,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_done,ap_idle,ap_ready,ap_start,a00[15:0],a01[15:0],a10[15:0],a11[15:0],b00[15:0],b01[15:0],b10[15:0],b11[15:0],c00[31:0],c01[31:0],c10[31:0],c11[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_MODE of ap_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_MODE of ap_done : signal is "slave";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
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
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "maxmul2x2,Vivado 2025.1";
begin
end;
