-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "11/28/2017 12:34:51"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPSC IS
    PORT (
	clk : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	regEnd : IN std_logic_vector(31 DOWNTO 0);
	memEnd : IN std_logic_vector(31 DOWNTO 0);
	regTestOut2 : OUT std_logic_vector(31 DOWNTO 0);
	memTestOut : OUT std_logic_vector(31 DOWNTO 0);
	regTestEndOut : OUT std_logic_vector(31 DOWNTO 0);
	memTestEndOut : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPSC;

-- Design Ports Information
-- clk	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[1]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[2]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[4]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[5]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[7]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[8]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[9]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[10]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[11]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[12]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[13]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[14]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[15]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[16]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[17]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[18]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[20]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[21]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[22]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[23]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[24]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[25]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[26]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[27]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[28]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[29]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[30]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regEnd[31]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[3]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[5]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[6]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[9]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[10]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[11]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[12]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[13]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[14]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[16]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[17]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[18]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[19]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[20]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[21]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[22]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[23]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[24]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[25]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[26]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[27]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[28]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[29]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[30]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memEnd[31]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[0]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[1]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[2]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[3]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[7]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[8]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[9]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[10]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[11]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[12]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[14]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[15]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[16]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[17]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[18]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[19]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[20]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[21]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[22]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[23]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[24]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[25]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[26]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[27]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[28]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[29]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[30]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut2[31]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[1]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[3]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[8]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[10]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[12]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[14]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[16]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[17]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[18]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[19]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[20]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[21]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[22]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[23]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[24]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[25]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[26]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[27]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[28]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[29]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[30]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[31]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[3]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[4]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[8]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[9]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[10]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[11]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[12]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[13]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[15]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[16]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[17]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[18]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[19]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[20]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[21]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[22]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[23]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[24]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[25]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[26]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[27]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[28]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[29]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[30]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEndOut[31]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[2]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[4]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[5]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[6]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[7]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[8]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[9]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[10]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[11]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[12]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[13]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[14]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[15]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[16]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[17]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[18]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[19]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[20]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[21]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[22]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[23]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[24]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[25]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[26]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[27]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[28]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[29]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[30]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEndOut[31]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPSC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_regEnd : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memEnd : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_regTestOut2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memTestOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_regTestEndOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memTestEndOut : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \key[2]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[3]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \regEnd[0]~input_o\ : std_logic;
SIGNAL \regEnd[1]~input_o\ : std_logic;
SIGNAL \regEnd[2]~input_o\ : std_logic;
SIGNAL \regEnd[3]~input_o\ : std_logic;
SIGNAL \regEnd[4]~input_o\ : std_logic;
SIGNAL \regEnd[5]~input_o\ : std_logic;
SIGNAL \regEnd[6]~input_o\ : std_logic;
SIGNAL \regEnd[7]~input_o\ : std_logic;
SIGNAL \regEnd[8]~input_o\ : std_logic;
SIGNAL \regEnd[9]~input_o\ : std_logic;
SIGNAL \regEnd[10]~input_o\ : std_logic;
SIGNAL \regEnd[11]~input_o\ : std_logic;
SIGNAL \regEnd[12]~input_o\ : std_logic;
SIGNAL \regEnd[13]~input_o\ : std_logic;
SIGNAL \regEnd[14]~input_o\ : std_logic;
SIGNAL \regEnd[15]~input_o\ : std_logic;
SIGNAL \regEnd[16]~input_o\ : std_logic;
SIGNAL \regEnd[17]~input_o\ : std_logic;
SIGNAL \regEnd[18]~input_o\ : std_logic;
SIGNAL \regEnd[19]~input_o\ : std_logic;
SIGNAL \regEnd[20]~input_o\ : std_logic;
SIGNAL \regEnd[21]~input_o\ : std_logic;
SIGNAL \regEnd[22]~input_o\ : std_logic;
SIGNAL \regEnd[23]~input_o\ : std_logic;
SIGNAL \regEnd[24]~input_o\ : std_logic;
SIGNAL \regEnd[25]~input_o\ : std_logic;
SIGNAL \regEnd[26]~input_o\ : std_logic;
SIGNAL \regEnd[27]~input_o\ : std_logic;
SIGNAL \regEnd[28]~input_o\ : std_logic;
SIGNAL \regEnd[29]~input_o\ : std_logic;
SIGNAL \regEnd[30]~input_o\ : std_logic;
SIGNAL \regEnd[31]~input_o\ : std_logic;
SIGNAL \memEnd[0]~input_o\ : std_logic;
SIGNAL \memEnd[1]~input_o\ : std_logic;
SIGNAL \memEnd[2]~input_o\ : std_logic;
SIGNAL \memEnd[3]~input_o\ : std_logic;
SIGNAL \memEnd[4]~input_o\ : std_logic;
SIGNAL \memEnd[5]~input_o\ : std_logic;
SIGNAL \memEnd[6]~input_o\ : std_logic;
SIGNAL \memEnd[7]~input_o\ : std_logic;
SIGNAL \memEnd[8]~input_o\ : std_logic;
SIGNAL \memEnd[9]~input_o\ : std_logic;
SIGNAL \memEnd[10]~input_o\ : std_logic;
SIGNAL \memEnd[11]~input_o\ : std_logic;
SIGNAL \memEnd[12]~input_o\ : std_logic;
SIGNAL \memEnd[13]~input_o\ : std_logic;
SIGNAL \memEnd[14]~input_o\ : std_logic;
SIGNAL \memEnd[15]~input_o\ : std_logic;
SIGNAL \memEnd[16]~input_o\ : std_logic;
SIGNAL \memEnd[17]~input_o\ : std_logic;
SIGNAL \memEnd[18]~input_o\ : std_logic;
SIGNAL \memEnd[19]~input_o\ : std_logic;
SIGNAL \memEnd[20]~input_o\ : std_logic;
SIGNAL \memEnd[21]~input_o\ : std_logic;
SIGNAL \memEnd[22]~input_o\ : std_logic;
SIGNAL \memEnd[23]~input_o\ : std_logic;
SIGNAL \memEnd[24]~input_o\ : std_logic;
SIGNAL \memEnd[25]~input_o\ : std_logic;
SIGNAL \memEnd[26]~input_o\ : std_logic;
SIGNAL \memEnd[27]~input_o\ : std_logic;
SIGNAL \memEnd[28]~input_o\ : std_logic;
SIGNAL \memEnd[29]~input_o\ : std_logic;
SIGNAL \memEnd[30]~input_o\ : std_logic;
SIGNAL \memEnd[31]~input_o\ : std_logic;
SIGNAL \regTestOut2[0]~output_o\ : std_logic;
SIGNAL \regTestOut2[1]~output_o\ : std_logic;
SIGNAL \regTestOut2[2]~output_o\ : std_logic;
SIGNAL \regTestOut2[3]~output_o\ : std_logic;
SIGNAL \regTestOut2[4]~output_o\ : std_logic;
SIGNAL \regTestOut2[5]~output_o\ : std_logic;
SIGNAL \regTestOut2[6]~output_o\ : std_logic;
SIGNAL \regTestOut2[7]~output_o\ : std_logic;
SIGNAL \regTestOut2[8]~output_o\ : std_logic;
SIGNAL \regTestOut2[9]~output_o\ : std_logic;
SIGNAL \regTestOut2[10]~output_o\ : std_logic;
SIGNAL \regTestOut2[11]~output_o\ : std_logic;
SIGNAL \regTestOut2[12]~output_o\ : std_logic;
SIGNAL \regTestOut2[13]~output_o\ : std_logic;
SIGNAL \regTestOut2[14]~output_o\ : std_logic;
SIGNAL \regTestOut2[15]~output_o\ : std_logic;
SIGNAL \regTestOut2[16]~output_o\ : std_logic;
SIGNAL \regTestOut2[17]~output_o\ : std_logic;
SIGNAL \regTestOut2[18]~output_o\ : std_logic;
SIGNAL \regTestOut2[19]~output_o\ : std_logic;
SIGNAL \regTestOut2[20]~output_o\ : std_logic;
SIGNAL \regTestOut2[21]~output_o\ : std_logic;
SIGNAL \regTestOut2[22]~output_o\ : std_logic;
SIGNAL \regTestOut2[23]~output_o\ : std_logic;
SIGNAL \regTestOut2[24]~output_o\ : std_logic;
SIGNAL \regTestOut2[25]~output_o\ : std_logic;
SIGNAL \regTestOut2[26]~output_o\ : std_logic;
SIGNAL \regTestOut2[27]~output_o\ : std_logic;
SIGNAL \regTestOut2[28]~output_o\ : std_logic;
SIGNAL \regTestOut2[29]~output_o\ : std_logic;
SIGNAL \regTestOut2[30]~output_o\ : std_logic;
SIGNAL \regTestOut2[31]~output_o\ : std_logic;
SIGNAL \memTestOut[0]~output_o\ : std_logic;
SIGNAL \memTestOut[1]~output_o\ : std_logic;
SIGNAL \memTestOut[2]~output_o\ : std_logic;
SIGNAL \memTestOut[3]~output_o\ : std_logic;
SIGNAL \memTestOut[4]~output_o\ : std_logic;
SIGNAL \memTestOut[5]~output_o\ : std_logic;
SIGNAL \memTestOut[6]~output_o\ : std_logic;
SIGNAL \memTestOut[7]~output_o\ : std_logic;
SIGNAL \memTestOut[8]~output_o\ : std_logic;
SIGNAL \memTestOut[9]~output_o\ : std_logic;
SIGNAL \memTestOut[10]~output_o\ : std_logic;
SIGNAL \memTestOut[11]~output_o\ : std_logic;
SIGNAL \memTestOut[12]~output_o\ : std_logic;
SIGNAL \memTestOut[13]~output_o\ : std_logic;
SIGNAL \memTestOut[14]~output_o\ : std_logic;
SIGNAL \memTestOut[15]~output_o\ : std_logic;
SIGNAL \memTestOut[16]~output_o\ : std_logic;
SIGNAL \memTestOut[17]~output_o\ : std_logic;
SIGNAL \memTestOut[18]~output_o\ : std_logic;
SIGNAL \memTestOut[19]~output_o\ : std_logic;
SIGNAL \memTestOut[20]~output_o\ : std_logic;
SIGNAL \memTestOut[21]~output_o\ : std_logic;
SIGNAL \memTestOut[22]~output_o\ : std_logic;
SIGNAL \memTestOut[23]~output_o\ : std_logic;
SIGNAL \memTestOut[24]~output_o\ : std_logic;
SIGNAL \memTestOut[25]~output_o\ : std_logic;
SIGNAL \memTestOut[26]~output_o\ : std_logic;
SIGNAL \memTestOut[27]~output_o\ : std_logic;
SIGNAL \memTestOut[28]~output_o\ : std_logic;
SIGNAL \memTestOut[29]~output_o\ : std_logic;
SIGNAL \memTestOut[30]~output_o\ : std_logic;
SIGNAL \memTestOut[31]~output_o\ : std_logic;
SIGNAL \regTestEndOut[0]~output_o\ : std_logic;
SIGNAL \regTestEndOut[1]~output_o\ : std_logic;
SIGNAL \regTestEndOut[2]~output_o\ : std_logic;
SIGNAL \regTestEndOut[3]~output_o\ : std_logic;
SIGNAL \regTestEndOut[4]~output_o\ : std_logic;
SIGNAL \regTestEndOut[5]~output_o\ : std_logic;
SIGNAL \regTestEndOut[6]~output_o\ : std_logic;
SIGNAL \regTestEndOut[7]~output_o\ : std_logic;
SIGNAL \regTestEndOut[8]~output_o\ : std_logic;
SIGNAL \regTestEndOut[9]~output_o\ : std_logic;
SIGNAL \regTestEndOut[10]~output_o\ : std_logic;
SIGNAL \regTestEndOut[11]~output_o\ : std_logic;
SIGNAL \regTestEndOut[12]~output_o\ : std_logic;
SIGNAL \regTestEndOut[13]~output_o\ : std_logic;
SIGNAL \regTestEndOut[14]~output_o\ : std_logic;
SIGNAL \regTestEndOut[15]~output_o\ : std_logic;
SIGNAL \regTestEndOut[16]~output_o\ : std_logic;
SIGNAL \regTestEndOut[17]~output_o\ : std_logic;
SIGNAL \regTestEndOut[18]~output_o\ : std_logic;
SIGNAL \regTestEndOut[19]~output_o\ : std_logic;
SIGNAL \regTestEndOut[20]~output_o\ : std_logic;
SIGNAL \regTestEndOut[21]~output_o\ : std_logic;
SIGNAL \regTestEndOut[22]~output_o\ : std_logic;
SIGNAL \regTestEndOut[23]~output_o\ : std_logic;
SIGNAL \regTestEndOut[24]~output_o\ : std_logic;
SIGNAL \regTestEndOut[25]~output_o\ : std_logic;
SIGNAL \regTestEndOut[26]~output_o\ : std_logic;
SIGNAL \regTestEndOut[27]~output_o\ : std_logic;
SIGNAL \regTestEndOut[28]~output_o\ : std_logic;
SIGNAL \regTestEndOut[29]~output_o\ : std_logic;
SIGNAL \regTestEndOut[30]~output_o\ : std_logic;
SIGNAL \regTestEndOut[31]~output_o\ : std_logic;
SIGNAL \memTestEndOut[0]~output_o\ : std_logic;
SIGNAL \memTestEndOut[1]~output_o\ : std_logic;
SIGNAL \memTestEndOut[2]~output_o\ : std_logic;
SIGNAL \memTestEndOut[3]~output_o\ : std_logic;
SIGNAL \memTestEndOut[4]~output_o\ : std_logic;
SIGNAL \memTestEndOut[5]~output_o\ : std_logic;
SIGNAL \memTestEndOut[6]~output_o\ : std_logic;
SIGNAL \memTestEndOut[7]~output_o\ : std_logic;
SIGNAL \memTestEndOut[8]~output_o\ : std_logic;
SIGNAL \memTestEndOut[9]~output_o\ : std_logic;
SIGNAL \memTestEndOut[10]~output_o\ : std_logic;
SIGNAL \memTestEndOut[11]~output_o\ : std_logic;
SIGNAL \memTestEndOut[12]~output_o\ : std_logic;
SIGNAL \memTestEndOut[13]~output_o\ : std_logic;
SIGNAL \memTestEndOut[14]~output_o\ : std_logic;
SIGNAL \memTestEndOut[15]~output_o\ : std_logic;
SIGNAL \memTestEndOut[16]~output_o\ : std_logic;
SIGNAL \memTestEndOut[17]~output_o\ : std_logic;
SIGNAL \memTestEndOut[18]~output_o\ : std_logic;
SIGNAL \memTestEndOut[19]~output_o\ : std_logic;
SIGNAL \memTestEndOut[20]~output_o\ : std_logic;
SIGNAL \memTestEndOut[21]~output_o\ : std_logic;
SIGNAL \memTestEndOut[22]~output_o\ : std_logic;
SIGNAL \memTestEndOut[23]~output_o\ : std_logic;
SIGNAL \memTestEndOut[24]~output_o\ : std_logic;
SIGNAL \memTestEndOut[25]~output_o\ : std_logic;
SIGNAL \memTestEndOut[26]~output_o\ : std_logic;
SIGNAL \memTestEndOut[27]~output_o\ : std_logic;
SIGNAL \memTestEndOut[28]~output_o\ : std_logic;
SIGNAL \memTestEndOut[29]~output_o\ : std_logic;
SIGNAL \memTestEndOut[30]~output_o\ : std_logic;
SIGNAL \memTestEndOut[31]~output_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[3]~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \regTemp~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \regTemp~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \regTemp~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \key[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|PC|DOUT[0]~4_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[0]~5\ : std_logic;
SIGNAL \FD|PC|DOUT[1]~6_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[1]~7\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~8_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~9\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~10_combout\ : std_logic;
SIGNAL \FD|UCULA|Mux7~0_combout\ : std_logic;
SIGNAL \FD|UCULA|Mux6~0_combout\ : std_logic;
SIGNAL \FD|InstMem|ram~549_combout\ : std_logic;
SIGNAL \FD|UCULA|Mux5~0_combout\ : std_logic;
SIGNAL \FD|UCULA|Mux1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~1_combout\ : std_logic;
SIGNAL \FD|UCULA|Mux3~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~1_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[0]~0_combout\ : std_logic;
SIGNAL \FD|MemDados|ram~550_combout\ : std_logic;
SIGNAL \FD|muxRtImm|C[2]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~2\ : std_logic;
SIGNAL \FD|ULA|Add1~4\ : std_logic;
SIGNAL \FD|ULA|Add1~6\ : std_logic;
SIGNAL \FD|ULA|Add1~7_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~2\ : std_logic;
SIGNAL \FD|ULA|Add0~4\ : std_logic;
SIGNAL \FD|ULA|Add0~6\ : std_logic;
SIGNAL \FD|ULA|Add0~7_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~3_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[0]~1\ : std_logic;
SIGNAL \FD|ULA|tempAdd[1]~3\ : std_logic;
SIGNAL \FD|ULA|tempAdd[2]~5\ : std_logic;
SIGNAL \FD|ULA|tempAdd[3]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~1_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[3]~0_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[3]~5_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[3]~6_combout\ : std_logic;
SIGNAL \FD|BancoReg|Decoder0~1_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][3]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux28~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~8\ : std_logic;
SIGNAL \FD|ULA|Add0~9_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~8\ : std_logic;
SIGNAL \FD|ULA|Add1~9_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[3]~7\ : std_logic;
SIGNAL \FD|ULA|tempAdd[4]~8_combout\ : std_logic;
SIGNAL \FD|InstMem|ram~550_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[4]~7_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][4]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[4]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~10\ : std_logic;
SIGNAL \FD|ULA|Add0~11_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~10\ : std_logic;
SIGNAL \FD|ULA|Add1~11_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[4]~9\ : std_logic;
SIGNAL \FD|ULA|tempAdd[5]~10_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[5]~8_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][5]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[5]~27_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~12\ : std_logic;
SIGNAL \FD|ULA|Add1~13_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~12\ : std_logic;
SIGNAL \FD|ULA|Add0~13_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[5]~11\ : std_logic;
SIGNAL \FD|ULA|tempAdd[6]~12_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[6]~9_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][6]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[6]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~14\ : std_logic;
SIGNAL \FD|ULA|Add0~15_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~14\ : std_logic;
SIGNAL \FD|ULA|Add1~15_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[6]~13\ : std_logic;
SIGNAL \FD|ULA|tempAdd[7]~14_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[7]~10_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][7]~feeder_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][7]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[7]~25_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~16\ : std_logic;
SIGNAL \FD|ULA|Add0~17_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~16\ : std_logic;
SIGNAL \FD|ULA|Add1~17_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[7]~15\ : std_logic;
SIGNAL \FD|ULA|tempAdd[8]~16_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[8]~11_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][8]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[8]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~18\ : std_logic;
SIGNAL \FD|ULA|Add0~19_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~18\ : std_logic;
SIGNAL \FD|ULA|Add1~19_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[8]~17\ : std_logic;
SIGNAL \FD|ULA|tempAdd[9]~18_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[9]~12_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][9]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[9]~23_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~20\ : std_logic;
SIGNAL \FD|ULA|Add0~21_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~20\ : std_logic;
SIGNAL \FD|ULA|Add1~21_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[9]~19\ : std_logic;
SIGNAL \FD|ULA|tempAdd[10]~20_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[10]~13_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][10]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[10]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~22\ : std_logic;
SIGNAL \FD|ULA|Add0~23_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~22\ : std_logic;
SIGNAL \FD|ULA|Add1~23_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[10]~21\ : std_logic;
SIGNAL \FD|ULA|tempAdd[11]~22_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[11]~14_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][11]~feeder_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][11]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[11]~21_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~24\ : std_logic;
SIGNAL \FD|ULA|Add0~25_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~24\ : std_logic;
SIGNAL \FD|ULA|Add1~25_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[11]~23\ : std_logic;
SIGNAL \FD|ULA|tempAdd[12]~24_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[12]~15_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][12]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[12]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~26\ : std_logic;
SIGNAL \FD|ULA|Add0~27_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~26\ : std_logic;
SIGNAL \FD|ULA|Add1~27_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[12]~25\ : std_logic;
SIGNAL \FD|ULA|tempAdd[13]~26_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[13]~16_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][13]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[13]~19_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~28\ : std_logic;
SIGNAL \FD|ULA|Add0~29_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~28\ : std_logic;
SIGNAL \FD|ULA|Add1~29_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[13]~27\ : std_logic;
SIGNAL \FD|ULA|tempAdd[14]~28_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[14]~17_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][14]~feeder_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][14]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[14]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~30\ : std_logic;
SIGNAL \FD|ULA|Add1~31_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~30\ : std_logic;
SIGNAL \FD|ULA|Add0~31_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[14]~29\ : std_logic;
SIGNAL \FD|ULA|tempAdd[15]~30_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[15]~18_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][15]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[15]~17_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~32\ : std_logic;
SIGNAL \FD|ULA|Add1~33_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~32\ : std_logic;
SIGNAL \FD|ULA|Add0~33_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[19]~20_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[19]~19_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[15]~31\ : std_logic;
SIGNAL \FD|ULA|tempAdd[16]~32_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[16]~21_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][16]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[16]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~34\ : std_logic;
SIGNAL \FD|ULA|Add1~35_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~34\ : std_logic;
SIGNAL \FD|ULA|Add0~35_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[16]~33\ : std_logic;
SIGNAL \FD|ULA|tempAdd[17]~34_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[17]~22_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][17]~feeder_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][17]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[17]~15_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~36\ : std_logic;
SIGNAL \FD|ULA|Add0~37_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~36\ : std_logic;
SIGNAL \FD|ULA|Add1~37_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[17]~35\ : std_logic;
SIGNAL \FD|ULA|tempAdd[18]~36_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[18]~23_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][18]~feeder_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][18]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[18]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~38\ : std_logic;
SIGNAL \FD|ULA|Add1~39_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~38\ : std_logic;
SIGNAL \FD|ULA|Add0~39_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[18]~37\ : std_logic;
SIGNAL \FD|ULA|tempAdd[19]~38_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[19]~24_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][19]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[19]~13_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~40\ : std_logic;
SIGNAL \FD|ULA|Add0~41_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~40\ : std_logic;
SIGNAL \FD|ULA|Add1~41_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[19]~39\ : std_logic;
SIGNAL \FD|ULA|tempAdd[20]~40_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[20]~25_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][20]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[20]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~42\ : std_logic;
SIGNAL \FD|ULA|Add0~43_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~42\ : std_logic;
SIGNAL \FD|ULA|Add1~43_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[20]~41\ : std_logic;
SIGNAL \FD|ULA|tempAdd[21]~42_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[21]~26_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][21]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[21]~11_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~44\ : std_logic;
SIGNAL \FD|ULA|Add1~45_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~44\ : std_logic;
SIGNAL \FD|ULA|Add0~45_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[21]~43\ : std_logic;
SIGNAL \FD|ULA|tempAdd[22]~44_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[22]~27_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][22]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[22]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~46\ : std_logic;
SIGNAL \FD|ULA|Add0~47_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~46\ : std_logic;
SIGNAL \FD|ULA|Add1~47_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[22]~45\ : std_logic;
SIGNAL \FD|ULA|tempAdd[23]~46_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[23]~28_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][23]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[23]~9_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~48\ : std_logic;
SIGNAL \FD|ULA|Add0~49_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~48\ : std_logic;
SIGNAL \FD|ULA|Add1~49_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[23]~47\ : std_logic;
SIGNAL \FD|ULA|tempAdd[24]~48_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[24]~29_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][24]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[24]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~50\ : std_logic;
SIGNAL \FD|ULA|Add0~51_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~50\ : std_logic;
SIGNAL \FD|ULA|Add1~51_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[24]~49\ : std_logic;
SIGNAL \FD|ULA|tempAdd[25]~50_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[25]~30_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][25]~feeder_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][25]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[25]~7_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~52\ : std_logic;
SIGNAL \FD|ULA|Add1~53_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~52\ : std_logic;
SIGNAL \FD|ULA|Add0~53_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[25]~51\ : std_logic;
SIGNAL \FD|ULA|tempAdd[26]~52_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[26]~31_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][26]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[26]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~54\ : std_logic;
SIGNAL \FD|ULA|Add1~55_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~54\ : std_logic;
SIGNAL \FD|ULA|Add0~55_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[26]~53\ : std_logic;
SIGNAL \FD|ULA|tempAdd[27]~54_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[27]~32_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][27]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[27]~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~56\ : std_logic;
SIGNAL \FD|ULA|Add0~57_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~56\ : std_logic;
SIGNAL \FD|ULA|Add1~57_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[27]~55\ : std_logic;
SIGNAL \FD|ULA|tempAdd[28]~56_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[28]~33_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][28]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[28]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~58\ : std_logic;
SIGNAL \FD|ULA|Add0~59_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~58\ : std_logic;
SIGNAL \FD|ULA|Add1~59_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[28]~57\ : std_logic;
SIGNAL \FD|ULA|tempAdd[29]~58_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[29]~34_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][29]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[29]~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~60\ : std_logic;
SIGNAL \FD|ULA|Add0~61_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~60\ : std_logic;
SIGNAL \FD|ULA|Add1~61_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[29]~59\ : std_logic;
SIGNAL \FD|ULA|tempAdd[30]~60_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[30]~35_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][30]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[30]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~62\ : std_logic;
SIGNAL \FD|ULA|Add0~63_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[30]~61\ : std_logic;
SIGNAL \FD|ULA|tempAdd[32]~62_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[31]~36_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][31]~q\ : std_logic;
SIGNAL \FD|muxRtImm|C[31]~1_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~62\ : std_logic;
SIGNAL \FD|ULA|Add1~63_combout\ : std_logic;
SIGNAL \FD|ULA|sltIn[0]~0_combout\ : std_logic;
SIGNAL \FD|MemDados|ram~551_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[2]~4_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][2]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux29~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~5_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[2]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~1_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[1]~2_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[1]~3_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][1]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux30~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~0_combout\ : std_logic;
SIGNAL \FD|ULA|tempAdd[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~1_combout\ : std_logic;
SIGNAL \FD|MemDados|ram~549_combout\ : std_logic;
SIGNAL \FD|MuxULAMem|C[0]~1_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[0][0]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux95~1_combout\ : std_logic;
SIGNAL \FD|BancoReg|Mux95~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][0]~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|Decoder0~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][0]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux95~2_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][1]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux94~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|Mux94~1_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][2]~1_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][2]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux93~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|Mux93~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[2]~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|BancoReg|Mux63~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \memTemp~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \memTemp~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \memTemp~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|Mux62~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|Mux61~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][3]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux60~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][4]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux59~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][5]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux58~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][6]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux57~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][7]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux56~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][8]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux55~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][9]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux54~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][10]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux53~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][11]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux52~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][12]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux51~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][13]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux50~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][14]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux49~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][15]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux48~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][16]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux47~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][17]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux46~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][18]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux45~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][19]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux44~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][20]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux43~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][21]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux42~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][22]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux41~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][23]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux40~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][24]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux39~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][25]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux38~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][26]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux37~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][27]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux36~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][28]~feeder_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][28]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux35~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][29]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux34~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][30]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux33~0_combout\ : std_logic;
SIGNAL \FD|BancoReg|ram[5][31]~q\ : std_logic;
SIGNAL \FD|BancoReg|Mux32~0_combout\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL regTemp : std_logic_vector(30 DOWNTO 0);
SIGNAL memTemp : std_logic_vector(30 DOWNTO 0);
SIGNAL \FD|MuxULAMem|C\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_key[0]~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_key <= key;
ww_regEnd <= regEnd;
ww_memEnd <= memEnd;
regTestOut2 <= ww_regTestOut2;
memTestOut <= ww_memTestOut;
regTestEndOut <= ww_regTestEndOut;
memTestEndOut <= ww_memTestEndOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & \FD|MuxULAMem|C\(4) & \FD|MuxULAMem|C\(5) & \FD|MuxULAMem|C\(6) & \FD|MuxULAMem|C\(7) & \FD|MuxULAMem|C\(8) & \FD|MuxULAMem|C\(9)
& \FD|MuxULAMem|C\(10) & \FD|MuxULAMem|C\(11) & \FD|MuxULAMem|C\(12) & \FD|MuxULAMem|C\(13) & \FD|MuxULAMem|C\(14) & \FD|MuxULAMem|C\(15) & \FD|MuxULAMem|C\(16) & \FD|MuxULAMem|C\(17) & \FD|MuxULAMem|C\(18) & \FD|MuxULAMem|C\(19) & 
\FD|MuxULAMem|C\(20) & \FD|MuxULAMem|C\(21) & \FD|MuxULAMem|C\(22) & \FD|MuxULAMem|C\(23) & \FD|MuxULAMem|C\(24) & \FD|MuxULAMem|C\(25) & \FD|MuxULAMem|C\(26) & \FD|MuxULAMem|C\(27) & \FD|MuxULAMem|C\(28) & \FD|MuxULAMem|C\(29) & 
\FD|MuxULAMem|C\(30) & \FD|MuxULAMem|C\(31) & \FD|MuxULAMem|C[3]~6_combout\);

