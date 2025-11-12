-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Nov  8 21:02:05 2025
-- Host        : katnlot running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/users/ankha/desktop/fpga_design/khanhtran_lab4/vivado_codes_lab4/tmp_edit_project.gen/sources_1/bd/Vivado_IP_Design/ip/Vivado_IP_Design_maxmul2x2_0_0/Vivado_IP_Design_maxmul2x2_0_0_stub.vhdl
-- Design      : Vivado_IP_Design_maxmul2x2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Vivado_IP_Design_maxmul2x2_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Vivado_IP_Design_maxmul2x2_0_0 : entity is "Vivado_IP_Design_maxmul2x2_0_0,maxmul2x2,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Vivado_IP_Design_maxmul2x2_0_0 : entity is "Vivado_IP_Design_maxmul2x2_0_0,maxmul2x2,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=maxmul2x2,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_W=16,ACC_W=32}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Vivado_IP_Design_maxmul2x2_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Vivado_IP_Design_maxmul2x2_0_0 : entity is "package_project";
end Vivado_IP_Design_maxmul2x2_0_0;

architecture stub of Vivado_IP_Design_maxmul2x2_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,a00[15:0],a01[15:0],a10[15:0],a11[15:0],b00[15:0],b01[15:0],b10[15:0],b11[15:0],c00[31:0],c01[31:0],c10[31:0],c11[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "maxmul2x2,Vivado 2025.1";
begin
end;
