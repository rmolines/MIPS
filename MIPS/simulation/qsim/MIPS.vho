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

-- DATE "11/27/2017 22:34:50"

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

ENTITY 	fluxoDeDados IS
    PORT (
	clk : IN std_logic;
	regTestEnd : IN std_logic_vector(4 DOWNTO 0);
	memTestEnd : IN std_logic_vector(31 DOWNTO 0);
	regTestOut : OUT std_logic_vector(31 DOWNTO 0);
	memTestOut : OUT std_logic_vector(31 DOWNTO 0);
	readData1Out : OUT std_logic_vector(31 DOWNTO 0);
	readData2Out : OUT std_logic_vector(31 DOWNTO 0);
	writeData : OUT std_logic_vector(31 DOWNTO 0);
	PCOutTeste : OUT std_logic_vector(31 DOWNTO 0);
	ULAINA : OUT std_logic_vector(31 DOWNTO 0);
	ULAINB : OUT std_logic_vector(31 DOWNTO 0);
	ULAOUTTESTE : OUT std_logic_vector(31 DOWNTO 0);
	ULAOUTTESTE1 : OUT std_logic_vector(31 DOWNTO 0);
	beqadder : OUT std_logic_vector(31 DOWNTO 0);
	beqadder2 : OUT std_logic_vector(31 DOWNTO 0);
	beqadderout : OUT std_logic_vector(31 DOWNTO 0);
	signExtendOutteste : OUT std_logic_vector(31 DOWNTO 0);
	word : OUT std_logic_vector(9 DOWNTO 0);
	ULASEL : OUT std_logic_vector(3 DOWNTO 0);
	EXTESTE : OUT std_logic_vector(3 DOWNTO 0);
	WBTESTE : OUT std_logic_vector(1 DOWNTO 0);
	MTESTE : OUT std_logic_vector(2 DOWNTO 0);
	rt : OUT std_logic_vector(4 DOWNTO 0);
	rs : OUT std_logic_vector(4 DOWNTO 0);
	rd : OUT std_logic_vector(4 DOWNTO 0)
	);
END fluxoDeDados;

-- Design Ports Information
-- regTestEnd[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[4]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[9]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[10]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[11]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[12]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[13]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[14]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[16]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[17]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[18]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[19]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[20]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[21]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[22]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[23]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[24]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[25]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[26]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[27]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[28]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[29]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[30]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[31]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[0]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[3]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[5]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[6]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[7]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[8]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[9]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[10]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[11]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[12]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[13]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[15]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[16]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[17]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[18]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[19]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[20]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[21]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[22]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[23]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[24]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[25]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[26]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[27]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[28]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[29]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[30]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[31]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[6]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[8]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[10]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[11]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[12]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[13]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[14]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[15]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[16]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[17]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[18]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[19]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[20]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[21]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[22]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[23]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[24]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[25]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[26]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[27]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[28]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[29]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[30]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[31]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[1]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[6]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[7]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[8]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[9]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[10]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[11]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[12]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[13]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[14]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[15]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[16]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[17]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[18]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[19]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[20]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[21]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[22]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[23]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[24]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[25]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[26]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[27]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[28]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[29]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[30]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[31]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[1]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[2]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[3]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[4]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[5]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[6]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[7]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[8]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[9]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[10]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[11]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[12]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[13]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[14]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[15]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[16]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[17]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[18]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[19]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[20]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[21]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[22]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[23]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[24]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[25]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[26]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[27]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[28]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[29]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[30]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[31]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[0]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[3]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[4]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[5]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[6]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[7]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[8]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[9]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[10]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[11]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[12]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[13]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[14]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[15]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[16]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[17]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[18]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[19]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[20]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[21]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[23]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[24]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[25]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[26]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[27]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[28]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[29]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[30]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[31]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[2]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[4]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[5]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[9]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[10]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[11]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[12]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[13]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[14]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[15]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[16]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[17]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[18]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[19]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[20]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[21]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[22]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[23]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[24]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[25]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[26]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[27]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[28]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[29]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[30]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[31]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[3]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[5]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[6]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[7]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[8]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[9]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[10]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[12]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[14]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[15]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[16]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[17]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[18]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[19]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[20]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[21]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[22]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[23]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[24]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[25]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[26]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[27]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[28]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[29]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[30]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[31]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[0]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[3]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[6]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[9]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[10]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[11]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[12]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[13]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[14]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[15]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[16]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[17]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[18]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[19]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[20]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[21]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[22]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[23]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[24]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[25]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[26]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[27]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[28]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[29]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[30]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[31]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[5]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[6]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[7]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[8]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[9]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[10]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[11]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[12]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[13]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[14]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[15]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[16]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[17]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[18]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[19]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[20]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[23]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[24]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[25]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[26]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[27]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[28]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[29]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[30]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[31]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[0]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[1]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[4]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[5]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[6]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[8]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[9]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[10]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[11]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[12]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[13]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[14]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[15]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[16]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[17]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[18]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[19]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[20]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[21]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[22]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[23]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[24]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[25]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[26]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[27]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[28]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[29]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[30]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE1[31]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[7]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[8]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[9]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[10]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[11]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[12]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[13]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[14]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[15]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[16]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[17]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[18]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[19]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[20]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[21]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[22]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[23]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[24]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[25]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[26]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[27]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[28]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[29]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[30]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[31]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[5]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[9]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[11]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[12]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[14]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[15]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[16]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[17]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[18]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[19]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[20]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[21]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[22]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[23]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[24]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[25]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[26]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[27]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[28]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[29]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[30]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[31]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[0]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[7]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[8]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[10]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[11]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[12]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[13]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[14]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[15]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[16]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[17]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[18]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[19]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[20]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[21]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[22]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[23]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[24]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[25]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[26]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[27]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[28]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[29]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[30]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[31]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[8]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[9]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[10]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[11]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[12]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[14]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[15]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[16]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[17]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[18]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[19]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[20]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[21]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[23]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[24]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[25]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[26]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[27]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[28]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[29]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[30]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signExtendOutteste[31]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[0]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[1]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[2]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[3]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[8]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULASEL[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULASEL[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULASEL[2]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULASEL[3]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTESTE[0]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTESTE[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTESTE[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTESTE[3]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WBTESTE[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WBTESTE[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTESTE[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTESTE[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTESTE[2]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[2]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[4]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEnd[2]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEnd[0]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEnd[1]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEnd[3]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fluxoDeDados IS
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
SIGNAL ww_regTestEnd : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_memTestEnd : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_regTestOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memTestOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_readData1Out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_readData2Out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_writeData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PCOutTeste : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULAINA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULAINB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULAOUTTESTE : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULAOUTTESTE1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_beqadder : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_beqadder2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_beqadderout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_signExtendOutteste : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_word : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ULASEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EXTESTE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WBTESTE : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MTESTE : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rs : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rd : std_logic_vector(4 DOWNTO 0);
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regTestEnd[4]~input_o\ : std_logic;
SIGNAL \memTestEnd[4]~input_o\ : std_logic;
SIGNAL \memTestEnd[5]~input_o\ : std_logic;
SIGNAL \memTestEnd[6]~input_o\ : std_logic;
SIGNAL \memTestEnd[7]~input_o\ : std_logic;
SIGNAL \memTestEnd[8]~input_o\ : std_logic;
SIGNAL \memTestEnd[9]~input_o\ : std_logic;
SIGNAL \memTestEnd[10]~input_o\ : std_logic;
SIGNAL \memTestEnd[11]~input_o\ : std_logic;
SIGNAL \memTestEnd[12]~input_o\ : std_logic;
SIGNAL \memTestEnd[13]~input_o\ : std_logic;
SIGNAL \memTestEnd[14]~input_o\ : std_logic;
SIGNAL \memTestEnd[15]~input_o\ : std_logic;
SIGNAL \memTestEnd[16]~input_o\ : std_logic;
SIGNAL \memTestEnd[17]~input_o\ : std_logic;
SIGNAL \memTestEnd[18]~input_o\ : std_logic;
SIGNAL \memTestEnd[19]~input_o\ : std_logic;
SIGNAL \memTestEnd[20]~input_o\ : std_logic;
SIGNAL \memTestEnd[21]~input_o\ : std_logic;
SIGNAL \memTestEnd[22]~input_o\ : std_logic;
SIGNAL \memTestEnd[23]~input_o\ : std_logic;
SIGNAL \memTestEnd[24]~input_o\ : std_logic;
SIGNAL \memTestEnd[25]~input_o\ : std_logic;
SIGNAL \memTestEnd[26]~input_o\ : std_logic;
SIGNAL \memTestEnd[27]~input_o\ : std_logic;
SIGNAL \memTestEnd[28]~input_o\ : std_logic;
SIGNAL \memTestEnd[29]~input_o\ : std_logic;
SIGNAL \memTestEnd[30]~input_o\ : std_logic;
SIGNAL \memTestEnd[31]~input_o\ : std_logic;
SIGNAL \regTestOut[0]~output_o\ : std_logic;
SIGNAL \regTestOut[1]~output_o\ : std_logic;
SIGNAL \regTestOut[2]~output_o\ : std_logic;
SIGNAL \regTestOut[3]~output_o\ : std_logic;
SIGNAL \regTestOut[4]~output_o\ : std_logic;
SIGNAL \regTestOut[5]~output_o\ : std_logic;
SIGNAL \regTestOut[6]~output_o\ : std_logic;
SIGNAL \regTestOut[7]~output_o\ : std_logic;
SIGNAL \regTestOut[8]~output_o\ : std_logic;
SIGNAL \regTestOut[9]~output_o\ : std_logic;
SIGNAL \regTestOut[10]~output_o\ : std_logic;
SIGNAL \regTestOut[11]~output_o\ : std_logic;
SIGNAL \regTestOut[12]~output_o\ : std_logic;
SIGNAL \regTestOut[13]~output_o\ : std_logic;
SIGNAL \regTestOut[14]~output_o\ : std_logic;
SIGNAL \regTestOut[15]~output_o\ : std_logic;
SIGNAL \regTestOut[16]~output_o\ : std_logic;
SIGNAL \regTestOut[17]~output_o\ : std_logic;
SIGNAL \regTestOut[18]~output_o\ : std_logic;
SIGNAL \regTestOut[19]~output_o\ : std_logic;
SIGNAL \regTestOut[20]~output_o\ : std_logic;
SIGNAL \regTestOut[21]~output_o\ : std_logic;
SIGNAL \regTestOut[22]~output_o\ : std_logic;
SIGNAL \regTestOut[23]~output_o\ : std_logic;
SIGNAL \regTestOut[24]~output_o\ : std_logic;
SIGNAL \regTestOut[25]~output_o\ : std_logic;
SIGNAL \regTestOut[26]~output_o\ : std_logic;
SIGNAL \regTestOut[27]~output_o\ : std_logic;
SIGNAL \regTestOut[28]~output_o\ : std_logic;
SIGNAL \regTestOut[29]~output_o\ : std_logic;
SIGNAL \regTestOut[30]~output_o\ : std_logic;
SIGNAL \regTestOut[31]~output_o\ : std_logic;
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
SIGNAL \readData1Out[0]~output_o\ : std_logic;
SIGNAL \readData1Out[1]~output_o\ : std_logic;
SIGNAL \readData1Out[2]~output_o\ : std_logic;
SIGNAL \readData1Out[3]~output_o\ : std_logic;
SIGNAL \readData1Out[4]~output_o\ : std_logic;
SIGNAL \readData1Out[5]~output_o\ : std_logic;
SIGNAL \readData1Out[6]~output_o\ : std_logic;
SIGNAL \readData1Out[7]~output_o\ : std_logic;
SIGNAL \readData1Out[8]~output_o\ : std_logic;
SIGNAL \readData1Out[9]~output_o\ : std_logic;
SIGNAL \readData1Out[10]~output_o\ : std_logic;
SIGNAL \readData1Out[11]~output_o\ : std_logic;
SIGNAL \readData1Out[12]~output_o\ : std_logic;
SIGNAL \readData1Out[13]~output_o\ : std_logic;
SIGNAL \readData1Out[14]~output_o\ : std_logic;
SIGNAL \readData1Out[15]~output_o\ : std_logic;
SIGNAL \readData1Out[16]~output_o\ : std_logic;
SIGNAL \readData1Out[17]~output_o\ : std_logic;
SIGNAL \readData1Out[18]~output_o\ : std_logic;
SIGNAL \readData1Out[19]~output_o\ : std_logic;
SIGNAL \readData1Out[20]~output_o\ : std_logic;
SIGNAL \readData1Out[21]~output_o\ : std_logic;
SIGNAL \readData1Out[22]~output_o\ : std_logic;
SIGNAL \readData1Out[23]~output_o\ : std_logic;
SIGNAL \readData1Out[24]~output_o\ : std_logic;
SIGNAL \readData1Out[25]~output_o\ : std_logic;
SIGNAL \readData1Out[26]~output_o\ : std_logic;
SIGNAL \readData1Out[27]~output_o\ : std_logic;
SIGNAL \readData1Out[28]~output_o\ : std_logic;
SIGNAL \readData1Out[29]~output_o\ : std_logic;
SIGNAL \readData1Out[30]~output_o\ : std_logic;
SIGNAL \readData1Out[31]~output_o\ : std_logic;
SIGNAL \readData2Out[0]~output_o\ : std_logic;
SIGNAL \readData2Out[1]~output_o\ : std_logic;
SIGNAL \readData2Out[2]~output_o\ : std_logic;
SIGNAL \readData2Out[3]~output_o\ : std_logic;
SIGNAL \readData2Out[4]~output_o\ : std_logic;
SIGNAL \readData2Out[5]~output_o\ : std_logic;
SIGNAL \readData2Out[6]~output_o\ : std_logic;
SIGNAL \readData2Out[7]~output_o\ : std_logic;
SIGNAL \readData2Out[8]~output_o\ : std_logic;
SIGNAL \readData2Out[9]~output_o\ : std_logic;
SIGNAL \readData2Out[10]~output_o\ : std_logic;
SIGNAL \readData2Out[11]~output_o\ : std_logic;
SIGNAL \readData2Out[12]~output_o\ : std_logic;
SIGNAL \readData2Out[13]~output_o\ : std_logic;
SIGNAL \readData2Out[14]~output_o\ : std_logic;
SIGNAL \readData2Out[15]~output_o\ : std_logic;
SIGNAL \readData2Out[16]~output_o\ : std_logic;
SIGNAL \readData2Out[17]~output_o\ : std_logic;
SIGNAL \readData2Out[18]~output_o\ : std_logic;
SIGNAL \readData2Out[19]~output_o\ : std_logic;
SIGNAL \readData2Out[20]~output_o\ : std_logic;
SIGNAL \readData2Out[21]~output_o\ : std_logic;
SIGNAL \readData2Out[22]~output_o\ : std_logic;
SIGNAL \readData2Out[23]~output_o\ : std_logic;
SIGNAL \readData2Out[24]~output_o\ : std_logic;
SIGNAL \readData2Out[25]~output_o\ : std_logic;
SIGNAL \readData2Out[26]~output_o\ : std_logic;
SIGNAL \readData2Out[27]~output_o\ : std_logic;
SIGNAL \readData2Out[28]~output_o\ : std_logic;
SIGNAL \readData2Out[29]~output_o\ : std_logic;
SIGNAL \readData2Out[30]~output_o\ : std_logic;
SIGNAL \readData2Out[31]~output_o\ : std_logic;
SIGNAL \writeData[0]~output_o\ : std_logic;
SIGNAL \writeData[1]~output_o\ : std_logic;
SIGNAL \writeData[2]~output_o\ : std_logic;
SIGNAL \writeData[3]~output_o\ : std_logic;
SIGNAL \writeData[4]~output_o\ : std_logic;
SIGNAL \writeData[5]~output_o\ : std_logic;
SIGNAL \writeData[6]~output_o\ : std_logic;
SIGNAL \writeData[7]~output_o\ : std_logic;
SIGNAL \writeData[8]~output_o\ : std_logic;
SIGNAL \writeData[9]~output_o\ : std_logic;
SIGNAL \writeData[10]~output_o\ : std_logic;
SIGNAL \writeData[11]~output_o\ : std_logic;
SIGNAL \writeData[12]~output_o\ : std_logic;
SIGNAL \writeData[13]~output_o\ : std_logic;
SIGNAL \writeData[14]~output_o\ : std_logic;
SIGNAL \writeData[15]~output_o\ : std_logic;
SIGNAL \writeData[16]~output_o\ : std_logic;
SIGNAL \writeData[17]~output_o\ : std_logic;
SIGNAL \writeData[18]~output_o\ : std_logic;
SIGNAL \writeData[19]~output_o\ : std_logic;
SIGNAL \writeData[20]~output_o\ : std_logic;
SIGNAL \writeData[21]~output_o\ : std_logic;
SIGNAL \writeData[22]~output_o\ : std_logic;
SIGNAL \writeData[23]~output_o\ : std_logic;
SIGNAL \writeData[24]~output_o\ : std_logic;
SIGNAL \writeData[25]~output_o\ : std_logic;
SIGNAL \writeData[26]~output_o\ : std_logic;
SIGNAL \writeData[27]~output_o\ : std_logic;
SIGNAL \writeData[28]~output_o\ : std_logic;
SIGNAL \writeData[29]~output_o\ : std_logic;
SIGNAL \writeData[30]~output_o\ : std_logic;
SIGNAL \writeData[31]~output_o\ : std_logic;
SIGNAL \PCOutTeste[0]~output_o\ : std_logic;
SIGNAL \PCOutTeste[1]~output_o\ : std_logic;
SIGNAL \PCOutTeste[2]~output_o\ : std_logic;
SIGNAL \PCOutTeste[3]~output_o\ : std_logic;
SIGNAL \PCOutTeste[4]~output_o\ : std_logic;
SIGNAL \PCOutTeste[5]~output_o\ : std_logic;
SIGNAL \PCOutTeste[6]~output_o\ : std_logic;
SIGNAL \PCOutTeste[7]~output_o\ : std_logic;
SIGNAL \PCOutTeste[8]~output_o\ : std_logic;
SIGNAL \PCOutTeste[9]~output_o\ : std_logic;
SIGNAL \PCOutTeste[10]~output_o\ : std_logic;
SIGNAL \PCOutTeste[11]~output_o\ : std_logic;
SIGNAL \PCOutTeste[12]~output_o\ : std_logic;
SIGNAL \PCOutTeste[13]~output_o\ : std_logic;
SIGNAL \PCOutTeste[14]~output_o\ : std_logic;
SIGNAL \PCOutTeste[15]~output_o\ : std_logic;
SIGNAL \PCOutTeste[16]~output_o\ : std_logic;
SIGNAL \PCOutTeste[17]~output_o\ : std_logic;
SIGNAL \PCOutTeste[18]~output_o\ : std_logic;
SIGNAL \PCOutTeste[19]~output_o\ : std_logic;
SIGNAL \PCOutTeste[20]~output_o\ : std_logic;
SIGNAL \PCOutTeste[21]~output_o\ : std_logic;
SIGNAL \PCOutTeste[22]~output_o\ : std_logic;
SIGNAL \PCOutTeste[23]~output_o\ : std_logic;
SIGNAL \PCOutTeste[24]~output_o\ : std_logic;
SIGNAL \PCOutTeste[25]~output_o\ : std_logic;
SIGNAL \PCOutTeste[26]~output_o\ : std_logic;
SIGNAL \PCOutTeste[27]~output_o\ : std_logic;
SIGNAL \PCOutTeste[28]~output_o\ : std_logic;
SIGNAL \PCOutTeste[29]~output_o\ : std_logic;
SIGNAL \PCOutTeste[30]~output_o\ : std_logic;
SIGNAL \PCOutTeste[31]~output_o\ : std_logic;
SIGNAL \ULAINA[0]~output_o\ : std_logic;
SIGNAL \ULAINA[1]~output_o\ : std_logic;
SIGNAL \ULAINA[2]~output_o\ : std_logic;
SIGNAL \ULAINA[3]~output_o\ : std_logic;
SIGNAL \ULAINA[4]~output_o\ : std_logic;
SIGNAL \ULAINA[5]~output_o\ : std_logic;
SIGNAL \ULAINA[6]~output_o\ : std_logic;
SIGNAL \ULAINA[7]~output_o\ : std_logic;
SIGNAL \ULAINA[8]~output_o\ : std_logic;
SIGNAL \ULAINA[9]~output_o\ : std_logic;
SIGNAL \ULAINA[10]~output_o\ : std_logic;
SIGNAL \ULAINA[11]~output_o\ : std_logic;
SIGNAL \ULAINA[12]~output_o\ : std_logic;
SIGNAL \ULAINA[13]~output_o\ : std_logic;
SIGNAL \ULAINA[14]~output_o\ : std_logic;
SIGNAL \ULAINA[15]~output_o\ : std_logic;
SIGNAL \ULAINA[16]~output_o\ : std_logic;
SIGNAL \ULAINA[17]~output_o\ : std_logic;
SIGNAL \ULAINA[18]~output_o\ : std_logic;
SIGNAL \ULAINA[19]~output_o\ : std_logic;
SIGNAL \ULAINA[20]~output_o\ : std_logic;
SIGNAL \ULAINA[21]~output_o\ : std_logic;
SIGNAL \ULAINA[22]~output_o\ : std_logic;
SIGNAL \ULAINA[23]~output_o\ : std_logic;
SIGNAL \ULAINA[24]~output_o\ : std_logic;
SIGNAL \ULAINA[25]~output_o\ : std_logic;
SIGNAL \ULAINA[26]~output_o\ : std_logic;
SIGNAL \ULAINA[27]~output_o\ : std_logic;
SIGNAL \ULAINA[28]~output_o\ : std_logic;
SIGNAL \ULAINA[29]~output_o\ : std_logic;
SIGNAL \ULAINA[30]~output_o\ : std_logic;
SIGNAL \ULAINA[31]~output_o\ : std_logic;
SIGNAL \ULAINB[0]~output_o\ : std_logic;
SIGNAL \ULAINB[1]~output_o\ : std_logic;
SIGNAL \ULAINB[2]~output_o\ : std_logic;
SIGNAL \ULAINB[3]~output_o\ : std_logic;
SIGNAL \ULAINB[4]~output_o\ : std_logic;
SIGNAL \ULAINB[5]~output_o\ : std_logic;
SIGNAL \ULAINB[6]~output_o\ : std_logic;
SIGNAL \ULAINB[7]~output_o\ : std_logic;
SIGNAL \ULAINB[8]~output_o\ : std_logic;
SIGNAL \ULAINB[9]~output_o\ : std_logic;
SIGNAL \ULAINB[10]~output_o\ : std_logic;
SIGNAL \ULAINB[11]~output_o\ : std_logic;
SIGNAL \ULAINB[12]~output_o\ : std_logic;
SIGNAL \ULAINB[13]~output_o\ : std_logic;
SIGNAL \ULAINB[14]~output_o\ : std_logic;
SIGNAL \ULAINB[15]~output_o\ : std_logic;
SIGNAL \ULAINB[16]~output_o\ : std_logic;
SIGNAL \ULAINB[17]~output_o\ : std_logic;
SIGNAL \ULAINB[18]~output_o\ : std_logic;
SIGNAL \ULAINB[19]~output_o\ : std_logic;
SIGNAL \ULAINB[20]~output_o\ : std_logic;
SIGNAL \ULAINB[21]~output_o\ : std_logic;
SIGNAL \ULAINB[22]~output_o\ : std_logic;
SIGNAL \ULAINB[23]~output_o\ : std_logic;
SIGNAL \ULAINB[24]~output_o\ : std_logic;
SIGNAL \ULAINB[25]~output_o\ : std_logic;
SIGNAL \ULAINB[26]~output_o\ : std_logic;
SIGNAL \ULAINB[27]~output_o\ : std_logic;
SIGNAL \ULAINB[28]~output_o\ : std_logic;
SIGNAL \ULAINB[29]~output_o\ : std_logic;
SIGNAL \ULAINB[30]~output_o\ : std_logic;
SIGNAL \ULAINB[31]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[0]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[1]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[2]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[3]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[4]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[5]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[6]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[7]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[8]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[9]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[10]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[11]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[12]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[13]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[14]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[15]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[16]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[17]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[18]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[19]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[20]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[21]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[22]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[23]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[24]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[25]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[26]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[27]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[28]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[29]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[30]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE[31]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[0]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[1]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[2]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[3]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[4]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[5]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[6]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[7]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[8]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[9]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[10]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[11]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[12]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[13]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[14]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[15]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[16]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[17]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[18]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[19]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[20]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[21]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[22]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[23]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[24]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[25]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[26]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[27]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[28]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[29]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[30]~output_o\ : std_logic;
SIGNAL \ULAOUTTESTE1[31]~output_o\ : std_logic;
SIGNAL \beqadder[0]~output_o\ : std_logic;
SIGNAL \beqadder[1]~output_o\ : std_logic;
SIGNAL \beqadder[2]~output_o\ : std_logic;
SIGNAL \beqadder[3]~output_o\ : std_logic;
SIGNAL \beqadder[4]~output_o\ : std_logic;
SIGNAL \beqadder[5]~output_o\ : std_logic;
SIGNAL \beqadder[6]~output_o\ : std_logic;
SIGNAL \beqadder[7]~output_o\ : std_logic;
SIGNAL \beqadder[8]~output_o\ : std_logic;
SIGNAL \beqadder[9]~output_o\ : std_logic;
SIGNAL \beqadder[10]~output_o\ : std_logic;
SIGNAL \beqadder[11]~output_o\ : std_logic;
SIGNAL \beqadder[12]~output_o\ : std_logic;
SIGNAL \beqadder[13]~output_o\ : std_logic;
SIGNAL \beqadder[14]~output_o\ : std_logic;
SIGNAL \beqadder[15]~output_o\ : std_logic;
SIGNAL \beqadder[16]~output_o\ : std_logic;
SIGNAL \beqadder[17]~output_o\ : std_logic;
SIGNAL \beqadder[18]~output_o\ : std_logic;
SIGNAL \beqadder[19]~output_o\ : std_logic;
SIGNAL \beqadder[20]~output_o\ : std_logic;
SIGNAL \beqadder[21]~output_o\ : std_logic;
SIGNAL \beqadder[22]~output_o\ : std_logic;
SIGNAL \beqadder[23]~output_o\ : std_logic;
SIGNAL \beqadder[24]~output_o\ : std_logic;
SIGNAL \beqadder[25]~output_o\ : std_logic;
SIGNAL \beqadder[26]~output_o\ : std_logic;
SIGNAL \beqadder[27]~output_o\ : std_logic;
SIGNAL \beqadder[28]~output_o\ : std_logic;
SIGNAL \beqadder[29]~output_o\ : std_logic;
SIGNAL \beqadder[30]~output_o\ : std_logic;
SIGNAL \beqadder[31]~output_o\ : std_logic;
SIGNAL \beqadder2[0]~output_o\ : std_logic;
SIGNAL \beqadder2[1]~output_o\ : std_logic;
SIGNAL \beqadder2[2]~output_o\ : std_logic;
SIGNAL \beqadder2[3]~output_o\ : std_logic;
SIGNAL \beqadder2[4]~output_o\ : std_logic;
SIGNAL \beqadder2[5]~output_o\ : std_logic;
SIGNAL \beqadder2[6]~output_o\ : std_logic;
SIGNAL \beqadder2[7]~output_o\ : std_logic;
SIGNAL \beqadder2[8]~output_o\ : std_logic;
SIGNAL \beqadder2[9]~output_o\ : std_logic;
SIGNAL \beqadder2[10]~output_o\ : std_logic;
SIGNAL \beqadder2[11]~output_o\ : std_logic;
SIGNAL \beqadder2[12]~output_o\ : std_logic;
SIGNAL \beqadder2[13]~output_o\ : std_logic;
SIGNAL \beqadder2[14]~output_o\ : std_logic;
SIGNAL \beqadder2[15]~output_o\ : std_logic;
SIGNAL \beqadder2[16]~output_o\ : std_logic;
SIGNAL \beqadder2[17]~output_o\ : std_logic;
SIGNAL \beqadder2[18]~output_o\ : std_logic;
SIGNAL \beqadder2[19]~output_o\ : std_logic;
SIGNAL \beqadder2[20]~output_o\ : std_logic;
SIGNAL \beqadder2[21]~output_o\ : std_logic;
SIGNAL \beqadder2[22]~output_o\ : std_logic;
SIGNAL \beqadder2[23]~output_o\ : std_logic;
SIGNAL \beqadder2[24]~output_o\ : std_logic;
SIGNAL \beqadder2[25]~output_o\ : std_logic;
SIGNAL \beqadder2[26]~output_o\ : std_logic;
SIGNAL \beqadder2[27]~output_o\ : std_logic;
SIGNAL \beqadder2[28]~output_o\ : std_logic;
SIGNAL \beqadder2[29]~output_o\ : std_logic;
SIGNAL \beqadder2[30]~output_o\ : std_logic;
SIGNAL \beqadder2[31]~output_o\ : std_logic;
SIGNAL \beqadderout[0]~output_o\ : std_logic;
SIGNAL \beqadderout[1]~output_o\ : std_logic;
SIGNAL \beqadderout[2]~output_o\ : std_logic;
SIGNAL \beqadderout[3]~output_o\ : std_logic;
SIGNAL \beqadderout[4]~output_o\ : std_logic;
SIGNAL \beqadderout[5]~output_o\ : std_logic;
SIGNAL \beqadderout[6]~output_o\ : std_logic;
SIGNAL \beqadderout[7]~output_o\ : std_logic;
SIGNAL \beqadderout[8]~output_o\ : std_logic;
SIGNAL \beqadderout[9]~output_o\ : std_logic;
SIGNAL \beqadderout[10]~output_o\ : std_logic;
SIGNAL \beqadderout[11]~output_o\ : std_logic;
SIGNAL \beqadderout[12]~output_o\ : std_logic;
SIGNAL \beqadderout[13]~output_o\ : std_logic;
SIGNAL \beqadderout[14]~output_o\ : std_logic;
SIGNAL \beqadderout[15]~output_o\ : std_logic;
SIGNAL \beqadderout[16]~output_o\ : std_logic;
SIGNAL \beqadderout[17]~output_o\ : std_logic;
SIGNAL \beqadderout[18]~output_o\ : std_logic;
SIGNAL \beqadderout[19]~output_o\ : std_logic;
SIGNAL \beqadderout[20]~output_o\ : std_logic;
SIGNAL \beqadderout[21]~output_o\ : std_logic;
SIGNAL \beqadderout[22]~output_o\ : std_logic;
SIGNAL \beqadderout[23]~output_o\ : std_logic;
SIGNAL \beqadderout[24]~output_o\ : std_logic;
SIGNAL \beqadderout[25]~output_o\ : std_logic;
SIGNAL \beqadderout[26]~output_o\ : std_logic;
SIGNAL \beqadderout[27]~output_o\ : std_logic;
SIGNAL \beqadderout[28]~output_o\ : std_logic;
SIGNAL \beqadderout[29]~output_o\ : std_logic;
SIGNAL \beqadderout[30]~output_o\ : std_logic;
SIGNAL \beqadderout[31]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[0]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[1]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[2]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[3]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[4]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[5]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[6]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[7]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[8]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[9]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[10]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[11]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[12]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[13]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[14]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[15]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[16]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[17]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[18]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[19]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[20]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[21]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[22]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[23]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[24]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[25]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[26]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[27]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[28]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[29]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[30]~output_o\ : std_logic;
SIGNAL \signExtendOutteste[31]~output_o\ : std_logic;
SIGNAL \word[0]~output_o\ : std_logic;
SIGNAL \word[1]~output_o\ : std_logic;
SIGNAL \word[2]~output_o\ : std_logic;
SIGNAL \word[3]~output_o\ : std_logic;
SIGNAL \word[4]~output_o\ : std_logic;
SIGNAL \word[5]~output_o\ : std_logic;
SIGNAL \word[6]~output_o\ : std_logic;
SIGNAL \word[7]~output_o\ : std_logic;
SIGNAL \word[8]~output_o\ : std_logic;
SIGNAL \word[9]~output_o\ : std_logic;
SIGNAL \ULASEL[0]~output_o\ : std_logic;
SIGNAL \ULASEL[1]~output_o\ : std_logic;
SIGNAL \ULASEL[2]~output_o\ : std_logic;
SIGNAL \ULASEL[3]~output_o\ : std_logic;
SIGNAL \EXTESTE[0]~output_o\ : std_logic;
SIGNAL \EXTESTE[1]~output_o\ : std_logic;
SIGNAL \EXTESTE[2]~output_o\ : std_logic;
SIGNAL \EXTESTE[3]~output_o\ : std_logic;
SIGNAL \WBTESTE[0]~output_o\ : std_logic;
SIGNAL \WBTESTE[1]~output_o\ : std_logic;
SIGNAL \MTESTE[0]~output_o\ : std_logic;
SIGNAL \MTESTE[1]~output_o\ : std_logic;
SIGNAL \MTESTE[2]~output_o\ : std_logic;
SIGNAL \rt[0]~output_o\ : std_logic;
SIGNAL \rt[1]~output_o\ : std_logic;
SIGNAL \rt[2]~output_o\ : std_logic;
SIGNAL \rt[3]~output_o\ : std_logic;
SIGNAL \rt[4]~output_o\ : std_logic;
SIGNAL \rs[0]~output_o\ : std_logic;
SIGNAL \rs[1]~output_o\ : std_logic;
SIGNAL \rs[2]~output_o\ : std_logic;
SIGNAL \rs[3]~output_o\ : std_logic;
SIGNAL \rs[4]~output_o\ : std_logic;
SIGNAL \rd[0]~output_o\ : std_logic;
SIGNAL \rd[1]~output_o\ : std_logic;
SIGNAL \rd[2]~output_o\ : std_logic;
SIGNAL \rd[3]~output_o\ : std_logic;
SIGNAL \rd[4]~output_o\ : std_logic;
SIGNAL \regTestEnd[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \AdderPC|tempAdd[0]~0_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[0]~1\ : std_logic;
SIGNAL \AdderPC|tempAdd[1]~2_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[1]~3\ : std_logic;
SIGNAL \AdderPC|tempAdd[2]~4_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[2]~5\ : std_logic;
SIGNAL \AdderPC|tempAdd[3]~6_combout\ : std_logic;
SIGNAL \InstMem|ram~549_combout\ : std_logic;
SIGNAL \exmem|mtemp[2]~feeder_combout\ : std_logic;
SIGNAL \memwb|muxRtRdtemp[0]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|Mux31~0_combout\ : std_logic;
SIGNAL \InstMem|ram~551_combout\ : std_logic;
SIGNAL \InstMem|ram~550_combout\ : std_logic;
SIGNAL \InstMem|ram~552_combout\ : std_logic;
SIGNAL \UCULA|Mux5~0_combout\ : std_logic;
SIGNAL \ULA|Add0~0_combout\ : std_logic;
SIGNAL \ULA|Add0~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][0]~q\ : std_logic;
SIGNAL \BancoReg|Mux63~0_combout\ : std_logic;
SIGNAL \ULA|Add1~0_combout\ : std_logic;
SIGNAL \ULA|Add1~1_combout\ : std_logic;
SIGNAL \ULA|tempAdd[0]~0_combout\ : std_logic;
SIGNAL \UCULA|Mux6~0_combout\ : std_logic;
SIGNAL \UCULA|Mux7~0_combout\ : std_logic;
SIGNAL \ULA|Mux31~0_combout\ : std_logic;
SIGNAL \UCULA|Mux2~0_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[22]~29_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][31]~q\ : std_logic;
SIGNAL \BancoReg|Mux0~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][30]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][30]~q\ : std_logic;
SIGNAL \BancoReg|Mux33~0_combout\ : std_logic;
SIGNAL \muxRtImm|C[30]~30_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \exmem|readData2temp[0]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][2]~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][2]~q\ : std_logic;
SIGNAL \BancoReg|Mux61~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][3]~q\ : std_logic;
SIGNAL \BancoReg|Mux60~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[4]~4_combout\ : std_logic;
SIGNAL \muxRtImm|C[3]~3_combout\ : std_logic;
SIGNAL \muxRtImm|C[2]~2_combout\ : std_logic;
SIGNAL \ULA|Add1~2\ : std_logic;
SIGNAL \ULA|Add1~4\ : std_logic;
SIGNAL \ULA|Add1~6\ : std_logic;
SIGNAL \ULA|Add1~8\ : std_logic;
SIGNAL \ULA|Add1~9_combout\ : std_logic;
SIGNAL \BancoReg|Mux27~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux30~0_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~4\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~8\ : std_logic;
SIGNAL \ULA|Add0~9_combout\ : std_logic;
SIGNAL \ULA|Mux27~0_combout\ : std_logic;
SIGNAL \ULA|Add1~7_combout\ : std_logic;
SIGNAL \ULA|Add1~5_combout\ : std_logic;
SIGNAL \ULA|Add0~3_combout\ : std_logic;
SIGNAL \ULA|tempAdd[0]~1\ : std_logic;
SIGNAL \ULA|tempAdd[1]~3\ : std_logic;
SIGNAL \ULA|tempAdd[2]~5\ : std_logic;
SIGNAL \ULA|tempAdd[3]~7\ : std_logic;
SIGNAL \ULA|tempAdd[4]~8_combout\ : std_logic;
SIGNAL \ULA|Mux27~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[4]~0_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[4]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \InstMem|ram~553_combout\ : std_logic;
SIGNAL \muxRtImm|C[5]~5_combout\ : std_logic;
SIGNAL \ULA|Add1~10\ : std_logic;
SIGNAL \ULA|Add1~11_combout\ : std_logic;
SIGNAL \BancoReg|Mux26~0_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~11_combout\ : std_logic;
SIGNAL \ULA|Mux26~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[4]~9\ : std_logic;
SIGNAL \ULA|tempAdd[5]~10_combout\ : std_logic;
SIGNAL \ULA|Mux26~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[5]~1_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[5]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[8]~8_combout\ : std_logic;
SIGNAL \muxRtImm|C[7]~7_combout\ : std_logic;
SIGNAL \muxRtImm|C[6]~6_combout\ : std_logic;
SIGNAL \ULA|Add1~12\ : std_logic;
SIGNAL \ULA|Add1~14\ : std_logic;
SIGNAL \ULA|Add1~16\ : std_logic;
SIGNAL \ULA|Add1~17_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][8]~q\ : std_logic;
SIGNAL \BancoReg|Mux23~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][7]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][7]~q\ : std_logic;
SIGNAL \BancoReg|Mux24~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux25~0_combout\ : std_logic;
SIGNAL \ULA|Add0~12\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~16\ : std_logic;
SIGNAL \ULA|Add0~17_combout\ : std_logic;
SIGNAL \ULA|Mux23~0_combout\ : std_logic;
SIGNAL \ULA|Add1~15_combout\ : std_logic;
SIGNAL \ULA|Add0~15_combout\ : std_logic;
SIGNAL \ULA|Add1~13_combout\ : std_logic;
SIGNAL \ULA|Add0~13_combout\ : std_logic;
SIGNAL \ULA|tempAdd[5]~11\ : std_logic;
SIGNAL \ULA|tempAdd[6]~13\ : std_logic;
SIGNAL \ULA|tempAdd[7]~15\ : std_logic;
SIGNAL \ULA|tempAdd[8]~16_combout\ : std_logic;
SIGNAL \ULA|Mux23~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[8]~4_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[8]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[10]~10_combout\ : std_logic;
SIGNAL \muxRtImm|C[9]~9_combout\ : std_logic;
SIGNAL \ULA|Add1~18\ : std_logic;
SIGNAL \ULA|Add1~20\ : std_logic;
SIGNAL \ULA|Add1~21_combout\ : std_logic;
SIGNAL \BancoReg|Mux21~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][9]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][9]~q\ : std_logic;
SIGNAL \BancoReg|Mux22~0_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~20\ : std_logic;
SIGNAL \ULA|Add0~21_combout\ : std_logic;
SIGNAL \ULA|Mux21~0_combout\ : std_logic;
SIGNAL \ULA|Add1~19_combout\ : std_logic;
SIGNAL \ULA|Add0~19_combout\ : std_logic;
SIGNAL \ULA|tempAdd[8]~17\ : std_logic;
SIGNAL \ULA|tempAdd[9]~19\ : std_logic;
SIGNAL \ULA|tempAdd[10]~20_combout\ : std_logic;
SIGNAL \ULA|Mux21~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[10]~6_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[10]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[11]~11_combout\ : std_logic;
SIGNAL \ULA|Add1~22\ : std_logic;
SIGNAL \ULA|Add1~23_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][11]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][11]~q\ : std_logic;
SIGNAL \BancoReg|Mux20~0_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~23_combout\ : std_logic;
SIGNAL \ULA|tempAdd[10]~21\ : std_logic;
SIGNAL \ULA|tempAdd[11]~22_combout\ : std_logic;
SIGNAL \ULA|Mux20~1_combout\ : std_logic;
SIGNAL \ULA|Mux20~0_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[11]~7_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[11]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][12]~q\ : std_logic;
SIGNAL \BancoReg|Mux19~0_combout\ : std_logic;
SIGNAL \ULA|Add0~24\ : std_logic;
SIGNAL \ULA|Add0~25_combout\ : std_logic;
SIGNAL \muxRtImm|C[12]~12_combout\ : std_logic;
SIGNAL \ULA|Add1~24\ : std_logic;
SIGNAL \ULA|Add1~25_combout\ : std_logic;
SIGNAL \ULA|tempAdd[11]~23\ : std_logic;
SIGNAL \ULA|tempAdd[12]~24_combout\ : std_logic;
SIGNAL \ULA|Mux19~1_combout\ : std_logic;
SIGNAL \ULA|Mux19~0_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[12]~8_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[12]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[14]~14_combout\ : std_logic;
SIGNAL \muxRtImm|C[13]~13_combout\ : std_logic;
SIGNAL \ULA|Add1~26\ : std_logic;
SIGNAL \ULA|Add1~28\ : std_logic;
SIGNAL \ULA|Add1~29_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][14]~q\ : std_logic;
SIGNAL \BancoReg|Mux17~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux18~0_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~28\ : std_logic;
SIGNAL \ULA|Add0~29_combout\ : std_logic;
SIGNAL \ULA|Add1~27_combout\ : std_logic;
SIGNAL \ULA|Add0~27_combout\ : std_logic;
SIGNAL \ULA|tempAdd[12]~25\ : std_logic;
SIGNAL \ULA|tempAdd[13]~27\ : std_logic;
SIGNAL \ULA|tempAdd[14]~28_combout\ : std_logic;
SIGNAL \ULA|Mux17~1_combout\ : std_logic;
SIGNAL \ULA|Mux17~0_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[14]~10_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[14]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|Mux15~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][15]~q\ : std_logic;
SIGNAL \BancoReg|Mux16~0_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~32\ : std_logic;
SIGNAL \ULA|Add0~33_combout\ : std_logic;
SIGNAL \muxRtImm|C[16]~16_combout\ : std_logic;
SIGNAL \muxRtImm|C[15]~15_combout\ : std_logic;
SIGNAL \ULA|Add1~30\ : std_logic;
SIGNAL \ULA|Add1~32\ : std_logic;
SIGNAL \ULA|Add1~33_combout\ : std_logic;
SIGNAL \ULA|Mux15~0_combout\ : std_logic;
SIGNAL \ULA|Add0~31_combout\ : std_logic;
SIGNAL \ULA|Add1~31_combout\ : std_logic;
SIGNAL \ULA|tempAdd[14]~29\ : std_logic;
SIGNAL \ULA|tempAdd[15]~31\ : std_logic;
SIGNAL \ULA|tempAdd[16]~32_combout\ : std_logic;
SIGNAL \ULA|Mux15~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[16]~12_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[16]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[18]~18_combout\ : std_logic;
SIGNAL \muxRtImm|C[17]~17_combout\ : std_logic;
SIGNAL \ULA|Add1~34\ : std_logic;
SIGNAL \ULA|Add1~36\ : std_logic;
SIGNAL \ULA|Add1~37_combout\ : std_logic;
SIGNAL \BancoReg|Mux13~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux14~0_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~36\ : std_logic;
SIGNAL \ULA|Add0~37_combout\ : std_logic;
SIGNAL \ULA|Mux13~0_combout\ : std_logic;
SIGNAL \ULA|Add0~35_combout\ : std_logic;
SIGNAL \ULA|Add1~35_combout\ : std_logic;
SIGNAL \ULA|tempAdd[16]~33\ : std_logic;
SIGNAL \ULA|tempAdd[17]~35\ : std_logic;
SIGNAL \ULA|tempAdd[18]~36_combout\ : std_logic;
SIGNAL \ULA|Mux13~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[18]~14_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[18]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[45]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[19]~19_combout\ : std_logic;
SIGNAL \ULA|Add1~38\ : std_logic;
SIGNAL \ULA|Add1~39_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][19]~q\ : std_logic;
SIGNAL \BancoReg|Mux12~0_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~39_combout\ : std_logic;
SIGNAL \ULA|Mux12~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[18]~37\ : std_logic;
SIGNAL \ULA|tempAdd[19]~38_combout\ : std_logic;
SIGNAL \ULA|Mux12~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[19]~15_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[19]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[47]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[49]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[51]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|Mux9~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux10~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][20]~q\ : std_logic;
SIGNAL \BancoReg|Mux11~0_combout\ : std_logic;
SIGNAL \ULA|Add0~40\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~44\ : std_logic;
SIGNAL \ULA|Add0~45_combout\ : std_logic;
SIGNAL \muxRtImm|C[22]~22_combout\ : std_logic;
SIGNAL \muxRtImm|C[21]~21_combout\ : std_logic;
SIGNAL \muxRtImm|C[20]~20_combout\ : std_logic;
SIGNAL \ULA|Add1~40\ : std_logic;
SIGNAL \ULA|Add1~42\ : std_logic;
SIGNAL \ULA|Add1~44\ : std_logic;
SIGNAL \ULA|Add1~45_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[22]~28_combout\ : std_logic;
SIGNAL \ULA|Add1~43_combout\ : std_logic;
SIGNAL \ULA|Add0~43_combout\ : std_logic;
SIGNAL \ULA|Add0~41_combout\ : std_logic;
SIGNAL \ULA|Add1~41_combout\ : std_logic;
SIGNAL \ULA|tempAdd[19]~39\ : std_logic;
SIGNAL \ULA|tempAdd[20]~41\ : std_logic;
SIGNAL \ULA|tempAdd[21]~43\ : std_logic;
SIGNAL \ULA|tempAdd[22]~44_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[22]~18_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[22]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[25]~25_combout\ : std_logic;
SIGNAL \muxRtImm|C[24]~24_combout\ : std_logic;
SIGNAL \muxRtImm|C[23]~23_combout\ : std_logic;
SIGNAL \ULA|Add1~46\ : std_logic;
SIGNAL \ULA|Add1~48\ : std_logic;
SIGNAL \ULA|Add1~50\ : std_logic;
SIGNAL \ULA|Add1~51_combout\ : std_logic;
SIGNAL \BancoReg|Mux6~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux7~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux8~0_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~48\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~51_combout\ : std_logic;
SIGNAL \ULA|Add1~49_combout\ : std_logic;
SIGNAL \ULA|Add0~49_combout\ : std_logic;
SIGNAL \ULA|Add1~47_combout\ : std_logic;
SIGNAL \ULA|Add0~47_combout\ : std_logic;
SIGNAL \ULA|tempAdd[22]~45\ : std_logic;
SIGNAL \ULA|tempAdd[23]~47\ : std_logic;
SIGNAL \ULA|tempAdd[24]~49\ : std_logic;
SIGNAL \ULA|tempAdd[25]~50_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[25]~32_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[25]~21_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[25]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[27]~27_combout\ : std_logic;
SIGNAL \muxRtImm|C[26]~26_combout\ : std_logic;
SIGNAL \ULA|Add1~52\ : std_logic;
SIGNAL \ULA|Add1~54\ : std_logic;
SIGNAL \ULA|Add1~55_combout\ : std_logic;
SIGNAL \BancoReg|Mux4~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux5~0_combout\ : std_logic;
SIGNAL \ULA|Add0~52\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~55_combout\ : std_logic;
SIGNAL \ULA|Add1~53_combout\ : std_logic;
SIGNAL \ULA|Add0~53_combout\ : std_logic;
SIGNAL \ULA|tempAdd[25]~51\ : std_logic;
SIGNAL \ULA|tempAdd[26]~53\ : std_logic;
SIGNAL \ULA|tempAdd[27]~54_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[27]~34_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[27]~23_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \muxRtImm|C[28]~28_combout\ : std_logic;
SIGNAL \ULA|Add1~56\ : std_logic;
SIGNAL \ULA|Add1~57_combout\ : std_logic;
SIGNAL \BancoReg|Mux3~0_combout\ : std_logic;
SIGNAL \ULA|Add0~56\ : std_logic;
SIGNAL \ULA|Add0~57_combout\ : std_logic;
SIGNAL \ULA|tempAdd[27]~55\ : std_logic;
SIGNAL \ULA|tempAdd[28]~56_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[28]~35_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[28]~24_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \exmem|readData2temp[31]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \MemDados|ram~582_combout\ : std_logic;
SIGNAL \MuxULAMem|C[28]~28_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][28]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][28]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][28]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][28]~q\ : std_logic;
SIGNAL \BancoReg|Mux35~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[63]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram~581_combout\ : std_logic;
SIGNAL \MuxULAMem|C[27]~27_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][27]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][27]~q\ : std_logic;
SIGNAL \BancoReg|Mux36~0_combout\ : std_logic;
SIGNAL \idex|readData2temp[27]~feeder_combout\ : std_logic;
SIGNAL \exmem|readData2temp[27]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \MemDados|ram~580_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[26]~33_combout\ : std_logic;
SIGNAL \ULA|tempAdd[26]~52_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[26]~22_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[26]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[26]~26_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][26]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][26]~q\ : std_logic;
SIGNAL \BancoReg|Mux37~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \MemDados|ram~579_combout\ : std_logic;
SIGNAL \MuxULAMem|C[25]~25_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][25]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][25]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][25]~q\ : std_logic;
SIGNAL \BancoReg|Mux38~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \MemDados|ram~578_combout\ : std_logic;
SIGNAL \ULA|tempAdd[24]~48_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[24]~31_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[24]~20_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[24]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[24]~24_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][24]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][24]~q\ : std_logic;
SIGNAL \BancoReg|Mux39~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \MemDados|ram~577_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[23]~30_combout\ : std_logic;
SIGNAL \ULA|tempAdd[23]~46_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[23]~19_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[23]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[23]~23_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][23]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][23]~q\ : std_logic;
SIGNAL \BancoReg|Mux40~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram~576_combout\ : std_logic;
SIGNAL \MuxULAMem|C[22]~22_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][22]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][22]~q\ : std_logic;
SIGNAL \BancoReg|Mux41~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram~575_combout\ : std_logic;
SIGNAL \ULA|Mux10~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[21]~42_combout\ : std_logic;
SIGNAL \ULA|Mux10~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[21]~17_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[21]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[21]~21_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][21]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][21]~q\ : std_logic;
SIGNAL \BancoReg|Mux42~0_combout\ : std_logic;
SIGNAL \exmem|readData2temp[21]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \MemDados|ram~574_combout\ : std_logic;
SIGNAL \ULA|Mux11~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[20]~40_combout\ : std_logic;
SIGNAL \ULA|Mux11~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[20]~16_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[20]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[20]~20_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][20]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][20]~q\ : std_logic;
SIGNAL \BancoReg|Mux43~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \MemDados|ram~573_combout\ : std_logic;
SIGNAL \MuxULAMem|C[19]~19_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][19]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][19]~q\ : std_logic;
SIGNAL \BancoReg|Mux44~0_combout\ : std_logic;
SIGNAL \exmem|readData2temp[19]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \MemDados|ram~572_combout\ : std_logic;
SIGNAL \MuxULAMem|C[18]~18_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][18]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][18]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][18]~q\ : std_logic;
SIGNAL \BancoReg|Mux45~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \MemDados|ram~571_combout\ : std_logic;
SIGNAL \ULA|Mux14~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[17]~34_combout\ : std_logic;
SIGNAL \ULA|Mux14~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[17]~13_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[17]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[17]~17_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][17]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][17]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][17]~q\ : std_logic;
SIGNAL \BancoReg|Mux46~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[41]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram~570_combout\ : std_logic;
SIGNAL \MuxULAMem|C[16]~16_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][16]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][16]~q\ : std_logic;
SIGNAL \BancoReg|Mux47~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \MemDados|ram~569_combout\ : std_logic;
SIGNAL \ULA|Mux16~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[15]~30_combout\ : std_logic;
SIGNAL \ULA|Mux16~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[15]~11_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[15]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[15]~15_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][15]~q\ : std_logic;
SIGNAL \BancoReg|Mux48~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \MemDados|ram~568_combout\ : std_logic;
SIGNAL \MuxULAMem|C[14]~14_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][14]~q\ : std_logic;
SIGNAL \BancoReg|Mux49~0_combout\ : std_logic;
SIGNAL \idex|readData2temp[14]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram~567_combout\ : std_logic;
SIGNAL \ULA|Mux18~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[13]~26_combout\ : std_logic;
SIGNAL \ULA|Mux18~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[13]~9_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[13]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[13]~13_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][13]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][13]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][13]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][13]~q\ : std_logic;
SIGNAL \BancoReg|Mux50~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram~566_combout\ : std_logic;
SIGNAL \MuxULAMem|C[12]~12_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][12]~q\ : std_logic;
SIGNAL \BancoReg|Mux51~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \MemDados|ram~565_combout\ : std_logic;
SIGNAL \MuxULAMem|C[11]~11_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][11]~q\ : std_logic;
SIGNAL \BancoReg|Mux52~0_combout\ : std_logic;
SIGNAL \exmem|readData2temp[11]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram~564_combout\ : std_logic;
SIGNAL \MuxULAMem|C[10]~10_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][10]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][10]~q\ : std_logic;
SIGNAL \BancoReg|Mux53~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \MemDados|ram~563_combout\ : std_logic;
SIGNAL \ULA|Mux22~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[9]~18_combout\ : std_logic;
SIGNAL \ULA|Mux22~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[9]~5_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[9]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[9]~9_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][9]~q\ : std_logic;
SIGNAL \BancoReg|Mux54~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \MemDados|ram~562_combout\ : std_logic;
SIGNAL \MuxULAMem|C[8]~8_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][8]~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][8]~q\ : std_logic;
SIGNAL \BancoReg|Mux55~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \MemDados|ram~561_combout\ : std_logic;
SIGNAL \ULA|Mux24~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[7]~14_combout\ : std_logic;
SIGNAL \ULA|Mux24~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[7]~3_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[7]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[7]~7_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][7]~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][7]~q\ : std_logic;
SIGNAL \BancoReg|Mux56~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \MemDados|ram~560_combout\ : std_logic;
SIGNAL \ULA|Mux25~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[6]~12_combout\ : std_logic;
SIGNAL \ULA|Mux25~1_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[6]~2_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[6]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[6]~6_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][6]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][6]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][6]~q\ : std_logic;
SIGNAL \BancoReg|Mux57~0_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram~559_combout\ : std_logic;
SIGNAL \MuxULAMem|C[5]~5_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][5]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][5]~q\ : std_logic;
SIGNAL \BancoReg|Mux58~0_combout\ : std_logic;
SIGNAL \idex|readData2temp[5]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \MemDados|ram~558_combout\ : std_logic;
SIGNAL \MuxULAMem|C[4]~4_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][4]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][4]~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][4]~q\ : std_logic;
SIGNAL \BancoReg|Mux59~0_combout\ : std_logic;
SIGNAL \exmem|readData2temp[4]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \MemDados|ram~557_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[3]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[3]~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][3]~q\ : std_logic;
SIGNAL \BancoReg|Mux28~0_combout\ : std_logic;
SIGNAL \ULA|Add0~7_combout\ : std_logic;
SIGNAL \ULA|tempAdd[3]~6_combout\ : std_logic;
SIGNAL \ULA|Mux28~0_combout\ : std_logic;
SIGNAL \ULA|Mux28~1_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \MemDados|ram~556_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[2]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[2]~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][2]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][2]~q\ : std_logic;
SIGNAL \BancoReg|Mux29~0_combout\ : std_logic;
SIGNAL \ULA|Add0~5_combout\ : std_logic;
SIGNAL \ULA|Mux29~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[2]~4_combout\ : std_logic;
SIGNAL \ULA|Mux29~1_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \MemDados|ram~555_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[1]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[1]~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][1]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][1]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][1]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][1]~q\ : std_logic;
SIGNAL \BancoReg|Mux62~0_combout\ : std_logic;
SIGNAL \muxRtImm|C[1]~1_combout\ : std_logic;
SIGNAL \ULA|Add1~3_combout\ : std_logic;
SIGNAL \ULA|Mux30~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[1]~2_combout\ : std_logic;
SIGNAL \ULA|Mux30~1_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \MemDados|ram~583_combout\ : std_logic;
SIGNAL \ULA|Add1~58\ : std_logic;
SIGNAL \ULA|Add1~59_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][29]~q\ : std_logic;
SIGNAL \BancoReg|Mux2~0_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~59_combout\ : std_logic;
SIGNAL \ULA|tempAdd[28]~57\ : std_logic;
SIGNAL \ULA|tempAdd[29]~58_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[29]~36_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[29]~25_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[29]~feeder_combout\ : std_logic;
SIGNAL \MuxULAMem|C[29]~29_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][29]~q\ : std_logic;
SIGNAL \BancoReg|Mux34~0_combout\ : std_logic;
SIGNAL \muxRtImm|C[29]~29_combout\ : std_logic;
SIGNAL \ULA|Add1~60\ : std_logic;
SIGNAL \ULA|Add1~61_combout\ : std_logic;
SIGNAL \ULA|Add0~60\ : std_logic;
SIGNAL \ULA|Add0~61_combout\ : std_logic;
SIGNAL \ULA|tempAdd[29]~59\ : std_logic;
SIGNAL \ULA|tempAdd[30]~60_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[30]~37_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[30]~26_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[30]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[69]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \MemDados|ram~584_combout\ : std_logic;
SIGNAL \MuxULAMem|C[30]~30_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][30]~q\ : std_logic;
SIGNAL \BancoReg|Mux1~0_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~63_combout\ : std_logic;
SIGNAL \ULA|tempAdd[30]~61\ : std_logic;
SIGNAL \ULA|tempAdd[32]~62_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[31]~38_combout\ : std_logic;
SIGNAL \exmem|ulaouttemp[31]~27_combout\ : std_logic;
SIGNAL \memwb|ulaouttemp[31]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[71]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \MemDados|ram~585_combout\ : std_logic;
SIGNAL \MuxULAMem|C[31]~31_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][31]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][31]~q\ : std_logic;
SIGNAL \BancoReg|Mux32~0_combout\ : std_logic;
SIGNAL \muxRtImm|C[31]~31_combout\ : std_logic;
SIGNAL \ULA|Add1~62\ : std_logic;
SIGNAL \ULA|Add1~63_combout\ : std_logic;
SIGNAL \ULA|sltIn[0]~0_combout\ : std_logic;
SIGNAL \ULA|Mux31~1_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \MemDados|ram_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \MemDados|ram~554_combout\ : std_logic;
SIGNAL \MuxULAMem|C[0]~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][0]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][0]~q\ : std_logic;
SIGNAL \regTestEnd[2]~input_o\ : std_logic;
SIGNAL \regTestEnd[0]~input_o\ : std_logic;
SIGNAL \BancoReg|Mux95~0_combout\ : std_logic;
SIGNAL \regTestEnd[1]~input_o\ : std_logic;
SIGNAL \BancoReg|Mux95~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux94~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux94~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux93~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux93~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux93~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux92~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux92~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux91~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux90~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux91~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux90~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux90~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux90~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux89~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux89~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux89~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux88~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux88~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux87~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux87~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux86~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux86~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux85~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux85~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux84~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux84~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux83~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux83~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux82~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux82~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux81~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux81~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux80~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux80~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux79~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux79~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux78~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux78~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux77~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux77~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux76~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux76~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux75~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux75~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux74~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux74~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux73~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux73~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux72~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux72~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux71~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux71~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux70~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux70~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux69~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux69~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux68~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux68~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux67~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux67~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux66~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux66~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux65~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux65~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux64~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux64~1_combout\ : std_logic;
SIGNAL \memTestEnd[1]~input_o\ : std_logic;
SIGNAL \memTestEnd[2]~input_o\ : std_logic;
SIGNAL \memTestEnd[0]~input_o\ : std_logic;
SIGNAL \memTestEnd[3]~input_o\ : std_logic;
SIGNAL \MemDados|ram~549_combout\ : std_logic;
SIGNAL \MemDados|ram~550_combout\ : std_logic;
SIGNAL \MemDados|ram~551_combout\ : std_logic;
SIGNAL \MemDados|ram~552_combout\ : std_logic;
SIGNAL \MemDados|ram~553_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[3]~7\ : std_logic;
SIGNAL \AdderPC|tempAdd[4]~8_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[4]~9\ : std_logic;
SIGNAL \AdderPC|tempAdd[5]~10_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[5]~11\ : std_logic;
SIGNAL \AdderPC|tempAdd[6]~12_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[6]~13\ : std_logic;
SIGNAL \AdderPC|tempAdd[7]~14_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[7]~15\ : std_logic;
SIGNAL \AdderPC|tempAdd[8]~16_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[8]~17\ : std_logic;
SIGNAL \AdderPC|tempAdd[9]~18_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[9]~19\ : std_logic;
SIGNAL \AdderPC|tempAdd[10]~20_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[10]~21\ : std_logic;
SIGNAL \AdderPC|tempAdd[11]~22_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[11]~23\ : std_logic;
SIGNAL \AdderPC|tempAdd[12]~24_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[12]~25\ : std_logic;
SIGNAL \AdderPC|tempAdd[13]~26_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[13]~27\ : std_logic;
SIGNAL \AdderPC|tempAdd[14]~28_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[14]~29\ : std_logic;
SIGNAL \AdderPC|tempAdd[15]~30_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[15]~31\ : std_logic;
SIGNAL \AdderPC|tempAdd[16]~32_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[16]~33\ : std_logic;
SIGNAL \AdderPC|tempAdd[17]~34_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[17]~35\ : std_logic;
SIGNAL \AdderPC|tempAdd[18]~36_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[18]~37\ : std_logic;
SIGNAL \AdderPC|tempAdd[19]~38_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[19]~39\ : std_logic;
SIGNAL \AdderPC|tempAdd[20]~40_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[20]~41\ : std_logic;
SIGNAL \AdderPC|tempAdd[21]~42_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[21]~43\ : std_logic;
SIGNAL \AdderPC|tempAdd[22]~44_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[22]~45\ : std_logic;
SIGNAL \AdderPC|tempAdd[23]~46_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[23]~47\ : std_logic;
SIGNAL \AdderPC|tempAdd[24]~48_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[24]~49\ : std_logic;
SIGNAL \AdderPC|tempAdd[25]~50_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[25]~51\ : std_logic;
SIGNAL \AdderPC|tempAdd[26]~52_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[26]~53\ : std_logic;
SIGNAL \AdderPC|tempAdd[27]~54_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[27]~55\ : std_logic;
SIGNAL \AdderPC|tempAdd[28]~56_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[28]~57\ : std_logic;
SIGNAL \AdderPC|tempAdd[29]~58_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[29]~59\ : std_logic;
SIGNAL \AdderPC|tempAdd[30]~60_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[30]~61\ : std_logic;
SIGNAL \AdderPC|tempAdd[32]~62_combout\ : std_logic;
SIGNAL \muxRtImm|C[0]~0_combout\ : std_logic;
SIGNAL \idex|pctemp[0]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[1]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[3]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[4]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[6]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[8]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[9]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[11]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[13]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[15]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[16]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[17]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[18]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[20]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[21]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[23]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[24]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[27]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[28]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[29]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[30]~feeder_combout\ : std_logic;
SIGNAL \idex|pctemp[31]~feeder_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[0]~32_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[0]~feeder_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[0]~33\ : std_logic;
SIGNAL \exmem|addimmtemp[1]~34_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[1]~35\ : std_logic;
SIGNAL \exmem|addimmtemp[2]~36_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[2]~37\ : std_logic;
SIGNAL \exmem|addimmtemp[3]~38_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[3]~39\ : std_logic;
SIGNAL \exmem|addimmtemp[4]~40_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[4]~41\ : std_logic;
SIGNAL \exmem|addimmtemp[5]~42_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[5]~43\ : std_logic;
SIGNAL \exmem|addimmtemp[6]~44_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[6]~45\ : std_logic;
SIGNAL \exmem|addimmtemp[7]~46_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[7]~47\ : std_logic;
SIGNAL \exmem|addimmtemp[8]~48_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[8]~49\ : std_logic;
SIGNAL \exmem|addimmtemp[9]~50_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[9]~51\ : std_logic;
SIGNAL \exmem|addimmtemp[10]~52_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[10]~53\ : std_logic;
SIGNAL \exmem|addimmtemp[11]~54_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[11]~55\ : std_logic;
SIGNAL \exmem|addimmtemp[12]~56_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[12]~57\ : std_logic;
SIGNAL \exmem|addimmtemp[13]~58_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[13]~59\ : std_logic;
SIGNAL \exmem|addimmtemp[14]~60_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[14]~61\ : std_logic;
SIGNAL \exmem|addimmtemp[15]~62_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[15]~63\ : std_logic;
SIGNAL \exmem|addimmtemp[16]~64_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[16]~65\ : std_logic;
SIGNAL \exmem|addimmtemp[17]~66_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[17]~67\ : std_logic;
SIGNAL \exmem|addimmtemp[18]~68_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[18]~69\ : std_logic;
SIGNAL \exmem|addimmtemp[19]~70_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[19]~71\ : std_logic;
SIGNAL \exmem|addimmtemp[20]~72_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[20]~73\ : std_logic;
SIGNAL \exmem|addimmtemp[21]~74_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[21]~75\ : std_logic;
SIGNAL \exmem|addimmtemp[22]~76_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[22]~77\ : std_logic;
SIGNAL \exmem|addimmtemp[23]~78_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[23]~79\ : std_logic;
SIGNAL \exmem|addimmtemp[24]~80_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[24]~81\ : std_logic;
SIGNAL \exmem|addimmtemp[25]~82_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[25]~83\ : std_logic;
SIGNAL \exmem|addimmtemp[26]~84_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[26]~85\ : std_logic;
SIGNAL \exmem|addimmtemp[27]~86_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[27]~87\ : std_logic;
SIGNAL \exmem|addimmtemp[28]~88_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[28]~89\ : std_logic;
SIGNAL \exmem|addimmtemp[29]~90_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[29]~91\ : std_logic;
SIGNAL \exmem|addimmtemp[30]~92_combout\ : std_logic;
SIGNAL \exmem|addimmtemp[30]~93\ : std_logic;
SIGNAL \exmem|addimmtemp[31]~94_combout\ : std_logic;
SIGNAL \memwb|memdatatemp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \idex|signExtendtemp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \exmem|ulaouttemp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ifid|insttemp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \exmem|addimmtemp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \memwb|ulaouttemp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \memwb|muxRtRdtemp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \idex|readData1temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \idex|readData2temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \idex|extemp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \idex|pctemp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \exmem|mtemp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MemDados|ram_rtl_0_bypass\ : std_logic_vector(0 TO 72);
SIGNAL \exmem|readData2temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \exmem|ALT_INV_mtemp\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \idex|ALT_INV_extemp\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memwb|ALT_INV_muxRtRdtemp\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ifid|ALT_INV_insttemp\ : std_logic_vector(23 DOWNTO 23);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_regTestEnd <= regTestEnd;
ww_memTestEnd <= memTestEnd;
regTestOut <= ww_regTestOut;
memTestOut <= ww_memTestOut;
readData1Out <= ww_readData1Out;
readData2Out <= ww_readData2Out;
writeData <= ww_writeData;
PCOutTeste <= ww_PCOutTeste;
ULAINA <= ww_ULAINA;
ULAINB <= ww_ULAINB;
ULAOUTTESTE <= ww_ULAOUTTESTE;
ULAOUTTESTE1 <= ww_ULAOUTTESTE1;
beqadder <= ww_beqadder;
beqadder2 <= ww_beqadder2;
beqadderout <= ww_beqadderout;
signExtendOutteste <= ww_signExtendOutteste;
word <= ww_word;
ULASEL <= ww_ULASEL;
EXTESTE <= ww_EXTESTE;
WBTESTE <= ww_WBTESTE;
MTESTE <= ww_MTESTE;
rt <= ww_rt;
rs <= ww_rs;
rd <= ww_rd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \exmem|readData2temp\(31) & \exmem|readData2temp\(30) & \exmem|readData2temp\(29) & \exmem|readData2temp\(28) & \exmem|readData2temp\(27) & 
\exmem|readData2temp\(26) & \exmem|readData2temp\(25) & \exmem|readData2temp\(24) & \exmem|readData2temp\(23) & \exmem|readData2temp\(22) & \exmem|readData2temp\(21) & \exmem|readData2temp\(20) & \exmem|readData2temp\(19) & 
\exmem|readData2temp\(18) & \exmem|readData2temp\(17) & \exmem|readData2temp\(16) & \exmem|readData2temp\(15) & \exmem|readData2temp\(14) & \exmem|readData2temp\(13) & \exmem|readData2temp\(12) & \exmem|readData2temp\(11) & 
\exmem|readData2temp\(10) & \exmem|readData2temp\(9) & \exmem|readData2temp\(8) & \exmem|readData2temp\(7) & \exmem|readData2temp\(6) & \exmem|readData2temp\(5) & \exmem|readData2temp\(4) & \exmem|readData2temp\(3) & 
\exmem|readData2temp\(2) & \exmem|readData2temp\(1) & \exmem|readData2temp\(0));

\MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\exmem|ulaouttemp\(3) & \exmem|ulaouttemp\(2) & \exmem|ulaouttemp\(1) & \exmem|ulaouttemp\(0));

\MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\ULA|Mux28~1_combout\ & \ULA|Mux29~1_combout\ & \ULA|Mux30~1_combout\ & \ULA|Mux31~1_combout\);

\MemDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\MemDados|ram_rtl_0|auto_generated|ram_block1a1\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\MemDados|ram_rtl_0|auto_generated|ram_block1a2\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\MemDados|ram_rtl_0|auto_generated|ram_block1a3\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\MemDados|ram_rtl_0|auto_generated|ram_block1a4\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\MemDados|ram_rtl_0|auto_generated|ram_block1a5\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\MemDados|ram_rtl_0|auto_generated|ram_block1a6\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\MemDados|ram_rtl_0|auto_generated|ram_block1a7\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\MemDados|ram_rtl_0|auto_generated|ram_block1a8\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\MemDados|ram_rtl_0|auto_generated|ram_block1a9\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\MemDados|ram_rtl_0|auto_generated|ram_block1a10\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\MemDados|ram_rtl_0|auto_generated|ram_block1a11\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\MemDados|ram_rtl_0|auto_generated|ram_block1a12\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\MemDados|ram_rtl_0|auto_generated|ram_block1a13\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\MemDados|ram_rtl_0|auto_generated|ram_block1a14\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\MemDados|ram_rtl_0|auto_generated|ram_block1a15\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\MemDados|ram_rtl_0|auto_generated|ram_block1a16\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\MemDados|ram_rtl_0|auto_generated|ram_block1a17\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\MemDados|ram_rtl_0|auto_generated|ram_block1a18\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\MemDados|ram_rtl_0|auto_generated|ram_block1a19\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\MemDados|ram_rtl_0|auto_generated|ram_block1a20\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\MemDados|ram_rtl_0|auto_generated|ram_block1a21\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\MemDados|ram_rtl_0|auto_generated|ram_block1a22\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\MemDados|ram_rtl_0|auto_generated|ram_block1a23\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\MemDados|ram_rtl_0|auto_generated|ram_block1a24\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\MemDados|ram_rtl_0|auto_generated|ram_block1a25\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\MemDados|ram_rtl_0|auto_generated|ram_block1a26\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\MemDados|ram_rtl_0|auto_generated|ram_block1a27\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\MemDados|ram_rtl_0|auto_generated|ram_block1a28\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\MemDados|ram_rtl_0|auto_generated|ram_block1a29\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\MemDados|ram_rtl_0|auto_generated|ram_block1a30\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\MemDados|ram_rtl_0|auto_generated|ram_block1a31\ <= \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\exmem|ALT_INV_mtemp\(2) <= NOT \exmem|mtemp\(2);
\idex|ALT_INV_extemp\(0) <= NOT \idex|extemp\(0);
\memwb|ALT_INV_muxRtRdtemp\(0) <= NOT \memwb|muxRtRdtemp\(0);
\ifid|ALT_INV_insttemp\(23) <= NOT \ifid|insttemp\(23);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X98_Y73_N16
\regTestOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux95~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\regTestOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux94~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\regTestOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux93~2_combout\,
	devoe => ww_devoe,
	o => \regTestOut[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\regTestOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux92~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\regTestOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux91~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\regTestOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux90~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\regTestOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux89~2_combout\,
	devoe => ww_devoe,
	o => \regTestOut[6]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\regTestOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux88~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[7]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\regTestOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux87~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[8]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\regTestOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux86~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[9]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\regTestOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux85~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[10]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\regTestOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux84~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[11]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\regTestOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux83~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[12]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\regTestOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux82~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[13]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\regTestOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux81~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[14]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\regTestOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux80~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[15]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\regTestOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux79~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[16]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\regTestOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux78~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[17]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\regTestOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux77~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[18]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\regTestOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux76~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[19]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\regTestOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux75~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[20]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\regTestOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux74~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[21]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\regTestOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux73~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[22]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\regTestOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux72~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[23]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\regTestOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux71~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[24]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\regTestOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux70~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[25]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\regTestOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux69~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[26]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\regTestOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux68~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[27]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\regTestOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux67~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[28]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\regTestOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux66~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[29]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\regTestOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux65~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[30]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\regTestOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux64~1_combout\,
	devoe => ww_devoe,
	o => \regTestOut[31]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\memTestOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~549_combout\,
	devoe => ww_devoe,
	o => \memTestOut[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\memTestOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\memTestOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~550_combout\,
	devoe => ww_devoe,
	o => \memTestOut[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\memTestOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~551_combout\,
	devoe => ww_devoe,
	o => \memTestOut[3]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\memTestOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\memTestOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~552_combout\,
	devoe => ww_devoe,
	o => \memTestOut[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\memTestOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\memTestOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~552_combout\,
	devoe => ww_devoe,
	o => \memTestOut[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\memTestOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~552_combout\,
	devoe => ww_devoe,
	o => \memTestOut[8]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\memTestOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~552_combout\,
	devoe => ww_devoe,
	o => \memTestOut[9]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\memTestOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~552_combout\,
	devoe => ww_devoe,
	o => \memTestOut[10]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\memTestOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[11]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\memTestOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\memTestOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[13]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\memTestOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[14]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\memTestOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[15]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\memTestOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~553_combout\,
	devoe => ww_devoe,
	o => \memTestOut[16]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\memTestOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[17]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\memTestOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~553_combout\,
	devoe => ww_devoe,
	o => \memTestOut[18]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\memTestOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[19]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\memTestOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[20]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\memTestOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[21]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\memTestOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[22]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\memTestOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~553_combout\,
	devoe => ww_devoe,
	o => \memTestOut[23]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\memTestOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[24]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\memTestOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[25]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\memTestOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~553_combout\,
	devoe => ww_devoe,
	o => \memTestOut[26]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\memTestOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~553_combout\,
	devoe => ww_devoe,
	o => \memTestOut[27]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\memTestOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[28]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\memTestOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[29]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\memTestOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \memTestOut[30]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\memTestOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~553_combout\,
	devoe => ww_devoe,
	o => \memTestOut[31]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\readData1Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[0]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\readData1Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\readData1Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\readData1Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[3]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\readData1Out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux27~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[4]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\readData1Out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux26~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[5]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\readData1Out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux25~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[6]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\readData1Out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux24~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\readData1Out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[8]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\readData1Out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[9]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\readData1Out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[10]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\readData1Out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[11]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\readData1Out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[12]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\readData1Out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[13]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\readData1Out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[14]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\readData1Out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[15]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\readData1Out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[16]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\readData1Out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[17]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\readData1Out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[18]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\readData1Out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[19]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\readData1Out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[20]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\readData1Out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[21]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\readData1Out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[22]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\readData1Out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[23]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\readData1Out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[24]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\readData1Out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[25]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\readData1Out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[26]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\readData1Out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[27]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\readData1Out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[28]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\readData1Out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[29]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\readData1Out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[30]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\readData1Out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \readData1Out[31]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\readData2Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux63~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\readData2Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux62~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[1]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\readData2Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux61~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[2]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\readData2Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux60~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[3]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\readData2Out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux59~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[4]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\readData2Out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux58~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[5]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\readData2Out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux57~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[6]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\readData2Out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux56~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[7]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\readData2Out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux55~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[8]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\readData2Out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux54~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[9]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\readData2Out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux53~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[10]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\readData2Out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux52~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[11]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\readData2Out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux51~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[12]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\readData2Out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux50~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[13]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\readData2Out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux49~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\readData2Out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux48~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[15]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\readData2Out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux47~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[16]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\readData2Out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux46~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[17]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\readData2Out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux45~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[18]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\readData2Out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux44~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[19]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\readData2Out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux43~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[20]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\readData2Out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux42~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[21]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\readData2Out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux41~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[22]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\readData2Out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux40~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[23]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\readData2Out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux39~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[24]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\readData2Out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux38~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[25]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\readData2Out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux37~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[26]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\readData2Out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux36~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[27]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\readData2Out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux35~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[28]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\readData2Out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux34~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[29]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\readData2Out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux33~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[30]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\readData2Out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \readData2Out[31]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\writeData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[0]~0_combout\,
	devoe => ww_devoe,
	o => \writeData[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\writeData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[1]~1_combout\,
	devoe => ww_devoe,
	o => \writeData[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\writeData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[2]~2_combout\,
	devoe => ww_devoe,
	o => \writeData[2]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\writeData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[3]~3_combout\,
	devoe => ww_devoe,
	o => \writeData[3]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\writeData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[4]~4_combout\,
	devoe => ww_devoe,
	o => \writeData[4]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\writeData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[5]~5_combout\,
	devoe => ww_devoe,
	o => \writeData[5]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\writeData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[6]~6_combout\,
	devoe => ww_devoe,
	o => \writeData[6]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\writeData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[7]~7_combout\,
	devoe => ww_devoe,
	o => \writeData[7]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\writeData[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[8]~8_combout\,
	devoe => ww_devoe,
	o => \writeData[8]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\writeData[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[9]~9_combout\,
	devoe => ww_devoe,
	o => \writeData[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\writeData[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[10]~10_combout\,
	devoe => ww_devoe,
	o => \writeData[10]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\writeData[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[11]~11_combout\,
	devoe => ww_devoe,
	o => \writeData[11]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\writeData[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[12]~12_combout\,
	devoe => ww_devoe,
	o => \writeData[12]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\writeData[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[13]~13_combout\,
	devoe => ww_devoe,
	o => \writeData[13]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\writeData[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[14]~14_combout\,
	devoe => ww_devoe,
	o => \writeData[14]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\writeData[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[15]~15_combout\,
	devoe => ww_devoe,
	o => \writeData[15]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\writeData[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[16]~16_combout\,
	devoe => ww_devoe,
	o => \writeData[16]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\writeData[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[17]~17_combout\,
	devoe => ww_devoe,
	o => \writeData[17]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\writeData[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[18]~18_combout\,
	devoe => ww_devoe,
	o => \writeData[18]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\writeData[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[19]~19_combout\,
	devoe => ww_devoe,
	o => \writeData[19]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\writeData[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[20]~20_combout\,
	devoe => ww_devoe,
	o => \writeData[20]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\writeData[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[21]~21_combout\,
	devoe => ww_devoe,
	o => \writeData[21]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\writeData[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[22]~22_combout\,
	devoe => ww_devoe,
	o => \writeData[22]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\writeData[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[23]~23_combout\,
	devoe => ww_devoe,
	o => \writeData[23]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\writeData[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[24]~24_combout\,
	devoe => ww_devoe,
	o => \writeData[24]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\writeData[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[25]~25_combout\,
	devoe => ww_devoe,
	o => \writeData[25]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\writeData[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[26]~26_combout\,
	devoe => ww_devoe,
	o => \writeData[26]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\writeData[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[27]~27_combout\,
	devoe => ww_devoe,
	o => \writeData[27]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\writeData[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[28]~28_combout\,
	devoe => ww_devoe,
	o => \writeData[28]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\writeData[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[29]~29_combout\,
	devoe => ww_devoe,
	o => \writeData[29]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\writeData[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[30]~30_combout\,
	devoe => ww_devoe,
	o => \writeData[30]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\writeData[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[31]~31_combout\,
	devoe => ww_devoe,
	o => \writeData[31]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\PCOutTeste[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PCOutTeste[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\PCOutTeste[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PCOutTeste[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\PCOutTeste[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PCOutTeste[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\PCOutTeste[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PCOutTeste[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\PCOutTeste[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PCOutTeste[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\PCOutTeste[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PCOutTeste[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\PCOutTeste[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PCOutTeste[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\PCOutTeste[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PCOutTeste[7]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\PCOutTeste[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PCOutTeste[8]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\PCOutTeste[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \PCOutTeste[9]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\PCOutTeste[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \PCOutTeste[10]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\PCOutTeste[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \PCOutTeste[11]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\PCOutTeste[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PCOutTeste[12]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\PCOutTeste[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \PCOutTeste[13]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\PCOutTeste[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \PCOutTeste[14]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\PCOutTeste[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \PCOutTeste[15]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\PCOutTeste[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \PCOutTeste[16]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\PCOutTeste[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \PCOutTeste[17]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\PCOutTeste[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \PCOutTeste[18]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\PCOutTeste[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \PCOutTeste[19]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\PCOutTeste[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \PCOutTeste[20]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\PCOutTeste[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \PCOutTeste[21]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\PCOutTeste[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \PCOutTeste[22]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\PCOutTeste[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \PCOutTeste[23]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\PCOutTeste[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \PCOutTeste[24]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\PCOutTeste[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \PCOutTeste[25]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\PCOutTeste[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \PCOutTeste[26]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\PCOutTeste[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \PCOutTeste[27]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\PCOutTeste[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \PCOutTeste[28]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\PCOutTeste[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \PCOutTeste[29]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\PCOutTeste[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \PCOutTeste[30]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\PCOutTeste[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \PCOutTeste[31]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\ULAINA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(0),
	devoe => ww_devoe,
	o => \ULAINA[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\ULAINA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(1),
	devoe => ww_devoe,
	o => \ULAINA[1]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\ULAINA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(2),
	devoe => ww_devoe,
	o => \ULAINA[2]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\ULAINA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(3),
	devoe => ww_devoe,
	o => \ULAINA[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\ULAINA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(4),
	devoe => ww_devoe,
	o => \ULAINA[4]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\ULAINA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(5),
	devoe => ww_devoe,
	o => \ULAINA[5]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\ULAINA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(6),
	devoe => ww_devoe,
	o => \ULAINA[6]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\ULAINA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(7),
	devoe => ww_devoe,
	o => \ULAINA[7]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\ULAINA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(8),
	devoe => ww_devoe,
	o => \ULAINA[8]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\ULAINA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(9),
	devoe => ww_devoe,
	o => \ULAINA[9]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\ULAINA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(10),
	devoe => ww_devoe,
	o => \ULAINA[10]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\ULAINA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(11),
	devoe => ww_devoe,
	o => \ULAINA[11]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\ULAINA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(12),
	devoe => ww_devoe,
	o => \ULAINA[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\ULAINA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(13),
	devoe => ww_devoe,
	o => \ULAINA[13]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\ULAINA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(14),
	devoe => ww_devoe,
	o => \ULAINA[14]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\ULAINA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(15),
	devoe => ww_devoe,
	o => \ULAINA[15]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\ULAINA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(16),
	devoe => ww_devoe,
	o => \ULAINA[16]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\ULAINA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(17),
	devoe => ww_devoe,
	o => \ULAINA[17]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\ULAINA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(18),
	devoe => ww_devoe,
	o => \ULAINA[18]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\ULAINA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(19),
	devoe => ww_devoe,
	o => \ULAINA[19]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\ULAINA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(20),
	devoe => ww_devoe,
	o => \ULAINA[20]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\ULAINA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(21),
	devoe => ww_devoe,
	o => \ULAINA[21]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\ULAINA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(22),
	devoe => ww_devoe,
	o => \ULAINA[22]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\ULAINA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(23),
	devoe => ww_devoe,
	o => \ULAINA[23]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\ULAINA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(24),
	devoe => ww_devoe,
	o => \ULAINA[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\ULAINA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(25),
	devoe => ww_devoe,
	o => \ULAINA[25]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\ULAINA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(26),
	devoe => ww_devoe,
	o => \ULAINA[26]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\ULAINA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(27),
	devoe => ww_devoe,
	o => \ULAINA[27]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\ULAINA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(28),
	devoe => ww_devoe,
	o => \ULAINA[28]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\ULAINA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(29),
	devoe => ww_devoe,
	o => \ULAINA[29]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\ULAINA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(30),
	devoe => ww_devoe,
	o => \ULAINA[30]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\ULAINA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|readData1temp\(31),
	devoe => ww_devoe,
	o => \ULAINA[31]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\ULAINB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[0]~0_combout\,
	devoe => ww_devoe,
	o => \ULAINB[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\ULAINB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[1]~1_combout\,
	devoe => ww_devoe,
	o => \ULAINB[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\ULAINB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[2]~2_combout\,
	devoe => ww_devoe,
	o => \ULAINB[2]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\ULAINB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[3]~3_combout\,
	devoe => ww_devoe,
	o => \ULAINB[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\ULAINB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[4]~4_combout\,
	devoe => ww_devoe,
	o => \ULAINB[4]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\ULAINB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[5]~5_combout\,
	devoe => ww_devoe,
	o => \ULAINB[5]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\ULAINB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[6]~6_combout\,
	devoe => ww_devoe,
	o => \ULAINB[6]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\ULAINB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[7]~7_combout\,
	devoe => ww_devoe,
	o => \ULAINB[7]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\ULAINB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[8]~8_combout\,
	devoe => ww_devoe,
	o => \ULAINB[8]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\ULAINB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[9]~9_combout\,
	devoe => ww_devoe,
	o => \ULAINB[9]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\ULAINB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[10]~10_combout\,
	devoe => ww_devoe,
	o => \ULAINB[10]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\ULAINB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[11]~11_combout\,
	devoe => ww_devoe,
	o => \ULAINB[11]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\ULAINB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[12]~12_combout\,
	devoe => ww_devoe,
	o => \ULAINB[12]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\ULAINB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[13]~13_combout\,
	devoe => ww_devoe,
	o => \ULAINB[13]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\ULAINB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[14]~14_combout\,
	devoe => ww_devoe,
	o => \ULAINB[14]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\ULAINB[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[15]~15_combout\,
	devoe => ww_devoe,
	o => \ULAINB[15]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\ULAINB[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[16]~16_combout\,
	devoe => ww_devoe,
	o => \ULAINB[16]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\ULAINB[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[17]~17_combout\,
	devoe => ww_devoe,
	o => \ULAINB[17]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\ULAINB[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[18]~18_combout\,
	devoe => ww_devoe,
	o => \ULAINB[18]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\ULAINB[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[19]~19_combout\,
	devoe => ww_devoe,
	o => \ULAINB[19]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\ULAINB[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[20]~20_combout\,
	devoe => ww_devoe,
	o => \ULAINB[20]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\ULAINB[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[21]~21_combout\,
	devoe => ww_devoe,
	o => \ULAINB[21]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\ULAINB[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[22]~22_combout\,
	devoe => ww_devoe,
	o => \ULAINB[22]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\ULAINB[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[23]~23_combout\,
	devoe => ww_devoe,
	o => \ULAINB[23]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\ULAINB[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[24]~24_combout\,
	devoe => ww_devoe,
	o => \ULAINB[24]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\ULAINB[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[25]~25_combout\,
	devoe => ww_devoe,
	o => \ULAINB[25]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\ULAINB[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[26]~26_combout\,
	devoe => ww_devoe,
	o => \ULAINB[26]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\ULAINB[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[27]~27_combout\,
	devoe => ww_devoe,
	o => \ULAINB[27]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\ULAINB[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[28]~28_combout\,
	devoe => ww_devoe,
	o => \ULAINB[28]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\ULAINB[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[29]~29_combout\,
	devoe => ww_devoe,
	o => \ULAINB[29]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\ULAINB[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[30]~30_combout\,
	devoe => ww_devoe,
	o => \ULAINB[30]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\ULAINB[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[31]~31_combout\,
	devoe => ww_devoe,
	o => \ULAINB[31]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\ULAOUTTESTE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(0),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\ULAOUTTESTE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(1),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\ULAOUTTESTE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(2),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\ULAOUTTESTE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(3),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\ULAOUTTESTE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(4),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\ULAOUTTESTE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(5),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[5]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\ULAOUTTESTE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(6),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[6]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\ULAOUTTESTE[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(7),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[7]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\ULAOUTTESTE[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(8),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[8]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\ULAOUTTESTE[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(9),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[9]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\ULAOUTTESTE[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(10),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\ULAOUTTESTE[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(11),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[11]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\ULAOUTTESTE[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(12),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\ULAOUTTESTE[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(13),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[13]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\ULAOUTTESTE[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(14),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[14]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\ULAOUTTESTE[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(15),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[15]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\ULAOUTTESTE[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(16),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[16]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\ULAOUTTESTE[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(17),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[17]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\ULAOUTTESTE[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(18),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[18]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\ULAOUTTESTE[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(19),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[19]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\ULAOUTTESTE[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(20),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[20]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\ULAOUTTESTE[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(21),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[21]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\ULAOUTTESTE[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(22),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[22]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\ULAOUTTESTE[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(23),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[23]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\ULAOUTTESTE[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(24),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[24]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\ULAOUTTESTE[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(25),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[25]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\ULAOUTTESTE[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(26),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[26]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\ULAOUTTESTE[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(27),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[27]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\ULAOUTTESTE[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(28),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[28]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\ULAOUTTESTE[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(29),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[29]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\ULAOUTTESTE[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(30),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[30]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\ULAOUTTESTE[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|ulaouttemp\(31),
	devoe => ww_devoe,
	o => \ULAOUTTESTE[31]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\ULAOUTTESTE1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(0),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\ULAOUTTESTE1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(1),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\ULAOUTTESTE1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(2),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\ULAOUTTESTE1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(3),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\ULAOUTTESTE1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(4),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\ULAOUTTESTE1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(5),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[5]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\ULAOUTTESTE1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(6),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[6]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\ULAOUTTESTE1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(7),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\ULAOUTTESTE1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(8),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[8]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\ULAOUTTESTE1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(9),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[9]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\ULAOUTTESTE1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(10),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\ULAOUTTESTE1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(11),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\ULAOUTTESTE1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(12),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[12]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\ULAOUTTESTE1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(13),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[13]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\ULAOUTTESTE1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(14),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[14]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\ULAOUTTESTE1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(15),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[15]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\ULAOUTTESTE1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(16),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[16]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\ULAOUTTESTE1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(17),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[17]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\ULAOUTTESTE1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(18),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[18]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\ULAOUTTESTE1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(19),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[19]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\ULAOUTTESTE1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(20),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[20]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\ULAOUTTESTE1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(21),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[21]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\ULAOUTTESTE1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(22),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[22]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\ULAOUTTESTE1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(23),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[23]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\ULAOUTTESTE1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(24),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[24]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\ULAOUTTESTE1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(25),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[25]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\ULAOUTTESTE1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(26),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[26]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\ULAOUTTESTE1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(27),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[27]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\ULAOUTTESTE1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(28),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[28]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\ULAOUTTESTE1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(29),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[29]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\ULAOUTTESTE1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(30),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[30]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\ULAOUTTESTE1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|ulaouttemp\(31),
	devoe => ww_devoe,
	o => \ULAOUTTESTE1[31]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\beqadder[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[0]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\beqadder[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[1]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\beqadder[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(0),
	devoe => ww_devoe,
	o => \beqadder[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\beqadder[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\beqadder[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(2),
	devoe => ww_devoe,
	o => \beqadder[4]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\beqadder[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(3),
	devoe => ww_devoe,
	o => \beqadder[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\beqadder[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\beqadder[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \beqadder[7]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\beqadder[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\beqadder[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \beqadder[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\beqadder[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \beqadder[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\beqadder[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \beqadder[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\beqadder[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \beqadder[12]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\beqadder[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[13]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\beqadder[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[14]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\beqadder[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[15]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\beqadder[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[16]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\beqadder[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[17]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\beqadder[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[18]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\beqadder[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[19]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\beqadder[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[20]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\beqadder[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[21]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\beqadder[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[22]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\beqadder[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[23]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\beqadder[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[24]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\beqadder[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[25]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\beqadder[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[26]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\beqadder[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[27]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\beqadder[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[28]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\beqadder[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[29]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\beqadder[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[30]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\beqadder[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \beqadder[31]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\beqadder2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(0),
	devoe => ww_devoe,
	o => \beqadder2[0]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\beqadder2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(1),
	devoe => ww_devoe,
	o => \beqadder2[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\beqadder2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(2),
	devoe => ww_devoe,
	o => \beqadder2[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\beqadder2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(3),
	devoe => ww_devoe,
	o => \beqadder2[3]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\beqadder2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(4),
	devoe => ww_devoe,
	o => \beqadder2[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\beqadder2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(5),
	devoe => ww_devoe,
	o => \beqadder2[5]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\beqadder2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(6),
	devoe => ww_devoe,
	o => \beqadder2[6]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\beqadder2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(7),
	devoe => ww_devoe,
	o => \beqadder2[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\beqadder2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(8),
	devoe => ww_devoe,
	o => \beqadder2[8]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\beqadder2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(9),
	devoe => ww_devoe,
	o => \beqadder2[9]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\beqadder2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(10),
	devoe => ww_devoe,
	o => \beqadder2[10]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\beqadder2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(11),
	devoe => ww_devoe,
	o => \beqadder2[11]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\beqadder2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(12),
	devoe => ww_devoe,
	o => \beqadder2[12]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\beqadder2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(13),
	devoe => ww_devoe,
	o => \beqadder2[13]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\beqadder2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(14),
	devoe => ww_devoe,
	o => \beqadder2[14]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\beqadder2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(15),
	devoe => ww_devoe,
	o => \beqadder2[15]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\beqadder2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(16),
	devoe => ww_devoe,
	o => \beqadder2[16]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\beqadder2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(17),
	devoe => ww_devoe,
	o => \beqadder2[17]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\beqadder2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(18),
	devoe => ww_devoe,
	o => \beqadder2[18]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\beqadder2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(19),
	devoe => ww_devoe,
	o => \beqadder2[19]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\beqadder2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(20),
	devoe => ww_devoe,
	o => \beqadder2[20]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\beqadder2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(21),
	devoe => ww_devoe,
	o => \beqadder2[21]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\beqadder2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(22),
	devoe => ww_devoe,
	o => \beqadder2[22]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\beqadder2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(23),
	devoe => ww_devoe,
	o => \beqadder2[23]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\beqadder2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(24),
	devoe => ww_devoe,
	o => \beqadder2[24]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\beqadder2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(25),
	devoe => ww_devoe,
	o => \beqadder2[25]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\beqadder2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(26),
	devoe => ww_devoe,
	o => \beqadder2[26]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\beqadder2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(27),
	devoe => ww_devoe,
	o => \beqadder2[27]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\beqadder2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(28),
	devoe => ww_devoe,
	o => \beqadder2[28]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\beqadder2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(29),
	devoe => ww_devoe,
	o => \beqadder2[29]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\beqadder2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(30),
	devoe => ww_devoe,
	o => \beqadder2[30]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\beqadder2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|pctemp\(31),
	devoe => ww_devoe,
	o => \beqadder2[31]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\beqadderout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(0),
	devoe => ww_devoe,
	o => \beqadderout[0]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\beqadderout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(1),
	devoe => ww_devoe,
	o => \beqadderout[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\beqadderout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(2),
	devoe => ww_devoe,
	o => \beqadderout[2]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\beqadderout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(3),
	devoe => ww_devoe,
	o => \beqadderout[3]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\beqadderout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(4),
	devoe => ww_devoe,
	o => \beqadderout[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\beqadderout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(5),
	devoe => ww_devoe,
	o => \beqadderout[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\beqadderout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(6),
	devoe => ww_devoe,
	o => \beqadderout[6]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\beqadderout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(7),
	devoe => ww_devoe,
	o => \beqadderout[7]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\beqadderout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(8),
	devoe => ww_devoe,
	o => \beqadderout[8]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\beqadderout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(9),
	devoe => ww_devoe,
	o => \beqadderout[9]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\beqadderout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(10),
	devoe => ww_devoe,
	o => \beqadderout[10]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\beqadderout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(11),
	devoe => ww_devoe,
	o => \beqadderout[11]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\beqadderout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(12),
	devoe => ww_devoe,
	o => \beqadderout[12]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\beqadderout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(13),
	devoe => ww_devoe,
	o => \beqadderout[13]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\beqadderout[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(14),
	devoe => ww_devoe,
	o => \beqadderout[14]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\beqadderout[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(15),
	devoe => ww_devoe,
	o => \beqadderout[15]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\beqadderout[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(16),
	devoe => ww_devoe,
	o => \beqadderout[16]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\beqadderout[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(17),
	devoe => ww_devoe,
	o => \beqadderout[17]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\beqadderout[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(18),
	devoe => ww_devoe,
	o => \beqadderout[18]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\beqadderout[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(19),
	devoe => ww_devoe,
	o => \beqadderout[19]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\beqadderout[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(20),
	devoe => ww_devoe,
	o => \beqadderout[20]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\beqadderout[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(21),
	devoe => ww_devoe,
	o => \beqadderout[21]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\beqadderout[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(22),
	devoe => ww_devoe,
	o => \beqadderout[22]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\beqadderout[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(23),
	devoe => ww_devoe,
	o => \beqadderout[23]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\beqadderout[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(24),
	devoe => ww_devoe,
	o => \beqadderout[24]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\beqadderout[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(25),
	devoe => ww_devoe,
	o => \beqadderout[25]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\beqadderout[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(26),
	devoe => ww_devoe,
	o => \beqadderout[26]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\beqadderout[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(27),
	devoe => ww_devoe,
	o => \beqadderout[27]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\beqadderout[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(28),
	devoe => ww_devoe,
	o => \beqadderout[28]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\beqadderout[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(29),
	devoe => ww_devoe,
	o => \beqadderout[29]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\beqadderout[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(30),
	devoe => ww_devoe,
	o => \beqadderout[30]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\beqadderout[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|addimmtemp\(31),
	devoe => ww_devoe,
	o => \beqadderout[31]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\signExtendOutteste[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(0),
	devoe => ww_devoe,
	o => \signExtendOutteste[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\signExtendOutteste[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\signExtendOutteste[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(2),
	devoe => ww_devoe,
	o => \signExtendOutteste[2]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\signExtendOutteste[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(3),
	devoe => ww_devoe,
	o => \signExtendOutteste[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\signExtendOutteste[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\signExtendOutteste[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \signExtendOutteste[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\signExtendOutteste[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\signExtendOutteste[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \signExtendOutteste[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\signExtendOutteste[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \signExtendOutteste[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\signExtendOutteste[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \signExtendOutteste[9]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\signExtendOutteste[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|signExtendtemp\(5),
	devoe => ww_devoe,
	o => \signExtendOutteste[10]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\signExtendOutteste[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[11]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\signExtendOutteste[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[12]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\signExtendOutteste[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\signExtendOutteste[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[14]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\signExtendOutteste[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[15]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\signExtendOutteste[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[16]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\signExtendOutteste[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[17]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\signExtendOutteste[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[18]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\signExtendOutteste[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[19]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\signExtendOutteste[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[20]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\signExtendOutteste[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[21]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\signExtendOutteste[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[22]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\signExtendOutteste[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[23]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\signExtendOutteste[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[24]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\signExtendOutteste[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[25]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\signExtendOutteste[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[26]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\signExtendOutteste[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[27]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\signExtendOutteste[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[28]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\signExtendOutteste[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[29]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\signExtendOutteste[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[30]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\signExtendOutteste[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signExtendOutteste[31]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\word[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \word[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\word[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|ALT_INV_insttemp\(23),
	devoe => ww_devoe,
	o => \word[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\word[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \word[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\word[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|insttemp\(23),
	devoe => ww_devoe,
	o => \word[3]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\word[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \word[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\word[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|insttemp\(23),
	devoe => ww_devoe,
	o => \word[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\word[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|insttemp\(23),
	devoe => ww_devoe,
	o => \word[6]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\word[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \word[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\word[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|ALT_INV_insttemp\(23),
	devoe => ww_devoe,
	o => \word[8]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\word[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \word[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\ULASEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCULA|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \ULASEL[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\ULASEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCULA|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ULASEL[1]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\ULASEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCULA|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ULASEL[2]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\ULASEL[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCULA|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ULASEL[3]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\EXTESTE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|extemp\(0),
	devoe => ww_devoe,
	o => \EXTESTE[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\EXTESTE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EXTESTE[1]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\EXTESTE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|ALT_INV_extemp\(0),
	devoe => ww_devoe,
	o => \EXTESTE[2]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\EXTESTE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \idex|ALT_INV_extemp\(0),
	devoe => ww_devoe,
	o => \EXTESTE[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\WBTESTE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|muxRtRdtemp\(0),
	devoe => ww_devoe,
	o => \WBTESTE[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\WBTESTE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \WBTESTE[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\MTESTE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MTESTE[0]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\MTESTE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MTESTE[1]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\MTESTE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \exmem|mtemp\(2),
	devoe => ww_devoe,
	o => \MTESTE[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\rt[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|insttemp\(23),
	devoe => ww_devoe,
	o => \rt[0]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\rt[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rt[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\rt[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|insttemp\(23),
	devoe => ww_devoe,
	o => \rt[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\rt[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rt[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\rt[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rt[4]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\rs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\rs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\rs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ifid|insttemp\(23),
	devoe => ww_devoe,
	o => \rs[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\rs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs[3]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\rs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\rd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|muxRtRdtemp\(0),
	devoe => ww_devoe,
	o => \rd[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\rd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\rd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memwb|muxRtRdtemp\(0),
	devoe => ww_devoe,
	o => \rd[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\rd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\rd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd[4]~output_o\);

-- Location: IOIBUF_X115_Y37_N1
\regTestEnd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(3),
	o => \regTestEnd[3]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y31_N0
\AdderPC|tempAdd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[0]~0_combout\ = \PC|DOUT\(0) $ (VCC)
-- \AdderPC|tempAdd[0]~1\ = CARRY(\PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(0),
	datad => VCC,
	combout => \AdderPC|tempAdd[0]~0_combout\,
	cout => \AdderPC|tempAdd[0]~1\);

-- Location: FF_X1_Y31_N1
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LCCOMB_X1_Y31_N2
\AdderPC|tempAdd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[1]~2_combout\ = (\PC|DOUT\(1) & (!\AdderPC|tempAdd[0]~1\)) # (!\PC|DOUT\(1) & ((\AdderPC|tempAdd[0]~1\) # (GND)))
-- \AdderPC|tempAdd[1]~3\ = CARRY((!\AdderPC|tempAdd[0]~1\) # (!\PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(1),
	datad => VCC,
	cin => \AdderPC|tempAdd[0]~1\,
	combout => \AdderPC|tempAdd[1]~2_combout\,
	cout => \AdderPC|tempAdd[1]~3\);

-- Location: FF_X1_Y31_N3
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LCCOMB_X1_Y31_N4
\AdderPC|tempAdd[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[2]~4_combout\ = (\PC|DOUT\(2) & (\AdderPC|tempAdd[1]~3\ $ (GND))) # (!\PC|DOUT\(2) & (!\AdderPC|tempAdd[1]~3\ & VCC))
-- \AdderPC|tempAdd[2]~5\ = CARRY((\PC|DOUT\(2) & !\AdderPC|tempAdd[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(2),
	datad => VCC,
	cin => \AdderPC|tempAdd[1]~3\,
	combout => \AdderPC|tempAdd[2]~4_combout\,
	cout => \AdderPC|tempAdd[2]~5\);

-- Location: FF_X1_Y31_N5
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LCCOMB_X1_Y31_N6
\AdderPC|tempAdd[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[3]~6_combout\ = (\PC|DOUT\(3) & (!\AdderPC|tempAdd[2]~5\)) # (!\PC|DOUT\(3) & ((\AdderPC|tempAdd[2]~5\) # (GND)))
-- \AdderPC|tempAdd[3]~7\ = CARRY((!\AdderPC|tempAdd[2]~5\) # (!\PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datad => VCC,
	cin => \AdderPC|tempAdd[2]~5\,
	combout => \AdderPC|tempAdd[3]~6_combout\,
	cout => \AdderPC|tempAdd[3]~7\);

-- Location: FF_X1_Y31_N7
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LCCOMB_X84_Y32_N0
\InstMem|ram~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~549_combout\ = (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(2),
	datac => \PC|DOUT\(3),
	datad => \PC|DOUT\(0),
	combout => \InstMem|ram~549_combout\);

-- Location: FF_X84_Y32_N1
\ifid|insttemp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \InstMem|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|insttemp\(23));

-- Location: FF_X82_Y32_N13
\idex|extemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ifid|insttemp\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|extemp\(0));

-- Location: LCCOMB_X83_Y30_N16
\exmem|mtemp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|mtemp[2]~feeder_combout\ = \idex|extemp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|extemp\(0),
	combout => \exmem|mtemp[2]~feeder_combout\);

-- Location: FF_X83_Y30_N17
\exmem|mtemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|mtemp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|mtemp\(2));

-- Location: LCCOMB_X76_Y31_N16
\memwb|muxRtRdtemp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|muxRtRdtemp[0]~feeder_combout\ = \exmem|mtemp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|mtemp\(2),
	combout => \memwb|muxRtRdtemp[0]~feeder_combout\);

-- Location: FF_X76_Y31_N17
\memwb|muxRtRdtemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|muxRtRdtemp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|muxRtRdtemp\(0));

-- Location: LCCOMB_X81_Y34_N28
\BancoReg|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux31~0_combout\ = (\BancoReg|ram[0][0]~q\) # (\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][0]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux31~0_combout\);

-- Location: FF_X82_Y32_N11
\idex|readData1temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux31~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(0));

-- Location: LCCOMB_X84_Y32_N14
\InstMem|ram~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~551_combout\ = (\PC|DOUT\(1) & (\PC|DOUT\(2) & (!\PC|DOUT\(3) & !\PC|DOUT\(0)))) # (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & (\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(2),
	datac => \PC|DOUT\(3),
	datad => \PC|DOUT\(0),
	combout => \InstMem|ram~551_combout\);

-- Location: FF_X84_Y32_N15
\ifid|insttemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \InstMem|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|insttemp\(2));

-- Location: FF_X82_Y32_N1
\idex|signExtendtemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ifid|insttemp\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|signExtendtemp\(2));

-- Location: LCCOMB_X84_Y32_N2
\InstMem|ram~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~550_combout\ = (!\PC|DOUT\(3) & ((\PC|DOUT\(1) & (\PC|DOUT\(2) & !\PC|DOUT\(0))) # (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & \PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(2),
	datac => \PC|DOUT\(3),
	datad => \PC|DOUT\(0),
	combout => \InstMem|ram~550_combout\);

-- Location: FF_X84_Y32_N3
\ifid|insttemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \InstMem|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|insttemp\(0));

-- Location: FF_X82_Y32_N25
\idex|signExtendtemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ifid|insttemp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|signExtendtemp\(0));

-- Location: LCCOMB_X84_Y32_N16
\InstMem|ram~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~552_combout\ = (\PC|DOUT\(2) & (!\PC|DOUT\(3) & ((\PC|DOUT\(1)) # (\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(2),
	datac => \PC|DOUT\(3),
	datad => \PC|DOUT\(0),
	combout => \InstMem|ram~552_combout\);

-- Location: FF_X84_Y32_N17
\ifid|insttemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \InstMem|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|insttemp\(3));

-- Location: FF_X82_Y32_N21
\idex|signExtendtemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ifid|insttemp\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|signExtendtemp\(3));

-- Location: LCCOMB_X82_Y32_N12
\UCULA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCULA|Mux5~0_combout\ = (!\idex|extemp\(0) & ((\idex|signExtendtemp\(3)) # ((!\idex|signExtendtemp\(2) & \idex|signExtendtemp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(2),
	datab => \idex|signExtendtemp\(0),
	datac => \idex|extemp\(0),
	datad => \idex|signExtendtemp\(3),
	combout => \UCULA|Mux5~0_combout\);

-- Location: LCCOMB_X82_Y32_N4
\ULA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~0_combout\ = \idex|readData1temp\(0) $ (\UCULA|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(0),
	datad => \UCULA|Mux5~0_combout\,
	combout => \ULA|Add0~0_combout\);

-- Location: LCCOMB_X81_Y32_N0
\ULA|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_combout\ = (\ULA|Add0~0_combout\ & (\UCULA|Mux5~0_combout\ $ (VCC))) # (!\ULA|Add0~0_combout\ & (\UCULA|Mux5~0_combout\ & VCC))
-- \ULA|Add0~2\ = CARRY((\ULA|Add0~0_combout\ & \UCULA|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~0_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	combout => \ULA|Add0~1_combout\,
	cout => \ULA|Add0~2\);

-- Location: FF_X86_Y34_N21
\BancoReg|ram[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[0]~0_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][0]~q\);

-- Location: LCCOMB_X86_Y34_N8
\BancoReg|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux63~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][0]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][0]~q\,
	datab => \ifid|insttemp\(23),
	datad => \BancoReg|ram[5][0]~q\,
	combout => \BancoReg|Mux63~0_combout\);

-- Location: FF_X82_Y32_N7
\idex|readData2temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux63~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(0));

-- Location: LCCOMB_X82_Y32_N6
\ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~0_combout\ = \UCULA|Mux5~0_combout\ $ (((\idex|extemp\(0) & (\idex|signExtendtemp\(0))) # (!\idex|extemp\(0) & ((\idex|readData2temp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|extemp\(0),
	datab => \idex|signExtendtemp\(0),
	datac => \idex|readData2temp\(0),
	datad => \UCULA|Mux5~0_combout\,
	combout => \ULA|Add1~0_combout\);

-- Location: LCCOMB_X83_Y32_N0
\ULA|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~1_combout\ = (\UCULA|Mux5~0_combout\ & (\ULA|Add1~0_combout\ $ (VCC))) # (!\UCULA|Mux5~0_combout\ & (\ULA|Add1~0_combout\ & VCC))
-- \ULA|Add1~2\ = CARRY((\UCULA|Mux5~0_combout\ & \ULA|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \ULA|Add1~0_combout\,
	datad => VCC,
	combout => \ULA|Add1~1_combout\,
	cout => \ULA|Add1~2\);

-- Location: LCCOMB_X80_Y32_N0
\ULA|tempAdd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[0]~0_combout\ = (\ULA|Add0~1_combout\ & (\ULA|Add1~1_combout\ $ (VCC))) # (!\ULA|Add0~1_combout\ & (\ULA|Add1~1_combout\ & VCC))
-- \ULA|tempAdd[0]~1\ = CARRY((\ULA|Add0~1_combout\ & \ULA|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~1_combout\,
	datab => \ULA|Add1~1_combout\,
	datad => VCC,
	combout => \ULA|tempAdd[0]~0_combout\,
	cout => \ULA|tempAdd[0]~1\);

-- Location: LCCOMB_X82_Y32_N16
\UCULA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCULA|Mux6~0_combout\ = (\idex|signExtendtemp\(3)) # ((\idex|extemp\(0)) # (!\idex|signExtendtemp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datab => \idex|extemp\(0),
	datad => \idex|signExtendtemp\(2),
	combout => \UCULA|Mux6~0_combout\);

-- Location: LCCOMB_X82_Y32_N24
\UCULA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCULA|Mux7~0_combout\ = (!\idex|extemp\(0) & ((\idex|signExtendtemp\(0)) # (\idex|signExtendtemp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|extemp\(0),
	datac => \idex|signExtendtemp\(0),
	datad => \idex|signExtendtemp\(3),
	combout => \UCULA|Mux7~0_combout\);

-- Location: LCCOMB_X79_Y32_N20
\ULA|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~0_combout\ = (\ULA|Add1~1_combout\ & ((\UCULA|Mux7~0_combout\) # ((!\UCULA|Mux6~0_combout\ & \ULA|Add0~1_combout\)))) # (!\ULA|Add1~1_combout\ & (\UCULA|Mux7~0_combout\ & ((\UCULA|Mux6~0_combout\) # (\ULA|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~1_combout\,
	datab => \UCULA|Mux6~0_combout\,
	datac => \ULA|Add0~1_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux31~0_combout\);

-- Location: LCCOMB_X82_Y32_N20
\UCULA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCULA|Mux2~0_combout\ = (\idex|signExtendtemp\(3)) # (!\idex|signExtendtemp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|signExtendtemp\(3),
	datad => \idex|signExtendtemp\(2),
	combout => \UCULA|Mux2~0_combout\);

-- Location: LCCOMB_X84_Y31_N26
\exmem|ulaouttemp[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[22]~29_combout\ = (!\idex|signExtendtemp\(0) & !\idex|signExtendtemp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(0),
	datad => \idex|signExtendtemp\(3),
	combout => \exmem|ulaouttemp[22]~29_combout\);

-- Location: FF_X86_Y31_N29
\BancoReg|ram[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[31]~31_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][31]~q\);

-- Location: LCCOMB_X83_Y30_N4
\BancoReg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux0~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][31]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][31]~q\,
	combout => \BancoReg|Mux0~0_combout\);

-- Location: FF_X83_Y30_N5
\idex|readData1temp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(31));

-- Location: LCCOMB_X85_Y31_N28
\BancoReg|ram[5][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][30]~feeder_combout\ = \MuxULAMem|C[30]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[30]~30_combout\,
	combout => \BancoReg|ram[5][30]~feeder_combout\);

-- Location: FF_X85_Y31_N29
\BancoReg|ram[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][30]~feeder_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][30]~q\);

-- Location: LCCOMB_X86_Y31_N6
\BancoReg|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux33~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][30]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][30]~q\,
	datac => \BancoReg|ram[0][30]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux33~0_combout\);

-- Location: FF_X86_Y31_N7
\idex|readData2temp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(30));

-- Location: LCCOMB_X85_Y31_N2
\muxRtImm|C[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[30]~30_combout\ = (\idex|readData2temp\(30) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData2temp\(30),
	datac => \idex|extemp\(0),
	combout => \muxRtImm|C[30]~30_combout\);

-- Location: LCCOMB_X86_Y27_N10
\MemDados|ram_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X86_Y27_N11
\MemDados|ram_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(68));

-- Location: FF_X83_Y31_N15
\exmem|readData2temp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(29));

-- Location: FF_X83_Y31_N19
\MemDados|ram_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(67));

-- Location: LCCOMB_X83_Y30_N26
\exmem|readData2temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|readData2temp[0]~feeder_combout\ = \idex|readData2temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \idex|readData2temp\(0),
	combout => \exmem|readData2temp[0]~feeder_combout\);

-- Location: FF_X83_Y30_N27
\exmem|readData2temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|readData2temp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(0));

-- Location: FF_X80_Y32_N7
\exmem|readData2temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(1));

-- Location: LCCOMB_X79_Y30_N28
\MemDados|ram_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[11]~feeder_combout\ = \exmem|readData2temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(1),
	combout => \MemDados|ram_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X79_Y30_N29
\MemDados|ram_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(11));

-- Location: LCCOMB_X79_Y30_N14
\MemDados|ram_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X79_Y30_N15
\MemDados|ram_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(12));

-- Location: LCCOMB_X77_Y31_N16
\BancoReg|ram[5][2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][2]~0_combout\ = !\MuxULAMem|C[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[2]~2_combout\,
	combout => \BancoReg|ram[5][2]~0_combout\);

-- Location: FF_X77_Y31_N17
\BancoReg|ram[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][2]~0_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][2]~q\);

-- Location: LCCOMB_X81_Y34_N20
\BancoReg|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux61~0_combout\ = (\ifid|insttemp\(23) & ((!\BancoReg|ram[5][2]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][2]~q\,
	datac => \BancoReg|ram[5][2]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux61~0_combout\);

-- Location: FF_X82_Y32_N17
\idex|readData2temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux61~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(2));

-- Location: FF_X81_Y31_N9
\exmem|readData2temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(2));

-- Location: LCCOMB_X76_Y31_N22
\MemDados|ram_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[13]~feeder_combout\ = \exmem|readData2temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(2),
	combout => \MemDados|ram_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X76_Y31_N23
\MemDados|ram_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(13));

-- Location: LCCOMB_X76_Y31_N24
\MemDados|ram_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X76_Y31_N25
\MemDados|ram_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(14));

-- Location: FF_X86_Y34_N19
\BancoReg|ram[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[3]~3_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][3]~q\);

-- Location: LCCOMB_X86_Y34_N18
\BancoReg|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux60~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][3]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|insttemp\(23),
	datac => \BancoReg|ram[5][3]~q\,
	datad => \BancoReg|ram[0][3]~q\,
	combout => \BancoReg|Mux60~0_combout\);

-- Location: FF_X82_Y32_N31
\idex|readData2temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux60~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(3));

-- Location: FF_X80_Y32_N31
\exmem|readData2temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(3));

-- Location: LCCOMB_X79_Y30_N4
\MemDados|ram_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[15]~feeder_combout\ = \exmem|readData2temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(3),
	combout => \MemDados|ram_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X79_Y30_N5
\MemDados|ram_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(15));

-- Location: LCCOMB_X79_Y30_N30
\MemDados|ram_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X79_Y30_N31
\MemDados|ram_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(16));

-- Location: LCCOMB_X82_Y32_N28
\muxRtImm|C[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[4]~4_combout\ = (\idex|readData2temp\(4) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|readData2temp\(4),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[4]~4_combout\);

-- Location: LCCOMB_X82_Y32_N14
\muxRtImm|C[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[3]~3_combout\ = (\idex|extemp\(0) & ((\idex|signExtendtemp\(3)))) # (!\idex|extemp\(0) & (\idex|readData2temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData2temp\(3),
	datab => \idex|signExtendtemp\(3),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[3]~3_combout\);

-- Location: LCCOMB_X82_Y32_N22
\muxRtImm|C[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[2]~2_combout\ = (\idex|extemp\(0) & (\idex|signExtendtemp\(2))) # (!\idex|extemp\(0) & ((\idex|readData2temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|extemp\(0),
	datab => \idex|signExtendtemp\(2),
	datad => \idex|readData2temp\(2),
	combout => \muxRtImm|C[2]~2_combout\);

-- Location: LCCOMB_X83_Y32_N2
\ULA|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~3_combout\ = (\ULA|Add1~2\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[1]~1_combout\)))) # (!\ULA|Add1~2\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[1]~1_combout\)) # (GND)))
-- \ULA|Add1~4\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[1]~1_combout\)) # (!\ULA|Add1~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[1]~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~2\,
	combout => \ULA|Add1~3_combout\,
	cout => \ULA|Add1~4\);

-- Location: LCCOMB_X83_Y32_N4
\ULA|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~5_combout\ = (\ULA|Add1~4\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[2]~2_combout\)))) # (!\ULA|Add1~4\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[2]~2_combout\ $ (VCC))))
-- \ULA|Add1~6\ = CARRY((!\ULA|Add1~4\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[2]~2_combout\,
	datad => VCC,
	cin => \ULA|Add1~4\,
	combout => \ULA|Add1~5_combout\,
	cout => \ULA|Add1~6\);

-- Location: LCCOMB_X83_Y32_N6
\ULA|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~7_combout\ = (\ULA|Add1~6\ & (\muxRtImm|C[3]~3_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~6\ & ((\muxRtImm|C[3]~3_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~8\ = CARRY((\muxRtImm|C[3]~3_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[3]~3_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~6\,
	combout => \ULA|Add1~7_combout\,
	cout => \ULA|Add1~8\);

-- Location: LCCOMB_X83_Y32_N8
\ULA|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~9_combout\ = (\ULA|Add1~8\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[4]~4_combout\)))) # (!\ULA|Add1~8\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[4]~4_combout\ $ (VCC))))
-- \ULA|Add1~10\ = CARRY((!\ULA|Add1~8\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[4]~4_combout\,
	datad => VCC,
	cin => \ULA|Add1~8\,
	combout => \ULA|Add1~9_combout\,
	cout => \ULA|Add1~10\);

-- Location: LCCOMB_X82_Y34_N14
\BancoReg|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux27~0_combout\ = (\BancoReg|ram[0][4]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][4]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux27~0_combout\);

-- Location: FF_X81_Y32_N25
\idex|readData1temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux27~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(4));

-- Location: LCCOMB_X81_Y34_N30
\BancoReg|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux30~0_combout\ = (\BancoReg|ram[0][1]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][1]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux30~0_combout\);

-- Location: FF_X81_Y32_N3
\idex|readData1temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux30~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(1));

-- Location: LCCOMB_X81_Y32_N2
\ULA|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~3_combout\ = (\ULA|Add0~2\ & (\idex|readData1temp\(1) $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~2\ & ((\idex|readData1temp\(1) $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add0~4\ = CARRY((\idex|readData1temp\(1) $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(1),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~2\,
	combout => \ULA|Add0~3_combout\,
	cout => \ULA|Add0~4\);

-- Location: LCCOMB_X81_Y32_N4
\ULA|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_combout\ = (\ULA|Add0~4\ & ((\idex|readData1temp\(2) $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~4\ & (\idex|readData1temp\(2) $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add0~6\ = CARRY((!\ULA|Add0~4\ & (\idex|readData1temp\(2) $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(2),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~4\,
	combout => \ULA|Add0~5_combout\,
	cout => \ULA|Add0~6\);

-- Location: LCCOMB_X81_Y32_N6
\ULA|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~7_combout\ = (\ULA|Add0~6\ & (\idex|readData1temp\(3) $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~6\ & ((\idex|readData1temp\(3) $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add0~8\ = CARRY((\idex|readData1temp\(3) $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(3),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~6\,
	combout => \ULA|Add0~7_combout\,
	cout => \ULA|Add0~8\);

-- Location: LCCOMB_X81_Y32_N8
\ULA|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_combout\ = (\ULA|Add0~8\ & ((\idex|readData1temp\(4) $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~8\ & (\idex|readData1temp\(4) $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add0~10\ = CARRY((!\ULA|Add0~8\ & (\idex|readData1temp\(4) $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(4),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~8\,
	combout => \ULA|Add0~9_combout\,
	cout => \ULA|Add0~10\);

-- Location: LCCOMB_X80_Y33_N22
\ULA|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux27~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~9_combout\) # (\ULA|Add0~9_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~9_combout\ & \ULA|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~9_combout\,
	datad => \ULA|Add0~9_combout\,
	combout => \ULA|Mux27~0_combout\);

-- Location: LCCOMB_X80_Y32_N2
\ULA|tempAdd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[1]~2_combout\ = (\ULA|Add0~3_combout\ & ((\ULA|Add1~3_combout\ & (\ULA|tempAdd[0]~1\ & VCC)) # (!\ULA|Add1~3_combout\ & (!\ULA|tempAdd[0]~1\)))) # (!\ULA|Add0~3_combout\ & ((\ULA|Add1~3_combout\ & (!\ULA|tempAdd[0]~1\)) # 
-- (!\ULA|Add1~3_combout\ & ((\ULA|tempAdd[0]~1\) # (GND)))))
-- \ULA|tempAdd[1]~3\ = CARRY((\ULA|Add0~3_combout\ & (!\ULA|Add1~3_combout\ & !\ULA|tempAdd[0]~1\)) # (!\ULA|Add0~3_combout\ & ((!\ULA|tempAdd[0]~1\) # (!\ULA|Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~3_combout\,
	datab => \ULA|Add1~3_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[0]~1\,
	combout => \ULA|tempAdd[1]~2_combout\,
	cout => \ULA|tempAdd[1]~3\);

-- Location: LCCOMB_X80_Y32_N4
\ULA|tempAdd[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[2]~4_combout\ = ((\ULA|Add0~5_combout\ $ (\ULA|Add1~5_combout\ $ (!\ULA|tempAdd[1]~3\)))) # (GND)
-- \ULA|tempAdd[2]~5\ = CARRY((\ULA|Add0~5_combout\ & ((\ULA|Add1~5_combout\) # (!\ULA|tempAdd[1]~3\))) # (!\ULA|Add0~5_combout\ & (\ULA|Add1~5_combout\ & !\ULA|tempAdd[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~5_combout\,
	datab => \ULA|Add1~5_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[1]~3\,
	combout => \ULA|tempAdd[2]~4_combout\,
	cout => \ULA|tempAdd[2]~5\);

-- Location: LCCOMB_X80_Y32_N6
\ULA|tempAdd[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[3]~6_combout\ = (\ULA|Add0~7_combout\ & ((\ULA|Add1~7_combout\ & (\ULA|tempAdd[2]~5\ & VCC)) # (!\ULA|Add1~7_combout\ & (!\ULA|tempAdd[2]~5\)))) # (!\ULA|Add0~7_combout\ & ((\ULA|Add1~7_combout\ & (!\ULA|tempAdd[2]~5\)) # 
-- (!\ULA|Add1~7_combout\ & ((\ULA|tempAdd[2]~5\) # (GND)))))
-- \ULA|tempAdd[3]~7\ = CARRY((\ULA|Add0~7_combout\ & (!\ULA|Add1~7_combout\ & !\ULA|tempAdd[2]~5\)) # (!\ULA|Add0~7_combout\ & ((!\ULA|tempAdd[2]~5\) # (!\ULA|Add1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~7_combout\,
	datab => \ULA|Add1~7_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[2]~5\,
	combout => \ULA|tempAdd[3]~6_combout\,
	cout => \ULA|tempAdd[3]~7\);

-- Location: LCCOMB_X80_Y32_N8
\ULA|tempAdd[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[4]~8_combout\ = ((\ULA|Add1~9_combout\ $ (\ULA|Add0~9_combout\ $ (!\ULA|tempAdd[3]~7\)))) # (GND)
-- \ULA|tempAdd[4]~9\ = CARRY((\ULA|Add1~9_combout\ & ((\ULA|Add0~9_combout\) # (!\ULA|tempAdd[3]~7\))) # (!\ULA|Add1~9_combout\ & (\ULA|Add0~9_combout\ & !\ULA|tempAdd[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~9_combout\,
	datab => \ULA|Add0~9_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[3]~7\,
	combout => \ULA|tempAdd[4]~8_combout\,
	cout => \ULA|tempAdd[4]~9\);

-- Location: LCCOMB_X80_Y33_N28
\ULA|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux27~1_combout\ = (!\idex|signExtendtemp\(3) & (\ULA|tempAdd[4]~8_combout\ & !\idex|signExtendtemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datac => \ULA|tempAdd[4]~8_combout\,
	datad => \idex|signExtendtemp\(0),
	combout => \ULA|Mux27~1_combout\);

-- Location: LCCOMB_X80_Y33_N8
\exmem|ulaouttemp[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[4]~0_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux27~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux27~0_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datad => \ULA|Mux27~1_combout\,
	combout => \exmem|ulaouttemp[4]~0_combout\);

-- Location: FF_X80_Y33_N9
\exmem|ulaouttemp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[4]~0_combout\,
	asdata => \ULA|tempAdd[4]~8_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(4));

-- Location: LCCOMB_X76_Y31_N6
\memwb|ulaouttemp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[4]~feeder_combout\ = \exmem|ulaouttemp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(4),
	combout => \memwb|ulaouttemp[4]~feeder_combout\);

-- Location: FF_X76_Y31_N7
\memwb|ulaouttemp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(4));

-- Location: LCCOMB_X76_Y31_N14
\MemDados|ram_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X76_Y31_N15
\MemDados|ram_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(18));

-- Location: FF_X77_Y32_N17
\MemDados|ram_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(17));

-- Location: LCCOMB_X84_Y32_N8
\InstMem|ram~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~553_combout\ = (\PC|DOUT\(1) & (\PC|DOUT\(2) & (!\PC|DOUT\(3) & !\PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(2),
	datac => \PC|DOUT\(3),
	datad => \PC|DOUT\(0),
	combout => \InstMem|ram~553_combout\);

-- Location: FF_X84_Y32_N9
\ifid|insttemp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \InstMem|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ifid|insttemp\(5));

-- Location: FF_X84_Y32_N25
\idex|signExtendtemp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ifid|insttemp\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|signExtendtemp\(5));

-- Location: LCCOMB_X84_Y32_N22
\muxRtImm|C[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[5]~5_combout\ = (\idex|extemp\(0) & ((\idex|signExtendtemp\(5)))) # (!\idex|extemp\(0) & (\idex|readData2temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData2temp\(5),
	datab => \idex|signExtendtemp\(5),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[5]~5_combout\);

-- Location: LCCOMB_X83_Y32_N10
\ULA|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~11_combout\ = (\ULA|Add1~10\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[5]~5_combout\)))) # (!\ULA|Add1~10\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[5]~5_combout\)) # (GND)))
-- \ULA|Add1~12\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[5]~5_combout\)) # (!\ULA|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[5]~5_combout\,
	datad => VCC,
	cin => \ULA|Add1~10\,
	combout => \ULA|Add1~11_combout\,
	cout => \ULA|Add1~12\);

-- Location: LCCOMB_X81_Y34_N10
\BancoReg|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux26~0_combout\ = (\BancoReg|ram[0][5]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BancoReg|ram[0][5]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux26~0_combout\);

-- Location: FF_X81_Y32_N11
\idex|readData1temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux26~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(5));

-- Location: LCCOMB_X81_Y32_N10
\ULA|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~11_combout\ = (\ULA|Add0~10\ & (\idex|readData1temp\(5) $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~10\ & ((\idex|readData1temp\(5) $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add0~12\ = CARRY((\idex|readData1temp\(5) $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(5),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~10\,
	combout => \ULA|Add0~11_combout\,
	cout => \ULA|Add0~12\);

-- Location: LCCOMB_X80_Y33_N10
\ULA|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux26~0_combout\ = (\ULA|Add1~11_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add0~11_combout\))) # (!\ULA|Add1~11_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~11_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add0~11_combout\,
	combout => \ULA|Mux26~0_combout\);

-- Location: LCCOMB_X80_Y32_N10
\ULA|tempAdd[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[5]~10_combout\ = (\ULA|Add1~11_combout\ & ((\ULA|Add0~11_combout\ & (\ULA|tempAdd[4]~9\ & VCC)) # (!\ULA|Add0~11_combout\ & (!\ULA|tempAdd[4]~9\)))) # (!\ULA|Add1~11_combout\ & ((\ULA|Add0~11_combout\ & (!\ULA|tempAdd[4]~9\)) # 
-- (!\ULA|Add0~11_combout\ & ((\ULA|tempAdd[4]~9\) # (GND)))))
-- \ULA|tempAdd[5]~11\ = CARRY((\ULA|Add1~11_combout\ & (!\ULA|Add0~11_combout\ & !\ULA|tempAdd[4]~9\)) # (!\ULA|Add1~11_combout\ & ((!\ULA|tempAdd[4]~9\) # (!\ULA|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~11_combout\,
	datab => \ULA|Add0~11_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[4]~9\,
	combout => \ULA|tempAdd[5]~10_combout\,
	cout => \ULA|tempAdd[5]~11\);

-- Location: LCCOMB_X80_Y33_N12
\ULA|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux26~1_combout\ = (!\idex|signExtendtemp\(0) & (!\idex|signExtendtemp\(3) & \ULA|tempAdd[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|signExtendtemp\(0),
	datac => \idex|signExtendtemp\(3),
	datad => \ULA|tempAdd[5]~10_combout\,
	combout => \ULA|Mux26~1_combout\);

-- Location: LCCOMB_X80_Y33_N2
\exmem|ulaouttemp[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[5]~1_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux26~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux26~0_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datad => \ULA|Mux26~1_combout\,
	combout => \exmem|ulaouttemp[5]~1_combout\);

-- Location: FF_X80_Y33_N3
\exmem|ulaouttemp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[5]~1_combout\,
	asdata => \ULA|tempAdd[5]~10_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(5));

-- Location: LCCOMB_X76_Y31_N30
\memwb|ulaouttemp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[5]~feeder_combout\ = \exmem|ulaouttemp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(5),
	combout => \memwb|ulaouttemp[5]~feeder_combout\);

-- Location: FF_X76_Y31_N31
\memwb|ulaouttemp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(5));

-- Location: LCCOMB_X76_Y31_N28
\MemDados|ram_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X76_Y31_N29
\MemDados|ram_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(20));

-- Location: FF_X83_Y32_N5
\MemDados|ram_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(21));

-- Location: LCCOMB_X86_Y32_N8
\MemDados|ram_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X86_Y32_N9
\MemDados|ram_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(22));

-- Location: LCCOMB_X86_Y32_N30
\MemDados|ram_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X86_Y32_N31
\MemDados|ram_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(24));

-- Location: FF_X84_Y32_N11
\MemDados|ram_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(23));

-- Location: LCCOMB_X84_Y32_N20
\muxRtImm|C[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[8]~8_combout\ = (\idex|extemp\(0) & (\idex|signExtendtemp\(5))) # (!\idex|extemp\(0) & ((\idex|readData2temp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|signExtendtemp\(5),
	datac => \idex|readData2temp\(8),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[8]~8_combout\);

-- Location: LCCOMB_X84_Y32_N18
\muxRtImm|C[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[7]~7_combout\ = (\idex|extemp\(0) & ((\idex|signExtendtemp\(5)))) # (!\idex|extemp\(0) & (\idex|readData2temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData2temp\(7),
	datab => \idex|signExtendtemp\(5),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[7]~7_combout\);

-- Location: LCCOMB_X82_Y32_N30
\muxRtImm|C[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[6]~6_combout\ = (\idex|readData2temp\(6) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|readData2temp\(6),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[6]~6_combout\);

-- Location: LCCOMB_X83_Y32_N12
\ULA|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~13_combout\ = (\ULA|Add1~12\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[6]~6_combout\)))) # (!\ULA|Add1~12\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[6]~6_combout\ $ (VCC))))
-- \ULA|Add1~14\ = CARRY((!\ULA|Add1~12\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[6]~6_combout\,
	datad => VCC,
	cin => \ULA|Add1~12\,
	combout => \ULA|Add1~13_combout\,
	cout => \ULA|Add1~14\);

-- Location: LCCOMB_X83_Y32_N14
\ULA|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~15_combout\ = (\ULA|Add1~14\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[7]~7_combout\)))) # (!\ULA|Add1~14\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[7]~7_combout\)) # (GND)))
-- \ULA|Add1~16\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[7]~7_combout\)) # (!\ULA|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[7]~7_combout\,
	datad => VCC,
	cin => \ULA|Add1~14\,
	combout => \ULA|Add1~15_combout\,
	cout => \ULA|Add1~16\);

-- Location: LCCOMB_X83_Y32_N16
\ULA|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~17_combout\ = (\ULA|Add1~16\ & ((\muxRtImm|C[8]~8_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~16\ & (\muxRtImm|C[8]~8_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~18\ = CARRY((!\ULA|Add1~16\ & (\muxRtImm|C[8]~8_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[8]~8_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~16\,
	combout => \ULA|Add1~17_combout\,
	cout => \ULA|Add1~18\);

-- Location: FF_X86_Y34_N9
\BancoReg|ram[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[8]~8_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][8]~q\);

-- Location: LCCOMB_X81_Y34_N4
\BancoReg|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux23~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][8]~q\,
	combout => \BancoReg|Mux23~0_combout\);

-- Location: FF_X81_Y32_N29
\idex|readData1temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux23~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(8));

-- Location: LCCOMB_X86_Y32_N22
\BancoReg|ram[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][7]~feeder_combout\ = \MuxULAMem|C[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[7]~7_combout\,
	combout => \BancoReg|ram[0][7]~feeder_combout\);

-- Location: FF_X86_Y32_N23
\BancoReg|ram[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][7]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][7]~q\);

-- Location: LCCOMB_X86_Y32_N14
\BancoReg|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux24~0_combout\ = (\BancoReg|ram[0][7]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][7]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux24~0_combout\);

-- Location: FF_X81_Y32_N27
\idex|readData1temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux24~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(7));

-- Location: LCCOMB_X86_Y32_N12
\BancoReg|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux25~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][6]~q\,
	combout => \BancoReg|Mux25~0_combout\);

-- Location: FF_X81_Y32_N17
\idex|readData1temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux25~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(6));

-- Location: LCCOMB_X81_Y32_N12
\ULA|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_combout\ = (\ULA|Add0~12\ & ((\idex|readData1temp\(6) $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~12\ & (\idex|readData1temp\(6) $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add0~14\ = CARRY((!\ULA|Add0~12\ & (\idex|readData1temp\(6) $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(6),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~12\,
	combout => \ULA|Add0~13_combout\,
	cout => \ULA|Add0~14\);

-- Location: LCCOMB_X81_Y32_N14
\ULA|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~15_combout\ = (\ULA|Add0~14\ & (\idex|readData1temp\(7) $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~14\ & ((\idex|readData1temp\(7) $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add0~16\ = CARRY((\idex|readData1temp\(7) $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(7),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~14\,
	combout => \ULA|Add0~15_combout\,
	cout => \ULA|Add0~16\);

-- Location: LCCOMB_X81_Y32_N16
\ULA|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_combout\ = (\ULA|Add0~16\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(8))))) # (!\ULA|Add0~16\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(8) $ (VCC))))
-- \ULA|Add0~18\ = CARRY((!\ULA|Add0~16\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(8),
	datad => VCC,
	cin => \ULA|Add0~16\,
	combout => \ULA|Add0~17_combout\,
	cout => \ULA|Add0~18\);

-- Location: LCCOMB_X80_Y30_N8
\ULA|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux23~0_combout\ = (\ULA|Add1~17_combout\ & ((\ULA|Add0~17_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add1~17_combout\ & (\ULA|Add0~17_combout\ & \UCULA|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Add1~17_combout\,
	datac => \ULA|Add0~17_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux23~0_combout\);

-- Location: LCCOMB_X80_Y32_N12
\ULA|tempAdd[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[6]~12_combout\ = ((\ULA|Add1~13_combout\ $ (\ULA|Add0~13_combout\ $ (!\ULA|tempAdd[5]~11\)))) # (GND)
-- \ULA|tempAdd[6]~13\ = CARRY((\ULA|Add1~13_combout\ & ((\ULA|Add0~13_combout\) # (!\ULA|tempAdd[5]~11\))) # (!\ULA|Add1~13_combout\ & (\ULA|Add0~13_combout\ & !\ULA|tempAdd[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~13_combout\,
	datab => \ULA|Add0~13_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[5]~11\,
	combout => \ULA|tempAdd[6]~12_combout\,
	cout => \ULA|tempAdd[6]~13\);

-- Location: LCCOMB_X80_Y32_N14
\ULA|tempAdd[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[7]~14_combout\ = (\ULA|Add1~15_combout\ & ((\ULA|Add0~15_combout\ & (\ULA|tempAdd[6]~13\ & VCC)) # (!\ULA|Add0~15_combout\ & (!\ULA|tempAdd[6]~13\)))) # (!\ULA|Add1~15_combout\ & ((\ULA|Add0~15_combout\ & (!\ULA|tempAdd[6]~13\)) # 
-- (!\ULA|Add0~15_combout\ & ((\ULA|tempAdd[6]~13\) # (GND)))))
-- \ULA|tempAdd[7]~15\ = CARRY((\ULA|Add1~15_combout\ & (!\ULA|Add0~15_combout\ & !\ULA|tempAdd[6]~13\)) # (!\ULA|Add1~15_combout\ & ((!\ULA|tempAdd[6]~13\) # (!\ULA|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~15_combout\,
	datab => \ULA|Add0~15_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[6]~13\,
	combout => \ULA|tempAdd[7]~14_combout\,
	cout => \ULA|tempAdd[7]~15\);

-- Location: LCCOMB_X80_Y32_N16
\ULA|tempAdd[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[8]~16_combout\ = ((\ULA|Add1~17_combout\ $ (\ULA|Add0~17_combout\ $ (!\ULA|tempAdd[7]~15\)))) # (GND)
-- \ULA|tempAdd[8]~17\ = CARRY((\ULA|Add1~17_combout\ & ((\ULA|Add0~17_combout\) # (!\ULA|tempAdd[7]~15\))) # (!\ULA|Add1~17_combout\ & (\ULA|Add0~17_combout\ & !\ULA|tempAdd[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~17_combout\,
	datab => \ULA|Add0~17_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[7]~15\,
	combout => \ULA|tempAdd[8]~16_combout\,
	cout => \ULA|tempAdd[8]~17\);

-- Location: LCCOMB_X80_Y30_N2
\ULA|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux23~1_combout\ = (!\idex|signExtendtemp\(3) & (\ULA|tempAdd[8]~16_combout\ & !\idex|signExtendtemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datac => \ULA|tempAdd[8]~16_combout\,
	datad => \idex|signExtendtemp\(0),
	combout => \ULA|Mux23~1_combout\);

-- Location: LCCOMB_X80_Y30_N16
\exmem|ulaouttemp[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[8]~4_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux23~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \ULA|Mux23~0_combout\,
	datad => \ULA|Mux23~1_combout\,
	combout => \exmem|ulaouttemp[8]~4_combout\);

-- Location: FF_X80_Y30_N17
\exmem|ulaouttemp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[8]~4_combout\,
	asdata => \ULA|tempAdd[8]~16_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(8));

-- Location: LCCOMB_X80_Y30_N10
\memwb|ulaouttemp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[8]~feeder_combout\ = \exmem|ulaouttemp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(8),
	combout => \memwb|ulaouttemp[8]~feeder_combout\);

-- Location: FF_X80_Y30_N11
\memwb|ulaouttemp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(8));

-- Location: LCCOMB_X82_Y33_N2
\MemDados|ram_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X82_Y33_N3
\MemDados|ram_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(26));

-- Location: LCCOMB_X82_Y33_N4
\MemDados|ram_rtl_0_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[25]~feeder_combout\ = \exmem|readData2temp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(8),
	combout => \MemDados|ram_rtl_0_bypass[25]~feeder_combout\);

-- Location: FF_X82_Y33_N5
\MemDados|ram_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(25));

-- Location: LCCOMB_X84_Y30_N20
\MemDados|ram_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X84_Y30_N21
\MemDados|ram_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(28));

-- Location: LCCOMB_X84_Y30_N22
\MemDados|ram_rtl_0_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[27]~feeder_combout\ = \exmem|readData2temp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(9),
	combout => \MemDados|ram_rtl_0_bypass[27]~feeder_combout\);

-- Location: FF_X84_Y30_N23
\MemDados|ram_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(27));

-- Location: LCCOMB_X84_Y32_N10
\muxRtImm|C[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[10]~10_combout\ = (\idex|extemp\(0) & ((\idex|signExtendtemp\(5)))) # (!\idex|extemp\(0) & (\idex|readData2temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData2temp\(10),
	datab => \idex|signExtendtemp\(5),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[10]~10_combout\);

-- Location: LCCOMB_X84_Y32_N6
\muxRtImm|C[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[9]~9_combout\ = (\idex|extemp\(0) & (\idex|signExtendtemp\(5))) # (!\idex|extemp\(0) & ((\idex|readData2temp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|signExtendtemp\(5),
	datac => \idex|readData2temp\(9),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[9]~9_combout\);

-- Location: LCCOMB_X83_Y32_N18
\ULA|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~19_combout\ = (\ULA|Add1~18\ & (\muxRtImm|C[9]~9_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~18\ & ((\muxRtImm|C[9]~9_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~20\ = CARRY((\muxRtImm|C[9]~9_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[9]~9_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~18\,
	combout => \ULA|Add1~19_combout\,
	cout => \ULA|Add1~20\);

-- Location: LCCOMB_X83_Y32_N20
\ULA|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~21_combout\ = (\ULA|Add1~20\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[10]~10_combout\)))) # (!\ULA|Add1~20\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[10]~10_combout\ $ (VCC))))
-- \ULA|Add1~22\ = CARRY((!\ULA|Add1~20\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[10]~10_combout\,
	datad => VCC,
	cin => \ULA|Add1~20\,
	combout => \ULA|Add1~21_combout\,
	cout => \ULA|Add1~22\);

-- Location: LCCOMB_X86_Y31_N2
\BancoReg|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux21~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][10]~q\,
	combout => \BancoReg|Mux21~0_combout\);

-- Location: FF_X81_Y32_N13
\idex|readData1temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux21~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(10));

-- Location: LCCOMB_X85_Y34_N14
\BancoReg|ram[0][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][9]~feeder_combout\ = \MuxULAMem|C[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[9]~9_combout\,
	combout => \BancoReg|ram[0][9]~feeder_combout\);

-- Location: FF_X85_Y34_N15
\BancoReg|ram[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][9]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][9]~q\);

-- Location: LCCOMB_X86_Y34_N12
\BancoReg|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux22~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][9]~q\,
	combout => \BancoReg|Mux22~0_combout\);

-- Location: FF_X81_Y32_N31
\idex|readData1temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux22~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(9));

-- Location: LCCOMB_X81_Y32_N18
\ULA|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~19_combout\ = (\ULA|Add0~18\ & (\UCULA|Mux5~0_combout\ $ ((!\idex|readData1temp\(9))))) # (!\ULA|Add0~18\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(9))) # (GND)))
-- \ULA|Add0~20\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\idex|readData1temp\(9))) # (!\ULA|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(9),
	datad => VCC,
	cin => \ULA|Add0~18\,
	combout => \ULA|Add0~19_combout\,
	cout => \ULA|Add0~20\);

-- Location: LCCOMB_X81_Y32_N20
\ULA|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_combout\ = (\ULA|Add0~20\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(10))))) # (!\ULA|Add0~20\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(10) $ (VCC))))
-- \ULA|Add0~22\ = CARRY((!\ULA|Add0~20\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(10),
	datad => VCC,
	cin => \ULA|Add0~20\,
	combout => \ULA|Add0~21_combout\,
	cout => \ULA|Add0~22\);

-- Location: LCCOMB_X81_Y33_N30
\ULA|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux21~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~21_combout\) # (\ULA|Add0~21_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~21_combout\ & \ULA|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~21_combout\,
	datad => \ULA|Add0~21_combout\,
	combout => \ULA|Mux21~0_combout\);

-- Location: LCCOMB_X80_Y32_N18
\ULA|tempAdd[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[9]~18_combout\ = (\ULA|Add1~19_combout\ & ((\ULA|Add0~19_combout\ & (\ULA|tempAdd[8]~17\ & VCC)) # (!\ULA|Add0~19_combout\ & (!\ULA|tempAdd[8]~17\)))) # (!\ULA|Add1~19_combout\ & ((\ULA|Add0~19_combout\ & (!\ULA|tempAdd[8]~17\)) # 
-- (!\ULA|Add0~19_combout\ & ((\ULA|tempAdd[8]~17\) # (GND)))))
-- \ULA|tempAdd[9]~19\ = CARRY((\ULA|Add1~19_combout\ & (!\ULA|Add0~19_combout\ & !\ULA|tempAdd[8]~17\)) # (!\ULA|Add1~19_combout\ & ((!\ULA|tempAdd[8]~17\) # (!\ULA|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~19_combout\,
	datab => \ULA|Add0~19_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[8]~17\,
	combout => \ULA|tempAdd[9]~18_combout\,
	cout => \ULA|tempAdd[9]~19\);

-- Location: LCCOMB_X80_Y32_N20
\ULA|tempAdd[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[10]~20_combout\ = ((\ULA|Add0~21_combout\ $ (\ULA|Add1~21_combout\ $ (!\ULA|tempAdd[9]~19\)))) # (GND)
-- \ULA|tempAdd[10]~21\ = CARRY((\ULA|Add0~21_combout\ & ((\ULA|Add1~21_combout\) # (!\ULA|tempAdd[9]~19\))) # (!\ULA|Add0~21_combout\ & (\ULA|Add1~21_combout\ & !\ULA|tempAdd[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~21_combout\,
	datab => \ULA|Add1~21_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[9]~19\,
	combout => \ULA|tempAdd[10]~20_combout\,
	cout => \ULA|tempAdd[10]~21\);

-- Location: LCCOMB_X81_Y33_N0
\ULA|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux21~1_combout\ = (!\idex|signExtendtemp\(3) & (!\idex|signExtendtemp\(0) & \ULA|tempAdd[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datab => \idex|signExtendtemp\(0),
	datad => \ULA|tempAdd[10]~20_combout\,
	combout => \ULA|Mux21~1_combout\);

-- Location: LCCOMB_X81_Y33_N28
\exmem|ulaouttemp[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[10]~6_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux21~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux21~0_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datad => \ULA|Mux21~1_combout\,
	combout => \exmem|ulaouttemp[10]~6_combout\);

-- Location: FF_X81_Y33_N29
\exmem|ulaouttemp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[10]~6_combout\,
	asdata => \ULA|tempAdd[10]~20_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(10));

-- Location: LCCOMB_X81_Y33_N18
\memwb|ulaouttemp[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[10]~feeder_combout\ = \exmem|ulaouttemp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(10),
	combout => \memwb|ulaouttemp[10]~feeder_combout\);

-- Location: FF_X81_Y33_N19
\memwb|ulaouttemp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(10));

-- Location: LCCOMB_X82_Y33_N10
\MemDados|ram_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X82_Y33_N11
\MemDados|ram_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(30));

-- Location: LCCOMB_X82_Y32_N26
\muxRtImm|C[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[11]~11_combout\ = (\idex|readData2temp\(11) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|readData2temp\(11),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[11]~11_combout\);

-- Location: LCCOMB_X83_Y32_N22
\ULA|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~23_combout\ = (\ULA|Add1~22\ & (\muxRtImm|C[11]~11_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~22\ & ((\muxRtImm|C[11]~11_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~24\ = CARRY((\muxRtImm|C[11]~11_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[11]~11_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~22\,
	combout => \ULA|Add1~23_combout\,
	cout => \ULA|Add1~24\);

-- Location: LCCOMB_X82_Y29_N28
\BancoReg|ram[0][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][11]~feeder_combout\ = \MuxULAMem|C[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[11]~11_combout\,
	combout => \BancoReg|ram[0][11]~feeder_combout\);

-- Location: FF_X82_Y29_N29
\BancoReg|ram[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][11]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][11]~q\);

-- Location: LCCOMB_X82_Y29_N12
\BancoReg|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux20~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][11]~q\,
	combout => \BancoReg|Mux20~0_combout\);

-- Location: FF_X81_Y32_N9
\idex|readData1temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux20~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(11));

-- Location: LCCOMB_X81_Y32_N22
\ULA|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~23_combout\ = (\ULA|Add0~22\ & (\UCULA|Mux5~0_combout\ $ ((!\idex|readData1temp\(11))))) # (!\ULA|Add0~22\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(11))) # (GND)))
-- \ULA|Add0~24\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\idex|readData1temp\(11))) # (!\ULA|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(11),
	datad => VCC,
	cin => \ULA|Add0~22\,
	combout => \ULA|Add0~23_combout\,
	cout => \ULA|Add0~24\);

-- Location: LCCOMB_X80_Y32_N22
\ULA|tempAdd[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[11]~22_combout\ = (\ULA|Add1~23_combout\ & ((\ULA|Add0~23_combout\ & (\ULA|tempAdd[10]~21\ & VCC)) # (!\ULA|Add0~23_combout\ & (!\ULA|tempAdd[10]~21\)))) # (!\ULA|Add1~23_combout\ & ((\ULA|Add0~23_combout\ & (!\ULA|tempAdd[10]~21\)) # 
-- (!\ULA|Add0~23_combout\ & ((\ULA|tempAdd[10]~21\) # (GND)))))
-- \ULA|tempAdd[11]~23\ = CARRY((\ULA|Add1~23_combout\ & (!\ULA|Add0~23_combout\ & !\ULA|tempAdd[10]~21\)) # (!\ULA|Add1~23_combout\ & ((!\ULA|tempAdd[10]~21\) # (!\ULA|Add0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~23_combout\,
	datab => \ULA|Add0~23_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[10]~21\,
	combout => \ULA|tempAdd[11]~22_combout\,
	cout => \ULA|tempAdd[11]~23\);

-- Location: LCCOMB_X80_Y30_N14
\ULA|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux20~1_combout\ = (!\idex|signExtendtemp\(3) & (\ULA|tempAdd[11]~22_combout\ & !\idex|signExtendtemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datac => \ULA|tempAdd[11]~22_combout\,
	datad => \idex|signExtendtemp\(0),
	combout => \ULA|Mux20~1_combout\);

-- Location: LCCOMB_X80_Y30_N0
\ULA|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux20~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~23_combout\) # (\ULA|Add0~23_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~23_combout\ & \ULA|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~23_combout\,
	datad => \ULA|Add0~23_combout\,
	combout => \ULA|Mux20~0_combout\);

-- Location: LCCOMB_X80_Y30_N12
\exmem|ulaouttemp[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[11]~7_combout\ = (\UCULA|Mux2~0_combout\ & (\ULA|Mux20~1_combout\)) # (!\UCULA|Mux2~0_combout\ & ((\ULA|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \ULA|Mux20~1_combout\,
	datad => \ULA|Mux20~0_combout\,
	combout => \exmem|ulaouttemp[11]~7_combout\);

-- Location: FF_X80_Y30_N13
\exmem|ulaouttemp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[11]~7_combout\,
	asdata => \ULA|tempAdd[11]~22_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(11));

-- Location: LCCOMB_X75_Y30_N0
\memwb|ulaouttemp[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[11]~feeder_combout\ = \exmem|ulaouttemp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(11),
	combout => \memwb|ulaouttemp[11]~feeder_combout\);

-- Location: FF_X75_Y30_N1
\memwb|ulaouttemp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(11));

-- Location: LCCOMB_X77_Y31_N30
\MemDados|ram_rtl_0_bypass[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[31]~feeder_combout\ = \exmem|readData2temp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(11),
	combout => \MemDados|ram_rtl_0_bypass[31]~feeder_combout\);

-- Location: FF_X77_Y31_N31
\MemDados|ram_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(31));

-- Location: LCCOMB_X76_Y31_N26
\MemDados|ram_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X76_Y31_N27
\MemDados|ram_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(32));

-- Location: FF_X85_Y32_N11
\BancoReg|ram[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[12]~12_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][12]~q\);

-- Location: LCCOMB_X85_Y32_N6
\BancoReg|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux19~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][12]~q\,
	combout => \BancoReg|Mux19~0_combout\);

-- Location: FF_X81_Y32_N21
\idex|readData1temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux19~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(12));

-- Location: LCCOMB_X81_Y32_N24
\ULA|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_combout\ = (\ULA|Add0~24\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(12))))) # (!\ULA|Add0~24\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(12) $ (VCC))))
-- \ULA|Add0~26\ = CARRY((!\ULA|Add0~24\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(12),
	datad => VCC,
	cin => \ULA|Add0~24\,
	combout => \ULA|Add0~25_combout\,
	cout => \ULA|Add0~26\);

-- Location: LCCOMB_X82_Y32_N2
\muxRtImm|C[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[12]~12_combout\ = (\idex|readData2temp\(12) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|readData2temp\(12),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[12]~12_combout\);

-- Location: LCCOMB_X83_Y32_N24
\ULA|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~25_combout\ = (\ULA|Add1~24\ & ((\muxRtImm|C[12]~12_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~24\ & (\muxRtImm|C[12]~12_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~26\ = CARRY((!\ULA|Add1~24\ & (\muxRtImm|C[12]~12_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[12]~12_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~24\,
	combout => \ULA|Add1~25_combout\,
	cout => \ULA|Add1~26\);

-- Location: LCCOMB_X80_Y32_N24
\ULA|tempAdd[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[12]~24_combout\ = ((\ULA|Add0~25_combout\ $ (\ULA|Add1~25_combout\ $ (!\ULA|tempAdd[11]~23\)))) # (GND)
-- \ULA|tempAdd[12]~25\ = CARRY((\ULA|Add0~25_combout\ & ((\ULA|Add1~25_combout\) # (!\ULA|tempAdd[11]~23\))) # (!\ULA|Add0~25_combout\ & (\ULA|Add1~25_combout\ & !\ULA|tempAdd[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~25_combout\,
	datab => \ULA|Add1~25_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[11]~23\,
	combout => \ULA|tempAdd[12]~24_combout\,
	cout => \ULA|tempAdd[12]~25\);

-- Location: LCCOMB_X80_Y30_N22
\ULA|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux19~1_combout\ = (!\idex|signExtendtemp\(3) & (\ULA|tempAdd[12]~24_combout\ & !\idex|signExtendtemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datac => \ULA|tempAdd[12]~24_combout\,
	datad => \idex|signExtendtemp\(0),
	combout => \ULA|Mux19~1_combout\);

-- Location: LCCOMB_X80_Y30_N24
\ULA|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux19~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~25_combout\) # (\ULA|Add0~25_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~25_combout\ & \ULA|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~25_combout\,
	datad => \ULA|Add0~25_combout\,
	combout => \ULA|Mux19~0_combout\);

-- Location: LCCOMB_X80_Y30_N30
\exmem|ulaouttemp[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[12]~8_combout\ = (\UCULA|Mux2~0_combout\ & (\ULA|Mux19~1_combout\)) # (!\UCULA|Mux2~0_combout\ & ((\ULA|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux19~1_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datad => \ULA|Mux19~0_combout\,
	combout => \exmem|ulaouttemp[12]~8_combout\);

-- Location: FF_X80_Y30_N31
\exmem|ulaouttemp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[12]~8_combout\,
	asdata => \ULA|tempAdd[12]~24_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(12));

-- Location: LCCOMB_X79_Y29_N22
\memwb|ulaouttemp[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[12]~feeder_combout\ = \exmem|ulaouttemp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(12),
	combout => \memwb|ulaouttemp[12]~feeder_combout\);

-- Location: FF_X79_Y29_N23
\memwb|ulaouttemp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(12));

-- Location: LCCOMB_X79_Y29_N6
\MemDados|ram_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X79_Y29_N7
\MemDados|ram_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(34));

-- Location: LCCOMB_X79_Y29_N12
\MemDados|ram_rtl_0_bypass[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[35]~feeder_combout\ = \exmem|readData2temp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(13),
	combout => \MemDados|ram_rtl_0_bypass[35]~feeder_combout\);

-- Location: FF_X79_Y29_N13
\MemDados|ram_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(35));

-- Location: LCCOMB_X84_Y32_N4
\muxRtImm|C[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[14]~14_combout\ = (\idex|readData2temp\(14) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData2temp\(14),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[14]~14_combout\);

-- Location: LCCOMB_X82_Y32_N8
\muxRtImm|C[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[13]~13_combout\ = (\idex|readData2temp\(13) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData2temp\(13),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[13]~13_combout\);

-- Location: LCCOMB_X83_Y32_N26
\ULA|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~27_combout\ = (\ULA|Add1~26\ & (\muxRtImm|C[13]~13_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~26\ & ((\muxRtImm|C[13]~13_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~28\ = CARRY((\muxRtImm|C[13]~13_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[13]~13_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~26\,
	combout => \ULA|Add1~27_combout\,
	cout => \ULA|Add1~28\);

-- Location: LCCOMB_X83_Y32_N28
\ULA|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~29_combout\ = (\ULA|Add1~28\ & ((\muxRtImm|C[14]~14_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~28\ & (\muxRtImm|C[14]~14_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~30\ = CARRY((!\ULA|Add1~28\ & (\muxRtImm|C[14]~14_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[14]~14_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~28\,
	combout => \ULA|Add1~29_combout\,
	cout => \ULA|Add1~30\);

-- Location: FF_X85_Y32_N3
\BancoReg|ram[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[14]~14_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][14]~q\);

-- Location: LCCOMB_X85_Y32_N0
\BancoReg|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux17~0_combout\ = (\BancoReg|ram[0][14]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][14]~q\,
	datac => \ifid|insttemp\(23),
	combout => \BancoReg|Mux17~0_combout\);

-- Location: FF_X81_Y32_N23
\idex|readData1temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux17~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(14));

-- Location: LCCOMB_X82_Y29_N30
\BancoReg|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux18~0_combout\ = (\BancoReg|ram[0][13]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BancoReg|ram[0][13]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux18~0_combout\);

-- Location: FF_X81_Y32_N7
\idex|readData1temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux18~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(13));

-- Location: LCCOMB_X81_Y32_N26
\ULA|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~27_combout\ = (\ULA|Add0~26\ & (\UCULA|Mux5~0_combout\ $ ((!\idex|readData1temp\(13))))) # (!\ULA|Add0~26\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(13))) # (GND)))
-- \ULA|Add0~28\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\idex|readData1temp\(13))) # (!\ULA|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(13),
	datad => VCC,
	cin => \ULA|Add0~26\,
	combout => \ULA|Add0~27_combout\,
	cout => \ULA|Add0~28\);

-- Location: LCCOMB_X81_Y32_N28
\ULA|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_combout\ = (\ULA|Add0~28\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(14))))) # (!\ULA|Add0~28\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(14) $ (VCC))))
-- \ULA|Add0~30\ = CARRY((!\ULA|Add0~28\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(14),
	datad => VCC,
	cin => \ULA|Add0~28\,
	combout => \ULA|Add0~29_combout\,
	cout => \ULA|Add0~30\);

-- Location: LCCOMB_X80_Y32_N26
\ULA|tempAdd[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[13]~26_combout\ = (\ULA|Add1~27_combout\ & ((\ULA|Add0~27_combout\ & (\ULA|tempAdd[12]~25\ & VCC)) # (!\ULA|Add0~27_combout\ & (!\ULA|tempAdd[12]~25\)))) # (!\ULA|Add1~27_combout\ & ((\ULA|Add0~27_combout\ & (!\ULA|tempAdd[12]~25\)) # 
-- (!\ULA|Add0~27_combout\ & ((\ULA|tempAdd[12]~25\) # (GND)))))
-- \ULA|tempAdd[13]~27\ = CARRY((\ULA|Add1~27_combout\ & (!\ULA|Add0~27_combout\ & !\ULA|tempAdd[12]~25\)) # (!\ULA|Add1~27_combout\ & ((!\ULA|tempAdd[12]~25\) # (!\ULA|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~27_combout\,
	datab => \ULA|Add0~27_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[12]~25\,
	combout => \ULA|tempAdd[13]~26_combout\,
	cout => \ULA|tempAdd[13]~27\);

-- Location: LCCOMB_X80_Y32_N28
\ULA|tempAdd[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[14]~28_combout\ = ((\ULA|Add1~29_combout\ $ (\ULA|Add0~29_combout\ $ (!\ULA|tempAdd[13]~27\)))) # (GND)
-- \ULA|tempAdd[14]~29\ = CARRY((\ULA|Add1~29_combout\ & ((\ULA|Add0~29_combout\) # (!\ULA|tempAdd[13]~27\))) # (!\ULA|Add1~29_combout\ & (\ULA|Add0~29_combout\ & !\ULA|tempAdd[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~29_combout\,
	datab => \ULA|Add0~29_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[13]~27\,
	combout => \ULA|tempAdd[14]~28_combout\,
	cout => \ULA|tempAdd[14]~29\);

-- Location: LCCOMB_X79_Y32_N0
\ULA|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux17~1_combout\ = (!\idex|signExtendtemp\(0) & (!\idex|signExtendtemp\(3) & \ULA|tempAdd[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|signExtendtemp\(0),
	datac => \idex|signExtendtemp\(3),
	datad => \ULA|tempAdd[14]~28_combout\,
	combout => \ULA|Mux17~1_combout\);

-- Location: LCCOMB_X79_Y32_N6
\ULA|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux17~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add0~29_combout\) # (\ULA|Add1~29_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~29_combout\ & \ULA|Add1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~29_combout\,
	datad => \ULA|Add1~29_combout\,
	combout => \ULA|Mux17~0_combout\);

-- Location: LCCOMB_X79_Y32_N22
\exmem|ulaouttemp[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[14]~10_combout\ = (\UCULA|Mux2~0_combout\ & (\ULA|Mux17~1_combout\)) # (!\UCULA|Mux2~0_combout\ & ((\ULA|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \ULA|Mux17~1_combout\,
	datad => \ULA|Mux17~0_combout\,
	combout => \exmem|ulaouttemp[14]~10_combout\);

-- Location: FF_X79_Y32_N23
\exmem|ulaouttemp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[14]~10_combout\,
	asdata => \ULA|tempAdd[14]~28_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(14));

-- Location: LCCOMB_X79_Y32_N24
\memwb|ulaouttemp[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[14]~feeder_combout\ = \exmem|ulaouttemp\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(14),
	combout => \memwb|ulaouttemp[14]~feeder_combout\);

-- Location: FF_X79_Y32_N25
\memwb|ulaouttemp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(14));

-- Location: LCCOMB_X82_Y33_N20
\MemDados|ram_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X82_Y33_N21
\MemDados|ram_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(38));

-- Location: FF_X83_Y31_N17
\MemDados|ram_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(37));

-- Location: LCCOMB_X84_Y30_N10
\MemDados|ram_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X84_Y30_N11
\MemDados|ram_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(40));

-- Location: FF_X83_Y31_N31
\MemDados|ram_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(39));

-- Location: LCCOMB_X83_Y29_N8
\BancoReg|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux15~0_combout\ = (\BancoReg|ram[0][16]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][16]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux15~0_combout\);

-- Location: FF_X81_Y31_N15
\idex|readData1temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(16));

-- Location: FF_X85_Y32_N23
\BancoReg|ram[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[15]~15_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][15]~q\);

-- Location: LCCOMB_X85_Y32_N26
\BancoReg|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux16~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][15]~q\,
	combout => \BancoReg|Mux16~0_combout\);

-- Location: FF_X81_Y32_N19
\idex|readData1temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux16~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(15));

-- Location: LCCOMB_X81_Y32_N30
\ULA|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~31_combout\ = (\ULA|Add0~30\ & (\UCULA|Mux5~0_combout\ $ ((!\idex|readData1temp\(15))))) # (!\ULA|Add0~30\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(15))) # (GND)))
-- \ULA|Add0~32\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\idex|readData1temp\(15))) # (!\ULA|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(15),
	datad => VCC,
	cin => \ULA|Add0~30\,
	combout => \ULA|Add0~31_combout\,
	cout => \ULA|Add0~32\);

-- Location: LCCOMB_X81_Y31_N0
\ULA|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_combout\ = (\ULA|Add0~32\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(16))))) # (!\ULA|Add0~32\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(16) $ (VCC))))
-- \ULA|Add0~34\ = CARRY((!\ULA|Add0~32\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(16),
	datad => VCC,
	cin => \ULA|Add0~32\,
	combout => \ULA|Add0~33_combout\,
	cout => \ULA|Add0~34\);

-- Location: LCCOMB_X82_Y31_N12
\muxRtImm|C[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[16]~16_combout\ = (\idex|readData2temp\(16) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|readData2temp\(16),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[16]~16_combout\);

-- Location: LCCOMB_X82_Y32_N0
\muxRtImm|C[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[15]~15_combout\ = (\idex|readData2temp\(15) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|readData2temp\(15),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[15]~15_combout\);

-- Location: LCCOMB_X83_Y32_N30
\ULA|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~31_combout\ = (\ULA|Add1~30\ & (\muxRtImm|C[15]~15_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~30\ & ((\muxRtImm|C[15]~15_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~32\ = CARRY((\muxRtImm|C[15]~15_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[15]~15_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~30\,
	combout => \ULA|Add1~31_combout\,
	cout => \ULA|Add1~32\);

-- Location: LCCOMB_X83_Y31_N0
\ULA|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~33_combout\ = (\ULA|Add1~32\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[16]~16_combout\)))) # (!\ULA|Add1~32\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[16]~16_combout\ $ (VCC))))
-- \ULA|Add1~34\ = CARRY((!\ULA|Add1~32\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[16]~16_combout\,
	datad => VCC,
	cin => \ULA|Add1~32\,
	combout => \ULA|Add1~33_combout\,
	cout => \ULA|Add1~34\);

-- Location: LCCOMB_X85_Y31_N4
\ULA|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux15~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add0~33_combout\) # (\ULA|Add1~33_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~33_combout\ & \ULA|Add1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~33_combout\,
	datad => \ULA|Add1~33_combout\,
	combout => \ULA|Mux15~0_combout\);

-- Location: LCCOMB_X80_Y32_N30
\ULA|tempAdd[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[15]~30_combout\ = (\ULA|Add0~31_combout\ & ((\ULA|Add1~31_combout\ & (\ULA|tempAdd[14]~29\ & VCC)) # (!\ULA|Add1~31_combout\ & (!\ULA|tempAdd[14]~29\)))) # (!\ULA|Add0~31_combout\ & ((\ULA|Add1~31_combout\ & (!\ULA|tempAdd[14]~29\)) # 
-- (!\ULA|Add1~31_combout\ & ((\ULA|tempAdd[14]~29\) # (GND)))))
-- \ULA|tempAdd[15]~31\ = CARRY((\ULA|Add0~31_combout\ & (!\ULA|Add1~31_combout\ & !\ULA|tempAdd[14]~29\)) # (!\ULA|Add0~31_combout\ & ((!\ULA|tempAdd[14]~29\) # (!\ULA|Add1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~31_combout\,
	datab => \ULA|Add1~31_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[14]~29\,
	combout => \ULA|tempAdd[15]~30_combout\,
	cout => \ULA|tempAdd[15]~31\);

-- Location: LCCOMB_X80_Y31_N0
\ULA|tempAdd[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[16]~32_combout\ = ((\ULA|Add1~33_combout\ $ (\ULA|Add0~33_combout\ $ (!\ULA|tempAdd[15]~31\)))) # (GND)
-- \ULA|tempAdd[16]~33\ = CARRY((\ULA|Add1~33_combout\ & ((\ULA|Add0~33_combout\) # (!\ULA|tempAdd[15]~31\))) # (!\ULA|Add1~33_combout\ & (\ULA|Add0~33_combout\ & !\ULA|tempAdd[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~33_combout\,
	datab => \ULA|Add0~33_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[15]~31\,
	combout => \ULA|tempAdd[16]~32_combout\,
	cout => \ULA|tempAdd[16]~33\);

-- Location: LCCOMB_X79_Y31_N18
\ULA|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux15~1_combout\ = (!\idex|signExtendtemp\(3) & (\ULA|tempAdd[16]~32_combout\ & !\idex|signExtendtemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|signExtendtemp\(3),
	datac => \ULA|tempAdd[16]~32_combout\,
	datad => \idex|signExtendtemp\(0),
	combout => \ULA|Mux15~1_combout\);

-- Location: LCCOMB_X79_Y31_N28
\exmem|ulaouttemp[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[16]~12_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux15~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux15~0_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datad => \ULA|Mux15~1_combout\,
	combout => \exmem|ulaouttemp[16]~12_combout\);

-- Location: FF_X79_Y31_N29
\exmem|ulaouttemp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[16]~12_combout\,
	asdata => \ULA|tempAdd[16]~32_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(16));

-- Location: LCCOMB_X77_Y31_N22
\memwb|ulaouttemp[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[16]~feeder_combout\ = \exmem|ulaouttemp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(16),
	combout => \memwb|ulaouttemp[16]~feeder_combout\);

-- Location: FF_X77_Y31_N23
\memwb|ulaouttemp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(16));

-- Location: LCCOMB_X76_Y31_N8
\MemDados|ram_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X76_Y31_N9
\MemDados|ram_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(42));

-- Location: FF_X80_Y31_N3
\MemDados|ram_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(43));

-- Location: LCCOMB_X77_Y31_N26
\MemDados|ram_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X77_Y31_N27
\MemDados|ram_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(44));

-- Location: LCCOMB_X82_Y31_N2
\muxRtImm|C[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[18]~18_combout\ = (\idex|readData2temp\(18) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|readData2temp\(18),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[18]~18_combout\);

-- Location: LCCOMB_X84_Y31_N6
\muxRtImm|C[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[17]~17_combout\ = (!\idex|extemp\(0) & \idex|readData2temp\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|extemp\(0),
	datad => \idex|readData2temp\(17),
	combout => \muxRtImm|C[17]~17_combout\);

-- Location: LCCOMB_X83_Y31_N2
\ULA|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~35_combout\ = (\ULA|Add1~34\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[17]~17_combout\)))) # (!\ULA|Add1~34\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[17]~17_combout\)) # (GND)))
-- \ULA|Add1~36\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[17]~17_combout\)) # (!\ULA|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[17]~17_combout\,
	datad => VCC,
	cin => \ULA|Add1~34\,
	combout => \ULA|Add1~35_combout\,
	cout => \ULA|Add1~36\);

-- Location: LCCOMB_X83_Y31_N4
\ULA|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~37_combout\ = (\ULA|Add1~36\ & ((\muxRtImm|C[18]~18_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~36\ & (\muxRtImm|C[18]~18_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~38\ = CARRY((!\ULA|Add1~36\ & (\muxRtImm|C[18]~18_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[18]~18_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~36\,
	combout => \ULA|Add1~37_combout\,
	cout => \ULA|Add1~38\);

-- Location: LCCOMB_X82_Y29_N8
\BancoReg|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux13~0_combout\ = (\BancoReg|ram[0][18]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][18]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux13~0_combout\);

-- Location: FF_X81_Y31_N31
\idex|readData1temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux13~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(18));

-- Location: LCCOMB_X84_Y32_N24
\BancoReg|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux14~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datab => \BancoReg|ram[0][17]~q\,
	combout => \BancoReg|Mux14~0_combout\);

-- Location: FF_X81_Y31_N5
\idex|readData1temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux14~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(17));

-- Location: LCCOMB_X81_Y31_N2
\ULA|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~35_combout\ = (\ULA|Add0~34\ & (\UCULA|Mux5~0_combout\ $ ((!\idex|readData1temp\(17))))) # (!\ULA|Add0~34\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(17))) # (GND)))
-- \ULA|Add0~36\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\idex|readData1temp\(17))) # (!\ULA|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(17),
	datad => VCC,
	cin => \ULA|Add0~34\,
	combout => \ULA|Add0~35_combout\,
	cout => \ULA|Add0~36\);

-- Location: LCCOMB_X81_Y31_N4
\ULA|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_combout\ = (\ULA|Add0~36\ & ((\idex|readData1temp\(18) $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~36\ & (\idex|readData1temp\(18) $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add0~38\ = CARRY((!\ULA|Add0~36\ & (\idex|readData1temp\(18) $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(18),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~36\,
	combout => \ULA|Add0~37_combout\,
	cout => \ULA|Add0~38\);

-- Location: LCCOMB_X82_Y31_N0
\ULA|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux13~0_combout\ = (\ULA|Add1~37_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add0~37_combout\))) # (!\ULA|Add1~37_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~37_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add0~37_combout\,
	combout => \ULA|Mux13~0_combout\);

-- Location: LCCOMB_X80_Y31_N2
\ULA|tempAdd[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[17]~34_combout\ = (\ULA|Add0~35_combout\ & ((\ULA|Add1~35_combout\ & (\ULA|tempAdd[16]~33\ & VCC)) # (!\ULA|Add1~35_combout\ & (!\ULA|tempAdd[16]~33\)))) # (!\ULA|Add0~35_combout\ & ((\ULA|Add1~35_combout\ & (!\ULA|tempAdd[16]~33\)) # 
-- (!\ULA|Add1~35_combout\ & ((\ULA|tempAdd[16]~33\) # (GND)))))
-- \ULA|tempAdd[17]~35\ = CARRY((\ULA|Add0~35_combout\ & (!\ULA|Add1~35_combout\ & !\ULA|tempAdd[16]~33\)) # (!\ULA|Add0~35_combout\ & ((!\ULA|tempAdd[16]~33\) # (!\ULA|Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~35_combout\,
	datab => \ULA|Add1~35_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[16]~33\,
	combout => \ULA|tempAdd[17]~34_combout\,
	cout => \ULA|tempAdd[17]~35\);

-- Location: LCCOMB_X80_Y31_N4
\ULA|tempAdd[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[18]~36_combout\ = ((\ULA|Add0~37_combout\ $ (\ULA|Add1~37_combout\ $ (!\ULA|tempAdd[17]~35\)))) # (GND)
-- \ULA|tempAdd[18]~37\ = CARRY((\ULA|Add0~37_combout\ & ((\ULA|Add1~37_combout\) # (!\ULA|tempAdd[17]~35\))) # (!\ULA|Add0~37_combout\ & (\ULA|Add1~37_combout\ & !\ULA|tempAdd[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~37_combout\,
	datab => \ULA|Add1~37_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[17]~35\,
	combout => \ULA|tempAdd[18]~36_combout\,
	cout => \ULA|tempAdd[18]~37\);

-- Location: LCCOMB_X79_Y32_N10
\ULA|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux13~1_combout\ = (!\idex|signExtendtemp\(0) & (!\idex|signExtendtemp\(3) & \ULA|tempAdd[18]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|signExtendtemp\(0),
	datac => \idex|signExtendtemp\(3),
	datad => \ULA|tempAdd[18]~36_combout\,
	combout => \ULA|Mux13~1_combout\);

-- Location: LCCOMB_X79_Y32_N14
\exmem|ulaouttemp[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[18]~14_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux13~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \ULA|Mux13~0_combout\,
	datad => \ULA|Mux13~1_combout\,
	combout => \exmem|ulaouttemp[18]~14_combout\);

-- Location: FF_X79_Y32_N15
\exmem|ulaouttemp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[18]~14_combout\,
	asdata => \ULA|tempAdd[18]~36_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(18));

-- Location: LCCOMB_X79_Y29_N30
\memwb|ulaouttemp[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[18]~feeder_combout\ = \exmem|ulaouttemp\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(18),
	combout => \memwb|ulaouttemp[18]~feeder_combout\);

-- Location: FF_X79_Y29_N31
\memwb|ulaouttemp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(18));

-- Location: LCCOMB_X79_Y29_N20
\MemDados|ram_rtl_0_bypass[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[45]~feeder_combout\ = \exmem|readData2temp\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(18),
	combout => \MemDados|ram_rtl_0_bypass[45]~feeder_combout\);

-- Location: FF_X79_Y29_N21
\MemDados|ram_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(45));

-- Location: LCCOMB_X79_Y29_N14
\MemDados|ram_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X79_Y29_N15
\MemDados|ram_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(46));

-- Location: LCCOMB_X82_Y31_N26
\muxRtImm|C[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[19]~19_combout\ = (\idex|readData2temp\(19) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|readData2temp\(19),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[19]~19_combout\);

-- Location: LCCOMB_X83_Y31_N6
\ULA|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~39_combout\ = (\ULA|Add1~38\ & (\muxRtImm|C[19]~19_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~38\ & ((\muxRtImm|C[19]~19_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~40\ = CARRY((\muxRtImm|C[19]~19_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[19]~19_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~38\,
	combout => \ULA|Add1~39_combout\,
	cout => \ULA|Add1~40\);

-- Location: FF_X82_Y34_N3
\BancoReg|ram[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[19]~19_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][19]~q\);

-- Location: LCCOMB_X79_Y34_N24
\BancoReg|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux12~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][19]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|insttemp\(23),
	datac => \BancoReg|ram[0][19]~q\,
	combout => \BancoReg|Mux12~0_combout\);

-- Location: FF_X81_Y31_N25
\idex|readData1temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(19));

-- Location: LCCOMB_X81_Y31_N6
\ULA|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~39_combout\ = (\ULA|Add0~38\ & (\UCULA|Mux5~0_combout\ $ ((!\idex|readData1temp\(19))))) # (!\ULA|Add0~38\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(19))) # (GND)))
-- \ULA|Add0~40\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\idex|readData1temp\(19))) # (!\ULA|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(19),
	datad => VCC,
	cin => \ULA|Add0~38\,
	combout => \ULA|Add0~39_combout\,
	cout => \ULA|Add0~40\);

-- Location: LCCOMB_X81_Y33_N10
\ULA|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux12~0_combout\ = (\ULA|Add1~39_combout\ & ((\ULA|Add0~39_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add1~39_combout\ & (\ULA|Add0~39_combout\ & \UCULA|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~39_combout\,
	datab => \ULA|Add0~39_combout\,
	datac => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux12~0_combout\);

-- Location: LCCOMB_X80_Y31_N6
\ULA|tempAdd[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[19]~38_combout\ = (\ULA|Add0~39_combout\ & ((\ULA|Add1~39_combout\ & (\ULA|tempAdd[18]~37\ & VCC)) # (!\ULA|Add1~39_combout\ & (!\ULA|tempAdd[18]~37\)))) # (!\ULA|Add0~39_combout\ & ((\ULA|Add1~39_combout\ & (!\ULA|tempAdd[18]~37\)) # 
-- (!\ULA|Add1~39_combout\ & ((\ULA|tempAdd[18]~37\) # (GND)))))
-- \ULA|tempAdd[19]~39\ = CARRY((\ULA|Add0~39_combout\ & (!\ULA|Add1~39_combout\ & !\ULA|tempAdd[18]~37\)) # (!\ULA|Add0~39_combout\ & ((!\ULA|tempAdd[18]~37\) # (!\ULA|Add1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~39_combout\,
	datab => \ULA|Add1~39_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[18]~37\,
	combout => \ULA|tempAdd[19]~38_combout\,
	cout => \ULA|tempAdd[19]~39\);

-- Location: LCCOMB_X81_Y33_N16
\ULA|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux12~1_combout\ = (!\idex|signExtendtemp\(0) & (\ULA|tempAdd[19]~38_combout\ & !\idex|signExtendtemp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|signExtendtemp\(0),
	datac => \ULA|tempAdd[19]~38_combout\,
	datad => \idex|signExtendtemp\(3),
	combout => \ULA|Mux12~1_combout\);

-- Location: LCCOMB_X81_Y33_N26
\exmem|ulaouttemp[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[19]~15_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux12~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux12~0_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datad => \ULA|Mux12~1_combout\,
	combout => \exmem|ulaouttemp[19]~15_combout\);

-- Location: FF_X81_Y33_N27
\exmem|ulaouttemp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[19]~15_combout\,
	asdata => \ULA|tempAdd[19]~38_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(19));

-- Location: LCCOMB_X81_Y33_N4
\memwb|ulaouttemp[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[19]~feeder_combout\ = \exmem|ulaouttemp\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(19),
	combout => \memwb|ulaouttemp[19]~feeder_combout\);

-- Location: FF_X81_Y33_N5
\memwb|ulaouttemp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(19));

-- Location: LCCOMB_X81_Y33_N24
\MemDados|ram_rtl_0_bypass[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[47]~feeder_combout\ = \exmem|readData2temp\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(19),
	combout => \MemDados|ram_rtl_0_bypass[47]~feeder_combout\);

-- Location: FF_X81_Y33_N25
\MemDados|ram_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(47));

-- Location: LCCOMB_X82_Y33_N22
\MemDados|ram_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X82_Y33_N23
\MemDados|ram_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(48));

-- Location: LCCOMB_X75_Y31_N16
\MemDados|ram_rtl_0_bypass[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[49]~feeder_combout\ = \exmem|readData2temp\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(20),
	combout => \MemDados|ram_rtl_0_bypass[49]~feeder_combout\);

-- Location: FF_X75_Y31_N17
\MemDados|ram_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(49));

-- Location: LCCOMB_X75_Y31_N22
\MemDados|ram_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X75_Y31_N23
\MemDados|ram_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(50));

-- Location: LCCOMB_X75_Y31_N24
\MemDados|ram_rtl_0_bypass[51]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[51]~feeder_combout\ = \exmem|readData2temp\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(21),
	combout => \MemDados|ram_rtl_0_bypass[51]~feeder_combout\);

-- Location: FF_X75_Y31_N25
\MemDados|ram_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[51]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(51));

-- Location: LCCOMB_X82_Y30_N8
\BancoReg|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux9~0_combout\ = (\BancoReg|ram[0][22]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BancoReg|ram[0][22]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux9~0_combout\);

-- Location: FF_X81_Y31_N21
\idex|readData1temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(22));

-- Location: LCCOMB_X86_Y31_N18
\BancoReg|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux10~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][21]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][21]~q\,
	combout => \BancoReg|Mux10~0_combout\);

-- Location: FF_X81_Y31_N7
\idex|readData1temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(21));

-- Location: FF_X82_Y31_N5
\BancoReg|ram[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[20]~20_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][20]~q\);

-- Location: LCCOMB_X82_Y30_N2
\BancoReg|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux11~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][20]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][20]~q\,
	combout => \BancoReg|Mux11~0_combout\);

-- Location: FF_X81_Y31_N29
\idex|readData1temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux11~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(20));

-- Location: LCCOMB_X81_Y31_N8
\ULA|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_combout\ = (\ULA|Add0~40\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(20))))) # (!\ULA|Add0~40\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(20) $ (VCC))))
-- \ULA|Add0~42\ = CARRY((!\ULA|Add0~40\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(20),
	datad => VCC,
	cin => \ULA|Add0~40\,
	combout => \ULA|Add0~41_combout\,
	cout => \ULA|Add0~42\);

-- Location: LCCOMB_X81_Y31_N10
\ULA|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~43_combout\ = (\ULA|Add0~42\ & (\idex|readData1temp\(21) $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~42\ & ((\idex|readData1temp\(21) $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add0~44\ = CARRY((\idex|readData1temp\(21) $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(21),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~42\,
	combout => \ULA|Add0~43_combout\,
	cout => \ULA|Add0~44\);

-- Location: LCCOMB_X81_Y31_N12
\ULA|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_combout\ = (\ULA|Add0~44\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(22))))) # (!\ULA|Add0~44\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(22) $ (VCC))))
-- \ULA|Add0~46\ = CARRY((!\ULA|Add0~44\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(22),
	datad => VCC,
	cin => \ULA|Add0~44\,
	combout => \ULA|Add0~45_combout\,
	cout => \ULA|Add0~46\);

-- Location: LCCOMB_X82_Y31_N10
\muxRtImm|C[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[22]~22_combout\ = (!\idex|extemp\(0) & \idex|readData2temp\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|extemp\(0),
	datad => \idex|readData2temp\(22),
	combout => \muxRtImm|C[22]~22_combout\);

-- Location: LCCOMB_X82_Y31_N20
\muxRtImm|C[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[21]~21_combout\ = (!\idex|extemp\(0) & \idex|readData2temp\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|extemp\(0),
	datad => \idex|readData2temp\(21),
	combout => \muxRtImm|C[21]~21_combout\);

-- Location: LCCOMB_X82_Y31_N22
\muxRtImm|C[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[20]~20_combout\ = (\idex|readData2temp\(20) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|readData2temp\(20),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[20]~20_combout\);

-- Location: LCCOMB_X83_Y31_N8
\ULA|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~41_combout\ = (\ULA|Add1~40\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[20]~20_combout\)))) # (!\ULA|Add1~40\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[20]~20_combout\ $ (VCC))))
-- \ULA|Add1~42\ = CARRY((!\ULA|Add1~40\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[20]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[20]~20_combout\,
	datad => VCC,
	cin => \ULA|Add1~40\,
	combout => \ULA|Add1~41_combout\,
	cout => \ULA|Add1~42\);

-- Location: LCCOMB_X83_Y31_N10
\ULA|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~43_combout\ = (\ULA|Add1~42\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[21]~21_combout\)))) # (!\ULA|Add1~42\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[21]~21_combout\)) # (GND)))
-- \ULA|Add1~44\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[21]~21_combout\)) # (!\ULA|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[21]~21_combout\,
	datad => VCC,
	cin => \ULA|Add1~42\,
	combout => \ULA|Add1~43_combout\,
	cout => \ULA|Add1~44\);

-- Location: LCCOMB_X83_Y31_N12
\ULA|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~45_combout\ = (\ULA|Add1~44\ & ((\muxRtImm|C[22]~22_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~44\ & (\muxRtImm|C[22]~22_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~46\ = CARRY((!\ULA|Add1~44\ & (\muxRtImm|C[22]~22_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[22]~22_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~44\,
	combout => \ULA|Add1~45_combout\,
	cout => \ULA|Add1~46\);

-- Location: LCCOMB_X79_Y31_N12
\exmem|ulaouttemp[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[22]~28_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add0~45_combout\) # (\ULA|Add1~45_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~45_combout\ & \ULA|Add1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add1~45_combout\,
	combout => \exmem|ulaouttemp[22]~28_combout\);

-- Location: LCCOMB_X80_Y31_N8
\ULA|tempAdd[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[20]~40_combout\ = ((\ULA|Add0~41_combout\ $ (\ULA|Add1~41_combout\ $ (!\ULA|tempAdd[19]~39\)))) # (GND)
-- \ULA|tempAdd[20]~41\ = CARRY((\ULA|Add0~41_combout\ & ((\ULA|Add1~41_combout\) # (!\ULA|tempAdd[19]~39\))) # (!\ULA|Add0~41_combout\ & (\ULA|Add1~41_combout\ & !\ULA|tempAdd[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~41_combout\,
	datab => \ULA|Add1~41_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[19]~39\,
	combout => \ULA|tempAdd[20]~40_combout\,
	cout => \ULA|tempAdd[20]~41\);

-- Location: LCCOMB_X80_Y31_N10
\ULA|tempAdd[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[21]~42_combout\ = (\ULA|Add1~43_combout\ & ((\ULA|Add0~43_combout\ & (\ULA|tempAdd[20]~41\ & VCC)) # (!\ULA|Add0~43_combout\ & (!\ULA|tempAdd[20]~41\)))) # (!\ULA|Add1~43_combout\ & ((\ULA|Add0~43_combout\ & (!\ULA|tempAdd[20]~41\)) # 
-- (!\ULA|Add0~43_combout\ & ((\ULA|tempAdd[20]~41\) # (GND)))))
-- \ULA|tempAdd[21]~43\ = CARRY((\ULA|Add1~43_combout\ & (!\ULA|Add0~43_combout\ & !\ULA|tempAdd[20]~41\)) # (!\ULA|Add1~43_combout\ & ((!\ULA|tempAdd[20]~41\) # (!\ULA|Add0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~43_combout\,
	datab => \ULA|Add0~43_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[20]~41\,
	combout => \ULA|tempAdd[21]~42_combout\,
	cout => \ULA|tempAdd[21]~43\);

-- Location: LCCOMB_X80_Y31_N12
\ULA|tempAdd[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[22]~44_combout\ = ((\ULA|Add0~45_combout\ $ (\ULA|Add1~45_combout\ $ (!\ULA|tempAdd[21]~43\)))) # (GND)
-- \ULA|tempAdd[22]~45\ = CARRY((\ULA|Add0~45_combout\ & ((\ULA|Add1~45_combout\) # (!\ULA|tempAdd[21]~43\))) # (!\ULA|Add0~45_combout\ & (\ULA|Add1~45_combout\ & !\ULA|tempAdd[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~45_combout\,
	datab => \ULA|Add1~45_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[21]~43\,
	combout => \ULA|tempAdd[22]~44_combout\,
	cout => \ULA|tempAdd[22]~45\);

-- Location: LCCOMB_X79_Y31_N22
\exmem|ulaouttemp[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[22]~18_combout\ = (\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[22]~29_combout\ & \ULA|tempAdd[22]~44_combout\)))) # (!\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[22]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exmem|ulaouttemp[22]~28_combout\,
	datab => \exmem|ulaouttemp[22]~29_combout\,
	datac => \ULA|tempAdd[22]~44_combout\,
	datad => \UCULA|Mux2~0_combout\,
	combout => \exmem|ulaouttemp[22]~18_combout\);

-- Location: FF_X79_Y31_N23
\exmem|ulaouttemp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[22]~18_combout\,
	asdata => \ULA|tempAdd[22]~44_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(22));

-- Location: LCCOMB_X75_Y31_N10
\memwb|ulaouttemp[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[22]~feeder_combout\ = \exmem|ulaouttemp\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(22),
	combout => \memwb|ulaouttemp[22]~feeder_combout\);

-- Location: FF_X75_Y31_N11
\memwb|ulaouttemp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(22));

-- Location: LCCOMB_X75_Y31_N12
\MemDados|ram_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X75_Y31_N13
\MemDados|ram_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(54));

-- Location: LCCOMB_X86_Y27_N8
\MemDados|ram_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X86_Y27_N9
\MemDados|ram_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(56));

-- Location: FF_X83_Y31_N29
\MemDados|ram_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(55));

-- Location: LCCOMB_X79_Y30_N8
\MemDados|ram_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X79_Y30_N9
\MemDados|ram_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(58));

-- Location: LCCOMB_X82_Y31_N18
\muxRtImm|C[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[25]~25_combout\ = (!\idex|extemp\(0) & \idex|readData2temp\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|extemp\(0),
	datad => \idex|readData2temp\(25),
	combout => \muxRtImm|C[25]~25_combout\);

-- Location: LCCOMB_X82_Y31_N28
\muxRtImm|C[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[24]~24_combout\ = (!\idex|extemp\(0) & \idex|readData2temp\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|extemp\(0),
	datad => \idex|readData2temp\(24),
	combout => \muxRtImm|C[24]~24_combout\);

-- Location: LCCOMB_X82_Y31_N14
\muxRtImm|C[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[23]~23_combout\ = (!\idex|extemp\(0) & \idex|readData2temp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|extemp\(0),
	datad => \idex|readData2temp\(23),
	combout => \muxRtImm|C[23]~23_combout\);

-- Location: LCCOMB_X83_Y31_N14
\ULA|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~47_combout\ = (\ULA|Add1~46\ & (\muxRtImm|C[23]~23_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~46\ & ((\muxRtImm|C[23]~23_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~48\ = CARRY((\muxRtImm|C[23]~23_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[23]~23_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~46\,
	combout => \ULA|Add1~47_combout\,
	cout => \ULA|Add1~48\);

-- Location: LCCOMB_X83_Y31_N16
\ULA|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~49_combout\ = (\ULA|Add1~48\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[24]~24_combout\)))) # (!\ULA|Add1~48\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[24]~24_combout\ $ (VCC))))
-- \ULA|Add1~50\ = CARRY((!\ULA|Add1~48\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[24]~24_combout\,
	datad => VCC,
	cin => \ULA|Add1~48\,
	combout => \ULA|Add1~49_combout\,
	cout => \ULA|Add1~50\);

-- Location: LCCOMB_X83_Y31_N18
\ULA|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~51_combout\ = (\ULA|Add1~50\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[25]~25_combout\)))) # (!\ULA|Add1~50\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[25]~25_combout\)) # (GND)))
-- \ULA|Add1~52\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[25]~25_combout\)) # (!\ULA|Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[25]~25_combout\,
	datad => VCC,
	cin => \ULA|Add1~50\,
	combout => \ULA|Add1~51_combout\,
	cout => \ULA|Add1~52\);

-- Location: LCCOMB_X83_Y29_N12
\BancoReg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux6~0_combout\ = (\BancoReg|ram[0][25]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BancoReg|ram[0][25]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux6~0_combout\);

-- Location: FF_X81_Y31_N27
\idex|readData1temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(25));

-- Location: LCCOMB_X82_Y30_N28
\BancoReg|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux7~0_combout\ = (\BancoReg|ram[0][24]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][24]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux7~0_combout\);

-- Location: FF_X81_Y31_N13
\idex|readData1temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(24));

-- Location: LCCOMB_X82_Y30_N6
\BancoReg|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux8~0_combout\ = (\BancoReg|ram[0][23]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BancoReg|ram[0][23]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux8~0_combout\);

-- Location: FF_X81_Y31_N1
\idex|readData1temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(23));

-- Location: LCCOMB_X81_Y31_N14
\ULA|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~47_combout\ = (\ULA|Add0~46\ & (\UCULA|Mux5~0_combout\ $ ((!\idex|readData1temp\(23))))) # (!\ULA|Add0~46\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(23))) # (GND)))
-- \ULA|Add0~48\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\idex|readData1temp\(23))) # (!\ULA|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(23),
	datad => VCC,
	cin => \ULA|Add0~46\,
	combout => \ULA|Add0~47_combout\,
	cout => \ULA|Add0~48\);

-- Location: LCCOMB_X81_Y31_N16
\ULA|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_combout\ = (\ULA|Add0~48\ & ((\idex|readData1temp\(24) $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~48\ & (\idex|readData1temp\(24) $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add0~50\ = CARRY((!\ULA|Add0~48\ & (\idex|readData1temp\(24) $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(24),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~48\,
	combout => \ULA|Add0~49_combout\,
	cout => \ULA|Add0~50\);

-- Location: LCCOMB_X81_Y31_N18
\ULA|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~51_combout\ = (\ULA|Add0~50\ & (\idex|readData1temp\(25) $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~50\ & ((\idex|readData1temp\(25) $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add0~52\ = CARRY((\idex|readData1temp\(25) $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(25),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~50\,
	combout => \ULA|Add0~51_combout\,
	cout => \ULA|Add0~52\);

-- Location: LCCOMB_X80_Y31_N14
\ULA|tempAdd[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[23]~46_combout\ = (\ULA|Add1~47_combout\ & ((\ULA|Add0~47_combout\ & (\ULA|tempAdd[22]~45\ & VCC)) # (!\ULA|Add0~47_combout\ & (!\ULA|tempAdd[22]~45\)))) # (!\ULA|Add1~47_combout\ & ((\ULA|Add0~47_combout\ & (!\ULA|tempAdd[22]~45\)) # 
-- (!\ULA|Add0~47_combout\ & ((\ULA|tempAdd[22]~45\) # (GND)))))
-- \ULA|tempAdd[23]~47\ = CARRY((\ULA|Add1~47_combout\ & (!\ULA|Add0~47_combout\ & !\ULA|tempAdd[22]~45\)) # (!\ULA|Add1~47_combout\ & ((!\ULA|tempAdd[22]~45\) # (!\ULA|Add0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~47_combout\,
	datab => \ULA|Add0~47_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[22]~45\,
	combout => \ULA|tempAdd[23]~46_combout\,
	cout => \ULA|tempAdd[23]~47\);

-- Location: LCCOMB_X80_Y31_N16
\ULA|tempAdd[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[24]~48_combout\ = ((\ULA|Add1~49_combout\ $ (\ULA|Add0~49_combout\ $ (!\ULA|tempAdd[23]~47\)))) # (GND)
-- \ULA|tempAdd[24]~49\ = CARRY((\ULA|Add1~49_combout\ & ((\ULA|Add0~49_combout\) # (!\ULA|tempAdd[23]~47\))) # (!\ULA|Add1~49_combout\ & (\ULA|Add0~49_combout\ & !\ULA|tempAdd[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~49_combout\,
	datab => \ULA|Add0~49_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[23]~47\,
	combout => \ULA|tempAdd[24]~48_combout\,
	cout => \ULA|tempAdd[24]~49\);

-- Location: LCCOMB_X80_Y31_N18
\ULA|tempAdd[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[25]~50_combout\ = (\ULA|Add1~51_combout\ & ((\ULA|Add0~51_combout\ & (\ULA|tempAdd[24]~49\ & VCC)) # (!\ULA|Add0~51_combout\ & (!\ULA|tempAdd[24]~49\)))) # (!\ULA|Add1~51_combout\ & ((\ULA|Add0~51_combout\ & (!\ULA|tempAdd[24]~49\)) # 
-- (!\ULA|Add0~51_combout\ & ((\ULA|tempAdd[24]~49\) # (GND)))))
-- \ULA|tempAdd[25]~51\ = CARRY((\ULA|Add1~51_combout\ & (!\ULA|Add0~51_combout\ & !\ULA|tempAdd[24]~49\)) # (!\ULA|Add1~51_combout\ & ((!\ULA|tempAdd[24]~49\) # (!\ULA|Add0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~51_combout\,
	datab => \ULA|Add0~51_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[24]~49\,
	combout => \ULA|tempAdd[25]~50_combout\,
	cout => \ULA|tempAdd[25]~51\);

-- Location: LCCOMB_X84_Y31_N16
\exmem|ulaouttemp[25]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[25]~32_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add0~51_combout\) # (\ULA|Add1~51_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~51_combout\ & \ULA|Add1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~51_combout\,
	datad => \ULA|Add1~51_combout\,
	combout => \exmem|ulaouttemp[25]~32_combout\);

-- Location: LCCOMB_X84_Y31_N10
\exmem|ulaouttemp[25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[25]~21_combout\ = (\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[22]~29_combout\ & (\ULA|tempAdd[25]~50_combout\))) # (!\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[25]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exmem|ulaouttemp[22]~29_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datac => \ULA|tempAdd[25]~50_combout\,
	datad => \exmem|ulaouttemp[25]~32_combout\,
	combout => \exmem|ulaouttemp[25]~21_combout\);

-- Location: FF_X84_Y31_N11
\exmem|ulaouttemp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[25]~21_combout\,
	asdata => \ULA|tempAdd[25]~50_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(25));

-- Location: LCCOMB_X86_Y27_N30
\memwb|ulaouttemp[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[25]~feeder_combout\ = \exmem|ulaouttemp\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(25),
	combout => \memwb|ulaouttemp[25]~feeder_combout\);

-- Location: FF_X86_Y27_N31
\memwb|ulaouttemp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(25));

-- Location: LCCOMB_X86_Y27_N26
\MemDados|ram_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X86_Y27_N27
\MemDados|ram_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(60));

-- Location: FF_X83_Y31_N13
\MemDados|ram_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(59));

-- Location: LCCOMB_X86_Y27_N12
\MemDados|ram_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X86_Y27_N13
\MemDados|ram_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(62));

-- Location: FF_X83_Y29_N9
\MemDados|ram_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(61));

-- Location: LCCOMB_X84_Y31_N24
\muxRtImm|C[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[27]~27_combout\ = (\idex|readData2temp\(27) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|readData2temp\(27),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[27]~27_combout\);

-- Location: LCCOMB_X82_Y31_N8
\muxRtImm|C[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[26]~26_combout\ = (\idex|readData2temp\(26) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|readData2temp\(26),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[26]~26_combout\);

-- Location: LCCOMB_X83_Y31_N20
\ULA|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~53_combout\ = (\ULA|Add1~52\ & ((\muxRtImm|C[26]~26_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~52\ & (\muxRtImm|C[26]~26_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~54\ = CARRY((!\ULA|Add1~52\ & (\muxRtImm|C[26]~26_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[26]~26_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~52\,
	combout => \ULA|Add1~53_combout\,
	cout => \ULA|Add1~54\);

-- Location: LCCOMB_X83_Y31_N22
\ULA|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~55_combout\ = (\ULA|Add1~54\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[27]~27_combout\)))) # (!\ULA|Add1~54\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[27]~27_combout\)) # (GND)))
-- \ULA|Add1~56\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[27]~27_combout\)) # (!\ULA|Add1~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[27]~27_combout\,
	datad => VCC,
	cin => \ULA|Add1~54\,
	combout => \ULA|Add1~55_combout\,
	cout => \ULA|Add1~56\);

-- Location: LCCOMB_X83_Y29_N14
\BancoReg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux4~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][27]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][27]~q\,
	combout => \BancoReg|Mux4~0_combout\);

-- Location: FF_X81_Y31_N11
\idex|readData1temp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(27));

-- Location: LCCOMB_X83_Y29_N0
\BancoReg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux5~0_combout\ = (\BancoReg|ram[0][26]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][26]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux5~0_combout\);

-- Location: FF_X81_Y31_N17
\idex|readData1temp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(26));

-- Location: LCCOMB_X81_Y31_N20
\ULA|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_combout\ = (\ULA|Add0~52\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(26))))) # (!\ULA|Add0~52\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(26) $ (VCC))))
-- \ULA|Add0~54\ = CARRY((!\ULA|Add0~52\ & (\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(26),
	datad => VCC,
	cin => \ULA|Add0~52\,
	combout => \ULA|Add0~53_combout\,
	cout => \ULA|Add0~54\);

-- Location: LCCOMB_X81_Y31_N22
\ULA|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~55_combout\ = (\ULA|Add0~54\ & (\idex|readData1temp\(27) $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~54\ & ((\idex|readData1temp\(27) $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add0~56\ = CARRY((\idex|readData1temp\(27) $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(27),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~54\,
	combout => \ULA|Add0~55_combout\,
	cout => \ULA|Add0~56\);

-- Location: LCCOMB_X80_Y31_N20
\ULA|tempAdd[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[26]~52_combout\ = ((\ULA|Add1~53_combout\ $ (\ULA|Add0~53_combout\ $ (!\ULA|tempAdd[25]~51\)))) # (GND)
-- \ULA|tempAdd[26]~53\ = CARRY((\ULA|Add1~53_combout\ & ((\ULA|Add0~53_combout\) # (!\ULA|tempAdd[25]~51\))) # (!\ULA|Add1~53_combout\ & (\ULA|Add0~53_combout\ & !\ULA|tempAdd[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~53_combout\,
	datab => \ULA|Add0~53_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[25]~51\,
	combout => \ULA|tempAdd[26]~52_combout\,
	cout => \ULA|tempAdd[26]~53\);

-- Location: LCCOMB_X80_Y31_N22
\ULA|tempAdd[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[27]~54_combout\ = (\ULA|Add1~55_combout\ & ((\ULA|Add0~55_combout\ & (\ULA|tempAdd[26]~53\ & VCC)) # (!\ULA|Add0~55_combout\ & (!\ULA|tempAdd[26]~53\)))) # (!\ULA|Add1~55_combout\ & ((\ULA|Add0~55_combout\ & (!\ULA|tempAdd[26]~53\)) # 
-- (!\ULA|Add0~55_combout\ & ((\ULA|tempAdd[26]~53\) # (GND)))))
-- \ULA|tempAdd[27]~55\ = CARRY((\ULA|Add1~55_combout\ & (!\ULA|Add0~55_combout\ & !\ULA|tempAdd[26]~53\)) # (!\ULA|Add1~55_combout\ & ((!\ULA|tempAdd[26]~53\) # (!\ULA|Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~55_combout\,
	datab => \ULA|Add0~55_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[26]~53\,
	combout => \ULA|tempAdd[27]~54_combout\,
	cout => \ULA|tempAdd[27]~55\);

-- Location: LCCOMB_X84_Y31_N2
\exmem|ulaouttemp[27]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[27]~34_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~55_combout\) # (\ULA|Add0~55_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~55_combout\ & \ULA|Add0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~55_combout\,
	datad => \ULA|Add0~55_combout\,
	combout => \exmem|ulaouttemp[27]~34_combout\);

-- Location: LCCOMB_X84_Y31_N4
\exmem|ulaouttemp[27]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[27]~23_combout\ = (\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[22]~29_combout\ & (\ULA|tempAdd[27]~54_combout\))) # (!\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[27]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exmem|ulaouttemp[22]~29_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datac => \ULA|tempAdd[27]~54_combout\,
	datad => \exmem|ulaouttemp[27]~34_combout\,
	combout => \exmem|ulaouttemp[27]~23_combout\);

-- Location: FF_X84_Y31_N5
\exmem|ulaouttemp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[27]~23_combout\,
	asdata => \ULA|tempAdd[27]~54_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(27));

-- Location: FF_X83_Y33_N23
\memwb|ulaouttemp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|ulaouttemp\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(27));

-- Location: LCCOMB_X82_Y33_N30
\MemDados|ram_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X82_Y33_N31
\MemDados|ram_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(64));

-- Location: LCCOMB_X82_Y31_N24
\muxRtImm|C[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[28]~28_combout\ = (\idex|readData2temp\(28) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|readData2temp\(28),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[28]~28_combout\);

-- Location: LCCOMB_X83_Y31_N24
\ULA|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~57_combout\ = (\ULA|Add1~56\ & ((\muxRtImm|C[28]~28_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~56\ & (\muxRtImm|C[28]~28_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~58\ = CARRY((!\ULA|Add1~56\ & (\muxRtImm|C[28]~28_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[28]~28_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~56\,
	combout => \ULA|Add1~57_combout\,
	cout => \ULA|Add1~58\);

-- Location: LCCOMB_X86_Y31_N0
\BancoReg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux3~0_combout\ = (\BancoReg|ram[0][28]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][28]~q\,
	datac => \ifid|insttemp\(23),
	combout => \BancoReg|Mux3~0_combout\);

-- Location: FF_X86_Y31_N1
\idex|readData1temp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(28));

-- Location: LCCOMB_X81_Y31_N24
\ULA|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_combout\ = (\ULA|Add0~56\ & ((\idex|readData1temp\(28) $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~56\ & (\idex|readData1temp\(28) $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add0~58\ = CARRY((!\ULA|Add0~56\ & (\idex|readData1temp\(28) $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(28),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~56\,
	combout => \ULA|Add0~57_combout\,
	cout => \ULA|Add0~58\);

-- Location: LCCOMB_X80_Y31_N24
\ULA|tempAdd[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[28]~56_combout\ = ((\ULA|Add1~57_combout\ $ (\ULA|Add0~57_combout\ $ (!\ULA|tempAdd[27]~55\)))) # (GND)
-- \ULA|tempAdd[28]~57\ = CARRY((\ULA|Add1~57_combout\ & ((\ULA|Add0~57_combout\) # (!\ULA|tempAdd[27]~55\))) # (!\ULA|Add1~57_combout\ & (\ULA|Add0~57_combout\ & !\ULA|tempAdd[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~57_combout\,
	datab => \ULA|Add0~57_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[27]~55\,
	combout => \ULA|tempAdd[28]~56_combout\,
	cout => \ULA|tempAdd[28]~57\);

-- Location: LCCOMB_X84_Y31_N28
\exmem|ulaouttemp[28]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[28]~35_combout\ = (\ULA|Add0~57_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add1~57_combout\))) # (!\ULA|Add0~57_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add1~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~57_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add1~57_combout\,
	combout => \exmem|ulaouttemp[28]~35_combout\);

-- Location: LCCOMB_X84_Y31_N30
\exmem|ulaouttemp[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[28]~24_combout\ = (\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[22]~29_combout\ & (\ULA|tempAdd[28]~56_combout\))) # (!\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[28]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exmem|ulaouttemp[22]~29_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datac => \ULA|tempAdd[28]~56_combout\,
	datad => \exmem|ulaouttemp[28]~35_combout\,
	combout => \exmem|ulaouttemp[28]~24_combout\);

-- Location: FF_X84_Y31_N31
\exmem|ulaouttemp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[28]~24_combout\,
	asdata => \ULA|tempAdd[28]~56_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(28));

-- Location: FF_X83_Y33_N29
\memwb|ulaouttemp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|ulaouttemp\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(28));

-- Location: LCCOMB_X82_Y33_N0
\MemDados|ram_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X82_Y33_N1
\MemDados|ram_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(66));

-- Location: FF_X82_Y31_N27
\exmem|readData2temp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(30));

-- Location: LCCOMB_X83_Y30_N20
\exmem|readData2temp[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|readData2temp[31]~feeder_combout\ = \idex|readData2temp\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \idex|readData2temp\(31),
	combout => \exmem|readData2temp[31]~feeder_combout\);

-- Location: FF_X83_Y30_N21
\exmem|readData2temp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|readData2temp[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(31));

-- Location: M9K_X78_Y31_N0
\MemDados|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000040000000040000000080000007AD00000000800000000000000000000000000008C850001000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/MIPS.ram0_RAM_9f867151.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:MemDados|altsyncram:ram_rtl_0|altsyncram_5if1:auto_generated|ALTSYNCRAM",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MemDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X83_Y31_N25
\MemDados|ram_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(65));

-- Location: LCCOMB_X82_Y33_N14
\MemDados|ram~582\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~582_combout\ = (\MemDados|ram_rtl_0_bypass\(66) & (\MemDados|ram_rtl_0|auto_generated|ram_block1a28\)) # (!\MemDados|ram_rtl_0_bypass\(66) & ((\MemDados|ram_rtl_0_bypass\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(66),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a28\,
	datad => \MemDados|ram_rtl_0_bypass\(65),
	combout => \MemDados|ram~582_combout\);

-- Location: FF_X82_Y33_N15
\memwb|memdatatemp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~582_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(28));

-- Location: LCCOMB_X83_Y33_N28
\MuxULAMem|C[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[28]~28_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(28)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|muxRtRdtemp\(0),
	datac => \memwb|ulaouttemp\(28),
	datad => \memwb|memdatatemp\(28),
	combout => \MuxULAMem|C[28]~28_combout\);

-- Location: LCCOMB_X86_Y31_N20
\BancoReg|ram[0][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][28]~feeder_combout\ = \MuxULAMem|C[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[28]~28_combout\,
	combout => \BancoReg|ram[0][28]~feeder_combout\);

-- Location: FF_X86_Y31_N21
\BancoReg|ram[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][28]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][28]~q\);

-- Location: LCCOMB_X83_Y33_N18
\BancoReg|ram[5][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][28]~feeder_combout\ = \MuxULAMem|C[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[28]~28_combout\,
	combout => \BancoReg|ram[5][28]~feeder_combout\);

-- Location: FF_X83_Y33_N19
\BancoReg|ram[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][28]~feeder_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][28]~q\);

-- Location: LCCOMB_X86_Y31_N30
\BancoReg|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux35~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][28]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][28]~q\,
	datab => \ifid|insttemp\(23),
	datac => \BancoReg|ram[5][28]~q\,
	combout => \BancoReg|Mux35~0_combout\);

-- Location: FF_X82_Y31_N15
\idex|readData2temp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux35~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(28));

-- Location: FF_X83_Y31_N3
\exmem|readData2temp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(28));

-- Location: LCCOMB_X82_Y33_N16
\MemDados|ram_rtl_0_bypass[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[63]~feeder_combout\ = \exmem|readData2temp\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(27),
	combout => \MemDados|ram_rtl_0_bypass[63]~feeder_combout\);

-- Location: FF_X82_Y33_N17
\MemDados|ram_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(63));

-- Location: LCCOMB_X82_Y33_N8
\MemDados|ram~581\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~581_combout\ = (\MemDados|ram_rtl_0_bypass\(64) & (\MemDados|ram_rtl_0|auto_generated|ram_block1a27\)) # (!\MemDados|ram_rtl_0_bypass\(64) & ((\MemDados|ram_rtl_0_bypass\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(64),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a27\,
	datad => \MemDados|ram_rtl_0_bypass\(63),
	combout => \MemDados|ram~581_combout\);

-- Location: FF_X82_Y33_N9
\memwb|memdatatemp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~581_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(27));

-- Location: LCCOMB_X83_Y33_N22
\MuxULAMem|C[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[27]~27_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(27)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|muxRtRdtemp\(0),
	datac => \memwb|ulaouttemp\(27),
	datad => \memwb|memdatatemp\(27),
	combout => \MuxULAMem|C[27]~27_combout\);

-- Location: FF_X83_Y29_N25
\BancoReg|ram[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[27]~27_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][27]~q\);

-- Location: FF_X83_Y33_N25
\BancoReg|ram[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[27]~27_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][27]~q\);

-- Location: LCCOMB_X83_Y33_N24
\BancoReg|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux36~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][27]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][27]~q\,
	datac => \BancoReg|ram[5][27]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux36~0_combout\);

-- Location: LCCOMB_X85_Y31_N16
\idex|readData2temp[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|readData2temp[27]~feeder_combout\ = \BancoReg|Mux36~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BancoReg|Mux36~0_combout\,
	combout => \idex|readData2temp[27]~feeder_combout\);

-- Location: FF_X85_Y31_N17
\idex|readData2temp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|readData2temp[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(27));

-- Location: LCCOMB_X85_Y31_N24
\exmem|readData2temp[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|readData2temp[27]~feeder_combout\ = \idex|readData2temp\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \idex|readData2temp\(27),
	combout => \exmem|readData2temp[27]~feeder_combout\);

-- Location: FF_X85_Y31_N25
\exmem|readData2temp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|readData2temp[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(27));

-- Location: LCCOMB_X86_Y27_N28
\MemDados|ram~580\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~580_combout\ = (\MemDados|ram_rtl_0_bypass\(62) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a26\))) # (!\MemDados|ram_rtl_0_bypass\(62) & (\MemDados|ram_rtl_0_bypass\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(62),
	datac => \MemDados|ram_rtl_0_bypass\(61),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a26\,
	combout => \MemDados|ram~580_combout\);

-- Location: FF_X86_Y27_N29
\memwb|memdatatemp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~580_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(26));

-- Location: LCCOMB_X79_Y31_N4
\exmem|ulaouttemp[26]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[26]~33_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~53_combout\) # (\ULA|Add0~53_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~53_combout\ & \ULA|Add0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~53_combout\,
	datad => \ULA|Add0~53_combout\,
	combout => \exmem|ulaouttemp[26]~33_combout\);

-- Location: LCCOMB_X79_Y31_N0
\exmem|ulaouttemp[26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[26]~22_combout\ = (\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[22]~29_combout\ & \ULA|tempAdd[26]~52_combout\)))) # (!\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[26]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exmem|ulaouttemp[26]~33_combout\,
	datab => \exmem|ulaouttemp[22]~29_combout\,
	datac => \ULA|tempAdd[26]~52_combout\,
	datad => \UCULA|Mux2~0_combout\,
	combout => \exmem|ulaouttemp[26]~22_combout\);

-- Location: FF_X79_Y31_N1
\exmem|ulaouttemp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[26]~22_combout\,
	asdata => \ULA|tempAdd[26]~52_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(26));

-- Location: LCCOMB_X86_Y27_N2
\memwb|ulaouttemp[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[26]~feeder_combout\ = \exmem|ulaouttemp\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(26),
	combout => \memwb|ulaouttemp[26]~feeder_combout\);

-- Location: FF_X86_Y27_N3
\memwb|ulaouttemp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(26));

-- Location: LCCOMB_X86_Y27_N14
\MuxULAMem|C[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[26]~26_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(26))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|memdatatemp\(26),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|ulaouttemp\(26),
	combout => \MuxULAMem|C[26]~26_combout\);

-- Location: FF_X83_Y29_N21
\BancoReg|ram[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[26]~26_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][26]~q\);

-- Location: FF_X86_Y27_N15
\BancoReg|ram[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[26]~26_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][26]~q\);

-- Location: LCCOMB_X83_Y29_N10
\BancoReg|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux37~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][26]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][26]~q\,
	datac => \BancoReg|ram[5][26]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux37~0_combout\);

-- Location: FF_X82_Y31_N9
\idex|readData2temp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux37~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(26));

-- Location: FF_X83_Y29_N23
\exmem|readData2temp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(26));

-- Location: LCCOMB_X86_Y27_N6
\MemDados|ram~579\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~579_combout\ = (\MemDados|ram_rtl_0_bypass\(60) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a25\))) # (!\MemDados|ram_rtl_0_bypass\(60) & (\MemDados|ram_rtl_0_bypass\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(60),
	datac => \MemDados|ram_rtl_0_bypass\(59),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a25\,
	combout => \MemDados|ram~579_combout\);

-- Location: FF_X86_Y27_N7
\memwb|memdatatemp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~579_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(25));

-- Location: LCCOMB_X86_Y27_N20
\MuxULAMem|C[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[25]~25_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(25)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|ulaouttemp\(25),
	datab => \memwb|muxRtRdtemp\(0),
	datad => \memwb|memdatatemp\(25),
	combout => \MuxULAMem|C[25]~25_combout\);

-- Location: FF_X83_Y29_N15
\BancoReg|ram[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[25]~25_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][25]~q\);

-- Location: LCCOMB_X86_Y27_N24
\BancoReg|ram[5][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][25]~feeder_combout\ = \MuxULAMem|C[25]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[25]~25_combout\,
	combout => \BancoReg|ram[5][25]~feeder_combout\);

-- Location: FF_X86_Y27_N25
\BancoReg|ram[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][25]~feeder_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][25]~q\);

-- Location: LCCOMB_X83_Y29_N2
\BancoReg|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux38~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][25]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datac => \BancoReg|ram[0][25]~q\,
	datad => \BancoReg|ram[5][25]~q\,
	combout => \BancoReg|Mux38~0_combout\);

-- Location: FF_X82_Y31_N11
\idex|readData2temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux38~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(25));

-- Location: FF_X83_Y31_N21
\exmem|readData2temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(25));

-- Location: FF_X80_Y31_N9
\MemDados|ram_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|readData2temp\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(57));

-- Location: LCCOMB_X79_Y30_N20
\MemDados|ram~578\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~578_combout\ = (\MemDados|ram_rtl_0_bypass\(58) & (\MemDados|ram_rtl_0|auto_generated|ram_block1a24\)) # (!\MemDados|ram_rtl_0_bypass\(58) & ((\MemDados|ram_rtl_0_bypass\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(58),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a24\,
	datad => \MemDados|ram_rtl_0_bypass\(57),
	combout => \MemDados|ram~578_combout\);

-- Location: FF_X79_Y30_N21
\memwb|memdatatemp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~578_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(24));

-- Location: LCCOMB_X82_Y31_N16
\exmem|ulaouttemp[24]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[24]~31_combout\ = (\ULA|Add0~49_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add1~49_combout\))) # (!\ULA|Add0~49_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add1~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~49_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add1~49_combout\,
	combout => \exmem|ulaouttemp[24]~31_combout\);

-- Location: LCCOMB_X79_Y31_N26
\exmem|ulaouttemp[24]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[24]~20_combout\ = (\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[22]~29_combout\ & (\ULA|tempAdd[24]~48_combout\))) # (!\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[24]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exmem|ulaouttemp[22]~29_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datac => \ULA|tempAdd[24]~48_combout\,
	datad => \exmem|ulaouttemp[24]~31_combout\,
	combout => \exmem|ulaouttemp[24]~20_combout\);

-- Location: FF_X79_Y31_N27
\exmem|ulaouttemp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[24]~20_combout\,
	asdata => \ULA|tempAdd[24]~48_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(24));

-- Location: LCCOMB_X79_Y30_N16
\memwb|ulaouttemp[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[24]~feeder_combout\ = \exmem|ulaouttemp\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(24),
	combout => \memwb|ulaouttemp[24]~feeder_combout\);

-- Location: FF_X79_Y30_N17
\memwb|ulaouttemp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(24));

-- Location: LCCOMB_X79_Y30_N18
\MuxULAMem|C[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[24]~24_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(24))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|memdatatemp\(24),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|ulaouttemp\(24),
	combout => \MuxULAMem|C[24]~24_combout\);

-- Location: FF_X82_Y30_N3
\BancoReg|ram[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[24]~24_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][24]~q\);

-- Location: FF_X82_Y30_N19
\BancoReg|ram[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[24]~24_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][24]~q\);

-- Location: LCCOMB_X82_Y30_N30
\BancoReg|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux39~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][24]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datab => \BancoReg|ram[0][24]~q\,
	datad => \BancoReg|ram[5][24]~q\,
	combout => \BancoReg|Mux39~0_combout\);

-- Location: FF_X82_Y31_N13
\idex|readData2temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux39~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(24));

-- Location: FF_X81_Y31_N23
\exmem|readData2temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(24));

-- Location: LCCOMB_X86_Y27_N0
\MemDados|ram~577\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~577_combout\ = (\MemDados|ram_rtl_0_bypass\(56) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a23\))) # (!\MemDados|ram_rtl_0_bypass\(56) & (\MemDados|ram_rtl_0_bypass\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(56),
	datac => \MemDados|ram_rtl_0_bypass\(55),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a23\,
	combout => \MemDados|ram~577_combout\);

-- Location: FF_X86_Y27_N1
\memwb|memdatatemp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~577_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(23));

-- Location: LCCOMB_X79_Y31_N6
\exmem|ulaouttemp[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[23]~30_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add0~47_combout\) # (\ULA|Add1~47_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~47_combout\ & \ULA|Add1~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \ULA|Add0~47_combout\,
	datad => \ULA|Add1~47_combout\,
	combout => \exmem|ulaouttemp[23]~30_combout\);

-- Location: LCCOMB_X79_Y31_N16
\exmem|ulaouttemp[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[23]~19_combout\ = (\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[22]~29_combout\ & \ULA|tempAdd[23]~46_combout\)))) # (!\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[23]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exmem|ulaouttemp[23]~30_combout\,
	datab => \exmem|ulaouttemp[22]~29_combout\,
	datac => \ULA|tempAdd[23]~46_combout\,
	datad => \UCULA|Mux2~0_combout\,
	combout => \exmem|ulaouttemp[23]~19_combout\);

-- Location: FF_X79_Y31_N17
\exmem|ulaouttemp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[23]~19_combout\,
	asdata => \ULA|tempAdd[23]~46_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(23));

-- Location: LCCOMB_X86_Y27_N18
\memwb|ulaouttemp[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[23]~feeder_combout\ = \exmem|ulaouttemp\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(23),
	combout => \memwb|ulaouttemp[23]~feeder_combout\);

-- Location: FF_X86_Y27_N19
\memwb|ulaouttemp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(23));

-- Location: LCCOMB_X86_Y27_N16
\MuxULAMem|C[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[23]~23_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(23))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|memdatatemp\(23),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|ulaouttemp\(23),
	combout => \MuxULAMem|C[23]~23_combout\);

-- Location: FF_X82_Y30_N5
\BancoReg|ram[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[23]~23_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][23]~q\);

-- Location: FF_X82_Y30_N13
\BancoReg|ram[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[23]~23_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][23]~q\);

-- Location: LCCOMB_X82_Y30_N16
\BancoReg|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux40~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][23]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datab => \BancoReg|ram[0][23]~q\,
	datad => \BancoReg|ram[5][23]~q\,
	combout => \BancoReg|Mux40~0_combout\);

-- Location: FF_X82_Y31_N3
\idex|readData2temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux40~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(23));

-- Location: FF_X83_Y31_N9
\exmem|readData2temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(23));

-- Location: LCCOMB_X76_Y31_N2
\MemDados|ram_rtl_0_bypass[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[53]~feeder_combout\ = \exmem|readData2temp\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(22),
	combout => \MemDados|ram_rtl_0_bypass[53]~feeder_combout\);

-- Location: FF_X76_Y31_N3
\MemDados|ram_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(53));

-- Location: LCCOMB_X75_Y31_N4
\MemDados|ram~576\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~576_combout\ = (\MemDados|ram_rtl_0_bypass\(54) & (\MemDados|ram_rtl_0|auto_generated|ram_block1a22\)) # (!\MemDados|ram_rtl_0_bypass\(54) & ((\MemDados|ram_rtl_0_bypass\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(54),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a22\,
	datad => \MemDados|ram_rtl_0_bypass\(53),
	combout => \MemDados|ram~576_combout\);

-- Location: FF_X75_Y31_N5
\memwb|memdatatemp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~576_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(22));

-- Location: LCCOMB_X75_Y31_N30
\MuxULAMem|C[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[22]~22_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(22)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|ulaouttemp\(22),
	datac => \memwb|memdatatemp\(22),
	datad => \memwb|muxRtRdtemp\(0),
	combout => \MuxULAMem|C[22]~22_combout\);

-- Location: FF_X82_Y30_N23
\BancoReg|ram[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[22]~22_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][22]~q\);

-- Location: FF_X75_Y31_N31
\BancoReg|ram[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[22]~22_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][22]~q\);

-- Location: LCCOMB_X82_Y30_N26
\BancoReg|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux41~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][22]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][22]~q\,
	datab => \BancoReg|ram[5][22]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux41~0_combout\);

-- Location: FF_X82_Y31_N7
\idex|readData2temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux41~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(22));

-- Location: FF_X81_Y31_N19
\exmem|readData2temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(22));

-- Location: LCCOMB_X75_Y31_N18
\MemDados|ram_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X75_Y31_N19
\MemDados|ram_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(52));

-- Location: LCCOMB_X75_Y31_N14
\MemDados|ram~575\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~575_combout\ = (\MemDados|ram_rtl_0_bypass\(52) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a21\))) # (!\MemDados|ram_rtl_0_bypass\(52) & (\MemDados|ram_rtl_0_bypass\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(51),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a21\,
	datad => \MemDados|ram_rtl_0_bypass\(52),
	combout => \MemDados|ram~575_combout\);

-- Location: FF_X75_Y31_N15
\memwb|memdatatemp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~575_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(21));

-- Location: LCCOMB_X80_Y30_N4
\ULA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux10~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add0~43_combout\) # (\ULA|Add1~43_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~43_combout\ & \ULA|Add1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~43_combout\,
	datad => \ULA|Add1~43_combout\,
	combout => \ULA|Mux10~0_combout\);

-- Location: LCCOMB_X80_Y30_N6
\ULA|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux10~1_combout\ = (!\idex|signExtendtemp\(3) & (!\idex|signExtendtemp\(0) & \ULA|tempAdd[21]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datac => \idex|signExtendtemp\(0),
	datad => \ULA|tempAdd[21]~42_combout\,
	combout => \ULA|Mux10~1_combout\);

-- Location: LCCOMB_X80_Y30_N20
\exmem|ulaouttemp[21]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[21]~17_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux10~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \ULA|Mux10~0_combout\,
	datad => \ULA|Mux10~1_combout\,
	combout => \exmem|ulaouttemp[21]~17_combout\);

-- Location: FF_X80_Y30_N21
\exmem|ulaouttemp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[21]~17_combout\,
	asdata => \ULA|tempAdd[21]~42_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(21));

-- Location: LCCOMB_X75_Y31_N20
\memwb|ulaouttemp[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[21]~feeder_combout\ = \exmem|ulaouttemp\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(21),
	combout => \memwb|ulaouttemp[21]~feeder_combout\);

-- Location: FF_X75_Y31_N21
\memwb|ulaouttemp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(21));

-- Location: LCCOMB_X75_Y31_N0
\MuxULAMem|C[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[21]~21_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(21))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|muxRtRdtemp\(0),
	datac => \memwb|memdatatemp\(21),
	datad => \memwb|ulaouttemp\(21),
	combout => \MuxULAMem|C[21]~21_combout\);

-- Location: FF_X82_Y31_N31
\BancoReg|ram[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[21]~21_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][21]~q\);

-- Location: FF_X75_Y31_N1
\BancoReg|ram[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[21]~21_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][21]~q\);

-- Location: LCCOMB_X82_Y30_N4
\BancoReg|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux42~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][21]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datab => \BancoReg|ram[0][21]~q\,
	datad => \BancoReg|ram[5][21]~q\,
	combout => \BancoReg|Mux42~0_combout\);

-- Location: FF_X82_Y31_N19
\idex|readData2temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux42~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(21));

-- Location: LCCOMB_X75_Y31_N6
\exmem|readData2temp[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|readData2temp[21]~feeder_combout\ = \idex|readData2temp\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \idex|readData2temp\(21),
	combout => \exmem|readData2temp[21]~feeder_combout\);

-- Location: FF_X75_Y31_N7
\exmem|readData2temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|readData2temp[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(21));

-- Location: LCCOMB_X75_Y31_N8
\MemDados|ram~574\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~574_combout\ = (\MemDados|ram_rtl_0_bypass\(50) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a20\))) # (!\MemDados|ram_rtl_0_bypass\(50) & (\MemDados|ram_rtl_0_bypass\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(49),
	datac => \MemDados|ram_rtl_0_bypass\(50),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \MemDados|ram~574_combout\);

-- Location: FF_X75_Y31_N9
\memwb|memdatatemp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~574_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(20));

-- Location: LCCOMB_X80_Y33_N6
\ULA|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux11~0_combout\ = (\ULA|Add1~41_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add0~41_combout\))) # (!\ULA|Add1~41_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Add1~41_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add0~41_combout\,
	combout => \ULA|Mux11~0_combout\);

-- Location: LCCOMB_X80_Y33_N24
\ULA|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux11~1_combout\ = (!\idex|signExtendtemp\(3) & (\ULA|tempAdd[20]~40_combout\ & !\idex|signExtendtemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datac => \ULA|tempAdd[20]~40_combout\,
	datad => \idex|signExtendtemp\(0),
	combout => \ULA|Mux11~1_combout\);

-- Location: LCCOMB_X80_Y33_N4
\exmem|ulaouttemp[20]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[20]~16_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux11~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux11~0_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datad => \ULA|Mux11~1_combout\,
	combout => \exmem|ulaouttemp[20]~16_combout\);

-- Location: FF_X80_Y33_N5
\exmem|ulaouttemp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[20]~16_combout\,
	asdata => \ULA|tempAdd[20]~40_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(20));

-- Location: LCCOMB_X75_Y31_N28
\memwb|ulaouttemp[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[20]~feeder_combout\ = \exmem|ulaouttemp\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(20),
	combout => \memwb|ulaouttemp[20]~feeder_combout\);

-- Location: FF_X75_Y31_N29
\memwb|ulaouttemp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(20));

-- Location: LCCOMB_X75_Y31_N2
\MuxULAMem|C[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[20]~20_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(20))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|muxRtRdtemp\(0),
	datac => \memwb|memdatatemp\(20),
	datad => \memwb|ulaouttemp\(20),
	combout => \MuxULAMem|C[20]~20_combout\);

-- Location: LCCOMB_X75_Y31_N26
\BancoReg|ram[5][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][20]~feeder_combout\ = \MuxULAMem|C[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[20]~20_combout\,
	combout => \BancoReg|ram[5][20]~feeder_combout\);

-- Location: FF_X75_Y31_N27
\BancoReg|ram[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][20]~feeder_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][20]~q\);

-- Location: LCCOMB_X82_Y30_N22
\BancoReg|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux43~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][20]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datab => \BancoReg|ram[5][20]~q\,
	datad => \BancoReg|ram[0][20]~q\,
	combout => \BancoReg|Mux43~0_combout\);

-- Location: FF_X82_Y31_N23
\idex|readData2temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux43~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(20));

-- Location: FF_X82_Y31_N21
\exmem|readData2temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(20));

-- Location: LCCOMB_X82_Y33_N26
\MemDados|ram~573\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~573_combout\ = (\MemDados|ram_rtl_0_bypass\(48) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a19\))) # (!\MemDados|ram_rtl_0_bypass\(48) & (\MemDados|ram_rtl_0_bypass\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(47),
	datac => \MemDados|ram_rtl_0_bypass\(48),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a19\,
	combout => \MemDados|ram~573_combout\);

-- Location: FF_X82_Y33_N27
\memwb|memdatatemp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~573_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(19));

-- Location: LCCOMB_X81_Y33_N22
\MuxULAMem|C[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[19]~19_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(19)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|muxRtRdtemp\(0),
	datac => \memwb|ulaouttemp\(19),
	datad => \memwb|memdatatemp\(19),
	combout => \MuxULAMem|C[19]~19_combout\);

-- Location: LCCOMB_X81_Y33_N12
\BancoReg|ram[5][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][19]~feeder_combout\ = \MuxULAMem|C[19]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[19]~19_combout\,
	combout => \BancoReg|ram[5][19]~feeder_combout\);

-- Location: FF_X81_Y33_N13
\BancoReg|ram[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][19]~feeder_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][19]~q\);

-- Location: LCCOMB_X82_Y34_N0
\BancoReg|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux44~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][19]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][19]~q\,
	datab => \BancoReg|ram[0][19]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux44~0_combout\);

-- Location: FF_X82_Y31_N25
\idex|readData2temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux44~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(19));

-- Location: LCCOMB_X81_Y33_N6
\exmem|readData2temp[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|readData2temp[19]~feeder_combout\ = \idex|readData2temp\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \idex|readData2temp\(19),
	combout => \exmem|readData2temp[19]~feeder_combout\);

-- Location: FF_X81_Y33_N7
\exmem|readData2temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|readData2temp[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(19));

-- Location: LCCOMB_X79_Y29_N4
\MemDados|ram~572\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~572_combout\ = (\MemDados|ram_rtl_0_bypass\(46) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a18\))) # (!\MemDados|ram_rtl_0_bypass\(46) & (\MemDados|ram_rtl_0_bypass\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(45),
	datac => \MemDados|ram_rtl_0_bypass\(46),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a18\,
	combout => \MemDados|ram~572_combout\);

-- Location: FF_X79_Y29_N5
\memwb|memdatatemp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~572_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(18));

-- Location: LCCOMB_X79_Y29_N0
\MuxULAMem|C[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[18]~18_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(18)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|ulaouttemp\(18),
	datab => \memwb|memdatatemp\(18),
	datac => \memwb|muxRtRdtemp\(0),
	combout => \MuxULAMem|C[18]~18_combout\);

-- Location: LCCOMB_X82_Y29_N6
\BancoReg|ram[0][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][18]~feeder_combout\ = \MuxULAMem|C[18]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[18]~18_combout\,
	combout => \BancoReg|ram[0][18]~feeder_combout\);

-- Location: FF_X82_Y29_N7
\BancoReg|ram[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][18]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][18]~q\);

-- Location: FF_X79_Y29_N1
\BancoReg|ram[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[18]~18_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][18]~q\);

-- Location: LCCOMB_X82_Y29_N20
\BancoReg|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux45~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][18]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][18]~q\,
	datac => \BancoReg|ram[5][18]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux45~0_combout\);

-- Location: FF_X82_Y31_N17
\idex|readData2temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux45~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(18));

-- Location: FF_X81_Y30_N1
\exmem|readData2temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(18));

-- Location: LCCOMB_X77_Y31_N24
\MemDados|ram~571\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~571_combout\ = (\MemDados|ram_rtl_0_bypass\(44) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a17\))) # (!\MemDados|ram_rtl_0_bypass\(44) & (\MemDados|ram_rtl_0_bypass\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(43),
	datac => \MemDados|ram_rtl_0_bypass\(44),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a17\,
	combout => \MemDados|ram~571_combout\);

-- Location: FF_X77_Y31_N25
\memwb|memdatatemp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~571_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(17));

-- Location: LCCOMB_X84_Y31_N14
\ULA|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux14~0_combout\ = (\ULA|Add1~35_combout\ & ((\ULA|Add0~35_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add1~35_combout\ & (\ULA|Add0~35_combout\ & \UCULA|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Add1~35_combout\,
	datac => \ULA|Add0~35_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux14~0_combout\);

-- Location: LCCOMB_X84_Y31_N20
\ULA|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux14~1_combout\ = (!\idex|signExtendtemp\(0) & (\ULA|tempAdd[17]~34_combout\ & !\idex|signExtendtemp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(0),
	datac => \ULA|tempAdd[17]~34_combout\,
	datad => \idex|signExtendtemp\(3),
	combout => \ULA|Mux14~1_combout\);

-- Location: LCCOMB_X84_Y31_N0
\exmem|ulaouttemp[17]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[17]~13_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux14~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \ULA|Mux14~0_combout\,
	datad => \ULA|Mux14~1_combout\,
	combout => \exmem|ulaouttemp[17]~13_combout\);

-- Location: FF_X84_Y31_N1
\exmem|ulaouttemp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[17]~13_combout\,
	asdata => \ULA|tempAdd[17]~34_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(17));

-- Location: LCCOMB_X84_Y31_N8
\memwb|ulaouttemp[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[17]~feeder_combout\ = \exmem|ulaouttemp\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(17),
	combout => \memwb|ulaouttemp[17]~feeder_combout\);

-- Location: FF_X84_Y31_N9
\memwb|ulaouttemp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(17));

-- Location: LCCOMB_X85_Y31_N14
\MuxULAMem|C[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[17]~17_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(17))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|memdatatemp\(17),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|ulaouttemp\(17),
	combout => \MuxULAMem|C[17]~17_combout\);

-- Location: FF_X85_Y32_N15
\BancoReg|ram[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[17]~17_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][17]~q\);

-- Location: LCCOMB_X85_Y31_N22
\BancoReg|ram[5][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][17]~feeder_combout\ = \MuxULAMem|C[17]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[17]~17_combout\,
	combout => \BancoReg|ram[5][17]~feeder_combout\);

-- Location: FF_X85_Y31_N23
\BancoReg|ram[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][17]~feeder_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][17]~q\);

-- Location: LCCOMB_X84_Y31_N22
\BancoReg|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux46~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][17]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][17]~q\,
	datac => \ifid|insttemp\(23),
	datad => \BancoReg|ram[5][17]~q\,
	combout => \BancoReg|Mux46~0_combout\);

-- Location: FF_X84_Y31_N23
\idex|readData2temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|Mux46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(17));

-- Location: FF_X80_Y31_N13
\exmem|readData2temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(17));

-- Location: LCCOMB_X77_Y31_N12
\MemDados|ram_rtl_0_bypass[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[41]~feeder_combout\ = \exmem|readData2temp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|readData2temp\(16),
	combout => \MemDados|ram_rtl_0_bypass[41]~feeder_combout\);

-- Location: FF_X77_Y31_N13
\MemDados|ram_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(41));

-- Location: LCCOMB_X77_Y31_N18
\MemDados|ram~570\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~570_combout\ = (\MemDados|ram_rtl_0_bypass\(42) & (\MemDados|ram_rtl_0|auto_generated|ram_block1a16\)) # (!\MemDados|ram_rtl_0_bypass\(42) & ((\MemDados|ram_rtl_0_bypass\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(42),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a16\,
	datad => \MemDados|ram_rtl_0_bypass\(41),
	combout => \MemDados|ram~570_combout\);

-- Location: FF_X77_Y31_N19
\memwb|memdatatemp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~570_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(16));

-- Location: LCCOMB_X77_Y31_N20
\MuxULAMem|C[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[16]~16_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(16)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|ulaouttemp\(16),
	datab => \memwb|memdatatemp\(16),
	datac => \memwb|muxRtRdtemp\(0),
	combout => \MuxULAMem|C[16]~16_combout\);

-- Location: FF_X82_Y29_N5
\BancoReg|ram[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[16]~16_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][16]~q\);

-- Location: FF_X77_Y31_N21
\BancoReg|ram[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[16]~16_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][16]~q\);

-- Location: LCCOMB_X83_Y29_N22
\BancoReg|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux47~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][16]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datab => \BancoReg|ram[0][16]~q\,
	datad => \BancoReg|ram[5][16]~q\,
	combout => \BancoReg|Mux47~0_combout\);

-- Location: FF_X82_Y31_N1
\idex|readData2temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux47~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(16));

-- Location: FF_X80_Y31_N21
\exmem|readData2temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(16));

-- Location: LCCOMB_X84_Y30_N18
\MemDados|ram~569\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~569_combout\ = (\MemDados|ram_rtl_0_bypass\(40) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a15\))) # (!\MemDados|ram_rtl_0_bypass\(40) & (\MemDados|ram_rtl_0_bypass\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(40),
	datac => \MemDados|ram_rtl_0_bypass\(39),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \MemDados|ram~569_combout\);

-- Location: FF_X84_Y30_N19
\memwb|memdatatemp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~569_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(15));

-- Location: LCCOMB_X79_Y32_N2
\ULA|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux16~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add0~31_combout\) # (\ULA|Add1~31_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~31_combout\ & \ULA|Add1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~31_combout\,
	datad => \ULA|Add1~31_combout\,
	combout => \ULA|Mux16~0_combout\);

-- Location: LCCOMB_X79_Y32_N16
\ULA|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux16~1_combout\ = (!\idex|signExtendtemp\(3) & (\ULA|tempAdd[15]~30_combout\ & !\idex|signExtendtemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datac => \ULA|tempAdd[15]~30_combout\,
	datad => \idex|signExtendtemp\(0),
	combout => \ULA|Mux16~1_combout\);

-- Location: LCCOMB_X79_Y32_N12
\exmem|ulaouttemp[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[15]~11_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux16~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \ULA|Mux16~0_combout\,
	datad => \ULA|Mux16~1_combout\,
	combout => \exmem|ulaouttemp[15]~11_combout\);

-- Location: FF_X79_Y32_N13
\exmem|ulaouttemp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[15]~11_combout\,
	asdata => \ULA|tempAdd[15]~30_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(15));

-- Location: LCCOMB_X84_Y30_N28
\memwb|ulaouttemp[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[15]~feeder_combout\ = \exmem|ulaouttemp\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(15),
	combout => \memwb|ulaouttemp[15]~feeder_combout\);

-- Location: FF_X84_Y30_N29
\memwb|ulaouttemp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(15));

-- Location: LCCOMB_X84_Y30_N2
\MuxULAMem|C[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[15]~15_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(15))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|memdatatemp\(15),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|ulaouttemp\(15),
	combout => \MuxULAMem|C[15]~15_combout\);

-- Location: FF_X85_Y32_N25
\BancoReg|ram[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[15]~15_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][15]~q\);

-- Location: LCCOMB_X82_Y32_N10
\BancoReg|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux48~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][15]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datab => \BancoReg|ram[5][15]~q\,
	datad => \BancoReg|ram[0][15]~q\,
	combout => \BancoReg|Mux48~0_combout\);

-- Location: FF_X82_Y32_N5
\idex|readData2temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux48~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(15));

-- Location: FF_X81_Y31_N3
\exmem|readData2temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(15));

-- Location: LCCOMB_X82_Y33_N12
\MemDados|ram~568\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~568_combout\ = (\MemDados|ram_rtl_0_bypass\(38) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a14\))) # (!\MemDados|ram_rtl_0_bypass\(38) & (\MemDados|ram_rtl_0_bypass\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(38),
	datac => \MemDados|ram_rtl_0_bypass\(37),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \MemDados|ram~568_combout\);

-- Location: FF_X82_Y33_N13
\memwb|memdatatemp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~568_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(14));

-- Location: LCCOMB_X85_Y32_N10
\MuxULAMem|C[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[14]~14_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(14)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|ulaouttemp\(14),
	datab => \memwb|muxRtRdtemp\(0),
	datad => \memwb|memdatatemp\(14),
	combout => \MuxULAMem|C[14]~14_combout\);

-- Location: FF_X85_Y32_N5
\BancoReg|ram[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[14]~14_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][14]~q\);

-- Location: LCCOMB_X84_Y32_N30
\BancoReg|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux49~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][14]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][14]~q\,
	datab => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][14]~q\,
	combout => \BancoReg|Mux49~0_combout\);

-- Location: LCCOMB_X84_Y32_N12
\idex|readData2temp[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|readData2temp[14]~feeder_combout\ = \BancoReg|Mux49~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BancoReg|Mux49~0_combout\,
	combout => \idex|readData2temp[14]~feeder_combout\);

-- Location: FF_X84_Y32_N13
\idex|readData2temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|readData2temp[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(14));

-- Location: FF_X83_Y31_N11
\exmem|readData2temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(14));

-- Location: LCCOMB_X79_Y29_N18
\MemDados|ram_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X79_Y29_N19
\MemDados|ram_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(36));

-- Location: LCCOMB_X79_Y29_N10
\MemDados|ram~567\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~567_combout\ = (\MemDados|ram_rtl_0_bypass\(36) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a13\))) # (!\MemDados|ram_rtl_0_bypass\(36) & (\MemDados|ram_rtl_0_bypass\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(35),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a13\,
	datad => \MemDados|ram_rtl_0_bypass\(36),
	combout => \MemDados|ram~567_combout\);

-- Location: FF_X79_Y29_N11
\memwb|memdatatemp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~567_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(13));

-- Location: LCCOMB_X79_Y32_N18
\ULA|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux18~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~27_combout\) # (\ULA|Add0~27_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~27_combout\ & \ULA|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~27_combout\,
	datad => \ULA|Add0~27_combout\,
	combout => \ULA|Mux18~0_combout\);

-- Location: LCCOMB_X79_Y32_N28
\ULA|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux18~1_combout\ = (!\idex|signExtendtemp\(0) & (!\idex|signExtendtemp\(3) & \ULA|tempAdd[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|signExtendtemp\(0),
	datac => \idex|signExtendtemp\(3),
	datad => \ULA|tempAdd[13]~26_combout\,
	combout => \ULA|Mux18~1_combout\);

-- Location: LCCOMB_X79_Y32_N8
\exmem|ulaouttemp[13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[13]~9_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux18~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \ULA|Mux18~0_combout\,
	datad => \ULA|Mux18~1_combout\,
	combout => \exmem|ulaouttemp[13]~9_combout\);

-- Location: FF_X79_Y32_N9
\exmem|ulaouttemp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[13]~9_combout\,
	asdata => \ULA|tempAdd[13]~26_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(13));

-- Location: LCCOMB_X79_Y29_N2
\memwb|ulaouttemp[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[13]~feeder_combout\ = \exmem|ulaouttemp\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(13),
	combout => \memwb|ulaouttemp[13]~feeder_combout\);

-- Location: FF_X79_Y29_N3
\memwb|ulaouttemp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(13));

-- Location: LCCOMB_X79_Y29_N24
\MuxULAMem|C[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[13]~13_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(13))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|memdatatemp\(13),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|ulaouttemp\(13),
	combout => \MuxULAMem|C[13]~13_combout\);

-- Location: LCCOMB_X82_Y29_N22
\BancoReg|ram[0][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][13]~feeder_combout\ = \MuxULAMem|C[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[13]~13_combout\,
	combout => \BancoReg|ram[0][13]~feeder_combout\);

-- Location: FF_X82_Y29_N23
\BancoReg|ram[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][13]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][13]~q\);

-- Location: LCCOMB_X79_Y29_N26
\BancoReg|ram[5][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][13]~feeder_combout\ = \MuxULAMem|C[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[13]~13_combout\,
	combout => \BancoReg|ram[5][13]~feeder_combout\);

-- Location: FF_X79_Y29_N27
\BancoReg|ram[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][13]~feeder_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][13]~q\);

-- Location: LCCOMB_X82_Y29_N4
\BancoReg|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux50~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][13]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][13]~q\,
	datab => \BancoReg|ram[5][13]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux50~0_combout\);

-- Location: FF_X82_Y32_N23
\idex|readData2temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux50~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(13));

-- Location: FF_X82_Y32_N15
\exmem|readData2temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(13));

-- Location: LCCOMB_X79_Y29_N16
\MemDados|ram_rtl_0_bypass[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[33]~feeder_combout\ = \exmem|readData2temp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|readData2temp\(12),
	combout => \MemDados|ram_rtl_0_bypass[33]~feeder_combout\);

-- Location: FF_X79_Y29_N17
\MemDados|ram_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(33));

-- Location: LCCOMB_X79_Y29_N28
\MemDados|ram~566\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~566_combout\ = (\MemDados|ram_rtl_0_bypass\(34) & (\MemDados|ram_rtl_0|auto_generated|ram_block1a12\)) # (!\MemDados|ram_rtl_0_bypass\(34) & ((\MemDados|ram_rtl_0_bypass\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(34),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a12\,
	datad => \MemDados|ram_rtl_0_bypass\(33),
	combout => \MemDados|ram~566_combout\);

-- Location: FF_X79_Y29_N29
\memwb|memdatatemp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~566_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(12));

-- Location: LCCOMB_X79_Y29_N8
\MuxULAMem|C[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[12]~12_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(12)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|ulaouttemp\(12),
	datab => \memwb|memdatatemp\(12),
	datac => \memwb|muxRtRdtemp\(0),
	combout => \MuxULAMem|C[12]~12_combout\);

-- Location: FF_X85_Y32_N19
\BancoReg|ram[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[12]~12_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][12]~q\);

-- Location: LCCOMB_X85_Y32_N18
\BancoReg|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux51~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][12]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|insttemp\(23),
	datac => \BancoReg|ram[5][12]~q\,
	datad => \BancoReg|ram[0][12]~q\,
	combout => \BancoReg|Mux51~0_combout\);

-- Location: FF_X82_Y32_N3
\idex|readData2temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux51~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(12));

-- Location: FF_X81_Y32_N5
\exmem|readData2temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(12));

-- Location: LCCOMB_X77_Y31_N0
\MemDados|ram~565\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~565_combout\ = (\MemDados|ram_rtl_0_bypass\(32) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a11\))) # (!\MemDados|ram_rtl_0_bypass\(32) & (\MemDados|ram_rtl_0_bypass\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(31),
	datac => \MemDados|ram_rtl_0_bypass\(32),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a11\,
	combout => \MemDados|ram~565_combout\);

-- Location: FF_X77_Y31_N1
\memwb|memdatatemp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~565_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(11));

-- Location: LCCOMB_X77_Y31_N6
\MuxULAMem|C[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[11]~11_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(11)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|muxRtRdtemp\(0),
	datab => \memwb|ulaouttemp\(11),
	datad => \memwb|memdatatemp\(11),
	combout => \MuxULAMem|C[11]~11_combout\);

-- Location: FF_X77_Y31_N7
\BancoReg|ram[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[11]~11_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][11]~q\);

-- Location: LCCOMB_X82_Y29_N26
\BancoReg|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux52~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][11]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datab => \BancoReg|ram[5][11]~q\,
	datad => \BancoReg|ram[0][11]~q\,
	combout => \BancoReg|Mux52~0_combout\);

-- Location: FF_X82_Y32_N27
\idex|readData2temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux52~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(11));

-- Location: LCCOMB_X77_Y32_N20
\exmem|readData2temp[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|readData2temp[11]~feeder_combout\ = \idex|readData2temp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \idex|readData2temp\(11),
	combout => \exmem|readData2temp[11]~feeder_combout\);

-- Location: FF_X77_Y32_N21
\exmem|readData2temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|readData2temp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(11));

-- Location: LCCOMB_X82_Y33_N28
\MemDados|ram_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[29]~feeder_combout\ = \exmem|readData2temp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(10),
	combout => \MemDados|ram_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X82_Y33_N29
\MemDados|ram_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(29));

-- Location: LCCOMB_X82_Y33_N18
\MemDados|ram~564\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~564_combout\ = (\MemDados|ram_rtl_0_bypass\(30) & (\MemDados|ram_rtl_0|auto_generated|ram_block1a10\)) # (!\MemDados|ram_rtl_0_bypass\(30) & ((\MemDados|ram_rtl_0_bypass\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(30),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a10\,
	datad => \MemDados|ram_rtl_0_bypass\(29),
	combout => \MemDados|ram~564_combout\);

-- Location: FF_X82_Y33_N19
\memwb|memdatatemp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~564_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(10));

-- Location: LCCOMB_X86_Y34_N22
\MuxULAMem|C[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[10]~10_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(10)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|ulaouttemp\(10),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|memdatatemp\(10),
	combout => \MuxULAMem|C[10]~10_combout\);

-- Location: FF_X86_Y34_N31
\BancoReg|ram[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[10]~10_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][10]~q\);

-- Location: FF_X86_Y34_N11
\BancoReg|ram[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[10]~10_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][10]~q\);

-- Location: LCCOMB_X86_Y34_N30
\BancoReg|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux53~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][10]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|insttemp\(23),
	datac => \BancoReg|ram[0][10]~q\,
	datad => \BancoReg|ram[5][10]~q\,
	combout => \BancoReg|Mux53~0_combout\);

-- Location: FF_X84_Y32_N27
\idex|readData2temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux53~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(10));

-- Location: FF_X83_Y32_N1
\exmem|readData2temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(10));

-- Location: LCCOMB_X84_Y30_N24
\MemDados|ram~563\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~563_combout\ = (\MemDados|ram_rtl_0_bypass\(28) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a9\))) # (!\MemDados|ram_rtl_0_bypass\(28) & (\MemDados|ram_rtl_0_bypass\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(28),
	datac => \MemDados|ram_rtl_0_bypass\(27),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \MemDados|ram~563_combout\);

-- Location: FF_X84_Y30_N25
\memwb|memdatatemp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~563_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(9));

-- Location: LCCOMB_X80_Y30_N28
\ULA|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux22~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~19_combout\) # (\ULA|Add0~19_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~19_combout\ & \ULA|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~19_combout\,
	datad => \ULA|Add0~19_combout\,
	combout => \ULA|Mux22~0_combout\);

-- Location: LCCOMB_X80_Y30_N18
\ULA|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux22~1_combout\ = (!\idex|signExtendtemp\(3) & (!\idex|signExtendtemp\(0) & \ULA|tempAdd[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datac => \idex|signExtendtemp\(0),
	datad => \ULA|tempAdd[9]~18_combout\,
	combout => \ULA|Mux22~1_combout\);

-- Location: LCCOMB_X80_Y30_N26
\exmem|ulaouttemp[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[9]~5_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux22~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \ULA|Mux22~0_combout\,
	datad => \ULA|Mux22~1_combout\,
	combout => \exmem|ulaouttemp[9]~5_combout\);

-- Location: FF_X80_Y30_N27
\exmem|ulaouttemp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[9]~5_combout\,
	asdata => \ULA|tempAdd[9]~18_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(9));

-- Location: LCCOMB_X84_Y30_N14
\memwb|ulaouttemp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[9]~feeder_combout\ = \exmem|ulaouttemp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(9),
	combout => \memwb|ulaouttemp[9]~feeder_combout\);

-- Location: FF_X84_Y30_N15
\memwb|ulaouttemp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(9));

-- Location: LCCOMB_X85_Y34_N22
\MuxULAMem|C[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[9]~9_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(9))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|muxRtRdtemp\(0),
	datac => \memwb|memdatatemp\(9),
	datad => \memwb|ulaouttemp\(9),
	combout => \MuxULAMem|C[9]~9_combout\);

-- Location: FF_X85_Y34_N25
\BancoReg|ram[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[9]~9_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][9]~q\);

-- Location: LCCOMB_X86_Y34_N16
\BancoReg|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux54~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][9]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[5][9]~q\,
	datac => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][9]~q\,
	combout => \BancoReg|Mux54~0_combout\);

-- Location: FF_X84_Y32_N31
\idex|readData2temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux54~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(9));

-- Location: FF_X84_Y32_N19
\exmem|readData2temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(9));

-- Location: LCCOMB_X82_Y33_N24
\MemDados|ram~562\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~562_combout\ = (\MemDados|ram_rtl_0_bypass\(26) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a8\))) # (!\MemDados|ram_rtl_0_bypass\(26) & (\MemDados|ram_rtl_0_bypass\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(26),
	datac => \MemDados|ram_rtl_0_bypass\(25),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \MemDados|ram~562_combout\);

-- Location: FF_X82_Y33_N25
\memwb|memdatatemp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~562_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(8));

-- Location: LCCOMB_X83_Y33_N0
\MuxULAMem|C[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[8]~8_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(8)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|ulaouttemp\(8),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|memdatatemp\(8),
	combout => \MuxULAMem|C[8]~8_combout\);

-- Location: LCCOMB_X86_Y34_N2
\BancoReg|ram[5][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][8]~3_combout\ = !\MuxULAMem|C[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[8]~8_combout\,
	combout => \BancoReg|ram[5][8]~3_combout\);

-- Location: FF_X86_Y34_N3
\BancoReg|ram[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][8]~3_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][8]~q\);

-- Location: LCCOMB_X86_Y34_N26
\BancoReg|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux55~0_combout\ = (\ifid|insttemp\(23) & (!\BancoReg|ram[5][8]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[5][8]~q\,
	datac => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][8]~q\,
	combout => \BancoReg|Mux55~0_combout\);

-- Location: FF_X84_Y32_N21
\idex|readData2temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux55~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(8));

-- Location: FF_X83_Y32_N29
\exmem|readData2temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(8));

-- Location: LCCOMB_X86_Y32_N18
\MemDados|ram~561\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~561_combout\ = (\MemDados|ram_rtl_0_bypass\(24) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a7\))) # (!\MemDados|ram_rtl_0_bypass\(24) & (\MemDados|ram_rtl_0_bypass\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(24),
	datac => \MemDados|ram_rtl_0_bypass\(23),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \MemDados|ram~561_combout\);

-- Location: FF_X86_Y32_N19
\memwb|memdatatemp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~561_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(7));

-- Location: LCCOMB_X80_Y33_N14
\ULA|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux24~0_combout\ = (\ULA|Add0~15_combout\ & ((\ULA|Add1~15_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add0~15_combout\ & (\ULA|Add1~15_combout\ & \UCULA|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~15_combout\,
	datab => \ULA|Add1~15_combout\,
	datac => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux24~0_combout\);

-- Location: LCCOMB_X80_Y33_N16
\ULA|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux24~1_combout\ = (!\idex|signExtendtemp\(0) & (!\idex|signExtendtemp\(3) & \ULA|tempAdd[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|signExtendtemp\(0),
	datac => \idex|signExtendtemp\(3),
	datad => \ULA|tempAdd[7]~14_combout\,
	combout => \ULA|Mux24~1_combout\);

-- Location: LCCOMB_X80_Y33_N30
\exmem|ulaouttemp[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[7]~3_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux24~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux24~0_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datad => \ULA|Mux24~1_combout\,
	combout => \exmem|ulaouttemp[7]~3_combout\);

-- Location: FF_X80_Y33_N31
\exmem|ulaouttemp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[7]~3_combout\,
	asdata => \ULA|tempAdd[7]~14_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(7));

-- Location: LCCOMB_X86_Y32_N0
\memwb|ulaouttemp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[7]~feeder_combout\ = \exmem|ulaouttemp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(7),
	combout => \memwb|ulaouttemp[7]~feeder_combout\);

-- Location: FF_X86_Y32_N1
\memwb|ulaouttemp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(7));

-- Location: LCCOMB_X86_Y32_N2
\MuxULAMem|C[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[7]~7_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(7))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|muxRtRdtemp\(0),
	datab => \memwb|memdatatemp\(7),
	datad => \memwb|ulaouttemp\(7),
	combout => \MuxULAMem|C[7]~7_combout\);

-- Location: LCCOMB_X86_Y32_N20
\BancoReg|ram[5][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][7]~2_combout\ = !\MuxULAMem|C[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[7]~7_combout\,
	combout => \BancoReg|ram[5][7]~2_combout\);

-- Location: FF_X85_Y32_N21
\BancoReg|ram[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|ram[5][7]~2_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][7]~q\);

-- Location: LCCOMB_X84_Y32_N26
\BancoReg|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux56~0_combout\ = (\ifid|insttemp\(23) & (!\BancoReg|ram[5][7]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][7]~q\,
	datab => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][7]~q\,
	combout => \BancoReg|Mux56~0_combout\);

-- Location: FF_X84_Y32_N23
\idex|readData2temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux56~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(7));

-- Location: FF_X84_Y32_N5
\exmem|readData2temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(7));

-- Location: LCCOMB_X86_Y32_N28
\MemDados|ram~560\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~560_combout\ = (\MemDados|ram_rtl_0_bypass\(22) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a6\))) # (!\MemDados|ram_rtl_0_bypass\(22) & (\MemDados|ram_rtl_0_bypass\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(21),
	datab => \MemDados|ram_rtl_0_bypass\(22),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \MemDados|ram~560_combout\);

-- Location: FF_X86_Y32_N29
\memwb|memdatatemp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~560_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(6));

-- Location: LCCOMB_X80_Y33_N26
\ULA|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux25~0_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~13_combout\) # (\ULA|Add0~13_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~13_combout\ & \ULA|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~13_combout\,
	datad => \ULA|Add0~13_combout\,
	combout => \ULA|Mux25~0_combout\);

-- Location: LCCOMB_X80_Y33_N0
\ULA|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux25~1_combout\ = (!\idex|signExtendtemp\(3) & (\ULA|tempAdd[6]~12_combout\ & !\idex|signExtendtemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(3),
	datac => \ULA|tempAdd[6]~12_combout\,
	datad => \idex|signExtendtemp\(0),
	combout => \ULA|Mux25~1_combout\);

-- Location: LCCOMB_X80_Y33_N20
\exmem|ulaouttemp[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[6]~2_combout\ = (\UCULA|Mux2~0_combout\ & ((\ULA|Mux25~1_combout\))) # (!\UCULA|Mux2~0_combout\ & (\ULA|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux25~0_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datad => \ULA|Mux25~1_combout\,
	combout => \exmem|ulaouttemp[6]~2_combout\);

-- Location: FF_X80_Y33_N21
\exmem|ulaouttemp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[6]~2_combout\,
	asdata => \ULA|tempAdd[6]~12_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(6));

-- Location: LCCOMB_X86_Y32_N16
\memwb|ulaouttemp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[6]~feeder_combout\ = \exmem|ulaouttemp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(6),
	combout => \memwb|ulaouttemp[6]~feeder_combout\);

-- Location: FF_X86_Y32_N17
\memwb|ulaouttemp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(6));

-- Location: LCCOMB_X86_Y32_N10
\MuxULAMem|C[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[6]~6_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(6))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|muxRtRdtemp\(0),
	datab => \memwb|memdatatemp\(6),
	datad => \memwb|ulaouttemp\(6),
	combout => \MuxULAMem|C[6]~6_combout\);

-- Location: LCCOMB_X86_Y32_N24
\BancoReg|ram[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][6]~feeder_combout\ = \MuxULAMem|C[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[6]~6_combout\,
	combout => \BancoReg|ram[0][6]~feeder_combout\);

-- Location: FF_X86_Y32_N25
\BancoReg|ram[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][6]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][6]~q\);

-- Location: FF_X82_Y34_N17
\BancoReg|ram[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[6]~6_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][6]~q\);

-- Location: LCCOMB_X82_Y34_N16
\BancoReg|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux57~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][6]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][6]~q\,
	datac => \BancoReg|ram[5][6]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux57~0_combout\);

-- Location: FF_X82_Y32_N29
\idex|readData2temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux57~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(6));

-- Location: FF_X83_Y32_N9
\exmem|readData2temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(6));

-- Location: LCCOMB_X77_Y31_N28
\MemDados|ram_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[19]~feeder_combout\ = \exmem|readData2temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(5),
	combout => \MemDados|ram_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X77_Y31_N29
\MemDados|ram_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(19));

-- Location: LCCOMB_X77_Y31_N2
\MemDados|ram~559\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~559_combout\ = (\MemDados|ram_rtl_0_bypass\(20) & (\MemDados|ram_rtl_0|auto_generated|ram_block1a5\)) # (!\MemDados|ram_rtl_0_bypass\(20) & ((\MemDados|ram_rtl_0_bypass\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(20),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \MemDados|ram_rtl_0_bypass\(19),
	combout => \MemDados|ram~559_combout\);

-- Location: FF_X77_Y31_N3
\memwb|memdatatemp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~559_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(5));

-- Location: LCCOMB_X76_Y31_N20
\MuxULAMem|C[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[5]~5_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(5)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|muxRtRdtemp\(0),
	datac => \memwb|ulaouttemp\(5),
	datad => \memwb|memdatatemp\(5),
	combout => \MuxULAMem|C[5]~5_combout\);

-- Location: FF_X82_Y34_N15
\BancoReg|ram[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[5]~5_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][5]~q\);

-- Location: FF_X82_Y34_N11
\BancoReg|ram[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[5]~5_combout\,
	sload => VCC,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][5]~q\);

-- Location: LCCOMB_X82_Y34_N10
\BancoReg|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux58~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][5]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][5]~q\,
	datac => \BancoReg|ram[5][5]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux58~0_combout\);

-- Location: LCCOMB_X84_Y32_N28
\idex|readData2temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|readData2temp[5]~feeder_combout\ = \BancoReg|Mux58~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BancoReg|Mux58~0_combout\,
	combout => \idex|readData2temp[5]~feeder_combout\);

-- Location: FF_X84_Y32_N29
\idex|readData2temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|readData2temp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(5));

-- Location: FF_X83_Y31_N27
\exmem|readData2temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \idex|readData2temp\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(5));

-- Location: LCCOMB_X77_Y31_N4
\MemDados|ram~558\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~558_combout\ = (\MemDados|ram_rtl_0_bypass\(18) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a4\))) # (!\MemDados|ram_rtl_0_bypass\(18) & (\MemDados|ram_rtl_0_bypass\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(18),
	datab => \MemDados|ram_rtl_0_bypass\(17),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \MemDados|ram~558_combout\);

-- Location: FF_X77_Y31_N5
\memwb|memdatatemp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~558_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(4));

-- Location: LCCOMB_X76_Y31_N4
\MuxULAMem|C[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[4]~4_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(4)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|ulaouttemp\(4),
	datab => \memwb|muxRtRdtemp\(0),
	datad => \memwb|memdatatemp\(4),
	combout => \MuxULAMem|C[4]~4_combout\);

-- Location: FF_X82_Y34_N1
\BancoReg|ram[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[4]~4_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][4]~q\);

-- Location: LCCOMB_X82_Y34_N26
\BancoReg|ram[5][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][4]~1_combout\ = !\MuxULAMem|C[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[4]~4_combout\,
	combout => \BancoReg|ram[5][4]~1_combout\);

-- Location: FF_X82_Y34_N27
\BancoReg|ram[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][4]~1_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][4]~q\);

-- Location: LCCOMB_X82_Y34_N30
\BancoReg|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux59~0_combout\ = (\ifid|insttemp\(23) & ((!\BancoReg|ram[5][4]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][4]~q\,
	datac => \BancoReg|ram[5][4]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux59~0_combout\);

-- Location: FF_X82_Y32_N19
\idex|readData2temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux59~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(4));

-- Location: LCCOMB_X77_Y32_N30
\exmem|readData2temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|readData2temp[4]~feeder_combout\ = \idex|readData2temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \idex|readData2temp\(4),
	combout => \exmem|readData2temp[4]~feeder_combout\);

-- Location: FF_X77_Y32_N31
\exmem|readData2temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|readData2temp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|readData2temp\(4));

-- Location: LCCOMB_X79_Y30_N26
\MemDados|ram~557\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~557_combout\ = (\MemDados|ram_rtl_0_bypass\(16) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a3\))) # (!\MemDados|ram_rtl_0_bypass\(16) & (\MemDados|ram_rtl_0_bypass\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(15),
	datac => \MemDados|ram_rtl_0_bypass\(16),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \MemDados|ram~557_combout\);

-- Location: FF_X79_Y30_N27
\memwb|memdatatemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~557_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(3));

-- Location: LCCOMB_X79_Y30_N0
\memwb|ulaouttemp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[3]~feeder_combout\ = \exmem|ulaouttemp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(3),
	combout => \memwb|ulaouttemp[3]~feeder_combout\);

-- Location: FF_X79_Y30_N1
\memwb|ulaouttemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(3));

-- Location: LCCOMB_X79_Y30_N22
\MuxULAMem|C[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[3]~3_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(3))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|memdatatemp\(3),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|ulaouttemp\(3),
	combout => \MuxULAMem|C[3]~3_combout\);

-- Location: FF_X86_Y34_N13
\BancoReg|ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[3]~3_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][3]~q\);

-- Location: LCCOMB_X86_Y34_N0
\BancoReg|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux28~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][3]~q\,
	combout => \BancoReg|Mux28~0_combout\);

-- Location: FF_X81_Y32_N15
\idex|readData1temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux28~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(3));

-- Location: LCCOMB_X79_Y32_N4
\ULA|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux28~0_combout\ = (!\UCULA|Mux6~0_combout\ & ((\ULA|Add0~7_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add1~7_combout\))) # (!\ULA|Add0~7_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~7_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~7_combout\,
	datad => \UCULA|Mux6~0_combout\,
	combout => \ULA|Mux28~0_combout\);

-- Location: LCCOMB_X79_Y32_N26
\ULA|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux28~1_combout\ = (\ULA|Mux28~0_combout\) # ((\ULA|tempAdd[3]~6_combout\ & (!\UCULA|Mux7~0_combout\ & \UCULA|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[3]~6_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Mux28~0_combout\,
	datad => \UCULA|Mux6~0_combout\,
	combout => \ULA|Mux28~1_combout\);

-- Location: FF_X79_Y32_N27
\exmem|ulaouttemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ULA|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(3));

-- Location: LCCOMB_X76_Y31_N12
\MemDados|ram~556\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~556_combout\ = (\MemDados|ram_rtl_0_bypass\(14) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a2\))) # (!\MemDados|ram_rtl_0_bypass\(14) & (\MemDados|ram_rtl_0_bypass\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(13),
	datab => \MemDados|ram_rtl_0_bypass\(14),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \MemDados|ram~556_combout\);

-- Location: FF_X76_Y31_N13
\memwb|memdatatemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~556_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(2));

-- Location: LCCOMB_X76_Y31_N18
\memwb|ulaouttemp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[2]~feeder_combout\ = \exmem|ulaouttemp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(2),
	combout => \memwb|ulaouttemp[2]~feeder_combout\);

-- Location: FF_X76_Y31_N19
\memwb|ulaouttemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(2));

-- Location: LCCOMB_X76_Y31_N0
\MuxULAMem|C[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[2]~2_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(2))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|memdatatemp\(2),
	datab => \memwb|ulaouttemp\(2),
	datad => \memwb|muxRtRdtemp\(0),
	combout => \MuxULAMem|C[2]~2_combout\);

-- Location: LCCOMB_X76_Y31_N10
\BancoReg|ram[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][2]~feeder_combout\ = \MuxULAMem|C[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[2]~2_combout\,
	combout => \BancoReg|ram[0][2]~feeder_combout\);

-- Location: FF_X76_Y31_N11
\BancoReg|ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][2]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][2]~q\);

-- Location: LCCOMB_X81_Y34_N16
\BancoReg|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux29~0_combout\ = (\ifid|insttemp\(23)) # (\BancoReg|ram[0][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][2]~q\,
	combout => \BancoReg|Mux29~0_combout\);

-- Location: FF_X81_Y32_N1
\idex|readData1temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux29~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(2));

-- Location: LCCOMB_X79_Y31_N8
\ULA|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux29~0_combout\ = (!\UCULA|Mux6~0_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~5_combout\) # (\ULA|Add1~5_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~5_combout\ & \ULA|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \UCULA|Mux6~0_combout\,
	datac => \ULA|Add0~5_combout\,
	datad => \ULA|Add1~5_combout\,
	combout => \ULA|Mux29~0_combout\);

-- Location: LCCOMB_X79_Y31_N20
\ULA|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux29~1_combout\ = (\ULA|Mux29~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (\UCULA|Mux6~0_combout\ & \ULA|tempAdd[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \UCULA|Mux6~0_combout\,
	datac => \ULA|Mux29~0_combout\,
	datad => \ULA|tempAdd[2]~4_combout\,
	combout => \ULA|Mux29~1_combout\);

-- Location: FF_X79_Y31_N21
\exmem|ulaouttemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ULA|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(2));

-- Location: LCCOMB_X79_Y30_N24
\MemDados|ram~555\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~555_combout\ = (\MemDados|ram_rtl_0_bypass\(12) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a1\))) # (!\MemDados|ram_rtl_0_bypass\(12) & (\MemDados|ram_rtl_0_bypass\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MemDados|ram_rtl_0_bypass\(11),
	datac => \MemDados|ram_rtl_0_bypass\(12),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \MemDados|ram~555_combout\);

-- Location: FF_X79_Y30_N25
\memwb|memdatatemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~555_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(1));

-- Location: LCCOMB_X79_Y30_N12
\memwb|ulaouttemp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[1]~feeder_combout\ = \exmem|ulaouttemp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(1),
	combout => \memwb|ulaouttemp[1]~feeder_combout\);

-- Location: FF_X79_Y30_N13
\memwb|ulaouttemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(1));

-- Location: LCCOMB_X79_Y30_N10
\MuxULAMem|C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[1]~1_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(1))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|memdatatemp\(1),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|ulaouttemp\(1),
	combout => \MuxULAMem|C[1]~1_combout\);

-- Location: LCCOMB_X81_Y34_N18
\BancoReg|ram[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][1]~feeder_combout\ = \MuxULAMem|C[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[1]~1_combout\,
	combout => \BancoReg|ram[0][1]~feeder_combout\);

-- Location: FF_X81_Y34_N19
\BancoReg|ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][1]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][1]~q\);

-- Location: LCCOMB_X79_Y30_N6
\BancoReg|ram[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][1]~feeder_combout\ = \MuxULAMem|C[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[1]~1_combout\,
	combout => \BancoReg|ram[5][1]~feeder_combout\);

-- Location: FF_X79_Y30_N7
\BancoReg|ram[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][1]~feeder_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][1]~q\);

-- Location: LCCOMB_X81_Y34_N6
\BancoReg|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux62~0_combout\ = (\ifid|insttemp\(23) & ((\BancoReg|ram[5][1]~q\))) # (!\ifid|insttemp\(23) & (\BancoReg|ram[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][1]~q\,
	datac => \BancoReg|ram[5][1]~q\,
	datad => \ifid|insttemp\(23),
	combout => \BancoReg|Mux62~0_combout\);

-- Location: FF_X82_Y32_N9
\idex|readData2temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux62~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(1));

-- Location: LCCOMB_X82_Y32_N18
\muxRtImm|C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[1]~1_combout\ = (\idex|readData2temp\(1) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|readData2temp\(1),
	datad => \idex|extemp\(0),
	combout => \muxRtImm|C[1]~1_combout\);

-- Location: LCCOMB_X79_Y32_N30
\ULA|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux30~0_combout\ = (!\UCULA|Mux6~0_combout\ & ((\ULA|Add1~3_combout\ & ((\ULA|Add0~3_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add1~3_combout\ & (\ULA|Add0~3_combout\ & \UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~3_combout\,
	datab => \UCULA|Mux6~0_combout\,
	datac => \ULA|Add0~3_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux30~0_combout\);

-- Location: LCCOMB_X79_Y31_N14
\ULA|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux30~1_combout\ = (\ULA|Mux30~0_combout\) # ((\UCULA|Mux6~0_combout\ & (\ULA|tempAdd[1]~2_combout\ & !\UCULA|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~0_combout\,
	datab => \UCULA|Mux6~0_combout\,
	datac => \ULA|tempAdd[1]~2_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux30~1_combout\);

-- Location: FF_X79_Y31_N15
\exmem|ulaouttemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ULA|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(1));

-- Location: LCCOMB_X86_Y27_N22
\MemDados|ram~583\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~583_combout\ = (\MemDados|ram_rtl_0_bypass\(68) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a29\))) # (!\MemDados|ram_rtl_0_bypass\(68) & (\MemDados|ram_rtl_0_bypass\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(68),
	datab => \MemDados|ram_rtl_0_bypass\(67),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a29\,
	combout => \MemDados|ram~583_combout\);

-- Location: FF_X86_Y27_N23
\memwb|memdatatemp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~583_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(29));

-- Location: LCCOMB_X83_Y31_N26
\ULA|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~59_combout\ = (\ULA|Add1~58\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[29]~29_combout\)))) # (!\ULA|Add1~58\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[29]~29_combout\)) # (GND)))
-- \ULA|Add1~60\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[29]~29_combout\)) # (!\ULA|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[29]~29_combout\,
	datad => VCC,
	cin => \ULA|Add1~58\,
	combout => \ULA|Add1~59_combout\,
	cout => \ULA|Add1~60\);

-- Location: FF_X86_Y31_N19
\BancoReg|ram[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[29]~29_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][29]~q\);

-- Location: LCCOMB_X86_Y31_N22
\BancoReg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux2~0_combout\ = (!\ifid|insttemp\(23) & \BancoReg|ram[0][29]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][29]~q\,
	combout => \BancoReg|Mux2~0_combout\);

-- Location: FF_X86_Y31_N23
\idex|readData1temp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(29));

-- Location: LCCOMB_X81_Y31_N26
\ULA|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~59_combout\ = (\ULA|Add0~58\ & (\UCULA|Mux5~0_combout\ $ ((!\idex|readData1temp\(29))))) # (!\ULA|Add0~58\ & ((\UCULA|Mux5~0_combout\ $ (\idex|readData1temp\(29))) # (GND)))
-- \ULA|Add0~60\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\idex|readData1temp\(29))) # (!\ULA|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \idex|readData1temp\(29),
	datad => VCC,
	cin => \ULA|Add0~58\,
	combout => \ULA|Add0~59_combout\,
	cout => \ULA|Add0~60\);

-- Location: LCCOMB_X80_Y31_N26
\ULA|tempAdd[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[29]~58_combout\ = (\ULA|Add1~59_combout\ & ((\ULA|Add0~59_combout\ & (\ULA|tempAdd[28]~57\ & VCC)) # (!\ULA|Add0~59_combout\ & (!\ULA|tempAdd[28]~57\)))) # (!\ULA|Add1~59_combout\ & ((\ULA|Add0~59_combout\ & (!\ULA|tempAdd[28]~57\)) # 
-- (!\ULA|Add0~59_combout\ & ((\ULA|tempAdd[28]~57\) # (GND)))))
-- \ULA|tempAdd[29]~59\ = CARRY((\ULA|Add1~59_combout\ & (!\ULA|Add0~59_combout\ & !\ULA|tempAdd[28]~57\)) # (!\ULA|Add1~59_combout\ & ((!\ULA|tempAdd[28]~57\) # (!\ULA|Add0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~59_combout\,
	datab => \ULA|Add0~59_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[28]~57\,
	combout => \ULA|tempAdd[29]~58_combout\,
	cout => \ULA|tempAdd[29]~59\);

-- Location: LCCOMB_X84_Y31_N18
\exmem|ulaouttemp[29]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[29]~36_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add1~59_combout\) # (\ULA|Add0~59_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~59_combout\ & \ULA|Add0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~59_combout\,
	datad => \ULA|Add0~59_combout\,
	combout => \exmem|ulaouttemp[29]~36_combout\);

-- Location: LCCOMB_X84_Y31_N12
\exmem|ulaouttemp[29]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[29]~25_combout\ = (\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[22]~29_combout\ & (\ULA|tempAdd[29]~58_combout\))) # (!\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[29]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exmem|ulaouttemp[22]~29_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datac => \ULA|tempAdd[29]~58_combout\,
	datad => \exmem|ulaouttemp[29]~36_combout\,
	combout => \exmem|ulaouttemp[29]~25_combout\);

-- Location: FF_X84_Y31_N13
\exmem|ulaouttemp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[29]~25_combout\,
	asdata => \ULA|tempAdd[29]~58_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(29));

-- Location: LCCOMB_X114_Y27_N20
\memwb|ulaouttemp[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[29]~feeder_combout\ = \exmem|ulaouttemp\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(29),
	combout => \memwb|ulaouttemp[29]~feeder_combout\);

-- Location: FF_X114_Y27_N21
\memwb|ulaouttemp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(29));

-- Location: LCCOMB_X86_Y27_N4
\MuxULAMem|C[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[29]~29_combout\ = (\memwb|muxRtRdtemp\(0) & (\memwb|memdatatemp\(29))) # (!\memwb|muxRtRdtemp\(0) & ((\memwb|ulaouttemp\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|memdatatemp\(29),
	datac => \memwb|muxRtRdtemp\(0),
	datad => \memwb|ulaouttemp\(29),
	combout => \MuxULAMem|C[29]~29_combout\);

-- Location: FF_X86_Y27_N5
\BancoReg|ram[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[29]~29_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][29]~q\);

-- Location: LCCOMB_X86_Y31_N8
\BancoReg|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux34~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][29]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][29]~q\,
	datac => \ifid|insttemp\(23),
	datad => \BancoReg|ram[0][29]~q\,
	combout => \BancoReg|Mux34~0_combout\);

-- Location: FF_X82_Y31_N29
\idex|readData2temp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \BancoReg|Mux34~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(29));

-- Location: LCCOMB_X82_Y31_N6
\muxRtImm|C[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[29]~29_combout\ = (!\idex|extemp\(0) & \idex|readData2temp\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|extemp\(0),
	datad => \idex|readData2temp\(29),
	combout => \muxRtImm|C[29]~29_combout\);

-- Location: LCCOMB_X83_Y31_N28
\ULA|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~61_combout\ = (\ULA|Add1~60\ & ((\muxRtImm|C[30]~30_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~60\ & (\muxRtImm|C[30]~30_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~62\ = CARRY((!\ULA|Add1~60\ & (\muxRtImm|C[30]~30_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[30]~30_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~60\,
	combout => \ULA|Add1~61_combout\,
	cout => \ULA|Add1~62\);

-- Location: LCCOMB_X81_Y31_N28
\ULA|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_combout\ = (\ULA|Add0~60\ & ((\idex|readData1temp\(30) $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add0~60\ & (\idex|readData1temp\(30) $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add0~62\ = CARRY((!\ULA|Add0~60\ & (\idex|readData1temp\(30) $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|readData1temp\(30),
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~60\,
	combout => \ULA|Add0~61_combout\,
	cout => \ULA|Add0~62\);

-- Location: LCCOMB_X80_Y31_N28
\ULA|tempAdd[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[30]~60_combout\ = ((\ULA|Add1~61_combout\ $ (\ULA|Add0~61_combout\ $ (!\ULA|tempAdd[29]~59\)))) # (GND)
-- \ULA|tempAdd[30]~61\ = CARRY((\ULA|Add1~61_combout\ & ((\ULA|Add0~61_combout\) # (!\ULA|tempAdd[29]~59\))) # (!\ULA|Add1~61_combout\ & (\ULA|Add0~61_combout\ & !\ULA|tempAdd[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~61_combout\,
	datab => \ULA|Add0~61_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[29]~59\,
	combout => \ULA|tempAdd[30]~60_combout\,
	cout => \ULA|tempAdd[30]~61\);

-- Location: LCCOMB_X85_Y31_N10
\exmem|ulaouttemp[30]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[30]~37_combout\ = (\UCULA|Mux7~0_combout\ & ((\ULA|Add0~61_combout\) # (\ULA|Add1~61_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~61_combout\ & \ULA|Add1~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~61_combout\,
	datad => \ULA|Add1~61_combout\,
	combout => \exmem|ulaouttemp[30]~37_combout\);

-- Location: LCCOMB_X85_Y31_N20
\exmem|ulaouttemp[30]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[30]~26_combout\ = (\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[22]~29_combout\ & (\ULA|tempAdd[30]~60_combout\))) # (!\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[30]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exmem|ulaouttemp[22]~29_combout\,
	datab => \UCULA|Mux2~0_combout\,
	datac => \ULA|tempAdd[30]~60_combout\,
	datad => \exmem|ulaouttemp[30]~37_combout\,
	combout => \exmem|ulaouttemp[30]~26_combout\);

-- Location: FF_X85_Y31_N21
\exmem|ulaouttemp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[30]~26_combout\,
	asdata => \ULA|tempAdd[30]~60_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(30));

-- Location: LCCOMB_X85_Y31_N8
\memwb|ulaouttemp[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[30]~feeder_combout\ = \exmem|ulaouttemp\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|ulaouttemp\(30),
	combout => \memwb|ulaouttemp[30]~feeder_combout\);

-- Location: FF_X85_Y31_N9
\memwb|ulaouttemp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(30));

-- Location: LCCOMB_X77_Y31_N10
\MemDados|ram_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X77_Y31_N11
\MemDados|ram_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(70));

-- Location: LCCOMB_X77_Y31_N8
\MemDados|ram_rtl_0_bypass[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[69]~feeder_combout\ = \exmem|readData2temp\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|readData2temp\(30),
	combout => \MemDados|ram_rtl_0_bypass[69]~feeder_combout\);

-- Location: FF_X77_Y31_N9
\MemDados|ram_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(69));

-- Location: LCCOMB_X77_Y31_N14
\MemDados|ram~584\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~584_combout\ = (\MemDados|ram_rtl_0_bypass\(70) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a30\))) # (!\MemDados|ram_rtl_0_bypass\(70) & (\MemDados|ram_rtl_0_bypass\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(70),
	datac => \MemDados|ram_rtl_0_bypass\(69),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a30\,
	combout => \MemDados|ram~584_combout\);

-- Location: FF_X77_Y31_N15
\memwb|memdatatemp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~584_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(30));

-- Location: LCCOMB_X85_Y31_N26
\MuxULAMem|C[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[30]~30_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(30)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|ulaouttemp\(30),
	datac => \memwb|memdatatemp\(30),
	datad => \memwb|muxRtRdtemp\(0),
	combout => \MuxULAMem|C[30]~30_combout\);

-- Location: FF_X86_Y31_N13
\BancoReg|ram[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[30]~30_combout\,
	sload => VCC,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][30]~q\);

-- Location: LCCOMB_X86_Y31_N16
\BancoReg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux1~0_combout\ = (\BancoReg|ram[0][30]~q\ & !\ifid|insttemp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][30]~q\,
	datac => \ifid|insttemp\(23),
	combout => \BancoReg|Mux1~0_combout\);

-- Location: FF_X86_Y31_N17
\idex|readData1temp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData1temp\(30));

-- Location: LCCOMB_X81_Y31_N30
\ULA|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~63_combout\ = \UCULA|Mux5~0_combout\ $ (\ULA|Add0~62\ $ (\idex|readData1temp\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UCULA|Mux5~0_combout\,
	datad => \idex|readData1temp\(31),
	cin => \ULA|Add0~62\,
	combout => \ULA|Add0~63_combout\);

-- Location: LCCOMB_X80_Y31_N30
\ULA|tempAdd[32]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[32]~62_combout\ = \ULA|Add0~63_combout\ $ (\ULA|tempAdd[30]~61\ $ (\ULA|Add1~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~63_combout\,
	datad => \ULA|Add1~63_combout\,
	cin => \ULA|tempAdd[30]~61\,
	combout => \ULA|tempAdd[32]~62_combout\);

-- Location: LCCOMB_X79_Y31_N2
\exmem|ulaouttemp[31]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[31]~38_combout\ = (\ULA|Add1~63_combout\ & ((\ULA|Add0~63_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add1~63_combout\ & (\ULA|Add0~63_combout\ & \UCULA|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~63_combout\,
	datab => \ULA|Add0~63_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \exmem|ulaouttemp[31]~38_combout\);

-- Location: LCCOMB_X79_Y31_N30
\exmem|ulaouttemp[31]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|ulaouttemp[31]~27_combout\ = (\UCULA|Mux2~0_combout\ & (\exmem|ulaouttemp[22]~29_combout\ & (\ULA|tempAdd[32]~62_combout\))) # (!\UCULA|Mux2~0_combout\ & (((\exmem|ulaouttemp[31]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux2~0_combout\,
	datab => \exmem|ulaouttemp[22]~29_combout\,
	datac => \ULA|tempAdd[32]~62_combout\,
	datad => \exmem|ulaouttemp[31]~38_combout\,
	combout => \exmem|ulaouttemp[31]~27_combout\);

-- Location: FF_X79_Y31_N31
\exmem|ulaouttemp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|ulaouttemp[31]~27_combout\,
	asdata => \ULA|tempAdd[32]~62_combout\,
	sload => \idex|extemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(31));

-- Location: LCCOMB_X75_Y30_N10
\memwb|ulaouttemp[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwb|ulaouttemp[31]~feeder_combout\ = \exmem|ulaouttemp\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|ulaouttemp\(31),
	combout => \memwb|ulaouttemp[31]~feeder_combout\);

-- Location: FF_X75_Y30_N11
\memwb|ulaouttemp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memwb|ulaouttemp[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(31));

-- Location: LCCOMB_X83_Y30_N6
\MemDados|ram_rtl_0_bypass[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[71]~feeder_combout\ = \exmem|readData2temp\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \exmem|readData2temp\(31),
	combout => \MemDados|ram_rtl_0_bypass[71]~feeder_combout\);

-- Location: FF_X83_Y30_N7
\MemDados|ram_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[71]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(71));

-- Location: LCCOMB_X83_Y30_N8
\MemDados|ram_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X83_Y30_N9
\MemDados|ram_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(72));

-- Location: LCCOMB_X83_Y30_N18
\MemDados|ram~585\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~585_combout\ = (\MemDados|ram_rtl_0_bypass\(72) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a31\))) # (!\MemDados|ram_rtl_0_bypass\(72) & (\MemDados|ram_rtl_0_bypass\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(71),
	datac => \MemDados|ram_rtl_0_bypass\(72),
	datad => \MemDados|ram_rtl_0|auto_generated|ram_block1a31\,
	combout => \MemDados|ram~585_combout\);

-- Location: FF_X83_Y30_N19
\memwb|memdatatemp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~585_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(31));

-- Location: LCCOMB_X84_Y30_N0
\MuxULAMem|C[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[31]~31_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(31)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memwb|muxRtRdtemp\(0),
	datac => \memwb|ulaouttemp\(31),
	datad => \memwb|memdatatemp\(31),
	combout => \MuxULAMem|C[31]~31_combout\);

-- Location: LCCOMB_X84_Y30_N12
\BancoReg|ram[5][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][31]~feeder_combout\ = \MuxULAMem|C[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[31]~31_combout\,
	combout => \BancoReg|ram[5][31]~feeder_combout\);

-- Location: FF_X84_Y30_N13
\BancoReg|ram[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][31]~feeder_combout\,
	ena => \memwb|muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][31]~q\);

-- Location: LCCOMB_X83_Y30_N14
\BancoReg|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux32~0_combout\ = (\ifid|insttemp\(23) & (\BancoReg|ram[5][31]~q\)) # (!\ifid|insttemp\(23) & ((\BancoReg|ram[0][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ifid|insttemp\(23),
	datac => \BancoReg|ram[5][31]~q\,
	datad => \BancoReg|ram[0][31]~q\,
	combout => \BancoReg|Mux32~0_combout\);

-- Location: FF_X83_Y30_N15
\idex|readData2temp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|Mux32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|readData2temp\(31));

-- Location: LCCOMB_X83_Y30_N22
\muxRtImm|C[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[31]~31_combout\ = (\idex|readData2temp\(31) & !\idex|extemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \idex|readData2temp\(31),
	datac => \idex|extemp\(0),
	combout => \muxRtImm|C[31]~31_combout\);

-- Location: LCCOMB_X83_Y31_N30
\ULA|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~63_combout\ = \UCULA|Mux5~0_combout\ $ (\ULA|Add1~62\ $ (\muxRtImm|C[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datad => \muxRtImm|C[31]~31_combout\,
	cin => \ULA|Add1~62\,
	combout => \ULA|Add1~63_combout\);

-- Location: LCCOMB_X79_Y31_N10
\ULA|sltIn[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|sltIn[0]~0_combout\ = (\ULA|Add1~63_combout\ & ((\ULA|Add0~63_combout\) # (\ULA|tempAdd[32]~62_combout\))) # (!\ULA|Add1~63_combout\ & (\ULA|Add0~63_combout\ & \ULA|tempAdd[32]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~63_combout\,
	datab => \ULA|Add0~63_combout\,
	datac => \ULA|tempAdd[32]~62_combout\,
	combout => \ULA|sltIn[0]~0_combout\);

-- Location: LCCOMB_X79_Y31_N24
\ULA|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~1_combout\ = (\UCULA|Mux6~0_combout\ & ((\ULA|Mux31~0_combout\ & ((\ULA|sltIn[0]~0_combout\))) # (!\ULA|Mux31~0_combout\ & (\ULA|tempAdd[0]~0_combout\)))) # (!\UCULA|Mux6~0_combout\ & (((\ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[0]~0_combout\,
	datab => \UCULA|Mux6~0_combout\,
	datac => \ULA|Mux31~0_combout\,
	datad => \ULA|sltIn[0]~0_combout\,
	combout => \ULA|Mux31~1_combout\);

-- Location: FF_X79_Y31_N25
\exmem|ulaouttemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ULA|Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|ulaouttemp\(0));

-- Location: FF_X81_Y34_N3
\memwb|ulaouttemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \exmem|ulaouttemp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|ulaouttemp\(0));

-- Location: LCCOMB_X83_Y30_N30
\MemDados|ram_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[9]~feeder_combout\ = \exmem|readData2temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|readData2temp\(0),
	combout => \MemDados|ram_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X83_Y30_N31
\MemDados|ram_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(9));

-- Location: LCCOMB_X83_Y30_N12
\MemDados|ram_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram_rtl_0_bypass[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MemDados|ram_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X83_Y30_N13
\MemDados|ram_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemDados|ram_rtl_0_bypass\(10));

-- Location: LCCOMB_X83_Y30_N28
\MemDados|ram~554\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~554_combout\ = (\MemDados|ram_rtl_0_bypass\(10) & ((\MemDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\MemDados|ram_rtl_0_bypass\(10) & (\MemDados|ram_rtl_0_bypass\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemDados|ram_rtl_0_bypass\(9),
	datac => \MemDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \MemDados|ram_rtl_0_bypass\(10),
	combout => \MemDados|ram~554_combout\);

-- Location: FF_X83_Y30_N29
\memwb|memdatatemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemDados|ram~554_combout\,
	sclr => \exmem|ALT_INV_mtemp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memwb|memdatatemp\(0));

-- Location: LCCOMB_X81_Y34_N2
\MuxULAMem|C[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[0]~0_combout\ = (\memwb|muxRtRdtemp\(0) & ((\memwb|memdatatemp\(0)))) # (!\memwb|muxRtRdtemp\(0) & (\memwb|ulaouttemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memwb|muxRtRdtemp\(0),
	datac => \memwb|ulaouttemp\(0),
	datad => \memwb|memdatatemp\(0),
	combout => \MuxULAMem|C[0]~0_combout\);

-- Location: LCCOMB_X81_Y34_N12
\BancoReg|ram[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][0]~feeder_combout\ = \MuxULAMem|C[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[0]~0_combout\,
	combout => \BancoReg|ram[0][0]~feeder_combout\);

-- Location: FF_X81_Y34_N13
\BancoReg|ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][0]~feeder_combout\,
	ena => \memwb|ALT_INV_muxRtRdtemp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][0]~q\);

-- Location: IOIBUF_X115_Y37_N22
\regTestEnd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(2),
	o => \regTestEnd[2]~input_o\);

-- Location: IOIBUF_X115_Y37_N15
\regTestEnd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(0),
	o => \regTestEnd[0]~input_o\);

-- Location: LCCOMB_X86_Y34_N20
\BancoReg|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux95~0_combout\ = (\regTestEnd[2]~input_o\ & (((\BancoReg|ram[5][0]~q\) # (!\regTestEnd[0]~input_o\)))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[0][0]~q\ & ((!\regTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][0]~q\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[5][0]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux95~0_combout\);

-- Location: IOIBUF_X115_Y37_N8
\regTestEnd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(1),
	o => \regTestEnd[1]~input_o\);

-- Location: LCCOMB_X86_Y34_N14
\BancoReg|Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux95~1_combout\ = (\regTestEnd[3]~input_o\ & (((!\regTestEnd[2]~input_o\ & !\regTestEnd[1]~input_o\)))) # (!\regTestEnd[3]~input_o\ & ((\regTestEnd[1]~input_o\ & ((!\regTestEnd[2]~input_o\))) # (!\regTestEnd[1]~input_o\ & 
-- (\BancoReg|Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux95~0_combout\,
	datac => \regTestEnd[2]~input_o\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux95~1_combout\);

-- Location: LCCOMB_X81_Y34_N24
\BancoReg|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux94~0_combout\ = (\regTestEnd[2]~input_o\ & (((!\regTestEnd[1]~input_o\ & \BancoReg|ram[5][1]~q\)) # (!\regTestEnd[0]~input_o\))) # (!\regTestEnd[2]~input_o\ & (\regTestEnd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[5][1]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux94~0_combout\);

-- Location: LCCOMB_X81_Y34_N26
\BancoReg|Mux94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux94~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux94~0_combout\ & (\regTestEnd[0]~input_o\)) # (!\BancoReg|Mux94~0_combout\ & (!\regTestEnd[0]~input_o\ & \BancoReg|ram[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux94~0_combout\,
	datab => \regTestEnd[0]~input_o\,
	datac => \regTestEnd[3]~input_o\,
	datad => \BancoReg|ram[0][1]~q\,
	combout => \BancoReg|Mux94~1_combout\);

-- Location: LCCOMB_X81_Y34_N0
\BancoReg|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux93~0_combout\ = (\regTestEnd[1]~input_o\ & (!\regTestEnd[0]~input_o\ & !\regTestEnd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux93~0_combout\);

-- Location: LCCOMB_X81_Y34_N22
\BancoReg|Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux93~1_combout\ = (\regTestEnd[0]~input_o\ & (((!\BancoReg|ram[5][2]~q\ & \regTestEnd[2]~input_o\)))) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|ram[0][2]~q\) # ((\regTestEnd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][2]~q\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[5][2]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux93~1_combout\);

-- Location: LCCOMB_X81_Y34_N8
\BancoReg|Mux93~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux93~2_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux93~0_combout\) # ((\BancoReg|Mux93~1_combout\ & !\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux93~0_combout\,
	datac => \BancoReg|Mux93~1_combout\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux93~2_combout\);

-- Location: LCCOMB_X86_Y34_N24
\BancoReg|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux92~0_combout\ = (\regTestEnd[3]~input_o\) # ((\regTestEnd[2]~input_o\ & ((!\regTestEnd[0]~input_o\) # (!\BancoReg|ram[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[5][3]~q\,
	datac => \regTestEnd[2]~input_o\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux92~0_combout\);

-- Location: LCCOMB_X86_Y34_N6
\BancoReg|Mux92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux92~1_combout\ = (!\BancoReg|Mux92~0_combout\ & ((\regTestEnd[1]~input_o\ & (!\regTestEnd[0]~input_o\)) # (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\) # (\BancoReg|ram[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|Mux92~0_combout\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|ram[0][3]~q\,
	combout => \BancoReg|Mux92~1_combout\);

-- Location: LCCOMB_X81_Y34_N14
\BancoReg|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux91~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][4]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux91~0_combout\);

-- Location: LCCOMB_X85_Y32_N16
\BancoReg|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux90~0_combout\ = (\regTestEnd[0]~input_o\ & (!\regTestEnd[1]~input_o\ & \regTestEnd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regTestEnd[0]~input_o\,
	datac => \regTestEnd[1]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux90~0_combout\);

-- Location: LCCOMB_X82_Y34_N24
\BancoReg|Mux91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux91~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux91~0_combout\) # ((\BancoReg|Mux90~0_combout\ & !\BancoReg|ram[5][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux91~0_combout\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \regTestEnd[3]~input_o\,
	datad => \BancoReg|ram[5][4]~q\,
	combout => \BancoReg|Mux91~1_combout\);

-- Location: LCCOMB_X82_Y34_N20
\BancoReg|Mux90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux90~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux93~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \BancoReg|Mux93~0_combout\,
	datad => \BancoReg|ram[5][5]~q\,
	combout => \BancoReg|Mux90~1_combout\);

-- Location: LCCOMB_X82_Y34_N4
\BancoReg|Mux90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux90~2_combout\ = (\regTestEnd[3]~input_o\) # ((\BancoReg|ram[0][5]~q\ & !\regTestEnd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[0][5]~q\,
	datac => \regTestEnd[3]~input_o\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux90~2_combout\);

-- Location: LCCOMB_X82_Y34_N18
\BancoReg|Mux90~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux90~3_combout\ = (\BancoReg|Mux90~1_combout\) # ((!\regTestEnd[1]~input_o\ & (\BancoReg|Mux90~2_combout\ & !\regTestEnd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|Mux90~1_combout\,
	datac => \BancoReg|Mux90~2_combout\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux90~3_combout\);

-- Location: LCCOMB_X82_Y34_N28
\BancoReg|Mux89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux89~1_combout\ = (\regTestEnd[3]~input_o\) # ((\BancoReg|ram[0][6]~q\ & !\regTestEnd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[0][6]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux89~1_combout\);

-- Location: LCCOMB_X82_Y34_N22
\BancoReg|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux89~0_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux93~0_combout\) # ((\BancoReg|ram[5][6]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[5][6]~q\,
	datac => \BancoReg|Mux93~0_combout\,
	datad => \BancoReg|Mux90~0_combout\,
	combout => \BancoReg|Mux89~0_combout\);

-- Location: LCCOMB_X82_Y34_N6
\BancoReg|Mux89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux89~2_combout\ = (\BancoReg|Mux89~0_combout\) # ((!\regTestEnd[1]~input_o\ & (\BancoReg|Mux89~1_combout\ & !\regTestEnd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|Mux89~1_combout\,
	datac => \BancoReg|Mux89~0_combout\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux89~2_combout\);

-- Location: LCCOMB_X85_Y32_N30
\BancoReg|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux88~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][7]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux88~0_combout\);

-- Location: LCCOMB_X85_Y32_N20
\BancoReg|Mux88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux88~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux88~0_combout\) # ((\BancoReg|Mux90~0_combout\ & !\BancoReg|ram[5][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux88~0_combout\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \BancoReg|ram[5][7]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux88~1_combout\);

-- Location: LCCOMB_X82_Y34_N12
\BancoReg|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux87~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][8]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux87~0_combout\);

-- Location: LCCOMB_X85_Y34_N4
\BancoReg|Mux87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux87~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux87~0_combout\) # ((!\BancoReg|ram[5][8]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][8]~q\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \BancoReg|Mux87~0_combout\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux87~1_combout\);

-- Location: LCCOMB_X86_Y34_N4
\BancoReg|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux86~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[0][9]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][9]~q\,
	datab => \regTestEnd[0]~input_o\,
	datac => \regTestEnd[2]~input_o\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux86~0_combout\);

-- Location: LCCOMB_X85_Y34_N24
\BancoReg|Mux86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux86~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux86~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux86~0_combout\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \BancoReg|ram[5][9]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux86~1_combout\);

-- Location: LCCOMB_X86_Y34_N28
\BancoReg|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux85~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \regTestEnd[2]~input_o\,
	datad => \BancoReg|ram[0][10]~q\,
	combout => \BancoReg|Mux85~0_combout\);

-- Location: LCCOMB_X86_Y34_N10
\BancoReg|Mux85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux85~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux85~0_combout\) # ((\BancoReg|ram[5][10]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux85~0_combout\,
	datac => \BancoReg|ram[5][10]~q\,
	datad => \BancoReg|Mux90~0_combout\,
	combout => \BancoReg|Mux85~1_combout\);

-- Location: LCCOMB_X82_Y29_N10
\BancoReg|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux84~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[0][11]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \BancoReg|ram[0][11]~q\,
	datac => \regTestEnd[1]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux84~0_combout\);

-- Location: LCCOMB_X82_Y29_N24
\BancoReg|Mux84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux84~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux84~0_combout\) # ((\BancoReg|ram[5][11]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux84~0_combout\,
	datab => \BancoReg|ram[5][11]~q\,
	datac => \BancoReg|Mux90~0_combout\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux84~1_combout\);

-- Location: LCCOMB_X85_Y32_N8
\BancoReg|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux83~0_combout\ = (!\regTestEnd[2]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|ram[0][12]~q\,
	combout => \BancoReg|Mux83~0_combout\);

-- Location: LCCOMB_X85_Y32_N28
\BancoReg|Mux83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux83~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux83~0_combout\) # ((\BancoReg|ram[5][12]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][12]~q\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|Mux83~0_combout\,
	datad => \BancoReg|Mux90~0_combout\,
	combout => \BancoReg|Mux83~1_combout\);

-- Location: LCCOMB_X82_Y29_N16
\BancoReg|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux82~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[0][13]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][13]~q\,
	datab => \regTestEnd[1]~input_o\,
	datac => \regTestEnd[0]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux82~0_combout\);

-- Location: LCCOMB_X82_Y29_N14
\BancoReg|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux82~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux82~0_combout\) # ((\BancoReg|ram[5][13]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][13]~q\,
	datab => \BancoReg|Mux82~0_combout\,
	datac => \BancoReg|Mux90~0_combout\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux82~1_combout\);

-- Location: LCCOMB_X85_Y32_N2
\BancoReg|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux81~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][14]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux81~0_combout\);

-- Location: LCCOMB_X85_Y32_N4
\BancoReg|Mux81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux81~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux81~0_combout\) # ((\BancoReg|ram[5][14]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux81~0_combout\,
	datac => \BancoReg|ram[5][14]~q\,
	datad => \BancoReg|Mux90~0_combout\,
	combout => \BancoReg|Mux81~1_combout\);

-- Location: LCCOMB_X85_Y32_N22
\BancoReg|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux80~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][15]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux80~0_combout\);

-- Location: LCCOMB_X85_Y32_N24
\BancoReg|Mux80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux80~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux80~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux80~0_combout\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \BancoReg|ram[5][15]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux80~1_combout\);

-- Location: LCCOMB_X83_Y29_N16
\BancoReg|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux79~0_combout\ = (!\regTestEnd[2]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\BancoReg|ram[0][16]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[0][16]~q\,
	datac => \regTestEnd[0]~input_o\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux79~0_combout\);

-- Location: LCCOMB_X83_Y29_N28
\BancoReg|Mux79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux79~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux79~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux79~0_combout\,
	datac => \BancoReg|Mux90~0_combout\,
	datad => \BancoReg|ram[5][16]~q\,
	combout => \BancoReg|Mux79~1_combout\);

-- Location: LCCOMB_X85_Y32_N14
\BancoReg|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux78~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][17]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux78~0_combout\);

-- Location: LCCOMB_X85_Y32_N12
\BancoReg|Mux78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux78~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux78~0_combout\) # ((\BancoReg|ram[5][17]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][17]~q\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \BancoReg|Mux78~0_combout\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux78~1_combout\);

-- Location: LCCOMB_X82_Y29_N0
\BancoReg|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux77~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[0][18]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][18]~q\,
	datab => \regTestEnd[1]~input_o\,
	datac => \regTestEnd[0]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux77~0_combout\);

-- Location: LCCOMB_X82_Y29_N18
\BancoReg|Mux77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux77~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux77~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux90~0_combout\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[5][18]~q\,
	datad => \BancoReg|Mux77~0_combout\,
	combout => \BancoReg|Mux77~1_combout\);

-- Location: LCCOMB_X82_Y34_N2
\BancoReg|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux76~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][19]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux76~0_combout\);

-- Location: LCCOMB_X82_Y34_N8
\BancoReg|Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux76~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux76~0_combout\) # ((\BancoReg|ram[5][19]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][19]~q\,
	datab => \BancoReg|Mux76~0_combout\,
	datac => \regTestEnd[3]~input_o\,
	datad => \BancoReg|Mux90~0_combout\,
	combout => \BancoReg|Mux76~1_combout\);

-- Location: LCCOMB_X82_Y31_N4
\BancoReg|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux75~0_combout\ = (!\regTestEnd[2]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[0][20]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux75~0_combout\);

-- Location: LCCOMB_X83_Y29_N30
\BancoReg|Mux75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux75~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux75~0_combout\) # ((\BancoReg|ram[5][20]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[5][20]~q\,
	datac => \BancoReg|Mux90~0_combout\,
	datad => \BancoReg|Mux75~0_combout\,
	combout => \BancoReg|Mux75~1_combout\);

-- Location: LCCOMB_X82_Y31_N30
\BancoReg|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux74~0_combout\ = (!\regTestEnd[2]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[0][21]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux74~0_combout\);

-- Location: LCCOMB_X82_Y30_N24
\BancoReg|Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux74~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux74~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \BancoReg|Mux74~0_combout\,
	datad => \BancoReg|ram[5][21]~q\,
	combout => \BancoReg|Mux74~1_combout\);

-- Location: LCCOMB_X82_Y30_N0
\BancoReg|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux73~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|ram[0][22]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux73~0_combout\);

-- Location: LCCOMB_X82_Y30_N14
\BancoReg|Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux73~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux73~0_combout\) # ((\BancoReg|ram[5][22]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux73~0_combout\,
	datac => \BancoReg|ram[5][22]~q\,
	datad => \BancoReg|Mux90~0_combout\,
	combout => \BancoReg|Mux73~1_combout\);

-- Location: LCCOMB_X82_Y30_N10
\BancoReg|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux72~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|ram[0][23]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux72~0_combout\);

-- Location: LCCOMB_X82_Y30_N12
\BancoReg|Mux72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux72~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux72~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \BancoReg|ram[5][23]~q\,
	datad => \BancoReg|Mux72~0_combout\,
	combout => \BancoReg|Mux72~1_combout\);

-- Location: LCCOMB_X82_Y30_N20
\BancoReg|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux71~0_combout\ = (!\regTestEnd[2]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|ram[0][24]~q\,
	combout => \BancoReg|Mux71~0_combout\);

-- Location: LCCOMB_X82_Y30_N18
\BancoReg|Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux71~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux71~0_combout\) # ((\BancoReg|ram[5][24]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux71~0_combout\,
	datac => \BancoReg|ram[5][24]~q\,
	datad => \BancoReg|Mux90~0_combout\,
	combout => \BancoReg|Mux71~1_combout\);

-- Location: LCCOMB_X83_Y29_N18
\BancoReg|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux70~0_combout\ = (!\regTestEnd[2]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\BancoReg|ram[0][25]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][25]~q\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux70~0_combout\);

-- Location: LCCOMB_X83_Y29_N4
\BancoReg|Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux70~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux70~0_combout\) # ((\BancoReg|ram[5][25]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[5][25]~q\,
	datac => \BancoReg|Mux90~0_combout\,
	datad => \BancoReg|Mux70~0_combout\,
	combout => \BancoReg|Mux70~1_combout\);

-- Location: LCCOMB_X83_Y29_N20
\BancoReg|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux69~0_combout\ = (!\regTestEnd[2]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\BancoReg|ram[0][26]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][26]~q\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux69~0_combout\);

-- Location: LCCOMB_X83_Y29_N6
\BancoReg|Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux69~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux69~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux90~0_combout\,
	datab => \BancoReg|Mux69~0_combout\,
	datac => \BancoReg|ram[5][26]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux69~1_combout\);

-- Location: LCCOMB_X83_Y29_N24
\BancoReg|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux68~0_combout\ = (!\regTestEnd[2]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\BancoReg|ram[0][27]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[0][27]~q\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux68~0_combout\);

-- Location: LCCOMB_X83_Y29_N26
\BancoReg|Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux68~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux68~0_combout\) # ((\BancoReg|ram[5][27]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[5][27]~q\,
	datac => \BancoReg|Mux90~0_combout\,
	datad => \BancoReg|Mux68~0_combout\,
	combout => \BancoReg|Mux68~1_combout\);

-- Location: LCCOMB_X86_Y31_N10
\BancoReg|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux67~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|ram[0][28]~q\,
	datac => \regTestEnd[0]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux67~0_combout\);

-- Location: LCCOMB_X86_Y31_N24
\BancoReg|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux67~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux67~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux90~0_combout\,
	datac => \BancoReg|ram[5][28]~q\,
	datad => \BancoReg|Mux67~0_combout\,
	combout => \BancoReg|Mux67~1_combout\);

-- Location: LCCOMB_X86_Y31_N4
\BancoReg|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux66~0_combout\ = (!\regTestEnd[2]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|ram[0][29]~q\,
	combout => \BancoReg|Mux66~0_combout\);

-- Location: LCCOMB_X86_Y31_N26
\BancoReg|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux66~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux66~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux66~0_combout\,
	datac => \BancoReg|Mux90~0_combout\,
	datad => \BancoReg|ram[5][29]~q\,
	combout => \BancoReg|Mux66~1_combout\);

-- Location: LCCOMB_X86_Y31_N12
\BancoReg|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux65~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[0][30]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[0][30]~q\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux65~0_combout\);

-- Location: LCCOMB_X86_Y31_N14
\BancoReg|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux65~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux65~0_combout\) # ((\BancoReg|ram[5][30]~q\ & \BancoReg|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][30]~q\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|Mux90~0_combout\,
	datad => \BancoReg|Mux65~0_combout\,
	combout => \BancoReg|Mux65~1_combout\);

-- Location: LCCOMB_X86_Y31_N28
\BancoReg|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux64~0_combout\ = (!\regTestEnd[0]~input_o\ & (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[0][31]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[0][31]~q\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux64~0_combout\);

-- Location: LCCOMB_X86_Y30_N12
\BancoReg|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux64~1_combout\ = (!\regTestEnd[3]~input_o\ & ((\BancoReg|Mux64~0_combout\) # ((\BancoReg|Mux90~0_combout\ & \BancoReg|ram[5][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux90~0_combout\,
	datab => \BancoReg|Mux64~0_combout\,
	datac => \BancoReg|ram[5][31]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux64~1_combout\);

-- Location: IOIBUF_X56_Y73_N1
\memTestEnd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(1),
	o => \memTestEnd[1]~input_o\);

-- Location: IOIBUF_X56_Y73_N8
\memTestEnd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(2),
	o => \memTestEnd[2]~input_o\);

-- Location: IOIBUF_X56_Y73_N15
\memTestEnd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(0),
	o => \memTestEnd[0]~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\memTestEnd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(3),
	o => \memTestEnd[3]~input_o\);

-- Location: LCCOMB_X55_Y72_N12
\MemDados|ram~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~549_combout\ = (!\memTestEnd[3]~input_o\ & ((\memTestEnd[1]~input_o\ & (\memTestEnd[2]~input_o\ & !\memTestEnd[0]~input_o\)) # (!\memTestEnd[1]~input_o\ & (!\memTestEnd[2]~input_o\ & \memTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[1]~input_o\,
	datab => \memTestEnd[2]~input_o\,
	datac => \memTestEnd[0]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~549_combout\);

-- Location: LCCOMB_X55_Y72_N6
\MemDados|ram~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~550_combout\ = (\memTestEnd[1]~input_o\ & (\memTestEnd[2]~input_o\ & (!\memTestEnd[0]~input_o\ & !\memTestEnd[3]~input_o\))) # (!\memTestEnd[1]~input_o\ & (!\memTestEnd[2]~input_o\ & ((\memTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[1]~input_o\,
	datab => \memTestEnd[2]~input_o\,
	datac => \memTestEnd[0]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~550_combout\);

-- Location: LCCOMB_X55_Y72_N0
\MemDados|ram~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~551_combout\ = (\memTestEnd[2]~input_o\ & (!\memTestEnd[3]~input_o\ & ((\memTestEnd[1]~input_o\) # (\memTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[1]~input_o\,
	datab => \memTestEnd[2]~input_o\,
	datac => \memTestEnd[0]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~551_combout\);

-- Location: LCCOMB_X55_Y72_N22
\MemDados|ram~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~552_combout\ = (\memTestEnd[1]~input_o\ & (\memTestEnd[2]~input_o\ & (!\memTestEnd[0]~input_o\ & !\memTestEnd[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[1]~input_o\,
	datab => \memTestEnd[2]~input_o\,
	datac => \memTestEnd[0]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~552_combout\);

-- Location: LCCOMB_X55_Y72_N4
\MemDados|ram~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~553_combout\ = (!\memTestEnd[1]~input_o\ & (!\memTestEnd[2]~input_o\ & (\memTestEnd[0]~input_o\ & !\memTestEnd[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[1]~input_o\,
	datab => \memTestEnd[2]~input_o\,
	datac => \memTestEnd[0]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~553_combout\);

-- Location: LCCOMB_X1_Y31_N8
\AdderPC|tempAdd[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[4]~8_combout\ = (\PC|DOUT\(4) & (\AdderPC|tempAdd[3]~7\ $ (GND))) # (!\PC|DOUT\(4) & (!\AdderPC|tempAdd[3]~7\ & VCC))
-- \AdderPC|tempAdd[4]~9\ = CARRY((\PC|DOUT\(4) & !\AdderPC|tempAdd[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(4),
	datad => VCC,
	cin => \AdderPC|tempAdd[3]~7\,
	combout => \AdderPC|tempAdd[4]~8_combout\,
	cout => \AdderPC|tempAdd[4]~9\);

-- Location: FF_X1_Y31_N9
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LCCOMB_X1_Y31_N10
\AdderPC|tempAdd[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[5]~10_combout\ = (\PC|DOUT\(5) & (!\AdderPC|tempAdd[4]~9\)) # (!\PC|DOUT\(5) & ((\AdderPC|tempAdd[4]~9\) # (GND)))
-- \AdderPC|tempAdd[5]~11\ = CARRY((!\AdderPC|tempAdd[4]~9\) # (!\PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(5),
	datad => VCC,
	cin => \AdderPC|tempAdd[4]~9\,
	combout => \AdderPC|tempAdd[5]~10_combout\,
	cout => \AdderPC|tempAdd[5]~11\);

-- Location: FF_X1_Y31_N11
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LCCOMB_X1_Y31_N12
\AdderPC|tempAdd[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[6]~12_combout\ = (\PC|DOUT\(6) & (\AdderPC|tempAdd[5]~11\ $ (GND))) # (!\PC|DOUT\(6) & (!\AdderPC|tempAdd[5]~11\ & VCC))
-- \AdderPC|tempAdd[6]~13\ = CARRY((\PC|DOUT\(6) & !\AdderPC|tempAdd[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(6),
	datad => VCC,
	cin => \AdderPC|tempAdd[5]~11\,
	combout => \AdderPC|tempAdd[6]~12_combout\,
	cout => \AdderPC|tempAdd[6]~13\);

-- Location: FF_X1_Y31_N13
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LCCOMB_X1_Y31_N14
\AdderPC|tempAdd[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[7]~14_combout\ = (\PC|DOUT\(7) & (!\AdderPC|tempAdd[6]~13\)) # (!\PC|DOUT\(7) & ((\AdderPC|tempAdd[6]~13\) # (GND)))
-- \AdderPC|tempAdd[7]~15\ = CARRY((!\AdderPC|tempAdd[6]~13\) # (!\PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(7),
	datad => VCC,
	cin => \AdderPC|tempAdd[6]~13\,
	combout => \AdderPC|tempAdd[7]~14_combout\,
	cout => \AdderPC|tempAdd[7]~15\);

-- Location: FF_X1_Y31_N15
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LCCOMB_X1_Y31_N16
\AdderPC|tempAdd[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[8]~16_combout\ = (\PC|DOUT\(8) & (\AdderPC|tempAdd[7]~15\ $ (GND))) # (!\PC|DOUT\(8) & (!\AdderPC|tempAdd[7]~15\ & VCC))
-- \AdderPC|tempAdd[8]~17\ = CARRY((\PC|DOUT\(8) & !\AdderPC|tempAdd[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(8),
	datad => VCC,
	cin => \AdderPC|tempAdd[7]~15\,
	combout => \AdderPC|tempAdd[8]~16_combout\,
	cout => \AdderPC|tempAdd[8]~17\);

-- Location: FF_X1_Y31_N17
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LCCOMB_X1_Y31_N18
\AdderPC|tempAdd[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[9]~18_combout\ = (\PC|DOUT\(9) & (!\AdderPC|tempAdd[8]~17\)) # (!\PC|DOUT\(9) & ((\AdderPC|tempAdd[8]~17\) # (GND)))
-- \AdderPC|tempAdd[9]~19\ = CARRY((!\AdderPC|tempAdd[8]~17\) # (!\PC|DOUT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(9),
	datad => VCC,
	cin => \AdderPC|tempAdd[8]~17\,
	combout => \AdderPC|tempAdd[9]~18_combout\,
	cout => \AdderPC|tempAdd[9]~19\);

-- Location: FF_X1_Y31_N19
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: LCCOMB_X1_Y31_N20
\AdderPC|tempAdd[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[10]~20_combout\ = (\PC|DOUT\(10) & (\AdderPC|tempAdd[9]~19\ $ (GND))) # (!\PC|DOUT\(10) & (!\AdderPC|tempAdd[9]~19\ & VCC))
-- \AdderPC|tempAdd[10]~21\ = CARRY((\PC|DOUT\(10) & !\AdderPC|tempAdd[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(10),
	datad => VCC,
	cin => \AdderPC|tempAdd[9]~19\,
	combout => \AdderPC|tempAdd[10]~20_combout\,
	cout => \AdderPC|tempAdd[10]~21\);

-- Location: FF_X1_Y31_N21
\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

-- Location: LCCOMB_X1_Y31_N22
\AdderPC|tempAdd[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[11]~22_combout\ = (\PC|DOUT\(11) & (!\AdderPC|tempAdd[10]~21\)) # (!\PC|DOUT\(11) & ((\AdderPC|tempAdd[10]~21\) # (GND)))
-- \AdderPC|tempAdd[11]~23\ = CARRY((!\AdderPC|tempAdd[10]~21\) # (!\PC|DOUT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(11),
	datad => VCC,
	cin => \AdderPC|tempAdd[10]~21\,
	combout => \AdderPC|tempAdd[11]~22_combout\,
	cout => \AdderPC|tempAdd[11]~23\);

-- Location: FF_X1_Y31_N23
\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

-- Location: LCCOMB_X1_Y31_N24
\AdderPC|tempAdd[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[12]~24_combout\ = (\PC|DOUT\(12) & (\AdderPC|tempAdd[11]~23\ $ (GND))) # (!\PC|DOUT\(12) & (!\AdderPC|tempAdd[11]~23\ & VCC))
-- \AdderPC|tempAdd[12]~25\ = CARRY((\PC|DOUT\(12) & !\AdderPC|tempAdd[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(12),
	datad => VCC,
	cin => \AdderPC|tempAdd[11]~23\,
	combout => \AdderPC|tempAdd[12]~24_combout\,
	cout => \AdderPC|tempAdd[12]~25\);

-- Location: FF_X1_Y31_N25
\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

-- Location: LCCOMB_X1_Y31_N26
\AdderPC|tempAdd[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[13]~26_combout\ = (\PC|DOUT\(13) & (!\AdderPC|tempAdd[12]~25\)) # (!\PC|DOUT\(13) & ((\AdderPC|tempAdd[12]~25\) # (GND)))
-- \AdderPC|tempAdd[13]~27\ = CARRY((!\AdderPC|tempAdd[12]~25\) # (!\PC|DOUT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(13),
	datad => VCC,
	cin => \AdderPC|tempAdd[12]~25\,
	combout => \AdderPC|tempAdd[13]~26_combout\,
	cout => \AdderPC|tempAdd[13]~27\);

-- Location: FF_X1_Y31_N27
\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

-- Location: LCCOMB_X1_Y31_N28
\AdderPC|tempAdd[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[14]~28_combout\ = (\PC|DOUT\(14) & (\AdderPC|tempAdd[13]~27\ $ (GND))) # (!\PC|DOUT\(14) & (!\AdderPC|tempAdd[13]~27\ & VCC))
-- \AdderPC|tempAdd[14]~29\ = CARRY((\PC|DOUT\(14) & !\AdderPC|tempAdd[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(14),
	datad => VCC,
	cin => \AdderPC|tempAdd[13]~27\,
	combout => \AdderPC|tempAdd[14]~28_combout\,
	cout => \AdderPC|tempAdd[14]~29\);

-- Location: FF_X1_Y31_N29
\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[14]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

-- Location: LCCOMB_X1_Y31_N30
\AdderPC|tempAdd[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[15]~30_combout\ = (\PC|DOUT\(15) & (!\AdderPC|tempAdd[14]~29\)) # (!\PC|DOUT\(15) & ((\AdderPC|tempAdd[14]~29\) # (GND)))
-- \AdderPC|tempAdd[15]~31\ = CARRY((!\AdderPC|tempAdd[14]~29\) # (!\PC|DOUT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(15),
	datad => VCC,
	cin => \AdderPC|tempAdd[14]~29\,
	combout => \AdderPC|tempAdd[15]~30_combout\,
	cout => \AdderPC|tempAdd[15]~31\);

-- Location: FF_X1_Y31_N31
\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[15]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

-- Location: LCCOMB_X1_Y30_N0
\AdderPC|tempAdd[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[16]~32_combout\ = (\PC|DOUT\(16) & (\AdderPC|tempAdd[15]~31\ $ (GND))) # (!\PC|DOUT\(16) & (!\AdderPC|tempAdd[15]~31\ & VCC))
-- \AdderPC|tempAdd[16]~33\ = CARRY((\PC|DOUT\(16) & !\AdderPC|tempAdd[15]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(16),
	datad => VCC,
	cin => \AdderPC|tempAdd[15]~31\,
	combout => \AdderPC|tempAdd[16]~32_combout\,
	cout => \AdderPC|tempAdd[16]~33\);

-- Location: FF_X1_Y30_N1
\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[16]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

-- Location: LCCOMB_X1_Y30_N2
\AdderPC|tempAdd[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[17]~34_combout\ = (\PC|DOUT\(17) & (!\AdderPC|tempAdd[16]~33\)) # (!\PC|DOUT\(17) & ((\AdderPC|tempAdd[16]~33\) # (GND)))
-- \AdderPC|tempAdd[17]~35\ = CARRY((!\AdderPC|tempAdd[16]~33\) # (!\PC|DOUT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(17),
	datad => VCC,
	cin => \AdderPC|tempAdd[16]~33\,
	combout => \AdderPC|tempAdd[17]~34_combout\,
	cout => \AdderPC|tempAdd[17]~35\);

-- Location: FF_X1_Y30_N3
\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[17]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

-- Location: LCCOMB_X1_Y30_N4
\AdderPC|tempAdd[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[18]~36_combout\ = (\PC|DOUT\(18) & (\AdderPC|tempAdd[17]~35\ $ (GND))) # (!\PC|DOUT\(18) & (!\AdderPC|tempAdd[17]~35\ & VCC))
-- \AdderPC|tempAdd[18]~37\ = CARRY((\PC|DOUT\(18) & !\AdderPC|tempAdd[17]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(18),
	datad => VCC,
	cin => \AdderPC|tempAdd[17]~35\,
	combout => \AdderPC|tempAdd[18]~36_combout\,
	cout => \AdderPC|tempAdd[18]~37\);

-- Location: FF_X1_Y30_N5
\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[18]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

-- Location: LCCOMB_X1_Y30_N6
\AdderPC|tempAdd[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[19]~38_combout\ = (\PC|DOUT\(19) & (!\AdderPC|tempAdd[18]~37\)) # (!\PC|DOUT\(19) & ((\AdderPC|tempAdd[18]~37\) # (GND)))
-- \AdderPC|tempAdd[19]~39\ = CARRY((!\AdderPC|tempAdd[18]~37\) # (!\PC|DOUT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(19),
	datad => VCC,
	cin => \AdderPC|tempAdd[18]~37\,
	combout => \AdderPC|tempAdd[19]~38_combout\,
	cout => \AdderPC|tempAdd[19]~39\);

-- Location: FF_X1_Y30_N7
\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[19]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

-- Location: LCCOMB_X1_Y30_N8
\AdderPC|tempAdd[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[20]~40_combout\ = (\PC|DOUT\(20) & (\AdderPC|tempAdd[19]~39\ $ (GND))) # (!\PC|DOUT\(20) & (!\AdderPC|tempAdd[19]~39\ & VCC))
-- \AdderPC|tempAdd[20]~41\ = CARRY((\PC|DOUT\(20) & !\AdderPC|tempAdd[19]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(20),
	datad => VCC,
	cin => \AdderPC|tempAdd[19]~39\,
	combout => \AdderPC|tempAdd[20]~40_combout\,
	cout => \AdderPC|tempAdd[20]~41\);

-- Location: FF_X1_Y30_N9
\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[20]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

-- Location: LCCOMB_X1_Y30_N10
\AdderPC|tempAdd[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[21]~42_combout\ = (\PC|DOUT\(21) & (!\AdderPC|tempAdd[20]~41\)) # (!\PC|DOUT\(21) & ((\AdderPC|tempAdd[20]~41\) # (GND)))
-- \AdderPC|tempAdd[21]~43\ = CARRY((!\AdderPC|tempAdd[20]~41\) # (!\PC|DOUT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(21),
	datad => VCC,
	cin => \AdderPC|tempAdd[20]~41\,
	combout => \AdderPC|tempAdd[21]~42_combout\,
	cout => \AdderPC|tempAdd[21]~43\);

-- Location: FF_X1_Y30_N11
\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[21]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

-- Location: LCCOMB_X1_Y30_N12
\AdderPC|tempAdd[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[22]~44_combout\ = (\PC|DOUT\(22) & (\AdderPC|tempAdd[21]~43\ $ (GND))) # (!\PC|DOUT\(22) & (!\AdderPC|tempAdd[21]~43\ & VCC))
-- \AdderPC|tempAdd[22]~45\ = CARRY((\PC|DOUT\(22) & !\AdderPC|tempAdd[21]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(22),
	datad => VCC,
	cin => \AdderPC|tempAdd[21]~43\,
	combout => \AdderPC|tempAdd[22]~44_combout\,
	cout => \AdderPC|tempAdd[22]~45\);

-- Location: FF_X1_Y30_N13
\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[22]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

-- Location: LCCOMB_X1_Y30_N14
\AdderPC|tempAdd[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[23]~46_combout\ = (\PC|DOUT\(23) & (!\AdderPC|tempAdd[22]~45\)) # (!\PC|DOUT\(23) & ((\AdderPC|tempAdd[22]~45\) # (GND)))
-- \AdderPC|tempAdd[23]~47\ = CARRY((!\AdderPC|tempAdd[22]~45\) # (!\PC|DOUT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(23),
	datad => VCC,
	cin => \AdderPC|tempAdd[22]~45\,
	combout => \AdderPC|tempAdd[23]~46_combout\,
	cout => \AdderPC|tempAdd[23]~47\);

-- Location: FF_X1_Y30_N15
\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[23]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

-- Location: LCCOMB_X1_Y30_N16
\AdderPC|tempAdd[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[24]~48_combout\ = (\PC|DOUT\(24) & (\AdderPC|tempAdd[23]~47\ $ (GND))) # (!\PC|DOUT\(24) & (!\AdderPC|tempAdd[23]~47\ & VCC))
-- \AdderPC|tempAdd[24]~49\ = CARRY((\PC|DOUT\(24) & !\AdderPC|tempAdd[23]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(24),
	datad => VCC,
	cin => \AdderPC|tempAdd[23]~47\,
	combout => \AdderPC|tempAdd[24]~48_combout\,
	cout => \AdderPC|tempAdd[24]~49\);

-- Location: FF_X1_Y30_N17
\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[24]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

-- Location: LCCOMB_X1_Y30_N18
\AdderPC|tempAdd[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[25]~50_combout\ = (\PC|DOUT\(25) & (!\AdderPC|tempAdd[24]~49\)) # (!\PC|DOUT\(25) & ((\AdderPC|tempAdd[24]~49\) # (GND)))
-- \AdderPC|tempAdd[25]~51\ = CARRY((!\AdderPC|tempAdd[24]~49\) # (!\PC|DOUT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(25),
	datad => VCC,
	cin => \AdderPC|tempAdd[24]~49\,
	combout => \AdderPC|tempAdd[25]~50_combout\,
	cout => \AdderPC|tempAdd[25]~51\);

-- Location: FF_X1_Y30_N19
\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[25]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

-- Location: LCCOMB_X1_Y30_N20
\AdderPC|tempAdd[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[26]~52_combout\ = (\PC|DOUT\(26) & (\AdderPC|tempAdd[25]~51\ $ (GND))) # (!\PC|DOUT\(26) & (!\AdderPC|tempAdd[25]~51\ & VCC))
-- \AdderPC|tempAdd[26]~53\ = CARRY((\PC|DOUT\(26) & !\AdderPC|tempAdd[25]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(26),
	datad => VCC,
	cin => \AdderPC|tempAdd[25]~51\,
	combout => \AdderPC|tempAdd[26]~52_combout\,
	cout => \AdderPC|tempAdd[26]~53\);

-- Location: FF_X1_Y30_N21
\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[26]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

-- Location: LCCOMB_X1_Y30_N22
\AdderPC|tempAdd[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[27]~54_combout\ = (\PC|DOUT\(27) & (!\AdderPC|tempAdd[26]~53\)) # (!\PC|DOUT\(27) & ((\AdderPC|tempAdd[26]~53\) # (GND)))
-- \AdderPC|tempAdd[27]~55\ = CARRY((!\AdderPC|tempAdd[26]~53\) # (!\PC|DOUT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(27),
	datad => VCC,
	cin => \AdderPC|tempAdd[26]~53\,
	combout => \AdderPC|tempAdd[27]~54_combout\,
	cout => \AdderPC|tempAdd[27]~55\);

-- Location: FF_X1_Y30_N23
\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[27]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

-- Location: LCCOMB_X1_Y30_N24
\AdderPC|tempAdd[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[28]~56_combout\ = (\PC|DOUT\(28) & (\AdderPC|tempAdd[27]~55\ $ (GND))) # (!\PC|DOUT\(28) & (!\AdderPC|tempAdd[27]~55\ & VCC))
-- \AdderPC|tempAdd[28]~57\ = CARRY((\PC|DOUT\(28) & !\AdderPC|tempAdd[27]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(28),
	datad => VCC,
	cin => \AdderPC|tempAdd[27]~55\,
	combout => \AdderPC|tempAdd[28]~56_combout\,
	cout => \AdderPC|tempAdd[28]~57\);

-- Location: FF_X1_Y30_N25
\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[28]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

-- Location: LCCOMB_X1_Y30_N26
\AdderPC|tempAdd[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[29]~58_combout\ = (\PC|DOUT\(29) & (!\AdderPC|tempAdd[28]~57\)) # (!\PC|DOUT\(29) & ((\AdderPC|tempAdd[28]~57\) # (GND)))
-- \AdderPC|tempAdd[29]~59\ = CARRY((!\AdderPC|tempAdd[28]~57\) # (!\PC|DOUT\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(29),
	datad => VCC,
	cin => \AdderPC|tempAdd[28]~57\,
	combout => \AdderPC|tempAdd[29]~58_combout\,
	cout => \AdderPC|tempAdd[29]~59\);

-- Location: FF_X1_Y30_N27
\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[29]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

-- Location: LCCOMB_X1_Y30_N28
\AdderPC|tempAdd[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[30]~60_combout\ = (\PC|DOUT\(30) & (\AdderPC|tempAdd[29]~59\ $ (GND))) # (!\PC|DOUT\(30) & (!\AdderPC|tempAdd[29]~59\ & VCC))
-- \AdderPC|tempAdd[30]~61\ = CARRY((\PC|DOUT\(30) & !\AdderPC|tempAdd[29]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(30),
	datad => VCC,
	cin => \AdderPC|tempAdd[29]~59\,
	combout => \AdderPC|tempAdd[30]~60_combout\,
	cout => \AdderPC|tempAdd[30]~61\);

-- Location: FF_X1_Y30_N29
\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[30]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

-- Location: LCCOMB_X1_Y30_N30
\AdderPC|tempAdd[32]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[32]~62_combout\ = \PC|DOUT\(31) $ (\AdderPC|tempAdd[30]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(31),
	cin => \AdderPC|tempAdd[30]~61\,
	combout => \AdderPC|tempAdd[32]~62_combout\);

-- Location: FF_X1_Y30_N31
\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AdderPC|tempAdd[32]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

-- Location: LCCOMB_X83_Y30_N24
\muxRtImm|C[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[0]~0_combout\ = (\idex|extemp\(0) & (\idex|signExtendtemp\(0))) # (!\idex|extemp\(0) & ((\idex|readData2temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|extemp\(0),
	datac => \idex|signExtendtemp\(0),
	datad => \idex|readData2temp\(0),
	combout => \muxRtImm|C[0]~0_combout\);

-- Location: LCCOMB_X3_Y36_N4
\idex|pctemp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[0]~feeder_combout\ = \PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|DOUT\(0),
	combout => \idex|pctemp[0]~feeder_combout\);

-- Location: FF_X3_Y36_N5
\idex|pctemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(0));

-- Location: LCCOMB_X1_Y32_N12
\idex|pctemp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[1]~feeder_combout\ = \PC|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(1),
	combout => \idex|pctemp[1]~feeder_combout\);

-- Location: FF_X1_Y32_N13
\idex|pctemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(1));

-- Location: FF_X4_Y32_N1
\idex|pctemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(2));

-- Location: LCCOMB_X1_Y32_N6
\idex|pctemp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[3]~feeder_combout\ = \PC|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(3),
	combout => \idex|pctemp[3]~feeder_combout\);

-- Location: FF_X1_Y32_N7
\idex|pctemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(3));

-- Location: LCCOMB_X1_Y32_N20
\idex|pctemp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[4]~feeder_combout\ = \PC|DOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(4),
	combout => \idex|pctemp[4]~feeder_combout\);

-- Location: FF_X1_Y32_N21
\idex|pctemp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(4));

-- Location: FF_X1_Y32_N23
\idex|pctemp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(5));

-- Location: LCCOMB_X1_Y32_N24
\idex|pctemp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[6]~feeder_combout\ = \PC|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(6),
	combout => \idex|pctemp[6]~feeder_combout\);

-- Location: FF_X1_Y32_N25
\idex|pctemp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(6));

-- Location: FF_X1_Y32_N19
\idex|pctemp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(7));

-- Location: LCCOMB_X1_Y32_N28
\idex|pctemp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[8]~feeder_combout\ = \PC|DOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(8),
	combout => \idex|pctemp[8]~feeder_combout\);

-- Location: FF_X1_Y32_N29
\idex|pctemp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(8));

-- Location: LCCOMB_X1_Y32_N14
\idex|pctemp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[9]~feeder_combout\ = \PC|DOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(9),
	combout => \idex|pctemp[9]~feeder_combout\);

-- Location: FF_X1_Y32_N15
\idex|pctemp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(9));

-- Location: FF_X1_Y32_N17
\idex|pctemp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(10));

-- Location: LCCOMB_X1_Y32_N2
\idex|pctemp[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[11]~feeder_combout\ = \PC|DOUT\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(11),
	combout => \idex|pctemp[11]~feeder_combout\);

-- Location: FF_X1_Y32_N3
\idex|pctemp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(11));

-- Location: FF_X1_Y32_N1
\idex|pctemp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(12));

-- Location: LCCOMB_X1_Y32_N10
\idex|pctemp[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[13]~feeder_combout\ = \PC|DOUT\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(13),
	combout => \idex|pctemp[13]~feeder_combout\);

-- Location: FF_X1_Y32_N11
\idex|pctemp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(13));

-- Location: FF_X1_Y32_N5
\idex|pctemp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(14));

-- Location: LCCOMB_X1_Y32_N30
\idex|pctemp[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[15]~feeder_combout\ = \PC|DOUT\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(15),
	combout => \idex|pctemp[15]~feeder_combout\);

-- Location: FF_X1_Y32_N31
\idex|pctemp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(15));

-- Location: LCCOMB_X1_Y27_N0
\idex|pctemp[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[16]~feeder_combout\ = \PC|DOUT\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(16),
	combout => \idex|pctemp[16]~feeder_combout\);

-- Location: FF_X1_Y27_N1
\idex|pctemp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(16));

-- Location: LCCOMB_X1_Y27_N6
\idex|pctemp[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[17]~feeder_combout\ = \PC|DOUT\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|DOUT\(17),
	combout => \idex|pctemp[17]~feeder_combout\);

-- Location: FF_X1_Y27_N7
\idex|pctemp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(17));

-- Location: LCCOMB_X1_Y27_N4
\idex|pctemp[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[18]~feeder_combout\ = \PC|DOUT\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(18),
	combout => \idex|pctemp[18]~feeder_combout\);

-- Location: FF_X1_Y27_N5
\idex|pctemp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(18));

-- Location: FF_X1_Y27_N11
\idex|pctemp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(19));

-- Location: LCCOMB_X1_Y27_N8
\idex|pctemp[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[20]~feeder_combout\ = \PC|DOUT\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(20),
	combout => \idex|pctemp[20]~feeder_combout\);

-- Location: FF_X1_Y27_N9
\idex|pctemp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(20));

-- Location: LCCOMB_X1_Y27_N14
\idex|pctemp[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[21]~feeder_combout\ = \PC|DOUT\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(21),
	combout => \idex|pctemp[21]~feeder_combout\);

-- Location: FF_X1_Y27_N15
\idex|pctemp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(21));

-- Location: FF_X1_Y27_N13
\idex|pctemp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(22));

-- Location: LCCOMB_X1_Y27_N22
\idex|pctemp[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[23]~feeder_combout\ = \PC|DOUT\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(23),
	combout => \idex|pctemp[23]~feeder_combout\);

-- Location: FF_X1_Y27_N23
\idex|pctemp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(23));

-- Location: LCCOMB_X1_Y27_N24
\idex|pctemp[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[24]~feeder_combout\ = \PC|DOUT\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(24),
	combout => \idex|pctemp[24]~feeder_combout\);

-- Location: FF_X1_Y27_N25
\idex|pctemp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(24));

-- Location: FF_X1_Y27_N19
\idex|pctemp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(25));

-- Location: FF_X1_Y27_N29
\idex|pctemp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PC|DOUT\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(26));

-- Location: LCCOMB_X1_Y27_N26
\idex|pctemp[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[27]~feeder_combout\ = \PC|DOUT\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(27),
	combout => \idex|pctemp[27]~feeder_combout\);

-- Location: FF_X1_Y27_N27
\idex|pctemp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(27));

-- Location: LCCOMB_X1_Y27_N16
\idex|pctemp[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[28]~feeder_combout\ = \PC|DOUT\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(28),
	combout => \idex|pctemp[28]~feeder_combout\);

-- Location: FF_X1_Y27_N17
\idex|pctemp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(28));

-- Location: LCCOMB_X1_Y27_N2
\idex|pctemp[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[29]~feeder_combout\ = \PC|DOUT\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(29),
	combout => \idex|pctemp[29]~feeder_combout\);

-- Location: FF_X1_Y27_N3
\idex|pctemp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(29));

-- Location: LCCOMB_X1_Y27_N20
\idex|pctemp[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[30]~feeder_combout\ = \PC|DOUT\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(30),
	combout => \idex|pctemp[30]~feeder_combout\);

-- Location: FF_X1_Y27_N21
\idex|pctemp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(30));

-- Location: LCCOMB_X1_Y27_N30
\idex|pctemp[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \idex|pctemp[31]~feeder_combout\ = \PC|DOUT\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(31),
	combout => \idex|pctemp[31]~feeder_combout\);

-- Location: FF_X1_Y27_N31
\idex|pctemp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \idex|pctemp[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idex|pctemp\(31));

-- Location: LCCOMB_X4_Y32_N0
\exmem|addimmtemp[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[0]~32_combout\ = (\idex|signExtendtemp\(0) & (\idex|pctemp\(0) $ (VCC))) # (!\idex|signExtendtemp\(0) & (\idex|pctemp\(0) & VCC))
-- \exmem|addimmtemp[0]~33\ = CARRY((\idex|signExtendtemp\(0) & \idex|pctemp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(0),
	datab => \idex|pctemp\(0),
	datad => VCC,
	combout => \exmem|addimmtemp[0]~32_combout\,
	cout => \exmem|addimmtemp[0]~33\);

-- Location: LCCOMB_X3_Y32_N28
\exmem|addimmtemp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[0]~feeder_combout\ = \exmem|addimmtemp[0]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exmem|addimmtemp[0]~32_combout\,
	combout => \exmem|addimmtemp[0]~feeder_combout\);

-- Location: FF_X3_Y32_N29
\exmem|addimmtemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(0));

-- Location: LCCOMB_X4_Y32_N2
\exmem|addimmtemp[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[1]~34_combout\ = (\idex|pctemp\(1) & (!\exmem|addimmtemp[0]~33\)) # (!\idex|pctemp\(1) & ((\exmem|addimmtemp[0]~33\) # (GND)))
-- \exmem|addimmtemp[1]~35\ = CARRY((!\exmem|addimmtemp[0]~33\) # (!\idex|pctemp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(1),
	datad => VCC,
	cin => \exmem|addimmtemp[0]~33\,
	combout => \exmem|addimmtemp[1]~34_combout\,
	cout => \exmem|addimmtemp[1]~35\);

-- Location: FF_X4_Y32_N3
\exmem|addimmtemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(1));

-- Location: LCCOMB_X4_Y32_N4
\exmem|addimmtemp[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[2]~36_combout\ = ((\idex|signExtendtemp\(2) $ (\idex|pctemp\(2) $ (!\exmem|addimmtemp[1]~35\)))) # (GND)
-- \exmem|addimmtemp[2]~37\ = CARRY((\idex|signExtendtemp\(2) & ((\idex|pctemp\(2)) # (!\exmem|addimmtemp[1]~35\))) # (!\idex|signExtendtemp\(2) & (\idex|pctemp\(2) & !\exmem|addimmtemp[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(2),
	datab => \idex|pctemp\(2),
	datad => VCC,
	cin => \exmem|addimmtemp[1]~35\,
	combout => \exmem|addimmtemp[2]~36_combout\,
	cout => \exmem|addimmtemp[2]~37\);

-- Location: FF_X4_Y32_N5
\exmem|addimmtemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(2));

-- Location: LCCOMB_X4_Y32_N6
\exmem|addimmtemp[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[3]~38_combout\ = (\idex|pctemp\(3) & ((\idex|signExtendtemp\(3) & (\exmem|addimmtemp[2]~37\ & VCC)) # (!\idex|signExtendtemp\(3) & (!\exmem|addimmtemp[2]~37\)))) # (!\idex|pctemp\(3) & ((\idex|signExtendtemp\(3) & 
-- (!\exmem|addimmtemp[2]~37\)) # (!\idex|signExtendtemp\(3) & ((\exmem|addimmtemp[2]~37\) # (GND)))))
-- \exmem|addimmtemp[3]~39\ = CARRY((\idex|pctemp\(3) & (!\idex|signExtendtemp\(3) & !\exmem|addimmtemp[2]~37\)) # (!\idex|pctemp\(3) & ((!\exmem|addimmtemp[2]~37\) # (!\idex|signExtendtemp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(3),
	datab => \idex|signExtendtemp\(3),
	datad => VCC,
	cin => \exmem|addimmtemp[2]~37\,
	combout => \exmem|addimmtemp[3]~38_combout\,
	cout => \exmem|addimmtemp[3]~39\);

-- Location: FF_X4_Y32_N7
\exmem|addimmtemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(3));

-- Location: LCCOMB_X4_Y32_N8
\exmem|addimmtemp[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[4]~40_combout\ = (\idex|pctemp\(4) & (\exmem|addimmtemp[3]~39\ $ (GND))) # (!\idex|pctemp\(4) & (!\exmem|addimmtemp[3]~39\ & VCC))
-- \exmem|addimmtemp[4]~41\ = CARRY((\idex|pctemp\(4) & !\exmem|addimmtemp[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(4),
	datad => VCC,
	cin => \exmem|addimmtemp[3]~39\,
	combout => \exmem|addimmtemp[4]~40_combout\,
	cout => \exmem|addimmtemp[4]~41\);

-- Location: FF_X4_Y32_N9
\exmem|addimmtemp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(4));

-- Location: LCCOMB_X4_Y32_N10
\exmem|addimmtemp[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[5]~42_combout\ = (\idex|signExtendtemp\(5) & ((\idex|pctemp\(5) & (\exmem|addimmtemp[4]~41\ & VCC)) # (!\idex|pctemp\(5) & (!\exmem|addimmtemp[4]~41\)))) # (!\idex|signExtendtemp\(5) & ((\idex|pctemp\(5) & (!\exmem|addimmtemp[4]~41\)) # 
-- (!\idex|pctemp\(5) & ((\exmem|addimmtemp[4]~41\) # (GND)))))
-- \exmem|addimmtemp[5]~43\ = CARRY((\idex|signExtendtemp\(5) & (!\idex|pctemp\(5) & !\exmem|addimmtemp[4]~41\)) # (!\idex|signExtendtemp\(5) & ((!\exmem|addimmtemp[4]~41\) # (!\idex|pctemp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(5),
	datab => \idex|pctemp\(5),
	datad => VCC,
	cin => \exmem|addimmtemp[4]~41\,
	combout => \exmem|addimmtemp[5]~42_combout\,
	cout => \exmem|addimmtemp[5]~43\);

-- Location: FF_X4_Y32_N11
\exmem|addimmtemp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(5));

-- Location: LCCOMB_X4_Y32_N12
\exmem|addimmtemp[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[6]~44_combout\ = (\idex|pctemp\(6) & (\exmem|addimmtemp[5]~43\ $ (GND))) # (!\idex|pctemp\(6) & (!\exmem|addimmtemp[5]~43\ & VCC))
-- \exmem|addimmtemp[6]~45\ = CARRY((\idex|pctemp\(6) & !\exmem|addimmtemp[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(6),
	datad => VCC,
	cin => \exmem|addimmtemp[5]~43\,
	combout => \exmem|addimmtemp[6]~44_combout\,
	cout => \exmem|addimmtemp[6]~45\);

-- Location: FF_X4_Y32_N13
\exmem|addimmtemp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(6));

-- Location: LCCOMB_X4_Y32_N14
\exmem|addimmtemp[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[7]~46_combout\ = (\idex|signExtendtemp\(5) & ((\idex|pctemp\(7) & (\exmem|addimmtemp[6]~45\ & VCC)) # (!\idex|pctemp\(7) & (!\exmem|addimmtemp[6]~45\)))) # (!\idex|signExtendtemp\(5) & ((\idex|pctemp\(7) & (!\exmem|addimmtemp[6]~45\)) # 
-- (!\idex|pctemp\(7) & ((\exmem|addimmtemp[6]~45\) # (GND)))))
-- \exmem|addimmtemp[7]~47\ = CARRY((\idex|signExtendtemp\(5) & (!\idex|pctemp\(7) & !\exmem|addimmtemp[6]~45\)) # (!\idex|signExtendtemp\(5) & ((!\exmem|addimmtemp[6]~45\) # (!\idex|pctemp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(5),
	datab => \idex|pctemp\(7),
	datad => VCC,
	cin => \exmem|addimmtemp[6]~45\,
	combout => \exmem|addimmtemp[7]~46_combout\,
	cout => \exmem|addimmtemp[7]~47\);

-- Location: FF_X4_Y32_N15
\exmem|addimmtemp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[7]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(7));

-- Location: LCCOMB_X4_Y32_N16
\exmem|addimmtemp[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[8]~48_combout\ = ((\idex|signExtendtemp\(5) $ (\idex|pctemp\(8) $ (!\exmem|addimmtemp[7]~47\)))) # (GND)
-- \exmem|addimmtemp[8]~49\ = CARRY((\idex|signExtendtemp\(5) & ((\idex|pctemp\(8)) # (!\exmem|addimmtemp[7]~47\))) # (!\idex|signExtendtemp\(5) & (\idex|pctemp\(8) & !\exmem|addimmtemp[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(5),
	datab => \idex|pctemp\(8),
	datad => VCC,
	cin => \exmem|addimmtemp[7]~47\,
	combout => \exmem|addimmtemp[8]~48_combout\,
	cout => \exmem|addimmtemp[8]~49\);

-- Location: FF_X4_Y32_N17
\exmem|addimmtemp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[8]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(8));

-- Location: LCCOMB_X4_Y32_N18
\exmem|addimmtemp[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[9]~50_combout\ = (\idex|signExtendtemp\(5) & ((\idex|pctemp\(9) & (\exmem|addimmtemp[8]~49\ & VCC)) # (!\idex|pctemp\(9) & (!\exmem|addimmtemp[8]~49\)))) # (!\idex|signExtendtemp\(5) & ((\idex|pctemp\(9) & (!\exmem|addimmtemp[8]~49\)) # 
-- (!\idex|pctemp\(9) & ((\exmem|addimmtemp[8]~49\) # (GND)))))
-- \exmem|addimmtemp[9]~51\ = CARRY((\idex|signExtendtemp\(5) & (!\idex|pctemp\(9) & !\exmem|addimmtemp[8]~49\)) # (!\idex|signExtendtemp\(5) & ((!\exmem|addimmtemp[8]~49\) # (!\idex|pctemp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(5),
	datab => \idex|pctemp\(9),
	datad => VCC,
	cin => \exmem|addimmtemp[8]~49\,
	combout => \exmem|addimmtemp[9]~50_combout\,
	cout => \exmem|addimmtemp[9]~51\);

-- Location: FF_X4_Y32_N19
\exmem|addimmtemp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[9]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(9));

-- Location: LCCOMB_X4_Y32_N20
\exmem|addimmtemp[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[10]~52_combout\ = ((\idex|signExtendtemp\(5) $ (\idex|pctemp\(10) $ (!\exmem|addimmtemp[9]~51\)))) # (GND)
-- \exmem|addimmtemp[10]~53\ = CARRY((\idex|signExtendtemp\(5) & ((\idex|pctemp\(10)) # (!\exmem|addimmtemp[9]~51\))) # (!\idex|signExtendtemp\(5) & (\idex|pctemp\(10) & !\exmem|addimmtemp[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|signExtendtemp\(5),
	datab => \idex|pctemp\(10),
	datad => VCC,
	cin => \exmem|addimmtemp[9]~51\,
	combout => \exmem|addimmtemp[10]~52_combout\,
	cout => \exmem|addimmtemp[10]~53\);

-- Location: FF_X4_Y32_N21
\exmem|addimmtemp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[10]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(10));

-- Location: LCCOMB_X4_Y32_N22
\exmem|addimmtemp[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[11]~54_combout\ = (\idex|pctemp\(11) & (!\exmem|addimmtemp[10]~53\)) # (!\idex|pctemp\(11) & ((\exmem|addimmtemp[10]~53\) # (GND)))
-- \exmem|addimmtemp[11]~55\ = CARRY((!\exmem|addimmtemp[10]~53\) # (!\idex|pctemp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(11),
	datad => VCC,
	cin => \exmem|addimmtemp[10]~53\,
	combout => \exmem|addimmtemp[11]~54_combout\,
	cout => \exmem|addimmtemp[11]~55\);

-- Location: FF_X4_Y32_N23
\exmem|addimmtemp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(11));

-- Location: LCCOMB_X4_Y32_N24
\exmem|addimmtemp[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[12]~56_combout\ = (\idex|pctemp\(12) & (\exmem|addimmtemp[11]~55\ $ (GND))) # (!\idex|pctemp\(12) & (!\exmem|addimmtemp[11]~55\ & VCC))
-- \exmem|addimmtemp[12]~57\ = CARRY((\idex|pctemp\(12) & !\exmem|addimmtemp[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(12),
	datad => VCC,
	cin => \exmem|addimmtemp[11]~55\,
	combout => \exmem|addimmtemp[12]~56_combout\,
	cout => \exmem|addimmtemp[12]~57\);

-- Location: FF_X4_Y32_N25
\exmem|addimmtemp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(12));

-- Location: LCCOMB_X4_Y32_N26
\exmem|addimmtemp[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[13]~58_combout\ = (\idex|pctemp\(13) & (!\exmem|addimmtemp[12]~57\)) # (!\idex|pctemp\(13) & ((\exmem|addimmtemp[12]~57\) # (GND)))
-- \exmem|addimmtemp[13]~59\ = CARRY((!\exmem|addimmtemp[12]~57\) # (!\idex|pctemp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(13),
	datad => VCC,
	cin => \exmem|addimmtemp[12]~57\,
	combout => \exmem|addimmtemp[13]~58_combout\,
	cout => \exmem|addimmtemp[13]~59\);

-- Location: FF_X4_Y32_N27
\exmem|addimmtemp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(13));

-- Location: LCCOMB_X4_Y32_N28
\exmem|addimmtemp[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[14]~60_combout\ = (\idex|pctemp\(14) & (\exmem|addimmtemp[13]~59\ $ (GND))) # (!\idex|pctemp\(14) & (!\exmem|addimmtemp[13]~59\ & VCC))
-- \exmem|addimmtemp[14]~61\ = CARRY((\idex|pctemp\(14) & !\exmem|addimmtemp[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(14),
	datad => VCC,
	cin => \exmem|addimmtemp[13]~59\,
	combout => \exmem|addimmtemp[14]~60_combout\,
	cout => \exmem|addimmtemp[14]~61\);

-- Location: FF_X4_Y32_N29
\exmem|addimmtemp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(14));

-- Location: LCCOMB_X4_Y32_N30
\exmem|addimmtemp[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[15]~62_combout\ = (\idex|pctemp\(15) & (!\exmem|addimmtemp[14]~61\)) # (!\idex|pctemp\(15) & ((\exmem|addimmtemp[14]~61\) # (GND)))
-- \exmem|addimmtemp[15]~63\ = CARRY((!\exmem|addimmtemp[14]~61\) # (!\idex|pctemp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(15),
	datad => VCC,
	cin => \exmem|addimmtemp[14]~61\,
	combout => \exmem|addimmtemp[15]~62_combout\,
	cout => \exmem|addimmtemp[15]~63\);

-- Location: FF_X4_Y32_N31
\exmem|addimmtemp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[15]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(15));

-- Location: LCCOMB_X4_Y31_N0
\exmem|addimmtemp[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[16]~64_combout\ = (\idex|pctemp\(16) & (\exmem|addimmtemp[15]~63\ $ (GND))) # (!\idex|pctemp\(16) & (!\exmem|addimmtemp[15]~63\ & VCC))
-- \exmem|addimmtemp[16]~65\ = CARRY((\idex|pctemp\(16) & !\exmem|addimmtemp[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(16),
	datad => VCC,
	cin => \exmem|addimmtemp[15]~63\,
	combout => \exmem|addimmtemp[16]~64_combout\,
	cout => \exmem|addimmtemp[16]~65\);

-- Location: FF_X4_Y31_N1
\exmem|addimmtemp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(16));

-- Location: LCCOMB_X4_Y31_N2
\exmem|addimmtemp[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[17]~66_combout\ = (\idex|pctemp\(17) & (!\exmem|addimmtemp[16]~65\)) # (!\idex|pctemp\(17) & ((\exmem|addimmtemp[16]~65\) # (GND)))
-- \exmem|addimmtemp[17]~67\ = CARRY((!\exmem|addimmtemp[16]~65\) # (!\idex|pctemp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(17),
	datad => VCC,
	cin => \exmem|addimmtemp[16]~65\,
	combout => \exmem|addimmtemp[17]~66_combout\,
	cout => \exmem|addimmtemp[17]~67\);

-- Location: FF_X4_Y31_N3
\exmem|addimmtemp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[17]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(17));

-- Location: LCCOMB_X4_Y31_N4
\exmem|addimmtemp[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[18]~68_combout\ = (\idex|pctemp\(18) & (\exmem|addimmtemp[17]~67\ $ (GND))) # (!\idex|pctemp\(18) & (!\exmem|addimmtemp[17]~67\ & VCC))
-- \exmem|addimmtemp[18]~69\ = CARRY((\idex|pctemp\(18) & !\exmem|addimmtemp[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(18),
	datad => VCC,
	cin => \exmem|addimmtemp[17]~67\,
	combout => \exmem|addimmtemp[18]~68_combout\,
	cout => \exmem|addimmtemp[18]~69\);

-- Location: FF_X4_Y31_N5
\exmem|addimmtemp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(18));

-- Location: LCCOMB_X4_Y31_N6
\exmem|addimmtemp[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[19]~70_combout\ = (\idex|pctemp\(19) & (!\exmem|addimmtemp[18]~69\)) # (!\idex|pctemp\(19) & ((\exmem|addimmtemp[18]~69\) # (GND)))
-- \exmem|addimmtemp[19]~71\ = CARRY((!\exmem|addimmtemp[18]~69\) # (!\idex|pctemp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(19),
	datad => VCC,
	cin => \exmem|addimmtemp[18]~69\,
	combout => \exmem|addimmtemp[19]~70_combout\,
	cout => \exmem|addimmtemp[19]~71\);

-- Location: FF_X4_Y31_N7
\exmem|addimmtemp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[19]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(19));

-- Location: LCCOMB_X4_Y31_N8
\exmem|addimmtemp[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[20]~72_combout\ = (\idex|pctemp\(20) & (\exmem|addimmtemp[19]~71\ $ (GND))) # (!\idex|pctemp\(20) & (!\exmem|addimmtemp[19]~71\ & VCC))
-- \exmem|addimmtemp[20]~73\ = CARRY((\idex|pctemp\(20) & !\exmem|addimmtemp[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(20),
	datad => VCC,
	cin => \exmem|addimmtemp[19]~71\,
	combout => \exmem|addimmtemp[20]~72_combout\,
	cout => \exmem|addimmtemp[20]~73\);

-- Location: FF_X4_Y31_N9
\exmem|addimmtemp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[20]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(20));

-- Location: LCCOMB_X4_Y31_N10
\exmem|addimmtemp[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[21]~74_combout\ = (\idex|pctemp\(21) & (!\exmem|addimmtemp[20]~73\)) # (!\idex|pctemp\(21) & ((\exmem|addimmtemp[20]~73\) # (GND)))
-- \exmem|addimmtemp[21]~75\ = CARRY((!\exmem|addimmtemp[20]~73\) # (!\idex|pctemp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(21),
	datad => VCC,
	cin => \exmem|addimmtemp[20]~73\,
	combout => \exmem|addimmtemp[21]~74_combout\,
	cout => \exmem|addimmtemp[21]~75\);

-- Location: FF_X4_Y31_N11
\exmem|addimmtemp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[21]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(21));

-- Location: LCCOMB_X4_Y31_N12
\exmem|addimmtemp[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[22]~76_combout\ = (\idex|pctemp\(22) & (\exmem|addimmtemp[21]~75\ $ (GND))) # (!\idex|pctemp\(22) & (!\exmem|addimmtemp[21]~75\ & VCC))
-- \exmem|addimmtemp[22]~77\ = CARRY((\idex|pctemp\(22) & !\exmem|addimmtemp[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(22),
	datad => VCC,
	cin => \exmem|addimmtemp[21]~75\,
	combout => \exmem|addimmtemp[22]~76_combout\,
	cout => \exmem|addimmtemp[22]~77\);

-- Location: FF_X4_Y31_N13
\exmem|addimmtemp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[22]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(22));

-- Location: LCCOMB_X4_Y31_N14
\exmem|addimmtemp[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[23]~78_combout\ = (\idex|pctemp\(23) & (!\exmem|addimmtemp[22]~77\)) # (!\idex|pctemp\(23) & ((\exmem|addimmtemp[22]~77\) # (GND)))
-- \exmem|addimmtemp[23]~79\ = CARRY((!\exmem|addimmtemp[22]~77\) # (!\idex|pctemp\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(23),
	datad => VCC,
	cin => \exmem|addimmtemp[22]~77\,
	combout => \exmem|addimmtemp[23]~78_combout\,
	cout => \exmem|addimmtemp[23]~79\);

-- Location: FF_X4_Y31_N15
\exmem|addimmtemp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[23]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(23));

-- Location: LCCOMB_X4_Y31_N16
\exmem|addimmtemp[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[24]~80_combout\ = (\idex|pctemp\(24) & (\exmem|addimmtemp[23]~79\ $ (GND))) # (!\idex|pctemp\(24) & (!\exmem|addimmtemp[23]~79\ & VCC))
-- \exmem|addimmtemp[24]~81\ = CARRY((\idex|pctemp\(24) & !\exmem|addimmtemp[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(24),
	datad => VCC,
	cin => \exmem|addimmtemp[23]~79\,
	combout => \exmem|addimmtemp[24]~80_combout\,
	cout => \exmem|addimmtemp[24]~81\);

-- Location: FF_X4_Y31_N17
\exmem|addimmtemp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[24]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(24));

-- Location: LCCOMB_X4_Y31_N18
\exmem|addimmtemp[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[25]~82_combout\ = (\idex|pctemp\(25) & (!\exmem|addimmtemp[24]~81\)) # (!\idex|pctemp\(25) & ((\exmem|addimmtemp[24]~81\) # (GND)))
-- \exmem|addimmtemp[25]~83\ = CARRY((!\exmem|addimmtemp[24]~81\) # (!\idex|pctemp\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(25),
	datad => VCC,
	cin => \exmem|addimmtemp[24]~81\,
	combout => \exmem|addimmtemp[25]~82_combout\,
	cout => \exmem|addimmtemp[25]~83\);

-- Location: FF_X4_Y31_N19
\exmem|addimmtemp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[25]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(25));

-- Location: LCCOMB_X4_Y31_N20
\exmem|addimmtemp[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[26]~84_combout\ = (\idex|pctemp\(26) & (\exmem|addimmtemp[25]~83\ $ (GND))) # (!\idex|pctemp\(26) & (!\exmem|addimmtemp[25]~83\ & VCC))
-- \exmem|addimmtemp[26]~85\ = CARRY((\idex|pctemp\(26) & !\exmem|addimmtemp[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(26),
	datad => VCC,
	cin => \exmem|addimmtemp[25]~83\,
	combout => \exmem|addimmtemp[26]~84_combout\,
	cout => \exmem|addimmtemp[26]~85\);

-- Location: FF_X4_Y31_N21
\exmem|addimmtemp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[26]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(26));

-- Location: LCCOMB_X4_Y31_N22
\exmem|addimmtemp[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[27]~86_combout\ = (\idex|pctemp\(27) & (!\exmem|addimmtemp[26]~85\)) # (!\idex|pctemp\(27) & ((\exmem|addimmtemp[26]~85\) # (GND)))
-- \exmem|addimmtemp[27]~87\ = CARRY((!\exmem|addimmtemp[26]~85\) # (!\idex|pctemp\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \idex|pctemp\(27),
	datad => VCC,
	cin => \exmem|addimmtemp[26]~85\,
	combout => \exmem|addimmtemp[27]~86_combout\,
	cout => \exmem|addimmtemp[27]~87\);

-- Location: FF_X4_Y31_N23
\exmem|addimmtemp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[27]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(27));

-- Location: LCCOMB_X4_Y31_N24
\exmem|addimmtemp[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[28]~88_combout\ = (\idex|pctemp\(28) & (\exmem|addimmtemp[27]~87\ $ (GND))) # (!\idex|pctemp\(28) & (!\exmem|addimmtemp[27]~87\ & VCC))
-- \exmem|addimmtemp[28]~89\ = CARRY((\idex|pctemp\(28) & !\exmem|addimmtemp[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(28),
	datad => VCC,
	cin => \exmem|addimmtemp[27]~87\,
	combout => \exmem|addimmtemp[28]~88_combout\,
	cout => \exmem|addimmtemp[28]~89\);

-- Location: FF_X4_Y31_N25
\exmem|addimmtemp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(28));

-- Location: LCCOMB_X4_Y31_N26
\exmem|addimmtemp[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[29]~90_combout\ = (\idex|pctemp\(29) & (!\exmem|addimmtemp[28]~89\)) # (!\idex|pctemp\(29) & ((\exmem|addimmtemp[28]~89\) # (GND)))
-- \exmem|addimmtemp[29]~91\ = CARRY((!\exmem|addimmtemp[28]~89\) # (!\idex|pctemp\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(29),
	datad => VCC,
	cin => \exmem|addimmtemp[28]~89\,
	combout => \exmem|addimmtemp[29]~90_combout\,
	cout => \exmem|addimmtemp[29]~91\);

-- Location: FF_X4_Y31_N27
\exmem|addimmtemp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[29]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(29));

-- Location: LCCOMB_X4_Y31_N28
\exmem|addimmtemp[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[30]~92_combout\ = (\idex|pctemp\(30) & (\exmem|addimmtemp[29]~91\ $ (GND))) # (!\idex|pctemp\(30) & (!\exmem|addimmtemp[29]~91\ & VCC))
-- \exmem|addimmtemp[30]~93\ = CARRY((\idex|pctemp\(30) & !\exmem|addimmtemp[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \idex|pctemp\(30),
	datad => VCC,
	cin => \exmem|addimmtemp[29]~91\,
	combout => \exmem|addimmtemp[30]~92_combout\,
	cout => \exmem|addimmtemp[30]~93\);

-- Location: FF_X4_Y31_N29
\exmem|addimmtemp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[30]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(30));

-- Location: LCCOMB_X4_Y31_N30
\exmem|addimmtemp[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \exmem|addimmtemp[31]~94_combout\ = \exmem|addimmtemp[30]~93\ $ (\idex|pctemp\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \idex|pctemp\(31),
	cin => \exmem|addimmtemp[30]~93\,
	combout => \exmem|addimmtemp[31]~94_combout\);

-- Location: FF_X4_Y31_N31
\exmem|addimmtemp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \exmem|addimmtemp[31]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \exmem|addimmtemp\(31));

-- Location: IOIBUF_X7_Y73_N15
\regTestEnd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(4),
	o => \regTestEnd[4]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\memTestEnd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(4),
	o => \memTestEnd[4]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\memTestEnd[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(5),
	o => \memTestEnd[5]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\memTestEnd[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(6),
	o => \memTestEnd[6]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\memTestEnd[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(7),
	o => \memTestEnd[7]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\memTestEnd[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(8),
	o => \memTestEnd[8]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\memTestEnd[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(9),
	o => \memTestEnd[9]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\memTestEnd[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(10),
	o => \memTestEnd[10]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\memTestEnd[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(11),
	o => \memTestEnd[11]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\memTestEnd[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(12),
	o => \memTestEnd[12]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\memTestEnd[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(13),
	o => \memTestEnd[13]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\memTestEnd[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(14),
	o => \memTestEnd[14]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\memTestEnd[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(15),
	o => \memTestEnd[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\memTestEnd[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(16),
	o => \memTestEnd[16]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\memTestEnd[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(17),
	o => \memTestEnd[17]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\memTestEnd[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(18),
	o => \memTestEnd[18]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\memTestEnd[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(19),
	o => \memTestEnd[19]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\memTestEnd[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(20),
	o => \memTestEnd[20]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\memTestEnd[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(21),
	o => \memTestEnd[21]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\memTestEnd[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(22),
	o => \memTestEnd[22]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\memTestEnd[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(23),
	o => \memTestEnd[23]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\memTestEnd[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(24),
	o => \memTestEnd[24]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\memTestEnd[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(25),
	o => \memTestEnd[25]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\memTestEnd[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(26),
	o => \memTestEnd[26]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\memTestEnd[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(27),
	o => \memTestEnd[27]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\memTestEnd[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(28),
	o => \memTestEnd[28]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\memTestEnd[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(29),
	o => \memTestEnd[29]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\memTestEnd[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(30),
	o => \memTestEnd[30]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\memTestEnd[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(31),
	o => \memTestEnd[31]~input_o\);

ww_regTestOut(0) <= \regTestOut[0]~output_o\;

ww_regTestOut(1) <= \regTestOut[1]~output_o\;

ww_regTestOut(2) <= \regTestOut[2]~output_o\;

ww_regTestOut(3) <= \regTestOut[3]~output_o\;

ww_regTestOut(4) <= \regTestOut[4]~output_o\;

ww_regTestOut(5) <= \regTestOut[5]~output_o\;

ww_regTestOut(6) <= \regTestOut[6]~output_o\;

ww_regTestOut(7) <= \regTestOut[7]~output_o\;

ww_regTestOut(8) <= \regTestOut[8]~output_o\;

ww_regTestOut(9) <= \regTestOut[9]~output_o\;

ww_regTestOut(10) <= \regTestOut[10]~output_o\;

ww_regTestOut(11) <= \regTestOut[11]~output_o\;

ww_regTestOut(12) <= \regTestOut[12]~output_o\;

ww_regTestOut(13) <= \regTestOut[13]~output_o\;

ww_regTestOut(14) <= \regTestOut[14]~output_o\;

ww_regTestOut(15) <= \regTestOut[15]~output_o\;

ww_regTestOut(16) <= \regTestOut[16]~output_o\;

ww_regTestOut(17) <= \regTestOut[17]~output_o\;

ww_regTestOut(18) <= \regTestOut[18]~output_o\;

ww_regTestOut(19) <= \regTestOut[19]~output_o\;

ww_regTestOut(20) <= \regTestOut[20]~output_o\;

ww_regTestOut(21) <= \regTestOut[21]~output_o\;

ww_regTestOut(22) <= \regTestOut[22]~output_o\;

ww_regTestOut(23) <= \regTestOut[23]~output_o\;

ww_regTestOut(24) <= \regTestOut[24]~output_o\;

ww_regTestOut(25) <= \regTestOut[25]~output_o\;

ww_regTestOut(26) <= \regTestOut[26]~output_o\;

ww_regTestOut(27) <= \regTestOut[27]~output_o\;

ww_regTestOut(28) <= \regTestOut[28]~output_o\;

ww_regTestOut(29) <= \regTestOut[29]~output_o\;

ww_regTestOut(30) <= \regTestOut[30]~output_o\;

ww_regTestOut(31) <= \regTestOut[31]~output_o\;

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

ww_readData1Out(0) <= \readData1Out[0]~output_o\;

ww_readData1Out(1) <= \readData1Out[1]~output_o\;

ww_readData1Out(2) <= \readData1Out[2]~output_o\;

ww_readData1Out(3) <= \readData1Out[3]~output_o\;

ww_readData1Out(4) <= \readData1Out[4]~output_o\;

ww_readData1Out(5) <= \readData1Out[5]~output_o\;

ww_readData1Out(6) <= \readData1Out[6]~output_o\;

ww_readData1Out(7) <= \readData1Out[7]~output_o\;

ww_readData1Out(8) <= \readData1Out[8]~output_o\;

ww_readData1Out(9) <= \readData1Out[9]~output_o\;

ww_readData1Out(10) <= \readData1Out[10]~output_o\;

ww_readData1Out(11) <= \readData1Out[11]~output_o\;

ww_readData1Out(12) <= \readData1Out[12]~output_o\;

ww_readData1Out(13) <= \readData1Out[13]~output_o\;

ww_readData1Out(14) <= \readData1Out[14]~output_o\;

ww_readData1Out(15) <= \readData1Out[15]~output_o\;

ww_readData1Out(16) <= \readData1Out[16]~output_o\;

ww_readData1Out(17) <= \readData1Out[17]~output_o\;

ww_readData1Out(18) <= \readData1Out[18]~output_o\;

ww_readData1Out(19) <= \readData1Out[19]~output_o\;

ww_readData1Out(20) <= \readData1Out[20]~output_o\;

ww_readData1Out(21) <= \readData1Out[21]~output_o\;

ww_readData1Out(22) <= \readData1Out[22]~output_o\;

ww_readData1Out(23) <= \readData1Out[23]~output_o\;

ww_readData1Out(24) <= \readData1Out[24]~output_o\;

ww_readData1Out(25) <= \readData1Out[25]~output_o\;

ww_readData1Out(26) <= \readData1Out[26]~output_o\;

ww_readData1Out(27) <= \readData1Out[27]~output_o\;

ww_readData1Out(28) <= \readData1Out[28]~output_o\;

ww_readData1Out(29) <= \readData1Out[29]~output_o\;

ww_readData1Out(30) <= \readData1Out[30]~output_o\;

ww_readData1Out(31) <= \readData1Out[31]~output_o\;

ww_readData2Out(0) <= \readData2Out[0]~output_o\;

ww_readData2Out(1) <= \readData2Out[1]~output_o\;

ww_readData2Out(2) <= \readData2Out[2]~output_o\;

ww_readData2Out(3) <= \readData2Out[3]~output_o\;

ww_readData2Out(4) <= \readData2Out[4]~output_o\;

ww_readData2Out(5) <= \readData2Out[5]~output_o\;

ww_readData2Out(6) <= \readData2Out[6]~output_o\;

ww_readData2Out(7) <= \readData2Out[7]~output_o\;

ww_readData2Out(8) <= \readData2Out[8]~output_o\;

ww_readData2Out(9) <= \readData2Out[9]~output_o\;

ww_readData2Out(10) <= \readData2Out[10]~output_o\;

ww_readData2Out(11) <= \readData2Out[11]~output_o\;

ww_readData2Out(12) <= \readData2Out[12]~output_o\;

ww_readData2Out(13) <= \readData2Out[13]~output_o\;

ww_readData2Out(14) <= \readData2Out[14]~output_o\;

ww_readData2Out(15) <= \readData2Out[15]~output_o\;

ww_readData2Out(16) <= \readData2Out[16]~output_o\;

ww_readData2Out(17) <= \readData2Out[17]~output_o\;

ww_readData2Out(18) <= \readData2Out[18]~output_o\;

ww_readData2Out(19) <= \readData2Out[19]~output_o\;

ww_readData2Out(20) <= \readData2Out[20]~output_o\;

ww_readData2Out(21) <= \readData2Out[21]~output_o\;

ww_readData2Out(22) <= \readData2Out[22]~output_o\;

ww_readData2Out(23) <= \readData2Out[23]~output_o\;

ww_readData2Out(24) <= \readData2Out[24]~output_o\;

ww_readData2Out(25) <= \readData2Out[25]~output_o\;

ww_readData2Out(26) <= \readData2Out[26]~output_o\;

ww_readData2Out(27) <= \readData2Out[27]~output_o\;

ww_readData2Out(28) <= \readData2Out[28]~output_o\;

ww_readData2Out(29) <= \readData2Out[29]~output_o\;

ww_readData2Out(30) <= \readData2Out[30]~output_o\;

ww_readData2Out(31) <= \readData2Out[31]~output_o\;

ww_writeData(0) <= \writeData[0]~output_o\;

ww_writeData(1) <= \writeData[1]~output_o\;

ww_writeData(2) <= \writeData[2]~output_o\;

ww_writeData(3) <= \writeData[3]~output_o\;

ww_writeData(4) <= \writeData[4]~output_o\;

ww_writeData(5) <= \writeData[5]~output_o\;

ww_writeData(6) <= \writeData[6]~output_o\;

ww_writeData(7) <= \writeData[7]~output_o\;

ww_writeData(8) <= \writeData[8]~output_o\;

ww_writeData(9) <= \writeData[9]~output_o\;

ww_writeData(10) <= \writeData[10]~output_o\;

ww_writeData(11) <= \writeData[11]~output_o\;

ww_writeData(12) <= \writeData[12]~output_o\;

ww_writeData(13) <= \writeData[13]~output_o\;

ww_writeData(14) <= \writeData[14]~output_o\;

ww_writeData(15) <= \writeData[15]~output_o\;

ww_writeData(16) <= \writeData[16]~output_o\;

ww_writeData(17) <= \writeData[17]~output_o\;

ww_writeData(18) <= \writeData[18]~output_o\;

ww_writeData(19) <= \writeData[19]~output_o\;

ww_writeData(20) <= \writeData[20]~output_o\;

ww_writeData(21) <= \writeData[21]~output_o\;

ww_writeData(22) <= \writeData[22]~output_o\;

ww_writeData(23) <= \writeData[23]~output_o\;

ww_writeData(24) <= \writeData[24]~output_o\;

ww_writeData(25) <= \writeData[25]~output_o\;

ww_writeData(26) <= \writeData[26]~output_o\;

ww_writeData(27) <= \writeData[27]~output_o\;

ww_writeData(28) <= \writeData[28]~output_o\;

ww_writeData(29) <= \writeData[29]~output_o\;

ww_writeData(30) <= \writeData[30]~output_o\;

ww_writeData(31) <= \writeData[31]~output_o\;

ww_PCOutTeste(0) <= \PCOutTeste[0]~output_o\;

ww_PCOutTeste(1) <= \PCOutTeste[1]~output_o\;

ww_PCOutTeste(2) <= \PCOutTeste[2]~output_o\;

ww_PCOutTeste(3) <= \PCOutTeste[3]~output_o\;

ww_PCOutTeste(4) <= \PCOutTeste[4]~output_o\;

ww_PCOutTeste(5) <= \PCOutTeste[5]~output_o\;

ww_PCOutTeste(6) <= \PCOutTeste[6]~output_o\;

ww_PCOutTeste(7) <= \PCOutTeste[7]~output_o\;

ww_PCOutTeste(8) <= \PCOutTeste[8]~output_o\;

ww_PCOutTeste(9) <= \PCOutTeste[9]~output_o\;

ww_PCOutTeste(10) <= \PCOutTeste[10]~output_o\;

ww_PCOutTeste(11) <= \PCOutTeste[11]~output_o\;

ww_PCOutTeste(12) <= \PCOutTeste[12]~output_o\;

ww_PCOutTeste(13) <= \PCOutTeste[13]~output_o\;

ww_PCOutTeste(14) <= \PCOutTeste[14]~output_o\;

ww_PCOutTeste(15) <= \PCOutTeste[15]~output_o\;

ww_PCOutTeste(16) <= \PCOutTeste[16]~output_o\;

ww_PCOutTeste(17) <= \PCOutTeste[17]~output_o\;

ww_PCOutTeste(18) <= \PCOutTeste[18]~output_o\;

ww_PCOutTeste(19) <= \PCOutTeste[19]~output_o\;

ww_PCOutTeste(20) <= \PCOutTeste[20]~output_o\;

ww_PCOutTeste(21) <= \PCOutTeste[21]~output_o\;

ww_PCOutTeste(22) <= \PCOutTeste[22]~output_o\;

ww_PCOutTeste(23) <= \PCOutTeste[23]~output_o\;

ww_PCOutTeste(24) <= \PCOutTeste[24]~output_o\;

ww_PCOutTeste(25) <= \PCOutTeste[25]~output_o\;

ww_PCOutTeste(26) <= \PCOutTeste[26]~output_o\;

ww_PCOutTeste(27) <= \PCOutTeste[27]~output_o\;

ww_PCOutTeste(28) <= \PCOutTeste[28]~output_o\;

ww_PCOutTeste(29) <= \PCOutTeste[29]~output_o\;

ww_PCOutTeste(30) <= \PCOutTeste[30]~output_o\;

ww_PCOutTeste(31) <= \PCOutTeste[31]~output_o\;

ww_ULAINA(0) <= \ULAINA[0]~output_o\;

ww_ULAINA(1) <= \ULAINA[1]~output_o\;

ww_ULAINA(2) <= \ULAINA[2]~output_o\;

ww_ULAINA(3) <= \ULAINA[3]~output_o\;

ww_ULAINA(4) <= \ULAINA[4]~output_o\;

ww_ULAINA(5) <= \ULAINA[5]~output_o\;

ww_ULAINA(6) <= \ULAINA[6]~output_o\;

ww_ULAINA(7) <= \ULAINA[7]~output_o\;

ww_ULAINA(8) <= \ULAINA[8]~output_o\;

ww_ULAINA(9) <= \ULAINA[9]~output_o\;

ww_ULAINA(10) <= \ULAINA[10]~output_o\;

ww_ULAINA(11) <= \ULAINA[11]~output_o\;

ww_ULAINA(12) <= \ULAINA[12]~output_o\;

ww_ULAINA(13) <= \ULAINA[13]~output_o\;

ww_ULAINA(14) <= \ULAINA[14]~output_o\;

ww_ULAINA(15) <= \ULAINA[15]~output_o\;

ww_ULAINA(16) <= \ULAINA[16]~output_o\;

ww_ULAINA(17) <= \ULAINA[17]~output_o\;

ww_ULAINA(18) <= \ULAINA[18]~output_o\;

ww_ULAINA(19) <= \ULAINA[19]~output_o\;

ww_ULAINA(20) <= \ULAINA[20]~output_o\;

ww_ULAINA(21) <= \ULAINA[21]~output_o\;

ww_ULAINA(22) <= \ULAINA[22]~output_o\;

ww_ULAINA(23) <= \ULAINA[23]~output_o\;

ww_ULAINA(24) <= \ULAINA[24]~output_o\;

ww_ULAINA(25) <= \ULAINA[25]~output_o\;

ww_ULAINA(26) <= \ULAINA[26]~output_o\;

ww_ULAINA(27) <= \ULAINA[27]~output_o\;

ww_ULAINA(28) <= \ULAINA[28]~output_o\;

ww_ULAINA(29) <= \ULAINA[29]~output_o\;

ww_ULAINA(30) <= \ULAINA[30]~output_o\;

ww_ULAINA(31) <= \ULAINA[31]~output_o\;

ww_ULAINB(0) <= \ULAINB[0]~output_o\;

ww_ULAINB(1) <= \ULAINB[1]~output_o\;

ww_ULAINB(2) <= \ULAINB[2]~output_o\;

ww_ULAINB(3) <= \ULAINB[3]~output_o\;

ww_ULAINB(4) <= \ULAINB[4]~output_o\;

ww_ULAINB(5) <= \ULAINB[5]~output_o\;

ww_ULAINB(6) <= \ULAINB[6]~output_o\;

ww_ULAINB(7) <= \ULAINB[7]~output_o\;

ww_ULAINB(8) <= \ULAINB[8]~output_o\;

ww_ULAINB(9) <= \ULAINB[9]~output_o\;

ww_ULAINB(10) <= \ULAINB[10]~output_o\;

ww_ULAINB(11) <= \ULAINB[11]~output_o\;

ww_ULAINB(12) <= \ULAINB[12]~output_o\;

ww_ULAINB(13) <= \ULAINB[13]~output_o\;

ww_ULAINB(14) <= \ULAINB[14]~output_o\;

ww_ULAINB(15) <= \ULAINB[15]~output_o\;

ww_ULAINB(16) <= \ULAINB[16]~output_o\;

ww_ULAINB(17) <= \ULAINB[17]~output_o\;

ww_ULAINB(18) <= \ULAINB[18]~output_o\;

ww_ULAINB(19) <= \ULAINB[19]~output_o\;

ww_ULAINB(20) <= \ULAINB[20]~output_o\;

ww_ULAINB(21) <= \ULAINB[21]~output_o\;

ww_ULAINB(22) <= \ULAINB[22]~output_o\;

ww_ULAINB(23) <= \ULAINB[23]~output_o\;

ww_ULAINB(24) <= \ULAINB[24]~output_o\;

ww_ULAINB(25) <= \ULAINB[25]~output_o\;

ww_ULAINB(26) <= \ULAINB[26]~output_o\;

ww_ULAINB(27) <= \ULAINB[27]~output_o\;

ww_ULAINB(28) <= \ULAINB[28]~output_o\;

ww_ULAINB(29) <= \ULAINB[29]~output_o\;

ww_ULAINB(30) <= \ULAINB[30]~output_o\;

ww_ULAINB(31) <= \ULAINB[31]~output_o\;

ww_ULAOUTTESTE(0) <= \ULAOUTTESTE[0]~output_o\;

ww_ULAOUTTESTE(1) <= \ULAOUTTESTE[1]~output_o\;

ww_ULAOUTTESTE(2) <= \ULAOUTTESTE[2]~output_o\;

ww_ULAOUTTESTE(3) <= \ULAOUTTESTE[3]~output_o\;

ww_ULAOUTTESTE(4) <= \ULAOUTTESTE[4]~output_o\;

ww_ULAOUTTESTE(5) <= \ULAOUTTESTE[5]~output_o\;

ww_ULAOUTTESTE(6) <= \ULAOUTTESTE[6]~output_o\;

ww_ULAOUTTESTE(7) <= \ULAOUTTESTE[7]~output_o\;

ww_ULAOUTTESTE(8) <= \ULAOUTTESTE[8]~output_o\;

ww_ULAOUTTESTE(9) <= \ULAOUTTESTE[9]~output_o\;

ww_ULAOUTTESTE(10) <= \ULAOUTTESTE[10]~output_o\;

ww_ULAOUTTESTE(11) <= \ULAOUTTESTE[11]~output_o\;

ww_ULAOUTTESTE(12) <= \ULAOUTTESTE[12]~output_o\;

ww_ULAOUTTESTE(13) <= \ULAOUTTESTE[13]~output_o\;

ww_ULAOUTTESTE(14) <= \ULAOUTTESTE[14]~output_o\;

ww_ULAOUTTESTE(15) <= \ULAOUTTESTE[15]~output_o\;

ww_ULAOUTTESTE(16) <= \ULAOUTTESTE[16]~output_o\;

ww_ULAOUTTESTE(17) <= \ULAOUTTESTE[17]~output_o\;

ww_ULAOUTTESTE(18) <= \ULAOUTTESTE[18]~output_o\;

ww_ULAOUTTESTE(19) <= \ULAOUTTESTE[19]~output_o\;

ww_ULAOUTTESTE(20) <= \ULAOUTTESTE[20]~output_o\;

ww_ULAOUTTESTE(21) <= \ULAOUTTESTE[21]~output_o\;

ww_ULAOUTTESTE(22) <= \ULAOUTTESTE[22]~output_o\;

ww_ULAOUTTESTE(23) <= \ULAOUTTESTE[23]~output_o\;

ww_ULAOUTTESTE(24) <= \ULAOUTTESTE[24]~output_o\;

ww_ULAOUTTESTE(25) <= \ULAOUTTESTE[25]~output_o\;

ww_ULAOUTTESTE(26) <= \ULAOUTTESTE[26]~output_o\;

ww_ULAOUTTESTE(27) <= \ULAOUTTESTE[27]~output_o\;

ww_ULAOUTTESTE(28) <= \ULAOUTTESTE[28]~output_o\;

ww_ULAOUTTESTE(29) <= \ULAOUTTESTE[29]~output_o\;

ww_ULAOUTTESTE(30) <= \ULAOUTTESTE[30]~output_o\;

ww_ULAOUTTESTE(31) <= \ULAOUTTESTE[31]~output_o\;

ww_ULAOUTTESTE1(0) <= \ULAOUTTESTE1[0]~output_o\;

ww_ULAOUTTESTE1(1) <= \ULAOUTTESTE1[1]~output_o\;

ww_ULAOUTTESTE1(2) <= \ULAOUTTESTE1[2]~output_o\;

ww_ULAOUTTESTE1(3) <= \ULAOUTTESTE1[3]~output_o\;

ww_ULAOUTTESTE1(4) <= \ULAOUTTESTE1[4]~output_o\;

ww_ULAOUTTESTE1(5) <= \ULAOUTTESTE1[5]~output_o\;

ww_ULAOUTTESTE1(6) <= \ULAOUTTESTE1[6]~output_o\;

ww_ULAOUTTESTE1(7) <= \ULAOUTTESTE1[7]~output_o\;

ww_ULAOUTTESTE1(8) <= \ULAOUTTESTE1[8]~output_o\;

ww_ULAOUTTESTE1(9) <= \ULAOUTTESTE1[9]~output_o\;

ww_ULAOUTTESTE1(10) <= \ULAOUTTESTE1[10]~output_o\;

ww_ULAOUTTESTE1(11) <= \ULAOUTTESTE1[11]~output_o\;

ww_ULAOUTTESTE1(12) <= \ULAOUTTESTE1[12]~output_o\;

ww_ULAOUTTESTE1(13) <= \ULAOUTTESTE1[13]~output_o\;

ww_ULAOUTTESTE1(14) <= \ULAOUTTESTE1[14]~output_o\;

ww_ULAOUTTESTE1(15) <= \ULAOUTTESTE1[15]~output_o\;

ww_ULAOUTTESTE1(16) <= \ULAOUTTESTE1[16]~output_o\;

ww_ULAOUTTESTE1(17) <= \ULAOUTTESTE1[17]~output_o\;

ww_ULAOUTTESTE1(18) <= \ULAOUTTESTE1[18]~output_o\;

ww_ULAOUTTESTE1(19) <= \ULAOUTTESTE1[19]~output_o\;

ww_ULAOUTTESTE1(20) <= \ULAOUTTESTE1[20]~output_o\;

ww_ULAOUTTESTE1(21) <= \ULAOUTTESTE1[21]~output_o\;

ww_ULAOUTTESTE1(22) <= \ULAOUTTESTE1[22]~output_o\;

ww_ULAOUTTESTE1(23) <= \ULAOUTTESTE1[23]~output_o\;

ww_ULAOUTTESTE1(24) <= \ULAOUTTESTE1[24]~output_o\;

ww_ULAOUTTESTE1(25) <= \ULAOUTTESTE1[25]~output_o\;

ww_ULAOUTTESTE1(26) <= \ULAOUTTESTE1[26]~output_o\;

ww_ULAOUTTESTE1(27) <= \ULAOUTTESTE1[27]~output_o\;

ww_ULAOUTTESTE1(28) <= \ULAOUTTESTE1[28]~output_o\;

ww_ULAOUTTESTE1(29) <= \ULAOUTTESTE1[29]~output_o\;

ww_ULAOUTTESTE1(30) <= \ULAOUTTESTE1[30]~output_o\;

ww_ULAOUTTESTE1(31) <= \ULAOUTTESTE1[31]~output_o\;

ww_beqadder(0) <= \beqadder[0]~output_o\;

ww_beqadder(1) <= \beqadder[1]~output_o\;

ww_beqadder(2) <= \beqadder[2]~output_o\;

ww_beqadder(3) <= \beqadder[3]~output_o\;

ww_beqadder(4) <= \beqadder[4]~output_o\;

ww_beqadder(5) <= \beqadder[5]~output_o\;

ww_beqadder(6) <= \beqadder[6]~output_o\;

ww_beqadder(7) <= \beqadder[7]~output_o\;

ww_beqadder(8) <= \beqadder[8]~output_o\;

ww_beqadder(9) <= \beqadder[9]~output_o\;

ww_beqadder(10) <= \beqadder[10]~output_o\;

ww_beqadder(11) <= \beqadder[11]~output_o\;

ww_beqadder(12) <= \beqadder[12]~output_o\;

ww_beqadder(13) <= \beqadder[13]~output_o\;

ww_beqadder(14) <= \beqadder[14]~output_o\;

ww_beqadder(15) <= \beqadder[15]~output_o\;

ww_beqadder(16) <= \beqadder[16]~output_o\;

ww_beqadder(17) <= \beqadder[17]~output_o\;

ww_beqadder(18) <= \beqadder[18]~output_o\;

ww_beqadder(19) <= \beqadder[19]~output_o\;

ww_beqadder(20) <= \beqadder[20]~output_o\;

ww_beqadder(21) <= \beqadder[21]~output_o\;

ww_beqadder(22) <= \beqadder[22]~output_o\;

ww_beqadder(23) <= \beqadder[23]~output_o\;

ww_beqadder(24) <= \beqadder[24]~output_o\;

ww_beqadder(25) <= \beqadder[25]~output_o\;

ww_beqadder(26) <= \beqadder[26]~output_o\;

ww_beqadder(27) <= \beqadder[27]~output_o\;

ww_beqadder(28) <= \beqadder[28]~output_o\;

ww_beqadder(29) <= \beqadder[29]~output_o\;

ww_beqadder(30) <= \beqadder[30]~output_o\;

ww_beqadder(31) <= \beqadder[31]~output_o\;

ww_beqadder2(0) <= \beqadder2[0]~output_o\;

ww_beqadder2(1) <= \beqadder2[1]~output_o\;

ww_beqadder2(2) <= \beqadder2[2]~output_o\;

ww_beqadder2(3) <= \beqadder2[3]~output_o\;

ww_beqadder2(4) <= \beqadder2[4]~output_o\;

ww_beqadder2(5) <= \beqadder2[5]~output_o\;

ww_beqadder2(6) <= \beqadder2[6]~output_o\;

ww_beqadder2(7) <= \beqadder2[7]~output_o\;

ww_beqadder2(8) <= \beqadder2[8]~output_o\;

ww_beqadder2(9) <= \beqadder2[9]~output_o\;

ww_beqadder2(10) <= \beqadder2[10]~output_o\;

ww_beqadder2(11) <= \beqadder2[11]~output_o\;

ww_beqadder2(12) <= \beqadder2[12]~output_o\;

ww_beqadder2(13) <= \beqadder2[13]~output_o\;

ww_beqadder2(14) <= \beqadder2[14]~output_o\;

ww_beqadder2(15) <= \beqadder2[15]~output_o\;

ww_beqadder2(16) <= \beqadder2[16]~output_o\;

ww_beqadder2(17) <= \beqadder2[17]~output_o\;

ww_beqadder2(18) <= \beqadder2[18]~output_o\;

ww_beqadder2(19) <= \beqadder2[19]~output_o\;

ww_beqadder2(20) <= \beqadder2[20]~output_o\;

ww_beqadder2(21) <= \beqadder2[21]~output_o\;

ww_beqadder2(22) <= \beqadder2[22]~output_o\;

ww_beqadder2(23) <= \beqadder2[23]~output_o\;

ww_beqadder2(24) <= \beqadder2[24]~output_o\;

ww_beqadder2(25) <= \beqadder2[25]~output_o\;

ww_beqadder2(26) <= \beqadder2[26]~output_o\;

ww_beqadder2(27) <= \beqadder2[27]~output_o\;

ww_beqadder2(28) <= \beqadder2[28]~output_o\;

ww_beqadder2(29) <= \beqadder2[29]~output_o\;

ww_beqadder2(30) <= \beqadder2[30]~output_o\;

ww_beqadder2(31) <= \beqadder2[31]~output_o\;

ww_beqadderout(0) <= \beqadderout[0]~output_o\;

ww_beqadderout(1) <= \beqadderout[1]~output_o\;

ww_beqadderout(2) <= \beqadderout[2]~output_o\;

ww_beqadderout(3) <= \beqadderout[3]~output_o\;

ww_beqadderout(4) <= \beqadderout[4]~output_o\;

ww_beqadderout(5) <= \beqadderout[5]~output_o\;

ww_beqadderout(6) <= \beqadderout[6]~output_o\;

ww_beqadderout(7) <= \beqadderout[7]~output_o\;

ww_beqadderout(8) <= \beqadderout[8]~output_o\;

ww_beqadderout(9) <= \beqadderout[9]~output_o\;

ww_beqadderout(10) <= \beqadderout[10]~output_o\;

ww_beqadderout(11) <= \beqadderout[11]~output_o\;

ww_beqadderout(12) <= \beqadderout[12]~output_o\;

ww_beqadderout(13) <= \beqadderout[13]~output_o\;

ww_beqadderout(14) <= \beqadderout[14]~output_o\;

ww_beqadderout(15) <= \beqadderout[15]~output_o\;

ww_beqadderout(16) <= \beqadderout[16]~output_o\;

ww_beqadderout(17) <= \beqadderout[17]~output_o\;

ww_beqadderout(18) <= \beqadderout[18]~output_o\;

ww_beqadderout(19) <= \beqadderout[19]~output_o\;

ww_beqadderout(20) <= \beqadderout[20]~output_o\;

ww_beqadderout(21) <= \beqadderout[21]~output_o\;

ww_beqadderout(22) <= \beqadderout[22]~output_o\;

ww_beqadderout(23) <= \beqadderout[23]~output_o\;

ww_beqadderout(24) <= \beqadderout[24]~output_o\;

ww_beqadderout(25) <= \beqadderout[25]~output_o\;

ww_beqadderout(26) <= \beqadderout[26]~output_o\;

ww_beqadderout(27) <= \beqadderout[27]~output_o\;

ww_beqadderout(28) <= \beqadderout[28]~output_o\;

ww_beqadderout(29) <= \beqadderout[29]~output_o\;

ww_beqadderout(30) <= \beqadderout[30]~output_o\;

ww_beqadderout(31) <= \beqadderout[31]~output_o\;

ww_signExtendOutteste(0) <= \signExtendOutteste[0]~output_o\;

ww_signExtendOutteste(1) <= \signExtendOutteste[1]~output_o\;

ww_signExtendOutteste(2) <= \signExtendOutteste[2]~output_o\;

ww_signExtendOutteste(3) <= \signExtendOutteste[3]~output_o\;

ww_signExtendOutteste(4) <= \signExtendOutteste[4]~output_o\;

ww_signExtendOutteste(5) <= \signExtendOutteste[5]~output_o\;

ww_signExtendOutteste(6) <= \signExtendOutteste[6]~output_o\;

ww_signExtendOutteste(7) <= \signExtendOutteste[7]~output_o\;

ww_signExtendOutteste(8) <= \signExtendOutteste[8]~output_o\;

ww_signExtendOutteste(9) <= \signExtendOutteste[9]~output_o\;

ww_signExtendOutteste(10) <= \signExtendOutteste[10]~output_o\;

ww_signExtendOutteste(11) <= \signExtendOutteste[11]~output_o\;

ww_signExtendOutteste(12) <= \signExtendOutteste[12]~output_o\;

ww_signExtendOutteste(13) <= \signExtendOutteste[13]~output_o\;

ww_signExtendOutteste(14) <= \signExtendOutteste[14]~output_o\;

ww_signExtendOutteste(15) <= \signExtendOutteste[15]~output_o\;

ww_signExtendOutteste(16) <= \signExtendOutteste[16]~output_o\;

ww_signExtendOutteste(17) <= \signExtendOutteste[17]~output_o\;

ww_signExtendOutteste(18) <= \signExtendOutteste[18]~output_o\;

ww_signExtendOutteste(19) <= \signExtendOutteste[19]~output_o\;

ww_signExtendOutteste(20) <= \signExtendOutteste[20]~output_o\;

ww_signExtendOutteste(21) <= \signExtendOutteste[21]~output_o\;

ww_signExtendOutteste(22) <= \signExtendOutteste[22]~output_o\;

ww_signExtendOutteste(23) <= \signExtendOutteste[23]~output_o\;

ww_signExtendOutteste(24) <= \signExtendOutteste[24]~output_o\;

ww_signExtendOutteste(25) <= \signExtendOutteste[25]~output_o\;

ww_signExtendOutteste(26) <= \signExtendOutteste[26]~output_o\;

ww_signExtendOutteste(27) <= \signExtendOutteste[27]~output_o\;

ww_signExtendOutteste(28) <= \signExtendOutteste[28]~output_o\;

ww_signExtendOutteste(29) <= \signExtendOutteste[29]~output_o\;

ww_signExtendOutteste(30) <= \signExtendOutteste[30]~output_o\;

ww_signExtendOutteste(31) <= \signExtendOutteste[31]~output_o\;

ww_word(0) <= \word[0]~output_o\;

ww_word(1) <= \word[1]~output_o\;

ww_word(2) <= \word[2]~output_o\;

ww_word(3) <= \word[3]~output_o\;

ww_word(4) <= \word[4]~output_o\;

ww_word(5) <= \word[5]~output_o\;

ww_word(6) <= \word[6]~output_o\;

ww_word(7) <= \word[7]~output_o\;

ww_word(8) <= \word[8]~output_o\;

ww_word(9) <= \word[9]~output_o\;

ww_ULASEL(0) <= \ULASEL[0]~output_o\;

ww_ULASEL(1) <= \ULASEL[1]~output_o\;

ww_ULASEL(2) <= \ULASEL[2]~output_o\;

ww_ULASEL(3) <= \ULASEL[3]~output_o\;

ww_EXTESTE(0) <= \EXTESTE[0]~output_o\;

ww_EXTESTE(1) <= \EXTESTE[1]~output_o\;

ww_EXTESTE(2) <= \EXTESTE[2]~output_o\;

ww_EXTESTE(3) <= \EXTESTE[3]~output_o\;

ww_WBTESTE(0) <= \WBTESTE[0]~output_o\;

ww_WBTESTE(1) <= \WBTESTE[1]~output_o\;

ww_MTESTE(0) <= \MTESTE[0]~output_o\;

ww_MTESTE(1) <= \MTESTE[1]~output_o\;

ww_MTESTE(2) <= \MTESTE[2]~output_o\;

ww_rt(0) <= \rt[0]~output_o\;

ww_rt(1) <= \rt[1]~output_o\;

ww_rt(2) <= \rt[2]~output_o\;

ww_rt(3) <= \rt[3]~output_o\;

ww_rt(4) <= \rt[4]~output_o\;

ww_rs(0) <= \rs[0]~output_o\;

ww_rs(1) <= \rs[1]~output_o\;

ww_rs(2) <= \rs[2]~output_o\;

ww_rs(3) <= \rs[3]~output_o\;

ww_rs(4) <= \rs[4]~output_o\;

ww_rd(0) <= \rd[0]~output_o\;

ww_rd(1) <= \rd[1]~output_o\;

ww_rd(2) <= \rd[2]~output_o\;

ww_rd(3) <= \rd[3]~output_o\;

ww_rd(4) <= \rd[4]~output_o\;
END structure;