\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \FD|InstMem|ram~549_combout\ & \~GND~combout\ & \FD|InstMem|ram~549_combout\);

\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\regTemp~0_combout\ & \Add0~4_combout\ & \regTemp~2_combout\ & \regTemp~1_combout\);

\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a1\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a2\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a3\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a4\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a5\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a6\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a7\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a8\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a9\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a10\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a11\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a12\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a13\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a14\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a15\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a16\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a17\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a18\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a19\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a20\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a21\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a22\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a23\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a24\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a25\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a26\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a27\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a28\ <= \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);

\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|BancoReg|Mux32~0_combout\ & \FD|BancoReg|Mux33~0_combout\ & \FD|BancoReg|Mux34~0_combout\ & \FD|BancoReg|Mux35~0_combout\ & \FD|BancoReg|Mux36~0_combout\
& \FD|BancoReg|Mux37~0_combout\ & \FD|BancoReg|Mux38~0_combout\ & \FD|BancoReg|Mux39~0_combout\ & \FD|BancoReg|Mux40~0_combout\ & \FD|BancoReg|Mux41~0_combout\ & \FD|BancoReg|Mux42~0_combout\ & \FD|BancoReg|Mux43~0_combout\ & \FD|BancoReg|Mux44~0_combout\
& \FD|BancoReg|Mux45~0_combout\ & \FD|BancoReg|Mux46~0_combout\ & \FD|BancoReg|Mux47~0_combout\ & \FD|BancoReg|Mux48~0_combout\ & \FD|BancoReg|Mux49~0_combout\ & \FD|BancoReg|Mux50~0_combout\ & \FD|BancoReg|Mux51~0_combout\ & \FD|BancoReg|Mux52~0_combout\
& \FD|BancoReg|Mux53~0_combout\ & \FD|BancoReg|Mux54~0_combout\ & \FD|BancoReg|Mux55~0_combout\ & \FD|BancoReg|Mux56~0_combout\ & \FD|BancoReg|Mux57~0_combout\ & \FD|BancoReg|Mux58~0_combout\ & \FD|BancoReg|Mux59~0_combout\ & \FD|BancoReg|Mux60~0_combout\
& \FD|BancoReg|Mux61~0_combout\ & \FD|BancoReg|Mux62~0_combout\ & \FD|BancoReg|Mux63~0_combout\);

\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|ULA|Mux28~1_combout\ & \FD|ULA|Mux29~1_combout\ & \FD|ULA|Mux30~1_combout\ & \FD|MemDados|ram~551_combout\);

\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\memTemp~2_combout\ & \Add1~4_combout\ & \memTemp~1_combout\ & \memTemp~0_combout\);

\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a1\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a2\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a3\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a4\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a5\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a6\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a7\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a8\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a9\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a10\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a11\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a12\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a13\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a14\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a15\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a16\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a17\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a18\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a19\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a20\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a21\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a22\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a23\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a24\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a25\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a26\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a27\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a28\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a29\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a30\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a31\ <= \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\key[2]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \key[2]~input_o\);

\key[3]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \key[3]~input_o\);

\key[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \key[0]~input_o\);
\ALT_INV_key[0]~inputclkctrl_outclk\ <= NOT \key[0]~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y0_N2
\regTestOut2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|Mux95~2_combout\,
	devoe => ww_devoe,
	o => \regTestOut2[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\regTestOut2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|Mux94~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\regTestOut2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|Mux93~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut2[2]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\regTestOut2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \regTestOut2[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\regTestOut2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \regTestOut2[4]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\regTestOut2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \regTestOut2[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\regTestOut2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \regTestOut2[6]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\regTestOut2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \regTestOut2[7]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\regTestOut2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \regTestOut2[8]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\regTestOut2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \regTestOut2[9]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\regTestOut2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \regTestOut2[10]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\regTestOut2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \regTestOut2[11]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\regTestOut2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \regTestOut2[12]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\regTestOut2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \regTestOut2[13]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\regTestOut2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \regTestOut2[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\regTestOut2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \regTestOut2[15]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\regTestOut2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \regTestOut2[16]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\regTestOut2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \regTestOut2[17]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\regTestOut2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \regTestOut2[18]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\regTestOut2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \regTestOut2[19]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\regTestOut2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \regTestOut2[20]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\regTestOut2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \regTestOut2[21]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\regTestOut2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \regTestOut2[22]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\regTestOut2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \regTestOut2[23]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\regTestOut2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \regTestOut2[24]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\regTestOut2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \regTestOut2[25]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\regTestOut2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \regTestOut2[26]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\regTestOut2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \regTestOut2[27]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\regTestOut2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \regTestOut2[28]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\regTestOut2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \regTestOut2[29]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\regTestOut2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \regTestOut2[30]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\regTestOut2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \regTestOut2[31]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\memTestOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \memTestOut[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\memTestOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \memTestOut[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\memTestOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \memTestOut[2]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\memTestOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \memTestOut[3]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\memTestOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \memTestOut[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\memTestOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \memTestOut[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\memTestOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \memTestOut[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\memTestOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \memTestOut[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\memTestOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \memTestOut[8]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\memTestOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \memTestOut[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\memTestOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \memTestOut[10]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\memTestOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \memTestOut[11]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\memTestOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \memTestOut[12]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\memTestOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \memTestOut[13]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\memTestOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \memTestOut[14]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\memTestOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \memTestOut[15]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\memTestOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \memTestOut[16]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\memTestOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \memTestOut[17]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\memTestOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \memTestOut[18]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\memTestOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \memTestOut[19]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\memTestOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \memTestOut[20]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\memTestOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \memTestOut[21]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\memTestOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \memTestOut[22]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\memTestOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \memTestOut[23]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\memTestOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \memTestOut[24]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\memTestOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \memTestOut[25]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\memTestOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \memTestOut[26]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\memTestOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \memTestOut[27]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\memTestOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \memTestOut[28]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\memTestOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \memTestOut[29]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\memTestOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \memTestOut[30]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\memTestOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \memTestOut[31]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\regTestEndOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(0),
	devoe => ww_devoe,
	o => \regTestEndOut[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\regTestEndOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(1),
	devoe => ww_devoe,
	o => \regTestEndOut[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\regTestEndOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(2),
	devoe => ww_devoe,
	o => \regTestEndOut[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\regTestEndOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(3),
	devoe => ww_devoe,
	o => \regTestEndOut[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\regTestEndOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(4),
	devoe => ww_devoe,
	o => \regTestEndOut[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\regTestEndOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(5),
	devoe => ww_devoe,
	o => \regTestEndOut[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\regTestEndOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(6),
	devoe => ww_devoe,
	o => \regTestEndOut[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\regTestEndOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(7),
	devoe => ww_devoe,
	o => \regTestEndOut[7]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\regTestEndOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(8),
	devoe => ww_devoe,
	o => \regTestEndOut[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\regTestEndOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(9),
	devoe => ww_devoe,
	o => \regTestEndOut[9]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\regTestEndOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(10),
	devoe => ww_devoe,
	o => \regTestEndOut[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\regTestEndOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(11),
	devoe => ww_devoe,
	o => \regTestEndOut[11]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\regTestEndOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(12),
	devoe => ww_devoe,
	o => \regTestEndOut[12]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\regTestEndOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(13),
	devoe => ww_devoe,
	o => \regTestEndOut[13]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\regTestEndOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(14),
	devoe => ww_devoe,
	o => \regTestEndOut[14]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\regTestEndOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(15),
	devoe => ww_devoe,
	o => \regTestEndOut[15]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\regTestEndOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(16),
	devoe => ww_devoe,
	o => \regTestEndOut[16]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\regTestEndOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(17),
	devoe => ww_devoe,
	o => \regTestEndOut[17]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\regTestEndOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(18),
	devoe => ww_devoe,
	o => \regTestEndOut[18]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\regTestEndOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(19),
	devoe => ww_devoe,
	o => \regTestEndOut[19]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\regTestEndOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(20),
	devoe => ww_devoe,
	o => \regTestEndOut[20]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\regTestEndOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(21),
	devoe => ww_devoe,
	o => \regTestEndOut[21]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\regTestEndOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(22),
	devoe => ww_devoe,
	o => \regTestEndOut[22]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\regTestEndOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(23),
	devoe => ww_devoe,
	o => \regTestEndOut[23]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\regTestEndOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(24),
	devoe => ww_devoe,
	o => \regTestEndOut[24]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\regTestEndOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(25),
	devoe => ww_devoe,
	o => \regTestEndOut[25]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\regTestEndOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(26),
	devoe => ww_devoe,
	o => \regTestEndOut[26]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\regTestEndOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(27),
	devoe => ww_devoe,
	o => \regTestEndOut[27]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\regTestEndOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(28),
	devoe => ww_devoe,
	o => \regTestEndOut[28]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\regTestEndOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(29),
	devoe => ww_devoe,
	o => \regTestEndOut[29]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\regTestEndOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regTemp(30),
	devoe => ww_devoe,
	o => \regTestEndOut[30]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\regTestEndOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \regTestEndOut[31]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\memTestEndOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(0),
	devoe => ww_devoe,
	o => \memTestEndOut[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\memTestEndOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(1),
	devoe => ww_devoe,
	o => \memTestEndOut[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\memTestEndOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(2),
	devoe => ww_devoe,
	o => \memTestEndOut[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\memTestEndOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(3),
	devoe => ww_devoe,
	o => \memTestEndOut[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\memTestEndOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(4),
	devoe => ww_devoe,
	o => \memTestEndOut[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\memTestEndOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(5),
	devoe => ww_devoe,
	o => \memTestEndOut[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\memTestEndOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(6),
	devoe => ww_devoe,
	o => \memTestEndOut[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\memTestEndOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(7),
	devoe => ww_devoe,
	o => \memTestEndOut[7]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\memTestEndOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(8),
	devoe => ww_devoe,
	o => \memTestEndOut[8]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\memTestEndOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(9),
	devoe => ww_devoe,
	o => \memTestEndOut[9]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\memTestEndOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(10),
	devoe => ww_devoe,
	o => \memTestEndOut[10]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\memTestEndOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(11),
	devoe => ww_devoe,
	o => \memTestEndOut[11]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\memTestEndOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(12),
	devoe => ww_devoe,
	o => \memTestEndOut[12]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\memTestEndOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(13),
	devoe => ww_devoe,
	o => \memTestEndOut[13]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\memTestEndOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(14),
	devoe => ww_devoe,
	o => \memTestEndOut[14]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\memTestEndOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(15),
	devoe => ww_devoe,
	o => \memTestEndOut[15]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\memTestEndOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(16),
	devoe => ww_devoe,
	o => \memTestEndOut[16]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\memTestEndOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(17),
	devoe => ww_devoe,
	o => \memTestEndOut[17]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\memTestEndOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(18),
	devoe => ww_devoe,
	o => \memTestEndOut[18]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\memTestEndOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(19),
	devoe => ww_devoe,
	o => \memTestEndOut[19]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\memTestEndOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(20),
	devoe => ww_devoe,
	o => \memTestEndOut[20]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\memTestEndOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(21),
	devoe => ww_devoe,
	o => \memTestEndOut[21]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\memTestEndOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(22),
	devoe => ww_devoe,
	o => \memTestEndOut[22]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\memTestEndOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(23),
	devoe => ww_devoe,
	o => \memTestEndOut[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\memTestEndOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(24),
	devoe => ww_devoe,
	o => \memTestEndOut[24]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\memTestEndOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(25),
	devoe => ww_devoe,
	o => \memTestEndOut[25]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\memTestEndOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(26),
	devoe => ww_devoe,
	o => \memTestEndOut[26]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\memTestEndOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(27),
	devoe => ww_devoe,
	o => \memTestEndOut[27]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\memTestEndOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(28),
	devoe => ww_devoe,
	o => \memTestEndOut[28]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\memTestEndOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(29),
	devoe => ww_devoe,
	o => \memTestEndOut[29]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\memTestEndOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => memTemp(30),
	devoe => ww_devoe,
	o => \memTestEndOut[30]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\memTestEndOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestEndOut[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N22
\key[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: CLKCTRL_G3
\key[3]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key[3]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key[3]~inputclkctrl_outclk\);

-- Location: LCCOMB_X62_Y18_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = regTemp(0) $ (VCC)
-- \Add0~1\ = CARRY(regTemp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regTemp(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X62_Y18_N6
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (regTemp(2) & (\Add0~3\ $ (GND))) # (!regTemp(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((regTemp(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X62_Y18_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (regTemp(3) & (!\Add0~5\)) # (!regTemp(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!regTemp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X63_Y18_N30
\regTemp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regTemp~0_combout\ = (\Add0~6_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \Equal0~9_combout\,
	combout => \regTemp~0_combout\);

-- Location: FF_X62_Y18_N9
\regTemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	asdata => \regTemp~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(3));

-- Location: LCCOMB_X62_Y18_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (regTemp(4) & (\Add0~7\ $ (GND))) # (!regTemp(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((regTemp(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X62_Y18_N11
\regTemp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(4));

-- Location: LCCOMB_X62_Y18_N12
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (regTemp(5) & (!\Add0~9\)) # (!regTemp(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!regTemp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X62_Y18_N13
\regTemp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(5));

-- Location: LCCOMB_X62_Y18_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (regTemp(6) & (\Add0~11\ $ (GND))) # (!regTemp(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((regTemp(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X62_Y18_N15
\regTemp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(6));

-- Location: LCCOMB_X62_Y18_N16
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (regTemp(7) & (!\Add0~13\)) # (!regTemp(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!regTemp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X62_Y18_N17
\regTemp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(7));

-- Location: LCCOMB_X62_Y18_N18
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (regTemp(8) & (\Add0~15\ $ (GND))) # (!regTemp(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((regTemp(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X62_Y18_N19
\regTemp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(8));

-- Location: LCCOMB_X62_Y18_N20
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (regTemp(9) & (!\Add0~17\)) # (!regTemp(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!regTemp(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X62_Y18_N21
\regTemp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(9));

-- Location: LCCOMB_X62_Y18_N22
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (regTemp(10) & (\Add0~19\ $ (GND))) # (!regTemp(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((regTemp(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X62_Y18_N23
\regTemp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(10));

-- Location: LCCOMB_X62_Y18_N24
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (regTemp(11) & (!\Add0~21\)) # (!regTemp(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!regTemp(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X62_Y18_N25
\regTemp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(11));

-- Location: LCCOMB_X62_Y18_N26
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (regTemp(12) & (\Add0~23\ $ (GND))) # (!regTemp(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((regTemp(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X62_Y18_N27
\regTemp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(12));

-- Location: LCCOMB_X62_Y18_N28
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (regTemp(13) & (!\Add0~25\)) # (!regTemp(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!regTemp(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X62_Y18_N29
\regTemp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(13));

-- Location: LCCOMB_X62_Y18_N30
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (regTemp(14) & (\Add0~27\ $ (GND))) # (!regTemp(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((regTemp(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X62_Y18_N31
\regTemp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(14));

-- Location: LCCOMB_X62_Y17_N0
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (regTemp(15) & (!\Add0~29\)) # (!regTemp(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!regTemp(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X62_Y17_N1
\regTemp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(15));

-- Location: LCCOMB_X62_Y17_N2
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (regTemp(16) & (\Add0~31\ $ (GND))) # (!regTemp(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((regTemp(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X62_Y17_N3
\regTemp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(16));

-- Location: LCCOMB_X63_Y18_N22
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!regTemp(13) & (!regTemp(14) & (!regTemp(15) & !regTemp(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(13),
	datab => regTemp(14),
	datac => regTemp(15),
	datad => regTemp(16),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X63_Y18_N4
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!regTemp(10) & (!regTemp(11) & (!regTemp(12) & !regTemp(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(10),
	datab => regTemp(11),
	datac => regTemp(12),
	datad => regTemp(9),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X62_Y18_N0
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!regTemp(5) & (!regTemp(7) & (!regTemp(6) & !regTemp(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(5),
	datab => regTemp(7),
	datac => regTemp(6),
	datad => regTemp(8),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X63_Y18_N26
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!regTemp(0) & (regTemp(1) & (\Equal0~7_combout\ & !regTemp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(0),
	datab => regTemp(1),
	datac => \Equal0~7_combout\,
	datad => regTemp(4),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X62_Y17_N4
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (regTemp(17) & (!\Add0~33\)) # (!regTemp(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!regTemp(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X62_Y17_N5
\regTemp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(17));

-- Location: LCCOMB_X62_Y17_N6
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (regTemp(18) & (\Add0~35\ $ (GND))) # (!regTemp(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((regTemp(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X62_Y17_N7
\regTemp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(18));

-- Location: LCCOMB_X62_Y17_N8
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (regTemp(19) & (!\Add0~37\)) # (!regTemp(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!regTemp(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X62_Y17_N9
\regTemp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(19));

-- Location: LCCOMB_X62_Y17_N10
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (regTemp(20) & (\Add0~39\ $ (GND))) # (!regTemp(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((regTemp(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X62_Y17_N11
\regTemp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(20));

-- Location: LCCOMB_X62_Y17_N12
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (regTemp(21) & (!\Add0~41\)) # (!regTemp(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!regTemp(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X62_Y17_N13
\regTemp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(21));

-- Location: LCCOMB_X62_Y17_N14
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (regTemp(22) & (\Add0~43\ $ (GND))) # (!regTemp(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((regTemp(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X62_Y17_N15
\regTemp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(22));

-- Location: LCCOMB_X62_Y17_N16
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (regTemp(23) & (!\Add0~45\)) # (!regTemp(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!regTemp(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X62_Y17_N17
\regTemp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(23));

-- Location: LCCOMB_X62_Y17_N18
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (regTemp(24) & (\Add0~47\ $ (GND))) # (!regTemp(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((regTemp(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X62_Y17_N19
\regTemp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(24));

-- Location: LCCOMB_X63_Y18_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!regTemp(21) & (!regTemp(24) & (!regTemp(23) & !regTemp(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(21),
	datab => regTemp(24),
	datac => regTemp(23),
	datad => regTemp(22),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X62_Y17_N20
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (regTemp(25) & (!\Add0~49\)) # (!regTemp(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!regTemp(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X62_Y17_N21
\regTemp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(25));

-- Location: LCCOMB_X62_Y17_N22
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (regTemp(26) & (\Add0~51\ $ (GND))) # (!regTemp(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((regTemp(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X62_Y17_N23
\regTemp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(26));

-- Location: LCCOMB_X62_Y17_N24
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (regTemp(27) & (!\Add0~53\)) # (!regTemp(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!regTemp(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X62_Y17_N25
\regTemp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(27));

-- Location: LCCOMB_X62_Y17_N26
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (regTemp(28) & (\Add0~55\ $ (GND))) # (!regTemp(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((regTemp(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X62_Y17_N27
\regTemp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(28));

-- Location: LCCOMB_X62_Y17_N28
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (regTemp(29) & (!\Add0~57\)) # (!regTemp(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!regTemp(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X62_Y17_N29
\regTemp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(29));

-- Location: LCCOMB_X62_Y17_N30
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = regTemp(30) $ (!\Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(30),
	cin => \Add0~59\,
	combout => \Add0~60_combout\);

-- Location: FF_X62_Y17_N31
\regTemp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(30));

-- Location: LCCOMB_X63_Y18_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!regTemp(2) & (!regTemp(29) & (regTemp(3) & !regTemp(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(2),
	datab => regTemp(29),
	datac => regTemp(3),
	datad => regTemp(30),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X63_Y18_N14
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!regTemp(25) & (!regTemp(27) & (!regTemp(28) & !regTemp(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(25),
	datab => regTemp(27),
	datac => regTemp(28),
	datad => regTemp(26),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X63_Y18_N18
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!regTemp(18) & (!regTemp(19) & (!regTemp(20) & !regTemp(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(18),
	datab => regTemp(19),
	datac => regTemp(20),
	datad => regTemp(17),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X63_Y18_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X63_Y18_N24
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X63_Y18_N20
\regTemp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regTemp~1_combout\ = (\Add0~0_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \regTemp~1_combout\);

-- Location: FF_X62_Y18_N3
\regTemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	asdata => \regTemp~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(0));

-- Location: LCCOMB_X62_Y18_N4
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (regTemp(1) & (!\Add0~1\)) # (!regTemp(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!regTemp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regTemp(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X63_Y18_N10
\regTemp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regTemp~2_combout\ = (\Add0~2_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal0~9_combout\,
	combout => \regTemp~2_combout\);

-- Location: FF_X62_Y18_N5
\regTemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	asdata => \regTemp~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(1));

-- Location: FF_X62_Y18_N7
\regTemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[3]~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regTemp(2));

-- Location: IOIBUF_X0_Y36_N8
\key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: CLKCTRL_G2
\key[0]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key[0]~inputclkctrl_outclk\);

-- Location: LCCOMB_X61_Y21_N12
\FD|PC|DOUT[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[0]~4_combout\ = \FD|PC|DOUT\(0) $ (VCC)
-- \FD|PC|DOUT[0]~5\ = CARRY(\FD|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|DOUT\(0),
	datad => VCC,
	combout => \FD|PC|DOUT[0]~4_combout\,
	cout => \FD|PC|DOUT[0]~5\);

-- Location: FF_X61_Y21_N13
\FD|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(0));

-- Location: LCCOMB_X61_Y21_N14
\FD|PC|DOUT[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[1]~6_combout\ = (\FD|PC|DOUT\(1) & (!\FD|PC|DOUT[0]~5\)) # (!\FD|PC|DOUT\(1) & ((\FD|PC|DOUT[0]~5\) # (GND)))
-- \FD|PC|DOUT[1]~7\ = CARRY((!\FD|PC|DOUT[0]~5\) # (!\FD|PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(1),
	datad => VCC,
	cin => \FD|PC|DOUT[0]~5\,
	combout => \FD|PC|DOUT[1]~6_combout\,
	cout => \FD|PC|DOUT[1]~7\);

-- Location: FF_X61_Y21_N15
\FD|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(1));

-- Location: LCCOMB_X61_Y21_N16
\FD|PC|DOUT[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[2]~8_combout\ = (\FD|PC|DOUT\(2) & (\FD|PC|DOUT[1]~7\ $ (GND))) # (!\FD|PC|DOUT\(2) & (!\FD|PC|DOUT[1]~7\ & VCC))
-- \FD|PC|DOUT[2]~9\ = CARRY((\FD|PC|DOUT\(2) & !\FD|PC|DOUT[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datad => VCC,
	cin => \FD|PC|DOUT[1]~7\,
	combout => \FD|PC|DOUT[2]~8_combout\,
	cout => \FD|PC|DOUT[2]~9\);

-- Location: FF_X61_Y21_N17
\FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(2));

-- Location: LCCOMB_X61_Y21_N18
\FD|PC|DOUT[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|DOUT[3]~10_combout\ = \FD|PC|DOUT[2]~9\ $ (\FD|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|DOUT\(3),
	cin => \FD|PC|DOUT[2]~9\,
	combout => \FD|PC|DOUT[3]~10_combout\);

-- Location: FF_X61_Y21_N19
\FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|PC|DOUT[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(3));

-- Location: LCCOMB_X61_Y21_N8
\FD|UCULA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Mux7~0_combout\ = (\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(3) & ((\FD|PC|DOUT\(0)) # (\FD|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|PC|DOUT\(2),
	datac => \FD|PC|DOUT\(1),
	datad => \FD|PC|DOUT\(3),
	combout => \FD|UCULA|Mux7~0_combout\);

-- Location: LCCOMB_X63_Y22_N16
\FD|UCULA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Mux6~0_combout\ = (\FD|PC|DOUT\(0)) # ((\FD|PC|DOUT\(1)) # ((\FD|PC|DOUT\(2)) # (!\FD|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|PC|DOUT\(1),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|UCULA|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y21_N22
\FD|InstMem|ram~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|InstMem|ram~549_combout\ = (!\FD|PC|DOUT\(0) & (!\FD|PC|DOUT\(3) & (!\FD|PC|DOUT\(1) & !\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|PC|DOUT\(3),
	datac => \FD|PC|DOUT\(1),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|InstMem|ram~549_combout\);

-- Location: LCCOMB_X61_Y21_N4
\FD|UCULA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Mux5~0_combout\ = (\FD|PC|DOUT\(1) & (((\FD|PC|DOUT\(2) & !\FD|PC|DOUT\(3))))) # (!\FD|PC|DOUT\(1) & (\FD|PC|DOUT\(0) & (\FD|PC|DOUT\(2) $ (\FD|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|PC|DOUT\(2),
	datac => \FD|PC|DOUT\(1),
	datad => \FD|PC|DOUT\(3),
	combout => \FD|UCULA|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y21_N10
\FD|UCULA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Mux1~0_combout\ = (\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(3) & ((\FD|PC|DOUT\(0)) # (\FD|PC|DOUT\(1))))) # (!\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(1) & (\FD|PC|DOUT\(0) $ (!\FD|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|PC|DOUT\(2),
	datac => \FD|PC|DOUT\(1),
	datad => \FD|PC|DOUT\(3),
	combout => \FD|UCULA|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y21_N20
\FD|ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~0_combout\ = (\FD|InstMem|ram~549_combout\) # (\FD|BancoReg|ram[0][0]~q\ $ (\FD|UCULA|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][0]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|UCULA|Mux1~0_combout\,
	combout => \FD|ULA|Add1~0_combout\);

-- Location: LCCOMB_X60_Y23_N0
\FD|ULA|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~1_combout\ = (\FD|UCULA|Mux5~0_combout\ & (\FD|ULA|Add1~0_combout\ $ (VCC))) # (!\FD|UCULA|Mux5~0_combout\ & (\FD|ULA|Add1~0_combout\ & VCC))
-- \FD|ULA|Add1~2\ = CARRY((\FD|UCULA|Mux5~0_combout\ & \FD|ULA|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|ULA|Add1~0_combout\,
	datad => VCC,
	combout => \FD|ULA|Add1~1_combout\,
	cout => \FD|ULA|Add1~2\);

-- Location: LCCOMB_X61_Y21_N30
\FD|UCULA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Mux3~0_combout\ = (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT\(2) $ (((!\FD|PC|DOUT\(0) & !\FD|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|PC|DOUT\(2),
	datac => \FD|PC|DOUT\(1),
	datad => \FD|PC|DOUT\(3),
	combout => \FD|UCULA|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y21_N28
\FD|ULA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~0_combout\ = (!\FD|InstMem|ram~549_combout\ & (\FD|UCULA|Mux3~0_combout\ $ (\FD|BancoReg|ram[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datac => \FD|UCULA|Mux3~0_combout\,
	datad => \FD|BancoReg|ram[0][0]~q\,
	combout => \FD|ULA|Add0~0_combout\);

-- Location: LCCOMB_X62_Y21_N0
\FD|ULA|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~1_combout\ = (\FD|UCULA|Mux7~0_combout\ & (\FD|ULA|Add0~0_combout\ $ (VCC))) # (!\FD|UCULA|Mux7~0_combout\ & (\FD|ULA|Add0~0_combout\ & VCC))
-- \FD|ULA|Add0~2\ = CARRY((\FD|UCULA|Mux7~0_combout\ & \FD|ULA|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|ULA|Add0~0_combout\,
	datad => VCC,
	combout => \FD|ULA|Add0~1_combout\,
	cout => \FD|ULA|Add0~2\);

-- Location: LCCOMB_X61_Y23_N0
\FD|ULA|tempAdd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[0]~0_combout\ = (\FD|ULA|Add1~1_combout\ & (\FD|ULA|Add0~1_combout\ $ (VCC))) # (!\FD|ULA|Add1~1_combout\ & (\FD|ULA|Add0~1_combout\ & VCC))
-- \FD|ULA|tempAdd[0]~1\ = CARRY((\FD|ULA|Add1~1_combout\ & \FD|ULA|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~1_combout\,
	datab => \FD|ULA|Add0~1_combout\,
	datad => VCC,
	combout => \FD|ULA|tempAdd[0]~0_combout\,
	cout => \FD|ULA|tempAdd[0]~1\);

-- Location: LCCOMB_X62_Y23_N6
\FD|MemDados|ram~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MemDados|ram~550_combout\ = (\FD|UCULA|Mux7~0_combout\ & (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~1_combout\) # (\FD|ULA|Add1~1_combout\)))) # (!\FD|UCULA|Mux7~0_combout\ & ((\FD|UCULA|Mux6~0_combout\) # ((\FD|ULA|Add0~1_combout\ & 
-- \FD|ULA|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add0~1_combout\,
	datad => \FD|ULA|Add1~1_combout\,
	combout => \FD|MemDados|ram~550_combout\);

-- Location: LCCOMB_X59_Y23_N0
\FD|muxRtImm|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[2]~0_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][2]~q\,
	combout => \FD|muxRtImm|C[2]~0_combout\);

-- Location: LCCOMB_X60_Y23_N2
\FD|ULA|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~3_combout\ = (\FD|ULA|Add1~2\ & (\FD|BancoReg|Mux30~0_combout\ $ ((!\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~2\ & ((\FD|BancoReg|Mux30~0_combout\ $ (\FD|UCULA|Mux5~0_combout\)) # (GND)))
-- \FD|ULA|Add1~4\ = CARRY((\FD|BancoReg|Mux30~0_combout\ $ (!\FD|UCULA|Mux5~0_combout\)) # (!\FD|ULA|Add1~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|Mux30~0_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~2\,
	combout => \FD|ULA|Add1~3_combout\,
	cout => \FD|ULA|Add1~4\);

-- Location: LCCOMB_X60_Y23_N4
\FD|ULA|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~5_combout\ = (\FD|ULA|Add1~4\ & ((\FD|muxRtImm|C[2]~0_combout\ $ (\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~4\ & (\FD|muxRtImm|C[2]~0_combout\ $ (\FD|UCULA|Mux5~0_combout\ $ (VCC))))
-- \FD|ULA|Add1~6\ = CARRY((!\FD|ULA|Add1~4\ & (\FD|muxRtImm|C[2]~0_combout\ $ (\FD|UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[2]~0_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~4\,
	combout => \FD|ULA|Add1~5_combout\,
	cout => \FD|ULA|Add1~6\);

-- Location: LCCOMB_X60_Y23_N6
\FD|ULA|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~7_combout\ = (\FD|ULA|Add1~6\ & (\FD|BancoReg|Mux28~0_combout\ $ ((!\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~6\ & ((\FD|BancoReg|Mux28~0_combout\ $ (\FD|UCULA|Mux5~0_combout\)) # (GND)))
-- \FD|ULA|Add1~8\ = CARRY((\FD|BancoReg|Mux28~0_combout\ $ (!\FD|UCULA|Mux5~0_combout\)) # (!\FD|ULA|Add1~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|Mux28~0_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~6\,
	combout => \FD|ULA|Add1~7_combout\,
	cout => \FD|ULA|Add1~8\);

-- Location: LCCOMB_X62_Y21_N2
\FD|ULA|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~3_combout\ = (\FD|ULA|Add0~2\ & (\FD|BancoReg|Mux30~0_combout\ $ ((!\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~2\ & ((\FD|BancoReg|Mux30~0_combout\ $ (\FD|UCULA|Mux7~0_combout\)) # (GND)))
-- \FD|ULA|Add0~4\ = CARRY((\FD|BancoReg|Mux30~0_combout\ $ (!\FD|UCULA|Mux7~0_combout\)) # (!\FD|ULA|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|Mux30~0_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~2\,
	combout => \FD|ULA|Add0~3_combout\,
	cout => \FD|ULA|Add0~4\);

-- Location: LCCOMB_X62_Y21_N4
\FD|ULA|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~5_combout\ = (\FD|ULA|Add0~4\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|BancoReg|Mux29~0_combout\)))) # (!\FD|ULA|Add0~4\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|BancoReg|Mux29~0_combout\ $ (VCC))))
-- \FD|ULA|Add0~6\ = CARRY((!\FD|ULA|Add0~4\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|BancoReg|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|BancoReg|Mux29~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~4\,
	combout => \FD|ULA|Add0~5_combout\,
	cout => \FD|ULA|Add0~6\);

-- Location: LCCOMB_X62_Y21_N6
\FD|ULA|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~7_combout\ = (\FD|ULA|Add0~6\ & (\FD|UCULA|Mux7~0_combout\ $ ((!\FD|BancoReg|Mux28~0_combout\)))) # (!\FD|ULA|Add0~6\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|BancoReg|Mux28~0_combout\)) # (GND)))
-- \FD|ULA|Add0~8\ = CARRY((\FD|UCULA|Mux7~0_combout\ $ (!\FD|BancoReg|Mux28~0_combout\)) # (!\FD|ULA|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|BancoReg|Mux28~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~6\,
	combout => \FD|ULA|Add0~7_combout\,
	cout => \FD|ULA|Add0~8\);

-- Location: LCCOMB_X61_Y23_N2
\FD|ULA|tempAdd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[1]~2_combout\ = (\FD|ULA|Add1~3_combout\ & ((\FD|ULA|Add0~3_combout\ & (\FD|ULA|tempAdd[0]~1\ & VCC)) # (!\FD|ULA|Add0~3_combout\ & (!\FD|ULA|tempAdd[0]~1\)))) # (!\FD|ULA|Add1~3_combout\ & ((\FD|ULA|Add0~3_combout\ & 
-- (!\FD|ULA|tempAdd[0]~1\)) # (!\FD|ULA|Add0~3_combout\ & ((\FD|ULA|tempAdd[0]~1\) # (GND)))))
-- \FD|ULA|tempAdd[1]~3\ = CARRY((\FD|ULA|Add1~3_combout\ & (!\FD|ULA|Add0~3_combout\ & !\FD|ULA|tempAdd[0]~1\)) # (!\FD|ULA|Add1~3_combout\ & ((!\FD|ULA|tempAdd[0]~1\) # (!\FD|ULA|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~3_combout\,
	datab => \FD|ULA|Add0~3_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[0]~1\,
	combout => \FD|ULA|tempAdd[1]~2_combout\,
	cout => \FD|ULA|tempAdd[1]~3\);

-- Location: LCCOMB_X61_Y23_N4
\FD|ULA|tempAdd[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[2]~4_combout\ = ((\FD|ULA|Add0~5_combout\ $ (\FD|ULA|Add1~5_combout\ $ (!\FD|ULA|tempAdd[1]~3\)))) # (GND)
-- \FD|ULA|tempAdd[2]~5\ = CARRY((\FD|ULA|Add0~5_combout\ & ((\FD|ULA|Add1~5_combout\) # (!\FD|ULA|tempAdd[1]~3\))) # (!\FD|ULA|Add0~5_combout\ & (\FD|ULA|Add1~5_combout\ & !\FD|ULA|tempAdd[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~5_combout\,
	datab => \FD|ULA|Add1~5_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[1]~3\,
	combout => \FD|ULA|tempAdd[2]~4_combout\,
	cout => \FD|ULA|tempAdd[2]~5\);

-- Location: LCCOMB_X61_Y23_N6
\FD|ULA|tempAdd[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[3]~6_combout\ = (\FD|ULA|Add1~7_combout\ & ((\FD|ULA|Add0~7_combout\ & (\FD|ULA|tempAdd[2]~5\ & VCC)) # (!\FD|ULA|Add0~7_combout\ & (!\FD|ULA|tempAdd[2]~5\)))) # (!\FD|ULA|Add1~7_combout\ & ((\FD|ULA|Add0~7_combout\ & 
-- (!\FD|ULA|tempAdd[2]~5\)) # (!\FD|ULA|Add0~7_combout\ & ((\FD|ULA|tempAdd[2]~5\) # (GND)))))
-- \FD|ULA|tempAdd[3]~7\ = CARRY((\FD|ULA|Add1~7_combout\ & (!\FD|ULA|Add0~7_combout\ & !\FD|ULA|tempAdd[2]~5\)) # (!\FD|ULA|Add1~7_combout\ & ((!\FD|ULA|tempAdd[2]~5\) # (!\FD|ULA|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~7_combout\,
	datab => \FD|ULA|Add0~7_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[2]~5\,
	combout => \FD|ULA|tempAdd[3]~6_combout\,
	cout => \FD|ULA|tempAdd[3]~7\);

-- Location: LCCOMB_X62_Y23_N18
\FD|ULA|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~0_combout\ = (!\FD|UCULA|Mux6~0_combout\ & ((\FD|UCULA|Mux7~0_combout\ & ((\FD|ULA|Add1~7_combout\) # (\FD|ULA|Add0~7_combout\))) # (!\FD|UCULA|Mux7~0_combout\ & (\FD|ULA|Add1~7_combout\ & \FD|ULA|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add1~7_combout\,
	datad => \FD|ULA|Add0~7_combout\,
	combout => \FD|ULA|Mux28~0_combout\);

-- Location: LCCOMB_X62_Y23_N12
\FD|ULA|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~1_combout\ = (\FD|ULA|Mux28~0_combout\) # ((!\FD|UCULA|Mux7~0_combout\ & (\FD|UCULA|Mux6~0_combout\ & \FD|ULA|tempAdd[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|tempAdd[3]~6_combout\,
	datad => \FD|ULA|Mux28~0_combout\,
	combout => \FD|ULA|Mux28~1_combout\);

-- Location: LCCOMB_X62_Y23_N30
\FD|MuxULAMem|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[3]~0_combout\ = (!\FD|ULA|Mux28~1_combout\ & (\FD|InstMem|ram~549_combout\ & (\FD|ULA|Mux30~1_combout\ & \FD|ULA|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~1_combout\,
	datab => \FD|InstMem|ram~549_combout\,
	datac => \FD|ULA|Mux30~1_combout\,
	datad => \FD|ULA|Mux29~1_combout\,
	combout => \FD|MuxULAMem|C[3]~0_combout\);

-- Location: LCCOMB_X62_Y22_N0
\FD|MuxULAMem|C[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[3]~5_combout\ = (!\FD|ULA|Mux28~1_combout\ & (\FD|InstMem|ram~549_combout\ & (\FD|ULA|Mux29~1_combout\ & \FD|MemDados|ram~551_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~1_combout\,
	datab => \FD|InstMem|ram~549_combout\,
	datac => \FD|ULA|Mux29~1_combout\,
	datad => \FD|MemDados|ram~551_combout\,
	combout => \FD|MuxULAMem|C[3]~5_combout\);

-- Location: LCCOMB_X62_Y22_N14
\FD|MuxULAMem|C[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[3]~6_combout\ = (\FD|MuxULAMem|C[3]~0_combout\) # ((\FD|MuxULAMem|C[3]~5_combout\) # ((\FD|ULA|Mux28~1_combout\ & !\FD|InstMem|ram~549_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~1_combout\,
	datab => \FD|InstMem|ram~549_combout\,
	datac => \FD|MuxULAMem|C[3]~0_combout\,
	datad => \FD|MuxULAMem|C[3]~5_combout\,
	combout => \FD|MuxULAMem|C[3]~6_combout\);

-- Location: LCCOMB_X63_Y22_N26
\FD|BancoReg|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Decoder0~1_combout\ = (\FD|PC|DOUT\(0)) # ((\FD|PC|DOUT\(1)) # ((\FD|PC|DOUT\(3)) # (\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|PC|DOUT\(1),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|BancoReg|Decoder0~1_combout\);

-- Location: FF_X62_Y23_N21
\FD|BancoReg|ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C[3]~6_combout\,
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][3]~q\);

-- Location: LCCOMB_X62_Y23_N22
\FD|BancoReg|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux28~0_combout\ = (\FD|BancoReg|ram[0][3]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][3]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux28~0_combout\);

-- Location: LCCOMB_X62_Y21_N8
\FD|ULA|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~9_combout\ = (\FD|ULA|Add0~8\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[4]~28_combout\)))) # (!\FD|ULA|Add0~8\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[4]~28_combout\ $ (VCC))))
-- \FD|ULA|Add0~10\ = CARRY((!\FD|ULA|Add0~8\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[4]~28_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~8\,
	combout => \FD|ULA|Add0~9_combout\,
	cout => \FD|ULA|Add0~10\);

-- Location: LCCOMB_X60_Y23_N8
\FD|ULA|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~9_combout\ = (\FD|ULA|Add1~8\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[4]~28_combout\)))) # (!\FD|ULA|Add1~8\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[4]~28_combout\ $ (VCC))))
-- \FD|ULA|Add1~10\ = CARRY((!\FD|ULA|Add1~8\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[4]~28_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~8\,
	combout => \FD|ULA|Add1~9_combout\,
	cout => \FD|ULA|Add1~10\);

-- Location: LCCOMB_X61_Y23_N8
\FD|ULA|tempAdd[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[4]~8_combout\ = ((\FD|ULA|Add0~9_combout\ $ (\FD|ULA|Add1~9_combout\ $ (!\FD|ULA|tempAdd[3]~7\)))) # (GND)
-- \FD|ULA|tempAdd[4]~9\ = CARRY((\FD|ULA|Add0~9_combout\ & ((\FD|ULA|Add1~9_combout\) # (!\FD|ULA|tempAdd[3]~7\))) # (!\FD|ULA|Add0~9_combout\ & (\FD|ULA|Add1~9_combout\ & !\FD|ULA|tempAdd[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~9_combout\,
	datab => \FD|ULA|Add1~9_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[3]~7\,
	combout => \FD|ULA|tempAdd[4]~8_combout\,
	cout => \FD|ULA|tempAdd[4]~9\);

-- Location: LCCOMB_X63_Y21_N30
\FD|InstMem|ram~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|InstMem|ram~550_combout\ = (!\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(1) & !\FD|PC|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(2),
	datab => \FD|PC|DOUT\(1),
	datad => \FD|PC|DOUT\(0),
	combout => \FD|InstMem|ram~550_combout\);

-- Location: LCCOMB_X60_Y21_N6
\FD|MuxULAMem|C[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[4]~7_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & ((\FD|PC|DOUT\(3)))) # (!\FD|InstMem|ram~550_combout\ & (\FD|ULA|tempAdd[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|tempAdd[4]~8_combout\,
	datab => \FD|InstMem|ram~550_combout\,
	datac => \FD|UCULA|Mux3~0_combout\,
	datad => \FD|PC|DOUT\(3),
	combout => \FD|MuxULAMem|C[4]~7_combout\);

-- Location: LCCOMB_X60_Y21_N18
\FD|MuxULAMem|C[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(4) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[4]~7_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~9_combout\ & ((\FD|ULA|Add1~9_combout\) # (!\FD|MuxULAMem|C[4]~7_combout\))) # (!\FD|ULA|Add0~9_combout\ & 
-- (\FD|ULA|Add1~9_combout\ & !\FD|MuxULAMem|C[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~9_combout\,
	datac => \FD|ULA|Add1~9_combout\,
	datad => \FD|MuxULAMem|C[4]~7_combout\,
	combout => \FD|MuxULAMem|C\(4));

-- Location: FF_X60_Y21_N19
\FD|BancoReg|ram[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(4),
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][4]~q\);

-- Location: LCCOMB_X60_Y21_N4
\FD|muxRtImm|C[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[4]~28_combout\ = (\FD|BancoReg|ram[0][4]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][4]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[4]~28_combout\);

-- Location: LCCOMB_X62_Y21_N10
\FD|ULA|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~11_combout\ = (\FD|ULA|Add0~10\ & (\FD|UCULA|Mux7~0_combout\ $ ((!\FD|muxRtImm|C[5]~27_combout\)))) # (!\FD|ULA|Add0~10\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[5]~27_combout\)) # (GND)))
-- \FD|ULA|Add0~12\ = CARRY((\FD|UCULA|Mux7~0_combout\ $ (!\FD|muxRtImm|C[5]~27_combout\)) # (!\FD|ULA|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[5]~27_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~10\,
	combout => \FD|ULA|Add0~11_combout\,
	cout => \FD|ULA|Add0~12\);

-- Location: LCCOMB_X60_Y23_N10
\FD|ULA|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~11_combout\ = (\FD|ULA|Add1~10\ & (\FD|muxRtImm|C[5]~27_combout\ $ ((!\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~10\ & ((\FD|muxRtImm|C[5]~27_combout\ $ (\FD|UCULA|Mux5~0_combout\)) # (GND)))
-- \FD|ULA|Add1~12\ = CARRY((\FD|muxRtImm|C[5]~27_combout\ $ (!\FD|UCULA|Mux5~0_combout\)) # (!\FD|ULA|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[5]~27_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~10\,
	combout => \FD|ULA|Add1~11_combout\,
	cout => \FD|ULA|Add1~12\);

-- Location: LCCOMB_X61_Y23_N10
\FD|ULA|tempAdd[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[5]~10_combout\ = (\FD|ULA|Add1~11_combout\ & ((\FD|ULA|Add0~11_combout\ & (\FD|ULA|tempAdd[4]~9\ & VCC)) # (!\FD|ULA|Add0~11_combout\ & (!\FD|ULA|tempAdd[4]~9\)))) # (!\FD|ULA|Add1~11_combout\ & ((\FD|ULA|Add0~11_combout\ & 
-- (!\FD|ULA|tempAdd[4]~9\)) # (!\FD|ULA|Add0~11_combout\ & ((\FD|ULA|tempAdd[4]~9\) # (GND)))))
-- \FD|ULA|tempAdd[5]~11\ = CARRY((\FD|ULA|Add1~11_combout\ & (!\FD|ULA|Add0~11_combout\ & !\FD|ULA|tempAdd[4]~9\)) # (!\FD|ULA|Add1~11_combout\ & ((!\FD|ULA|tempAdd[4]~9\) # (!\FD|ULA|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~11_combout\,
	datab => \FD|ULA|Add0~11_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[4]~9\,
	combout => \FD|ULA|tempAdd[5]~10_combout\,
	cout => \FD|ULA|tempAdd[5]~11\);

-- Location: LCCOMB_X61_Y24_N28
\FD|MuxULAMem|C[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[5]~8_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|ULA|tempAdd[5]~10_combout\,
	datad => \FD|InstMem|ram~550_combout\,
	combout => \FD|MuxULAMem|C[5]~8_combout\);

-- Location: LCCOMB_X61_Y24_N18
\FD|MuxULAMem|C[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(5) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[5]~8_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~11_combout\ & ((\FD|ULA|Add1~11_combout\) # (!\FD|MuxULAMem|C[5]~8_combout\))) # (!\FD|ULA|Add0~11_combout\ & 
-- (\FD|ULA|Add1~11_combout\ & !\FD|MuxULAMem|C[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~11_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add1~11_combout\,
	datad => \FD|MuxULAMem|C[5]~8_combout\,
	combout => \FD|MuxULAMem|C\(5));

-- Location: FF_X61_Y21_N25
\FD|BancoReg|ram[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(5),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][5]~q\);

-- Location: LCCOMB_X61_Y21_N6
\FD|muxRtImm|C[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[5]~27_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][5]~q\,
	combout => \FD|muxRtImm|C[5]~27_combout\);

-- Location: LCCOMB_X60_Y23_N12
\FD|ULA|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~13_combout\ = (\FD|ULA|Add1~12\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[6]~26_combout\)))) # (!\FD|ULA|Add1~12\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[6]~26_combout\ $ (VCC))))
-- \FD|ULA|Add1~14\ = CARRY((!\FD|ULA|Add1~12\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[6]~26_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~12\,
	combout => \FD|ULA|Add1~13_combout\,
	cout => \FD|ULA|Add1~14\);

-- Location: LCCOMB_X62_Y21_N12
\FD|ULA|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~13_combout\ = (\FD|ULA|Add0~12\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[6]~26_combout\)))) # (!\FD|ULA|Add0~12\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[6]~26_combout\ $ (VCC))))
-- \FD|ULA|Add0~14\ = CARRY((!\FD|ULA|Add0~12\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[6]~26_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~12\,
	combout => \FD|ULA|Add0~13_combout\,
	cout => \FD|ULA|Add0~14\);

-- Location: LCCOMB_X61_Y23_N12
\FD|ULA|tempAdd[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[6]~12_combout\ = ((\FD|ULA|Add1~13_combout\ $ (\FD|ULA|Add0~13_combout\ $ (!\FD|ULA|tempAdd[5]~11\)))) # (GND)
-- \FD|ULA|tempAdd[6]~13\ = CARRY((\FD|ULA|Add1~13_combout\ & ((\FD|ULA|Add0~13_combout\) # (!\FD|ULA|tempAdd[5]~11\))) # (!\FD|ULA|Add1~13_combout\ & (\FD|ULA|Add0~13_combout\ & !\FD|ULA|tempAdd[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~13_combout\,
	datab => \FD|ULA|Add0~13_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[5]~11\,
	combout => \FD|ULA|tempAdd[6]~12_combout\,
	cout => \FD|ULA|tempAdd[6]~13\);

-- Location: LCCOMB_X61_Y20_N28
\FD|MuxULAMem|C[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[6]~9_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & ((\FD|PC|DOUT\(3)))) # (!\FD|InstMem|ram~550_combout\ & (\FD|ULA|tempAdd[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|InstMem|ram~550_combout\,
	datac => \FD|ULA|tempAdd[6]~12_combout\,
	datad => \FD|PC|DOUT\(3),
	combout => \FD|MuxULAMem|C[6]~9_combout\);

-- Location: LCCOMB_X61_Y20_N30
\FD|MuxULAMem|C[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(6) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[6]~9_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add1~13_combout\ & ((\FD|ULA|Add0~13_combout\) # (!\FD|MuxULAMem|C[6]~9_combout\))) # (!\FD|ULA|Add1~13_combout\ & 
-- (\FD|ULA|Add0~13_combout\ & !\FD|MuxULAMem|C[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~13_combout\,
	datab => \FD|ULA|Add0~13_combout\,
	datac => \FD|UCULA|Mux6~0_combout\,
	datad => \FD|MuxULAMem|C[6]~9_combout\,
	combout => \FD|MuxULAMem|C\(6));

-- Location: FF_X61_Y20_N27
\FD|BancoReg|ram[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(6),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][6]~q\);

-- Location: LCCOMB_X61_Y20_N0
\FD|muxRtImm|C[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[6]~26_combout\ = (\FD|BancoReg|ram[0][6]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][6]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[6]~26_combout\);

-- Location: LCCOMB_X62_Y21_N14
\FD|ULA|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~15_combout\ = (\FD|ULA|Add0~14\ & (\FD|UCULA|Mux7~0_combout\ $ ((!\FD|muxRtImm|C[7]~25_combout\)))) # (!\FD|ULA|Add0~14\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[7]~25_combout\)) # (GND)))
-- \FD|ULA|Add0~16\ = CARRY((\FD|UCULA|Mux7~0_combout\ $ (!\FD|muxRtImm|C[7]~25_combout\)) # (!\FD|ULA|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[7]~25_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~14\,
	combout => \FD|ULA|Add0~15_combout\,
	cout => \FD|ULA|Add0~16\);

-- Location: LCCOMB_X60_Y23_N14
\FD|ULA|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~15_combout\ = (\FD|ULA|Add1~14\ & (\FD|UCULA|Mux5~0_combout\ $ ((!\FD|muxRtImm|C[7]~25_combout\)))) # (!\FD|ULA|Add1~14\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[7]~25_combout\)) # (GND)))
-- \FD|ULA|Add1~16\ = CARRY((\FD|UCULA|Mux5~0_combout\ $ (!\FD|muxRtImm|C[7]~25_combout\)) # (!\FD|ULA|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[7]~25_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~14\,
	combout => \FD|ULA|Add1~15_combout\,
	cout => \FD|ULA|Add1~16\);

-- Location: LCCOMB_X61_Y23_N14
\FD|ULA|tempAdd[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[7]~14_combout\ = (\FD|ULA|Add1~15_combout\ & ((\FD|ULA|Add0~15_combout\ & (\FD|ULA|tempAdd[6]~13\ & VCC)) # (!\FD|ULA|Add0~15_combout\ & (!\FD|ULA|tempAdd[6]~13\)))) # (!\FD|ULA|Add1~15_combout\ & ((\FD|ULA|Add0~15_combout\ & 
-- (!\FD|ULA|tempAdd[6]~13\)) # (!\FD|ULA|Add0~15_combout\ & ((\FD|ULA|tempAdd[6]~13\) # (GND)))))
-- \FD|ULA|tempAdd[7]~15\ = CARRY((\FD|ULA|Add1~15_combout\ & (!\FD|ULA|Add0~15_combout\ & !\FD|ULA|tempAdd[6]~13\)) # (!\FD|ULA|Add1~15_combout\ & ((!\FD|ULA|tempAdd[6]~13\) # (!\FD|ULA|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~15_combout\,
	datab => \FD|ULA|Add0~15_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[6]~13\,
	combout => \FD|ULA|tempAdd[7]~14_combout\,
	cout => \FD|ULA|tempAdd[7]~15\);

-- Location: LCCOMB_X59_Y21_N12
\FD|MuxULAMem|C[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[7]~10_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[7]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~550_combout\,
	datab => \FD|UCULA|Mux3~0_combout\,
	datac => \FD|PC|DOUT\(3),
	datad => \FD|ULA|tempAdd[7]~14_combout\,
	combout => \FD|MuxULAMem|C[7]~10_combout\);

-- Location: LCCOMB_X59_Y21_N18
\FD|MuxULAMem|C[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(7) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[7]~10_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~15_combout\ & ((\FD|ULA|Add1~15_combout\) # (!\FD|MuxULAMem|C[7]~10_combout\))) # (!\FD|ULA|Add0~15_combout\ & 
-- (\FD|ULA|Add1~15_combout\ & !\FD|MuxULAMem|C[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~15_combout\,
	datab => \FD|ULA|Add1~15_combout\,
	datac => \FD|UCULA|Mux6~0_combout\,
	datad => \FD|MuxULAMem|C[7]~10_combout\,
	combout => \FD|MuxULAMem|C\(7));

-- Location: LCCOMB_X59_Y21_N20
\FD|BancoReg|ram[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|ram[0][7]~feeder_combout\ = \FD|MuxULAMem|C\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MuxULAMem|C\(7),
	combout => \FD|BancoReg|ram[0][7]~feeder_combout\);

-- Location: FF_X59_Y21_N21
\FD|BancoReg|ram[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|BancoReg|ram[0][7]~feeder_combout\,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][7]~q\);

-- Location: LCCOMB_X59_Y21_N26
\FD|muxRtImm|C[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[7]~25_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][7]~q\,
	combout => \FD|muxRtImm|C[7]~25_combout\);

-- Location: LCCOMB_X62_Y21_N16
\FD|ULA|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~17_combout\ = (\FD|ULA|Add0~16\ & ((\FD|muxRtImm|C[8]~24_combout\ $ (\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~16\ & (\FD|muxRtImm|C[8]~24_combout\ $ (\FD|UCULA|Mux7~0_combout\ $ (VCC))))
-- \FD|ULA|Add0~18\ = CARRY((!\FD|ULA|Add0~16\ & (\FD|muxRtImm|C[8]~24_combout\ $ (\FD|UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[8]~24_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~16\,
	combout => \FD|ULA|Add0~17_combout\,
	cout => \FD|ULA|Add0~18\);

-- Location: LCCOMB_X60_Y23_N16
\FD|ULA|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~17_combout\ = (\FD|ULA|Add1~16\ & ((\FD|muxRtImm|C[8]~24_combout\ $ (\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~16\ & (\FD|muxRtImm|C[8]~24_combout\ $ (\FD|UCULA|Mux5~0_combout\ $ (VCC))))
-- \FD|ULA|Add1~18\ = CARRY((!\FD|ULA|Add1~16\ & (\FD|muxRtImm|C[8]~24_combout\ $ (\FD|UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[8]~24_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~16\,
	combout => \FD|ULA|Add1~17_combout\,
	cout => \FD|ULA|Add1~18\);

-- Location: LCCOMB_X61_Y23_N16
\FD|ULA|tempAdd[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[8]~16_combout\ = ((\FD|ULA|Add0~17_combout\ $ (\FD|ULA|Add1~17_combout\ $ (!\FD|ULA|tempAdd[7]~15\)))) # (GND)
-- \FD|ULA|tempAdd[8]~17\ = CARRY((\FD|ULA|Add0~17_combout\ & ((\FD|ULA|Add1~17_combout\) # (!\FD|ULA|tempAdd[7]~15\))) # (!\FD|ULA|Add0~17_combout\ & (\FD|ULA|Add1~17_combout\ & !\FD|ULA|tempAdd[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~17_combout\,
	datab => \FD|ULA|Add1~17_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[7]~15\,
	combout => \FD|ULA|tempAdd[8]~16_combout\,
	cout => \FD|ULA|tempAdd[8]~17\);

-- Location: LCCOMB_X59_Y21_N28
\FD|MuxULAMem|C[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[8]~11_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[8]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~550_combout\,
	datab => \FD|UCULA|Mux3~0_combout\,
	datac => \FD|PC|DOUT\(3),
	datad => \FD|ULA|tempAdd[8]~16_combout\,
	combout => \FD|MuxULAMem|C[8]~11_combout\);

-- Location: LCCOMB_X59_Y21_N30
\FD|MuxULAMem|C[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(8) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[8]~11_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~17_combout\ & ((\FD|ULA|Add1~17_combout\) # (!\FD|MuxULAMem|C[8]~11_combout\))) # (!\FD|ULA|Add0~17_combout\ & 
-- (\FD|ULA|Add1~17_combout\ & !\FD|MuxULAMem|C[8]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~17_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add1~17_combout\,
	datad => \FD|MuxULAMem|C[8]~11_combout\,
	combout => \FD|MuxULAMem|C\(8));

-- Location: FF_X59_Y21_N9
\FD|BancoReg|ram[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(8),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][8]~q\);

-- Location: LCCOMB_X59_Y21_N14
\FD|muxRtImm|C[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[8]~24_combout\ = (\FD|BancoReg|ram[0][8]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][8]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[8]~24_combout\);

-- Location: LCCOMB_X62_Y21_N18
\FD|ULA|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~19_combout\ = (\FD|ULA|Add0~18\ & (\FD|muxRtImm|C[9]~23_combout\ $ ((!\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~18\ & ((\FD|muxRtImm|C[9]~23_combout\ $ (\FD|UCULA|Mux7~0_combout\)) # (GND)))
-- \FD|ULA|Add0~20\ = CARRY((\FD|muxRtImm|C[9]~23_combout\ $ (!\FD|UCULA|Mux7~0_combout\)) # (!\FD|ULA|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[9]~23_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~18\,
	combout => \FD|ULA|Add0~19_combout\,
	cout => \FD|ULA|Add0~20\);

-- Location: LCCOMB_X60_Y23_N18
\FD|ULA|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~19_combout\ = (\FD|ULA|Add1~18\ & (\FD|muxRtImm|C[9]~23_combout\ $ ((!\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~18\ & ((\FD|muxRtImm|C[9]~23_combout\ $ (\FD|UCULA|Mux5~0_combout\)) # (GND)))
-- \FD|ULA|Add1~20\ = CARRY((\FD|muxRtImm|C[9]~23_combout\ $ (!\FD|UCULA|Mux5~0_combout\)) # (!\FD|ULA|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[9]~23_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~18\,
	combout => \FD|ULA|Add1~19_combout\,
	cout => \FD|ULA|Add1~20\);

-- Location: LCCOMB_X61_Y23_N18
\FD|ULA|tempAdd[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[9]~18_combout\ = (\FD|ULA|Add1~19_combout\ & ((\FD|ULA|Add0~19_combout\ & (\FD|ULA|tempAdd[8]~17\ & VCC)) # (!\FD|ULA|Add0~19_combout\ & (!\FD|ULA|tempAdd[8]~17\)))) # (!\FD|ULA|Add1~19_combout\ & ((\FD|ULA|Add0~19_combout\ & 
-- (!\FD|ULA|tempAdd[8]~17\)) # (!\FD|ULA|Add0~19_combout\ & ((\FD|ULA|tempAdd[8]~17\) # (GND)))))
-- \FD|ULA|tempAdd[9]~19\ = CARRY((\FD|ULA|Add1~19_combout\ & (!\FD|ULA|Add0~19_combout\ & !\FD|ULA|tempAdd[8]~17\)) # (!\FD|ULA|Add1~19_combout\ & ((!\FD|ULA|tempAdd[8]~17\) # (!\FD|ULA|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~19_combout\,
	datab => \FD|ULA|Add0~19_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[8]~17\,
	combout => \FD|ULA|tempAdd[9]~18_combout\,
	cout => \FD|ULA|tempAdd[9]~19\);

-- Location: LCCOMB_X60_Y21_N12
\FD|MuxULAMem|C[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[9]~12_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & ((\FD|PC|DOUT\(3)))) # (!\FD|InstMem|ram~550_combout\ & (\FD|ULA|tempAdd[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|tempAdd[9]~18_combout\,
	datab => \FD|InstMem|ram~550_combout\,
	datac => \FD|UCULA|Mux3~0_combout\,
	datad => \FD|PC|DOUT\(3),
	combout => \FD|MuxULAMem|C[9]~12_combout\);

-- Location: LCCOMB_X60_Y21_N8
\FD|MuxULAMem|C[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(9) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[9]~12_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~19_combout\ & ((\FD|ULA|Add1~19_combout\) # (!\FD|MuxULAMem|C[9]~12_combout\))) # (!\FD|ULA|Add0~19_combout\ & 
-- (\FD|ULA|Add1~19_combout\ & !\FD|MuxULAMem|C[9]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~19_combout\,
	datac => \FD|ULA|Add1~19_combout\,
	datad => \FD|MuxULAMem|C[9]~12_combout\,
	combout => \FD|MuxULAMem|C\(9));

-- Location: FF_X60_Y21_N9
\FD|BancoReg|ram[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(9),
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][9]~q\);

-- Location: LCCOMB_X60_Y21_N16
\FD|muxRtImm|C[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[9]~23_combout\ = (\FD|BancoReg|ram[0][9]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][9]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[9]~23_combout\);

-- Location: LCCOMB_X62_Y21_N20
\FD|ULA|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~21_combout\ = (\FD|ULA|Add0~20\ & ((\FD|muxRtImm|C[10]~22_combout\ $ (\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~20\ & (\FD|muxRtImm|C[10]~22_combout\ $ (\FD|UCULA|Mux7~0_combout\ $ (VCC))))
-- \FD|ULA|Add0~22\ = CARRY((!\FD|ULA|Add0~20\ & (\FD|muxRtImm|C[10]~22_combout\ $ (\FD|UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[10]~22_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~20\,
	combout => \FD|ULA|Add0~21_combout\,
	cout => \FD|ULA|Add0~22\);

-- Location: LCCOMB_X60_Y23_N20
\FD|ULA|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~21_combout\ = (\FD|ULA|Add1~20\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[10]~22_combout\)))) # (!\FD|ULA|Add1~20\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[10]~22_combout\ $ (VCC))))
-- \FD|ULA|Add1~22\ = CARRY((!\FD|ULA|Add1~20\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[10]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[10]~22_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~20\,
	combout => \FD|ULA|Add1~21_combout\,
	cout => \FD|ULA|Add1~22\);

-- Location: LCCOMB_X61_Y23_N20
\FD|ULA|tempAdd[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[10]~20_combout\ = ((\FD|ULA|Add1~21_combout\ $ (\FD|ULA|Add0~21_combout\ $ (!\FD|ULA|tempAdd[9]~19\)))) # (GND)
-- \FD|ULA|tempAdd[10]~21\ = CARRY((\FD|ULA|Add1~21_combout\ & ((\FD|ULA|Add0~21_combout\) # (!\FD|ULA|tempAdd[9]~19\))) # (!\FD|ULA|Add1~21_combout\ & (\FD|ULA|Add0~21_combout\ & !\FD|ULA|tempAdd[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~21_combout\,
	datab => \FD|ULA|Add0~21_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[9]~19\,
	combout => \FD|ULA|tempAdd[10]~20_combout\,
	cout => \FD|ULA|tempAdd[10]~21\);

-- Location: LCCOMB_X63_Y21_N18
\FD|MuxULAMem|C[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[10]~13_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[10]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|InstMem|ram~550_combout\,
	datac => \FD|PC|DOUT\(3),
	datad => \FD|ULA|tempAdd[10]~20_combout\,
	combout => \FD|MuxULAMem|C[10]~13_combout\);

-- Location: LCCOMB_X63_Y21_N8
\FD|MuxULAMem|C[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(10) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[10]~13_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~21_combout\ & ((\FD|ULA|Add1~21_combout\) # (!\FD|MuxULAMem|C[10]~13_combout\))) # (!\FD|ULA|Add0~21_combout\ & 
-- (\FD|ULA|Add1~21_combout\ & !\FD|MuxULAMem|C[10]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~21_combout\,
	datac => \FD|ULA|Add1~21_combout\,
	datad => \FD|MuxULAMem|C[10]~13_combout\,
	combout => \FD|MuxULAMem|C\(10));

-- Location: FF_X63_Y21_N31
\FD|BancoReg|ram[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(10),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][10]~q\);

-- Location: LCCOMB_X63_Y21_N20
\FD|muxRtImm|C[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[10]~22_combout\ = (\FD|BancoReg|ram[0][10]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BancoReg|ram[0][10]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[10]~22_combout\);

-- Location: LCCOMB_X62_Y21_N22
\FD|ULA|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~23_combout\ = (\FD|ULA|Add0~22\ & (\FD|UCULA|Mux7~0_combout\ $ ((!\FD|muxRtImm|C[11]~21_combout\)))) # (!\FD|ULA|Add0~22\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[11]~21_combout\)) # (GND)))
-- \FD|ULA|Add0~24\ = CARRY((\FD|UCULA|Mux7~0_combout\ $ (!\FD|muxRtImm|C[11]~21_combout\)) # (!\FD|ULA|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[11]~21_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~22\,
	combout => \FD|ULA|Add0~23_combout\,
	cout => \FD|ULA|Add0~24\);

-- Location: LCCOMB_X60_Y23_N22
\FD|ULA|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~23_combout\ = (\FD|ULA|Add1~22\ & (\FD|UCULA|Mux5~0_combout\ $ ((!\FD|muxRtImm|C[11]~21_combout\)))) # (!\FD|ULA|Add1~22\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[11]~21_combout\)) # (GND)))
-- \FD|ULA|Add1~24\ = CARRY((\FD|UCULA|Mux5~0_combout\ $ (!\FD|muxRtImm|C[11]~21_combout\)) # (!\FD|ULA|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[11]~21_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~22\,
	combout => \FD|ULA|Add1~23_combout\,
	cout => \FD|ULA|Add1~24\);

-- Location: LCCOMB_X61_Y23_N22
\FD|ULA|tempAdd[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[11]~22_combout\ = (\FD|ULA|Add1~23_combout\ & ((\FD|ULA|Add0~23_combout\ & (\FD|ULA|tempAdd[10]~21\ & VCC)) # (!\FD|ULA|Add0~23_combout\ & (!\FD|ULA|tempAdd[10]~21\)))) # (!\FD|ULA|Add1~23_combout\ & ((\FD|ULA|Add0~23_combout\ & 
-- (!\FD|ULA|tempAdd[10]~21\)) # (!\FD|ULA|Add0~23_combout\ & ((\FD|ULA|tempAdd[10]~21\) # (GND)))))
-- \FD|ULA|tempAdd[11]~23\ = CARRY((\FD|ULA|Add1~23_combout\ & (!\FD|ULA|Add0~23_combout\ & !\FD|ULA|tempAdd[10]~21\)) # (!\FD|ULA|Add1~23_combout\ & ((!\FD|ULA|tempAdd[10]~21\) # (!\FD|ULA|Add0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~23_combout\,
	datab => \FD|ULA|Add0~23_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[10]~21\,
	combout => \FD|ULA|tempAdd[11]~22_combout\,
	cout => \FD|ULA|tempAdd[11]~23\);

-- Location: LCCOMB_X63_Y21_N2
\FD|MuxULAMem|C[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[11]~14_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & ((\FD|PC|DOUT\(3)))) # (!\FD|InstMem|ram~550_combout\ & (\FD|ULA|tempAdd[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|tempAdd[11]~22_combout\,
	datab => \FD|InstMem|ram~550_combout\,
	datac => \FD|PC|DOUT\(3),
	datad => \FD|UCULA|Mux3~0_combout\,
	combout => \FD|MuxULAMem|C[11]~14_combout\);

-- Location: LCCOMB_X63_Y21_N28
\FD|MuxULAMem|C[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(11) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[11]~14_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~23_combout\ & ((\FD|ULA|Add1~23_combout\) # (!\FD|MuxULAMem|C[11]~14_combout\))) # (!\FD|ULA|Add0~23_combout\ & 
-- (\FD|ULA|Add1~23_combout\ & !\FD|MuxULAMem|C[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~23_combout\,
	datac => \FD|ULA|Add1~23_combout\,
	datad => \FD|MuxULAMem|C[11]~14_combout\,
	combout => \FD|MuxULAMem|C\(11));

-- Location: LCCOMB_X63_Y21_N26
\FD|BancoReg|ram[0][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|ram[0][11]~feeder_combout\ = \FD|MuxULAMem|C\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MuxULAMem|C\(11),
	combout => \FD|BancoReg|ram[0][11]~feeder_combout\);

-- Location: FF_X63_Y21_N27
\FD|BancoReg|ram[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|BancoReg|ram[0][11]~feeder_combout\,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][11]~q\);

-- Location: LCCOMB_X63_Y21_N12
\FD|muxRtImm|C[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[11]~21_combout\ = (\FD|BancoReg|ram[0][11]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BancoReg|ram[0][11]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[11]~21_combout\);

-- Location: LCCOMB_X62_Y21_N24
\FD|ULA|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~25_combout\ = (\FD|ULA|Add0~24\ & ((\FD|muxRtImm|C[12]~20_combout\ $ (\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~24\ & (\FD|muxRtImm|C[12]~20_combout\ $ (\FD|UCULA|Mux7~0_combout\ $ (VCC))))
-- \FD|ULA|Add0~26\ = CARRY((!\FD|ULA|Add0~24\ & (\FD|muxRtImm|C[12]~20_combout\ $ (\FD|UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[12]~20_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~24\,
	combout => \FD|ULA|Add0~25_combout\,
	cout => \FD|ULA|Add0~26\);

-- Location: LCCOMB_X60_Y23_N24
\FD|ULA|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~25_combout\ = (\FD|ULA|Add1~24\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[12]~20_combout\)))) # (!\FD|ULA|Add1~24\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[12]~20_combout\ $ (VCC))))
-- \FD|ULA|Add1~26\ = CARRY((!\FD|ULA|Add1~24\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[12]~20_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~24\,
	combout => \FD|ULA|Add1~25_combout\,
	cout => \FD|ULA|Add1~26\);

-- Location: LCCOMB_X61_Y23_N24
\FD|ULA|tempAdd[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[12]~24_combout\ = ((\FD|ULA|Add0~25_combout\ $ (\FD|ULA|Add1~25_combout\ $ (!\FD|ULA|tempAdd[11]~23\)))) # (GND)
-- \FD|ULA|tempAdd[12]~25\ = CARRY((\FD|ULA|Add0~25_combout\ & ((\FD|ULA|Add1~25_combout\) # (!\FD|ULA|tempAdd[11]~23\))) # (!\FD|ULA|Add0~25_combout\ & (\FD|ULA|Add1~25_combout\ & !\FD|ULA|tempAdd[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~25_combout\,
	datab => \FD|ULA|Add1~25_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[11]~23\,
	combout => \FD|ULA|tempAdd[12]~24_combout\,
	cout => \FD|ULA|tempAdd[12]~25\);

-- Location: LCCOMB_X60_Y21_N2
\FD|MuxULAMem|C[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[12]~15_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[12]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(3),
	datab => \FD|InstMem|ram~550_combout\,
	datac => \FD|UCULA|Mux3~0_combout\,
	datad => \FD|ULA|tempAdd[12]~24_combout\,
	combout => \FD|MuxULAMem|C[12]~15_combout\);

-- Location: LCCOMB_X60_Y21_N28
\FD|MuxULAMem|C[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(12) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[12]~15_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~25_combout\ & ((\FD|ULA|Add1~25_combout\) # (!\FD|MuxULAMem|C[12]~15_combout\))) # (!\FD|ULA|Add0~25_combout\ & 
-- (\FD|ULA|Add1~25_combout\ & !\FD|MuxULAMem|C[12]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~25_combout\,
	datac => \FD|ULA|Add1~25_combout\,
	datad => \FD|MuxULAMem|C[12]~15_combout\,
	combout => \FD|MuxULAMem|C\(12));

-- Location: FF_X60_Y21_N29
\FD|BancoReg|ram[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(12),
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][12]~q\);

-- Location: LCCOMB_X60_Y21_N10
\FD|muxRtImm|C[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[12]~20_combout\ = (\FD|BancoReg|ram[0][12]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][12]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[12]~20_combout\);

-- Location: LCCOMB_X62_Y21_N26
\FD|ULA|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~27_combout\ = (\FD|ULA|Add0~26\ & (\FD|muxRtImm|C[13]~19_combout\ $ ((!\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~26\ & ((\FD|muxRtImm|C[13]~19_combout\ $ (\FD|UCULA|Mux7~0_combout\)) # (GND)))
-- \FD|ULA|Add0~28\ = CARRY((\FD|muxRtImm|C[13]~19_combout\ $ (!\FD|UCULA|Mux7~0_combout\)) # (!\FD|ULA|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[13]~19_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~26\,
	combout => \FD|ULA|Add0~27_combout\,
	cout => \FD|ULA|Add0~28\);

-- Location: LCCOMB_X60_Y23_N26
\FD|ULA|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~27_combout\ = (\FD|ULA|Add1~26\ & (\FD|UCULA|Mux5~0_combout\ $ ((!\FD|muxRtImm|C[13]~19_combout\)))) # (!\FD|ULA|Add1~26\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[13]~19_combout\)) # (GND)))
-- \FD|ULA|Add1~28\ = CARRY((\FD|UCULA|Mux5~0_combout\ $ (!\FD|muxRtImm|C[13]~19_combout\)) # (!\FD|ULA|Add1~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[13]~19_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~26\,
	combout => \FD|ULA|Add1~27_combout\,
	cout => \FD|ULA|Add1~28\);

-- Location: LCCOMB_X61_Y23_N26
\FD|ULA|tempAdd[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[13]~26_combout\ = (\FD|ULA|Add1~27_combout\ & ((\FD|ULA|Add0~27_combout\ & (\FD|ULA|tempAdd[12]~25\ & VCC)) # (!\FD|ULA|Add0~27_combout\ & (!\FD|ULA|tempAdd[12]~25\)))) # (!\FD|ULA|Add1~27_combout\ & ((\FD|ULA|Add0~27_combout\ & 
-- (!\FD|ULA|tempAdd[12]~25\)) # (!\FD|ULA|Add0~27_combout\ & ((\FD|ULA|tempAdd[12]~25\) # (GND)))))
-- \FD|ULA|tempAdd[13]~27\ = CARRY((\FD|ULA|Add1~27_combout\ & (!\FD|ULA|Add0~27_combout\ & !\FD|ULA|tempAdd[12]~25\)) # (!\FD|ULA|Add1~27_combout\ & ((!\FD|ULA|tempAdd[12]~25\) # (!\FD|ULA|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~27_combout\,
	datab => \FD|ULA|Add0~27_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[12]~25\,
	combout => \FD|ULA|tempAdd[13]~26_combout\,
	cout => \FD|ULA|tempAdd[13]~27\);

-- Location: LCCOMB_X61_Y19_N24
\FD|MuxULAMem|C[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[13]~16_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[13]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|InstMem|ram~550_combout\,
	datac => \FD|PC|DOUT\(3),
	datad => \FD|ULA|tempAdd[13]~26_combout\,
	combout => \FD|MuxULAMem|C[13]~16_combout\);

-- Location: LCCOMB_X61_Y19_N30
\FD|MuxULAMem|C[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(13) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[13]~16_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~27_combout\ & ((\FD|ULA|Add1~27_combout\) # (!\FD|MuxULAMem|C[13]~16_combout\))) # (!\FD|ULA|Add0~27_combout\ & 
-- (\FD|ULA|Add1~27_combout\ & !\FD|MuxULAMem|C[13]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~27_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add1~27_combout\,
	datad => \FD|MuxULAMem|C[13]~16_combout\,
	combout => \FD|MuxULAMem|C\(13));

-- Location: FF_X61_Y21_N3
\FD|BancoReg|ram[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(13),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][13]~q\);

-- Location: LCCOMB_X61_Y21_N2
\FD|muxRtImm|C[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[13]~19_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][13]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datac => \FD|BancoReg|ram[0][13]~q\,
	combout => \FD|muxRtImm|C[13]~19_combout\);

-- Location: LCCOMB_X62_Y21_N28
\FD|ULA|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~29_combout\ = (\FD|ULA|Add0~28\ & ((\FD|muxRtImm|C[14]~18_combout\ $ (\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~28\ & (\FD|muxRtImm|C[14]~18_combout\ $ (\FD|UCULA|Mux7~0_combout\ $ (VCC))))
-- \FD|ULA|Add0~30\ = CARRY((!\FD|ULA|Add0~28\ & (\FD|muxRtImm|C[14]~18_combout\ $ (\FD|UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[14]~18_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~28\,
	combout => \FD|ULA|Add0~29_combout\,
	cout => \FD|ULA|Add0~30\);

-- Location: LCCOMB_X60_Y23_N28
\FD|ULA|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~29_combout\ = (\FD|ULA|Add1~28\ & ((\FD|muxRtImm|C[14]~18_combout\ $ (\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~28\ & (\FD|muxRtImm|C[14]~18_combout\ $ (\FD|UCULA|Mux5~0_combout\ $ (VCC))))
-- \FD|ULA|Add1~30\ = CARRY((!\FD|ULA|Add1~28\ & (\FD|muxRtImm|C[14]~18_combout\ $ (\FD|UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[14]~18_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~28\,
	combout => \FD|ULA|Add1~29_combout\,
	cout => \FD|ULA|Add1~30\);

-- Location: LCCOMB_X61_Y23_N28
\FD|ULA|tempAdd[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[14]~28_combout\ = ((\FD|ULA|Add1~29_combout\ $ (\FD|ULA|Add0~29_combout\ $ (!\FD|ULA|tempAdd[13]~27\)))) # (GND)
-- \FD|ULA|tempAdd[14]~29\ = CARRY((\FD|ULA|Add1~29_combout\ & ((\FD|ULA|Add0~29_combout\) # (!\FD|ULA|tempAdd[13]~27\))) # (!\FD|ULA|Add1~29_combout\ & (\FD|ULA|Add0~29_combout\ & !\FD|ULA|tempAdd[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~29_combout\,
	datab => \FD|ULA|Add0~29_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[13]~27\,
	combout => \FD|ULA|tempAdd[14]~28_combout\,
	cout => \FD|ULA|tempAdd[14]~29\);

-- Location: LCCOMB_X61_Y19_N28
\FD|MuxULAMem|C[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[14]~17_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[14]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|ULA|tempAdd[14]~28_combout\,
	datad => \FD|InstMem|ram~550_combout\,
	combout => \FD|MuxULAMem|C[14]~17_combout\);

-- Location: LCCOMB_X61_Y19_N22
\FD|MuxULAMem|C[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(14) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[14]~17_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~29_combout\ & ((\FD|ULA|Add1~29_combout\) # (!\FD|MuxULAMem|C[14]~17_combout\))) # (!\FD|ULA|Add0~29_combout\ & 
-- (\FD|ULA|Add1~29_combout\ & !\FD|MuxULAMem|C[14]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~29_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add1~29_combout\,
	datad => \FD|MuxULAMem|C[14]~17_combout\,
	combout => \FD|MuxULAMem|C\(14));

-- Location: LCCOMB_X61_Y19_N8
\FD|BancoReg|ram[0][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|ram[0][14]~feeder_combout\ = \FD|MuxULAMem|C\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MuxULAMem|C\(14),
	combout => \FD|BancoReg|ram[0][14]~feeder_combout\);

-- Location: FF_X61_Y19_N9
\FD|BancoReg|ram[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|BancoReg|ram[0][14]~feeder_combout\,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][14]~q\);

-- Location: LCCOMB_X61_Y19_N18
\FD|muxRtImm|C[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[14]~18_combout\ = (\FD|BancoReg|ram[0][14]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BancoReg|ram[0][14]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[14]~18_combout\);

-- Location: LCCOMB_X60_Y23_N30
\FD|ULA|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~31_combout\ = (\FD|ULA|Add1~30\ & (\FD|muxRtImm|C[15]~17_combout\ $ ((!\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~30\ & ((\FD|muxRtImm|C[15]~17_combout\ $ (\FD|UCULA|Mux5~0_combout\)) # (GND)))
-- \FD|ULA|Add1~32\ = CARRY((\FD|muxRtImm|C[15]~17_combout\ $ (!\FD|UCULA|Mux5~0_combout\)) # (!\FD|ULA|Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[15]~17_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~30\,
	combout => \FD|ULA|Add1~31_combout\,
	cout => \FD|ULA|Add1~32\);

-- Location: LCCOMB_X62_Y21_N30
\FD|ULA|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~31_combout\ = (\FD|ULA|Add0~30\ & (\FD|muxRtImm|C[15]~17_combout\ $ ((!\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~30\ & ((\FD|muxRtImm|C[15]~17_combout\ $ (\FD|UCULA|Mux7~0_combout\)) # (GND)))
-- \FD|ULA|Add0~32\ = CARRY((\FD|muxRtImm|C[15]~17_combout\ $ (!\FD|UCULA|Mux7~0_combout\)) # (!\FD|ULA|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[15]~17_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~30\,
	combout => \FD|ULA|Add0~31_combout\,
	cout => \FD|ULA|Add0~32\);

-- Location: LCCOMB_X61_Y23_N30
\FD|ULA|tempAdd[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[15]~30_combout\ = (\FD|ULA|Add0~31_combout\ & ((\FD|ULA|Add1~31_combout\ & (\FD|ULA|tempAdd[14]~29\ & VCC)) # (!\FD|ULA|Add1~31_combout\ & (!\FD|ULA|tempAdd[14]~29\)))) # (!\FD|ULA|Add0~31_combout\ & ((\FD|ULA|Add1~31_combout\ & 
-- (!\FD|ULA|tempAdd[14]~29\)) # (!\FD|ULA|Add1~31_combout\ & ((\FD|ULA|tempAdd[14]~29\) # (GND)))))
-- \FD|ULA|tempAdd[15]~31\ = CARRY((\FD|ULA|Add0~31_combout\ & (!\FD|ULA|Add1~31_combout\ & !\FD|ULA|tempAdd[14]~29\)) # (!\FD|ULA|Add0~31_combout\ & ((!\FD|ULA|tempAdd[14]~29\) # (!\FD|ULA|Add1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~31_combout\,
	datab => \FD|ULA|Add1~31_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[14]~29\,
	combout => \FD|ULA|tempAdd[15]~30_combout\,
	cout => \FD|ULA|tempAdd[15]~31\);

-- Location: LCCOMB_X62_Y23_N10
\FD|MuxULAMem|C[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[15]~18_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[15]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~550_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|ULA|tempAdd[15]~30_combout\,
	datad => \FD|UCULA|Mux3~0_combout\,
	combout => \FD|MuxULAMem|C[15]~18_combout\);

-- Location: LCCOMB_X62_Y23_N4
\FD|MuxULAMem|C[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(15) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[15]~18_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add1~31_combout\ & ((\FD|ULA|Add0~31_combout\) # (!\FD|MuxULAMem|C[15]~18_combout\))) # (!\FD|ULA|Add1~31_combout\ & 
-- (!\FD|MuxULAMem|C[15]~18_combout\ & \FD|ULA|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~31_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|MuxULAMem|C[15]~18_combout\,
	datad => \FD|ULA|Add0~31_combout\,
	combout => \FD|MuxULAMem|C\(15));

-- Location: FF_X61_Y21_N1
\FD|BancoReg|ram[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(15),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][15]~q\);

-- Location: LCCOMB_X61_Y21_N0
\FD|muxRtImm|C[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[15]~17_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datac => \FD|BancoReg|ram[0][15]~q\,
	combout => \FD|muxRtImm|C[15]~17_combout\);

-- Location: LCCOMB_X60_Y22_N0
\FD|ULA|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~33_combout\ = (\FD|ULA|Add1~32\ & ((\FD|muxRtImm|C[16]~16_combout\ $ (\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~32\ & (\FD|muxRtImm|C[16]~16_combout\ $ (\FD|UCULA|Mux5~0_combout\ $ (VCC))))
-- \FD|ULA|Add1~34\ = CARRY((!\FD|ULA|Add1~32\ & (\FD|muxRtImm|C[16]~16_combout\ $ (\FD|UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[16]~16_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~32\,
	combout => \FD|ULA|Add1~33_combout\,
	cout => \FD|ULA|Add1~34\);

-- Location: LCCOMB_X62_Y20_N0
\FD|ULA|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~33_combout\ = (\FD|ULA|Add0~32\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[16]~16_combout\)))) # (!\FD|ULA|Add0~32\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[16]~16_combout\ $ (VCC))))
-- \FD|ULA|Add0~34\ = CARRY((!\FD|ULA|Add0~32\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[16]~16_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~32\,
	combout => \FD|ULA|Add0~33_combout\,
	cout => \FD|ULA|Add0~34\);

-- Location: LCCOMB_X63_Y22_N20
\FD|MuxULAMem|C[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[19]~20_combout\ = (!\FD|InstMem|ram~549_combout\ & ((\FD|UCULA|Mux6~0_combout\) # (\FD|UCULA|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|UCULA|Mux3~0_combout\,
	combout => \FD|MuxULAMem|C[19]~20_combout\);

-- Location: LCCOMB_X63_Y22_N0
\FD|MuxULAMem|C[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[19]~19_combout\ = (\FD|UCULA|Mux6~0_combout\ & ((\FD|InstMem|ram~549_combout\) # (!\FD|UCULA|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|InstMem|ram~549_combout\,
	datad => \FD|UCULA|Mux6~0_combout\,
	combout => \FD|MuxULAMem|C[19]~19_combout\);

-- Location: LCCOMB_X61_Y22_N0
\FD|ULA|tempAdd[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[16]~32_combout\ = ((\FD|ULA|Add0~33_combout\ $ (\FD|ULA|Add1~33_combout\ $ (!\FD|ULA|tempAdd[15]~31\)))) # (GND)
-- \FD|ULA|tempAdd[16]~33\ = CARRY((\FD|ULA|Add0~33_combout\ & ((\FD|ULA|Add1~33_combout\) # (!\FD|ULA|tempAdd[15]~31\))) # (!\FD|ULA|Add0~33_combout\ & (\FD|ULA|Add1~33_combout\ & !\FD|ULA|tempAdd[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~33_combout\,
	datab => \FD|ULA|Add1~33_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[15]~31\,
	combout => \FD|ULA|tempAdd[16]~32_combout\,
	cout => \FD|ULA|tempAdd[16]~33\);

-- Location: LCCOMB_X62_Y22_N16
\FD|MuxULAMem|C[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[16]~21_combout\ = (\FD|MuxULAMem|C[19]~20_combout\ & (\FD|MuxULAMem|C[19]~19_combout\ & (\FD|ULA|tempAdd[16]~32_combout\))) # (!\FD|MuxULAMem|C[19]~20_combout\ & (((\FD|MemDados|ram~549_combout\)) # (!\FD|MuxULAMem|C[19]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxULAMem|C[19]~20_combout\,
	datab => \FD|MuxULAMem|C[19]~19_combout\,
	datac => \FD|ULA|tempAdd[16]~32_combout\,
	datad => \FD|MemDados|ram~549_combout\,
	combout => \FD|MuxULAMem|C[16]~21_combout\);

-- Location: LCCOMB_X62_Y22_N22
\FD|MuxULAMem|C[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(16) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[16]~21_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add1~33_combout\ & ((\FD|ULA|Add0~33_combout\) # (!\FD|MuxULAMem|C[16]~21_combout\))) # (!\FD|ULA|Add1~33_combout\ & 
-- (\FD|ULA|Add0~33_combout\ & !\FD|MuxULAMem|C[16]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~33_combout\,
	datab => \FD|ULA|Add0~33_combout\,
	datac => \FD|UCULA|Mux6~0_combout\,
	datad => \FD|MuxULAMem|C[16]~21_combout\,
	combout => \FD|MuxULAMem|C\(16));

-- Location: FF_X61_Y20_N7
\FD|BancoReg|ram[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(16),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][16]~q\);

-- Location: LCCOMB_X61_Y20_N4
\FD|muxRtImm|C[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[16]~16_combout\ = (\FD|BancoReg|ram[0][16]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][16]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[16]~16_combout\);

-- Location: LCCOMB_X60_Y22_N2
\FD|ULA|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~35_combout\ = (\FD|ULA|Add1~34\ & (\FD|UCULA|Mux5~0_combout\ $ ((!\FD|muxRtImm|C[17]~15_combout\)))) # (!\FD|ULA|Add1~34\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[17]~15_combout\)) # (GND)))
-- \FD|ULA|Add1~36\ = CARRY((\FD|UCULA|Mux5~0_combout\ $ (!\FD|muxRtImm|C[17]~15_combout\)) # (!\FD|ULA|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[17]~15_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~34\,
	combout => \FD|ULA|Add1~35_combout\,
	cout => \FD|ULA|Add1~36\);

-- Location: LCCOMB_X62_Y20_N2
\FD|ULA|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~35_combout\ = (\FD|ULA|Add0~34\ & (\FD|UCULA|Mux7~0_combout\ $ ((!\FD|muxRtImm|C[17]~15_combout\)))) # (!\FD|ULA|Add0~34\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[17]~15_combout\)) # (GND)))
-- \FD|ULA|Add0~36\ = CARRY((\FD|UCULA|Mux7~0_combout\ $ (!\FD|muxRtImm|C[17]~15_combout\)) # (!\FD|ULA|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[17]~15_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~34\,
	combout => \FD|ULA|Add0~35_combout\,
	cout => \FD|ULA|Add0~36\);

-- Location: LCCOMB_X61_Y22_N2
\FD|ULA|tempAdd[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[17]~34_combout\ = (\FD|ULA|Add1~35_combout\ & ((\FD|ULA|Add0~35_combout\ & (\FD|ULA|tempAdd[16]~33\ & VCC)) # (!\FD|ULA|Add0~35_combout\ & (!\FD|ULA|tempAdd[16]~33\)))) # (!\FD|ULA|Add1~35_combout\ & ((\FD|ULA|Add0~35_combout\ & 
-- (!\FD|ULA|tempAdd[16]~33\)) # (!\FD|ULA|Add0~35_combout\ & ((\FD|ULA|tempAdd[16]~33\) # (GND)))))
-- \FD|ULA|tempAdd[17]~35\ = CARRY((\FD|ULA|Add1~35_combout\ & (!\FD|ULA|Add0~35_combout\ & !\FD|ULA|tempAdd[16]~33\)) # (!\FD|ULA|Add1~35_combout\ & ((!\FD|ULA|tempAdd[16]~33\) # (!\FD|ULA|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~35_combout\,
	datab => \FD|ULA|Add0~35_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[16]~33\,
	combout => \FD|ULA|tempAdd[17]~34_combout\,
	cout => \FD|ULA|tempAdd[17]~35\);

-- Location: LCCOMB_X60_Y20_N18
\FD|MuxULAMem|C[17]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[17]~22_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & ((\FD|PC|DOUT\(3)))) # (!\FD|InstMem|ram~550_combout\ & (\FD|ULA|tempAdd[17]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~550_combout\,
	datab => \FD|UCULA|Mux3~0_combout\,
	datac => \FD|ULA|tempAdd[17]~34_combout\,
	datad => \FD|PC|DOUT\(3),
	combout => \FD|MuxULAMem|C[17]~22_combout\);

-- Location: LCCOMB_X60_Y20_N16
\FD|MuxULAMem|C[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(17) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[17]~22_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add1~35_combout\ & ((\FD|ULA|Add0~35_combout\) # (!\FD|MuxULAMem|C[17]~22_combout\))) # (!\FD|ULA|Add1~35_combout\ & 
-- (\FD|ULA|Add0~35_combout\ & !\FD|MuxULAMem|C[17]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add1~35_combout\,
	datac => \FD|ULA|Add0~35_combout\,
	datad => \FD|MuxULAMem|C[17]~22_combout\,
	combout => \FD|MuxULAMem|C\(17));

-- Location: LCCOMB_X60_Y20_N28
\FD|BancoReg|ram[0][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|ram[0][17]~feeder_combout\ = \FD|MuxULAMem|C\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MuxULAMem|C\(17),
	combout => \FD|BancoReg|ram[0][17]~feeder_combout\);

-- Location: FF_X60_Y20_N29
\FD|BancoReg|ram[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|BancoReg|ram[0][17]~feeder_combout\,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][17]~q\);

-- Location: LCCOMB_X61_Y20_N24
\FD|muxRtImm|C[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[17]~15_combout\ = (\FD|BancoReg|ram[0][17]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][17]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[17]~15_combout\);

-- Location: LCCOMB_X62_Y20_N4
\FD|ULA|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~37_combout\ = (\FD|ULA|Add0~36\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[18]~14_combout\)))) # (!\FD|ULA|Add0~36\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[18]~14_combout\ $ (VCC))))
-- \FD|ULA|Add0~38\ = CARRY((!\FD|ULA|Add0~36\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[18]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[18]~14_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~36\,
	combout => \FD|ULA|Add0~37_combout\,
	cout => \FD|ULA|Add0~38\);

-- Location: LCCOMB_X60_Y22_N4
\FD|ULA|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~37_combout\ = (\FD|ULA|Add1~36\ & ((\FD|muxRtImm|C[18]~14_combout\ $ (\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~36\ & (\FD|muxRtImm|C[18]~14_combout\ $ (\FD|UCULA|Mux5~0_combout\ $ (VCC))))
-- \FD|ULA|Add1~38\ = CARRY((!\FD|ULA|Add1~36\ & (\FD|muxRtImm|C[18]~14_combout\ $ (\FD|UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[18]~14_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~36\,
	combout => \FD|ULA|Add1~37_combout\,
	cout => \FD|ULA|Add1~38\);

-- Location: LCCOMB_X61_Y22_N4
\FD|ULA|tempAdd[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[18]~36_combout\ = ((\FD|ULA|Add1~37_combout\ $ (\FD|ULA|Add0~37_combout\ $ (!\FD|ULA|tempAdd[17]~35\)))) # (GND)
-- \FD|ULA|tempAdd[18]~37\ = CARRY((\FD|ULA|Add1~37_combout\ & ((\FD|ULA|Add0~37_combout\) # (!\FD|ULA|tempAdd[17]~35\))) # (!\FD|ULA|Add1~37_combout\ & (\FD|ULA|Add0~37_combout\ & !\FD|ULA|tempAdd[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~37_combout\,
	datab => \FD|ULA|Add0~37_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[17]~35\,
	combout => \FD|ULA|tempAdd[18]~36_combout\,
	cout => \FD|ULA|tempAdd[18]~37\);

-- Location: LCCOMB_X62_Y22_N28
\FD|MuxULAMem|C[18]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[18]~23_combout\ = (\FD|MuxULAMem|C[19]~20_combout\ & (\FD|MuxULAMem|C[19]~19_combout\ & (\FD|ULA|tempAdd[18]~36_combout\))) # (!\FD|MuxULAMem|C[19]~20_combout\ & (((\FD|MemDados|ram~549_combout\)) # (!\FD|MuxULAMem|C[19]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxULAMem|C[19]~20_combout\,
	datab => \FD|MuxULAMem|C[19]~19_combout\,
	datac => \FD|ULA|tempAdd[18]~36_combout\,
	datad => \FD|MemDados|ram~549_combout\,
	combout => \FD|MuxULAMem|C[18]~23_combout\);

-- Location: LCCOMB_X63_Y20_N20
\FD|MuxULAMem|C[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(18) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[18]~23_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~37_combout\ & ((\FD|ULA|Add1~37_combout\) # (!\FD|MuxULAMem|C[18]~23_combout\))) # (!\FD|ULA|Add0~37_combout\ & 
-- (\FD|ULA|Add1~37_combout\ & !\FD|MuxULAMem|C[18]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~37_combout\,
	datac => \FD|ULA|Add1~37_combout\,
	datad => \FD|MuxULAMem|C[18]~23_combout\,
	combout => \FD|MuxULAMem|C\(18));

-- Location: LCCOMB_X63_Y20_N24
\FD|BancoReg|ram[0][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|ram[0][18]~feeder_combout\ = \FD|MuxULAMem|C\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MuxULAMem|C\(18),
	combout => \FD|BancoReg|ram[0][18]~feeder_combout\);

-- Location: FF_X63_Y20_N25
\FD|BancoReg|ram[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|BancoReg|ram[0][18]~feeder_combout\,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][18]~q\);

-- Location: LCCOMB_X63_Y20_N18
\FD|muxRtImm|C[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[18]~14_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][18]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][18]~q\,
	combout => \FD|muxRtImm|C[18]~14_combout\);

-- Location: LCCOMB_X60_Y22_N6
\FD|ULA|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~39_combout\ = (\FD|ULA|Add1~38\ & (\FD|UCULA|Mux5~0_combout\ $ ((!\FD|muxRtImm|C[19]~13_combout\)))) # (!\FD|ULA|Add1~38\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[19]~13_combout\)) # (GND)))
-- \FD|ULA|Add1~40\ = CARRY((\FD|UCULA|Mux5~0_combout\ $ (!\FD|muxRtImm|C[19]~13_combout\)) # (!\FD|ULA|Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[19]~13_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~38\,
	combout => \FD|ULA|Add1~39_combout\,
	cout => \FD|ULA|Add1~40\);

-- Location: LCCOMB_X62_Y20_N6
\FD|ULA|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~39_combout\ = (\FD|ULA|Add0~38\ & (\FD|UCULA|Mux7~0_combout\ $ ((!\FD|muxRtImm|C[19]~13_combout\)))) # (!\FD|ULA|Add0~38\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[19]~13_combout\)) # (GND)))
-- \FD|ULA|Add0~40\ = CARRY((\FD|UCULA|Mux7~0_combout\ $ (!\FD|muxRtImm|C[19]~13_combout\)) # (!\FD|ULA|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[19]~13_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~38\,
	combout => \FD|ULA|Add0~39_combout\,
	cout => \FD|ULA|Add0~40\);

-- Location: LCCOMB_X61_Y22_N6
\FD|ULA|tempAdd[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[19]~38_combout\ = (\FD|ULA|Add1~39_combout\ & ((\FD|ULA|Add0~39_combout\ & (\FD|ULA|tempAdd[18]~37\ & VCC)) # (!\FD|ULA|Add0~39_combout\ & (!\FD|ULA|tempAdd[18]~37\)))) # (!\FD|ULA|Add1~39_combout\ & ((\FD|ULA|Add0~39_combout\ & 
-- (!\FD|ULA|tempAdd[18]~37\)) # (!\FD|ULA|Add0~39_combout\ & ((\FD|ULA|tempAdd[18]~37\) # (GND)))))
-- \FD|ULA|tempAdd[19]~39\ = CARRY((\FD|ULA|Add1~39_combout\ & (!\FD|ULA|Add0~39_combout\ & !\FD|ULA|tempAdd[18]~37\)) # (!\FD|ULA|Add1~39_combout\ & ((!\FD|ULA|tempAdd[18]~37\) # (!\FD|ULA|Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~39_combout\,
	datab => \FD|ULA|Add0~39_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[18]~37\,
	combout => \FD|ULA|tempAdd[19]~38_combout\,
	cout => \FD|ULA|tempAdd[19]~39\);

-- Location: LCCOMB_X61_Y20_N8
\FD|MuxULAMem|C[19]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[19]~24_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[19]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|InstMem|ram~550_combout\,
	datad => \FD|ULA|tempAdd[19]~38_combout\,
	combout => \FD|MuxULAMem|C[19]~24_combout\);

-- Location: LCCOMB_X61_Y20_N2
\FD|MuxULAMem|C[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(19) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[19]~24_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add1~39_combout\ & ((\FD|ULA|Add0~39_combout\) # (!\FD|MuxULAMem|C[19]~24_combout\))) # (!\FD|ULA|Add1~39_combout\ & 
-- (!\FD|MuxULAMem|C[19]~24_combout\ & \FD|ULA|Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~39_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|MuxULAMem|C[19]~24_combout\,
	datad => \FD|ULA|Add0~39_combout\,
	combout => \FD|MuxULAMem|C\(19));

-- Location: FF_X61_Y20_N13
\FD|BancoReg|ram[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(19),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][19]~q\);

-- Location: LCCOMB_X61_Y20_N18
\FD|muxRtImm|C[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[19]~13_combout\ = (\FD|BancoReg|ram[0][19]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][19]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[19]~13_combout\);

-- Location: LCCOMB_X62_Y20_N8
\FD|ULA|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~41_combout\ = (\FD|ULA|Add0~40\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[20]~12_combout\)))) # (!\FD|ULA|Add0~40\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[20]~12_combout\ $ (VCC))))
-- \FD|ULA|Add0~42\ = CARRY((!\FD|ULA|Add0~40\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[20]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[20]~12_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~40\,
	combout => \FD|ULA|Add0~41_combout\,
	cout => \FD|ULA|Add0~42\);

-- Location: LCCOMB_X60_Y22_N8
\FD|ULA|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~41_combout\ = (\FD|ULA|Add1~40\ & ((\FD|muxRtImm|C[20]~12_combout\ $ (\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~40\ & (\FD|muxRtImm|C[20]~12_combout\ $ (\FD|UCULA|Mux5~0_combout\ $ (VCC))))
-- \FD|ULA|Add1~42\ = CARRY((!\FD|ULA|Add1~40\ & (\FD|muxRtImm|C[20]~12_combout\ $ (\FD|UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[20]~12_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~40\,
	combout => \FD|ULA|Add1~41_combout\,
	cout => \FD|ULA|Add1~42\);

-- Location: LCCOMB_X61_Y22_N8
\FD|ULA|tempAdd[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[20]~40_combout\ = ((\FD|ULA|Add1~41_combout\ $ (\FD|ULA|Add0~41_combout\ $ (!\FD|ULA|tempAdd[19]~39\)))) # (GND)
-- \FD|ULA|tempAdd[20]~41\ = CARRY((\FD|ULA|Add1~41_combout\ & ((\FD|ULA|Add0~41_combout\) # (!\FD|ULA|tempAdd[19]~39\))) # (!\FD|ULA|Add1~41_combout\ & (\FD|ULA|Add0~41_combout\ & !\FD|ULA|tempAdd[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~41_combout\,
	datab => \FD|ULA|Add0~41_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[19]~39\,
	combout => \FD|ULA|tempAdd[20]~40_combout\,
	cout => \FD|ULA|tempAdd[20]~41\);

-- Location: LCCOMB_X61_Y24_N12
\FD|MuxULAMem|C[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[20]~25_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[20]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~550_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|UCULA|Mux3~0_combout\,
	datad => \FD|ULA|tempAdd[20]~40_combout\,
	combout => \FD|MuxULAMem|C[20]~25_combout\);

-- Location: LCCOMB_X61_Y24_N22
\FD|MuxULAMem|C[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(20) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[20]~25_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~41_combout\ & ((\FD|ULA|Add1~41_combout\) # (!\FD|MuxULAMem|C[20]~25_combout\))) # (!\FD|ULA|Add0~41_combout\ & 
-- (\FD|ULA|Add1~41_combout\ & !\FD|MuxULAMem|C[20]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~41_combout\,
	datac => \FD|ULA|Add1~41_combout\,
	datad => \FD|MuxULAMem|C[20]~25_combout\,
	combout => \FD|MuxULAMem|C\(20));

-- Location: FF_X61_Y21_N27
\FD|BancoReg|ram[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(20),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][20]~q\);

-- Location: LCCOMB_X61_Y21_N26
\FD|muxRtImm|C[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[20]~12_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][20]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datac => \FD|BancoReg|ram[0][20]~q\,
	combout => \FD|muxRtImm|C[20]~12_combout\);

-- Location: LCCOMB_X62_Y20_N10
\FD|ULA|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~43_combout\ = (\FD|ULA|Add0~42\ & (\FD|UCULA|Mux7~0_combout\ $ ((!\FD|muxRtImm|C[21]~11_combout\)))) # (!\FD|ULA|Add0~42\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[21]~11_combout\)) # (GND)))
-- \FD|ULA|Add0~44\ = CARRY((\FD|UCULA|Mux7~0_combout\ $ (!\FD|muxRtImm|C[21]~11_combout\)) # (!\FD|ULA|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[21]~11_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~42\,
	combout => \FD|ULA|Add0~43_combout\,
	cout => \FD|ULA|Add0~44\);

-- Location: LCCOMB_X60_Y22_N10
\FD|ULA|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~43_combout\ = (\FD|ULA|Add1~42\ & (\FD|muxRtImm|C[21]~11_combout\ $ ((!\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~42\ & ((\FD|muxRtImm|C[21]~11_combout\ $ (\FD|UCULA|Mux5~0_combout\)) # (GND)))
-- \FD|ULA|Add1~44\ = CARRY((\FD|muxRtImm|C[21]~11_combout\ $ (!\FD|UCULA|Mux5~0_combout\)) # (!\FD|ULA|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[21]~11_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~42\,
	combout => \FD|ULA|Add1~43_combout\,
	cout => \FD|ULA|Add1~44\);

-- Location: LCCOMB_X61_Y22_N10
\FD|ULA|tempAdd[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[21]~42_combout\ = (\FD|ULA|Add0~43_combout\ & ((\FD|ULA|Add1~43_combout\ & (\FD|ULA|tempAdd[20]~41\ & VCC)) # (!\FD|ULA|Add1~43_combout\ & (!\FD|ULA|tempAdd[20]~41\)))) # (!\FD|ULA|Add0~43_combout\ & ((\FD|ULA|Add1~43_combout\ & 
-- (!\FD|ULA|tempAdd[20]~41\)) # (!\FD|ULA|Add1~43_combout\ & ((\FD|ULA|tempAdd[20]~41\) # (GND)))))
-- \FD|ULA|tempAdd[21]~43\ = CARRY((\FD|ULA|Add0~43_combout\ & (!\FD|ULA|Add1~43_combout\ & !\FD|ULA|tempAdd[20]~41\)) # (!\FD|ULA|Add0~43_combout\ & ((!\FD|ULA|tempAdd[20]~41\) # (!\FD|ULA|Add1~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~43_combout\,
	datab => \FD|ULA|Add1~43_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[20]~41\,
	combout => \FD|ULA|tempAdd[21]~42_combout\,
	cout => \FD|ULA|tempAdd[21]~43\);

-- Location: LCCOMB_X60_Y21_N24
\FD|MuxULAMem|C[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[21]~26_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[21]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(3),
	datab => \FD|InstMem|ram~550_combout\,
	datac => \FD|UCULA|Mux3~0_combout\,
	datad => \FD|ULA|tempAdd[21]~42_combout\,
	combout => \FD|MuxULAMem|C[21]~26_combout\);

-- Location: LCCOMB_X60_Y21_N14
\FD|MuxULAMem|C[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(21) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[21]~26_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~43_combout\ & ((\FD|ULA|Add1~43_combout\) # (!\FD|MuxULAMem|C[21]~26_combout\))) # (!\FD|ULA|Add0~43_combout\ & 
-- (\FD|ULA|Add1~43_combout\ & !\FD|MuxULAMem|C[21]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~43_combout\,
	datac => \FD|ULA|Add1~43_combout\,
	datad => \FD|MuxULAMem|C[21]~26_combout\,
	combout => \FD|MuxULAMem|C\(21));

-- Location: FF_X60_Y21_N21
\FD|BancoReg|ram[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(21),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][21]~q\);

-- Location: LCCOMB_X60_Y21_N30
\FD|muxRtImm|C[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[21]~11_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][21]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][21]~q\,
	combout => \FD|muxRtImm|C[21]~11_combout\);

-- Location: LCCOMB_X60_Y22_N12
\FD|ULA|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~45_combout\ = (\FD|ULA|Add1~44\ & ((\FD|muxRtImm|C[22]~10_combout\ $ (\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~44\ & (\FD|muxRtImm|C[22]~10_combout\ $ (\FD|UCULA|Mux5~0_combout\ $ (VCC))))
-- \FD|ULA|Add1~46\ = CARRY((!\FD|ULA|Add1~44\ & (\FD|muxRtImm|C[22]~10_combout\ $ (\FD|UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[22]~10_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~44\,
	combout => \FD|ULA|Add1~45_combout\,
	cout => \FD|ULA|Add1~46\);

-- Location: LCCOMB_X62_Y20_N12
\FD|ULA|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~45_combout\ = (\FD|ULA|Add0~44\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[22]~10_combout\)))) # (!\FD|ULA|Add0~44\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[22]~10_combout\ $ (VCC))))
-- \FD|ULA|Add0~46\ = CARRY((!\FD|ULA|Add0~44\ & (\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[22]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[22]~10_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~44\,
	combout => \FD|ULA|Add0~45_combout\,
	cout => \FD|ULA|Add0~46\);

-- Location: LCCOMB_X61_Y22_N12
\FD|ULA|tempAdd[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[22]~44_combout\ = ((\FD|ULA|Add0~45_combout\ $ (\FD|ULA|Add1~45_combout\ $ (!\FD|ULA|tempAdd[21]~43\)))) # (GND)
-- \FD|ULA|tempAdd[22]~45\ = CARRY((\FD|ULA|Add0~45_combout\ & ((\FD|ULA|Add1~45_combout\) # (!\FD|ULA|tempAdd[21]~43\))) # (!\FD|ULA|Add0~45_combout\ & (\FD|ULA|Add1~45_combout\ & !\FD|ULA|tempAdd[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~45_combout\,
	datab => \FD|ULA|Add1~45_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[21]~43\,
	combout => \FD|ULA|tempAdd[22]~44_combout\,
	cout => \FD|ULA|tempAdd[22]~45\);

-- Location: LCCOMB_X60_Y20_N30
\FD|MuxULAMem|C[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[22]~27_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[22]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~550_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|UCULA|Mux3~0_combout\,
	datad => \FD|ULA|tempAdd[22]~44_combout\,
	combout => \FD|MuxULAMem|C[22]~27_combout\);

-- Location: LCCOMB_X60_Y20_N4
\FD|MuxULAMem|C[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(22) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[22]~27_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add1~45_combout\ & ((\FD|ULA|Add0~45_combout\) # (!\FD|MuxULAMem|C[22]~27_combout\))) # (!\FD|ULA|Add1~45_combout\ & 
-- (!\FD|MuxULAMem|C[22]~27_combout\ & \FD|ULA|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add1~45_combout\,
	datac => \FD|MuxULAMem|C[22]~27_combout\,
	datad => \FD|ULA|Add0~45_combout\,
	combout => \FD|MuxULAMem|C\(22));

-- Location: FF_X60_Y20_N13
\FD|BancoReg|ram[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(22),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][22]~q\);

-- Location: LCCOMB_X60_Y20_N26
\FD|muxRtImm|C[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[22]~10_combout\ = (\FD|BancoReg|ram[0][22]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][22]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[22]~10_combout\);

-- Location: LCCOMB_X62_Y20_N14
\FD|ULA|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~47_combout\ = (\FD|ULA|Add0~46\ & (\FD|UCULA|Mux7~0_combout\ $ ((!\FD|muxRtImm|C[23]~9_combout\)))) # (!\FD|ULA|Add0~46\ & ((\FD|UCULA|Mux7~0_combout\ $ (\FD|muxRtImm|C[23]~9_combout\)) # (GND)))
-- \FD|ULA|Add0~48\ = CARRY((\FD|UCULA|Mux7~0_combout\ $ (!\FD|muxRtImm|C[23]~9_combout\)) # (!\FD|ULA|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|muxRtImm|C[23]~9_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~46\,
	combout => \FD|ULA|Add0~47_combout\,
	cout => \FD|ULA|Add0~48\);

-- Location: LCCOMB_X60_Y22_N14
\FD|ULA|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~47_combout\ = (\FD|ULA|Add1~46\ & (\FD|muxRtImm|C[23]~9_combout\ $ ((!\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~46\ & ((\FD|muxRtImm|C[23]~9_combout\ $ (\FD|UCULA|Mux5~0_combout\)) # (GND)))
-- \FD|ULA|Add1~48\ = CARRY((\FD|muxRtImm|C[23]~9_combout\ $ (!\FD|UCULA|Mux5~0_combout\)) # (!\FD|ULA|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[23]~9_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~46\,
	combout => \FD|ULA|Add1~47_combout\,
	cout => \FD|ULA|Add1~48\);

-- Location: LCCOMB_X61_Y22_N14
\FD|ULA|tempAdd[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[23]~46_combout\ = (\FD|ULA|Add1~47_combout\ & ((\FD|ULA|Add0~47_combout\ & (\FD|ULA|tempAdd[22]~45\ & VCC)) # (!\FD|ULA|Add0~47_combout\ & (!\FD|ULA|tempAdd[22]~45\)))) # (!\FD|ULA|Add1~47_combout\ & ((\FD|ULA|Add0~47_combout\ & 
-- (!\FD|ULA|tempAdd[22]~45\)) # (!\FD|ULA|Add0~47_combout\ & ((\FD|ULA|tempAdd[22]~45\) # (GND)))))
-- \FD|ULA|tempAdd[23]~47\ = CARRY((\FD|ULA|Add1~47_combout\ & (!\FD|ULA|Add0~47_combout\ & !\FD|ULA|tempAdd[22]~45\)) # (!\FD|ULA|Add1~47_combout\ & ((!\FD|ULA|tempAdd[22]~45\) # (!\FD|ULA|Add0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~47_combout\,
	datab => \FD|ULA|Add0~47_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[22]~45\,
	combout => \FD|ULA|tempAdd[23]~46_combout\,
	cout => \FD|ULA|tempAdd[23]~47\);

-- Location: LCCOMB_X62_Y22_N10
\FD|MuxULAMem|C[23]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[23]~28_combout\ = (\FD|MuxULAMem|C[19]~19_combout\ & ((\FD|MuxULAMem|C[19]~20_combout\ & (\FD|ULA|tempAdd[23]~46_combout\)) # (!\FD|MuxULAMem|C[19]~20_combout\ & ((\FD|MemDados|ram~549_combout\))))) # (!\FD|MuxULAMem|C[19]~19_combout\ & 
-- (((!\FD|MuxULAMem|C[19]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|tempAdd[23]~46_combout\,
	datab => \FD|MuxULAMem|C[19]~19_combout\,
	datac => \FD|MuxULAMem|C[19]~20_combout\,
	datad => \FD|MemDados|ram~549_combout\,
	combout => \FD|MuxULAMem|C[23]~28_combout\);

-- Location: LCCOMB_X62_Y22_N24
\FD|MuxULAMem|C[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(23) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[23]~28_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~47_combout\ & ((\FD|ULA|Add1~47_combout\) # (!\FD|MuxULAMem|C[23]~28_combout\))) # (!\FD|ULA|Add0~47_combout\ & 
-- (\FD|ULA|Add1~47_combout\ & !\FD|MuxULAMem|C[23]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~47_combout\,
	datab => \FD|ULA|Add1~47_combout\,
	datac => \FD|UCULA|Mux6~0_combout\,
	datad => \FD|MuxULAMem|C[23]~28_combout\,
	combout => \FD|MuxULAMem|C\(23));

-- Location: FF_X61_Y21_N7
\FD|BancoReg|ram[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(23),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][23]~q\);

-- Location: LCCOMB_X61_Y21_N24
\FD|muxRtImm|C[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[23]~9_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][23]~q\,
	combout => \FD|muxRtImm|C[23]~9_combout\);

-- Location: LCCOMB_X62_Y20_N16
\FD|ULA|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~49_combout\ = (\FD|ULA|Add0~48\ & ((\FD|muxRtImm|C[24]~8_combout\ $ (\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~48\ & (\FD|muxRtImm|C[24]~8_combout\ $ (\FD|UCULA|Mux7~0_combout\ $ (VCC))))
-- \FD|ULA|Add0~50\ = CARRY((!\FD|ULA|Add0~48\ & (\FD|muxRtImm|C[24]~8_combout\ $ (\FD|UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[24]~8_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~48\,
	combout => \FD|ULA|Add0~49_combout\,
	cout => \FD|ULA|Add0~50\);

-- Location: LCCOMB_X60_Y22_N16
\FD|ULA|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~49_combout\ = (\FD|ULA|Add1~48\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[24]~8_combout\)))) # (!\FD|ULA|Add1~48\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[24]~8_combout\ $ (VCC))))
-- \FD|ULA|Add1~50\ = CARRY((!\FD|ULA|Add1~48\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[24]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[24]~8_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~48\,
	combout => \FD|ULA|Add1~49_combout\,
	cout => \FD|ULA|Add1~50\);

-- Location: LCCOMB_X61_Y22_N16
\FD|ULA|tempAdd[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[24]~48_combout\ = ((\FD|ULA|Add1~49_combout\ $ (\FD|ULA|Add0~49_combout\ $ (!\FD|ULA|tempAdd[23]~47\)))) # (GND)
-- \FD|ULA|tempAdd[24]~49\ = CARRY((\FD|ULA|Add1~49_combout\ & ((\FD|ULA|Add0~49_combout\) # (!\FD|ULA|tempAdd[23]~47\))) # (!\FD|ULA|Add1~49_combout\ & (\FD|ULA|Add0~49_combout\ & !\FD|ULA|tempAdd[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~49_combout\,
	datab => \FD|ULA|Add0~49_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[23]~47\,
	combout => \FD|ULA|tempAdd[24]~48_combout\,
	cout => \FD|ULA|tempAdd[24]~49\);

-- Location: LCCOMB_X61_Y20_N16
\FD|MuxULAMem|C[24]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[24]~29_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[24]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|InstMem|ram~550_combout\,
	datad => \FD|ULA|tempAdd[24]~48_combout\,
	combout => \FD|MuxULAMem|C[24]~29_combout\);

-- Location: LCCOMB_X61_Y20_N22
\FD|MuxULAMem|C[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(24) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[24]~29_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~49_combout\ & ((\FD|ULA|Add1~49_combout\) # (!\FD|MuxULAMem|C[24]~29_combout\))) # (!\FD|ULA|Add0~49_combout\ & 
-- (\FD|ULA|Add1~49_combout\ & !\FD|MuxULAMem|C[24]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~49_combout\,
	datab => \FD|ULA|Add1~49_combout\,
	datac => \FD|UCULA|Mux6~0_combout\,
	datad => \FD|MuxULAMem|C[24]~29_combout\,
	combout => \FD|MuxULAMem|C\(24));

-- Location: FF_X61_Y20_N1
\FD|BancoReg|ram[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(24),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][24]~q\);

-- Location: LCCOMB_X61_Y20_N6
\FD|muxRtImm|C[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[24]~8_combout\ = (\FD|BancoReg|ram[0][24]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][24]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[24]~8_combout\);

-- Location: LCCOMB_X62_Y20_N18
\FD|ULA|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~51_combout\ = (\FD|ULA|Add0~50\ & (\FD|muxRtImm|C[25]~7_combout\ $ ((!\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~50\ & ((\FD|muxRtImm|C[25]~7_combout\ $ (\FD|UCULA|Mux7~0_combout\)) # (GND)))
-- \FD|ULA|Add0~52\ = CARRY((\FD|muxRtImm|C[25]~7_combout\ $ (!\FD|UCULA|Mux7~0_combout\)) # (!\FD|ULA|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[25]~7_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~50\,
	combout => \FD|ULA|Add0~51_combout\,
	cout => \FD|ULA|Add0~52\);

-- Location: LCCOMB_X60_Y22_N18
\FD|ULA|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~51_combout\ = (\FD|ULA|Add1~50\ & (\FD|muxRtImm|C[25]~7_combout\ $ ((!\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~50\ & ((\FD|muxRtImm|C[25]~7_combout\ $ (\FD|UCULA|Mux5~0_combout\)) # (GND)))
-- \FD|ULA|Add1~52\ = CARRY((\FD|muxRtImm|C[25]~7_combout\ $ (!\FD|UCULA|Mux5~0_combout\)) # (!\FD|ULA|Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[25]~7_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~50\,
	combout => \FD|ULA|Add1~51_combout\,
	cout => \FD|ULA|Add1~52\);

-- Location: LCCOMB_X61_Y22_N18
\FD|ULA|tempAdd[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[25]~50_combout\ = (\FD|ULA|Add0~51_combout\ & ((\FD|ULA|Add1~51_combout\ & (\FD|ULA|tempAdd[24]~49\ & VCC)) # (!\FD|ULA|Add1~51_combout\ & (!\FD|ULA|tempAdd[24]~49\)))) # (!\FD|ULA|Add0~51_combout\ & ((\FD|ULA|Add1~51_combout\ & 
-- (!\FD|ULA|tempAdd[24]~49\)) # (!\FD|ULA|Add1~51_combout\ & ((\FD|ULA|tempAdd[24]~49\) # (GND)))))
-- \FD|ULA|tempAdd[25]~51\ = CARRY((\FD|ULA|Add0~51_combout\ & (!\FD|ULA|Add1~51_combout\ & !\FD|ULA|tempAdd[24]~49\)) # (!\FD|ULA|Add0~51_combout\ & ((!\FD|ULA|tempAdd[24]~49\) # (!\FD|ULA|Add1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~51_combout\,
	datab => \FD|ULA|Add1~51_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[24]~49\,
	combout => \FD|ULA|tempAdd[25]~50_combout\,
	cout => \FD|ULA|tempAdd[25]~51\);

-- Location: LCCOMB_X60_Y20_N6
\FD|MuxULAMem|C[25]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[25]~30_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[25]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~550_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|UCULA|Mux3~0_combout\,
	datad => \FD|ULA|tempAdd[25]~50_combout\,
	combout => \FD|MuxULAMem|C[25]~30_combout\);

-- Location: LCCOMB_X60_Y20_N20
\FD|MuxULAMem|C[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(25) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[25]~30_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~51_combout\ & ((\FD|ULA|Add1~51_combout\) # (!\FD|MuxULAMem|C[25]~30_combout\))) # (!\FD|ULA|Add0~51_combout\ & 
-- (\FD|ULA|Add1~51_combout\ & !\FD|MuxULAMem|C[25]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~51_combout\,
	datac => \FD|ULA|Add1~51_combout\,
	datad => \FD|MuxULAMem|C[25]~30_combout\,
	combout => \FD|MuxULAMem|C\(25));

-- Location: LCCOMB_X60_Y20_N14
\FD|BancoReg|ram[0][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|ram[0][25]~feeder_combout\ = \FD|MuxULAMem|C\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MuxULAMem|C\(25),
	combout => \FD|BancoReg|ram[0][25]~feeder_combout\);

-- Location: FF_X60_Y20_N15
\FD|BancoReg|ram[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|BancoReg|ram[0][25]~feeder_combout\,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][25]~q\);

-- Location: LCCOMB_X61_Y20_N14
\FD|muxRtImm|C[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[25]~7_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][25]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][25]~q\,
	combout => \FD|muxRtImm|C[25]~7_combout\);

-- Location: LCCOMB_X60_Y22_N20
\FD|ULA|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~53_combout\ = (\FD|ULA|Add1~52\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[26]~6_combout\)))) # (!\FD|ULA|Add1~52\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[26]~6_combout\ $ (VCC))))
-- \FD|ULA|Add1~54\ = CARRY((!\FD|ULA|Add1~52\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[26]~6_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~52\,
	combout => \FD|ULA|Add1~53_combout\,
	cout => \FD|ULA|Add1~54\);

-- Location: LCCOMB_X62_Y20_N20
\FD|ULA|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~53_combout\ = (\FD|ULA|Add0~52\ & ((\FD|muxRtImm|C[26]~6_combout\ $ (\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~52\ & (\FD|muxRtImm|C[26]~6_combout\ $ (\FD|UCULA|Mux7~0_combout\ $ (VCC))))
-- \FD|ULA|Add0~54\ = CARRY((!\FD|ULA|Add0~52\ & (\FD|muxRtImm|C[26]~6_combout\ $ (\FD|UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[26]~6_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~52\,
	combout => \FD|ULA|Add0~53_combout\,
	cout => \FD|ULA|Add0~54\);

-- Location: LCCOMB_X61_Y22_N20
\FD|ULA|tempAdd[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[26]~52_combout\ = ((\FD|ULA|Add1~53_combout\ $ (\FD|ULA|Add0~53_combout\ $ (!\FD|ULA|tempAdd[25]~51\)))) # (GND)
-- \FD|ULA|tempAdd[26]~53\ = CARRY((\FD|ULA|Add1~53_combout\ & ((\FD|ULA|Add0~53_combout\) # (!\FD|ULA|tempAdd[25]~51\))) # (!\FD|ULA|Add1~53_combout\ & (\FD|ULA|Add0~53_combout\ & !\FD|ULA|tempAdd[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~53_combout\,
	datab => \FD|ULA|Add0~53_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[25]~51\,
	combout => \FD|ULA|tempAdd[26]~52_combout\,
	cout => \FD|ULA|tempAdd[26]~53\);

-- Location: LCCOMB_X63_Y22_N2
\FD|MuxULAMem|C[26]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[26]~31_combout\ = (\FD|MuxULAMem|C[19]~19_combout\ & ((\FD|MuxULAMem|C[19]~20_combout\ & ((\FD|ULA|tempAdd[26]~52_combout\))) # (!\FD|MuxULAMem|C[19]~20_combout\ & (\FD|MemDados|ram~549_combout\)))) # (!\FD|MuxULAMem|C[19]~19_combout\ & 
-- (!\FD|MuxULAMem|C[19]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxULAMem|C[19]~19_combout\,
	datab => \FD|MuxULAMem|C[19]~20_combout\,
	datac => \FD|MemDados|ram~549_combout\,
	datad => \FD|ULA|tempAdd[26]~52_combout\,
	combout => \FD|MuxULAMem|C[26]~31_combout\);

-- Location: LCCOMB_X63_Y22_N8
\FD|MuxULAMem|C[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(26) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[26]~31_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add1~53_combout\ & ((\FD|ULA|Add0~53_combout\) # (!\FD|MuxULAMem|C[26]~31_combout\))) # (!\FD|ULA|Add1~53_combout\ & 
-- (\FD|ULA|Add0~53_combout\ & !\FD|MuxULAMem|C[26]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~53_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add0~53_combout\,
	datad => \FD|MuxULAMem|C[26]~31_combout\,
	combout => \FD|MuxULAMem|C\(26));

-- Location: FF_X63_Y22_N13
\FD|BancoReg|ram[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(26),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][26]~q\);

-- Location: LCCOMB_X63_Y22_N22
\FD|muxRtImm|C[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[26]~6_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][26]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][26]~q\,
	combout => \FD|muxRtImm|C[26]~6_combout\);

-- Location: LCCOMB_X60_Y22_N22
\FD|ULA|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~55_combout\ = (\FD|ULA|Add1~54\ & (\FD|muxRtImm|C[27]~5_combout\ $ ((!\FD|UCULA|Mux5~0_combout\)))) # (!\FD|ULA|Add1~54\ & ((\FD|muxRtImm|C[27]~5_combout\ $ (\FD|UCULA|Mux5~0_combout\)) # (GND)))
-- \FD|ULA|Add1~56\ = CARRY((\FD|muxRtImm|C[27]~5_combout\ $ (!\FD|UCULA|Mux5~0_combout\)) # (!\FD|ULA|Add1~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[27]~5_combout\,
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~54\,
	combout => \FD|ULA|Add1~55_combout\,
	cout => \FD|ULA|Add1~56\);

-- Location: LCCOMB_X62_Y20_N22
\FD|ULA|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~55_combout\ = (\FD|ULA|Add0~54\ & (\FD|muxRtImm|C[27]~5_combout\ $ ((!\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~54\ & ((\FD|muxRtImm|C[27]~5_combout\ $ (\FD|UCULA|Mux7~0_combout\)) # (GND)))
-- \FD|ULA|Add0~56\ = CARRY((\FD|muxRtImm|C[27]~5_combout\ $ (!\FD|UCULA|Mux7~0_combout\)) # (!\FD|ULA|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[27]~5_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~54\,
	combout => \FD|ULA|Add0~55_combout\,
	cout => \FD|ULA|Add0~56\);

-- Location: LCCOMB_X61_Y22_N22
\FD|ULA|tempAdd[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[27]~54_combout\ = (\FD|ULA|Add1~55_combout\ & ((\FD|ULA|Add0~55_combout\ & (\FD|ULA|tempAdd[26]~53\ & VCC)) # (!\FD|ULA|Add0~55_combout\ & (!\FD|ULA|tempAdd[26]~53\)))) # (!\FD|ULA|Add1~55_combout\ & ((\FD|ULA|Add0~55_combout\ & 
-- (!\FD|ULA|tempAdd[26]~53\)) # (!\FD|ULA|Add0~55_combout\ & ((\FD|ULA|tempAdd[26]~53\) # (GND)))))
-- \FD|ULA|tempAdd[27]~55\ = CARRY((\FD|ULA|Add1~55_combout\ & (!\FD|ULA|Add0~55_combout\ & !\FD|ULA|tempAdd[26]~53\)) # (!\FD|ULA|Add1~55_combout\ & ((!\FD|ULA|tempAdd[26]~53\) # (!\FD|ULA|Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~55_combout\,
	datab => \FD|ULA|Add0~55_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[26]~53\,
	combout => \FD|ULA|tempAdd[27]~54_combout\,
	cout => \FD|ULA|tempAdd[27]~55\);

-- Location: LCCOMB_X63_Y22_N6
\FD|MuxULAMem|C[27]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[27]~32_combout\ = (\FD|MuxULAMem|C[19]~19_combout\ & ((\FD|MuxULAMem|C[19]~20_combout\ & ((\FD|ULA|tempAdd[27]~54_combout\))) # (!\FD|MuxULAMem|C[19]~20_combout\ & (\FD|MemDados|ram~549_combout\)))) # (!\FD|MuxULAMem|C[19]~19_combout\ & 
-- (!\FD|MuxULAMem|C[19]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxULAMem|C[19]~19_combout\,
	datab => \FD|MuxULAMem|C[19]~20_combout\,
	datac => \FD|MemDados|ram~549_combout\,
	datad => \FD|ULA|tempAdd[27]~54_combout\,
	combout => \FD|MuxULAMem|C[27]~32_combout\);

-- Location: LCCOMB_X63_Y22_N4
\FD|MuxULAMem|C[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(27) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[27]~32_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add1~55_combout\ & ((\FD|ULA|Add0~55_combout\) # (!\FD|MuxULAMem|C[27]~32_combout\))) # (!\FD|ULA|Add1~55_combout\ & 
-- (\FD|ULA|Add0~55_combout\ & !\FD|MuxULAMem|C[27]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~55_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add0~55_combout\,
	datad => \FD|MuxULAMem|C[27]~32_combout\,
	combout => \FD|MuxULAMem|C\(27));

-- Location: FF_X63_Y22_N1
\FD|BancoReg|ram[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(27),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][27]~q\);

-- Location: LCCOMB_X63_Y22_N18
\FD|muxRtImm|C[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[27]~5_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][27]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][27]~q\,
	combout => \FD|muxRtImm|C[27]~5_combout\);

-- Location: LCCOMB_X62_Y20_N24
\FD|ULA|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~57_combout\ = (\FD|ULA|Add0~56\ & ((\FD|muxRtImm|C[28]~4_combout\ $ (\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~56\ & (\FD|muxRtImm|C[28]~4_combout\ $ (\FD|UCULA|Mux7~0_combout\ $ (VCC))))
-- \FD|ULA|Add0~58\ = CARRY((!\FD|ULA|Add0~56\ & (\FD|muxRtImm|C[28]~4_combout\ $ (\FD|UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[28]~4_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~56\,
	combout => \FD|ULA|Add0~57_combout\,
	cout => \FD|ULA|Add0~58\);

-- Location: LCCOMB_X60_Y22_N24
\FD|ULA|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~57_combout\ = (\FD|ULA|Add1~56\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[28]~4_combout\)))) # (!\FD|ULA|Add1~56\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[28]~4_combout\ $ (VCC))))
-- \FD|ULA|Add1~58\ = CARRY((!\FD|ULA|Add1~56\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[28]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[28]~4_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~56\,
	combout => \FD|ULA|Add1~57_combout\,
	cout => \FD|ULA|Add1~58\);

-- Location: LCCOMB_X61_Y22_N24
\FD|ULA|tempAdd[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[28]~56_combout\ = ((\FD|ULA|Add1~57_combout\ $ (\FD|ULA|Add0~57_combout\ $ (!\FD|ULA|tempAdd[27]~55\)))) # (GND)
-- \FD|ULA|tempAdd[28]~57\ = CARRY((\FD|ULA|Add1~57_combout\ & ((\FD|ULA|Add0~57_combout\) # (!\FD|ULA|tempAdd[27]~55\))) # (!\FD|ULA|Add1~57_combout\ & (\FD|ULA|Add0~57_combout\ & !\FD|ULA|tempAdd[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~57_combout\,
	datab => \FD|ULA|Add0~57_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[27]~55\,
	combout => \FD|ULA|tempAdd[28]~56_combout\,
	cout => \FD|ULA|tempAdd[28]~57\);

-- Location: LCCOMB_X63_Y20_N6
\FD|MuxULAMem|C[28]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[28]~33_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[28]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|InstMem|ram~550_combout\,
	datad => \FD|ULA|tempAdd[28]~56_combout\,
	combout => \FD|MuxULAMem|C[28]~33_combout\);

-- Location: LCCOMB_X63_Y20_N4
\FD|MuxULAMem|C[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(28) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[28]~33_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~57_combout\ & ((\FD|ULA|Add1~57_combout\) # (!\FD|MuxULAMem|C[28]~33_combout\))) # (!\FD|ULA|Add0~57_combout\ & 
-- (\FD|ULA|Add1~57_combout\ & !\FD|MuxULAMem|C[28]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~57_combout\,
	datac => \FD|ULA|Add1~57_combout\,
	datad => \FD|MuxULAMem|C[28]~33_combout\,
	combout => \FD|MuxULAMem|C\(28));

-- Location: FF_X63_Y20_N29
\FD|BancoReg|ram[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(28),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][28]~q\);

-- Location: LCCOMB_X63_Y20_N22
\FD|muxRtImm|C[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[28]~4_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][28]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][28]~q\,
	combout => \FD|muxRtImm|C[28]~4_combout\);

-- Location: LCCOMB_X62_Y20_N26
\FD|ULA|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~59_combout\ = (\FD|ULA|Add0~58\ & (\FD|muxRtImm|C[29]~3_combout\ $ ((!\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~58\ & ((\FD|muxRtImm|C[29]~3_combout\ $ (\FD|UCULA|Mux7~0_combout\)) # (GND)))
-- \FD|ULA|Add0~60\ = CARRY((\FD|muxRtImm|C[29]~3_combout\ $ (!\FD|UCULA|Mux7~0_combout\)) # (!\FD|ULA|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[29]~3_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~58\,
	combout => \FD|ULA|Add0~59_combout\,
	cout => \FD|ULA|Add0~60\);

-- Location: LCCOMB_X60_Y22_N26
\FD|ULA|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~59_combout\ = (\FD|ULA|Add1~58\ & (\FD|UCULA|Mux5~0_combout\ $ ((!\FD|muxRtImm|C[29]~3_combout\)))) # (!\FD|ULA|Add1~58\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[29]~3_combout\)) # (GND)))
-- \FD|ULA|Add1~60\ = CARRY((\FD|UCULA|Mux5~0_combout\ $ (!\FD|muxRtImm|C[29]~3_combout\)) # (!\FD|ULA|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[29]~3_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~58\,
	combout => \FD|ULA|Add1~59_combout\,
	cout => \FD|ULA|Add1~60\);

-- Location: LCCOMB_X61_Y22_N26
\FD|ULA|tempAdd[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[29]~58_combout\ = (\FD|ULA|Add1~59_combout\ & ((\FD|ULA|Add0~59_combout\ & (\FD|ULA|tempAdd[28]~57\ & VCC)) # (!\FD|ULA|Add0~59_combout\ & (!\FD|ULA|tempAdd[28]~57\)))) # (!\FD|ULA|Add1~59_combout\ & ((\FD|ULA|Add0~59_combout\ & 
-- (!\FD|ULA|tempAdd[28]~57\)) # (!\FD|ULA|Add0~59_combout\ & ((\FD|ULA|tempAdd[28]~57\) # (GND)))))
-- \FD|ULA|tempAdd[29]~59\ = CARRY((\FD|ULA|Add1~59_combout\ & (!\FD|ULA|Add0~59_combout\ & !\FD|ULA|tempAdd[28]~57\)) # (!\FD|ULA|Add1~59_combout\ & ((!\FD|ULA|tempAdd[28]~57\) # (!\FD|ULA|Add0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~59_combout\,
	datab => \FD|ULA|Add0~59_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[28]~57\,
	combout => \FD|ULA|tempAdd[29]~58_combout\,
	cout => \FD|ULA|tempAdd[29]~59\);

-- Location: LCCOMB_X60_Y21_N0
\FD|MuxULAMem|C[29]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[29]~34_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[29]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|ULA|tempAdd[29]~58_combout\,
	datad => \FD|InstMem|ram~550_combout\,
	combout => \FD|MuxULAMem|C[29]~34_combout\);

-- Location: LCCOMB_X60_Y21_N26
\FD|MuxULAMem|C[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(29) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[29]~34_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~59_combout\ & ((\FD|ULA|Add1~59_combout\) # (!\FD|MuxULAMem|C[29]~34_combout\))) # (!\FD|ULA|Add0~59_combout\ & 
-- (\FD|ULA|Add1~59_combout\ & !\FD|MuxULAMem|C[29]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~59_combout\,
	datac => \FD|ULA|Add1~59_combout\,
	datad => \FD|MuxULAMem|C[29]~34_combout\,
	combout => \FD|MuxULAMem|C\(29));

-- Location: FF_X60_Y21_N17
\FD|BancoReg|ram[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(29),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][29]~q\);

-- Location: LCCOMB_X60_Y21_N22
\FD|muxRtImm|C[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[29]~3_combout\ = (\FD|BancoReg|ram[0][29]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][29]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|muxRtImm|C[29]~3_combout\);

-- Location: LCCOMB_X62_Y20_N28
\FD|ULA|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~61_combout\ = (\FD|ULA|Add0~60\ & ((\FD|muxRtImm|C[30]~2_combout\ $ (\FD|UCULA|Mux7~0_combout\)))) # (!\FD|ULA|Add0~60\ & (\FD|muxRtImm|C[30]~2_combout\ $ (\FD|UCULA|Mux7~0_combout\ $ (VCC))))
-- \FD|ULA|Add0~62\ = CARRY((!\FD|ULA|Add0~60\ & (\FD|muxRtImm|C[30]~2_combout\ $ (\FD|UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|muxRtImm|C[30]~2_combout\,
	datab => \FD|UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add0~60\,
	combout => \FD|ULA|Add0~61_combout\,
	cout => \FD|ULA|Add0~62\);

-- Location: LCCOMB_X60_Y22_N28
\FD|ULA|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~61_combout\ = (\FD|ULA|Add1~60\ & ((\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[30]~2_combout\)))) # (!\FD|ULA|Add1~60\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[30]~2_combout\ $ (VCC))))
-- \FD|ULA|Add1~62\ = CARRY((!\FD|ULA|Add1~60\ & (\FD|UCULA|Mux5~0_combout\ $ (\FD|muxRtImm|C[30]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux5~0_combout\,
	datab => \FD|muxRtImm|C[30]~2_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~60\,
	combout => \FD|ULA|Add1~61_combout\,
	cout => \FD|ULA|Add1~62\);

-- Location: LCCOMB_X61_Y22_N28
\FD|ULA|tempAdd[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[30]~60_combout\ = ((\FD|ULA|Add0~61_combout\ $ (\FD|ULA|Add1~61_combout\ $ (!\FD|ULA|tempAdd[29]~59\)))) # (GND)
-- \FD|ULA|tempAdd[30]~61\ = CARRY((\FD|ULA|Add0~61_combout\ & ((\FD|ULA|Add1~61_combout\) # (!\FD|ULA|tempAdd[29]~59\))) # (!\FD|ULA|Add0~61_combout\ & (\FD|ULA|Add1~61_combout\ & !\FD|ULA|tempAdd[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~61_combout\,
	datab => \FD|ULA|Add1~61_combout\,
	datad => VCC,
	cin => \FD|ULA|tempAdd[29]~59\,
	combout => \FD|ULA|tempAdd[30]~60_combout\,
	cout => \FD|ULA|tempAdd[30]~61\);

-- Location: LCCOMB_X61_Y20_N20
\FD|MuxULAMem|C[30]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[30]~35_combout\ = (!\FD|UCULA|Mux3~0_combout\ & ((\FD|InstMem|ram~550_combout\ & (\FD|PC|DOUT\(3))) # (!\FD|InstMem|ram~550_combout\ & ((\FD|ULA|tempAdd[30]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux3~0_combout\,
	datab => \FD|PC|DOUT\(3),
	datac => \FD|InstMem|ram~550_combout\,
	datad => \FD|ULA|tempAdd[30]~60_combout\,
	combout => \FD|MuxULAMem|C[30]~35_combout\);

-- Location: LCCOMB_X61_Y20_N10
\FD|MuxULAMem|C[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(30) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[30]~35_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~61_combout\ & ((\FD|ULA|Add1~61_combout\) # (!\FD|MuxULAMem|C[30]~35_combout\))) # (!\FD|ULA|Add0~61_combout\ & 
-- (\FD|ULA|Add1~61_combout\ & !\FD|MuxULAMem|C[30]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~61_combout\,
	datab => \FD|ULA|Add1~61_combout\,
	datac => \FD|UCULA|Mux6~0_combout\,
	datad => \FD|MuxULAMem|C[30]~35_combout\,
	combout => \FD|MuxULAMem|C\(30));

-- Location: FF_X61_Y20_N25
\FD|BancoReg|ram[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(30),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][30]~q\);

-- Location: LCCOMB_X60_Y20_N8
\FD|muxRtImm|C[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[30]~2_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][30]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datac => \FD|BancoReg|ram[0][30]~q\,
	combout => \FD|muxRtImm|C[30]~2_combout\);

-- Location: LCCOMB_X62_Y20_N30
\FD|ULA|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~63_combout\ = \FD|UCULA|Mux7~0_combout\ $ (\FD|ULA|Add0~62\ $ (\FD|muxRtImm|C[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datad => \FD|muxRtImm|C[31]~1_combout\,
	cin => \FD|ULA|Add0~62\,
	combout => \FD|ULA|Add0~63_combout\);

-- Location: LCCOMB_X61_Y22_N30
\FD|ULA|tempAdd[32]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|tempAdd[32]~62_combout\ = \FD|ULA|Add1~63_combout\ $ (\FD|ULA|tempAdd[30]~61\ $ (\FD|ULA|Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Add1~63_combout\,
	datad => \FD|ULA|Add0~63_combout\,
	cin => \FD|ULA|tempAdd[30]~61\,
	combout => \FD|ULA|tempAdd[32]~62_combout\);

-- Location: LCCOMB_X62_Y22_N2
\FD|MuxULAMem|C[31]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[31]~36_combout\ = (\FD|MuxULAMem|C[19]~20_combout\ & (\FD|ULA|tempAdd[32]~62_combout\ & (\FD|MuxULAMem|C[19]~19_combout\))) # (!\FD|MuxULAMem|C[19]~20_combout\ & (((\FD|MemDados|ram~549_combout\) # (!\FD|MuxULAMem|C[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxULAMem|C[19]~20_combout\,
	datab => \FD|ULA|tempAdd[32]~62_combout\,
	datac => \FD|MuxULAMem|C[19]~19_combout\,
	datad => \FD|MemDados|ram~549_combout\,
	combout => \FD|MuxULAMem|C[31]~36_combout\);

-- Location: LCCOMB_X62_Y22_N8
\FD|MuxULAMem|C[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C\(31) = (\FD|UCULA|Mux6~0_combout\ & (((\FD|MuxULAMem|C[31]~36_combout\)))) # (!\FD|UCULA|Mux6~0_combout\ & ((\FD|ULA|Add0~63_combout\ & ((\FD|ULA|Add1~63_combout\) # (!\FD|MuxULAMem|C[31]~36_combout\))) # (!\FD|ULA|Add0~63_combout\ & 
-- (\FD|ULA|Add1~63_combout\ & !\FD|MuxULAMem|C[31]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|Add0~63_combout\,
	datac => \FD|ULA|Add1~63_combout\,
	datad => \FD|MuxULAMem|C[31]~36_combout\,
	combout => \FD|MuxULAMem|C\(31));

-- Location: FF_X62_Y22_N13
\FD|BancoReg|ram[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(31),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][31]~q\);

-- Location: LCCOMB_X63_Y22_N10
\FD|muxRtImm|C[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|muxRtImm|C[31]~1_combout\ = (!\FD|InstMem|ram~549_combout\ & \FD|BancoReg|ram[0][31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][31]~q\,
	combout => \FD|muxRtImm|C[31]~1_combout\);

-- Location: LCCOMB_X60_Y22_N30
\FD|ULA|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~63_combout\ = \FD|UCULA|Mux5~0_combout\ $ (\FD|ULA|Add1~62\ $ (\FD|muxRtImm|C[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|Mux5~0_combout\,
	datad => \FD|muxRtImm|C[31]~1_combout\,
	cin => \FD|ULA|Add1~62\,
	combout => \FD|ULA|Add1~63_combout\);

-- Location: LCCOMB_X62_Y22_N12
\FD|ULA|sltIn[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|sltIn[0]~0_combout\ = (\FD|ULA|Add1~63_combout\ & ((\FD|ULA|Add0~63_combout\) # (\FD|ULA|tempAdd[32]~62_combout\))) # (!\FD|ULA|Add1~63_combout\ & (\FD|ULA|Add0~63_combout\ & \FD|ULA|tempAdd[32]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~63_combout\,
	datab => \FD|ULA|Add0~63_combout\,
	datad => \FD|ULA|tempAdd[32]~62_combout\,
	combout => \FD|ULA|sltIn[0]~0_combout\);

-- Location: LCCOMB_X62_Y22_N18
\FD|MemDados|ram~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MemDados|ram~551_combout\ = (\FD|UCULA|Mux6~0_combout\ & ((\FD|MemDados|ram~550_combout\ & (\FD|ULA|tempAdd[0]~0_combout\)) # (!\FD|MemDados|ram~550_combout\ & ((\FD|ULA|sltIn[0]~0_combout\))))) # (!\FD|UCULA|Mux6~0_combout\ & 
-- (((\FD|MemDados|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux6~0_combout\,
	datab => \FD|ULA|tempAdd[0]~0_combout\,
	datac => \FD|MemDados|ram~550_combout\,
	datad => \FD|ULA|sltIn[0]~0_combout\,
	combout => \FD|MemDados|ram~551_combout\);

-- Location: LCCOMB_X62_Y22_N20
\FD|MuxULAMem|C[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[2]~4_combout\ = (\FD|InstMem|ram~549_combout\ & (((\FD|MuxULAMem|C[1]~2_combout\ & !\FD|MemDados|ram~551_combout\)))) # (!\FD|InstMem|ram~549_combout\ & ((\FD|ULA|Mux29~1_combout\) # ((\FD|MuxULAMem|C[1]~2_combout\ & 
-- !\FD|MemDados|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|ULA|Mux29~1_combout\,
	datac => \FD|MuxULAMem|C[1]~2_combout\,
	datad => \FD|MemDados|ram~551_combout\,
	combout => \FD|MuxULAMem|C[2]~4_combout\);

-- Location: FF_X62_Y22_N21
\FD|BancoReg|ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C[2]~4_combout\,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][2]~q\);

-- Location: LCCOMB_X63_Y21_N24
\FD|BancoReg|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux29~0_combout\ = (\FD|BancoReg|ram[0][2]~q\) # (\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BancoReg|ram[0][2]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux29~0_combout\);

-- Location: LCCOMB_X62_Y23_N2
\FD|ULA|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~0_combout\ = (!\FD|UCULA|Mux6~0_combout\ & ((\FD|UCULA|Mux7~0_combout\ & ((\FD|ULA|Add1~5_combout\) # (\FD|ULA|Add0~5_combout\))) # (!\FD|UCULA|Mux7~0_combout\ & (\FD|ULA|Add1~5_combout\ & \FD|ULA|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add1~5_combout\,
	datad => \FD|ULA|Add0~5_combout\,
	combout => \FD|ULA|Mux29~0_combout\);

-- Location: LCCOMB_X62_Y23_N24
\FD|ULA|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~1_combout\ = (\FD|ULA|Mux29~0_combout\) # ((!\FD|UCULA|Mux7~0_combout\ & (\FD|UCULA|Mux6~0_combout\ & \FD|ULA|tempAdd[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|tempAdd[2]~4_combout\,
	datad => \FD|ULA|Mux29~0_combout\,
	combout => \FD|ULA|Mux29~1_combout\);

-- Location: LCCOMB_X62_Y23_N28
\FD|MuxULAMem|C[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[1]~2_combout\ = (\FD|InstMem|ram~549_combout\ & (!\FD|ULA|Mux29~1_combout\ & (!\FD|ULA|Mux30~1_combout\ & \FD|ULA|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|ULA|Mux29~1_combout\,
	datac => \FD|ULA|Mux30~1_combout\,
	datad => \FD|ULA|Mux28~1_combout\,
	combout => \FD|MuxULAMem|C[1]~2_combout\);

-- Location: LCCOMB_X62_Y23_N14
\FD|MuxULAMem|C[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[1]~3_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|MuxULAMem|C[1]~2_combout\ & ((\FD|MemDados|ram~551_combout\)))) # (!\FD|InstMem|ram~549_combout\ & ((\FD|ULA|Mux30~1_combout\) # ((\FD|MuxULAMem|C[1]~2_combout\ & 
-- \FD|MemDados|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|MuxULAMem|C[1]~2_combout\,
	datac => \FD|ULA|Mux30~1_combout\,
	datad => \FD|MemDados|ram~551_combout\,
	combout => \FD|MuxULAMem|C[1]~3_combout\);

-- Location: FF_X62_Y23_N1
\FD|BancoReg|ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C[1]~3_combout\,
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][1]~q\);

-- Location: LCCOMB_X62_Y23_N16
\FD|BancoReg|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux30~0_combout\ = (\FD|BancoReg|ram[0][1]~q\ & !\FD|InstMem|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][1]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux30~0_combout\);

-- Location: LCCOMB_X62_Y23_N26
\FD|ULA|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~0_combout\ = (!\FD|UCULA|Mux6~0_combout\ & ((\FD|UCULA|Mux7~0_combout\ & ((\FD|ULA|Add1~3_combout\) # (\FD|ULA|Add0~3_combout\))) # (!\FD|UCULA|Mux7~0_combout\ & (\FD|ULA|Add1~3_combout\ & \FD|ULA|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Add1~3_combout\,
	datad => \FD|ULA|Add0~3_combout\,
	combout => \FD|ULA|Mux30~0_combout\);

-- Location: LCCOMB_X62_Y23_N8
\FD|ULA|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~1_combout\ = (\FD|ULA|Mux30~0_combout\) # ((!\FD|UCULA|Mux7~0_combout\ & (\FD|UCULA|Mux6~0_combout\ & \FD|ULA|tempAdd[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|Mux7~0_combout\,
	datab => \FD|UCULA|Mux6~0_combout\,
	datac => \FD|ULA|Mux30~0_combout\,
	datad => \FD|ULA|tempAdd[1]~2_combout\,
	combout => \FD|ULA|Mux30~1_combout\);

-- Location: LCCOMB_X62_Y22_N6
\FD|MemDados|ram~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MemDados|ram~549_combout\ = (!\FD|ULA|Mux30~1_combout\ & (!\FD|ULA|Mux29~1_combout\ & (!\FD|ULA|Mux28~1_combout\ & !\FD|MemDados|ram~551_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~1_combout\,
	datab => \FD|ULA|Mux29~1_combout\,
	datac => \FD|ULA|Mux28~1_combout\,
	datad => \FD|MemDados|ram~551_combout\,
	combout => \FD|MemDados|ram~549_combout\);

-- Location: LCCOMB_X62_Y22_N26
\FD|MuxULAMem|C[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxULAMem|C[0]~1_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|MemDados|ram~549_combout\) # ((\FD|MuxULAMem|C[3]~0_combout\ & !\FD|MemDados|ram~551_combout\)))) # (!\FD|InstMem|ram~549_combout\ & (((\FD|MuxULAMem|C[3]~0_combout\) # 
-- (\FD|MemDados|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MemDados|ram~549_combout\,
	datab => \FD|InstMem|ram~549_combout\,
	datac => \FD|MuxULAMem|C[3]~0_combout\,
	datad => \FD|MemDados|ram~551_combout\,
	combout => \FD|MuxULAMem|C[0]~1_combout\);

-- Location: FF_X62_Y22_N27
\FD|BancoReg|ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C[0]~1_combout\,
	ena => \FD|BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[0][0]~q\);

-- Location: LCCOMB_X62_Y19_N18
\FD|BancoReg|Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux95~1_combout\ = (regTemp(0) & ((regTemp(3) $ (regTemp(1))))) # (!regTemp(0) & (\FD|BancoReg|ram[0][0]~q\ & (!regTemp(3) & !regTemp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(0),
	datab => \FD|BancoReg|ram[0][0]~q\,
	datac => regTemp(3),
	datad => regTemp(1),
	combout => \FD|BancoReg|Mux95~1_combout\);

-- Location: LCCOMB_X62_Y19_N8
\FD|BancoReg|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux95~0_combout\ = (!regTemp(1) & (!regTemp(3) & regTemp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(1),
	datab => regTemp(3),
	datac => regTemp(0),
	combout => \FD|BancoReg|Mux95~0_combout\);

-- Location: LCCOMB_X62_Y22_N4
\FD|BancoReg|ram[5][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|ram[5][0]~0_combout\ = !\FD|MuxULAMem|C[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MuxULAMem|C[0]~1_combout\,
	combout => \FD|BancoReg|ram[5][0]~0_combout\);

-- Location: LCCOMB_X63_Y22_N28
\FD|BancoReg|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Decoder0~0_combout\ = (!\FD|PC|DOUT\(0) & (!\FD|PC|DOUT\(1) & (!\FD|PC|DOUT\(3) & !\FD|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|DOUT\(0),
	datab => \FD|PC|DOUT\(1),
	datac => \FD|PC|DOUT\(3),
	datad => \FD|PC|DOUT\(2),
	combout => \FD|BancoReg|Decoder0~0_combout\);

-- Location: FF_X62_Y22_N5
\FD|BancoReg|ram[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|BancoReg|ram[5][0]~0_combout\,
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][0]~q\);

-- Location: LCCOMB_X62_Y19_N24
\FD|BancoReg|Mux95~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux95~2_combout\ = (regTemp(2) & (!\FD|BancoReg|Mux95~1_combout\ & (\FD|BancoReg|Mux95~0_combout\ & !\FD|BancoReg|ram[5][0]~q\))) # (!regTemp(2) & (\FD|BancoReg|Mux95~1_combout\ $ ((\FD|BancoReg|Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(2),
	datab => \FD|BancoReg|Mux95~1_combout\,
	datac => \FD|BancoReg|Mux95~0_combout\,
	datad => \FD|BancoReg|ram[5][0]~q\,
	combout => \FD|BancoReg|Mux95~2_combout\);

-- Location: FF_X62_Y23_N15
\FD|BancoReg|ram[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C[1]~3_combout\,
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][1]~q\);

-- Location: LCCOMB_X62_Y19_N26
\FD|BancoReg|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux94~0_combout\ = (regTemp(0) & (((\FD|BancoReg|ram[5][1]~q\ & regTemp(2))))) # (!regTemp(0) & (\FD|BancoReg|ram[0][1]~q\ & ((!regTemp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(0),
	datab => \FD|BancoReg|ram[0][1]~q\,
	datac => \FD|BancoReg|ram[5][1]~q\,
	datad => regTemp(2),
	combout => \FD|BancoReg|Mux94~0_combout\);

-- Location: LCCOMB_X62_Y19_N12
\FD|BancoReg|Mux94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux94~1_combout\ = (regTemp(3) & (!regTemp(2) & ((!regTemp(1))))) # (!regTemp(3) & ((regTemp(1) & (!regTemp(2))) # (!regTemp(1) & ((\FD|BancoReg|Mux94~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(2),
	datab => regTemp(3),
	datac => \FD|BancoReg|Mux94~0_combout\,
	datad => regTemp(1),
	combout => \FD|BancoReg|Mux94~1_combout\);

-- Location: LCCOMB_X62_Y22_N30
\FD|BancoReg|ram[5][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|ram[5][2]~1_combout\ = !\FD|MuxULAMem|C[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|MuxULAMem|C[2]~4_combout\,
	combout => \FD|BancoReg|ram[5][2]~1_combout\);

-- Location: FF_X62_Y22_N31
\FD|BancoReg|ram[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|BancoReg|ram[5][2]~1_combout\,
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][2]~q\);

-- Location: LCCOMB_X62_Y19_N2
\FD|BancoReg|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux93~0_combout\ = (regTemp(0) & (!\FD|BancoReg|ram[5][2]~q\ & ((regTemp(2))))) # (!regTemp(0) & (((\FD|BancoReg|ram[0][2]~q\) # (regTemp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(0),
	datab => \FD|BancoReg|ram[5][2]~q\,
	datac => \FD|BancoReg|ram[0][2]~q\,
	datad => regTemp(2),
	combout => \FD|BancoReg|Mux93~0_combout\);

-- Location: LCCOMB_X62_Y19_N0
\FD|BancoReg|Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux93~1_combout\ = (!regTemp(1) & ((regTemp(3) & (!regTemp(2))) # (!regTemp(3) & ((\FD|BancoReg|Mux93~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regTemp(2),
	datab => \FD|BancoReg|Mux93~0_combout\,
	datac => regTemp(3),
	datad => regTemp(1),
	combout => \FD|BancoReg|Mux93~1_combout\);

-- Location: LCCOMB_X65_Y20_N16
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M9K_X64_Y20_N0
\FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fluxoDeDadosC:FD|bancoRegistradores:BancoReg|altsyncram:ram_rtl_0|altsyncram_20d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 29,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 29,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \ALT_INV_key[0]~inputclkctrl_outclk\,
	clk1 => \key[3]~inputclkctrl_outclk\,
	portadatain => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BancoReg|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X0_Y36_N15
\key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: CLKCTRL_G4
\key[2]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key[2]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key[2]~inputclkctrl_outclk\);

-- Location: LCCOMB_X62_Y19_N10
\FD|BancoReg|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux63~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((!\FD|BancoReg|ram[5][0]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][0]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[5][0]~q\,
	combout => \FD|BancoReg|Mux63~0_combout\);

-- Location: FF_X65_Y19_N1
\memTemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \memTemp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(0));

-- Location: LCCOMB_X65_Y19_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = memTemp(0) $ (VCC)
-- \Add1~1\ = CARRY(memTemp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memTemp(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X65_Y19_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (memTemp(1) & (!\Add1~1\)) # (!memTemp(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!memTemp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X66_Y19_N12
\memTemp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memTemp~1_combout\ = (\Add1~2_combout\ & !\Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	datad => \Equal1~9_combout\,
	combout => \memTemp~1_combout\);

-- Location: FF_X65_Y19_N3
\memTemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	asdata => \memTemp~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(1));

-- Location: LCCOMB_X65_Y19_N6
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (memTemp(2) & (\Add1~3\ $ (GND))) # (!memTemp(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((memTemp(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X65_Y19_N7
\memTemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(2));

-- Location: LCCOMB_X65_Y19_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (memTemp(3) & (!\Add1~5\)) # (!memTemp(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!memTemp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X66_Y19_N10
\memTemp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \memTemp~2_combout\ = (\Add1~6_combout\ & !\Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \Equal1~9_combout\,
	combout => \memTemp~2_combout\);

-- Location: FF_X65_Y19_N5
\memTemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	asdata => \memTemp~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(3));

-- Location: LCCOMB_X65_Y19_N10
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (memTemp(4) & (\Add1~7\ $ (GND))) # (!memTemp(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((memTemp(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X65_Y19_N11
\memTemp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(4));

-- Location: LCCOMB_X65_Y19_N12
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (memTemp(5) & (!\Add1~9\)) # (!memTemp(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!memTemp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X65_Y19_N13
\memTemp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(5));

-- Location: LCCOMB_X65_Y19_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (memTemp(6) & (\Add1~11\ $ (GND))) # (!memTemp(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((memTemp(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X65_Y19_N15
\memTemp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(6));

-- Location: LCCOMB_X65_Y19_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (memTemp(7) & (!\Add1~13\)) # (!memTemp(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!memTemp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X65_Y19_N17
\memTemp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(7));

-- Location: LCCOMB_X65_Y19_N18
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (memTemp(8) & (\Add1~15\ $ (GND))) # (!memTemp(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((memTemp(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X65_Y19_N19
\memTemp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(8));

-- Location: LCCOMB_X65_Y19_N20
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (memTemp(9) & (!\Add1~17\)) # (!memTemp(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!memTemp(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X65_Y19_N21
\memTemp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(9));

-- Location: LCCOMB_X65_Y19_N22
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (memTemp(10) & (\Add1~19\ $ (GND))) # (!memTemp(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((memTemp(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X65_Y19_N23
\memTemp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(10));

-- Location: LCCOMB_X65_Y19_N24
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (memTemp(11) & (!\Add1~21\)) # (!memTemp(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!memTemp(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X65_Y19_N25
\memTemp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(11));

-- Location: LCCOMB_X65_Y19_N26
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (memTemp(12) & (\Add1~23\ $ (GND))) # (!memTemp(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((memTemp(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X65_Y19_N27
\memTemp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(12));

-- Location: LCCOMB_X65_Y19_N28
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (memTemp(13) & (!\Add1~25\)) # (!memTemp(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!memTemp(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X65_Y19_N29
\memTemp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(13));

-- Location: LCCOMB_X65_Y19_N30
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (memTemp(14) & (\Add1~27\ $ (GND))) # (!memTemp(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((memTemp(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X65_Y19_N31
\memTemp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(14));

-- Location: LCCOMB_X66_Y19_N26
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!memTemp(13) & (!memTemp(14) & (!memTemp(12) & !memTemp(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(13),
	datab => memTemp(14),
	datac => memTemp(12),
	datad => memTemp(11),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X66_Y19_N24
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!memTemp(7) & (!memTemp(9) & (!memTemp(8) & !memTemp(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(7),
	datab => memTemp(9),
	datac => memTemp(8),
	datad => memTemp(10),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X66_Y19_N18
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!memTemp(6) & (memTemp(3) & (!memTemp(5) & !memTemp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(6),
	datab => memTemp(3),
	datac => memTemp(5),
	datad => memTemp(4),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X66_Y19_N8
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!memTemp(2) & (\Equal1~7_combout\ & (!memTemp(0) & memTemp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(2),
	datab => \Equal1~7_combout\,
	datac => memTemp(0),
	datad => memTemp(1),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X65_Y18_N0
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (memTemp(15) & (!\Add1~29\)) # (!memTemp(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!memTemp(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X65_Y18_N1
\memTemp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(15));

-- Location: LCCOMB_X65_Y18_N2
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (memTemp(16) & (\Add1~31\ $ (GND))) # (!memTemp(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((memTemp(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X65_Y18_N3
\memTemp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(16));

-- Location: LCCOMB_X65_Y18_N4
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (memTemp(17) & (!\Add1~33\)) # (!memTemp(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!memTemp(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X65_Y18_N5
\memTemp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(17));

-- Location: LCCOMB_X65_Y18_N6
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (memTemp(18) & (\Add1~35\ $ (GND))) # (!memTemp(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((memTemp(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X65_Y18_N7
\memTemp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(18));

-- Location: LCCOMB_X65_Y18_N8
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (memTemp(19) & (!\Add1~37\)) # (!memTemp(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!memTemp(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X65_Y18_N9
\memTemp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(19));

-- Location: LCCOMB_X65_Y18_N10
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (memTemp(20) & (\Add1~39\ $ (GND))) # (!memTemp(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((memTemp(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X65_Y18_N11
\memTemp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(20));

-- Location: LCCOMB_X65_Y18_N12
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (memTemp(21) & (!\Add1~41\)) # (!memTemp(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!memTemp(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X65_Y18_N13
\memTemp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(21));

-- Location: LCCOMB_X65_Y18_N14
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (memTemp(22) & (\Add1~43\ $ (GND))) # (!memTemp(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((memTemp(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X65_Y18_N15
\memTemp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(22));

-- Location: LCCOMB_X65_Y18_N16
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (memTemp(23) & (!\Add1~45\)) # (!memTemp(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!memTemp(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X65_Y18_N17
\memTemp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(23));

-- Location: LCCOMB_X65_Y18_N18
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (memTemp(24) & (\Add1~47\ $ (GND))) # (!memTemp(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((memTemp(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X65_Y18_N19
\memTemp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(24));

-- Location: LCCOMB_X65_Y18_N20
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (memTemp(25) & (!\Add1~49\)) # (!memTemp(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!memTemp(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X65_Y18_N21
\memTemp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(25));

-- Location: LCCOMB_X65_Y18_N22
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (memTemp(26) & (\Add1~51\ $ (GND))) # (!memTemp(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((memTemp(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X65_Y18_N23
\memTemp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(26));

-- Location: LCCOMB_X66_Y19_N30
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!memTemp(24) & (!memTemp(23) & (!memTemp(25) & !memTemp(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(24),
	datab => memTemp(23),
	datac => memTemp(25),
	datad => memTemp(26),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X65_Y18_N24
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (memTemp(27) & (!\Add1~53\)) # (!memTemp(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!memTemp(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X65_Y18_N25
\memTemp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(27));

-- Location: LCCOMB_X65_Y18_N26
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (memTemp(28) & (\Add1~55\ $ (GND))) # (!memTemp(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((memTemp(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X65_Y18_N27
\memTemp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(28));

-- Location: LCCOMB_X65_Y18_N28
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (memTemp(29) & (!\Add1~57\)) # (!memTemp(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!memTemp(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => memTemp(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X65_Y18_N29
\memTemp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(29));

-- Location: LCCOMB_X65_Y18_N30
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = memTemp(30) $ (!\Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(30),
	cin => \Add1~59\,
	combout => \Add1~60_combout\);

-- Location: FF_X65_Y18_N31
\memTemp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key[2]~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memTemp(30));

-- Location: LCCOMB_X66_Y19_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!memTemp(29) & (!memTemp(27) & (!memTemp(30) & !memTemp(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(29),
	datab => memTemp(27),
	datac => memTemp(30),
	datad => memTemp(28),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X66_Y19_N14
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!memTemp(17) & (!memTemp(15) & (!memTemp(16) & !memTemp(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(17),
	datab => memTemp(15),
	datac => memTemp(16),
	datad => memTemp(18),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X66_Y19_N20
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!memTemp(22) & (!memTemp(21) & (!memTemp(20) & !memTemp(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memTemp(22),
	datab => memTemp(21),
	datac => memTemp(20),
	datad => memTemp(19),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X66_Y19_N28
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X66_Y19_N2
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~5_combout\ & (\Equal1~6_combout\ & (\Equal1~8_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~8_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X65_Y19_N0
\memTemp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memTemp~0_combout\ = (\Add1~0_combout\ & !\Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal1~9_combout\,
	combout => \memTemp~0_combout\);

-- Location: LCCOMB_X62_Y23_N20
\FD|BancoReg|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux62~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][1]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[5][1]~q\,
	datab => \FD|BancoReg|ram[0][1]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux62~0_combout\);

-- Location: LCCOMB_X65_Y22_N0
\FD|BancoReg|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux61~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((!\FD|BancoReg|ram[5][2]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][2]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[5][2]~q\,
	combout => \FD|BancoReg|Mux61~0_combout\);

-- Location: FF_X62_Y22_N15
\FD|BancoReg|ram[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C[3]~6_combout\,
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][3]~q\);

-- Location: LCCOMB_X63_Y22_N30
\FD|BancoReg|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux60~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][3]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[5][3]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][3]~q\,
	combout => \FD|BancoReg|Mux60~0_combout\);

-- Location: FF_X60_Y21_N5
\FD|BancoReg|ram[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(4),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][4]~q\);

-- Location: LCCOMB_X60_Y21_N20
\FD|BancoReg|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux59~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][4]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[5][4]~q\,
	datab => \FD|BancoReg|ram[0][4]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux59~0_combout\);

-- Location: FF_X61_Y24_N19
\FD|BancoReg|ram[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(5),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][5]~q\);

-- Location: LCCOMB_X61_Y24_N16
\FD|BancoReg|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux58~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][5]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[5][5]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][5]~q\,
	combout => \FD|BancoReg|Mux58~0_combout\);

-- Location: FF_X61_Y20_N31
\FD|BancoReg|ram[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(6),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][6]~q\);

-- Location: LCCOMB_X60_Y20_N12
\FD|BancoReg|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux57~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][6]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|BancoReg|ram[5][6]~q\,
	datad => \FD|BancoReg|ram[0][6]~q\,
	combout => \FD|BancoReg|Mux57~0_combout\);

-- Location: FF_X59_Y21_N19
\FD|BancoReg|ram[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(7),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][7]~q\);

-- Location: LCCOMB_X59_Y21_N0
\FD|BancoReg|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux56~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][7]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[5][7]~q\,
	datab => \FD|BancoReg|ram[0][7]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux56~0_combout\);

-- Location: FF_X59_Y21_N31
\FD|BancoReg|ram[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(8),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][8]~q\);

-- Location: LCCOMB_X59_Y21_N22
\FD|BancoReg|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux55~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][8]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][8]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[5][8]~q\,
	combout => \FD|BancoReg|Mux55~0_combout\);

-- Location: FF_X60_Y21_N23
\FD|BancoReg|ram[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(9),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][9]~q\);

-- Location: LCCOMB_X59_Y21_N4
\FD|BancoReg|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux54~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][9]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[5][9]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][9]~q\,
	combout => \FD|BancoReg|Mux54~0_combout\);

-- Location: FF_X63_Y21_N9
\FD|BancoReg|ram[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(10),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][10]~q\);

-- Location: LCCOMB_X63_Y21_N22
\FD|BancoReg|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux53~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][10]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[5][10]~q\,
	datac => \FD|BancoReg|ram[0][10]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux53~0_combout\);

-- Location: FF_X63_Y21_N29
\FD|BancoReg|ram[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(11),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][11]~q\);

-- Location: LCCOMB_X63_Y21_N16
\FD|BancoReg|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux52~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][11]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[5][11]~q\,
	datac => \FD|BancoReg|ram[0][11]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux52~0_combout\);

-- Location: FF_X60_Y21_N11
\FD|BancoReg|ram[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	asdata => \FD|MuxULAMem|C\(12),
	sload => VCC,
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][12]~q\);

-- Location: LCCOMB_X59_Y21_N10
\FD|BancoReg|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux51~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][12]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|BancoReg|ram[5][12]~q\,
	datac => \FD|BancoReg|ram[0][12]~q\,
	combout => \FD|BancoReg|Mux51~0_combout\);

-- Location: FF_X61_Y19_N31
\FD|BancoReg|ram[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(13),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][13]~q\);

-- Location: LCCOMB_X61_Y19_N16
\FD|BancoReg|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux50~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][13]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|InstMem|ram~549_combout\,
	datac => \FD|BancoReg|ram[5][13]~q\,
	datad => \FD|BancoReg|ram[0][13]~q\,
	combout => \FD|BancoReg|Mux50~0_combout\);

-- Location: FF_X61_Y19_N23
\FD|BancoReg|ram[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(14),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][14]~q\);

-- Location: LCCOMB_X61_Y19_N26
\FD|BancoReg|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux49~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][14]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[5][14]~q\,
	datac => \FD|BancoReg|ram[0][14]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux49~0_combout\);

-- Location: FF_X62_Y23_N5
\FD|BancoReg|ram[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(15),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][15]~q\);

-- Location: LCCOMB_X62_Y23_N0
\FD|BancoReg|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux48~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][15]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][15]~q\,
	datab => \FD|BancoReg|ram[5][15]~q\,
	datad => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux48~0_combout\);

-- Location: FF_X62_Y22_N23
\FD|BancoReg|ram[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(16),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][16]~q\);

-- Location: LCCOMB_X65_Y22_N10
\FD|BancoReg|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux47~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][16]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][16]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[5][16]~q\,
	combout => \FD|BancoReg|Mux47~0_combout\);

-- Location: FF_X60_Y20_N17
\FD|BancoReg|ram[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(17),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][17]~q\);

-- Location: LCCOMB_X60_Y20_N10
\FD|BancoReg|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux46~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][17]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|BancoReg|ram[0][17]~q\,
	datac => \FD|BancoReg|ram[5][17]~q\,
	combout => \FD|BancoReg|Mux46~0_combout\);

-- Location: FF_X63_Y20_N21
\FD|BancoReg|ram[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(18),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][18]~q\);

-- Location: LCCOMB_X63_Y20_N14
\FD|BancoReg|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux45~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][18]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[5][18]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[0][18]~q\,
	combout => \FD|BancoReg|Mux45~0_combout\);

-- Location: FF_X61_Y20_N3
\FD|BancoReg|ram[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(19),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][19]~q\);

-- Location: LCCOMB_X61_Y20_N12
\FD|BancoReg|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux44~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][19]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datac => \FD|BancoReg|ram[0][19]~q\,
	datad => \FD|BancoReg|ram[5][19]~q\,
	combout => \FD|BancoReg|Mux44~0_combout\);

-- Location: FF_X61_Y24_N23
\FD|BancoReg|ram[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(20),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][20]~q\);

-- Location: LCCOMB_X61_Y24_N14
\FD|BancoReg|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux43~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][20]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datac => \FD|BancoReg|ram[5][20]~q\,
	datad => \FD|BancoReg|ram[0][20]~q\,
	combout => \FD|BancoReg|Mux43~0_combout\);

-- Location: FF_X60_Y21_N15
\FD|BancoReg|ram[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(21),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][21]~q\);

-- Location: LCCOMB_X59_Y21_N8
\FD|BancoReg|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux42~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][21]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|BancoReg|ram[5][21]~q\,
	datad => \FD|BancoReg|ram[0][21]~q\,
	combout => \FD|BancoReg|Mux42~0_combout\);

-- Location: FF_X60_Y20_N5
\FD|BancoReg|ram[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(22),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][22]~q\);

-- Location: LCCOMB_X60_Y20_N24
\FD|BancoReg|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux41~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][22]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][22]~q\,
	datab => \FD|BancoReg|ram[5][22]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	combout => \FD|BancoReg|Mux41~0_combout\);

-- Location: FF_X62_Y22_N25
\FD|BancoReg|ram[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(23),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][23]~q\);

-- Location: LCCOMB_X65_Y22_N4
\FD|BancoReg|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux40~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][23]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][23]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[5][23]~q\,
	combout => \FD|BancoReg|Mux40~0_combout\);

-- Location: FF_X61_Y20_N23
\FD|BancoReg|ram[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(24),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][24]~q\);

-- Location: LCCOMB_X61_Y20_N26
\FD|BancoReg|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux39~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][24]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|BancoReg|ram[5][24]~q\,
	datad => \FD|BancoReg|ram[0][24]~q\,
	combout => \FD|BancoReg|Mux39~0_combout\);

-- Location: FF_X60_Y20_N21
\FD|BancoReg|ram[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(25),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][25]~q\);

-- Location: LCCOMB_X60_Y20_N2
\FD|BancoReg|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux38~0_combout\ = (\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[5][25]~q\)) # (!\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[0][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|BancoReg|ram[5][25]~q\,
	datac => \FD|BancoReg|ram[0][25]~q\,
	combout => \FD|BancoReg|Mux38~0_combout\);

-- Location: FF_X63_Y22_N9
\FD|BancoReg|ram[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(26),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][26]~q\);

-- Location: LCCOMB_X63_Y22_N24
\FD|BancoReg|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux37~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][26]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][26]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[5][26]~q\,
	combout => \FD|BancoReg|Mux37~0_combout\);

-- Location: FF_X63_Y22_N5
\FD|BancoReg|ram[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(27),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][27]~q\);

-- Location: LCCOMB_X63_Y22_N14
\FD|BancoReg|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux36~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][27]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|InstMem|ram~549_combout\,
	datab => \FD|BancoReg|ram[0][27]~q\,
	datac => \FD|BancoReg|ram[5][27]~q\,
	combout => \FD|BancoReg|Mux36~0_combout\);

-- Location: LCCOMB_X63_Y20_N16
\FD|BancoReg|ram[5][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|ram[5][28]~feeder_combout\ = \FD|MuxULAMem|C\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MuxULAMem|C\(28),
	combout => \FD|BancoReg|ram[5][28]~feeder_combout\);

-- Location: FF_X63_Y20_N17
\FD|BancoReg|ram[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|BancoReg|ram[5][28]~feeder_combout\,
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][28]~q\);

-- Location: LCCOMB_X63_Y20_N28
\FD|BancoReg|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux35~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][28]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|InstMem|ram~549_combout\,
	datac => \FD|BancoReg|ram[0][28]~q\,
	datad => \FD|BancoReg|ram[5][28]~q\,
	combout => \FD|BancoReg|Mux35~0_combout\);

-- Location: FF_X60_Y21_N27
\FD|BancoReg|ram[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(29),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][29]~q\);

-- Location: LCCOMB_X59_Y21_N16
\FD|BancoReg|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux34~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][29]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BancoReg|ram[0][29]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[5][29]~q\,
	combout => \FD|BancoReg|Mux34~0_combout\);

-- Location: FF_X61_Y20_N11
\FD|BancoReg|ram[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(30),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][30]~q\);

-- Location: LCCOMB_X60_Y20_N0
\FD|BancoReg|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux33~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][30]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][30]~q\,
	datac => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[5][30]~q\,
	combout => \FD|BancoReg|Mux33~0_combout\);

-- Location: FF_X62_Y22_N9
\FD|BancoReg|ram[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key[0]~inputclkctrl_outclk\,
	d => \FD|MuxULAMem|C\(31),
	ena => \FD|BancoReg|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BancoReg|ram[5][31]~q\);

-- Location: LCCOMB_X63_Y22_N12
\FD|BancoReg|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BancoReg|Mux32~0_combout\ = (\FD|InstMem|ram~549_combout\ & ((\FD|BancoReg|ram[5][31]~q\))) # (!\FD|InstMem|ram~549_combout\ & (\FD|BancoReg|ram[0][31]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BancoReg|ram[0][31]~q\,
	datab => \FD|InstMem|ram~549_combout\,
	datad => \FD|BancoReg|ram[5][31]~q\,
	combout => \FD|BancoReg|Mux32~0_combout\);

-- Location: M9K_X64_Y22_N0
\FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000200000000400000000800000000900000000800000000000000000000000000000000000008C850001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/MIPS.ram0_RAM_9f867151.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxoDeDadosC:FD|RAM:MemDados|altsyncram:ram_rtl_0|altsyncram_35g1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \ALT_INV_key[0]~inputclkctrl_outclk\,
	clk1 => \key[2]~inputclkctrl_outclk\,
	portadatain => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X58_Y0_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\regEnd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(0),
	o => \regEnd[0]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\regEnd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(1),
	o => \regEnd[1]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\regEnd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(2),
	o => \regEnd[2]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\regEnd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(3),
	o => \regEnd[3]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\regEnd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(4),
	o => \regEnd[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\regEnd[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(5),
	o => \regEnd[5]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\regEnd[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(6),
	o => \regEnd[6]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\regEnd[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(7),
	o => \regEnd[7]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\regEnd[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(8),
	o => \regEnd[8]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\regEnd[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(9),
	o => \regEnd[9]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\regEnd[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(10),
	o => \regEnd[10]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\regEnd[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(11),
	o => \regEnd[11]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\regEnd[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(12),
	o => \regEnd[12]~input_o\);

-- Location: IOIBUF_X115_Y61_N22
\regEnd[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(13),
	o => \regEnd[13]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\regEnd[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(14),
	o => \regEnd[14]~input_o\);

-- Location: IOIBUF_X5_Y73_N1
\regEnd[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(15),
	o => \regEnd[15]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\regEnd[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(16),
	o => \regEnd[16]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\regEnd[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(17),
	o => \regEnd[17]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\regEnd[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(18),
	o => \regEnd[18]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\regEnd[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(19),
	o => \regEnd[19]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\regEnd[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(20),
	o => \regEnd[20]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\regEnd[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(21),
	o => \regEnd[21]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\regEnd[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(22),
	o => \regEnd[22]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\regEnd[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(23),
	o => \regEnd[23]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\regEnd[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(24),
	o => \regEnd[24]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\regEnd[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(25),
	o => \regEnd[25]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\regEnd[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(26),
	o => \regEnd[26]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\regEnd[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(27),
	o => \regEnd[27]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\regEnd[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(28),
	o => \regEnd[28]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\regEnd[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(29),
	o => \regEnd[29]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\regEnd[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(30),
	o => \regEnd[30]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\regEnd[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regEnd(31),
	o => \regEnd[31]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\memEnd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(0),
	o => \memEnd[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\memEnd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(1),
	o => \memEnd[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\memEnd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(2),
	o => \memEnd[2]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\memEnd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(3),
	o => \memEnd[3]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\memEnd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(4),
	o => \memEnd[4]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\memEnd[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(5),
	o => \memEnd[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\memEnd[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(6),
	o => \memEnd[6]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\memEnd[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(7),
	o => \memEnd[7]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\memEnd[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(8),
	o => \memEnd[8]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\memEnd[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(9),
	o => \memEnd[9]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\memEnd[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(10),
	o => \memEnd[10]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\memEnd[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(11),
	o => \memEnd[11]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\memEnd[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(12),
	o => \memEnd[12]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\memEnd[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(13),
	o => \memEnd[13]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\memEnd[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(14),
	o => \memEnd[14]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\memEnd[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(15),
	o => \memEnd[15]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\memEnd[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(16),
	o => \memEnd[16]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\memEnd[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(17),
	o => \memEnd[17]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\memEnd[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(18),
	o => \memEnd[18]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\memEnd[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(19),
	o => \memEnd[19]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\memEnd[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(20),
	o => \memEnd[20]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\memEnd[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(21),
	o => \memEnd[21]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\memEnd[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(22),
	o => \memEnd[22]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\memEnd[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(23),
	o => \memEnd[23]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\memEnd[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(24),
	o => \memEnd[24]~input_o\);

-- Location: IOIBUF_X115_Y65_N22
\memEnd[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(25),
	o => \memEnd[25]~input_o\);

-- Location: IOIBUF_X111_Y0_N1
\memEnd[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(26),
	o => \memEnd[26]~input_o\);

-- Location: IOIBUF_X115_Y69_N1
\memEnd[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(27),
	o => \memEnd[27]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\memEnd[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(28),
	o => \memEnd[28]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\memEnd[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(29),
	o => \memEnd[29]~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\memEnd[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(30),
	o => \memEnd[30]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\memEnd[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memEnd(31),
	o => \memEnd[31]~input_o\);

ww_regTestOut2(0) <= \regTestOut2[0]~output_o\;

ww_regTestOut2(1) <= \regTestOut2[1]~output_o\;

ww_regTestOut2(2) <= \regTestOut2[2]~output_o\;

ww_regTestOut2(3) <= \regTestOut2[3]~output_o\;

ww_regTestOut2(4) <= \regTestOut2[4]~output_o\;

ww_regTestOut2(5) <= \regTestOut2[5]~output_o\;

ww_regTestOut2(6) <= \regTestOut2[6]~output_o\;

ww_regTestOut2(7) <= \regTestOut2[7]~output_o\;

ww_regTestOut2(8) <= \regTestOut2[8]~output_o\;

ww_regTestOut2(9) <= \regTestOut2[9]~output_o\;

ww_regTestOut2(10) <= \regTestOut2[10]~output_o\;

ww_regTestOut2(11) <= \regTestOut2[11]~output_o\;

ww_regTestOut2(12) <= \regTestOut2[12]~output_o\;

ww_regTestOut2(13) <= \regTestOut2[13]~output_o\;

ww_regTestOut2(14) <= \regTestOut2[14]~output_o\;

ww_regTestOut2(15) <= \regTestOut2[15]~output_o\;

ww_regTestOut2(16) <= \regTestOut2[16]~output_o\;

ww_regTestOut2(17) <= \regTestOut2[17]~output_o\;

ww_regTestOut2(18) <= \regTestOut2[18]~output_o\;

ww_regTestOut2(19) <= \regTestOut2[19]~output_o\;

ww_regTestOut2(20) <= \regTestOut2[20]~output_o\;

ww_regTestOut2(21) <= \regTestOut2[21]~output_o\;

ww_regTestOut2(22) <= \regTestOut2[22]~output_o\;

ww_regTestOut2(23) <= \regTestOut2[23]~output_o\;

ww_regTestOut2(24) <= \regTestOut2[24]~output_o\;

ww_regTestOut2(25) <= \regTestOut2[25]~output_o\;

ww_regTestOut2(26) <= \regTestOut2[26]~output_o\;

ww_regTestOut2(27) <= \regTestOut2[27]~output_o\;

ww_regTestOut2(28) <= \regTestOut2[28]~output_o\;

ww_regTestOut2(29) <= \regTestOut2[29]~output_o\;

ww_regTestOut2(30) <= \regTestOut2[30]~output_o\;

ww_regTestOut2(31) <= \regTestOut2[31]~output_o\;

ww_memTestOut(0) <= \memTestOut[0]~output_o\;

ww_memTestOut(1) <= \memTestOut[1]~output_o\;

ww_memTestOut(2) <= \memTestOut[2]~output_o\;

ww_memTestOut(3) <= \memTestOut[3]~output_o\;

ww_memTestOut(4) <= \memTestOut[4]~output_o\;

ww_memTestOut(5) <= \memTestOut[5]~output_o\;

ww_memTestOut(6) <= \memTestOut[6]~output_o\;

ww_memTestOut(7) <= \memTestOut[7]~output_o\;

ww_memTestOut(8) <= \memTestOut[8]~output_o\;

ww_memTestOut(9) <= \memTestOut[9]~output_o\;

ww_memTestOut(10) <= \memTestOut[10]~output_o\;

ww_memTestOut(11) <= \memTestOut[11]~output_o\;

ww_memTestOut(12) <= \memTestOut[12]~output_o\;

ww_memTestOut(13) <= \memTestOut[13]~output_o\;

ww_memTestOut(14) <= \memTestOut[14]~output_o\;

ww_memTestOut(15) <= \memTestOut[15]~output_o\;

ww_memTestOut(16) <= \memTestOut[16]~output_o\;

ww_memTestOut(17) <= \memTestOut[17]~output_o\;

ww_memTestOut(18) <= \memTestOut[18]~output_o\;

ww_memTestOut(19) <= \memTestOut[19]~output_o\;

ww_memTestOut(20) <= \memTestOut[20]~output_o\;

ww_memTestOut(21) <= \memTestOut[21]~output_o\;

ww_memTestOut(22) <= \memTestOut[22]~output_o\;

ww_memTestOut(23) <= \memTestOut[23]~output_o\;

ww_memTestOut(24) <= \memTestOut[24]~output_o\;

ww_memTestOut(25) <= \memTestOut[25]~output_o\;

ww_memTestOut(26) <= \memTestOut[26]~output_o\;

ww_memTestOut(27) <= \memTestOut[27]~output_o\;

ww_memTestOut(28) <= \memTestOut[28]~output_o\;

ww_memTestOut(29) <= \memTestOut[29]~output_o\;

ww_memTestOut(30) <= \memTestOut[30]~output_o\;

ww_memTestOut(31) <= \memTestOut[31]~output_o\;

ww_regTestEndOut(0) <= \regTestEndOut[0]~output_o\;

ww_regTestEndOut(1) <= \regTestEndOut[1]~output_o\;

ww_regTestEndOut(2) <= \regTestEndOut[2]~output_o\;

ww_regTestEndOut(3) <= \regTestEndOut[3]~output_o\;

ww_regTestEndOut(4) <= \regTestEndOut[4]~output_o\;

ww_regTestEndOut(5) <= \regTestEndOut[5]~output_o\;

ww_regTestEndOut(6) <= \regTestEndOut[6]~output_o\;

ww_regTestEndOut(7) <= \regTestEndOut[7]~output_o\;

ww_regTestEndOut(8) <= \regTestEndOut[8]~output_o\;

ww_regTestEndOut(9) <= \regTestEndOut[9]~output_o\;

ww_regTestEndOut(10) <= \regTestEndOut[10]~output_o\;

ww_regTestEndOut(11) <= \regTestEndOut[11]~output_o\;

ww_regTestEndOut(12) <= \regTestEndOut[12]~output_o\;

ww_regTestEndOut(13) <= \regTestEndOut[13]~output_o\;

ww_regTestEndOut(14) <= \regTestEndOut[14]~output_o\;

ww_regTestEndOut(15) <= \regTestEndOut[15]~output_o\;

ww_regTestEndOut(16) <= \regTestEndOut[16]~output_o\;

ww_regTestEndOut(17) <= \regTestEndOut[17]~output_o\;

ww_regTestEndOut(18) <= \regTestEndOut[18]~output_o\;

ww_regTestEndOut(19) <= \regTestEndOut[19]~output_o\;

ww_regTestEndOut(20) <= \regTestEndOut[20]~output_o\;

ww_regTestEndOut(21) <= \regTestEndOut[21]~output_o\;

ww_regTestEndOut(22) <= \regTestEndOut[22]~output_o\;

ww_regTestEndOut(23) <= \regTestEndOut[23]~output_o\;

ww_regTestEndOut(24) <= \regTestEndOut[24]~output_o\;

ww_regTestEndOut(25) <= \regTestEndOut[25]~output_o\;

ww_regTestEndOut(26) <= \regTestEndOut[26]~output_o\;

ww_regTestEndOut(27) <= \regTestEndOut[27]~output_o\;

ww_regTestEndOut(28) <= \regTestEndOut[28]~output_o\;

ww_regTestEndOut(29) <= \regTestEndOut[29]~output_o\;

ww_regTestEndOut(30) <= \regTestEndOut[30]~output_o\;

ww_regTestEndOut(31) <= \regTestEndOut[31]~output_o\;

ww_memTestEndOut(0) <= \memTestEndOut[0]~output_o\;

ww_memTestEndOut(1) <= \memTestEndOut[1]~output_o\;

ww_memTestEndOut(2) <= \memTestEndOut[2]~output_o\;

ww_memTestEndOut(3) <= \memTestEndOut[3]~output_o\;

ww_memTestEndOut(4) <= \memTestEndOut[4]~output_o\;

ww_memTestEndOut(5) <= \memTestEndOut[5]~output_o\;

ww_memTestEndOut(6) <= \memTestEndOut[6]~output_o\;

ww_memTestEndOut(7) <= \memTestEndOut[7]~output_o\;

ww_memTestEndOut(8) <= \memTestEndOut[8]~output_o\;

ww_memTestEndOut(9) <= \memTestEndOut[9]~output_o\;

ww_memTestEndOut(10) <= \memTestEndOut[10]~output_o\;

ww_memTestEndOut(11) <= \memTestEndOut[11]~output_o\;

ww_memTestEndOut(12) <= \memTestEndOut[12]~output_o\;

ww_memTestEndOut(13) <= \memTestEndOut[13]~output_o\;

ww_memTestEndOut(14) <= \memTestEndOut[14]~output_o\;

ww_memTestEndOut(15) <= \memTestEndOut[15]~output_o\;

ww_memTestEndOut(16) <= \memTestEndOut[16]~output_o\;

ww_memTestEndOut(17) <= \memTestEndOut[17]~output_o\;

ww_memTestEndOut(18) <= \memTestEndOut[18]~output_o\;

ww_memTestEndOut(19) <= \memTestEndOut[19]~output_o\;

ww_memTestEndOut(20) <= \memTestEndOut[20]~output_o\;

ww_memTestEndOut(21) <= \memTestEndOut[21]~output_o\;

ww_memTestEndOut(22) <= \memTestEndOut[22]~output_o\;

ww_memTestEndOut(23) <= \memTestEndOut[23]~output_o\;

ww_memTestEndOut(24) <= \memTestEndOut[24]~output_o\;

ww_memTestEndOut(25) <= \memTestEndOut[25]~output_o\;

ww_memTestEndOut(26) <= \memTestEndOut[26]~output_o\;

ww_memTestEndOut(27) <= \memTestEndOut[27]~output_o\;

ww_memTestEndOut(28) <= \memTestEndOut[28]~output_o\;

ww_memTestEndOut(29) <= \memTestEndOut[29]~output_o\;

ww_memTestEndOut(30) <= \memTestEndOut[30]~output_o\;

ww_memTestEndOut(31) <= \memTestEndOut[31]~output_o\;
END structure;


