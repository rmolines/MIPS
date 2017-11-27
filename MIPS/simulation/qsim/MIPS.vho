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

-- DATE "11/27/2017 10:39:24"

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
	instRsOut : OUT std_logic_vector(4 DOWNTO 0);
	instRtOut : OUT std_logic_vector(4 DOWNTO 0);
	instRdOut : OUT std_logic_vector(4 DOWNTO 0);
	readData1Out : OUT std_logic_vector(31 DOWNTO 0);
	readData2Out : OUT std_logic_vector(31 DOWNTO 0);
	writeData : OUT std_logic_vector(31 DOWNTO 0);
	PCOutTeste : OUT std_logic_vector(31 DOWNTO 0);
	ULAINA : OUT std_logic_vector(31 DOWNTO 0);
	ULAINB : OUT std_logic_vector(31 DOWNTO 0);
	ULAOUTTESTE : OUT std_logic_vector(31 DOWNTO 0);
	beqadder : OUT std_logic_vector(31 DOWNTO 0);
	beqadder2 : OUT std_logic_vector(31 DOWNTO 0);
	beqadderout : OUT std_logic_vector(31 DOWNTO 0);
	word : OUT std_logic_vector(9 DOWNTO 0);
	ULASEL : OUT std_logic_vector(3 DOWNTO 0)
	);
END fluxoDeDados;

-- Design Ports Information
-- regTestEnd[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[6]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[8]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[9]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[10]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[12]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[13]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[14]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[15]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[16]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[17]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[18]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[19]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[20]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[21]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[22]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[23]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[24]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[25]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[26]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[27]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[28]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[29]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[30]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[31]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[2]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[5]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[6]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[7]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[9]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[10]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[11]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[12]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[13]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[14]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[15]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[16]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[17]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[18]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[19]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[20]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[21]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[22]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[23]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[24]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[25]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[26]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[27]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[28]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[29]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[30]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestOut[31]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[2]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[3]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[4]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[5]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[6]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[7]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[8]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[9]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[10]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[11]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[12]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[13]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[14]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[15]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[16]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[17]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[18]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[19]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[20]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[21]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[22]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[23]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[24]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[25]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[26]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[27]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[28]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[29]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[30]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestOut[31]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRsOut[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRsOut[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRsOut[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRsOut[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRsOut[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRtOut[0]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRtOut[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRtOut[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRtOut[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRtOut[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRdOut[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRdOut[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRdOut[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRdOut[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instRdOut[4]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[6]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[7]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[8]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[9]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[10]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[11]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[12]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[13]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[14]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[15]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[16]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[17]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[18]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[19]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[20]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[21]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[22]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[23]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[24]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[25]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[26]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[27]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[28]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[29]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[30]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData1Out[31]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[5]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[10]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[11]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[12]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[13]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[14]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[15]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[16]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[17]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[18]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[19]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[20]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[21]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[22]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[23]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[24]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[25]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[26]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[27]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[28]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[29]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[30]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData2Out[31]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[4]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[5]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[7]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[8]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[9]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[10]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[11]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[12]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[14]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[16]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[17]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[18]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[19]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[20]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[21]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[22]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[23]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[24]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[25]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[26]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[27]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[28]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[29]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[30]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[31]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[2]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[3]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[4]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[7]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[8]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[9]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[10]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[11]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[12]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[13]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[14]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[15]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[16]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[17]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[18]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[19]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[20]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[21]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[22]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[23]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[24]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[25]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[26]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[27]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[28]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[29]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[30]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOutTeste[31]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[1]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[2]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[3]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[7]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[11]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[12]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[13]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[14]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[15]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[16]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[17]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[18]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[19]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[20]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[21]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[22]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[23]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[24]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[25]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[26]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[27]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[28]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[29]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[30]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINA[31]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[0]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[8]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[9]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[10]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[12]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[13]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[14]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[16]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[17]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[18]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[19]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[20]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[21]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[22]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[23]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[24]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[25]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[26]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[27]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[28]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[29]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[30]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAINB[31]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[3]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[5]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[7]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[8]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[9]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[10]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[11]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[12]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[14]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[15]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[16]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[17]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[18]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[19]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[20]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[21]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[22]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[23]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[24]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[25]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[26]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[27]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[28]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[29]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[30]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOUTTESTE[31]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[3]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[4]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[7]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[8]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[10]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[11]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[12]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[13]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[14]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[16]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[17]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[18]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[19]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[20]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[21]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[22]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[23]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[24]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[25]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[26]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[27]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[28]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[29]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[30]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder[31]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[0]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[3]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[4]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[5]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[7]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[9]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[10]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[11]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[12]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[13]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[14]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[15]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[16]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[17]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[18]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[19]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[20]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[21]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[22]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[23]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[24]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[25]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[26]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[27]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[28]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[29]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[30]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadder2[31]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[4]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[5]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[6]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[8]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[9]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[10]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[11]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[12]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[13]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[14]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[15]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[16]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[17]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[18]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[19]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[20]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[21]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[22]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[23]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[24]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[25]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[26]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[27]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[28]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[29]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[30]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beqadderout[31]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[2]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[3]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[6]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[7]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[8]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- word[9]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULASEL[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULASEL[1]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULASEL[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULASEL[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEnd[0]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEnd[1]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEnd[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regTestEnd[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memTestEnd[3]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_instRsOut : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_instRtOut : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_instRdOut : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_readData1Out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_readData2Out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_writeData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PCOutTeste : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULAINA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULAINB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULAOUTTESTE : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_beqadder : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_beqadder2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_beqadderout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_word : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ULASEL : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \instRsOut[0]~output_o\ : std_logic;
SIGNAL \instRsOut[1]~output_o\ : std_logic;
SIGNAL \instRsOut[2]~output_o\ : std_logic;
SIGNAL \instRsOut[3]~output_o\ : std_logic;
SIGNAL \instRsOut[4]~output_o\ : std_logic;
SIGNAL \instRtOut[0]~output_o\ : std_logic;
SIGNAL \instRtOut[1]~output_o\ : std_logic;
SIGNAL \instRtOut[2]~output_o\ : std_logic;
SIGNAL \instRtOut[3]~output_o\ : std_logic;
SIGNAL \instRtOut[4]~output_o\ : std_logic;
SIGNAL \instRdOut[0]~output_o\ : std_logic;
SIGNAL \instRdOut[1]~output_o\ : std_logic;
SIGNAL \instRdOut[2]~output_o\ : std_logic;
SIGNAL \instRdOut[3]~output_o\ : std_logic;
SIGNAL \instRdOut[4]~output_o\ : std_logic;
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
SIGNAL \regTestEnd[3]~input_o\ : std_logic;
SIGNAL \regTestEnd[0]~input_o\ : std_logic;
SIGNAL \regTestEnd[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \AdderPC|tempAdd[0]~0_combout\ : std_logic;
SIGNAL \InstMem|ram~558_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[0]~0_combout\ : std_logic;
SIGNAL \InstMem|ram~551_combout\ : std_logic;
SIGNAL \UCFD|Mux8~0_combout\ : std_logic;
SIGNAL \UCULA|Mux3~0_combout\ : std_logic;
SIGNAL \UCULA|Mux5~0_combout\ : std_logic;
SIGNAL \InstMem|ram~553_combout\ : std_logic;
SIGNAL \BancoReg|Mux63~4_combout\ : std_logic;
SIGNAL \InstMem|ram~554_combout\ : std_logic;
SIGNAL \InstMem|ram~549_combout\ : std_logic;
SIGNAL \InstMem|ram~552_combout\ : std_logic;
SIGNAL \BancoReg|Decoder0~0_combout\ : std_logic;
SIGNAL \BancoReg|Decoder0~6_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][0]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][0]~0_combout\ : std_logic;
SIGNAL \BancoReg|Decoder0~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][0]~q\ : std_logic;
SIGNAL \BancoReg|Mux63~2_combout\ : std_logic;
SIGNAL \InstMem|ram~550_combout\ : std_logic;
SIGNAL \BancoReg|Decoder0~4_combout\ : std_logic;
SIGNAL \BancoReg|Decoder0~8_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][0]~q\ : std_logic;
SIGNAL \BancoReg|Decoder0~2_combout\ : std_logic;
SIGNAL \BancoReg|Decoder0~7_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][0]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][0]~1_combout\ : std_logic;
SIGNAL \BancoReg|Decoder0~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][0]~q\ : std_logic;
SIGNAL \BancoReg|Mux63~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux63~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux63~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux63~5_combout\ : std_logic;
SIGNAL \ULA|Add1~0_combout\ : std_logic;
SIGNAL \ULA|Add1~1_combout\ : std_logic;
SIGNAL \UCULA|Mux7~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux31~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux31~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux31~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux31~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux31~4_combout\ : std_logic;
SIGNAL \ULA|Add0~0_combout\ : std_logic;
SIGNAL \ULA|Add0~1_combout\ : std_logic;
SIGNAL \ULA|tempAdd[0]~0_combout\ : std_logic;
SIGNAL \InstMem|ram~557_combout\ : std_logic;
SIGNAL \BancoReg|Mux61~4_combout\ : std_logic;
SIGNAL \InstMem|ram~555_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][31]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][31]~q\ : std_logic;
SIGNAL \BancoReg|Mux32~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux32~1_combout\ : std_logic;
SIGNAL \BancoReg|Decoder0~5_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][31]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][31]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][31]~q\ : std_logic;
SIGNAL \BancoReg|Mux32~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux32~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux32~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux32~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[31]~11_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][30]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][30]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][30]~q\ : std_logic;
SIGNAL \BancoReg|Mux1~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][30]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][30]~q\ : std_logic;
SIGNAL \BancoReg|Mux1~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][30]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][30]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][30]~q\ : std_logic;
SIGNAL \BancoReg|Mux1~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux1~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][28]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][28]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][28]~q\ : std_logic;
SIGNAL \BancoReg|Mux35~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux35~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][28]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][28]~q\ : std_logic;
SIGNAL \BancoReg|Mux35~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux35~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux35~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux35~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[28]~14_combout\ : std_logic;
SIGNAL \BancoReg|Mux62~5_combout\ : std_logic;
SIGNAL \MuxULAMem|C[1]~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][1]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][1]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][1]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][1]~q\ : std_logic;
SIGNAL \BancoReg|Mux62~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux62~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][1]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][1]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][1]~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][1]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][1]~q\ : std_logic;
SIGNAL \BancoReg|Mux62~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux62~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux62~4_combout\ : std_logic;
SIGNAL \muxRtImm|C[1]~10_combout\ : std_logic;
SIGNAL \ULA|Add1~2\ : std_logic;
SIGNAL \ULA|Add1~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux30~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux30~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux30~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux30~3_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~3_combout\ : std_logic;
SIGNAL \ULA|Mux30~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[0]~1\ : std_logic;
SIGNAL \ULA|tempAdd[1]~2_combout\ : std_logic;
SIGNAL \ULA|Mux30~1_combout\ : std_logic;
SIGNAL \ULA|Mux31~0_combout\ : std_logic;
SIGNAL \ULA|sltIn[0]~0_combout\ : std_logic;
SIGNAL \ULA|Mux31~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[2]~3_combout\ : std_logic;
SIGNAL \MuxULAMem|C[2]~4_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][2]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][2]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][2]~q\ : std_logic;
SIGNAL \BancoReg|Mux29~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][2]~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][2]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][2]~4_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][2]~q\ : std_logic;
SIGNAL \BancoReg|Mux29~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][2]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][2]~q\ : std_logic;
SIGNAL \BancoReg|Mux29~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux29~3_combout\ : std_logic;
SIGNAL \ULA|Add0~4\ : std_logic;
SIGNAL \ULA|Add0~5_combout\ : std_logic;
SIGNAL \BancoReg|Mux61~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux61~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux61~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux61~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux61~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[2]~9_combout\ : std_logic;
SIGNAL \ULA|Add1~4\ : std_logic;
SIGNAL \ULA|Add1~5_combout\ : std_logic;
SIGNAL \ULA|Mux29~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[1]~3\ : std_logic;
SIGNAL \ULA|tempAdd[2]~4_combout\ : std_logic;
SIGNAL \ULA|Mux29~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[5]~6_combout\ : std_logic;
SIGNAL \MuxULAMem|C[3]~5_combout\ : std_logic;
SIGNAL \MuxULAMem|C[3]~7_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][3]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][3]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][3]~5_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][3]~q\ : std_logic;
SIGNAL \BancoReg|Mux60~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux60~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][3]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][3]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][3]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][3]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][3]~q\ : std_logic;
SIGNAL \BancoReg|Mux60~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux60~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux60~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux60~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[3]~8_combout\ : std_logic;
SIGNAL \ULA|Add1~6\ : std_logic;
SIGNAL \ULA|Add1~7_combout\ : std_logic;
SIGNAL \BancoReg|Mux28~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux28~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux28~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux28~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux28~4_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~7_combout\ : std_logic;
SIGNAL \ULA|Mux28~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[2]~5\ : std_logic;
SIGNAL \ULA|tempAdd[3]~6_combout\ : std_logic;
SIGNAL \ULA|Mux28~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][27]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][27]~q\ : std_logic;
SIGNAL \BancoReg|Mux4~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][27]~q\ : std_logic;
SIGNAL \BancoReg|Mux4~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][27]~q\ : std_logic;
SIGNAL \BancoReg|ram[13][27]~q\ : std_logic;
SIGNAL \BancoReg|Mux4~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux4~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][26]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][26]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][26]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][26]~q\ : std_logic;
SIGNAL \BancoReg|Mux37~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux37~1_combout\ : std_logic;
SIGNAL \InstMem|ram~556_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][26]~q\ : std_logic;
SIGNAL \BancoReg|Mux37~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux37~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux37~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux37~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[26]~16_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][25]~q\ : std_logic;
SIGNAL \BancoReg|Mux6~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][25]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][25]~q\ : std_logic;
SIGNAL \BancoReg|Mux6~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][25]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][25]~q\ : std_logic;
SIGNAL \BancoReg|Mux6~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux6~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][22]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][22]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][22]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][22]~q\ : std_logic;
SIGNAL \BancoReg|Mux41~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux41~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][22]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][22]~q\ : std_logic;
SIGNAL \BancoReg|Mux41~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux41~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux41~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux41~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[22]~20_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][19]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][19]~q\ : std_logic;
SIGNAL \BancoReg|Mux12~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][19]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][19]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][19]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][19]~q\ : std_logic;
SIGNAL \BancoReg|Mux12~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][19]~q\ : std_logic;
SIGNAL \BancoReg|Mux12~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux12~3_combout\ : std_logic;
SIGNAL \MuxULAMem|C[18]~9_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][16]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][16]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][16]~q\ : std_logic;
SIGNAL \BancoReg|Mux47~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux47~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][16]~q\ : std_logic;
SIGNAL \BancoReg|Mux47~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][16]~q\ : std_logic;
SIGNAL \BancoReg|Mux47~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux47~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux47~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[16]~26_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][14]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][14]~q\ : std_logic;
SIGNAL \BancoReg|Mux17~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][14]~q\ : std_logic;
SIGNAL \BancoReg|Mux17~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][14]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][14]~q\ : std_logic;
SIGNAL \BancoReg|Mux17~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux17~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][13]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][13]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][13]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][13]~q\ : std_logic;
SIGNAL \BancoReg|Mux50~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux50~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][13]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][13]~q\ : std_logic;
SIGNAL \BancoReg|Mux50~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux50~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux50~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux50~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[13]~29_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][11]~q\ : std_logic;
SIGNAL \BancoReg|ram[13][11]~q\ : std_logic;
SIGNAL \BancoReg|Mux20~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][11]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][11]~q\ : std_logic;
SIGNAL \BancoReg|Mux20~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][11]~q\ : std_logic;
SIGNAL \BancoReg|Mux20~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux20~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][10]~q\ : std_logic;
SIGNAL \BancoReg|Mux53~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][10]~q\ : std_logic;
SIGNAL \BancoReg|Mux53~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][10]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][10]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][10]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][10]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][10]~q\ : std_logic;
SIGNAL \BancoReg|Mux53~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux53~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux53~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux53~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[10]~32_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][6]~8_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][6]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][6]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][6]~q\ : std_logic;
SIGNAL \BancoReg|Mux25~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux25~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][6]~q\ : std_logic;
SIGNAL \BancoReg|Mux25~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][6]~q\ : std_logic;
SIGNAL \BancoReg|Mux25~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux25~4_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][5]~7_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][5]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][5]~q\ : std_logic;
SIGNAL \BancoReg|Mux58~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux58~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][5]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][5]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][5]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][5]~q\ : std_logic;
SIGNAL \BancoReg|Mux58~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux58~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux58~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux58~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[5]~37_combout\ : std_logic;
SIGNAL \ULA|Add1~8\ : std_logic;
SIGNAL \ULA|Add1~9_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][4]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][4]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][4]~q\ : std_logic;
SIGNAL \BancoReg|Mux27~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][4]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][4]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][4]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][4]~q\ : std_logic;
SIGNAL \BancoReg|Mux27~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][4]~q\ : std_logic;
SIGNAL \BancoReg|Mux27~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux27~3_combout\ : std_logic;
SIGNAL \ULA|Add0~8\ : std_logic;
SIGNAL \ULA|Add0~9_combout\ : std_logic;
SIGNAL \ULA|tempAdd[3]~7\ : std_logic;
SIGNAL \ULA|tempAdd[4]~8_combout\ : std_logic;
SIGNAL \ULA|Mux27~0_combout\ : std_logic;
SIGNAL \ULA|Mux27~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[4]~8_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][4]~6_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][4]~q\ : std_logic;
SIGNAL \BancoReg|Mux59~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux59~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux59~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux59~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux59~4_combout\ : std_logic;
SIGNAL \muxRtImm|C[4]~38_combout\ : std_logic;
SIGNAL \ULA|Add1~10\ : std_logic;
SIGNAL \ULA|Add1~11_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~11_combout\ : std_logic;
SIGNAL \ULA|tempAdd[4]~9\ : std_logic;
SIGNAL \ULA|tempAdd[5]~10_combout\ : std_logic;
SIGNAL \ULA|Mux26~0_combout\ : std_logic;
SIGNAL \ULA|Mux26~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[5]~10_combout\ : std_logic;
SIGNAL \MuxULAMem|C[5]~11_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][5]~q\ : std_logic;
SIGNAL \BancoReg|Mux26~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux26~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux26~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux26~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux26~4_combout\ : std_logic;
SIGNAL \ULA|Add0~12\ : std_logic;
SIGNAL \ULA|Add0~13_combout\ : std_logic;
SIGNAL \ULA|Add1~12\ : std_logic;
SIGNAL \ULA|Add1~13_combout\ : std_logic;
SIGNAL \ULA|Mux25~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[5]~11\ : std_logic;
SIGNAL \ULA|tempAdd[6]~12_combout\ : std_logic;
SIGNAL \ULA|Mux25~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[6]~12_combout\ : std_logic;
SIGNAL \MuxULAMem|C[6]~47_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][6]~q\ : std_logic;
SIGNAL \BancoReg|Mux57~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux57~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux57~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux57~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux57~4_combout\ : std_logic;
SIGNAL \muxRtImm|C[6]~36_combout\ : std_logic;
SIGNAL \ULA|Add1~14\ : std_logic;
SIGNAL \ULA|Add1~15_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][7]~q\ : std_logic;
SIGNAL \BancoReg|Mux24~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][7]~9_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][7]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][7]~q\ : std_logic;
SIGNAL \BancoReg|Mux24~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][7]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][7]~q\ : std_logic;
SIGNAL \BancoReg|Mux24~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux24~3_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~15_combout\ : std_logic;
SIGNAL \ULA|tempAdd[6]~13\ : std_logic;
SIGNAL \ULA|tempAdd[7]~14_combout\ : std_logic;
SIGNAL \ULA|Mux24~0_combout\ : std_logic;
SIGNAL \ULA|Mux24~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[7]~13_combout\ : std_logic;
SIGNAL \MuxULAMem|C[7]~14_combout\ : std_logic;
SIGNAL \MuxULAMem|C[7]~15_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][7]~q\ : std_logic;
SIGNAL \BancoReg|Mux56~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux56~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux56~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux56~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux56~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux56~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[7]~35_combout\ : std_logic;
SIGNAL \ULA|Add1~16\ : std_logic;
SIGNAL \ULA|Add1~17_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][8]~10_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][8]~q\ : std_logic;
SIGNAL \BancoReg|Mux23~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][8]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][8]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][8]~q\ : std_logic;
SIGNAL \BancoReg|Mux23~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][8]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][8]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][8]~q\ : std_logic;
SIGNAL \BancoReg|Mux23~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux23~3_combout\ : std_logic;
SIGNAL \ULA|Add0~16\ : std_logic;
SIGNAL \ULA|Add0~17_combout\ : std_logic;
SIGNAL \ULA|Mux23~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[7]~15\ : std_logic;
SIGNAL \ULA|tempAdd[8]~16_combout\ : std_logic;
SIGNAL \ULA|Mux23~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[8]~16_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][8]~q\ : std_logic;
SIGNAL \BancoReg|Mux55~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux55~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux55~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux55~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux55~4_combout\ : std_logic;
SIGNAL \muxRtImm|C[8]~34_combout\ : std_logic;
SIGNAL \ULA|Add1~18\ : std_logic;
SIGNAL \ULA|Add1~19_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][9]~q\ : std_logic;
SIGNAL \BancoReg|Mux22~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][9]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][9]~q\ : std_logic;
SIGNAL \BancoReg|Mux22~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][9]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][9]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][9]~q\ : std_logic;
SIGNAL \BancoReg|Mux22~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux22~3_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~19_combout\ : std_logic;
SIGNAL \ULA|Mux22~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[8]~17\ : std_logic;
SIGNAL \ULA|tempAdd[9]~18_combout\ : std_logic;
SIGNAL \ULA|Mux22~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[9]~17_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][9]~q\ : std_logic;
SIGNAL \BancoReg|Mux54~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux54~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux54~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux54~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux54~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux54~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[9]~33_combout\ : std_logic;
SIGNAL \ULA|Add1~20\ : std_logic;
SIGNAL \ULA|Add1~21_combout\ : std_logic;
SIGNAL \ULA|Add0~20\ : std_logic;
SIGNAL \ULA|Add0~21_combout\ : std_logic;
SIGNAL \ULA|Mux21~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[9]~19\ : std_logic;
SIGNAL \ULA|tempAdd[10]~20_combout\ : std_logic;
SIGNAL \ULA|Mux21~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[10]~18_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][10]~q\ : std_logic;
SIGNAL \BancoReg|Mux21~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux21~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux21~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux21~3_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~23_combout\ : std_logic;
SIGNAL \ULA|Add1~22\ : std_logic;
SIGNAL \ULA|Add1~23_combout\ : std_logic;
SIGNAL \ULA|tempAdd[10]~21\ : std_logic;
SIGNAL \ULA|tempAdd[11]~22_combout\ : std_logic;
SIGNAL \ULA|Mux20~0_combout\ : std_logic;
SIGNAL \ULA|Mux20~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[11]~19_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][11]~q\ : std_logic;
SIGNAL \BancoReg|Mux52~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux52~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux52~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux52~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux52~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux52~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[11]~31_combout\ : std_logic;
SIGNAL \ULA|Add1~24\ : std_logic;
SIGNAL \ULA|Add1~25_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][12]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][12]~q\ : std_logic;
SIGNAL \BancoReg|Mux19~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][12]~q\ : std_logic;
SIGNAL \BancoReg|Mux19~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][12]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][12]~q\ : std_logic;
SIGNAL \BancoReg|Mux19~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux19~3_combout\ : std_logic;
SIGNAL \ULA|Add0~24\ : std_logic;
SIGNAL \ULA|Add0~25_combout\ : std_logic;
SIGNAL \ULA|Mux19~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[11]~23\ : std_logic;
SIGNAL \ULA|tempAdd[12]~24_combout\ : std_logic;
SIGNAL \ULA|Mux19~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[12]~20_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][12]~q\ : std_logic;
SIGNAL \BancoReg|Mux51~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux51~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux51~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux51~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux51~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux51~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[12]~30_combout\ : std_logic;
SIGNAL \ULA|Add1~26\ : std_logic;
SIGNAL \ULA|Add1~27_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~27_combout\ : std_logic;
SIGNAL \ULA|tempAdd[12]~25\ : std_logic;
SIGNAL \ULA|tempAdd[13]~26_combout\ : std_logic;
SIGNAL \ULA|Mux18~0_combout\ : std_logic;
SIGNAL \ULA|Mux18~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[13]~21_combout\ : std_logic;
SIGNAL \MuxULAMem|C[13]~22_combout\ : std_logic;
SIGNAL \MuxULAMem|C[13]~23_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][13]~q\ : std_logic;
SIGNAL \BancoReg|Mux18~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux18~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux18~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux18~3_combout\ : std_logic;
SIGNAL \ULA|Add0~28\ : std_logic;
SIGNAL \ULA|Add0~29_combout\ : std_logic;
SIGNAL \ULA|Add1~28\ : std_logic;
SIGNAL \ULA|Add1~29_combout\ : std_logic;
SIGNAL \ULA|tempAdd[13]~27\ : std_logic;
SIGNAL \ULA|tempAdd[14]~28_combout\ : std_logic;
SIGNAL \ULA|Mux17~0_combout\ : std_logic;
SIGNAL \ULA|Mux17~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[14]~24_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][14]~q\ : std_logic;
SIGNAL \BancoReg|Mux49~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux49~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux49~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux49~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux49~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux49~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[14]~28_combout\ : std_logic;
SIGNAL \ULA|Add1~30\ : std_logic;
SIGNAL \ULA|Add1~31_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][15]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][15]~q\ : std_logic;
SIGNAL \BancoReg|Mux16~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][15]~q\ : std_logic;
SIGNAL \BancoReg|Mux16~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][15]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][15]~q\ : std_logic;
SIGNAL \BancoReg|ram[13][15]~q\ : std_logic;
SIGNAL \BancoReg|Mux16~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux16~3_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~31_combout\ : std_logic;
SIGNAL \ULA|Mux16~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[14]~29\ : std_logic;
SIGNAL \ULA|tempAdd[15]~30_combout\ : std_logic;
SIGNAL \ULA|Mux16~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[15]~25_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][15]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][15]~q\ : std_logic;
SIGNAL \BancoReg|Mux48~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux48~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux48~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux48~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux48~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux48~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[15]~27_combout\ : std_logic;
SIGNAL \ULA|Add1~32\ : std_logic;
SIGNAL \ULA|Add1~33_combout\ : std_logic;
SIGNAL \ULA|Add0~32\ : std_logic;
SIGNAL \ULA|Add0~33_combout\ : std_logic;
SIGNAL \ULA|tempAdd[15]~31\ : std_logic;
SIGNAL \ULA|tempAdd[16]~32_combout\ : std_logic;
SIGNAL \ULA|Mux15~0_combout\ : std_logic;
SIGNAL \ULA|Mux15~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[16]~26_combout\ : std_logic;
SIGNAL \MuxULAMem|C[16]~27_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][16]~q\ : std_logic;
SIGNAL \BancoReg|Mux15~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux15~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux15~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux15~3_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~35_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][17]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][17]~q\ : std_logic;
SIGNAL \BancoReg|Mux46~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux46~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][17]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][17]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][17]~q\ : std_logic;
SIGNAL \BancoReg|Mux46~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux46~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux46~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux46~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[17]~25_combout\ : std_logic;
SIGNAL \ULA|Add1~34\ : std_logic;
SIGNAL \ULA|Add1~35_combout\ : std_logic;
SIGNAL \ULA|Mux14~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[16]~33\ : std_logic;
SIGNAL \ULA|tempAdd[17]~34_combout\ : std_logic;
SIGNAL \ULA|Mux14~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[17]~28_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][17]~q\ : std_logic;
SIGNAL \BancoReg|Mux14~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux14~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux14~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux14~3_combout\ : std_logic;
SIGNAL \ULA|Add0~36\ : std_logic;
SIGNAL \ULA|Add0~37_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][18]~q\ : std_logic;
SIGNAL \BancoReg|Mux45~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux45~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][18]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][18]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][18]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][18]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][18]~q\ : std_logic;
SIGNAL \BancoReg|Mux45~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux45~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux45~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux45~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[18]~24_combout\ : std_logic;
SIGNAL \ULA|Add1~36\ : std_logic;
SIGNAL \ULA|Add1~37_combout\ : std_logic;
SIGNAL \ULA|Mux13~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[17]~35\ : std_logic;
SIGNAL \ULA|tempAdd[18]~36_combout\ : std_logic;
SIGNAL \ULA|Mux13~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[18]~29_combout\ : std_logic;
SIGNAL \MuxULAMem|C[18]~30_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][18]~q\ : std_logic;
SIGNAL \BancoReg|Mux13~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux13~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux13~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux13~3_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~39_combout\ : std_logic;
SIGNAL \ULA|Add1~38\ : std_logic;
SIGNAL \ULA|Add1~39_combout\ : std_logic;
SIGNAL \ULA|Mux12~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[18]~37\ : std_logic;
SIGNAL \ULA|tempAdd[19]~38_combout\ : std_logic;
SIGNAL \ULA|Mux12~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[19]~31_combout\ : std_logic;
SIGNAL \MuxULAMem|C[19]~32_combout\ : std_logic;
SIGNAL \MuxULAMem|C[19]~33_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][19]~q\ : std_logic;
SIGNAL \BancoReg|Mux44~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux44~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux44~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux44~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux44~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux44~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[19]~23_combout\ : std_logic;
SIGNAL \ULA|Add1~40\ : std_logic;
SIGNAL \ULA|Add1~41_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][20]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][20]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][20]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][20]~q\ : std_logic;
SIGNAL \BancoReg|Mux11~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][20]~q\ : std_logic;
SIGNAL \BancoReg|Mux11~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][20]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][20]~q\ : std_logic;
SIGNAL \BancoReg|Mux11~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux11~3_combout\ : std_logic;
SIGNAL \ULA|Add0~40\ : std_logic;
SIGNAL \ULA|Add0~41_combout\ : std_logic;
SIGNAL \ULA|Mux11~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[19]~39\ : std_logic;
SIGNAL \ULA|tempAdd[20]~40_combout\ : std_logic;
SIGNAL \ULA|Mux11~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[20]~34_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][20]~q\ : std_logic;
SIGNAL \BancoReg|Mux43~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux43~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux43~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux43~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux43~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux43~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[20]~22_combout\ : std_logic;
SIGNAL \ULA|Add1~42\ : std_logic;
SIGNAL \ULA|Add1~43_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][21]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][21]~q\ : std_logic;
SIGNAL \BancoReg|Mux10~0_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][21]~q\ : std_logic;
SIGNAL \BancoReg|Mux10~2_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][21]~q\ : std_logic;
SIGNAL \BancoReg|ram[8][21]~q\ : std_logic;
SIGNAL \BancoReg|Mux10~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux10~3_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~43_combout\ : std_logic;
SIGNAL \ULA|tempAdd[20]~41\ : std_logic;
SIGNAL \ULA|tempAdd[21]~42_combout\ : std_logic;
SIGNAL \ULA|Mux10~0_combout\ : std_logic;
SIGNAL \ULA|Mux10~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[21]~35_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][21]~q\ : std_logic;
SIGNAL \BancoReg|Mux42~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux42~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux42~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux42~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux42~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux42~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[21]~21_combout\ : std_logic;
SIGNAL \ULA|Add1~44\ : std_logic;
SIGNAL \ULA|Add1~45_combout\ : std_logic;
SIGNAL \ULA|Add0~44\ : std_logic;
SIGNAL \ULA|Add0~45_combout\ : std_logic;
SIGNAL \ULA|tempAdd[21]~43\ : std_logic;
SIGNAL \ULA|tempAdd[22]~44_combout\ : std_logic;
SIGNAL \ULA|Mux9~0_combout\ : std_logic;
SIGNAL \ULA|Mux9~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[22]~36_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][22]~q\ : std_logic;
SIGNAL \BancoReg|Mux9~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux9~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux9~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux9~3_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~47_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][23]~q\ : std_logic;
SIGNAL \BancoReg|ram[13][23]~q\ : std_logic;
SIGNAL \BancoReg|Mux40~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux40~1_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][23]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][23]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][23]~q\ : std_logic;
SIGNAL \BancoReg|ram[0][23]~q\ : std_logic;
SIGNAL \BancoReg|Mux40~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux40~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux40~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux40~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[23]~19_combout\ : std_logic;
SIGNAL \ULA|Add1~46\ : std_logic;
SIGNAL \ULA|Add1~47_combout\ : std_logic;
SIGNAL \ULA|Mux8~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[22]~45\ : std_logic;
SIGNAL \ULA|tempAdd[23]~46_combout\ : std_logic;
SIGNAL \ULA|Mux8~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[23]~37_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][23]~q\ : std_logic;
SIGNAL \BancoReg|Mux8~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux8~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux8~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux8~3_combout\ : std_logic;
SIGNAL \ULA|Add0~48\ : std_logic;
SIGNAL \ULA|Add0~49_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][24]~q\ : std_logic;
SIGNAL \BancoReg|Mux39~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux39~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][24]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][24]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][24]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][24]~q\ : std_logic;
SIGNAL \BancoReg|Mux39~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux39~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux39~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux39~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[24]~18_combout\ : std_logic;
SIGNAL \ULA|Add1~48\ : std_logic;
SIGNAL \ULA|Add1~49_combout\ : std_logic;
SIGNAL \ULA|Mux7~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[23]~47\ : std_logic;
SIGNAL \ULA|tempAdd[24]~48_combout\ : std_logic;
SIGNAL \ULA|Mux7~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[24]~38_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][24]~q\ : std_logic;
SIGNAL \BancoReg|Mux7~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux7~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux7~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux7~3_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~51_combout\ : std_logic;
SIGNAL \ULA|Add1~50\ : std_logic;
SIGNAL \ULA|Add1~51_combout\ : std_logic;
SIGNAL \ULA|tempAdd[24]~49\ : std_logic;
SIGNAL \ULA|tempAdd[25]~50_combout\ : std_logic;
SIGNAL \ULA|Mux6~0_combout\ : std_logic;
SIGNAL \ULA|Mux6~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[25]~39_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][25]~q\ : std_logic;
SIGNAL \BancoReg|Mux38~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux38~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux38~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux38~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux38~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux38~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[25]~17_combout\ : std_logic;
SIGNAL \ULA|Add1~52\ : std_logic;
SIGNAL \ULA|Add1~53_combout\ : std_logic;
SIGNAL \ULA|Add0~52\ : std_logic;
SIGNAL \ULA|Add0~53_combout\ : std_logic;
SIGNAL \ULA|Mux5~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[25]~51\ : std_logic;
SIGNAL \ULA|tempAdd[26]~52_combout\ : std_logic;
SIGNAL \ULA|Mux5~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[26]~40_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][26]~q\ : std_logic;
SIGNAL \BancoReg|Mux5~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux5~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux5~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux5~3_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~55_combout\ : std_logic;
SIGNAL \ULA|Add1~54\ : std_logic;
SIGNAL \ULA|Add1~55_combout\ : std_logic;
SIGNAL \ULA|tempAdd[26]~53\ : std_logic;
SIGNAL \ULA|tempAdd[27]~54_combout\ : std_logic;
SIGNAL \ULA|Mux4~0_combout\ : std_logic;
SIGNAL \ULA|Mux4~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[27]~41_combout\ : std_logic;
SIGNAL \MuxULAMem|C[27]~42_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][27]~q\ : std_logic;
SIGNAL \BancoReg|Mux36~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux36~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux36~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux36~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux36~4_combout\ : std_logic;
SIGNAL \muxRtImm|C[27]~15_combout\ : std_logic;
SIGNAL \ULA|Add1~56\ : std_logic;
SIGNAL \ULA|Add1~57_combout\ : std_logic;
SIGNAL \ULA|Add0~56\ : std_logic;
SIGNAL \ULA|Add0~57_combout\ : std_logic;
SIGNAL \ULA|Mux3~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[27]~55\ : std_logic;
SIGNAL \ULA|tempAdd[28]~56_combout\ : std_logic;
SIGNAL \ULA|Mux3~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[28]~43_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][28]~q\ : std_logic;
SIGNAL \BancoReg|Mux3~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux3~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux3~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux3~3_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~59_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][29]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[0][29]~q\ : std_logic;
SIGNAL \BancoReg|Mux34~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux34~3_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][29]~q\ : std_logic;
SIGNAL \BancoReg|ram[12][29]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][29]~q\ : std_logic;
SIGNAL \BancoReg|ram[5][29]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][29]~q\ : std_logic;
SIGNAL \BancoReg|ram[4][29]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[4][29]~q\ : std_logic;
SIGNAL \BancoReg|Mux34~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux34~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux34~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux34~5_combout\ : std_logic;
SIGNAL \muxRtImm|C[29]~13_combout\ : std_logic;
SIGNAL \ULA|Add1~58\ : std_logic;
SIGNAL \ULA|Add1~59_combout\ : std_logic;
SIGNAL \ULA|Mux2~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[28]~57\ : std_logic;
SIGNAL \ULA|tempAdd[29]~58_combout\ : std_logic;
SIGNAL \ULA|Mux2~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[29]~44_combout\ : std_logic;
SIGNAL \BancoReg|ram[8][29]~q\ : std_logic;
SIGNAL \BancoReg|Mux2~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux2~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux2~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux2~3_combout\ : std_logic;
SIGNAL \ULA|Add0~60\ : std_logic;
SIGNAL \ULA|Add0~61_combout\ : std_logic;
SIGNAL \ULA|Add1~60\ : std_logic;
SIGNAL \ULA|Add1~61_combout\ : std_logic;
SIGNAL \ULA|Mux1~0_combout\ : std_logic;
SIGNAL \ULA|tempAdd[29]~59\ : std_logic;
SIGNAL \ULA|tempAdd[30]~60_combout\ : std_logic;
SIGNAL \ULA|Mux1~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[30]~45_combout\ : std_logic;
SIGNAL \BancoReg|ram[12][30]~q\ : std_logic;
SIGNAL \BancoReg|Mux33~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux33~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux33~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux33~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux33~4_combout\ : std_logic;
SIGNAL \muxRtImm|C[30]~12_combout\ : std_logic;
SIGNAL \ULA|Add1~62\ : std_logic;
SIGNAL \ULA|Add1~63_combout\ : std_logic;
SIGNAL \ULA|Mux0~0_combout\ : std_logic;
SIGNAL \ULA|Mux0~1_combout\ : std_logic;
SIGNAL \MuxULAMem|C[31]~46_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][31]~feeder_combout\ : std_logic;
SIGNAL \BancoReg|ram[13][31]~q\ : std_logic;
SIGNAL \BancoReg|Mux0~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux0~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux0~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux0~3_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~63_combout\ : std_logic;
SIGNAL \ULA|tempAdd[30]~61\ : std_logic;
SIGNAL \ULA|tempAdd[32]~62_combout\ : std_logic;
SIGNAL \ANDBeqOut~0_combout\ : std_logic;
SIGNAL \ANDBeqOut~1_combout\ : std_logic;
SIGNAL \ANDBeqOut~2_combout\ : std_logic;
SIGNAL \ANDBeqOut~3_combout\ : std_logic;
SIGNAL \ANDBeqOut~4_combout\ : std_logic;
SIGNAL \ANDBeqOut~5_combout\ : std_logic;
SIGNAL \ANDBeqOut~6_combout\ : std_logic;
SIGNAL \ANDBeqOut~7_combout\ : std_logic;
SIGNAL \ANDBeqOut~8_combout\ : std_logic;
SIGNAL \ANDBeqOut~9_combout\ : std_logic;
SIGNAL \ANDBeqOut~10_combout\ : std_logic;
SIGNAL \ANDBeqOut~11_combout\ : std_logic;
SIGNAL \MuxJUMP|C[0]~2_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[0]~1\ : std_logic;
SIGNAL \AdderPC|tempAdd[1]~2_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[0]~1\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[1]~2_combout\ : std_logic;
SIGNAL \MuxJUMP|C[1]~3_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[1]~3\ : std_logic;
SIGNAL \AdderPC|tempAdd[2]~5\ : std_logic;
SIGNAL \AdderPC|tempAdd[3]~6_combout\ : std_logic;
SIGNAL \InstMem|ram~560_combout\ : std_logic;
SIGNAL \InstMem|ram~559_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[2]~4_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[1]~3\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[2]~5\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[3]~6_combout\ : std_logic;
SIGNAL \MuxJUMP|C[3]~1_combout\ : std_logic;
SIGNAL \UCFD|Mux0~0_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[2]~4_combout\ : std_logic;
SIGNAL \MuxJUMP|C[2]~0_combout\ : std_logic;
SIGNAL \UCFD|Mux3~0_combout\ : std_logic;
SIGNAL \MuxULAMem|C[0]~48_combout\ : std_logic;
SIGNAL \MuxULAMem|C[0]~49_combout\ : std_logic;
SIGNAL \BancoReg|ram[5][0]~q\ : std_logic;
SIGNAL \BancoReg|Mux95~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux95~2_combout\ : std_logic;
SIGNAL \regTestEnd[2]~input_o\ : std_logic;
SIGNAL \BancoReg|Mux95~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux95~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux95~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux95~5_combout\ : std_logic;
SIGNAL \BancoReg|Mux94~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux94~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux94~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux94~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux94~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux93~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux93~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux93~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux93~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux92~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux92~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux94~5_combout\ : std_logic;
SIGNAL \BancoReg|Mux92~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux92~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux92~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux91~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux91~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux91~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux91~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux90~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux90~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux90~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux90~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux90~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux89~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux89~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux89~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux89~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux89~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux89~5_combout\ : std_logic;
SIGNAL \BancoReg|Mux88~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux88~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux88~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux88~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux88~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux87~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux87~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux87~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux87~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux86~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux86~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux86~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux86~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux86~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux85~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux85~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux85~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux85~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux84~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux84~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux84~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux84~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux84~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux83~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux83~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux83~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux83~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux82~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux82~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux82~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux82~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux82~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux81~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux81~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux81~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux81~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux80~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux80~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux80~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux80~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux80~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux79~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux79~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux79~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux79~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux78~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux78~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux78~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux78~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux78~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux77~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux77~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux77~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux77~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux76~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux76~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux76~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux76~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux76~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux75~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux75~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux75~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux75~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux74~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux74~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux74~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux74~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux74~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux73~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux73~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux73~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux73~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux72~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux72~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux72~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux72~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux72~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux71~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux71~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux71~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux71~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux70~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux70~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux70~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux70~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux70~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux69~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux69~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux69~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux69~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux68~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux68~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux68~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux68~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux68~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux67~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux67~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux67~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux67~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux66~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux66~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux66~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux66~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux66~4_combout\ : std_logic;
SIGNAL \BancoReg|Mux65~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux65~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux65~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux65~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux64~0_combout\ : std_logic;
SIGNAL \BancoReg|Mux64~1_combout\ : std_logic;
SIGNAL \BancoReg|Mux64~2_combout\ : std_logic;
SIGNAL \BancoReg|Mux64~3_combout\ : std_logic;
SIGNAL \BancoReg|Mux64~4_combout\ : std_logic;
SIGNAL \memTestEnd[2]~input_o\ : std_logic;
SIGNAL \memTestEnd[0]~input_o\ : std_logic;
SIGNAL \memTestEnd[1]~input_o\ : std_logic;
SIGNAL \memTestEnd[3]~input_o\ : std_logic;
SIGNAL \MemDados|ram~549_combout\ : std_logic;
SIGNAL \MemDados|ram~550_combout\ : std_logic;
SIGNAL \MemDados|ram~551_combout\ : std_logic;
SIGNAL \MemDados|ram~552_combout\ : std_logic;
SIGNAL \MemDados|ram~553_combout\ : std_logic;
SIGNAL \MemDados|ram~554_combout\ : std_logic;
SIGNAL \MemDados|ram~555_combout\ : std_logic;
SIGNAL \MemDados|ram~556_combout\ : std_logic;
SIGNAL \MemDados|ram~557_combout\ : std_logic;
SIGNAL \MemDados|ram~558_combout\ : std_logic;
SIGNAL \MemDados|ram~559_combout\ : std_logic;
SIGNAL \BancoReg|Mux62~6_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[3]~7\ : std_logic;
SIGNAL \AdderPC|tempAdd[4]~8_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[3]~7\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[4]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~0_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[4]~9\ : std_logic;
SIGNAL \AdderPC|tempAdd[5]~10_combout\ : std_logic;
SIGNAL \InstMem|ram~561_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[4]~9\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[5]~10_combout\ : std_logic;
SIGNAL \MuxJUMP|C[5]~4_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[5]~11\ : std_logic;
SIGNAL \AdderPC|tempAdd[6]~12_combout\ : std_logic;
SIGNAL \InstMem|ram~562_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[5]~11\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[6]~12_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~1_combout\ : std_logic;
SIGNAL \InstMem|ram~563_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[6]~13\ : std_logic;
SIGNAL \AdderPC|tempAdd[7]~14_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[6]~13\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[7]~14_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~2_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[7]~15\ : std_logic;
SIGNAL \AdderPC|tempAdd[8]~16_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[7]~15\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[8]~16_combout\ : std_logic;
SIGNAL \MuxJUMP|C[8]~5_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[8]~17\ : std_logic;
SIGNAL \AdderPC|tempAdd[9]~18_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[8]~17\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[9]~18_combout\ : std_logic;
SIGNAL \PC|DOUT[9]~3_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[9]~19\ : std_logic;
SIGNAL \AdderPC|tempAdd[10]~20_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[9]~19\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[10]~20_combout\ : std_logic;
SIGNAL \PC|DOUT[10]~4_combout\ : std_logic;
SIGNAL \InstMem|ram~562_wirecell_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[10]~21\ : std_logic;
SIGNAL \AdderPC|tempAdd[11]~22_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[10]~21\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[11]~22_combout\ : std_logic;
SIGNAL \PC|DOUT[11]~5_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[11]~23\ : std_logic;
SIGNAL \AdderPC|tempAdd[12]~24_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[11]~23\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[12]~24_combout\ : std_logic;
SIGNAL \PC|DOUT[12]~6_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[12]~25\ : std_logic;
SIGNAL \AdderPC|tempAdd[13]~26_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[12]~25\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[13]~26_combout\ : std_logic;
SIGNAL \PC|DOUT[13]~7_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[13]~27\ : std_logic;
SIGNAL \AdderPC|tempAdd[14]~28_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[13]~27\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[14]~28_combout\ : std_logic;
SIGNAL \PC|DOUT[14]~8_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[14]~29\ : std_logic;
SIGNAL \AdderPC|tempAdd[15]~30_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[14]~29\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[15]~30_combout\ : std_logic;
SIGNAL \MuxJUMP|C[15]~6_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[15]~31\ : std_logic;
SIGNAL \AdderPC|tempAdd[16]~32_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[15]~31\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[16]~32_combout\ : std_logic;
SIGNAL \MuxJUMP|C[16]~7_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[16]~33\ : std_logic;
SIGNAL \AdderPC|tempAdd[17]~34_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[16]~33\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[17]~34_combout\ : std_logic;
SIGNAL \PC|DOUT[17]~9_combout\ : std_logic;
SIGNAL \InstMem|ram~549_wirecell_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[17]~35\ : std_logic;
SIGNAL \AdderPC|tempAdd[18]~36_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[17]~35\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[18]~36_combout\ : std_logic;
SIGNAL \MuxJUMP|C[18]~8_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[18]~37\ : std_logic;
SIGNAL \AdderPC|tempAdd[19]~38_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[18]~37\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[19]~38_combout\ : std_logic;
SIGNAL \MuxJUMP|C[19]~9_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[19]~39\ : std_logic;
SIGNAL \AdderPC|tempAdd[20]~40_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[19]~39\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[20]~40_combout\ : std_logic;
SIGNAL \PC|DOUT[20]~10_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[20]~41\ : std_logic;
SIGNAL \AdderPC|tempAdd[21]~42_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[20]~41\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[21]~42_combout\ : std_logic;
SIGNAL \PC|DOUT[21]~11_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[21]~43\ : std_logic;
SIGNAL \AdderPC|tempAdd[22]~44_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[21]~43\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[22]~44_combout\ : std_logic;
SIGNAL \PC|DOUT[22]~12_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[22]~45\ : std_logic;
SIGNAL \AdderPC|tempAdd[23]~46_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[22]~45\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[23]~46_combout\ : std_logic;
SIGNAL \PC|DOUT[23]~13_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[23]~47\ : std_logic;
SIGNAL \AdderPC|tempAdd[24]~48_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[23]~47\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[24]~48_combout\ : std_logic;
SIGNAL \MuxJUMP|C[24]~10_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[24]~49\ : std_logic;
SIGNAL \AdderPC|tempAdd[25]~50_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[24]~49\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[25]~50_combout\ : std_logic;
SIGNAL \PC|DOUT[25]~14_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[25]~51\ : std_logic;
SIGNAL \AdderPC|tempAdd[26]~52_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[25]~51\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[26]~52_combout\ : std_logic;
SIGNAL \MuxJUMP|C[26]~11_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[26]~53\ : std_logic;
SIGNAL \AdderPC|tempAdd[27]~54_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[26]~53\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[27]~54_combout\ : std_logic;
SIGNAL \PC|DOUT[27]~15_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[27]~55\ : std_logic;
SIGNAL \AdderPC|tempAdd[28]~56_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[27]~55\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[28]~56_combout\ : std_logic;
SIGNAL \MuxJUMP|C[28]~12_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[28]~57\ : std_logic;
SIGNAL \AdderPC|tempAdd[29]~58_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[28]~57\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[29]~58_combout\ : std_logic;
SIGNAL \MuxJUMP|C[29]~13_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[29]~59\ : std_logic;
SIGNAL \AdderPC|tempAdd[30]~60_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[29]~59\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[30]~60_combout\ : std_logic;
SIGNAL \MuxJUMP|C[30]~14_combout\ : std_logic;
SIGNAL \AdderPC|tempAdd[30]~61\ : std_logic;
SIGNAL \AdderPC|tempAdd[32]~62_combout\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[30]~61\ : std_logic;
SIGNAL \AdderBEQ|tempAdd[32]~62_combout\ : std_logic;
SIGNAL \MuxJUMP|C[31]~15_combout\ : std_logic;
SIGNAL \muxRtImm|C[0]~39_combout\ : std_logic;
SIGNAL \UCFD|Mux2~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \UCFD|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \InstMem|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \InstMem|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \InstMem|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \MemDados|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \MemDados|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \MemDados|ALT_INV_ram~555_combout\ : std_logic;

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
instRsOut <= ww_instRsOut;
instRtOut <= ww_instRtOut;
instRdOut <= ww_instRdOut;
readData1Out <= ww_readData1Out;
readData2Out <= ww_readData2Out;
writeData <= ww_writeData;
PCOutTeste <= ww_PCOutTeste;
ULAINA <= ww_ULAINA;
ULAINB <= ww_ULAINB;
ULAOUTTESTE <= ww_ULAOUTTESTE;
beqadder <= ww_beqadder;
beqadder2 <= ww_beqadder2;
beqadderout <= ww_beqadderout;
word <= ww_word;
ULASEL <= ww_ULASEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\UCFD|ALT_INV_Mux2~0_combout\ <= NOT \UCFD|Mux2~0_combout\;
\InstMem|ALT_INV_ram~562_combout\ <= NOT \InstMem|ram~562_combout\;
\InstMem|ALT_INV_ram~557_combout\ <= NOT \InstMem|ram~557_combout\;
\InstMem|ALT_INV_ram~549_combout\ <= NOT \InstMem|ram~549_combout\;
\MemDados|ALT_INV_ram~559_combout\ <= NOT \MemDados|ram~559_combout\;
\MemDados|ALT_INV_ram~557_combout\ <= NOT \MemDados|ram~557_combout\;
\MemDados|ALT_INV_ram~555_combout\ <= NOT \MemDados|ram~555_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y0_N9
\regTestOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux95~5_combout\,
	devoe => ww_devoe,
	o => \regTestOut[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\regTestOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux94~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[1]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\regTestOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux93~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\regTestOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux92~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[3]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\regTestOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux91~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[4]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\regTestOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux90~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[5]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\regTestOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux89~5_combout\,
	devoe => ww_devoe,
	o => \regTestOut[6]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\regTestOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux88~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[7]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\regTestOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux87~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\regTestOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux86~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[9]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\regTestOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux85~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[10]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\regTestOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux84~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[11]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\regTestOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux83~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[12]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\regTestOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux82~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[13]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\regTestOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux81~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[14]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\regTestOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux80~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[15]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\regTestOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux79~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[16]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\regTestOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux78~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[17]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\regTestOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux77~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[18]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\regTestOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux76~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[19]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\regTestOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux75~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[20]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\regTestOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux74~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[21]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\regTestOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux73~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[22]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\regTestOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux72~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[23]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\regTestOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux71~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[24]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\regTestOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux70~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[25]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\regTestOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux69~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[26]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\regTestOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux68~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[27]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\regTestOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux67~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[28]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\regTestOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux66~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[29]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\regTestOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux65~3_combout\,
	devoe => ww_devoe,
	o => \regTestOut[30]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\regTestOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux64~4_combout\,
	devoe => ww_devoe,
	o => \regTestOut[31]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X0_Y20_N16
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X3_Y0_N23
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

-- Location: IOOBUF_X0_Y30_N9
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X3_Y0_N2
\memTestOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~553_combout\,
	devoe => ww_devoe,
	o => \memTestOut[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\memTestOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~554_combout\,
	devoe => ww_devoe,
	o => \memTestOut[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\memTestOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~554_combout\,
	devoe => ww_devoe,
	o => \memTestOut[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\memTestOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~554_combout\,
	devoe => ww_devoe,
	o => \memTestOut[9]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\memTestOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~554_combout\,
	devoe => ww_devoe,
	o => \memTestOut[10]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
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

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X1_Y0_N9
\memTestOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ALT_INV_ram~555_combout\,
	devoe => ww_devoe,
	o => \memTestOut[13]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N23
\memTestOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~556_combout\,
	devoe => ww_devoe,
	o => \memTestOut[16]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\memTestOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ALT_INV_ram~555_combout\,
	devoe => ww_devoe,
	o => \memTestOut[17]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\memTestOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ALT_INV_ram~557_combout\,
	devoe => ww_devoe,
	o => \memTestOut[18]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\memTestOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~558_combout\,
	devoe => ww_devoe,
	o => \memTestOut[19]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
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

-- Location: IOOBUF_X1_Y0_N23
\memTestOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ALT_INV_ram~555_combout\,
	devoe => ww_devoe,
	o => \memTestOut[21]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
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

-- Location: IOOBUF_X0_Y5_N16
\memTestOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ALT_INV_ram~557_combout\,
	devoe => ww_devoe,
	o => \memTestOut[23]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\memTestOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~558_combout\,
	devoe => ww_devoe,
	o => \memTestOut[24]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
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

-- Location: IOOBUF_X0_Y4_N23
\memTestOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ALT_INV_ram~557_combout\,
	devoe => ww_devoe,
	o => \memTestOut[26]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\memTestOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ALT_INV_ram~559_combout\,
	devoe => ww_devoe,
	o => \memTestOut[27]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\memTestOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ram~558_combout\,
	devoe => ww_devoe,
	o => \memTestOut[28]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X0_Y4_N2
\memTestOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MemDados|ALT_INV_ram~557_combout\,
	devoe => ww_devoe,
	o => \memTestOut[31]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\instRsOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ALT_INV_ram~549_combout\,
	devoe => ww_devoe,
	o => \instRsOut[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\instRsOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instRsOut[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\instRsOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~550_combout\,
	devoe => ww_devoe,
	o => \instRsOut[2]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\instRsOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~551_combout\,
	devoe => ww_devoe,
	o => \instRsOut[3]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\instRsOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instRsOut[4]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\instRtOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~552_combout\,
	devoe => ww_devoe,
	o => \instRtOut[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\instRtOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ALT_INV_ram~549_combout\,
	devoe => ww_devoe,
	o => \instRtOut[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\instRtOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~550_combout\,
	devoe => ww_devoe,
	o => \instRtOut[2]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\instRtOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~551_combout\,
	devoe => ww_devoe,
	o => \instRtOut[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\instRtOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instRtOut[4]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\instRdOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instRdOut[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\instRdOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instRdOut[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\instRdOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ALT_INV_ram~549_combout\,
	devoe => ww_devoe,
	o => \instRdOut[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\instRdOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instRdOut[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\instRdOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instRdOut[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\readData1Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux31~4_combout\,
	devoe => ww_devoe,
	o => \readData1Out[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\readData1Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux30~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[1]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\readData1Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[2]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\readData1Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux28~4_combout\,
	devoe => ww_devoe,
	o => \readData1Out[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\readData1Out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux27~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\readData1Out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux26~4_combout\,
	devoe => ww_devoe,
	o => \readData1Out[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\readData1Out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux25~4_combout\,
	devoe => ww_devoe,
	o => \readData1Out[6]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\readData1Out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux24~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[7]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\readData1Out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux23~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[8]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\readData1Out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux22~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[9]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\readData1Out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux21~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[10]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\readData1Out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux20~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[11]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\readData1Out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux19~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[12]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\readData1Out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux18~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[13]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\readData1Out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux17~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\readData1Out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[15]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\readData1Out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux15~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[16]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\readData1Out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux14~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[17]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\readData1Out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux13~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[18]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\readData1Out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[19]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\readData1Out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[20]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\readData1Out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux10~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[21]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\readData1Out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux9~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[22]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\readData1Out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux8~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[23]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\readData1Out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\readData1Out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[25]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\readData1Out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[26]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\readData1Out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[27]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\readData1Out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[28]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\readData1Out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[29]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\readData1Out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[30]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\readData1Out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \readData1Out[31]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\readData2Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux63~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[0]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\readData2Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux62~6_combout\,
	devoe => ww_devoe,
	o => \readData2Out[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\readData2Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux61~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[2]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\readData2Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux60~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[3]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\readData2Out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux59~4_combout\,
	devoe => ww_devoe,
	o => \readData2Out[4]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\readData2Out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux58~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\readData2Out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux57~4_combout\,
	devoe => ww_devoe,
	o => \readData2Out[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\readData2Out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux56~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[7]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\readData2Out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux55~4_combout\,
	devoe => ww_devoe,
	o => \readData2Out[8]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\readData2Out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux54~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[9]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\readData2Out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux53~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[10]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\readData2Out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux52~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[11]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\readData2Out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux51~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[12]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\readData2Out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux50~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[13]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\readData2Out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux49~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[14]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\readData2Out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux48~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[15]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\readData2Out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux47~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[16]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\readData2Out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux46~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[17]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\readData2Out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux45~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[18]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\readData2Out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux44~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[19]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\readData2Out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux43~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[20]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\readData2Out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux42~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[21]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\readData2Out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux41~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[22]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\readData2Out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux40~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[23]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\readData2Out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux39~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[24]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\readData2Out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux38~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[25]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\readData2Out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux37~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[26]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\readData2Out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux36~4_combout\,
	devoe => ww_devoe,
	o => \readData2Out[27]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\readData2Out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux35~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[28]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\readData2Out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux34~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[29]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\readData2Out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux33~4_combout\,
	devoe => ww_devoe,
	o => \readData2Out[30]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\readData2Out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux32~5_combout\,
	devoe => ww_devoe,
	o => \readData2Out[31]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\writeData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[0]~49_combout\,
	devoe => ww_devoe,
	o => \writeData[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\writeData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[1]~2_combout\,
	devoe => ww_devoe,
	o => \writeData[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\writeData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[2]~4_combout\,
	devoe => ww_devoe,
	o => \writeData[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\writeData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[3]~7_combout\,
	devoe => ww_devoe,
	o => \writeData[3]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\writeData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[4]~8_combout\,
	devoe => ww_devoe,
	o => \writeData[4]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\writeData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[5]~11_combout\,
	devoe => ww_devoe,
	o => \writeData[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\writeData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[6]~47_combout\,
	devoe => ww_devoe,
	o => \writeData[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\writeData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[7]~15_combout\,
	devoe => ww_devoe,
	o => \writeData[7]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\writeData[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[8]~16_combout\,
	devoe => ww_devoe,
	o => \writeData[8]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\writeData[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[9]~17_combout\,
	devoe => ww_devoe,
	o => \writeData[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\writeData[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[10]~18_combout\,
	devoe => ww_devoe,
	o => \writeData[10]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\writeData[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[11]~19_combout\,
	devoe => ww_devoe,
	o => \writeData[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\writeData[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[12]~20_combout\,
	devoe => ww_devoe,
	o => \writeData[12]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\writeData[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[13]~23_combout\,
	devoe => ww_devoe,
	o => \writeData[13]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\writeData[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[14]~24_combout\,
	devoe => ww_devoe,
	o => \writeData[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\writeData[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[15]~25_combout\,
	devoe => ww_devoe,
	o => \writeData[15]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\writeData[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[16]~27_combout\,
	devoe => ww_devoe,
	o => \writeData[16]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\writeData[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[17]~28_combout\,
	devoe => ww_devoe,
	o => \writeData[17]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\writeData[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[18]~30_combout\,
	devoe => ww_devoe,
	o => \writeData[18]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\writeData[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[19]~33_combout\,
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
	i => \MuxULAMem|C[20]~34_combout\,
	devoe => ww_devoe,
	o => \writeData[20]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\writeData[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[21]~35_combout\,
	devoe => ww_devoe,
	o => \writeData[21]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\writeData[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[22]~36_combout\,
	devoe => ww_devoe,
	o => \writeData[22]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\writeData[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[23]~37_combout\,
	devoe => ww_devoe,
	o => \writeData[23]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\writeData[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[24]~38_combout\,
	devoe => ww_devoe,
	o => \writeData[24]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\writeData[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[25]~39_combout\,
	devoe => ww_devoe,
	o => \writeData[25]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\writeData[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[26]~40_combout\,
	devoe => ww_devoe,
	o => \writeData[26]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\writeData[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[27]~42_combout\,
	devoe => ww_devoe,
	o => \writeData[27]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\writeData[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[28]~43_combout\,
	devoe => ww_devoe,
	o => \writeData[28]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\writeData[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[29]~44_combout\,
	devoe => ww_devoe,
	o => \writeData[29]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\writeData[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[30]~45_combout\,
	devoe => ww_devoe,
	o => \writeData[30]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\writeData[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxULAMem|C[31]~46_combout\,
	devoe => ww_devoe,
	o => \writeData[31]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X115_Y55_N16
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

-- Location: IOOBUF_X115_Y52_N9
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

-- Location: IOOBUF_X115_Y23_N2
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X98_Y0_N23
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

-- Location: IOOBUF_X115_Y60_N16
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

-- Location: IOOBUF_X115_Y18_N9
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

-- Location: IOOBUF_X98_Y73_N16
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X115_Y19_N2
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

-- Location: IOOBUF_X115_Y65_N23
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

-- Location: IOOBUF_X115_Y27_N9
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

-- Location: IOOBUF_X115_Y24_N2
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X115_Y23_N9
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

-- Location: IOOBUF_X115_Y29_N2
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

-- Location: IOOBUF_X115_Y17_N2
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

-- Location: IOOBUF_X115_Y28_N9
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

-- Location: IOOBUF_X115_Y26_N23
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

-- Location: IOOBUF_X115_Y31_N2
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

-- Location: IOOBUF_X115_Y27_N2
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

-- Location: IOOBUF_X94_Y0_N2
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

-- Location: IOOBUF_X96_Y0_N23
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

-- Location: IOOBUF_X94_Y0_N9
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

-- Location: IOOBUF_X115_Y14_N2
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

-- Location: IOOBUF_X115_Y29_N9
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

-- Location: IOOBUF_X115_Y22_N16
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

-- Location: IOOBUF_X115_Y25_N16
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

-- Location: IOOBUF_X115_Y18_N2
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

-- Location: IOOBUF_X115_Y11_N9
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

-- Location: IOOBUF_X11_Y73_N16
\ULAINA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux31~4_combout\,
	devoe => ww_devoe,
	o => \ULAINA[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\ULAINA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux30~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[1]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\ULAINA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[2]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\ULAINA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux28~4_combout\,
	devoe => ww_devoe,
	o => \ULAINA[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\ULAINA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux27~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\ULAINA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux26~4_combout\,
	devoe => ww_devoe,
	o => \ULAINA[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\ULAINA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux25~4_combout\,
	devoe => ww_devoe,
	o => \ULAINA[6]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\ULAINA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux24~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[7]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\ULAINA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux23~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[8]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\ULAINA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux22~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[9]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\ULAINA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux21~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\ULAINA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux20~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[11]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\ULAINA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux19~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[12]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\ULAINA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux18~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[13]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\ULAINA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux17~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\ULAINA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[15]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\ULAINA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux15~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[16]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\ULAINA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux14~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[17]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\ULAINA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux13~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[18]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\ULAINA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[19]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\ULAINA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[20]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\ULAINA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux10~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[21]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\ULAINA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux9~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[22]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\ULAINA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux8~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[23]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\ULAINA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\ULAINA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[25]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\ULAINA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[26]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\ULAINA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[27]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\ULAINA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[28]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\ULAINA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[29]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\ULAINA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[30]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\ULAINA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BancoReg|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \ULAINA[31]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\ULAINB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[0]~39_combout\,
	devoe => ww_devoe,
	o => \ULAINB[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\ULAINB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[1]~10_combout\,
	devoe => ww_devoe,
	o => \ULAINB[1]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\ULAINB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[2]~9_combout\,
	devoe => ww_devoe,
	o => \ULAINB[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\ULAINB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[3]~8_combout\,
	devoe => ww_devoe,
	o => \ULAINB[3]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\ULAINB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[4]~38_combout\,
	devoe => ww_devoe,
	o => \ULAINB[4]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\ULAINB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[5]~37_combout\,
	devoe => ww_devoe,
	o => \ULAINB[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\ULAINB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[6]~36_combout\,
	devoe => ww_devoe,
	o => \ULAINB[6]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\ULAINB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[7]~35_combout\,
	devoe => ww_devoe,
	o => \ULAINB[7]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\ULAINB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[8]~34_combout\,
	devoe => ww_devoe,
	o => \ULAINB[8]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\ULAINB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[9]~33_combout\,
	devoe => ww_devoe,
	o => \ULAINB[9]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\ULAINB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[10]~32_combout\,
	devoe => ww_devoe,
	o => \ULAINB[10]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\ULAINB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[11]~31_combout\,
	devoe => ww_devoe,
	o => \ULAINB[11]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\ULAINB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[12]~30_combout\,
	devoe => ww_devoe,
	o => \ULAINB[12]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\ULAINB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[13]~29_combout\,
	devoe => ww_devoe,
	o => \ULAINB[13]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\ULAINB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[14]~28_combout\,
	devoe => ww_devoe,
	o => \ULAINB[14]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\ULAINB[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[15]~27_combout\,
	devoe => ww_devoe,
	o => \ULAINB[15]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\ULAINB[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[16]~26_combout\,
	devoe => ww_devoe,
	o => \ULAINB[16]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\ULAINB[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[17]~25_combout\,
	devoe => ww_devoe,
	o => \ULAINB[17]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\ULAINB[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[18]~24_combout\,
	devoe => ww_devoe,
	o => \ULAINB[18]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\ULAINB[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[19]~23_combout\,
	devoe => ww_devoe,
	o => \ULAINB[19]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\ULAINB[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[20]~22_combout\,
	devoe => ww_devoe,
	o => \ULAINB[20]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X47_Y73_N16
\ULAINB[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[22]~20_combout\,
	devoe => ww_devoe,
	o => \ULAINB[22]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\ULAINB[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[23]~19_combout\,
	devoe => ww_devoe,
	o => \ULAINB[23]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\ULAINB[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[24]~18_combout\,
	devoe => ww_devoe,
	o => \ULAINB[24]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\ULAINB[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[25]~17_combout\,
	devoe => ww_devoe,
	o => \ULAINB[25]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\ULAINB[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[26]~16_combout\,
	devoe => ww_devoe,
	o => \ULAINB[26]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\ULAINB[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[27]~15_combout\,
	devoe => ww_devoe,
	o => \ULAINB[27]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\ULAINB[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[28]~14_combout\,
	devoe => ww_devoe,
	o => \ULAINB[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\ULAINB[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[29]~13_combout\,
	devoe => ww_devoe,
	o => \ULAINB[29]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\ULAINB[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[30]~12_combout\,
	devoe => ww_devoe,
	o => \ULAINB[30]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\ULAINB[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxRtImm|C[31]~11_combout\,
	devoe => ww_devoe,
	o => \ULAINB[31]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\ULAOUTTESTE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux31~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\ULAOUTTESTE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\ULAOUTTESTE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux29~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[2]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\ULAOUTTESTE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\ULAOUTTESTE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux27~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[4]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\ULAOUTTESTE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\ULAOUTTESTE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[6]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\ULAOUTTESTE[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[7]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\ULAOUTTESTE[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux23~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[8]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\ULAOUTTESTE[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[9]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\ULAOUTTESTE[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux21~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[10]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\ULAOUTTESTE[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux20~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[11]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\ULAOUTTESTE[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[12]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\ULAOUTTESTE[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux18~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[13]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\ULAOUTTESTE[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux17~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[14]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\ULAOUTTESTE[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[15]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\ULAOUTTESTE[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[16]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\ULAOUTTESTE[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[17]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\ULAOUTTESTE[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[18]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\ULAOUTTESTE[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[19]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\ULAOUTTESTE[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[20]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\ULAOUTTESTE[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[21]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\ULAOUTTESTE[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[22]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\ULAOUTTESTE[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[23]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\ULAOUTTESTE[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[24]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\ULAOUTTESTE[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[25]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\ULAOUTTESTE[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[26]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\ULAOUTTESTE[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[27]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\ULAOUTTESTE[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[28]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\ULAOUTTESTE[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[29]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\ULAOUTTESTE[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[30]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\ULAOUTTESTE[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ULAOUTTESTE[31]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
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

-- Location: IOOBUF_X0_Y67_N23
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

-- Location: IOOBUF_X79_Y0_N2
\beqadder[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~558_combout\,
	devoe => ww_devoe,
	o => \beqadder[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X115_Y16_N9
\beqadder[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~559_combout\,
	devoe => ww_devoe,
	o => \beqadder[4]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\beqadder[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~560_combout\,
	devoe => ww_devoe,
	o => \beqadder[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X115_Y56_N16
\beqadder[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~561_combout\,
	devoe => ww_devoe,
	o => \beqadder[7]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\beqadder[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ALT_INV_ram~562_combout\,
	devoe => ww_devoe,
	o => \beqadder[8]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\beqadder[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~563_combout\,
	devoe => ww_devoe,
	o => \beqadder[9]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\beqadder[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~563_combout\,
	devoe => ww_devoe,
	o => \beqadder[10]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\beqadder[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~563_combout\,
	devoe => ww_devoe,
	o => \beqadder[11]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\beqadder[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~563_combout\,
	devoe => ww_devoe,
	o => \beqadder[12]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X27_Y73_N23
\beqadder[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ALT_INV_ram~549_combout\,
	devoe => ww_devoe,
	o => \beqadder[15]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X0_Y19_N2
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X0_Y24_N9
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

-- Location: IOOBUF_X3_Y73_N23
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X1_Y73_N9
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

-- Location: IOOBUF_X0_Y60_N16
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

-- Location: IOOBUF_X0_Y16_N16
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X0_Y29_N23
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

-- Location: IOOBUF_X115_Y62_N9
\beqadder2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[0]~0_combout\,
	devoe => ww_devoe,
	o => \beqadder2[0]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\beqadder2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[1]~2_combout\,
	devoe => ww_devoe,
	o => \beqadder2[1]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\beqadder2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[2]~4_combout\,
	devoe => ww_devoe,
	o => \beqadder2[2]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\beqadder2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[3]~6_combout\,
	devoe => ww_devoe,
	o => \beqadder2[3]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\beqadder2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[4]~8_combout\,
	devoe => ww_devoe,
	o => \beqadder2[4]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\beqadder2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[5]~10_combout\,
	devoe => ww_devoe,
	o => \beqadder2[5]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\beqadder2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[6]~12_combout\,
	devoe => ww_devoe,
	o => \beqadder2[6]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\beqadder2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[7]~14_combout\,
	devoe => ww_devoe,
	o => \beqadder2[7]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\beqadder2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[8]~16_combout\,
	devoe => ww_devoe,
	o => \beqadder2[8]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\beqadder2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[9]~18_combout\,
	devoe => ww_devoe,
	o => \beqadder2[9]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\beqadder2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[10]~20_combout\,
	devoe => ww_devoe,
	o => \beqadder2[10]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\beqadder2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[11]~22_combout\,
	devoe => ww_devoe,
	o => \beqadder2[11]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\beqadder2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[12]~24_combout\,
	devoe => ww_devoe,
	o => \beqadder2[12]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\beqadder2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[13]~26_combout\,
	devoe => ww_devoe,
	o => \beqadder2[13]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\beqadder2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[14]~28_combout\,
	devoe => ww_devoe,
	o => \beqadder2[14]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\beqadder2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[15]~30_combout\,
	devoe => ww_devoe,
	o => \beqadder2[15]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\beqadder2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[16]~32_combout\,
	devoe => ww_devoe,
	o => \beqadder2[16]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\beqadder2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[17]~34_combout\,
	devoe => ww_devoe,
	o => \beqadder2[17]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\beqadder2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[18]~36_combout\,
	devoe => ww_devoe,
	o => \beqadder2[18]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\beqadder2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[19]~38_combout\,
	devoe => ww_devoe,
	o => \beqadder2[19]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\beqadder2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[20]~40_combout\,
	devoe => ww_devoe,
	o => \beqadder2[20]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\beqadder2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[21]~42_combout\,
	devoe => ww_devoe,
	o => \beqadder2[21]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\beqadder2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[22]~44_combout\,
	devoe => ww_devoe,
	o => \beqadder2[22]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\beqadder2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[23]~46_combout\,
	devoe => ww_devoe,
	o => \beqadder2[23]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\beqadder2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[24]~48_combout\,
	devoe => ww_devoe,
	o => \beqadder2[24]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\beqadder2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[25]~50_combout\,
	devoe => ww_devoe,
	o => \beqadder2[25]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\beqadder2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[26]~52_combout\,
	devoe => ww_devoe,
	o => \beqadder2[26]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\beqadder2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[27]~54_combout\,
	devoe => ww_devoe,
	o => \beqadder2[27]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\beqadder2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[28]~56_combout\,
	devoe => ww_devoe,
	o => \beqadder2[28]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\beqadder2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[29]~58_combout\,
	devoe => ww_devoe,
	o => \beqadder2[29]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\beqadder2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[30]~60_combout\,
	devoe => ww_devoe,
	o => \beqadder2[30]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\beqadder2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderPC|tempAdd[32]~62_combout\,
	devoe => ww_devoe,
	o => \beqadder2[31]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\beqadderout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[0]~0_combout\,
	devoe => ww_devoe,
	o => \beqadderout[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\beqadderout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[1]~2_combout\,
	devoe => ww_devoe,
	o => \beqadderout[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\beqadderout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[2]~4_combout\,
	devoe => ww_devoe,
	o => \beqadderout[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\beqadderout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[3]~6_combout\,
	devoe => ww_devoe,
	o => \beqadderout[3]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\beqadderout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[4]~8_combout\,
	devoe => ww_devoe,
	o => \beqadderout[4]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\beqadderout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[5]~10_combout\,
	devoe => ww_devoe,
	o => \beqadderout[5]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\beqadderout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[6]~12_combout\,
	devoe => ww_devoe,
	o => \beqadderout[6]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\beqadderout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[7]~14_combout\,
	devoe => ww_devoe,
	o => \beqadderout[7]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\beqadderout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[8]~16_combout\,
	devoe => ww_devoe,
	o => \beqadderout[8]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\beqadderout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[9]~18_combout\,
	devoe => ww_devoe,
	o => \beqadderout[9]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\beqadderout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[10]~20_combout\,
	devoe => ww_devoe,
	o => \beqadderout[10]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\beqadderout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[11]~22_combout\,
	devoe => ww_devoe,
	o => \beqadderout[11]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\beqadderout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[12]~24_combout\,
	devoe => ww_devoe,
	o => \beqadderout[12]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\beqadderout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[13]~26_combout\,
	devoe => ww_devoe,
	o => \beqadderout[13]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\beqadderout[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[14]~28_combout\,
	devoe => ww_devoe,
	o => \beqadderout[14]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\beqadderout[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[15]~30_combout\,
	devoe => ww_devoe,
	o => \beqadderout[15]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\beqadderout[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[16]~32_combout\,
	devoe => ww_devoe,
	o => \beqadderout[16]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\beqadderout[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[17]~34_combout\,
	devoe => ww_devoe,
	o => \beqadderout[17]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\beqadderout[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[18]~36_combout\,
	devoe => ww_devoe,
	o => \beqadderout[18]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\beqadderout[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[19]~38_combout\,
	devoe => ww_devoe,
	o => \beqadderout[19]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\beqadderout[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[20]~40_combout\,
	devoe => ww_devoe,
	o => \beqadderout[20]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\beqadderout[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[21]~42_combout\,
	devoe => ww_devoe,
	o => \beqadderout[21]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\beqadderout[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[22]~44_combout\,
	devoe => ww_devoe,
	o => \beqadderout[22]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\beqadderout[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[23]~46_combout\,
	devoe => ww_devoe,
	o => \beqadderout[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\beqadderout[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[24]~48_combout\,
	devoe => ww_devoe,
	o => \beqadderout[24]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\beqadderout[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[25]~50_combout\,
	devoe => ww_devoe,
	o => \beqadderout[25]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\beqadderout[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[26]~52_combout\,
	devoe => ww_devoe,
	o => \beqadderout[26]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\beqadderout[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[27]~54_combout\,
	devoe => ww_devoe,
	o => \beqadderout[27]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\beqadderout[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[28]~56_combout\,
	devoe => ww_devoe,
	o => \beqadderout[28]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\beqadderout[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[29]~58_combout\,
	devoe => ww_devoe,
	o => \beqadderout[29]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\beqadderout[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[30]~60_combout\,
	devoe => ww_devoe,
	o => \beqadderout[30]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\beqadderout[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBEQ|tempAdd[32]~62_combout\,
	devoe => ww_devoe,
	o => \beqadderout[31]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\word[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~551_combout\,
	devoe => ww_devoe,
	o => \word[0]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\word[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \word[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X100_Y0_N16
\word[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \word[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\word[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ram~551_combout\,
	devoe => ww_devoe,
	o => \word[4]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\word[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \word[5]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\word[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \word[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\word[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \word[7]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\word[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \word[8]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\word[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCFD|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \word[9]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
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

-- Location: IOOBUF_X115_Y52_N2
\ULASEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstMem|ALT_INV_ram~557_combout\,
	devoe => ww_devoe,
	o => \ULASEL[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X87_Y73_N9
\ULASEL[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCULA|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \ULASEL[3]~output_o\);

-- Location: IOIBUF_X89_Y73_N22
\regTestEnd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(3),
	o => \regTestEnd[3]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\regTestEnd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(0),
	o => \regTestEnd[0]~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\regTestEnd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(1),
	o => \regTestEnd[1]~input_o\);

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

-- Location: LCCOMB_X92_Y46_N0
\AdderPC|tempAdd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[0]~0_combout\ = \PC|DOUT\(0) $ (VCC)
-- \AdderPC|tempAdd[0]~1\ = CARRY(\PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datad => VCC,
	combout => \AdderPC|tempAdd[0]~0_combout\,
	cout => \AdderPC|tempAdd[0]~1\);

-- Location: LCCOMB_X81_Y47_N24
\InstMem|ram~558\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~558_combout\ = (!\PC|DOUT\(3) & ((\PC|DOUT\(0) & ((!\PC|DOUT\(2)))) # (!\PC|DOUT\(0) & ((\PC|DOUT\(1)) # (\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(2),
	combout => \InstMem|ram~558_combout\);

-- Location: LCCOMB_X91_Y46_N0
\AdderBEQ|tempAdd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[0]~0_combout\ = (\InstMem|ram~558_combout\ & (\AdderPC|tempAdd[0]~0_combout\ $ (VCC))) # (!\InstMem|ram~558_combout\ & (\AdderPC|tempAdd[0]~0_combout\ & VCC))
-- \AdderBEQ|tempAdd[0]~1\ = CARRY((\InstMem|ram~558_combout\ & \AdderPC|tempAdd[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~558_combout\,
	datab => \AdderPC|tempAdd[0]~0_combout\,
	datad => VCC,
	combout => \AdderBEQ|tempAdd[0]~0_combout\,
	cout => \AdderBEQ|tempAdd[0]~1\);

-- Location: LCCOMB_X82_Y47_N14
\InstMem|ram~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~551_combout\ = (!\PC|DOUT\(3) & (\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(2),
	datad => \PC|DOUT\(0),
	combout => \InstMem|ram~551_combout\);

-- Location: LCCOMB_X82_Y47_N4
\UCFD|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCFD|Mux8~0_combout\ = (\PC|DOUT\(3)) # ((\PC|DOUT\(2) & ((\PC|DOUT\(0)) # (\PC|DOUT\(1)))) # (!\PC|DOUT\(2) & (\PC|DOUT\(0) $ (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(2),
	datab => \PC|DOUT\(3),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(1),
	combout => \UCFD|Mux8~0_combout\);

-- Location: LCCOMB_X82_Y47_N2
\UCULA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCULA|Mux3~0_combout\ = (!\PC|DOUT\(3) & ((\PC|DOUT\(2)) # ((\PC|DOUT\(0)) # (\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(2),
	datab => \PC|DOUT\(3),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(1),
	combout => \UCULA|Mux3~0_combout\);

-- Location: LCCOMB_X81_Y47_N22
\UCULA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCULA|Mux5~0_combout\ = (\InstMem|ram~551_combout\) # ((\UCFD|Mux8~0_combout\ & \UCULA|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux8~0_combout\,
	datab => \InstMem|ram~551_combout\,
	datad => \UCULA|Mux3~0_combout\,
	combout => \UCULA|Mux5~0_combout\);

-- Location: LCCOMB_X82_Y47_N6
\InstMem|ram~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~553_combout\ = (\PC|DOUT\(0)) # (\PC|DOUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(1),
	combout => \InstMem|ram~553_combout\);

-- Location: LCCOMB_X81_Y47_N8
\BancoReg|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux63~4_combout\ = (\PC|DOUT\(3)) # (((\PC|DOUT\(0)) # (\PC|DOUT\(2))) # (!\PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(2),
	combout => \BancoReg|Mux63~4_combout\);

-- Location: LCCOMB_X82_Y47_N16
\InstMem|ram~554\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~554_combout\ = (\PC|DOUT\(2)) # (\PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|DOUT\(2),
	datad => \PC|DOUT\(3),
	combout => \InstMem|ram~554_combout\);

-- Location: LCCOMB_X82_Y47_N30
\InstMem|ram~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~549_combout\ = (\PC|DOUT\(0)) # ((\PC|DOUT\(1)) # ((\PC|DOUT\(2)) # (\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(2),
	datad => \PC|DOUT\(3),
	combout => \InstMem|ram~549_combout\);

-- Location: LCCOMB_X82_Y47_N24
\InstMem|ram~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~552_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (\PC|DOUT\(1) $ (\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(2),
	datad => \PC|DOUT\(0),
	combout => \InstMem|ram~552_combout\);

-- Location: LCCOMB_X81_Y49_N26
\BancoReg|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Decoder0~0_combout\ = (\PC|DOUT\(3)) # ((\PC|DOUT\(1) & ((\PC|DOUT\(2)) # (\PC|DOUT\(0)))) # (!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(3),
	datac => \PC|DOUT\(2),
	datad => \PC|DOUT\(0),
	combout => \BancoReg|Decoder0~0_combout\);

-- Location: LCCOMB_X80_Y49_N30
\BancoReg|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Decoder0~6_combout\ = (\BancoReg|Decoder0~0_combout\ & !\InstMem|ram~551_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Decoder0~0_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Decoder0~6_combout\);

-- Location: FF_X81_Y47_N23
\BancoReg|ram[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[0]~49_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][0]~q\);

-- Location: LCCOMB_X83_Y48_N16
\BancoReg|ram[8][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[8][0]~0_combout\ = !\MuxULAMem|C[0]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[0]~49_combout\,
	combout => \BancoReg|ram[8][0]~0_combout\);

-- Location: LCCOMB_X80_Y49_N20
\BancoReg|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Decoder0~1_combout\ = (\BancoReg|Decoder0~0_combout\ & \InstMem|ram~551_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Decoder0~0_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Decoder0~1_combout\);

-- Location: FF_X83_Y48_N17
\BancoReg|ram[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[8][0]~0_combout\,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][0]~q\);

-- Location: LCCOMB_X81_Y47_N0
\BancoReg|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux63~2_combout\ = (\InstMem|ram~552_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~552_combout\ & ((\InstMem|ram~551_combout\ & ((!\BancoReg|ram[8][0]~q\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~552_combout\,
	datab => \BancoReg|ram[0][0]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|ram[8][0]~q\,
	combout => \BancoReg|Mux63~2_combout\);

-- Location: LCCOMB_X82_Y47_N0
\InstMem|ram~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~550_combout\ = (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(2),
	datad => \PC|DOUT\(3),
	combout => \InstMem|ram~550_combout\);

-- Location: LCCOMB_X82_Y50_N10
\BancoReg|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Decoder0~4_combout\ = (!\PC|DOUT\(1) & (!\PC|DOUT\(3) & (\PC|DOUT\(0) & !\PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(3),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(2),
	combout => \BancoReg|Decoder0~4_combout\);

-- Location: LCCOMB_X82_Y51_N10
\BancoReg|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Decoder0~8_combout\ = (\BancoReg|Decoder0~4_combout\ & \InstMem|ram~551_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BancoReg|Decoder0~4_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Decoder0~8_combout\);

-- Location: FF_X83_Y48_N31
\BancoReg|ram[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[0]~49_combout\,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][0]~q\);

-- Location: LCCOMB_X84_Y49_N0
\BancoReg|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Decoder0~2_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & !\PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datab => \PC|DOUT\(0),
	datac => \PC|DOUT\(1),
	datad => \PC|DOUT\(2),
	combout => \BancoReg|Decoder0~2_combout\);

-- Location: LCCOMB_X84_Y49_N26
\BancoReg|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Decoder0~7_combout\ = (\InstMem|ram~551_combout\ & \BancoReg|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMem|ram~551_combout\,
	datad => \BancoReg|Decoder0~2_combout\,
	combout => \BancoReg|Decoder0~7_combout\);

-- Location: FF_X82_Y47_N29
\BancoReg|ram[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[0]~49_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][0]~q\);

-- Location: LCCOMB_X82_Y48_N0
\BancoReg|ram[4][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][0]~1_combout\ = !\MuxULAMem|C[0]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[0]~49_combout\,
	combout => \BancoReg|ram[4][0]~1_combout\);

-- Location: LCCOMB_X84_Y49_N20
\BancoReg|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Decoder0~3_combout\ = (!\InstMem|ram~551_combout\ & \BancoReg|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMem|ram~551_combout\,
	datad => \BancoReg|Decoder0~2_combout\,
	combout => \BancoReg|Decoder0~3_combout\);

-- Location: FF_X82_Y48_N1
\BancoReg|ram[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][0]~1_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][0]~q\);

-- Location: LCCOMB_X82_Y47_N18
\BancoReg|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux63~0_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|ram[12][0]~q\) # ((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~551_combout\ & (((!\InstMem|ram~552_combout\ & !\BancoReg|ram[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][0]~q\,
	datab => \InstMem|ram~551_combout\,
	datac => \InstMem|ram~552_combout\,
	datad => \BancoReg|ram[4][0]~q\,
	combout => \BancoReg|Mux63~0_combout\);

-- Location: LCCOMB_X81_Y47_N10
\BancoReg|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux63~1_combout\ = (\InstMem|ram~552_combout\ & ((\BancoReg|Mux63~0_combout\ & ((\BancoReg|ram[13][0]~q\))) # (!\BancoReg|Mux63~0_combout\ & (\BancoReg|ram[5][0]~q\)))) # (!\InstMem|ram~552_combout\ & (((\BancoReg|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~552_combout\,
	datab => \BancoReg|ram[5][0]~q\,
	datac => \BancoReg|ram[13][0]~q\,
	datad => \BancoReg|Mux63~0_combout\,
	combout => \BancoReg|Mux63~1_combout\);

-- Location: LCCOMB_X81_Y47_N2
\BancoReg|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux63~3_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|Mux63~1_combout\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux63~2_combout\)))) # (!\InstMem|ram~549_combout\ & (((\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|Mux63~2_combout\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|Mux63~1_combout\,
	combout => \BancoReg|Mux63~3_combout\);

-- Location: LCCOMB_X81_Y47_N18
\BancoReg|Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux63~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux63~3_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux63~3_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux63~4_combout\ & 
-- !\BancoReg|Mux63~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~553_combout\,
	datab => \BancoReg|Mux63~4_combout\,
	datac => \InstMem|ram~554_combout\,
	datad => \BancoReg|Mux63~3_combout\,
	combout => \BancoReg|Mux63~5_combout\);

-- Location: LCCOMB_X81_Y47_N26
\ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~0_combout\ = \UCULA|Mux5~0_combout\ $ (((\UCFD|Mux3~0_combout\ & (\InstMem|ram~558_combout\)) # (!\UCFD|Mux3~0_combout\ & ((\BancoReg|Mux63~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datab => \InstMem|ram~558_combout\,
	datac => \UCULA|Mux5~0_combout\,
	datad => \BancoReg|Mux63~5_combout\,
	combout => \ULA|Add1~0_combout\);

-- Location: LCCOMB_X83_Y47_N0
\ULA|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~1_combout\ = (\ULA|Add1~0_combout\ & (\UCULA|Mux5~0_combout\ $ (VCC))) # (!\ULA|Add1~0_combout\ & (\UCULA|Mux5~0_combout\ & VCC))
-- \ULA|Add1~2\ = CARRY((\ULA|Add1~0_combout\ & \UCULA|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~0_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	combout => \ULA|Add1~1_combout\,
	cout => \ULA|Add1~2\);

-- Location: LCCOMB_X82_Y47_N28
\UCULA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCULA|Mux7~0_combout\ = (\UCFD|Mux8~0_combout\ & \UCULA|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux8~0_combout\,
	datad => \UCULA|Mux3~0_combout\,
	combout => \UCULA|Mux7~0_combout\);

-- Location: LCCOMB_X81_Y47_N30
\BancoReg|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux31~0_combout\ = (\InstMem|ram~551_combout\ & (((!\BancoReg|ram[8][0]~q\) # (!\InstMem|ram~549_combout\)))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][0]~q\ & (\InstMem|ram~549_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[0][0]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[8][0]~q\,
	combout => \BancoReg|Mux31~0_combout\);

-- Location: LCCOMB_X81_Y47_N4
\BancoReg|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux31~2_combout\ = (\InstMem|ram~549_combout\ & (!\BancoReg|ram[4][0]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[5][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[4][0]~q\,
	datac => \BancoReg|ram[5][0]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux31~2_combout\);

-- Location: LCCOMB_X81_Y47_N16
\BancoReg|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux31~1_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][0]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[12][0]~q\,
	datac => \BancoReg|ram[13][0]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux31~1_combout\);

-- Location: LCCOMB_X81_Y47_N6
\BancoReg|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux31~3_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux31~1_combout\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|Mux31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux31~2_combout\,
	datad => \BancoReg|Mux31~1_combout\,
	combout => \BancoReg|Mux31~3_combout\);

-- Location: LCCOMB_X81_Y47_N28
\BancoReg|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux31~4_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux31~3_combout\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux31~0_combout\,
	datad => \BancoReg|Mux31~3_combout\,
	combout => \BancoReg|Mux31~4_combout\);

-- Location: LCCOMB_X81_Y47_N12
\ULA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~0_combout\ = \BancoReg|Mux31~4_combout\ $ (((\UCULA|Mux3~0_combout\ & \UCFD|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux3~0_combout\,
	datac => \UCFD|Mux8~0_combout\,
	datad => \BancoReg|Mux31~4_combout\,
	combout => \ULA|Add0~0_combout\);

-- Location: LCCOMB_X85_Y47_N0
\ULA|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_combout\ = (\UCULA|Mux7~0_combout\ & (\ULA|Add0~0_combout\ $ (VCC))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~0_combout\ & VCC))
-- \ULA|Add0~2\ = CARRY((\UCULA|Mux7~0_combout\ & \ULA|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \ULA|Add0~0_combout\,
	datad => VCC,
	combout => \ULA|Add0~1_combout\,
	cout => \ULA|Add0~2\);

-- Location: LCCOMB_X84_Y47_N0
\ULA|tempAdd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[0]~0_combout\ = (\ULA|Add1~1_combout\ & (\ULA|Add0~1_combout\ $ (VCC))) # (!\ULA|Add1~1_combout\ & (\ULA|Add0~1_combout\ & VCC))
-- \ULA|tempAdd[0]~1\ = CARRY((\ULA|Add1~1_combout\ & \ULA|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~1_combout\,
	datab => \ULA|Add0~1_combout\,
	datad => VCC,
	combout => \ULA|tempAdd[0]~0_combout\,
	cout => \ULA|tempAdd[0]~1\);

-- Location: LCCOMB_X86_Y48_N2
\InstMem|ram~557\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~557_combout\ = (!\PC|DOUT\(2) & (!\PC|DOUT\(1) & \PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(2),
	datab => \PC|DOUT\(1),
	datad => \PC|DOUT\(3),
	combout => \InstMem|ram~557_combout\);

-- Location: LCCOMB_X82_Y47_N26
\BancoReg|Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux61~4_combout\ = (\PC|DOUT\(3)) # ((\PC|DOUT\(2)) # (\PC|DOUT\(1) $ (!\PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(3),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(2),
	combout => \BancoReg|Mux61~4_combout\);

-- Location: LCCOMB_X82_Y47_N20
\InstMem|ram~555\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~555_combout\ = \PC|DOUT\(0) $ (\PC|DOUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datac => \PC|DOUT\(1),
	combout => \InstMem|ram~555_combout\);

-- Location: FF_X81_Y45_N5
\BancoReg|ram[8][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[31]~46_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][31]~q\);

-- Location: FF_X82_Y45_N11
\BancoReg|ram[12][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[31]~46_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][31]~q\);

-- Location: LCCOMB_X81_Y45_N30
\BancoReg|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux32~0_combout\ = (\InstMem|ram~552_combout\ & (((\InstMem|ram~550_combout\)))) # (!\InstMem|ram~552_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][31]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][31]~q\,
	datab => \InstMem|ram~552_combout\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[12][31]~q\,
	combout => \BancoReg|Mux32~0_combout\);

-- Location: LCCOMB_X81_Y45_N12
\BancoReg|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux32~1_combout\ = (\BancoReg|Mux32~0_combout\ & (((\InstMem|ram~554_combout\) # (\BancoReg|ram[13][31]~q\)) # (!\InstMem|ram~555_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~555_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|Mux32~0_combout\,
	datad => \BancoReg|ram[13][31]~q\,
	combout => \BancoReg|Mux32~1_combout\);

-- Location: LCCOMB_X82_Y51_N18
\BancoReg|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Decoder0~5_combout\ = (\BancoReg|Decoder0~4_combout\ & !\InstMem|ram~551_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Decoder0~4_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Decoder0~5_combout\);

-- Location: FF_X82_Y45_N9
\BancoReg|ram[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[31]~46_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][31]~q\);

-- Location: FF_X81_Y45_N11
\BancoReg|ram[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[31]~46_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][31]~q\);

-- Location: FF_X80_Y45_N25
\BancoReg|ram[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[31]~46_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][31]~q\);

-- Location: LCCOMB_X81_Y45_N22
\BancoReg|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux32~2_combout\ = (\InstMem|ram~552_combout\ & (((\InstMem|ram~550_combout\)))) # (!\InstMem|ram~552_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|ram[4][31]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[0][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][31]~q\,
	datab => \InstMem|ram~552_combout\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[4][31]~q\,
	combout => \BancoReg|Mux32~2_combout\);

-- Location: LCCOMB_X82_Y45_N8
\BancoReg|Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux32~3_combout\ = (\BancoReg|Mux32~2_combout\ & ((\InstMem|ram~554_combout\) # ((\BancoReg|ram[5][31]~q\) # (!\InstMem|ram~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~555_combout\,
	datac => \BancoReg|ram[5][31]~q\,
	datad => \BancoReg|Mux32~2_combout\,
	combout => \BancoReg|Mux32~3_combout\);

-- Location: LCCOMB_X82_Y45_N6
\BancoReg|Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux32~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|Mux32~1_combout\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|Mux32~3_combout\))))) # (!\InstMem|ram~549_combout\ & (((\InstMem|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|Mux32~1_combout\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|Mux32~3_combout\,
	combout => \BancoReg|Mux32~4_combout\);

-- Location: LCCOMB_X82_Y45_N16
\BancoReg|Mux32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux32~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux32~4_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux32~4_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~553_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux32~4_combout\,
	combout => \BancoReg|Mux32~5_combout\);

-- Location: LCCOMB_X82_Y45_N30
\muxRtImm|C[31]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[31]~11_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux32~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux32~5_combout\,
	combout => \muxRtImm|C[31]~11_combout\);

-- Location: LCCOMB_X83_Y49_N18
\BancoReg|ram[0][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][30]~feeder_combout\ = \MuxULAMem|C[30]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[30]~45_combout\,
	combout => \BancoReg|ram[0][30]~feeder_combout\);

-- Location: FF_X83_Y49_N19
\BancoReg|ram[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][30]~feeder_combout\,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][30]~q\);

-- Location: FF_X86_Y48_N1
\BancoReg|ram[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[30]~45_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][30]~q\);

-- Location: LCCOMB_X85_Y49_N26
\BancoReg|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux1~2_combout\ = (\InstMem|ram~550_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|ram[4][30]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|ram[0][30]~q\)) # (!\InstMem|ram~549_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|ram[0][30]~q\,
	datad => \BancoReg|ram[4][30]~q\,
	combout => \BancoReg|Mux1~2_combout\);

-- Location: LCCOMB_X87_Y49_N20
\BancoReg|ram[8][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[8][30]~feeder_combout\ = \MuxULAMem|C[30]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[30]~45_combout\,
	combout => \BancoReg|ram[8][30]~feeder_combout\);

-- Location: FF_X87_Y49_N21
\BancoReg|ram[8][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[8][30]~feeder_combout\,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][30]~q\);

-- Location: LCCOMB_X86_Y49_N22
\BancoReg|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux1~1_combout\ = (\InstMem|ram~550_combout\ & (\BancoReg|ram[12][30]~q\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[8][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[12][30]~q\,
	datac => \BancoReg|ram[8][30]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux1~1_combout\);

-- Location: LCCOMB_X87_Y48_N14
\BancoReg|ram[13][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[13][30]~feeder_combout\ = \MuxULAMem|C[30]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[30]~45_combout\,
	combout => \BancoReg|ram[13][30]~feeder_combout\);

-- Location: FF_X87_Y48_N15
\BancoReg|ram[13][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[13][30]~feeder_combout\,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][30]~q\);

-- Location: FF_X86_Y48_N19
\BancoReg|ram[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[30]~45_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][30]~q\);

-- Location: LCCOMB_X86_Y49_N28
\BancoReg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux1~0_combout\ = (\InstMem|ram~549_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (!\BancoReg|ram[13][30]~q\)) # (!\InstMem|ram~551_combout\ & ((!\BancoReg|ram[5][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][30]~q\,
	datab => \InstMem|ram~549_combout\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|ram[5][30]~q\,
	combout => \BancoReg|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y49_N20
\BancoReg|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux1~3_combout\ = (\BancoReg|Mux1~0_combout\ & (((\InstMem|ram~549_combout\ & \BancoReg|Mux1~1_combout\)))) # (!\BancoReg|Mux1~0_combout\ & (\BancoReg|Mux1~2_combout\ $ ((!\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux1~2_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux1~1_combout\,
	datad => \BancoReg|Mux1~0_combout\,
	combout => \BancoReg|Mux1~3_combout\);

-- Location: FF_X86_Y46_N3
\BancoReg|ram[13][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[28]~43_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][28]~q\);

-- Location: FF_X85_Y46_N23
\BancoReg|ram[8][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[28]~43_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][28]~q\);

-- Location: FF_X85_Y48_N31
\BancoReg|ram[12][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[28]~43_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][28]~q\);

-- Location: LCCOMB_X86_Y46_N20
\BancoReg|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux35~0_combout\ = (\InstMem|ram~552_combout\ & (((\InstMem|ram~550_combout\)))) # (!\InstMem|ram~552_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][28]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~552_combout\,
	datab => \BancoReg|ram[8][28]~q\,
	datac => \BancoReg|ram[12][28]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux35~0_combout\);

-- Location: LCCOMB_X86_Y46_N2
\BancoReg|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux35~1_combout\ = (\BancoReg|Mux35~0_combout\ & ((\InstMem|ram~554_combout\) # ((\BancoReg|ram[13][28]~q\) # (!\InstMem|ram~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~555_combout\,
	datac => \BancoReg|ram[13][28]~q\,
	datad => \BancoReg|Mux35~0_combout\,
	combout => \BancoReg|Mux35~1_combout\);

-- Location: FF_X85_Y48_N17
\BancoReg|ram[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[28]~43_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][28]~q\);

-- Location: FF_X85_Y46_N3
\BancoReg|ram[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[28]~43_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][28]~q\);

-- Location: LCCOMB_X86_Y46_N10
\BancoReg|Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux35~2_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[4][28]~q\) # ((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~550_combout\ & (((!\InstMem|ram~552_combout\ & \BancoReg|ram[0][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[4][28]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \BancoReg|ram[0][28]~q\,
	combout => \BancoReg|Mux35~2_combout\);

-- Location: LCCOMB_X86_Y46_N12
\BancoReg|Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux35~3_combout\ = (\BancoReg|Mux35~2_combout\ & ((\InstMem|ram~554_combout\) # ((\BancoReg|ram[5][28]~q\) # (!\InstMem|ram~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|ram[5][28]~q\,
	datac => \InstMem|ram~555_combout\,
	datad => \BancoReg|Mux35~2_combout\,
	combout => \BancoReg|Mux35~3_combout\);

-- Location: LCCOMB_X86_Y46_N6
\BancoReg|Mux35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux35~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|Mux35~1_combout\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|Mux35~3_combout\))))) # (!\InstMem|ram~549_combout\ & (((\InstMem|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|Mux35~1_combout\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|Mux35~3_combout\,
	combout => \BancoReg|Mux35~4_combout\);

-- Location: LCCOMB_X86_Y46_N16
\BancoReg|Mux35~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux35~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux35~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux35~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux35~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux35~4_combout\,
	combout => \BancoReg|Mux35~5_combout\);

-- Location: LCCOMB_X86_Y46_N22
\muxRtImm|C[28]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[28]~14_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux35~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux35~5_combout\,
	combout => \muxRtImm|C[28]~14_combout\);

-- Location: LCCOMB_X86_Y47_N24
\BancoReg|Mux62~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux62~5_combout\ = (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & \PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(2),
	datab => \PC|DOUT\(3),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(1),
	combout => \BancoReg|Mux62~5_combout\);

-- Location: LCCOMB_X81_Y51_N26
\MuxULAMem|C[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[1]~2_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux30~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux30~1_combout\,
	combout => \MuxULAMem|C[1]~2_combout\);

-- Location: FF_X82_Y51_N1
\BancoReg|ram[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[1]~2_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][1]~q\);

-- Location: LCCOMB_X81_Y51_N12
\BancoReg|ram[12][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[12][1]~feeder_combout\ = \MuxULAMem|C[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[1]~2_combout\,
	combout => \BancoReg|ram[12][1]~feeder_combout\);

-- Location: FF_X81_Y51_N13
\BancoReg|ram[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[12][1]~feeder_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][1]~q\);

-- Location: FF_X82_Y51_N3
\BancoReg|ram[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[1]~2_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][1]~q\);

-- Location: LCCOMB_X82_Y51_N6
\BancoReg|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux62~0_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][1]~q\) # ((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|ram[8][1]~q\ & !\InstMem|ram~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][1]~q\,
	datab => \BancoReg|ram[8][1]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux62~0_combout\);

-- Location: LCCOMB_X82_Y51_N16
\BancoReg|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux62~1_combout\ = (\BancoReg|Mux62~0_combout\ & ((\InstMem|ram~554_combout\) # ((\BancoReg|ram[13][1]~q\) # (!\InstMem|ram~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|ram[13][1]~q\,
	datac => \InstMem|ram~555_combout\,
	datad => \BancoReg|Mux62~0_combout\,
	combout => \BancoReg|Mux62~1_combout\);

-- Location: LCCOMB_X83_Y51_N8
\BancoReg|ram[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][1]~feeder_combout\ = \MuxULAMem|C[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[1]~2_combout\,
	combout => \BancoReg|ram[5][1]~feeder_combout\);

-- Location: FF_X83_Y51_N9
\BancoReg|ram[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][1]~feeder_combout\,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][1]~q\);

-- Location: LCCOMB_X84_Y51_N20
\BancoReg|ram[4][1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][1]~2_combout\ = !\MuxULAMem|C[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[1]~2_combout\,
	combout => \BancoReg|ram[4][1]~2_combout\);

-- Location: FF_X84_Y51_N21
\BancoReg|ram[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][1]~2_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][1]~q\);

-- Location: FF_X83_Y51_N19
\BancoReg|ram[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[1]~2_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][1]~q\);

-- Location: LCCOMB_X83_Y51_N28
\BancoReg|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux62~2_combout\ = (\InstMem|ram~550_combout\ & (((\InstMem|ram~552_combout\)) # (!\BancoReg|ram[4][1]~q\))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|ram[0][1]~q\ & !\InstMem|ram~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][1]~q\,
	datab => \BancoReg|ram[0][1]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux62~2_combout\);

-- Location: LCCOMB_X83_Y51_N14
\BancoReg|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux62~3_combout\ = (\BancoReg|Mux62~2_combout\ & ((\InstMem|ram~554_combout\) # ((\BancoReg|ram[5][1]~q\) # (!\InstMem|ram~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~555_combout\,
	datac => \BancoReg|ram[5][1]~q\,
	datad => \BancoReg|Mux62~2_combout\,
	combout => \BancoReg|Mux62~3_combout\);

-- Location: LCCOMB_X86_Y47_N10
\BancoReg|Mux62~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux62~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|Mux62~1_combout\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|Mux62~3_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux62~1_combout\,
	datad => \BancoReg|Mux62~3_combout\,
	combout => \BancoReg|Mux62~4_combout\);

-- Location: LCCOMB_X86_Y47_N8
\muxRtImm|C[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[1]~10_combout\ = (!\UCFD|Mux3~0_combout\ & ((\InstMem|ram~549_combout\ & ((\BancoReg|Mux62~4_combout\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|Mux62~5_combout\ & !\BancoReg|Mux62~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datab => \BancoReg|Mux62~5_combout\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|Mux62~4_combout\,
	combout => \muxRtImm|C[1]~10_combout\);

-- Location: LCCOMB_X83_Y47_N2
\ULA|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~3_combout\ = (\ULA|Add1~2\ & (\muxRtImm|C[1]~10_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~2\ & ((\muxRtImm|C[1]~10_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~4\ = CARRY((\muxRtImm|C[1]~10_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[1]~10_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~2\,
	combout => \ULA|Add1~3_combout\,
	cout => \ULA|Add1~4\);

-- Location: LCCOMB_X82_Y51_N14
\BancoReg|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux30~2_combout\ = (\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\) # (!\BancoReg|ram[4][1]~q\)))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[5][1]~q\ & ((\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][1]~q\,
	datab => \BancoReg|ram[4][1]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux30~2_combout\);

-- Location: LCCOMB_X82_Y51_N22
\BancoReg|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux30~0_combout\ = (\InstMem|ram~549_combout\ & ((\BancoReg|ram[12][1]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[13][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[13][1]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[12][1]~q\,
	combout => \BancoReg|Mux30~0_combout\);

-- Location: LCCOMB_X82_Y51_N24
\BancoReg|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux30~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|ram[8][1]~q\) # ((\InstMem|ram~550_combout\)))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|ram[0][1]~q\ & !\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[8][1]~q\,
	datac => \BancoReg|ram[0][1]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux30~1_combout\);

-- Location: LCCOMB_X82_Y51_N4
\BancoReg|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux30~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux30~1_combout\ & ((\BancoReg|Mux30~0_combout\))) # (!\BancoReg|Mux30~1_combout\ & (\BancoReg|Mux30~2_combout\)))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux30~2_combout\ & 
-- ((\BancoReg|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|Mux30~2_combout\,
	datac => \BancoReg|Mux30~0_combout\,
	datad => \BancoReg|Mux30~1_combout\,
	combout => \BancoReg|Mux30~3_combout\);

-- Location: LCCOMB_X85_Y47_N2
\ULA|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~3_combout\ = (\ULA|Add0~2\ & (\UCULA|Mux7~0_combout\ $ ((!\BancoReg|Mux30~3_combout\)))) # (!\ULA|Add0~2\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux30~3_combout\)) # (GND)))
-- \ULA|Add0~4\ = CARRY((\UCULA|Mux7~0_combout\ $ (!\BancoReg|Mux30~3_combout\)) # (!\ULA|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux30~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~2\,
	combout => \ULA|Add0~3_combout\,
	cout => \ULA|Add0~4\);

-- Location: LCCOMB_X87_Y47_N2
\ULA|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux30~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add1~3_combout\ & ((\ULA|Add0~3_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add1~3_combout\ & (\ULA|Add0~3_combout\ & \UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \ULA|Add1~3_combout\,
	datac => \ULA|Add0~3_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux30~0_combout\);

-- Location: LCCOMB_X84_Y47_N2
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

-- Location: LCCOMB_X83_Y48_N22
\ULA|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux30~1_combout\ = (\ULA|Mux30~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Mux30~0_combout\,
	datad => \ULA|tempAdd[1]~2_combout\,
	combout => \ULA|Mux30~1_combout\);

-- Location: LCCOMB_X85_Y48_N14
\ULA|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~0_combout\ = (\ULA|Add1~1_combout\ & ((\UCULA|Mux7~0_combout\) # ((\InstMem|ram~557_combout\ & \ULA|Add0~1_combout\)))) # (!\ULA|Add1~1_combout\ & (\UCULA|Mux7~0_combout\ & ((\ULA|Add0~1_combout\) # (!\InstMem|ram~557_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~1_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|Add0~1_combout\,
	combout => \ULA|Mux31~0_combout\);

-- Location: LCCOMB_X83_Y48_N10
\ULA|sltIn[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|sltIn[0]~0_combout\ = (\ULA|Add0~63_combout\ & ((\ULA|tempAdd[32]~62_combout\) # (\ULA|Add1~63_combout\))) # (!\ULA|Add0~63_combout\ & (\ULA|tempAdd[32]~62_combout\ & \ULA|Add1~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Add0~63_combout\,
	datac => \ULA|tempAdd[32]~62_combout\,
	datad => \ULA|Add1~63_combout\,
	combout => \ULA|sltIn[0]~0_combout\);

-- Location: LCCOMB_X83_Y48_N24
\ULA|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux31~1_combout\ = (\InstMem|ram~557_combout\ & (((\ULA|Mux31~0_combout\)))) # (!\InstMem|ram~557_combout\ & ((\ULA|Mux31~0_combout\ & ((\ULA|sltIn[0]~0_combout\))) # (!\ULA|Mux31~0_combout\ & (\ULA|tempAdd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \ULA|tempAdd[0]~0_combout\,
	datac => \ULA|Mux31~0_combout\,
	datad => \ULA|sltIn[0]~0_combout\,
	combout => \ULA|Mux31~1_combout\);

-- Location: LCCOMB_X83_Y48_N4
\MuxULAMem|C[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[2]~3_combout\ = \ULA|Mux30~1_combout\ $ (((!\ULA|Mux28~1_combout\ & \ULA|Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux28~1_combout\,
	datac => \ULA|Mux30~1_combout\,
	datad => \ULA|Mux31~1_combout\,
	combout => \MuxULAMem|C[2]~3_combout\);

-- Location: LCCOMB_X83_Y48_N0
\MuxULAMem|C[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[2]~4_combout\ = (\ULA|Mux29~1_combout\ & (((!\ULA|Mux28~1_combout\ & \MuxULAMem|C[2]~3_combout\)) # (!\UCFD|Mux3~0_combout\))) # (!\ULA|Mux29~1_combout\ & (\ULA|Mux28~1_combout\ & (!\MuxULAMem|C[2]~3_combout\ & \UCFD|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux29~1_combout\,
	datab => \ULA|Mux28~1_combout\,
	datac => \MuxULAMem|C[2]~3_combout\,
	datad => \UCFD|Mux3~0_combout\,
	combout => \MuxULAMem|C[2]~4_combout\);

-- Location: FF_X84_Y49_N21
\BancoReg|ram[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[2]~4_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][2]~q\);

-- Location: LCCOMB_X83_Y49_N16
\BancoReg|ram[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][2]~feeder_combout\ = \MuxULAMem|C[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[2]~4_combout\,
	combout => \BancoReg|ram[0][2]~feeder_combout\);

-- Location: FF_X83_Y49_N17
\BancoReg|ram[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][2]~feeder_combout\,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][2]~q\);

-- Location: LCCOMB_X83_Y49_N14
\BancoReg|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux29~0_combout\ = (\InstMem|ram~550_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|ram[8][2]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][2]~q\,
	datab => \BancoReg|ram[0][2]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux29~0_combout\);

-- Location: LCCOMB_X85_Y49_N12
\BancoReg|ram[5][2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][2]~3_combout\ = !\MuxULAMem|C[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[2]~4_combout\,
	combout => \BancoReg|ram[5][2]~3_combout\);

-- Location: FF_X85_Y49_N13
\BancoReg|ram[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][2]~3_combout\,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][2]~q\);

-- Location: LCCOMB_X84_Y51_N30
\BancoReg|ram[4][2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][2]~4_combout\ = !\MuxULAMem|C[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[2]~4_combout\,
	combout => \BancoReg|ram[4][2]~4_combout\);

-- Location: FF_X84_Y51_N31
\BancoReg|ram[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][2]~4_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][2]~q\);

-- Location: LCCOMB_X84_Y49_N22
\BancoReg|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux29~1_combout\ = (\InstMem|ram~549_combout\ & ((\BancoReg|ram[4][2]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[5][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][2]~q\,
	datac => \BancoReg|ram[4][2]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux29~1_combout\);

-- Location: FF_X83_Y48_N1
\BancoReg|ram[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[2]~4_combout\,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][2]~q\);

-- Location: FF_X84_Y49_N15
\BancoReg|ram[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[2]~4_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][2]~q\);

-- Location: LCCOMB_X84_Y49_N16
\BancoReg|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux29~2_combout\ = (\InstMem|ram~550_combout\ & ((\InstMem|ram~549_combout\ & ((\BancoReg|ram[12][2]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[13][2]~q\)))) # (!\InstMem|ram~550_combout\ & (((\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[13][2]~q\,
	datac => \BancoReg|ram[12][2]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux29~2_combout\);

-- Location: LCCOMB_X84_Y49_N10
\BancoReg|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux29~3_combout\ = (\BancoReg|Mux29~0_combout\ & (((\BancoReg|Mux29~2_combout\)))) # (!\BancoReg|Mux29~0_combout\ & (\InstMem|ram~550_combout\ & (!\BancoReg|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux29~0_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux29~1_combout\,
	datad => \BancoReg|Mux29~2_combout\,
	combout => \BancoReg|Mux29~3_combout\);

-- Location: LCCOMB_X85_Y47_N4
\ULA|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_combout\ = (\ULA|Add0~4\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux29~3_combout\)))) # (!\ULA|Add0~4\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux29~3_combout\ $ (VCC))))
-- \ULA|Add0~6\ = CARRY((!\ULA|Add0~4\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux29~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~4\,
	combout => \ULA|Add0~5_combout\,
	cout => \ULA|Add0~6\);

-- Location: LCCOMB_X84_Y49_N8
\BancoReg|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux61~2_combout\ = (!\InstMem|ram~552_combout\ & ((\InstMem|ram~551_combout\ & ((\BancoReg|ram[8][2]~q\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][2]~q\,
	datab => \BancoReg|ram[8][2]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux61~2_combout\);

-- Location: LCCOMB_X84_Y49_N28
\BancoReg|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux61~0_combout\ = (\InstMem|ram~552_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~552_combout\ & ((\InstMem|ram~551_combout\ & ((\BancoReg|ram[12][2]~q\))) # (!\InstMem|ram~551_combout\ & (!\BancoReg|ram[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][2]~q\,
	datab => \BancoReg|ram[12][2]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux61~0_combout\);

-- Location: LCCOMB_X84_Y49_N6
\BancoReg|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux61~1_combout\ = (\InstMem|ram~552_combout\ & ((\BancoReg|Mux61~0_combout\ & ((\BancoReg|ram[13][2]~q\))) # (!\BancoReg|Mux61~0_combout\ & (!\BancoReg|ram[5][2]~q\)))) # (!\InstMem|ram~552_combout\ & (((\BancoReg|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][2]~q\,
	datab => \BancoReg|ram[13][2]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \BancoReg|Mux61~0_combout\,
	combout => \BancoReg|Mux61~1_combout\);

-- Location: LCCOMB_X84_Y49_N18
\BancoReg|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux61~3_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|Mux61~1_combout\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux61~2_combout\)))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux61~2_combout\,
	datad => \BancoReg|Mux61~1_combout\,
	combout => \BancoReg|Mux61~3_combout\);

-- Location: LCCOMB_X84_Y49_N24
\BancoReg|Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux61~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux61~3_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux61~3_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux61~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux61~3_combout\,
	combout => \BancoReg|Mux61~5_combout\);

-- Location: LCCOMB_X84_Y49_N2
\muxRtImm|C[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[2]~9_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux61~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux61~5_combout\,
	combout => \muxRtImm|C[2]~9_combout\);

-- Location: LCCOMB_X83_Y47_N4
\ULA|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~5_combout\ = (\ULA|Add1~4\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[2]~9_combout\)))) # (!\ULA|Add1~4\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[2]~9_combout\ $ (VCC))))
-- \ULA|Add1~6\ = CARRY((!\ULA|Add1~4\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[2]~9_combout\,
	datad => VCC,
	cin => \ULA|Add1~4\,
	combout => \ULA|Add1~5_combout\,
	cout => \ULA|Add1~6\);

-- Location: LCCOMB_X84_Y48_N26
\ULA|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux29~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add0~5_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add1~5_combout\))) # (!\ULA|Add0~5_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~5_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|Add1~5_combout\,
	combout => \ULA|Mux29~0_combout\);

-- Location: LCCOMB_X84_Y47_N4
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

-- Location: LCCOMB_X84_Y48_N8
\ULA|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux29~1_combout\ = (\ULA|Mux29~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux29~0_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|tempAdd[2]~4_combout\,
	combout => \ULA|Mux29~1_combout\);

-- Location: LCCOMB_X84_Y48_N6
\MuxULAMem|C[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[5]~6_combout\ = (\UCFD|Mux3~0_combout\ & (\ULA|Mux29~1_combout\ & !\ULA|Mux28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux29~1_combout\,
	datad => \ULA|Mux28~1_combout\,
	combout => \MuxULAMem|C[5]~6_combout\);

-- Location: LCCOMB_X83_Y49_N4
\MuxULAMem|C[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[3]~5_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux28~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datab => \ULA|Mux28~1_combout\,
	combout => \MuxULAMem|C[3]~5_combout\);

-- Location: LCCOMB_X83_Y49_N20
\MuxULAMem|C[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[3]~7_combout\ = (\MuxULAMem|C[3]~5_combout\) # ((\MuxULAMem|C[5]~6_combout\ & ((\ULA|Mux30~1_combout\) # (\ULA|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULAMem|C[5]~6_combout\,
	datab => \MuxULAMem|C[3]~5_combout\,
	datac => \ULA|Mux30~1_combout\,
	datad => \ULA|Mux31~1_combout\,
	combout => \MuxULAMem|C[3]~7_combout\);

-- Location: FF_X83_Y51_N13
\BancoReg|ram[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[3]~7_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][3]~q\);

-- Location: FF_X83_Y51_N23
\BancoReg|ram[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[3]~7_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][3]~q\);

-- Location: LCCOMB_X84_Y51_N24
\BancoReg|ram[4][3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][3]~5_combout\ = !\MuxULAMem|C[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[3]~7_combout\,
	combout => \BancoReg|ram[4][3]~5_combout\);

-- Location: FF_X84_Y51_N25
\BancoReg|ram[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][3]~5_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][3]~q\);

-- Location: LCCOMB_X83_Y51_N0
\BancoReg|Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux60~2_combout\ = (\InstMem|ram~550_combout\ & (((\InstMem|ram~552_combout\) # (!\BancoReg|ram[4][3]~q\)))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[0][3]~q\ & ((!\InstMem|ram~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][3]~q\,
	datab => \BancoReg|ram[4][3]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux60~2_combout\);

-- Location: LCCOMB_X83_Y51_N30
\BancoReg|Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux60~3_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux60~2_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~555_combout\ & ((\BancoReg|ram[5][3]~q\) # (!\BancoReg|Mux60~2_combout\))) # (!\InstMem|ram~555_combout\ & 
-- ((\BancoReg|Mux60~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~555_combout\,
	datac => \BancoReg|ram[5][3]~q\,
	datad => \BancoReg|Mux60~2_combout\,
	combout => \BancoReg|Mux60~3_combout\);

-- Location: FF_X82_Y51_N19
\BancoReg|ram[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[3]~7_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][3]~q\);

-- Location: LCCOMB_X82_Y51_N28
\BancoReg|ram[8][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[8][3]~feeder_combout\ = \MuxULAMem|C[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[3]~7_combout\,
	combout => \BancoReg|ram[8][3]~feeder_combout\);

-- Location: FF_X82_Y51_N29
\BancoReg|ram[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[8][3]~feeder_combout\,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][3]~q\);

-- Location: LCCOMB_X83_Y49_N10
\BancoReg|ram[12][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[12][3]~feeder_combout\ = \MuxULAMem|C[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[3]~7_combout\,
	combout => \BancoReg|ram[12][3]~feeder_combout\);

-- Location: FF_X83_Y49_N11
\BancoReg|ram[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[12][3]~feeder_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][3]~q\);

-- Location: LCCOMB_X82_Y51_N30
\BancoReg|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux60~0_combout\ = (\InstMem|ram~550_combout\ & (((\BancoReg|ram[12][3]~q\) # (\InstMem|ram~552_combout\)))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][3]~q\ & ((!\InstMem|ram~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][3]~q\,
	datab => \BancoReg|ram[12][3]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux60~0_combout\);

-- Location: LCCOMB_X82_Y51_N12
\BancoReg|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux60~1_combout\ = (\BancoReg|Mux60~0_combout\ & ((\InstMem|ram~554_combout\) # ((\BancoReg|ram[13][3]~q\) # (!\InstMem|ram~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|ram[13][3]~q\,
	datac => \BancoReg|Mux60~0_combout\,
	datad => \InstMem|ram~555_combout\,
	combout => \BancoReg|Mux60~1_combout\);

-- Location: LCCOMB_X83_Y51_N20
\BancoReg|Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux60~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & ((\BancoReg|Mux60~1_combout\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|Mux60~3_combout\)))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux60~3_combout\,
	datad => \BancoReg|Mux60~1_combout\,
	combout => \BancoReg|Mux60~4_combout\);

-- Location: LCCOMB_X83_Y51_N10
\BancoReg|Mux60~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux60~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux60~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux60~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux60~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux60~4_combout\,
	combout => \BancoReg|Mux60~5_combout\);

-- Location: LCCOMB_X83_Y51_N16
\muxRtImm|C[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[3]~8_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux60~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux60~5_combout\,
	combout => \muxRtImm|C[3]~8_combout\);

-- Location: LCCOMB_X83_Y47_N6
\ULA|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~7_combout\ = (\ULA|Add1~6\ & (\muxRtImm|C[3]~8_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~6\ & ((\muxRtImm|C[3]~8_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~8\ = CARRY((\muxRtImm|C[3]~8_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[3]~8_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~6\,
	combout => \ULA|Add1~7_combout\,
	cout => \ULA|Add1~8\);

-- Location: LCCOMB_X84_Y51_N8
\BancoReg|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux28~0_combout\ = (\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\) # (!\BancoReg|ram[4][3]~q\)))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[5][3]~q\ & ((\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][3]~q\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|ram[4][3]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux28~0_combout\);

-- Location: LCCOMB_X83_Y51_N6
\BancoReg|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux28~2_combout\ = (\InstMem|ram~551_combout\ & (\BancoReg|ram[8][3]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[8][3]~q\,
	datac => \BancoReg|ram[0][3]~q\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux28~2_combout\);

-- Location: LCCOMB_X83_Y51_N24
\BancoReg|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux28~1_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][3]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][3]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[13][3]~q\,
	combout => \BancoReg|Mux28~1_combout\);

-- Location: LCCOMB_X84_Y51_N18
\BancoReg|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux28~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux28~1_combout\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux28~2_combout\,
	datad => \BancoReg|Mux28~1_combout\,
	combout => \BancoReg|Mux28~3_combout\);

-- Location: LCCOMB_X84_Y51_N28
\BancoReg|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux28~4_combout\ = (\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\ & ((\BancoReg|Mux28~3_combout\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|Mux28~0_combout\)))) # (!\InstMem|ram~550_combout\ & ((\BancoReg|Mux28~0_combout\ & 
-- ((\BancoReg|Mux28~3_combout\))) # (!\BancoReg|Mux28~0_combout\ & (!\InstMem|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux28~0_combout\,
	datad => \BancoReg|Mux28~3_combout\,
	combout => \BancoReg|Mux28~4_combout\);

-- Location: LCCOMB_X85_Y47_N6
\ULA|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~7_combout\ = (\ULA|Add0~6\ & (\UCULA|Mux7~0_combout\ $ ((!\BancoReg|Mux28~4_combout\)))) # (!\ULA|Add0~6\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux28~4_combout\)) # (GND)))
-- \ULA|Add0~8\ = CARRY((\UCULA|Mux7~0_combout\ $ (!\BancoReg|Mux28~4_combout\)) # (!\ULA|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux28~4_combout\,
	datad => VCC,
	cin => \ULA|Add0~6\,
	combout => \ULA|Add0~7_combout\,
	cout => \ULA|Add0~8\);

-- Location: LCCOMB_X84_Y48_N10
\ULA|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux28~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add1~7_combout\ & ((\ULA|Add0~7_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add1~7_combout\ & (\ULA|Add0~7_combout\ & \UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~7_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Add0~7_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux28~0_combout\);

-- Location: LCCOMB_X84_Y47_N6
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

-- Location: LCCOMB_X84_Y48_N12
\ULA|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux28~1_combout\ = (\ULA|Mux28~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|tempAdd[3]~6_combout\,
	combout => \ULA|Mux28~1_combout\);

-- Location: FF_X82_Y46_N23
\BancoReg|ram[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[27]~42_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][27]~q\);

-- Location: FF_X82_Y46_N5
\BancoReg|ram[8][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[27]~42_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][27]~q\);

-- Location: LCCOMB_X82_Y46_N4
\BancoReg|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux4~1_combout\ = (\InstMem|ram~551_combout\ & (((\BancoReg|ram[8][27]~q\) # (\InstMem|ram~550_combout\)))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][27]~q\ & ((!\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][27]~q\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|ram[8][27]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux4~1_combout\);

-- Location: FF_X86_Y48_N29
\BancoReg|ram[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[27]~42_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][27]~q\);

-- Location: LCCOMB_X86_Y48_N30
\BancoReg|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux4~2_combout\ = (\InstMem|ram~550_combout\ & ((\InstMem|ram~549_combout\ & ((!\BancoReg|ram[4][27]~q\))) # (!\InstMem|ram~549_combout\ & (!\BancoReg|ram[5][27]~q\)))) # (!\InstMem|ram~550_combout\ & (((\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][27]~q\,
	datab => \BancoReg|ram[4][27]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux4~2_combout\);

-- Location: FF_X87_Y48_N25
\BancoReg|ram[12][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[27]~42_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][27]~q\);

-- Location: FF_X87_Y48_N9
\BancoReg|ram[13][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[27]~42_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][27]~q\);

-- Location: LCCOMB_X87_Y48_N28
\BancoReg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux4~0_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][27]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|ram[12][27]~q\,
	datac => \BancoReg|ram[13][27]~q\,
	combout => \BancoReg|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y48_N24
\BancoReg|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux4~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux4~1_combout\ & ((\BancoReg|Mux4~0_combout\))) # (!\BancoReg|Mux4~1_combout\ & (!\BancoReg|Mux4~2_combout\)))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux4~1_combout\ & 
-- (\BancoReg|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|Mux4~1_combout\,
	datac => \BancoReg|Mux4~2_combout\,
	datad => \BancoReg|Mux4~0_combout\,
	combout => \BancoReg|Mux4~3_combout\);

-- Location: FF_X83_Y50_N29
\BancoReg|ram[13][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[26]~40_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][26]~q\);

-- Location: FF_X83_Y50_N31
\BancoReg|ram[12][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[26]~40_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][26]~q\);

-- Location: FF_X82_Y48_N3
\BancoReg|ram[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[26]~40_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][26]~q\);

-- Location: FF_X82_Y48_N17
\BancoReg|ram[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[26]~40_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][26]~q\);

-- Location: LCCOMB_X82_Y48_N16
\BancoReg|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux37~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~551_combout\ & ((\InstMem|ram~552_combout\ & ((\BancoReg|ram[5][26]~q\))) # (!\InstMem|ram~552_combout\ & (\BancoReg|ram[4][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[4][26]~q\,
	datac => \BancoReg|ram[5][26]~q\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux37~0_combout\);

-- Location: LCCOMB_X83_Y50_N30
\BancoReg|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux37~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux37~0_combout\ & (\BancoReg|ram[13][26]~q\)) # (!\BancoReg|Mux37~0_combout\ & ((\BancoReg|ram[12][26]~q\))))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[13][26]~q\,
	datac => \BancoReg|ram[12][26]~q\,
	datad => \BancoReg|Mux37~0_combout\,
	combout => \BancoReg|Mux37~1_combout\);

-- Location: LCCOMB_X82_Y46_N20
\InstMem|ram~556\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~556_combout\ = (\PC|DOUT\(1) & !\PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|DOUT\(1),
	datad => \PC|DOUT\(0),
	combout => \InstMem|ram~556_combout\);

-- Location: FF_X82_Y49_N9
\BancoReg|ram[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[26]~40_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][26]~q\);

-- Location: LCCOMB_X82_Y49_N8
\BancoReg|Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux37~2_combout\ = (\PC|DOUT\(0) & (\BancoReg|ram[0][26]~q\ & ((\InstMem|ram~554_combout\) # (\PC|DOUT\(1))))) # (!\PC|DOUT\(0) & ((\BancoReg|ram[0][26]~q\) # ((!\InstMem|ram~554_combout\ & \PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|ram[0][26]~q\,
	datad => \PC|DOUT\(1),
	combout => \BancoReg|Mux37~2_combout\);

-- Location: LCCOMB_X82_Y49_N24
\BancoReg|Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux37~3_combout\ = (\InstMem|ram~556_combout\ & ((\BancoReg|Mux37~2_combout\ & ((\InstMem|ram~554_combout\))) # (!\BancoReg|Mux37~2_combout\ & (\BancoReg|ram[8][26]~q\ & !\InstMem|ram~554_combout\)))) # (!\InstMem|ram~556_combout\ & 
-- (((\BancoReg|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][26]~q\,
	datab => \InstMem|ram~556_combout\,
	datac => \BancoReg|Mux37~2_combout\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux37~3_combout\);

-- Location: LCCOMB_X82_Y49_N2
\BancoReg|Mux37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux37~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & (\BancoReg|Mux37~1_combout\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|Mux37~3_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux37~1_combout\,
	datad => \BancoReg|Mux37~3_combout\,
	combout => \BancoReg|Mux37~4_combout\);

-- Location: LCCOMB_X82_Y49_N16
\BancoReg|Mux37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux37~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux37~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux37~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux37~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux37~4_combout\,
	combout => \BancoReg|Mux37~5_combout\);

-- Location: LCCOMB_X82_Y49_N6
\muxRtImm|C[26]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[26]~16_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux37~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux37~5_combout\,
	combout => \muxRtImm|C[26]~16_combout\);

-- Location: FF_X80_Y46_N13
\BancoReg|ram[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[25]~39_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][25]~q\);

-- Location: LCCOMB_X85_Y48_N18
\BancoReg|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux6~2_combout\ = (\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\) # (!\BancoReg|ram[4][25]~q\)))) # (!\InstMem|ram~549_combout\ & (!\BancoReg|ram[5][25]~q\ & ((\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][25]~q\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|ram[4][25]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux6~2_combout\);

-- Location: FF_X81_Y46_N21
\BancoReg|ram[13][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[25]~39_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][25]~q\);

-- Location: FF_X85_Y48_N9
\BancoReg|ram[12][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[25]~39_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][25]~q\);

-- Location: LCCOMB_X81_Y46_N14
\BancoReg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux6~0_combout\ = (\InstMem|ram~549_combout\ & ((\BancoReg|ram[12][25]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[13][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datac => \BancoReg|ram[13][25]~q\,
	datad => \BancoReg|ram[12][25]~q\,
	combout => \BancoReg|Mux6~0_combout\);

-- Location: FF_X81_Y46_N27
\BancoReg|ram[8][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[25]~39_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][25]~q\);

-- Location: FF_X80_Y46_N17
\BancoReg|ram[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[25]~39_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][25]~q\);

-- Location: LCCOMB_X81_Y46_N24
\BancoReg|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux6~1_combout\ = (\InstMem|ram~550_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|ram[8][25]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[0][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[8][25]~q\,
	datac => \BancoReg|ram[0][25]~q\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux6~1_combout\);

-- Location: LCCOMB_X81_Y46_N10
\BancoReg|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux6~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux6~1_combout\ & ((\BancoReg|Mux6~0_combout\))) # (!\BancoReg|Mux6~1_combout\ & (!\BancoReg|Mux6~2_combout\)))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux6~2_combout\ & 
-- ((\BancoReg|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux6~2_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux6~0_combout\,
	datad => \BancoReg|Mux6~1_combout\,
	combout => \BancoReg|Mux6~3_combout\);

-- Location: LCCOMB_X86_Y49_N30
\BancoReg|ram[13][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[13][22]~feeder_combout\ = \MuxULAMem|C[22]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[22]~36_combout\,
	combout => \BancoReg|ram[13][22]~feeder_combout\);

-- Location: FF_X86_Y49_N31
\BancoReg|ram[13][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[13][22]~feeder_combout\,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][22]~q\);

-- Location: FF_X84_Y45_N1
\BancoReg|ram[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[22]~36_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][22]~q\);

-- Location: FF_X85_Y49_N21
\BancoReg|ram[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[22]~36_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][22]~q\);

-- Location: LCCOMB_X85_Y49_N0
\BancoReg|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux41~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~551_combout\ & ((\InstMem|ram~552_combout\ & ((\BancoReg|ram[5][22]~q\))) # (!\InstMem|ram~552_combout\ & (\BancoReg|ram[4][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][22]~q\,
	datab => \BancoReg|ram[5][22]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux41~0_combout\);

-- Location: LCCOMB_X85_Y49_N22
\BancoReg|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux41~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux41~0_combout\ & (\BancoReg|ram[13][22]~q\)) # (!\BancoReg|Mux41~0_combout\ & ((\BancoReg|ram[12][22]~q\))))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][22]~q\,
	datab => \BancoReg|ram[12][22]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|Mux41~0_combout\,
	combout => \BancoReg|Mux41~1_combout\);

-- Location: FF_X82_Y49_N19
\BancoReg|ram[8][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[22]~36_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][22]~q\);

-- Location: FF_X82_Y49_N21
\BancoReg|ram[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[22]~36_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][22]~q\);

-- Location: LCCOMB_X82_Y49_N20
\BancoReg|Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux41~2_combout\ = (\PC|DOUT\(0) & (\BancoReg|ram[0][22]~q\ & ((\InstMem|ram~554_combout\) # (\PC|DOUT\(1))))) # (!\PC|DOUT\(0) & ((\BancoReg|ram[0][22]~q\) # ((!\InstMem|ram~554_combout\ & \PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|ram[0][22]~q\,
	datad => \PC|DOUT\(1),
	combout => \BancoReg|Mux41~2_combout\);

-- Location: LCCOMB_X82_Y49_N18
\BancoReg|Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux41~3_combout\ = (\InstMem|ram~556_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux41~2_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|ram[8][22]~q\ & !\BancoReg|Mux41~2_combout\)))) # (!\InstMem|ram~556_combout\ & 
-- (((\BancoReg|Mux41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~556_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|ram[8][22]~q\,
	datad => \BancoReg|Mux41~2_combout\,
	combout => \BancoReg|Mux41~3_combout\);

-- Location: LCCOMB_X82_Y49_N0
\BancoReg|Mux41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux41~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & (\BancoReg|Mux41~1_combout\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|Mux41~3_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux41~1_combout\,
	datad => \BancoReg|Mux41~3_combout\,
	combout => \BancoReg|Mux41~4_combout\);

-- Location: LCCOMB_X82_Y49_N10
\BancoReg|Mux41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux41~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux41~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux41~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux41~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux41~4_combout\,
	combout => \BancoReg|Mux41~5_combout\);

-- Location: LCCOMB_X82_Y49_N4
\muxRtImm|C[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[22]~20_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux41~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux41~5_combout\,
	combout => \muxRtImm|C[22]~20_combout\);

-- Location: FF_X83_Y44_N11
\BancoReg|ram[8][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[19]~33_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][19]~q\);

-- Location: FF_X83_Y44_N21
\BancoReg|ram[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[19]~33_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][19]~q\);

-- Location: LCCOMB_X85_Y44_N18
\BancoReg|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux12~1_combout\ = (\InstMem|ram~550_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|ram[8][19]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[0][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][19]~q\,
	datab => \BancoReg|ram[0][19]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux12~1_combout\);

-- Location: LCCOMB_X85_Y44_N16
\BancoReg|ram[5][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][19]~feeder_combout\ = \MuxULAMem|C[19]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[19]~33_combout\,
	combout => \BancoReg|ram[5][19]~feeder_combout\);

-- Location: FF_X85_Y44_N17
\BancoReg|ram[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][19]~feeder_combout\,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][19]~q\);

-- Location: LCCOMB_X85_Y44_N30
\BancoReg|ram[4][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][19]~feeder_combout\ = \MuxULAMem|C[19]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[19]~33_combout\,
	combout => \BancoReg|ram[4][19]~feeder_combout\);

-- Location: FF_X85_Y44_N31
\BancoReg|ram[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][19]~feeder_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][19]~q\);

-- Location: LCCOMB_X85_Y44_N8
\BancoReg|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux12~2_combout\ = (\InstMem|ram~550_combout\ & ((\InstMem|ram~549_combout\ & ((!\BancoReg|ram[4][19]~q\))) # (!\InstMem|ram~549_combout\ & (!\BancoReg|ram[5][19]~q\)))) # (!\InstMem|ram~550_combout\ & (((\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][19]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[4][19]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux12~2_combout\);

-- Location: FF_X84_Y44_N27
\BancoReg|ram[13][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[19]~33_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][19]~q\);

-- Location: LCCOMB_X85_Y44_N12
\BancoReg|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux12~0_combout\ = (\InstMem|ram~549_combout\ & ((\BancoReg|ram[12][19]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[13][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|ram[13][19]~q\,
	datad => \BancoReg|ram[12][19]~q\,
	combout => \BancoReg|Mux12~0_combout\);

-- Location: LCCOMB_X85_Y44_N14
\BancoReg|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux12~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux12~1_combout\ & ((\BancoReg|Mux12~0_combout\))) # (!\BancoReg|Mux12~1_combout\ & (!\BancoReg|Mux12~2_combout\)))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux12~1_combout\ & 
-- (\BancoReg|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|Mux12~1_combout\,
	datac => \BancoReg|Mux12~2_combout\,
	datad => \BancoReg|Mux12~0_combout\,
	combout => \BancoReg|Mux12~3_combout\);

-- Location: LCCOMB_X84_Y48_N0
\MuxULAMem|C[18]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[18]~9_combout\ = (\UCFD|Mux3~0_combout\ & (!\ULA|Mux29~1_combout\ & !\ULA|Mux28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux29~1_combout\,
	datad => \ULA|Mux28~1_combout\,
	combout => \MuxULAMem|C[18]~9_combout\);

-- Location: FF_X86_Y49_N11
\BancoReg|ram[13][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[16]~27_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][16]~q\);

-- Location: FF_X82_Y48_N21
\BancoReg|ram[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[16]~27_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][16]~q\);

-- Location: FF_X82_Y48_N11
\BancoReg|ram[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[16]~27_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][16]~q\);

-- Location: LCCOMB_X82_Y48_N10
\BancoReg|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux47~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~551_combout\ & ((\InstMem|ram~552_combout\ & ((\BancoReg|ram[5][16]~q\))) # (!\InstMem|ram~552_combout\ & (\BancoReg|ram[4][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[4][16]~q\,
	datac => \BancoReg|ram[5][16]~q\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux47~0_combout\);

-- Location: LCCOMB_X86_Y49_N6
\BancoReg|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux47~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux47~0_combout\ & (\BancoReg|ram[13][16]~q\)) # (!\BancoReg|Mux47~0_combout\ & ((\BancoReg|ram[12][16]~q\))))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][16]~q\,
	datab => \BancoReg|ram[12][16]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|Mux47~0_combout\,
	combout => \BancoReg|Mux47~1_combout\);

-- Location: FF_X81_Y44_N7
\BancoReg|ram[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[16]~27_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][16]~q\);

-- Location: LCCOMB_X81_Y44_N6
\BancoReg|Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux47~2_combout\ = (\PC|DOUT\(1) & ((\BancoReg|ram[0][16]~q\) # ((!\PC|DOUT\(0) & !\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(1) & (\BancoReg|ram[0][16]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(0),
	datac => \BancoReg|ram[0][16]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux47~2_combout\);

-- Location: FF_X81_Y44_N9
\BancoReg|ram[8][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[16]~27_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][16]~q\);

-- Location: LCCOMB_X81_Y44_N8
\BancoReg|Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux47~3_combout\ = (\BancoReg|Mux47~2_combout\ & ((\InstMem|ram~554_combout\) # ((!\InstMem|ram~556_combout\)))) # (!\BancoReg|Mux47~2_combout\ & (!\InstMem|ram~554_combout\ & (\BancoReg|ram[8][16]~q\ & \InstMem|ram~556_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux47~2_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|ram[8][16]~q\,
	datad => \InstMem|ram~556_combout\,
	combout => \BancoReg|Mux47~3_combout\);

-- Location: LCCOMB_X86_Y46_N28
\BancoReg|Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux47~4_combout\ = (\InstMem|ram~550_combout\ & (((\BancoReg|Mux47~1_combout\)) # (!\InstMem|ram~549_combout\))) # (!\InstMem|ram~550_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux47~1_combout\,
	datad => \BancoReg|Mux47~3_combout\,
	combout => \BancoReg|Mux47~4_combout\);

-- Location: LCCOMB_X86_Y46_N18
\BancoReg|Mux47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux47~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux47~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux47~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux47~4_combout\,
	combout => \BancoReg|Mux47~5_combout\);

-- Location: LCCOMB_X86_Y46_N24
\muxRtImm|C[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[16]~26_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux47~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux47~5_combout\,
	combout => \muxRtImm|C[16]~26_combout\);

-- Location: FF_X83_Y50_N11
\BancoReg|ram[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[14]~24_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][14]~q\);

-- Location: FF_X84_Y50_N29
\BancoReg|ram[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[14]~24_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][14]~q\);

-- Location: LCCOMB_X83_Y50_N14
\BancoReg|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux17~0_combout\ = (\InstMem|ram~549_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (!\BancoReg|ram[13][14]~q\)) # (!\InstMem|ram~551_combout\ & ((!\BancoReg|ram[5][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][14]~q\,
	datab => \BancoReg|ram[5][14]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux17~0_combout\);

-- Location: FF_X84_Y50_N31
\BancoReg|ram[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[14]~24_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][14]~q\);

-- Location: LCCOMB_X84_Y50_N14
\BancoReg|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux17~2_combout\ = (\InstMem|ram~550_combout\ & (\BancoReg|ram[4][14]~q\ & ((\InstMem|ram~549_combout\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|ram[0][14]~q\) # (!\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][14]~q\,
	datab => \BancoReg|ram[0][14]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux17~2_combout\);

-- Location: FF_X82_Y50_N31
\BancoReg|ram[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[14]~24_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][14]~q\);

-- Location: FF_X83_Y50_N21
\BancoReg|ram[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[14]~24_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][14]~q\);

-- Location: LCCOMB_X83_Y50_N12
\BancoReg|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux17~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][14]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[8][14]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[12][14]~q\,
	combout => \BancoReg|Mux17~1_combout\);

-- Location: LCCOMB_X84_Y50_N8
\BancoReg|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux17~3_combout\ = (\BancoReg|Mux17~0_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|Mux17~1_combout\)))) # (!\BancoReg|Mux17~0_combout\ & (\InstMem|ram~549_combout\ $ ((!\BancoReg|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux17~0_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux17~2_combout\,
	datad => \BancoReg|Mux17~1_combout\,
	combout => \BancoReg|Mux17~3_combout\);

-- Location: LCCOMB_X81_Y48_N8
\BancoReg|ram[4][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][13]~feeder_combout\ = \MuxULAMem|C[13]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[13]~23_combout\,
	combout => \BancoReg|ram[4][13]~feeder_combout\);

-- Location: FF_X81_Y48_N9
\BancoReg|ram[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][13]~feeder_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][13]~q\);

-- Location: FF_X80_Y47_N13
\BancoReg|ram[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[13]~23_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][13]~q\);

-- Location: FF_X80_Y47_N23
\BancoReg|ram[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[13]~23_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][13]~q\);

-- Location: LCCOMB_X80_Y47_N2
\BancoReg|Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux50~2_combout\ = (\BancoReg|ram[0][13]~q\ & (((\PC|DOUT\(0)) # (\InstMem|ram~554_combout\)) # (!\PC|DOUT\(1)))) # (!\BancoReg|ram[0][13]~q\ & (!\PC|DOUT\(1) & (\PC|DOUT\(0) & !\InstMem|ram~554_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][13]~q\,
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(0),
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux50~2_combout\);

-- Location: LCCOMB_X80_Y47_N12
\BancoReg|Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux50~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux50~2_combout\ & ((\BancoReg|ram[5][13]~q\))) # (!\BancoReg|Mux50~2_combout\ & (\BancoReg|ram[4][13]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux50~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][13]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[5][13]~q\,
	datad => \BancoReg|Mux50~2_combout\,
	combout => \BancoReg|Mux50~3_combout\);

-- Location: FF_X81_Y48_N23
\BancoReg|ram[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[13]~23_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][13]~q\);

-- Location: FF_X81_Y49_N3
\BancoReg|ram[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[13]~23_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][13]~q\);

-- Location: LCCOMB_X81_Y49_N2
\BancoReg|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux50~0_combout\ = (\PC|DOUT\(0) & ((\BancoReg|ram[8][13]~q\) # ((!\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & (\BancoReg|ram[8][13]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[8][13]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux50~0_combout\);

-- Location: LCCOMB_X81_Y49_N24
\BancoReg|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux50~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux50~0_combout\ & ((\BancoReg|ram[13][13]~q\))) # (!\BancoReg|Mux50~0_combout\ & (\BancoReg|ram[12][13]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][13]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[13][13]~q\,
	datad => \BancoReg|Mux50~0_combout\,
	combout => \BancoReg|Mux50~1_combout\);

-- Location: LCCOMB_X81_Y49_N10
\BancoReg|Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux50~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & ((\BancoReg|Mux50~1_combout\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|Mux50~3_combout\)))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux50~3_combout\,
	datad => \BancoReg|Mux50~1_combout\,
	combout => \BancoReg|Mux50~4_combout\);

-- Location: LCCOMB_X81_Y49_N28
\BancoReg|Mux50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux50~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux50~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux50~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux50~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux50~4_combout\,
	combout => \BancoReg|Mux50~5_combout\);

-- Location: LCCOMB_X82_Y49_N14
\muxRtImm|C[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[13]~29_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux50~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux50~5_combout\,
	combout => \muxRtImm|C[13]~29_combout\);

-- Location: FF_X81_Y48_N7
\BancoReg|ram[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[11]~19_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][11]~q\);

-- Location: FF_X81_Y49_N21
\BancoReg|ram[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[11]~19_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][11]~q\);

-- Location: LCCOMB_X81_Y49_N12
\BancoReg|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux20~0_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][11]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datac => \BancoReg|ram[12][11]~q\,
	datad => \BancoReg|ram[13][11]~q\,
	combout => \BancoReg|Mux20~0_combout\);

-- Location: FF_X81_Y49_N23
\BancoReg|ram[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[11]~19_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][11]~q\);

-- Location: FF_X80_Y47_N11
\BancoReg|ram[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[11]~19_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][11]~q\);

-- Location: LCCOMB_X81_Y49_N14
\BancoReg|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux20~1_combout\ = (\InstMem|ram~551_combout\ & ((\InstMem|ram~550_combout\) # ((\BancoReg|ram[8][11]~q\)))) # (!\InstMem|ram~551_combout\ & (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[8][11]~q\,
	datad => \BancoReg|ram[0][11]~q\,
	combout => \BancoReg|Mux20~1_combout\);

-- Location: FF_X80_Y47_N1
\BancoReg|ram[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[11]~19_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][11]~q\);

-- Location: LCCOMB_X81_Y48_N0
\BancoReg|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux20~2_combout\ = (\InstMem|ram~549_combout\ & (((!\BancoReg|ram[4][11]~q\)) # (!\InstMem|ram~550_combout\))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\ & ((!\BancoReg|ram[5][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[4][11]~q\,
	datad => \BancoReg|ram[5][11]~q\,
	combout => \BancoReg|Mux20~2_combout\);

-- Location: LCCOMB_X81_Y49_N0
\BancoReg|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux20~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux20~1_combout\ & (\BancoReg|Mux20~0_combout\)) # (!\BancoReg|Mux20~1_combout\ & ((!\BancoReg|Mux20~2_combout\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux20~1_combout\ & 
-- \BancoReg|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux20~0_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux20~1_combout\,
	datad => \BancoReg|Mux20~2_combout\,
	combout => \BancoReg|Mux20~3_combout\);

-- Location: FF_X82_Y50_N9
\BancoReg|ram[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[10]~18_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][10]~q\);

-- Location: LCCOMB_X82_Y50_N8
\BancoReg|Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux53~2_combout\ = (\PC|DOUT\(0) & (\BancoReg|ram[0][10]~q\ & ((\PC|DOUT\(1)) # (\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & ((\BancoReg|ram[0][10]~q\) # ((\PC|DOUT\(1) & !\InstMem|ram~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[0][10]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux53~2_combout\);

-- Location: FF_X82_Y50_N23
\BancoReg|ram[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[10]~18_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][10]~q\);

-- Location: LCCOMB_X82_Y50_N22
\BancoReg|Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux53~3_combout\ = (\InstMem|ram~554_combout\ & (\BancoReg|Mux53~2_combout\)) # (!\InstMem|ram~554_combout\ & ((\BancoReg|Mux53~2_combout\ & ((!\InstMem|ram~556_combout\))) # (!\BancoReg|Mux53~2_combout\ & (\BancoReg|ram[8][10]~q\ & 
-- \InstMem|ram~556_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|Mux53~2_combout\,
	datac => \BancoReg|ram[8][10]~q\,
	datad => \InstMem|ram~556_combout\,
	combout => \BancoReg|Mux53~3_combout\);

-- Location: FF_X85_Y50_N25
\BancoReg|ram[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[10]~18_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][10]~q\);

-- Location: LCCOMB_X86_Y48_N12
\BancoReg|ram[4][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][10]~feeder_combout\ = \MuxULAMem|C[10]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[10]~18_combout\,
	combout => \BancoReg|ram[4][10]~feeder_combout\);

-- Location: FF_X86_Y48_N13
\BancoReg|ram[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][10]~feeder_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][10]~q\);

-- Location: LCCOMB_X86_Y50_N28
\BancoReg|ram[5][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][10]~feeder_combout\ = \MuxULAMem|C[10]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[10]~18_combout\,
	combout => \BancoReg|ram[5][10]~feeder_combout\);

-- Location: FF_X86_Y50_N29
\BancoReg|ram[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][10]~feeder_combout\,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][10]~q\);

-- Location: LCCOMB_X86_Y50_N18
\BancoReg|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux53~0_combout\ = (\InstMem|ram~552_combout\ & (((\BancoReg|ram[5][10]~q\) # (\InstMem|ram~551_combout\)))) # (!\InstMem|ram~552_combout\ & (\BancoReg|ram[4][10]~q\ & ((!\InstMem|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][10]~q\,
	datab => \BancoReg|ram[5][10]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux53~0_combout\);

-- Location: LCCOMB_X85_Y50_N16
\BancoReg|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux53~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux53~0_combout\ & (\BancoReg|ram[13][10]~q\)) # (!\BancoReg|Mux53~0_combout\ & ((\BancoReg|ram[12][10]~q\))))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][10]~q\,
	datab => \BancoReg|ram[12][10]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|Mux53~0_combout\,
	combout => \BancoReg|Mux53~1_combout\);

-- Location: LCCOMB_X82_Y50_N16
\BancoReg|Mux53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux53~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|Mux53~1_combout\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux53~3_combout\)))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux53~3_combout\,
	datad => \BancoReg|Mux53~1_combout\,
	combout => \BancoReg|Mux53~4_combout\);

-- Location: LCCOMB_X82_Y50_N18
\BancoReg|Mux53~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux53~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux53~4_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux53~4_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux53~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \InstMem|ram~554_combout\,
	datad => \BancoReg|Mux53~4_combout\,
	combout => \BancoReg|Mux53~5_combout\);

-- Location: LCCOMB_X82_Y50_N28
\muxRtImm|C[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[10]~32_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux53~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux53~5_combout\,
	combout => \muxRtImm|C[10]~32_combout\);

-- Location: LCCOMB_X83_Y48_N18
\BancoReg|ram[8][6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[8][6]~8_combout\ = !\MuxULAMem|C[6]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[6]~47_combout\,
	combout => \BancoReg|ram[8][6]~8_combout\);

-- Location: FF_X83_Y48_N19
\BancoReg|ram[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[8][6]~8_combout\,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][6]~q\);

-- Location: FF_X82_Y44_N17
\BancoReg|ram[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[6]~47_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][6]~q\);

-- Location: FF_X82_Y44_N31
\BancoReg|ram[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[6]~47_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][6]~q\);

-- Location: LCCOMB_X82_Y44_N14
\BancoReg|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux25~2_combout\ = (\InstMem|ram~550_combout\ & ((\InstMem|ram~549_combout\ & (\BancoReg|ram[4][6]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[5][6]~q\))))) # (!\InstMem|ram~550_combout\ & (((\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][6]~q\,
	datab => \BancoReg|ram[5][6]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux25~2_combout\);

-- Location: LCCOMB_X82_Y44_N20
\BancoReg|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux25~3_combout\ = (\BancoReg|Mux25~2_combout\ & ((\BancoReg|ram[8][6]~q\) # (!\InstMem|ram~551_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[8][6]~q\,
	datac => \BancoReg|Mux25~2_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux25~3_combout\);

-- Location: FF_X81_Y44_N21
\BancoReg|ram[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[6]~47_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][6]~q\);

-- Location: LCCOMB_X82_Y44_N8
\BancoReg|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux25~1_combout\ = (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\) # (!\BancoReg|ram[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[0][6]~q\,
	combout => \BancoReg|Mux25~1_combout\);

-- Location: FF_X81_Y48_N13
\BancoReg|ram[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[6]~47_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][6]~q\);

-- Location: LCCOMB_X81_Y48_N2
\BancoReg|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux25~0_combout\ = (\InstMem|ram~549_combout\ & ((\BancoReg|ram[12][6]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[13][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][6]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[12][6]~q\,
	combout => \BancoReg|Mux25~0_combout\);

-- Location: LCCOMB_X82_Y44_N26
\BancoReg|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux25~4_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux25~1_combout\ & (!\BancoReg|Mux25~3_combout\)) # (!\BancoReg|Mux25~1_combout\ & ((\BancoReg|Mux25~0_combout\))))) # (!\InstMem|ram~551_combout\ & (\BancoReg|Mux25~3_combout\ & 
-- (!\BancoReg|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|Mux25~3_combout\,
	datac => \BancoReg|Mux25~1_combout\,
	datad => \BancoReg|Mux25~0_combout\,
	combout => \BancoReg|Mux25~4_combout\);

-- Location: LCCOMB_X88_Y48_N30
\BancoReg|ram[8][5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[8][5]~7_combout\ = !\MuxULAMem|C[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[5]~11_combout\,
	combout => \BancoReg|ram[8][5]~7_combout\);

-- Location: FF_X88_Y48_N31
\BancoReg|ram[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[8][5]~7_combout\,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][5]~q\);

-- Location: FF_X84_Y48_N17
\BancoReg|ram[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[5]~11_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][5]~q\);

-- Location: LCCOMB_X88_Y47_N20
\BancoReg|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux58~0_combout\ = (\InstMem|ram~552_combout\ & (((\InstMem|ram~550_combout\)))) # (!\InstMem|ram~552_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][5]~q\))) # (!\InstMem|ram~550_combout\ & (!\BancoReg|ram[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][5]~q\,
	datab => \BancoReg|ram[12][5]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux58~0_combout\);

-- Location: LCCOMB_X88_Y47_N26
\BancoReg|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux58~1_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux58~0_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~555_combout\ & ((\BancoReg|ram[13][5]~q\) # (!\BancoReg|Mux58~0_combout\))) # (!\InstMem|ram~555_combout\ & 
-- ((\BancoReg|Mux58~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|ram[13][5]~q\,
	datac => \InstMem|ram~555_combout\,
	datad => \BancoReg|Mux58~0_combout\,
	combout => \BancoReg|Mux58~1_combout\);

-- Location: FF_X87_Y47_N5
\BancoReg|ram[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[5]~11_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][5]~q\);

-- Location: LCCOMB_X88_Y48_N0
\BancoReg|ram[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][5]~feeder_combout\ = \MuxULAMem|C[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[5]~11_combout\,
	combout => \BancoReg|ram[4][5]~feeder_combout\);

-- Location: FF_X88_Y48_N1
\BancoReg|ram[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][5]~feeder_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][5]~q\);

-- Location: FF_X87_Y47_N15
\BancoReg|ram[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[5]~11_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][5]~q\);

-- Location: LCCOMB_X87_Y47_N14
\BancoReg|Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux58~2_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[4][5]~q\) # ((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|ram[0][5]~q\ & !\InstMem|ram~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[4][5]~q\,
	datac => \BancoReg|ram[0][5]~q\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux58~2_combout\);

-- Location: LCCOMB_X87_Y47_N12
\BancoReg|Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux58~3_combout\ = (\BancoReg|Mux58~2_combout\ & ((\BancoReg|ram[5][5]~q\) # ((\InstMem|ram~554_combout\) # (!\InstMem|ram~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][5]~q\,
	datab => \InstMem|ram~555_combout\,
	datac => \BancoReg|Mux58~2_combout\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux58~3_combout\);

-- Location: LCCOMB_X88_Y47_N24
\BancoReg|Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux58~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|Mux58~1_combout\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|Mux58~3_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux58~1_combout\,
	datad => \BancoReg|Mux58~3_combout\,
	combout => \BancoReg|Mux58~4_combout\);

-- Location: LCCOMB_X88_Y47_N2
\BancoReg|Mux58~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux58~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux58~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux58~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux58~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux58~4_combout\,
	combout => \BancoReg|Mux58~5_combout\);

-- Location: LCCOMB_X88_Y47_N16
\muxRtImm|C[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[5]~37_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux58~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux58~5_combout\,
	combout => \muxRtImm|C[5]~37_combout\);

-- Location: LCCOMB_X83_Y47_N8
\ULA|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~9_combout\ = (\ULA|Add1~8\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[4]~38_combout\)))) # (!\ULA|Add1~8\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[4]~38_combout\ $ (VCC))))
-- \ULA|Add1~10\ = CARRY((!\ULA|Add1~8\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[4]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[4]~38_combout\,
	datad => VCC,
	cin => \ULA|Add1~8\,
	combout => \ULA|Add1~9_combout\,
	cout => \ULA|Add1~10\);

-- Location: LCCOMB_X85_Y51_N22
\BancoReg|ram[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[8][4]~feeder_combout\ = \MuxULAMem|C[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[4]~8_combout\,
	combout => \BancoReg|ram[8][4]~feeder_combout\);

-- Location: FF_X85_Y51_N23
\BancoReg|ram[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[8][4]~feeder_combout\,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][4]~q\);

-- Location: FF_X88_Y47_N29
\BancoReg|ram[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[4]~8_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][4]~q\);

-- Location: LCCOMB_X86_Y47_N4
\BancoReg|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux27~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][4]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][4]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[12][4]~q\,
	combout => \BancoReg|Mux27~1_combout\);

-- Location: LCCOMB_X84_Y51_N6
\BancoReg|ram[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][4]~feeder_combout\ = \MuxULAMem|C[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[4]~8_combout\,
	combout => \BancoReg|ram[4][4]~feeder_combout\);

-- Location: FF_X84_Y51_N7
\BancoReg|ram[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][4]~feeder_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][4]~q\);

-- Location: LCCOMB_X85_Y51_N8
\BancoReg|ram[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][4]~feeder_combout\ = \MuxULAMem|C[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[4]~8_combout\,
	combout => \BancoReg|ram[0][4]~feeder_combout\);

-- Location: FF_X85_Y51_N9
\BancoReg|ram[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][4]~feeder_combout\,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][4]~q\);

-- Location: LCCOMB_X85_Y51_N4
\BancoReg|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux27~2_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & (\BancoReg|ram[4][4]~q\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[0][4]~q\))))) # (!\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][4]~q\,
	datab => \BancoReg|ram[0][4]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux27~2_combout\);

-- Location: FF_X88_Y47_N19
\BancoReg|ram[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[4]~8_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][4]~q\);

-- Location: LCCOMB_X87_Y47_N26
\BancoReg|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux27~0_combout\ = (\InstMem|ram~549_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (!\BancoReg|ram[13][4]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[5][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|ram[13][4]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|ram[5][4]~q\,
	combout => \BancoReg|Mux27~0_combout\);

-- Location: LCCOMB_X86_Y47_N14
\BancoReg|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux27~3_combout\ = (\BancoReg|Mux27~0_combout\ & (\InstMem|ram~549_combout\ & (\BancoReg|Mux27~1_combout\))) # (!\BancoReg|Mux27~0_combout\ & (\InstMem|ram~549_combout\ $ (((!\BancoReg|Mux27~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|Mux27~1_combout\,
	datac => \BancoReg|Mux27~2_combout\,
	datad => \BancoReg|Mux27~0_combout\,
	combout => \BancoReg|Mux27~3_combout\);

-- Location: LCCOMB_X85_Y47_N8
\ULA|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_combout\ = (\ULA|Add0~8\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux27~3_combout\)))) # (!\ULA|Add0~8\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux27~3_combout\ $ (VCC))))
-- \ULA|Add0~10\ = CARRY((!\ULA|Add0~8\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux27~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~8\,
	combout => \ULA|Add0~9_combout\,
	cout => \ULA|Add0~10\);

-- Location: LCCOMB_X84_Y47_N8
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

-- Location: LCCOMB_X84_Y51_N10
\ULA|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux27~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~9_combout\) # (\ULA|Add1~9_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~9_combout\ & \ULA|Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~9_combout\,
	datad => \ULA|Add1~9_combout\,
	combout => \ULA|Mux27~0_combout\);

-- Location: LCCOMB_X84_Y51_N16
\ULA|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux27~1_combout\ = (\ULA|Mux27~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|tempAdd[4]~8_combout\,
	datad => \ULA|Mux27~0_combout\,
	combout => \ULA|Mux27~1_combout\);

-- Location: LCCOMB_X84_Y51_N14
\MuxULAMem|C[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[4]~8_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux27~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux27~1_combout\,
	combout => \MuxULAMem|C[4]~8_combout\);

-- Location: LCCOMB_X87_Y47_N16
\BancoReg|ram[5][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][4]~6_combout\ = !\MuxULAMem|C[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[4]~8_combout\,
	combout => \BancoReg|ram[5][4]~6_combout\);

-- Location: FF_X87_Y47_N17
\BancoReg|ram[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][4]~6_combout\,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][4]~q\);

-- Location: LCCOMB_X88_Y47_N28
\BancoReg|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux59~0_combout\ = (\InstMem|ram~552_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~552_combout\ & ((\InstMem|ram~551_combout\ & ((\BancoReg|ram[12][4]~q\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~552_combout\,
	datab => \BancoReg|ram[4][4]~q\,
	datac => \BancoReg|ram[12][4]~q\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux59~0_combout\);

-- Location: LCCOMB_X88_Y47_N14
\BancoReg|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux59~1_combout\ = (\InstMem|ram~552_combout\ & ((\BancoReg|Mux59~0_combout\ & ((\BancoReg|ram[13][4]~q\))) # (!\BancoReg|Mux59~0_combout\ & (!\BancoReg|ram[5][4]~q\)))) # (!\InstMem|ram~552_combout\ & (((\BancoReg|Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][4]~q\,
	datab => \BancoReg|ram[13][4]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \BancoReg|Mux59~0_combout\,
	combout => \BancoReg|Mux59~1_combout\);

-- Location: LCCOMB_X85_Y51_N6
\BancoReg|Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux59~2_combout\ = (!\InstMem|ram~552_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|ram[8][4]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][4]~q\,
	datab => \BancoReg|ram[0][4]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux59~2_combout\);

-- Location: LCCOMB_X88_Y47_N0
\BancoReg|Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux59~3_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & (\BancoReg|Mux59~1_combout\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|Mux59~2_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux59~1_combout\,
	datad => \BancoReg|Mux59~2_combout\,
	combout => \BancoReg|Mux59~3_combout\);

-- Location: LCCOMB_X88_Y47_N6
\BancoReg|Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux59~4_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux59~3_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux59~3_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux59~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux59~3_combout\,
	combout => \BancoReg|Mux59~4_combout\);

-- Location: LCCOMB_X88_Y47_N10
\muxRtImm|C[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[4]~38_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux59~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux59~4_combout\,
	combout => \muxRtImm|C[4]~38_combout\);

-- Location: LCCOMB_X83_Y47_N10
\ULA|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~11_combout\ = (\ULA|Add1~10\ & (\muxRtImm|C[5]~37_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~10\ & ((\muxRtImm|C[5]~37_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~12\ = CARRY((\muxRtImm|C[5]~37_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[5]~37_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~10\,
	combout => \ULA|Add1~11_combout\,
	cout => \ULA|Add1~12\);

-- Location: LCCOMB_X85_Y47_N10
\ULA|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~11_combout\ = (\ULA|Add0~10\ & (\UCULA|Mux7~0_combout\ $ ((!\BancoReg|Mux26~4_combout\)))) # (!\ULA|Add0~10\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux26~4_combout\)) # (GND)))
-- \ULA|Add0~12\ = CARRY((\UCULA|Mux7~0_combout\ $ (!\BancoReg|Mux26~4_combout\)) # (!\ULA|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux26~4_combout\,
	datad => VCC,
	cin => \ULA|Add0~10\,
	combout => \ULA|Add0~11_combout\,
	cout => \ULA|Add0~12\);

-- Location: LCCOMB_X84_Y47_N10
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

-- Location: LCCOMB_X84_Y44_N24
\ULA|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux26~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~11_combout\) # (\ULA|Add1~11_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~11_combout\ & \ULA|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~11_combout\,
	datad => \ULA|Add1~11_combout\,
	combout => \ULA|Mux26~0_combout\);

-- Location: LCCOMB_X85_Y48_N0
\ULA|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux26~1_combout\ = (\ULA|Mux26~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|tempAdd[5]~10_combout\,
	datad => \ULA|Mux26~0_combout\,
	combout => \ULA|Mux26~1_combout\);

-- Location: LCCOMB_X84_Y48_N2
\MuxULAMem|C[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[5]~10_combout\ = (\ULA|Mux30~1_combout\ & ((\ULA|Mux31~1_combout\ & ((\MuxULAMem|C[18]~9_combout\))) # (!\ULA|Mux31~1_combout\ & (\MuxULAMem|C[5]~6_combout\)))) # (!\ULA|Mux30~1_combout\ & (\MuxULAMem|C[5]~6_combout\ & 
-- ((\ULA|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULAMem|C[5]~6_combout\,
	datab => \ULA|Mux30~1_combout\,
	datac => \MuxULAMem|C[18]~9_combout\,
	datad => \ULA|Mux31~1_combout\,
	combout => \MuxULAMem|C[5]~10_combout\);

-- Location: LCCOMB_X84_Y48_N16
\MuxULAMem|C[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[5]~11_combout\ = (\MuxULAMem|C[5]~10_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux26~1_combout\,
	datad => \MuxULAMem|C[5]~10_combout\,
	combout => \MuxULAMem|C[5]~11_combout\);

-- Location: FF_X88_Y47_N9
\BancoReg|ram[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[5]~11_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][5]~q\);

-- Location: LCCOMB_X87_Y47_N4
\BancoReg|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux26~0_combout\ = (\InstMem|ram~549_combout\ & ((\BancoReg|ram[12][5]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[13][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|ram[13][5]~q\,
	datad => \BancoReg|ram[12][5]~q\,
	combout => \BancoReg|Mux26~0_combout\);

-- Location: LCCOMB_X87_Y47_N24
\BancoReg|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux26~1_combout\ = (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\) # (!\BancoReg|ram[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[0][5]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux26~1_combout\);

-- Location: LCCOMB_X88_Y48_N20
\BancoReg|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux26~2_combout\ = (\InstMem|ram~550_combout\ & ((\InstMem|ram~549_combout\ & ((\BancoReg|ram[4][5]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[5][5]~q\)))) # (!\InstMem|ram~550_combout\ & (((\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][5]~q\,
	datab => \BancoReg|ram[4][5]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux26~2_combout\);

-- Location: LCCOMB_X87_Y47_N28
\BancoReg|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux26~3_combout\ = (\BancoReg|Mux26~2_combout\ & ((\BancoReg|ram[8][5]~q\) # (!\InstMem|ram~551_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[8][5]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|Mux26~2_combout\,
	combout => \BancoReg|Mux26~3_combout\);

-- Location: LCCOMB_X86_Y47_N16
\BancoReg|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux26~4_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux26~1_combout\ & ((!\BancoReg|Mux26~3_combout\))) # (!\BancoReg|Mux26~1_combout\ & (\BancoReg|Mux26~0_combout\)))) # (!\InstMem|ram~551_combout\ & (((!\BancoReg|Mux26~1_combout\ & 
-- \BancoReg|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux26~0_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux26~1_combout\,
	datad => \BancoReg|Mux26~3_combout\,
	combout => \BancoReg|Mux26~4_combout\);

-- Location: LCCOMB_X85_Y47_N12
\ULA|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_combout\ = (\ULA|Add0~12\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux25~4_combout\)))) # (!\ULA|Add0~12\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux25~4_combout\ $ (VCC))))
-- \ULA|Add0~14\ = CARRY((!\ULA|Add0~12\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux25~4_combout\,
	datad => VCC,
	cin => \ULA|Add0~12\,
	combout => \ULA|Add0~13_combout\,
	cout => \ULA|Add0~14\);

-- Location: LCCOMB_X83_Y47_N12
\ULA|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~13_combout\ = (\ULA|Add1~12\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[6]~36_combout\)))) # (!\ULA|Add1~12\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[6]~36_combout\ $ (VCC))))
-- \ULA|Add1~14\ = CARRY((!\ULA|Add1~12\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[6]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[6]~36_combout\,
	datad => VCC,
	cin => \ULA|Add1~12\,
	combout => \ULA|Add1~13_combout\,
	cout => \ULA|Add1~14\);

-- Location: LCCOMB_X84_Y45_N22
\ULA|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux25~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add0~13_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add1~13_combout\))) # (!\ULA|Add0~13_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~13_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add1~13_combout\,
	combout => \ULA|Mux25~0_combout\);

-- Location: LCCOMB_X84_Y47_N12
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

-- Location: LCCOMB_X84_Y45_N12
\ULA|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux25~1_combout\ = (\ULA|Mux25~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux25~0_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|tempAdd[6]~12_combout\,
	combout => \ULA|Mux25~1_combout\);

-- Location: LCCOMB_X83_Y48_N6
\MuxULAMem|C[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[6]~12_combout\ = (\ULA|Mux31~1_combout\ & (\ULA|Mux29~1_combout\ $ (\ULA|Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux29~1_combout\,
	datac => \ULA|Mux30~1_combout\,
	datad => \ULA|Mux31~1_combout\,
	combout => \MuxULAMem|C[6]~12_combout\);

-- Location: LCCOMB_X83_Y48_N12
\MuxULAMem|C[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[6]~47_combout\ = (\UCFD|Mux3~0_combout\ & (!\ULA|Mux28~1_combout\ & ((\MuxULAMem|C[6]~12_combout\)))) # (!\UCFD|Mux3~0_combout\ & (((\ULA|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datab => \ULA|Mux28~1_combout\,
	datac => \ULA|Mux25~1_combout\,
	datad => \MuxULAMem|C[6]~12_combout\,
	combout => \MuxULAMem|C[6]~47_combout\);

-- Location: FF_X83_Y48_N13
\BancoReg|ram[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[6]~47_combout\,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][6]~q\);

-- Location: LCCOMB_X82_Y44_N18
\BancoReg|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux57~0_combout\ = (\InstMem|ram~552_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~552_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|ram[12][6]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][6]~q\,
	datab => \BancoReg|ram[4][6]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux57~0_combout\);

-- Location: LCCOMB_X82_Y44_N30
\BancoReg|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux57~1_combout\ = (\InstMem|ram~552_combout\ & ((\BancoReg|Mux57~0_combout\ & (\BancoReg|ram[13][6]~q\)) # (!\BancoReg|Mux57~0_combout\ & ((\BancoReg|ram[5][6]~q\))))) # (!\InstMem|ram~552_combout\ & (((\BancoReg|Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~552_combout\,
	datab => \BancoReg|ram[13][6]~q\,
	datac => \BancoReg|ram[5][6]~q\,
	datad => \BancoReg|Mux57~0_combout\,
	combout => \BancoReg|Mux57~1_combout\);

-- Location: LCCOMB_X82_Y44_N0
\BancoReg|Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux57~2_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~552_combout\) # (!\BancoReg|ram[8][6]~q\)))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][6]~q\ & (!\InstMem|ram~552_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[0][6]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \BancoReg|ram[8][6]~q\,
	combout => \BancoReg|Mux57~2_combout\);

-- Location: LCCOMB_X82_Y44_N10
\BancoReg|Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux57~3_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & (\BancoReg|Mux57~1_combout\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|Mux57~2_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux57~1_combout\,
	datad => \BancoReg|Mux57~2_combout\,
	combout => \BancoReg|Mux57~3_combout\);

-- Location: LCCOMB_X82_Y44_N12
\BancoReg|Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux57~4_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux57~3_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux57~3_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~553_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux57~3_combout\,
	combout => \BancoReg|Mux57~4_combout\);

-- Location: LCCOMB_X82_Y44_N6
\muxRtImm|C[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[6]~36_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux57~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux57~4_combout\,
	combout => \muxRtImm|C[6]~36_combout\);

-- Location: LCCOMB_X83_Y47_N14
\ULA|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~15_combout\ = (\ULA|Add1~14\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[7]~35_combout\)))) # (!\ULA|Add1~14\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[7]~35_combout\)) # (GND)))
-- \ULA|Add1~16\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[7]~35_combout\)) # (!\ULA|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[7]~35_combout\,
	datad => VCC,
	cin => \ULA|Add1~14\,
	combout => \ULA|Add1~15_combout\,
	cout => \ULA|Add1~16\);

-- Location: FF_X84_Y48_N5
\BancoReg|ram[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[7]~15_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][7]~q\);

-- Location: LCCOMB_X86_Y47_N6
\BancoReg|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux24~0_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][7]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|ram[12][7]~q\,
	datad => \BancoReg|ram[13][7]~q\,
	combout => \BancoReg|Mux24~0_combout\);

-- Location: LCCOMB_X87_Y47_N22
\BancoReg|ram[5][7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][7]~9_combout\ = !\MuxULAMem|C[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[7]~15_combout\,
	combout => \BancoReg|ram[5][7]~9_combout\);

-- Location: FF_X87_Y47_N23
\BancoReg|ram[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][7]~9_combout\,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][7]~q\);

-- Location: FF_X89_Y47_N21
\BancoReg|ram[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[7]~15_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][7]~q\);

-- Location: LCCOMB_X89_Y47_N4
\BancoReg|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux24~2_combout\ = (\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\) # (!\BancoReg|ram[4][7]~q\)))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[5][7]~q\ & ((\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|ram[5][7]~q\,
	datac => \BancoReg|ram[4][7]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux24~2_combout\);

-- Location: FF_X87_Y47_N25
\BancoReg|ram[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[7]~15_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][7]~q\);

-- Location: FF_X84_Y48_N31
\BancoReg|ram[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[7]~15_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][7]~q\);

-- Location: LCCOMB_X87_Y47_N18
\BancoReg|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux24~1_combout\ = (\InstMem|ram~551_combout\ & (((\BancoReg|ram[8][7]~q\) # (\InstMem|ram~550_combout\)))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][7]~q\ & ((!\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[0][7]~q\,
	datac => \BancoReg|ram[8][7]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux24~1_combout\);

-- Location: LCCOMB_X86_Y47_N28
\BancoReg|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux24~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux24~1_combout\ & (\BancoReg|Mux24~0_combout\)) # (!\BancoReg|Mux24~1_combout\ & ((!\BancoReg|Mux24~2_combout\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux24~2_combout\ & 
-- \BancoReg|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux24~0_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux24~2_combout\,
	datad => \BancoReg|Mux24~1_combout\,
	combout => \BancoReg|Mux24~3_combout\);

-- Location: LCCOMB_X85_Y47_N14
\ULA|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~15_combout\ = (\ULA|Add0~14\ & (\BancoReg|Mux24~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~14\ & ((\BancoReg|Mux24~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~16\ = CARRY((\BancoReg|Mux24~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux24~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~14\,
	combout => \ULA|Add0~15_combout\,
	cout => \ULA|Add0~16\);

-- Location: LCCOMB_X84_Y47_N14
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

-- Location: LCCOMB_X87_Y47_N0
\ULA|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux24~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add0~15_combout\ & ((\ULA|Add1~15_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add0~15_combout\ & (\ULA|Add1~15_combout\ & \UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \ULA|Add0~15_combout\,
	datac => \ULA|Add1~15_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux24~0_combout\);

-- Location: LCCOMB_X87_Y47_N10
\ULA|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux24~1_combout\ = (\ULA|Mux24~0_combout\) # ((\ULA|tempAdd[7]~14_combout\ & (!\UCULA|Mux7~0_combout\ & !\InstMem|ram~557_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[7]~14_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|Mux24~0_combout\,
	combout => \ULA|Mux24~1_combout\);

-- Location: LCCOMB_X84_Y48_N20
\MuxULAMem|C[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[7]~13_combout\ = (\MuxULAMem|C[5]~6_combout\ & ((\ULA|Mux31~0_combout\ & ((!\InstMem|ram~557_combout\))) # (!\ULA|Mux31~0_combout\ & ((\InstMem|ram~557_combout\) # (!\ULA|tempAdd[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~0_combout\,
	datab => \ULA|tempAdd[0]~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \MuxULAMem|C[5]~6_combout\,
	combout => \MuxULAMem|C[7]~13_combout\);

-- Location: LCCOMB_X83_Y48_N8
\MuxULAMem|C[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[7]~14_combout\ = (\ULA|Mux30~1_combout\ & (\MuxULAMem|C[7]~13_combout\ & ((!\ULA|sltIn[0]~0_combout\) # (!\ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~1_combout\,
	datab => \ULA|Mux31~0_combout\,
	datac => \MuxULAMem|C[7]~13_combout\,
	datad => \ULA|sltIn[0]~0_combout\,
	combout => \MuxULAMem|C[7]~14_combout\);

-- Location: LCCOMB_X84_Y48_N4
\MuxULAMem|C[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[7]~15_combout\ = (\MuxULAMem|C[7]~14_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux24~1_combout\,
	datad => \MuxULAMem|C[7]~14_combout\,
	combout => \MuxULAMem|C[7]~15_combout\);

-- Location: FF_X83_Y45_N5
\BancoReg|ram[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[7]~15_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][7]~q\);

-- Location: LCCOMB_X84_Y48_N30
\BancoReg|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux56~0_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][7]~q\) # ((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|ram[8][7]~q\ & !\InstMem|ram~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[12][7]~q\,
	datac => \BancoReg|ram[8][7]~q\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux56~0_combout\);

-- Location: LCCOMB_X83_Y45_N4
\BancoReg|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux56~1_combout\ = (\BancoReg|Mux56~0_combout\ & (((\InstMem|ram~554_combout\) # (\BancoReg|ram[13][7]~q\)) # (!\InstMem|ram~555_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~555_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|ram[13][7]~q\,
	datad => \BancoReg|Mux56~0_combout\,
	combout => \BancoReg|Mux56~1_combout\);

-- Location: LCCOMB_X87_Y47_N6
\BancoReg|Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux56~2_combout\ = (\InstMem|ram~552_combout\ & (((\InstMem|ram~550_combout\)))) # (!\InstMem|ram~552_combout\ & ((\InstMem|ram~550_combout\ & (\BancoReg|ram[4][7]~q\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][7]~q\,
	datab => \BancoReg|ram[0][7]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux56~2_combout\);

-- Location: LCCOMB_X87_Y47_N20
\BancoReg|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux56~3_combout\ = (\BancoReg|Mux56~2_combout\ & (((\InstMem|ram~554_combout\) # (!\InstMem|ram~555_combout\)) # (!\BancoReg|ram[5][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][7]~q\,
	datab => \InstMem|ram~555_combout\,
	datac => \InstMem|ram~554_combout\,
	datad => \BancoReg|Mux56~2_combout\,
	combout => \BancoReg|Mux56~3_combout\);

-- Location: LCCOMB_X83_Y45_N28
\BancoReg|Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux56~4_combout\ = (\InstMem|ram~551_combout\ & (((\BancoReg|Mux56~1_combout\)) # (!\InstMem|ram~549_combout\))) # (!\InstMem|ram~551_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux56~1_combout\,
	datad => \BancoReg|Mux56~3_combout\,
	combout => \BancoReg|Mux56~4_combout\);

-- Location: LCCOMB_X83_Y45_N6
\BancoReg|Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux56~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux56~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux56~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux56~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|Mux61~4_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux56~4_combout\,
	combout => \BancoReg|Mux56~5_combout\);

-- Location: LCCOMB_X83_Y45_N18
\muxRtImm|C[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[7]~35_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux56~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux56~5_combout\,
	combout => \muxRtImm|C[7]~35_combout\);

-- Location: LCCOMB_X83_Y47_N16
\ULA|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~17_combout\ = (\ULA|Add1~16\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[8]~34_combout\)))) # (!\ULA|Add1~16\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[8]~34_combout\ $ (VCC))))
-- \ULA|Add1~18\ = CARRY((!\ULA|Add1~16\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[8]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[8]~34_combout\,
	datad => VCC,
	cin => \ULA|Add1~16\,
	combout => \ULA|Add1~17_combout\,
	cout => \ULA|Add1~18\);

-- Location: LCCOMB_X86_Y48_N16
\BancoReg|ram[5][8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][8]~10_combout\ = !\MuxULAMem|C[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[8]~16_combout\,
	combout => \BancoReg|ram[5][8]~10_combout\);

-- Location: FF_X86_Y48_N17
\BancoReg|ram[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][8]~10_combout\,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][8]~q\);

-- Location: LCCOMB_X83_Y45_N14
\BancoReg|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux23~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~549_combout\)) # (!\BancoReg|ram[13][8]~q\))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|ram[5][8]~q\ & !\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][8]~q\,
	datab => \BancoReg|ram[5][8]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux23~0_combout\);

-- Location: LCCOMB_X81_Y45_N8
\BancoReg|ram[0][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][8]~feeder_combout\ = \MuxULAMem|C[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[8]~16_combout\,
	combout => \BancoReg|ram[0][8]~feeder_combout\);

-- Location: FF_X81_Y45_N9
\BancoReg|ram[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][8]~feeder_combout\,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][8]~q\);

-- Location: FF_X86_Y48_N3
\BancoReg|ram[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[8]~16_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][8]~q\);

-- Location: LCCOMB_X81_Y45_N20
\BancoReg|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux23~2_combout\ = (\InstMem|ram~550_combout\ & (((\BancoReg|ram[4][8]~q\ & \InstMem|ram~549_combout\)))) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[0][8]~q\) # ((!\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[0][8]~q\,
	datac => \BancoReg|ram[4][8]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux23~2_combout\);

-- Location: LCCOMB_X81_Y45_N2
\BancoReg|ram[8][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[8][8]~feeder_combout\ = \MuxULAMem|C[8]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[8]~16_combout\,
	combout => \BancoReg|ram[8][8]~feeder_combout\);

-- Location: FF_X81_Y45_N3
\BancoReg|ram[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[8][8]~feeder_combout\,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][8]~q\);

-- Location: FF_X83_Y45_N27
\BancoReg|ram[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[8]~16_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][8]~q\);

-- Location: LCCOMB_X84_Y45_N6
\BancoReg|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux23~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][8]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[8][8]~q\,
	datac => \BancoReg|ram[12][8]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux23~1_combout\);

-- Location: LCCOMB_X84_Y45_N28
\BancoReg|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux23~3_combout\ = (\BancoReg|Mux23~0_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|Mux23~1_combout\)))) # (!\BancoReg|Mux23~0_combout\ & (\InstMem|ram~549_combout\ $ ((!\BancoReg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux23~0_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux23~2_combout\,
	datad => \BancoReg|Mux23~1_combout\,
	combout => \BancoReg|Mux23~3_combout\);

-- Location: LCCOMB_X85_Y47_N16
\ULA|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_combout\ = (\ULA|Add0~16\ & ((\BancoReg|Mux23~3_combout\ $ (\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~16\ & (\BancoReg|Mux23~3_combout\ $ (\UCULA|Mux7~0_combout\ $ (VCC))))
-- \ULA|Add0~18\ = CARRY((!\ULA|Add0~16\ & (\BancoReg|Mux23~3_combout\ $ (\UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux23~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~16\,
	combout => \ULA|Add0~17_combout\,
	cout => \ULA|Add0~18\);

-- Location: LCCOMB_X86_Y48_N22
\ULA|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux23~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add1~17_combout\) # (\ULA|Add0~17_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~17_combout\ & \ULA|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Add1~17_combout\,
	datad => \ULA|Add0~17_combout\,
	combout => \ULA|Mux23~0_combout\);

-- Location: LCCOMB_X84_Y47_N16
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

-- Location: LCCOMB_X86_Y48_N8
\ULA|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux23~1_combout\ = (\ULA|Mux23~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Mux23~0_combout\,
	datad => \ULA|tempAdd[8]~16_combout\,
	combout => \ULA|Mux23~1_combout\);

-- Location: LCCOMB_X86_Y48_N26
\MuxULAMem|C[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[8]~16_combout\ = (\MuxULAMem|C[7]~14_combout\) # ((\ULA|Mux23~1_combout\ & !\UCFD|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux23~1_combout\,
	datac => \UCFD|Mux3~0_combout\,
	datad => \MuxULAMem|C[7]~14_combout\,
	combout => \MuxULAMem|C[8]~16_combout\);

-- Location: FF_X83_Y45_N13
\BancoReg|ram[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[8]~16_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][8]~q\);

-- Location: LCCOMB_X83_Y45_N24
\BancoReg|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux55~0_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|ram[12][8]~q\) # ((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~551_combout\ & (((!\InstMem|ram~552_combout\ & \BancoReg|ram[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][8]~q\,
	datab => \InstMem|ram~551_combout\,
	datac => \InstMem|ram~552_combout\,
	datad => \BancoReg|ram[4][8]~q\,
	combout => \BancoReg|Mux55~0_combout\);

-- Location: LCCOMB_X83_Y45_N22
\BancoReg|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux55~1_combout\ = (\InstMem|ram~552_combout\ & ((\BancoReg|Mux55~0_combout\ & (\BancoReg|ram[13][8]~q\)) # (!\BancoReg|Mux55~0_combout\ & ((!\BancoReg|ram[5][8]~q\))))) # (!\InstMem|ram~552_combout\ & (((\BancoReg|Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][8]~q\,
	datab => \BancoReg|ram[5][8]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \BancoReg|Mux55~0_combout\,
	combout => \BancoReg|Mux55~1_combout\);

-- Location: LCCOMB_X81_Y45_N18
\BancoReg|Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux55~2_combout\ = (!\InstMem|ram~552_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|ram[8][8]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][8]~q\,
	datab => \BancoReg|ram[0][8]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux55~2_combout\);

-- Location: LCCOMB_X83_Y45_N20
\BancoReg|Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux55~3_combout\ = (\InstMem|ram~550_combout\ & (((\BancoReg|Mux55~1_combout\)) # (!\InstMem|ram~549_combout\))) # (!\InstMem|ram~550_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|Mux55~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux55~1_combout\,
	datad => \BancoReg|Mux55~2_combout\,
	combout => \BancoReg|Mux55~3_combout\);

-- Location: LCCOMB_X83_Y45_N2
\BancoReg|Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux55~4_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux55~3_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux55~3_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux55~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|Mux61~4_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux55~3_combout\,
	combout => \BancoReg|Mux55~4_combout\);

-- Location: LCCOMB_X83_Y45_N16
\muxRtImm|C[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[8]~34_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux55~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux55~4_combout\,
	combout => \muxRtImm|C[8]~34_combout\);

-- Location: LCCOMB_X83_Y47_N18
\ULA|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~19_combout\ = (\ULA|Add1~18\ & (\muxRtImm|C[9]~33_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~18\ & ((\muxRtImm|C[9]~33_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~20\ = CARRY((\muxRtImm|C[9]~33_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[9]~33_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~18\,
	combout => \ULA|Add1~19_combout\,
	cout => \ULA|Add1~20\);

-- Location: FF_X81_Y49_N5
\BancoReg|ram[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[9]~17_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][9]~q\);

-- Location: LCCOMB_X81_Y49_N30
\BancoReg|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux22~0_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][9]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][9]~q\,
	datab => \BancoReg|ram[13][9]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux22~0_combout\);

-- Location: FF_X80_Y49_N15
\BancoReg|ram[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[9]~17_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][9]~q\);

-- Location: FF_X81_Y49_N31
\BancoReg|ram[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[9]~17_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][9]~q\);

-- Location: LCCOMB_X81_Y49_N8
\BancoReg|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux22~1_combout\ = (\InstMem|ram~550_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\ & ((\BancoReg|ram[8][9]~q\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][9]~q\,
	datab => \BancoReg|ram[8][9]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux22~1_combout\);

-- Location: FF_X80_Y49_N5
\BancoReg|ram[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[9]~17_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][9]~q\);

-- Location: LCCOMB_X81_Y48_N10
\BancoReg|ram[4][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][9]~feeder_combout\ = \MuxULAMem|C[9]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[9]~17_combout\,
	combout => \BancoReg|ram[4][9]~feeder_combout\);

-- Location: FF_X81_Y48_N11
\BancoReg|ram[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][9]~feeder_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][9]~q\);

-- Location: LCCOMB_X81_Y48_N28
\BancoReg|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux22~2_combout\ = (\InstMem|ram~549_combout\ & (((!\BancoReg|ram[4][9]~q\)) # (!\InstMem|ram~550_combout\))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\ & (!\BancoReg|ram[5][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[5][9]~q\,
	datad => \BancoReg|ram[4][9]~q\,
	combout => \BancoReg|Mux22~2_combout\);

-- Location: LCCOMB_X81_Y49_N6
\BancoReg|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux22~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux22~1_combout\ & (\BancoReg|Mux22~0_combout\)) # (!\BancoReg|Mux22~1_combout\ & ((!\BancoReg|Mux22~2_combout\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux22~1_combout\ & 
-- \BancoReg|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux22~0_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux22~1_combout\,
	datad => \BancoReg|Mux22~2_combout\,
	combout => \BancoReg|Mux22~3_combout\);

-- Location: LCCOMB_X85_Y47_N18
\ULA|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~19_combout\ = (\ULA|Add0~18\ & (\BancoReg|Mux22~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~18\ & ((\BancoReg|Mux22~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~20\ = CARRY((\BancoReg|Mux22~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux22~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~18\,
	combout => \ULA|Add0~19_combout\,
	cout => \ULA|Add0~20\);

-- Location: LCCOMB_X85_Y48_N6
\ULA|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux22~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add1~19_combout\ & ((\ULA|Add0~19_combout\) # (\UCULA|Mux7~0_combout\))) # (!\ULA|Add1~19_combout\ & (\ULA|Add0~19_combout\ & \UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \ULA|Add1~19_combout\,
	datac => \ULA|Add0~19_combout\,
	datad => \UCULA|Mux7~0_combout\,
	combout => \ULA|Mux22~0_combout\);

-- Location: LCCOMB_X84_Y47_N18
\ULA|tempAdd[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[9]~18_combout\ = (\ULA|Add0~19_combout\ & ((\ULA|Add1~19_combout\ & (\ULA|tempAdd[8]~17\ & VCC)) # (!\ULA|Add1~19_combout\ & (!\ULA|tempAdd[8]~17\)))) # (!\ULA|Add0~19_combout\ & ((\ULA|Add1~19_combout\ & (!\ULA|tempAdd[8]~17\)) # 
-- (!\ULA|Add1~19_combout\ & ((\ULA|tempAdd[8]~17\) # (GND)))))
-- \ULA|tempAdd[9]~19\ = CARRY((\ULA|Add0~19_combout\ & (!\ULA|Add1~19_combout\ & !\ULA|tempAdd[8]~17\)) # (!\ULA|Add0~19_combout\ & ((!\ULA|tempAdd[8]~17\) # (!\ULA|Add1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~19_combout\,
	datab => \ULA|Add1~19_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[8]~17\,
	combout => \ULA|tempAdd[9]~18_combout\,
	cout => \ULA|tempAdd[9]~19\);

-- Location: LCCOMB_X84_Y48_N22
\ULA|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux22~1_combout\ = (\ULA|Mux22~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux22~0_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|tempAdd[9]~18_combout\,
	combout => \ULA|Mux22~1_combout\);

-- Location: LCCOMB_X84_Y48_N28
\MuxULAMem|C[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[9]~17_combout\ = (\MuxULAMem|C[7]~14_combout\) # ((\ULA|Mux22~1_combout\ & !\UCFD|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux22~1_combout\,
	datab => \UCFD|Mux3~0_combout\,
	datad => \MuxULAMem|C[7]~14_combout\,
	combout => \MuxULAMem|C[9]~17_combout\);

-- Location: FF_X84_Y48_N15
\BancoReg|ram[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[9]~17_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][9]~q\);

-- Location: LCCOMB_X81_Y49_N18
\BancoReg|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux54~0_combout\ = (\PC|DOUT\(0) & ((\BancoReg|ram[8][9]~q\) # ((!\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & (\BancoReg|ram[8][9]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \BancoReg|ram[8][9]~q\,
	datac => \PC|DOUT\(1),
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux54~0_combout\);

-- Location: LCCOMB_X81_Y49_N4
\BancoReg|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux54~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux54~0_combout\ & ((\BancoReg|ram[13][9]~q\))) # (!\BancoReg|Mux54~0_combout\ & (\BancoReg|ram[12][9]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][9]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[13][9]~q\,
	datad => \BancoReg|Mux54~0_combout\,
	combout => \BancoReg|Mux54~1_combout\);

-- Location: LCCOMB_X80_Y49_N6
\BancoReg|Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux54~2_combout\ = (\PC|DOUT\(0) & ((\BancoReg|ram[0][9]~q\) # ((!\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & (\BancoReg|ram[0][9]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \BancoReg|ram[0][9]~q\,
	datac => \PC|DOUT\(1),
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux54~2_combout\);

-- Location: LCCOMB_X80_Y49_N28
\BancoReg|Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux54~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux54~2_combout\ & ((\BancoReg|ram[5][9]~q\))) # (!\BancoReg|Mux54~2_combout\ & (\BancoReg|ram[4][9]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][9]~q\,
	datab => \BancoReg|ram[5][9]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|Mux54~2_combout\,
	combout => \BancoReg|Mux54~3_combout\);

-- Location: LCCOMB_X81_Y49_N16
\BancoReg|Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux54~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|Mux54~1_combout\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|Mux54~3_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux54~1_combout\,
	datad => \BancoReg|Mux54~3_combout\,
	combout => \BancoReg|Mux54~4_combout\);

-- Location: LCCOMB_X82_Y45_N20
\BancoReg|Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux54~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux54~4_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux54~4_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux54~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~553_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux54~4_combout\,
	combout => \BancoReg|Mux54~5_combout\);

-- Location: LCCOMB_X82_Y45_N12
\muxRtImm|C[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[9]~33_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux54~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux54~5_combout\,
	combout => \muxRtImm|C[9]~33_combout\);

-- Location: LCCOMB_X83_Y47_N20
\ULA|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~21_combout\ = (\ULA|Add1~20\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[10]~32_combout\)))) # (!\ULA|Add1~20\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[10]~32_combout\ $ (VCC))))
-- \ULA|Add1~22\ = CARRY((!\ULA|Add1~20\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[10]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[10]~32_combout\,
	datad => VCC,
	cin => \ULA|Add1~20\,
	combout => \ULA|Add1~21_combout\,
	cout => \ULA|Add1~22\);

-- Location: LCCOMB_X85_Y47_N20
\ULA|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_combout\ = (\ULA|Add0~20\ & ((\BancoReg|Mux21~3_combout\ $ (\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~20\ & (\BancoReg|Mux21~3_combout\ $ (\UCULA|Mux7~0_combout\ $ (VCC))))
-- \ULA|Add0~22\ = CARRY((!\ULA|Add0~20\ & (\BancoReg|Mux21~3_combout\ $ (\UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux21~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~20\,
	combout => \ULA|Add0~21_combout\,
	cout => \ULA|Add0~22\);

-- Location: LCCOMB_X86_Y48_N20
\ULA|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux21~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add1~21_combout\) # (\ULA|Add0~21_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~21_combout\ & \ULA|Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \ULA|Add1~21_combout\,
	datac => \ULA|Add0~21_combout\,
	datad => \InstMem|ram~557_combout\,
	combout => \ULA|Mux21~0_combout\);

-- Location: LCCOMB_X84_Y47_N20
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

-- Location: LCCOMB_X86_Y48_N14
\ULA|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux21~1_combout\ = (\ULA|Mux21~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Mux21~0_combout\,
	datad => \ULA|tempAdd[10]~20_combout\,
	combout => \ULA|Mux21~1_combout\);

-- Location: LCCOMB_X86_Y48_N18
\MuxULAMem|C[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[10]~18_combout\ = (\MuxULAMem|C[7]~14_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datab => \ULA|Mux21~1_combout\,
	datad => \MuxULAMem|C[7]~14_combout\,
	combout => \MuxULAMem|C[10]~18_combout\);

-- Location: FF_X85_Y50_N19
\BancoReg|ram[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[10]~18_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][10]~q\);

-- Location: LCCOMB_X85_Y50_N18
\BancoReg|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux21~0_combout\ = (\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\)) # (!\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (!\BancoReg|ram[13][10]~q\)) # (!\InstMem|ram~551_combout\ & ((!\BancoReg|ram[5][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|ram[13][10]~q\,
	datad => \BancoReg|ram[5][10]~q\,
	combout => \BancoReg|Mux21~0_combout\);

-- Location: LCCOMB_X85_Y50_N14
\BancoReg|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux21~2_combout\ = (\InstMem|ram~550_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|ram[4][10]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|ram[0][10]~q\)) # (!\InstMem|ram~549_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|ram[0][10]~q\,
	datad => \BancoReg|ram[4][10]~q\,
	combout => \BancoReg|Mux21~2_combout\);

-- Location: LCCOMB_X85_Y50_N20
\BancoReg|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux21~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][10]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[8][10]~q\,
	datad => \BancoReg|ram[12][10]~q\,
	combout => \BancoReg|Mux21~1_combout\);

-- Location: LCCOMB_X85_Y50_N8
\BancoReg|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux21~3_combout\ = (\BancoReg|Mux21~0_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|Mux21~1_combout\)))) # (!\BancoReg|Mux21~0_combout\ & (\InstMem|ram~549_combout\ $ ((!\BancoReg|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|Mux21~0_combout\,
	datac => \BancoReg|Mux21~2_combout\,
	datad => \BancoReg|Mux21~1_combout\,
	combout => \BancoReg|Mux21~3_combout\);

-- Location: LCCOMB_X85_Y47_N22
\ULA|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~23_combout\ = (\ULA|Add0~22\ & (\BancoReg|Mux20~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~22\ & ((\BancoReg|Mux20~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~24\ = CARRY((\BancoReg|Mux20~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux20~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~22\,
	combout => \ULA|Add0~23_combout\,
	cout => \ULA|Add0~24\);

-- Location: LCCOMB_X83_Y47_N22
\ULA|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~23_combout\ = (\ULA|Add1~22\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[11]~31_combout\)))) # (!\ULA|Add1~22\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[11]~31_combout\)) # (GND)))
-- \ULA|Add1~24\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[11]~31_combout\)) # (!\ULA|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[11]~31_combout\,
	datad => VCC,
	cin => \ULA|Add1~22\,
	combout => \ULA|Add1~23_combout\,
	cout => \ULA|Add1~24\);

-- Location: LCCOMB_X84_Y47_N22
\ULA|tempAdd[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[11]~22_combout\ = (\ULA|Add0~23_combout\ & ((\ULA|Add1~23_combout\ & (\ULA|tempAdd[10]~21\ & VCC)) # (!\ULA|Add1~23_combout\ & (!\ULA|tempAdd[10]~21\)))) # (!\ULA|Add0~23_combout\ & ((\ULA|Add1~23_combout\ & (!\ULA|tempAdd[10]~21\)) # 
-- (!\ULA|Add1~23_combout\ & ((\ULA|tempAdd[10]~21\) # (GND)))))
-- \ULA|tempAdd[11]~23\ = CARRY((\ULA|Add0~23_combout\ & (!\ULA|Add1~23_combout\ & !\ULA|tempAdd[10]~21\)) # (!\ULA|Add0~23_combout\ & ((!\ULA|tempAdd[10]~21\) # (!\ULA|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~23_combout\,
	datab => \ULA|Add1~23_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[10]~21\,
	combout => \ULA|tempAdd[11]~22_combout\,
	cout => \ULA|tempAdd[11]~23\);

-- Location: LCCOMB_X82_Y48_N8
\ULA|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux20~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~23_combout\) # (\ULA|Add1~23_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~23_combout\ & \ULA|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \ULA|Add0~23_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|Add1~23_combout\,
	combout => \ULA|Mux20~0_combout\);

-- Location: LCCOMB_X81_Y48_N24
\ULA|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux20~1_combout\ = (\ULA|Mux20~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (\ULA|tempAdd[11]~22_combout\ & !\InstMem|ram~557_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \ULA|tempAdd[11]~22_combout\,
	datac => \ULA|Mux20~0_combout\,
	datad => \InstMem|ram~557_combout\,
	combout => \ULA|Mux20~1_combout\);

-- Location: LCCOMB_X81_Y48_N12
\MuxULAMem|C[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[11]~19_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux20~1_combout\,
	combout => \MuxULAMem|C[11]~19_combout\);

-- Location: FF_X81_Y48_N1
\BancoReg|ram[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[11]~19_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][11]~q\);

-- Location: LCCOMB_X80_Y47_N10
\BancoReg|Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux52~2_combout\ = (\PC|DOUT\(0) & ((\BancoReg|ram[0][11]~q\) # ((!\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & (\BancoReg|ram[0][11]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[0][11]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux52~2_combout\);

-- Location: LCCOMB_X80_Y47_N0
\BancoReg|Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux52~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux52~2_combout\ & ((\BancoReg|ram[5][11]~q\))) # (!\BancoReg|Mux52~2_combout\ & (\BancoReg|ram[4][11]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux52~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][11]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[5][11]~q\,
	datad => \BancoReg|Mux52~2_combout\,
	combout => \BancoReg|Mux52~3_combout\);

-- Location: LCCOMB_X81_Y49_N22
\BancoReg|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux52~0_combout\ = (\PC|DOUT\(0) & ((\BancoReg|ram[8][11]~q\) # ((!\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & (\BancoReg|ram[8][11]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[8][11]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux52~0_combout\);

-- Location: LCCOMB_X81_Y49_N20
\BancoReg|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux52~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux52~0_combout\ & ((\BancoReg|ram[13][11]~q\))) # (!\BancoReg|Mux52~0_combout\ & (\BancoReg|ram[12][11]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][11]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[13][11]~q\,
	datad => \BancoReg|Mux52~0_combout\,
	combout => \BancoReg|Mux52~1_combout\);

-- Location: LCCOMB_X80_Y47_N6
\BancoReg|Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux52~4_combout\ = (\InstMem|ram~551_combout\ & (((\BancoReg|Mux52~1_combout\) # (!\InstMem|ram~549_combout\)))) # (!\InstMem|ram~551_combout\ & (\BancoReg|Mux52~3_combout\ & (\InstMem|ram~549_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|Mux52~3_combout\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|Mux52~1_combout\,
	combout => \BancoReg|Mux52~4_combout\);

-- Location: LCCOMB_X80_Y47_N16
\BancoReg|Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux52~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux52~4_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux52~4_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux52~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \InstMem|ram~554_combout\,
	datad => \BancoReg|Mux52~4_combout\,
	combout => \BancoReg|Mux52~5_combout\);

-- Location: LCCOMB_X80_Y47_N26
\muxRtImm|C[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[11]~31_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux52~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux52~5_combout\,
	combout => \muxRtImm|C[11]~31_combout\);

-- Location: LCCOMB_X83_Y47_N24
\ULA|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~25_combout\ = (\ULA|Add1~24\ & ((\muxRtImm|C[12]~30_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~24\ & (\muxRtImm|C[12]~30_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~26\ = CARRY((!\ULA|Add1~24\ & (\muxRtImm|C[12]~30_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[12]~30_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~24\,
	combout => \ULA|Add1~25_combout\,
	cout => \ULA|Add1~26\);

-- Location: FF_X85_Y50_N11
\BancoReg|ram[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[12]~20_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][12]~q\);

-- Location: FF_X84_Y50_N25
\BancoReg|ram[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[12]~20_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][12]~q\);

-- Location: LCCOMB_X85_Y50_N10
\BancoReg|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux19~0_combout\ = (\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\)) # (!\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (!\BancoReg|ram[13][12]~q\)) # (!\InstMem|ram~551_combout\ & ((!\BancoReg|ram[5][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|ram[13][12]~q\,
	datad => \BancoReg|ram[5][12]~q\,
	combout => \BancoReg|Mux19~0_combout\);

-- Location: FF_X84_Y50_N7
\BancoReg|ram[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[12]~20_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][12]~q\);

-- Location: LCCOMB_X85_Y50_N0
\BancoReg|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux19~2_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|ram[4][12]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[0][12]~q\)))) # (!\InstMem|ram~549_combout\ & (!\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[0][12]~q\,
	datad => \BancoReg|ram[4][12]~q\,
	combout => \BancoReg|Mux19~2_combout\);

-- Location: FF_X85_Y50_N13
\BancoReg|ram[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[12]~20_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][12]~q\);

-- Location: FF_X82_Y50_N27
\BancoReg|ram[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[12]~20_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][12]~q\);

-- Location: LCCOMB_X85_Y50_N2
\BancoReg|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux19~1_combout\ = (\InstMem|ram~550_combout\ & (\BancoReg|ram[12][12]~q\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[8][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][12]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[8][12]~q\,
	combout => \BancoReg|Mux19~1_combout\);

-- Location: LCCOMB_X85_Y50_N26
\BancoReg|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux19~3_combout\ = (\BancoReg|Mux19~0_combout\ & (((\InstMem|ram~549_combout\ & \BancoReg|Mux19~1_combout\)))) # (!\BancoReg|Mux19~0_combout\ & (\BancoReg|Mux19~2_combout\ $ ((!\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux19~0_combout\,
	datab => \BancoReg|Mux19~2_combout\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|Mux19~1_combout\,
	combout => \BancoReg|Mux19~3_combout\);

-- Location: LCCOMB_X85_Y47_N24
\ULA|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_combout\ = (\ULA|Add0~24\ & ((\BancoReg|Mux19~3_combout\ $ (\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~24\ & (\BancoReg|Mux19~3_combout\ $ (\UCULA|Mux7~0_combout\ $ (VCC))))
-- \ULA|Add0~26\ = CARRY((!\ULA|Add0~24\ & (\BancoReg|Mux19~3_combout\ $ (\UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux19~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~24\,
	combout => \ULA|Add0~25_combout\,
	cout => \ULA|Add0~26\);

-- Location: LCCOMB_X84_Y50_N12
\ULA|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux19~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add1~25_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add0~25_combout\))) # (!\ULA|Add1~25_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \ULA|Add1~25_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add0~25_combout\,
	combout => \ULA|Mux19~0_combout\);

-- Location: LCCOMB_X84_Y47_N24
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

-- Location: LCCOMB_X84_Y50_N10
\ULA|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux19~1_combout\ = (\ULA|Mux19~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux19~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|tempAdd[12]~24_combout\,
	combout => \ULA|Mux19~1_combout\);

-- Location: LCCOMB_X84_Y50_N6
\MuxULAMem|C[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[12]~20_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux19~1_combout\,
	combout => \MuxULAMem|C[12]~20_combout\);

-- Location: FF_X82_Y50_N21
\BancoReg|ram[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[12]~20_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][12]~q\);

-- Location: LCCOMB_X82_Y50_N20
\BancoReg|Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux51~2_combout\ = (\PC|DOUT\(0) & (\BancoReg|ram[0][12]~q\ & ((\PC|DOUT\(1)) # (\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & ((\BancoReg|ram[0][12]~q\) # ((\PC|DOUT\(1) & !\InstMem|ram~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[0][12]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux51~2_combout\);

-- Location: LCCOMB_X82_Y50_N26
\BancoReg|Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux51~3_combout\ = (\InstMem|ram~554_combout\ & (\BancoReg|Mux51~2_combout\)) # (!\InstMem|ram~554_combout\ & ((\BancoReg|Mux51~2_combout\ & ((!\InstMem|ram~556_combout\))) # (!\BancoReg|Mux51~2_combout\ & (\BancoReg|ram[8][12]~q\ & 
-- \InstMem|ram~556_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|Mux51~2_combout\,
	datac => \BancoReg|ram[8][12]~q\,
	datad => \InstMem|ram~556_combout\,
	combout => \BancoReg|Mux51~3_combout\);

-- Location: LCCOMB_X84_Y50_N22
\BancoReg|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux51~0_combout\ = (\InstMem|ram~552_combout\ & (((\BancoReg|ram[5][12]~q\) # (\InstMem|ram~551_combout\)))) # (!\InstMem|ram~552_combout\ & (\BancoReg|ram[4][12]~q\ & ((!\InstMem|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][12]~q\,
	datab => \BancoReg|ram[5][12]~q\,
	datac => \InstMem|ram~552_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux51~0_combout\);

-- Location: LCCOMB_X85_Y50_N22
\BancoReg|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux51~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux51~0_combout\ & ((\BancoReg|ram[13][12]~q\))) # (!\BancoReg|Mux51~0_combout\ & (\BancoReg|ram[12][12]~q\)))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][12]~q\,
	datab => \BancoReg|ram[13][12]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|Mux51~0_combout\,
	combout => \BancoReg|Mux51~1_combout\);

-- Location: LCCOMB_X82_Y50_N0
\BancoReg|Mux51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux51~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|Mux51~1_combout\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux51~3_combout\)))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux51~3_combout\,
	datad => \BancoReg|Mux51~1_combout\,
	combout => \BancoReg|Mux51~4_combout\);

-- Location: LCCOMB_X82_Y50_N6
\BancoReg|Mux51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux51~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux51~4_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux51~4_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux51~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \InstMem|ram~554_combout\,
	datad => \BancoReg|Mux51~4_combout\,
	combout => \BancoReg|Mux51~5_combout\);

-- Location: LCCOMB_X82_Y50_N14
\muxRtImm|C[12]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[12]~30_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux51~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux51~5_combout\,
	combout => \muxRtImm|C[12]~30_combout\);

-- Location: LCCOMB_X83_Y47_N26
\ULA|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~27_combout\ = (\ULA|Add1~26\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[13]~29_combout\)))) # (!\ULA|Add1~26\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[13]~29_combout\)) # (GND)))
-- \ULA|Add1~28\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[13]~29_combout\)) # (!\ULA|Add1~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[13]~29_combout\,
	datad => VCC,
	cin => \ULA|Add1~26\,
	combout => \ULA|Add1~27_combout\,
	cout => \ULA|Add1~28\);

-- Location: LCCOMB_X85_Y47_N26
\ULA|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~27_combout\ = (\ULA|Add0~26\ & (\BancoReg|Mux18~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~26\ & ((\BancoReg|Mux18~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~28\ = CARRY((\BancoReg|Mux18~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux18~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~26\,
	combout => \ULA|Add0~27_combout\,
	cout => \ULA|Add0~28\);

-- Location: LCCOMB_X84_Y47_N26
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

-- Location: LCCOMB_X81_Y47_N14
\ULA|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux18~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add1~27_combout\) # (\ULA|Add0~27_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~27_combout\ & \ULA|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~27_combout\,
	datad => \ULA|Add0~27_combout\,
	combout => \ULA|Mux18~0_combout\);

-- Location: LCCOMB_X81_Y48_N18
\ULA|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux18~1_combout\ = (\ULA|Mux18~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|tempAdd[13]~26_combout\,
	datad => \ULA|Mux18~0_combout\,
	combout => \ULA|Mux18~1_combout\);

-- Location: LCCOMB_X83_Y48_N14
\MuxULAMem|C[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[13]~21_combout\ = (!\ULA|Mux30~1_combout\ & ((\InstMem|ram~557_combout\ & ((!\ULA|Mux31~0_combout\))) # (!\InstMem|ram~557_combout\ & ((\ULA|Mux31~0_combout\) # (!\ULA|tempAdd[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \ULA|tempAdd[0]~0_combout\,
	datac => \ULA|Mux30~1_combout\,
	datad => \ULA|Mux31~0_combout\,
	combout => \MuxULAMem|C[13]~21_combout\);

-- Location: LCCOMB_X83_Y48_N20
\MuxULAMem|C[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[13]~22_combout\ = (\MuxULAMem|C[18]~9_combout\ & (\MuxULAMem|C[13]~21_combout\ & ((!\ULA|sltIn[0]~0_combout\) # (!\ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~0_combout\,
	datab => \MuxULAMem|C[18]~9_combout\,
	datac => \MuxULAMem|C[13]~21_combout\,
	datad => \ULA|sltIn[0]~0_combout\,
	combout => \MuxULAMem|C[13]~22_combout\);

-- Location: LCCOMB_X81_Y48_N22
\MuxULAMem|C[13]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[13]~23_combout\ = (\MuxULAMem|C[13]~22_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux18~1_combout\,
	datad => \MuxULAMem|C[13]~22_combout\,
	combout => \MuxULAMem|C[13]~23_combout\);

-- Location: FF_X81_Y49_N25
\BancoReg|ram[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[13]~23_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][13]~q\);

-- Location: LCCOMB_X80_Y47_N22
\BancoReg|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux18~0_combout\ = (\InstMem|ram~549_combout\ & ((\BancoReg|ram[12][13]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[13][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][13]~q\,
	datab => \BancoReg|ram[12][13]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux18~0_combout\);

-- Location: LCCOMB_X80_Y47_N14
\BancoReg|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux18~1_combout\ = (\InstMem|ram~550_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\ & ((\BancoReg|ram[8][13]~q\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][13]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|ram[8][13]~q\,
	combout => \BancoReg|Mux18~1_combout\);

-- Location: LCCOMB_X81_Y48_N26
\BancoReg|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux18~2_combout\ = (\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\)) # (!\BancoReg|ram[4][13]~q\))) # (!\InstMem|ram~549_combout\ & (((\InstMem|ram~550_combout\ & !\BancoReg|ram[5][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|ram[4][13]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[5][13]~q\,
	combout => \BancoReg|Mux18~2_combout\);

-- Location: LCCOMB_X80_Y47_N24
\BancoReg|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux18~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux18~1_combout\ & (\BancoReg|Mux18~0_combout\)) # (!\BancoReg|Mux18~1_combout\ & ((!\BancoReg|Mux18~2_combout\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux18~1_combout\ & 
-- \BancoReg|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|Mux18~0_combout\,
	datac => \BancoReg|Mux18~1_combout\,
	datad => \BancoReg|Mux18~2_combout\,
	combout => \BancoReg|Mux18~3_combout\);

-- Location: LCCOMB_X85_Y47_N28
\ULA|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_combout\ = (\ULA|Add0~28\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux17~3_combout\)))) # (!\ULA|Add0~28\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux17~3_combout\ $ (VCC))))
-- \ULA|Add0~30\ = CARRY((!\ULA|Add0~28\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux17~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~28\,
	combout => \ULA|Add0~29_combout\,
	cout => \ULA|Add0~30\);

-- Location: LCCOMB_X83_Y47_N28
\ULA|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~29_combout\ = (\ULA|Add1~28\ & ((\muxRtImm|C[14]~28_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~28\ & (\muxRtImm|C[14]~28_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~30\ = CARRY((!\ULA|Add1~28\ & (\muxRtImm|C[14]~28_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[14]~28_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~28\,
	combout => \ULA|Add1~29_combout\,
	cout => \ULA|Add1~30\);

-- Location: LCCOMB_X84_Y47_N28
\ULA|tempAdd[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[14]~28_combout\ = ((\ULA|Add0~29_combout\ $ (\ULA|Add1~29_combout\ $ (!\ULA|tempAdd[13]~27\)))) # (GND)
-- \ULA|tempAdd[14]~29\ = CARRY((\ULA|Add0~29_combout\ & ((\ULA|Add1~29_combout\) # (!\ULA|tempAdd[13]~27\))) # (!\ULA|Add0~29_combout\ & (\ULA|Add1~29_combout\ & !\ULA|tempAdd[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~29_combout\,
	datab => \ULA|Add1~29_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[13]~27\,
	combout => \ULA|tempAdd[14]~28_combout\,
	cout => \ULA|tempAdd[14]~29\);

-- Location: LCCOMB_X84_Y50_N16
\ULA|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux17~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add0~29_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add1~29_combout\))) # (!\ULA|Add0~29_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~29_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add1~29_combout\,
	combout => \ULA|Mux17~0_combout\);

-- Location: LCCOMB_X84_Y50_N2
\ULA|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux17~1_combout\ = (\ULA|Mux17~0_combout\) # ((\ULA|tempAdd[14]~28_combout\ & (!\InstMem|ram~557_combout\ & !\UCULA|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[14]~28_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|Mux17~0_combout\,
	combout => \ULA|Mux17~1_combout\);

-- Location: LCCOMB_X84_Y50_N24
\MuxULAMem|C[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[14]~24_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux17~1_combout\,
	combout => \MuxULAMem|C[14]~24_combout\);

-- Location: FF_X82_Y50_N5
\BancoReg|ram[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[14]~24_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][14]~q\);

-- Location: LCCOMB_X82_Y50_N4
\BancoReg|Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux49~2_combout\ = (\PC|DOUT\(0) & (\BancoReg|ram[0][14]~q\ & ((\PC|DOUT\(1)) # (\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & ((\BancoReg|ram[0][14]~q\) # ((\PC|DOUT\(1) & !\InstMem|ram~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[0][14]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux49~2_combout\);

-- Location: LCCOMB_X82_Y50_N30
\BancoReg|Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux49~3_combout\ = (\InstMem|ram~554_combout\ & (\BancoReg|Mux49~2_combout\)) # (!\InstMem|ram~554_combout\ & ((\BancoReg|Mux49~2_combout\ & ((!\InstMem|ram~556_combout\))) # (!\BancoReg|Mux49~2_combout\ & (\BancoReg|ram[8][14]~q\ & 
-- \InstMem|ram~556_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|Mux49~2_combout\,
	datac => \BancoReg|ram[8][14]~q\,
	datad => \InstMem|ram~556_combout\,
	combout => \BancoReg|Mux49~3_combout\);

-- Location: LCCOMB_X84_Y50_N28
\BancoReg|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux49~0_combout\ = (\InstMem|ram~552_combout\ & (((\BancoReg|ram[5][14]~q\) # (\InstMem|ram~551_combout\)))) # (!\InstMem|ram~552_combout\ & (\BancoReg|ram[4][14]~q\ & ((!\InstMem|ram~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~552_combout\,
	datab => \BancoReg|ram[4][14]~q\,
	datac => \BancoReg|ram[5][14]~q\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux49~0_combout\);

-- Location: LCCOMB_X83_Y50_N4
\BancoReg|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux49~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux49~0_combout\ & (\BancoReg|ram[13][14]~q\)) # (!\BancoReg|Mux49~0_combout\ & ((\BancoReg|ram[12][14]~q\))))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][14]~q\,
	datab => \BancoReg|ram[12][14]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|Mux49~0_combout\,
	combout => \BancoReg|Mux49~1_combout\);

-- Location: LCCOMB_X82_Y50_N24
\BancoReg|Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux49~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|Mux49~1_combout\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux49~3_combout\)))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux49~3_combout\,
	datad => \BancoReg|Mux49~1_combout\,
	combout => \BancoReg|Mux49~4_combout\);

-- Location: LCCOMB_X82_Y50_N2
\BancoReg|Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux49~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux49~4_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux49~4_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux49~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \InstMem|ram~554_combout\,
	datad => \BancoReg|Mux49~4_combout\,
	combout => \BancoReg|Mux49~5_combout\);

-- Location: LCCOMB_X82_Y50_N12
\muxRtImm|C[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[14]~28_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux49~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux49~5_combout\,
	combout => \muxRtImm|C[14]~28_combout\);

-- Location: LCCOMB_X83_Y47_N30
\ULA|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~31_combout\ = (\ULA|Add1~30\ & (\muxRtImm|C[15]~27_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~30\ & ((\muxRtImm|C[15]~27_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~32\ = CARRY((\muxRtImm|C[15]~27_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[15]~27_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~30\,
	combout => \ULA|Add1~31_combout\,
	cout => \ULA|Add1~32\);

-- Location: FF_X80_Y47_N21
\BancoReg|ram[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[15]~25_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][15]~q\);

-- Location: FF_X81_Y44_N25
\BancoReg|ram[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[15]~25_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][15]~q\);

-- Location: LCCOMB_X81_Y44_N22
\BancoReg|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux16~1_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~550_combout\) # (\BancoReg|ram[8][15]~q\)))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][15]~q\ & (!\InstMem|ram~550_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][15]~q\,
	datab => \InstMem|ram~551_combout\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[8][15]~q\,
	combout => \BancoReg|Mux16~1_combout\);

-- Location: FF_X80_Y47_N31
\BancoReg|ram[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[15]~25_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][15]~q\);

-- Location: LCCOMB_X80_Y44_N26
\BancoReg|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux16~2_combout\ = (\InstMem|ram~550_combout\ & ((\InstMem|ram~549_combout\ & ((!\BancoReg|ram[4][15]~q\))) # (!\InstMem|ram~549_combout\ & (!\BancoReg|ram[5][15]~q\)))) # (!\InstMem|ram~550_combout\ & (((\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][15]~q\,
	datab => \BancoReg|ram[4][15]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux16~2_combout\);

-- Location: LCCOMB_X84_Y44_N18
\BancoReg|ram[12][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[12][15]~feeder_combout\ = \MuxULAMem|C[15]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[15]~25_combout\,
	combout => \BancoReg|ram[12][15]~feeder_combout\);

-- Location: FF_X84_Y44_N19
\BancoReg|ram[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[12][15]~feeder_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][15]~q\);

-- Location: FF_X84_Y44_N13
\BancoReg|ram[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[15]~25_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][15]~q\);

-- Location: LCCOMB_X81_Y44_N0
\BancoReg|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux16~0_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][15]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[12][15]~q\,
	datac => \BancoReg|ram[13][15]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux16~0_combout\);

-- Location: LCCOMB_X81_Y44_N28
\BancoReg|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux16~3_combout\ = (\BancoReg|Mux16~1_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|Mux16~0_combout\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux16~2_combout\)))) # (!\BancoReg|Mux16~1_combout\ & (\InstMem|ram~550_combout\ & 
-- (!\BancoReg|Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux16~1_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux16~2_combout\,
	datad => \BancoReg|Mux16~0_combout\,
	combout => \BancoReg|Mux16~3_combout\);

-- Location: LCCOMB_X85_Y47_N30
\ULA|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~31_combout\ = (\ULA|Add0~30\ & (\BancoReg|Mux16~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~30\ & ((\BancoReg|Mux16~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~32\ = CARRY((\BancoReg|Mux16~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux16~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~30\,
	combout => \ULA|Add0~31_combout\,
	cout => \ULA|Add0~32\);

-- Location: LCCOMB_X84_Y44_N22
\ULA|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux16~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add1~31_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add0~31_combout\))) # (!\ULA|Add1~31_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \ULA|Add1~31_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add0~31_combout\,
	combout => \ULA|Mux16~0_combout\);

-- Location: LCCOMB_X84_Y47_N30
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

-- Location: LCCOMB_X84_Y44_N16
\ULA|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux16~1_combout\ = (\ULA|Mux16~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Mux16~0_combout\,
	datad => \ULA|tempAdd[15]~30_combout\,
	combout => \ULA|Mux16~1_combout\);

-- Location: LCCOMB_X84_Y44_N30
\MuxULAMem|C[15]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[15]~25_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux16~1_combout\,
	combout => \MuxULAMem|C[15]~25_combout\);

-- Location: LCCOMB_X80_Y44_N20
\BancoReg|ram[4][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][15]~feeder_combout\ = \MuxULAMem|C[15]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[15]~25_combout\,
	combout => \BancoReg|ram[4][15]~feeder_combout\);

-- Location: FF_X80_Y44_N21
\BancoReg|ram[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][15]~feeder_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][15]~q\);

-- Location: LCCOMB_X80_Y47_N20
\BancoReg|Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux48~2_combout\ = (\PC|DOUT\(0) & ((\BancoReg|ram[0][15]~q\) # ((!\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & (\BancoReg|ram[0][15]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[0][15]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux48~2_combout\);

-- Location: LCCOMB_X80_Y47_N30
\BancoReg|Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux48~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux48~2_combout\ & ((\BancoReg|ram[5][15]~q\))) # (!\BancoReg|Mux48~2_combout\ & (\BancoReg|ram[4][15]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][15]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[5][15]~q\,
	datad => \BancoReg|Mux48~2_combout\,
	combout => \BancoReg|Mux48~3_combout\);

-- Location: LCCOMB_X81_Y44_N16
\BancoReg|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux48~0_combout\ = (\BancoReg|ram[8][15]~q\ & (((\PC|DOUT\(0)) # (\InstMem|ram~554_combout\)) # (!\PC|DOUT\(1)))) # (!\BancoReg|ram[8][15]~q\ & (!\PC|DOUT\(1) & (\PC|DOUT\(0) & !\InstMem|ram~554_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][15]~q\,
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(0),
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux48~0_combout\);

-- Location: LCCOMB_X84_Y44_N6
\BancoReg|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux48~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux48~0_combout\ & (\BancoReg|ram[13][15]~q\)) # (!\BancoReg|Mux48~0_combout\ & ((\BancoReg|ram[12][15]~q\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][15]~q\,
	datab => \BancoReg|ram[12][15]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|Mux48~0_combout\,
	combout => \BancoReg|Mux48~1_combout\);

-- Location: LCCOMB_X80_Y47_N28
\BancoReg|Mux48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux48~4_combout\ = (\InstMem|ram~551_combout\ & (((\BancoReg|Mux48~1_combout\)) # (!\InstMem|ram~549_combout\))) # (!\InstMem|ram~551_combout\ & (\InstMem|ram~549_combout\ & (\BancoReg|Mux48~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux48~3_combout\,
	datad => \BancoReg|Mux48~1_combout\,
	combout => \BancoReg|Mux48~4_combout\);

-- Location: LCCOMB_X80_Y47_N18
\BancoReg|Mux48~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux48~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux48~4_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux48~4_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux48~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \InstMem|ram~554_combout\,
	datad => \BancoReg|Mux48~4_combout\,
	combout => \BancoReg|Mux48~5_combout\);

-- Location: LCCOMB_X80_Y47_N4
\muxRtImm|C[15]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[15]~27_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux48~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux48~5_combout\,
	combout => \muxRtImm|C[15]~27_combout\);

-- Location: LCCOMB_X83_Y46_N0
\ULA|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~33_combout\ = (\ULA|Add1~32\ & ((\muxRtImm|C[16]~26_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~32\ & (\muxRtImm|C[16]~26_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~34\ = CARRY((!\ULA|Add1~32\ & (\muxRtImm|C[16]~26_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[16]~26_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~32\,
	combout => \ULA|Add1~33_combout\,
	cout => \ULA|Add1~34\);

-- Location: LCCOMB_X85_Y46_N0
\ULA|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_combout\ = (\ULA|Add0~32\ & ((\BancoReg|Mux15~3_combout\ $ (\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~32\ & (\BancoReg|Mux15~3_combout\ $ (\UCULA|Mux7~0_combout\ $ (VCC))))
-- \ULA|Add0~34\ = CARRY((!\ULA|Add0~32\ & (\BancoReg|Mux15~3_combout\ $ (\UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux15~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~32\,
	combout => \ULA|Add0~33_combout\,
	cout => \ULA|Add0~34\);

-- Location: LCCOMB_X84_Y46_N0
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

-- Location: LCCOMB_X85_Y48_N12
\ULA|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux15~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~33_combout\) # (\ULA|Add1~33_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~33_combout\ & \ULA|Add1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \ULA|Add0~33_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|Add1~33_combout\,
	combout => \ULA|Mux15~0_combout\);

-- Location: LCCOMB_X85_Y48_N10
\ULA|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux15~1_combout\ = (\ULA|Mux15~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[16]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|tempAdd[16]~32_combout\,
	datad => \ULA|Mux15~0_combout\,
	combout => \ULA|Mux15~1_combout\);

-- Location: LCCOMB_X85_Y48_N24
\MuxULAMem|C[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[16]~26_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux15~1_combout\,
	combout => \MuxULAMem|C[16]~26_combout\);

-- Location: LCCOMB_X82_Y48_N20
\MuxULAMem|C[16]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[16]~27_combout\ = (\MuxULAMem|C[16]~26_combout\) # ((\MuxULAMem|C[18]~9_combout\ & (\ULA|Mux30~1_combout\ $ (\ULA|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxULAMem|C[18]~9_combout\,
	datab => \ULA|Mux30~1_combout\,
	datac => \MuxULAMem|C[16]~26_combout\,
	datad => \ULA|Mux31~1_combout\,
	combout => \MuxULAMem|C[16]~27_combout\);

-- Location: FF_X86_Y49_N17
\BancoReg|ram[12][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[16]~27_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][16]~q\);

-- Location: LCCOMB_X86_Y49_N26
\BancoReg|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux15~1_combout\ = (\InstMem|ram~550_combout\ & (\BancoReg|ram[12][16]~q\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[8][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[12][16]~q\,
	datac => \BancoReg|ram[8][16]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux15~1_combout\);

-- Location: LCCOMB_X86_Y49_N0
\BancoReg|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux15~2_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & (\BancoReg|ram[4][16]~q\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[0][16]~q\))))) # (!\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|ram[4][16]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[0][16]~q\,
	combout => \BancoReg|Mux15~2_combout\);

-- Location: LCCOMB_X86_Y49_N12
\BancoReg|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux15~0_combout\ = (\InstMem|ram~549_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (!\BancoReg|ram[13][16]~q\)) # (!\InstMem|ram~551_combout\ & ((!\BancoReg|ram[5][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][16]~q\,
	datab => \InstMem|ram~549_combout\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|ram[5][16]~q\,
	combout => \BancoReg|Mux15~0_combout\);

-- Location: LCCOMB_X86_Y49_N18
\BancoReg|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux15~3_combout\ = (\BancoReg|Mux15~0_combout\ & (\BancoReg|Mux15~1_combout\ & (\InstMem|ram~549_combout\))) # (!\BancoReg|Mux15~0_combout\ & ((\InstMem|ram~549_combout\ $ (!\BancoReg|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux15~1_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux15~2_combout\,
	datad => \BancoReg|Mux15~0_combout\,
	combout => \BancoReg|Mux15~3_combout\);

-- Location: LCCOMB_X85_Y46_N2
\ULA|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~35_combout\ = (\ULA|Add0~34\ & (\BancoReg|Mux14~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~34\ & ((\BancoReg|Mux14~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~36\ = CARRY((\BancoReg|Mux14~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux14~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~34\,
	combout => \ULA|Add0~35_combout\,
	cout => \ULA|Add0~36\);

-- Location: FF_X81_Y46_N5
\BancoReg|ram[13][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[17]~28_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][17]~q\);

-- Location: FF_X81_Y44_N3
\BancoReg|ram[8][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[17]~28_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][17]~q\);

-- Location: LCCOMB_X81_Y44_N2
\BancoReg|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux46~0_combout\ = (\PC|DOUT\(1) & (\BancoReg|ram[8][17]~q\ & ((\PC|DOUT\(0)) # (\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(1) & ((\BancoReg|ram[8][17]~q\) # ((\PC|DOUT\(0) & !\InstMem|ram~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(0),
	datac => \BancoReg|ram[8][17]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux46~0_combout\);

-- Location: LCCOMB_X81_Y46_N8
\BancoReg|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux46~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux46~0_combout\ & (\BancoReg|ram[13][17]~q\)) # (!\BancoReg|Mux46~0_combout\ & ((\BancoReg|ram[12][17]~q\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[13][17]~q\,
	datac => \BancoReg|ram[12][17]~q\,
	datad => \BancoReg|Mux46~0_combout\,
	combout => \BancoReg|Mux46~1_combout\);

-- Location: FF_X81_Y48_N21
\BancoReg|ram[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[17]~28_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][17]~q\);

-- Location: FF_X80_Y46_N9
\BancoReg|ram[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[17]~28_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][17]~q\);

-- Location: FF_X81_Y44_N13
\BancoReg|ram[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[17]~28_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][17]~q\);

-- Location: LCCOMB_X81_Y44_N10
\BancoReg|Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux46~2_combout\ = (\BancoReg|ram[0][17]~q\ & ((\PC|DOUT\(0)) # ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(1))))) # (!\BancoReg|ram[0][17]~q\ & (\PC|DOUT\(0) & (!\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][17]~q\,
	datab => \PC|DOUT\(0),
	datac => \PC|DOUT\(1),
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux46~2_combout\);

-- Location: LCCOMB_X80_Y46_N8
\BancoReg|Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux46~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux46~2_combout\ & ((\BancoReg|ram[5][17]~q\))) # (!\BancoReg|Mux46~2_combout\ & (\BancoReg|ram[4][17]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][17]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[5][17]~q\,
	datad => \BancoReg|Mux46~2_combout\,
	combout => \BancoReg|Mux46~3_combout\);

-- Location: LCCOMB_X81_Y46_N18
\BancoReg|Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux46~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|Mux46~1_combout\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|Mux46~3_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux46~1_combout\,
	datad => \BancoReg|Mux46~3_combout\,
	combout => \BancoReg|Mux46~4_combout\);

-- Location: LCCOMB_X82_Y46_N10
\BancoReg|Mux46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux46~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux46~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux46~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux46~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux46~4_combout\,
	combout => \BancoReg|Mux46~5_combout\);

-- Location: LCCOMB_X82_Y46_N14
\muxRtImm|C[17]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[17]~25_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux46~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux46~5_combout\,
	combout => \muxRtImm|C[17]~25_combout\);

-- Location: LCCOMB_X83_Y46_N2
\ULA|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~35_combout\ = (\ULA|Add1~34\ & (\muxRtImm|C[17]~25_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~34\ & ((\muxRtImm|C[17]~25_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~36\ = CARRY((\muxRtImm|C[17]~25_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[17]~25_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~34\,
	combout => \ULA|Add1~35_combout\,
	cout => \ULA|Add1~36\);

-- Location: LCCOMB_X81_Y48_N4
\ULA|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux14~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~35_combout\) # (\ULA|Add1~35_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~35_combout\ & \ULA|Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Add0~35_combout\,
	datad => \ULA|Add1~35_combout\,
	combout => \ULA|Mux14~0_combout\);

-- Location: LCCOMB_X84_Y46_N2
\ULA|tempAdd[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[17]~34_combout\ = (\ULA|Add1~35_combout\ & ((\ULA|Add0~35_combout\ & (\ULA|tempAdd[16]~33\ & VCC)) # (!\ULA|Add0~35_combout\ & (!\ULA|tempAdd[16]~33\)))) # (!\ULA|Add1~35_combout\ & ((\ULA|Add0~35_combout\ & (!\ULA|tempAdd[16]~33\)) # 
-- (!\ULA|Add0~35_combout\ & ((\ULA|tempAdd[16]~33\) # (GND)))))
-- \ULA|tempAdd[17]~35\ = CARRY((\ULA|Add1~35_combout\ & (!\ULA|Add0~35_combout\ & !\ULA|tempAdd[16]~33\)) # (!\ULA|Add1~35_combout\ & ((!\ULA|tempAdd[16]~33\) # (!\ULA|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~35_combout\,
	datab => \ULA|Add0~35_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[16]~33\,
	combout => \ULA|tempAdd[17]~34_combout\,
	cout => \ULA|tempAdd[17]~35\);

-- Location: LCCOMB_X81_Y48_N14
\ULA|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux14~1_combout\ = (\ULA|Mux14~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[17]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Mux14~0_combout\,
	datad => \ULA|tempAdd[17]~34_combout\,
	combout => \ULA|Mux14~1_combout\);

-- Location: LCCOMB_X81_Y48_N30
\MuxULAMem|C[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[17]~28_combout\ = (\MuxULAMem|C[13]~22_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux14~1_combout\,
	datad => \MuxULAMem|C[13]~22_combout\,
	combout => \MuxULAMem|C[17]~28_combout\);

-- Location: FF_X81_Y48_N31
\BancoReg|ram[12][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[17]~28_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][17]~q\);

-- Location: LCCOMB_X81_Y48_N6
\BancoReg|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux14~0_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][17]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|ram[12][17]~q\,
	datad => \BancoReg|ram[13][17]~q\,
	combout => \BancoReg|Mux14~0_combout\);

-- Location: LCCOMB_X81_Y44_N18
\BancoReg|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux14~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|ram[8][17]~q\) # ((\InstMem|ram~550_combout\)))) # (!\InstMem|ram~551_combout\ & (((!\InstMem|ram~550_combout\ & \BancoReg|ram[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[8][17]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[0][17]~q\,
	combout => \BancoReg|Mux14~1_combout\);

-- Location: LCCOMB_X81_Y48_N20
\BancoReg|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux14~2_combout\ = (\InstMem|ram~549_combout\ & (((!\BancoReg|ram[4][17]~q\)) # (!\InstMem|ram~550_combout\))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\ & ((!\BancoReg|ram[5][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[4][17]~q\,
	datad => \BancoReg|ram[5][17]~q\,
	combout => \BancoReg|Mux14~2_combout\);

-- Location: LCCOMB_X80_Y46_N24
\BancoReg|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux14~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux14~1_combout\ & (\BancoReg|Mux14~0_combout\)) # (!\BancoReg|Mux14~1_combout\ & ((!\BancoReg|Mux14~2_combout\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux14~1_combout\ & 
-- \BancoReg|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux14~0_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux14~1_combout\,
	datad => \BancoReg|Mux14~2_combout\,
	combout => \BancoReg|Mux14~3_combout\);

-- Location: LCCOMB_X85_Y46_N4
\ULA|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_combout\ = (\ULA|Add0~36\ & ((\BancoReg|Mux13~3_combout\ $ (\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~36\ & (\BancoReg|Mux13~3_combout\ $ (\UCULA|Mux7~0_combout\ $ (VCC))))
-- \ULA|Add0~38\ = CARRY((!\ULA|Add0~36\ & (\BancoReg|Mux13~3_combout\ $ (\UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux13~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~36\,
	combout => \ULA|Add0~37_combout\,
	cout => \ULA|Add0~38\);

-- Location: FF_X83_Y44_N19
\BancoReg|ram[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[18]~30_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][18]~q\);

-- Location: LCCOMB_X83_Y44_N18
\BancoReg|Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux45~2_combout\ = (\PC|DOUT\(1) & ((\BancoReg|ram[0][18]~q\) # ((!\InstMem|ram~554_combout\ & !\PC|DOUT\(0))))) # (!\PC|DOUT\(1) & (\BancoReg|ram[0][18]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|ram[0][18]~q\,
	datad => \PC|DOUT\(0),
	combout => \BancoReg|Mux45~2_combout\);

-- Location: LCCOMB_X83_Y44_N8
\BancoReg|Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux45~3_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux45~2_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~556_combout\ & (\BancoReg|ram[8][18]~q\ & !\BancoReg|Mux45~2_combout\)) # (!\InstMem|ram~556_combout\ & 
-- ((\BancoReg|Mux45~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~556_combout\,
	datac => \BancoReg|ram[8][18]~q\,
	datad => \BancoReg|Mux45~2_combout\,
	combout => \BancoReg|Mux45~3_combout\);

-- Location: LCCOMB_X83_Y50_N2
\BancoReg|ram[13][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[13][18]~feeder_combout\ = \MuxULAMem|C[18]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[18]~30_combout\,
	combout => \BancoReg|ram[13][18]~feeder_combout\);

-- Location: FF_X83_Y50_N3
\BancoReg|ram[13][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[13][18]~feeder_combout\,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][18]~q\);

-- Location: FF_X81_Y48_N17
\BancoReg|ram[12][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[18]~30_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][18]~q\);

-- Location: FF_X82_Y48_N7
\BancoReg|ram[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[18]~30_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][18]~q\);

-- Location: FF_X82_Y48_N31
\BancoReg|ram[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[18]~30_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][18]~q\);

-- Location: LCCOMB_X82_Y48_N22
\BancoReg|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux45~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~551_combout\ & ((\InstMem|ram~552_combout\ & (\BancoReg|ram[5][18]~q\)) # (!\InstMem|ram~552_combout\ & ((\BancoReg|ram[4][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[5][18]~q\,
	datac => \BancoReg|ram[4][18]~q\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux45~0_combout\);

-- Location: LCCOMB_X81_Y48_N16
\BancoReg|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux45~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux45~0_combout\ & (\BancoReg|ram[13][18]~q\)) # (!\BancoReg|Mux45~0_combout\ & ((\BancoReg|ram[12][18]~q\))))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][18]~q\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|ram[12][18]~q\,
	datad => \BancoReg|Mux45~0_combout\,
	combout => \BancoReg|Mux45~1_combout\);

-- Location: LCCOMB_X83_Y44_N2
\BancoReg|Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux45~4_combout\ = (\InstMem|ram~550_combout\ & (((\BancoReg|Mux45~1_combout\) # (!\InstMem|ram~549_combout\)))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux45~3_combout\ & (\InstMem|ram~549_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|Mux45~3_combout\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|Mux45~1_combout\,
	combout => \BancoReg|Mux45~4_combout\);

-- Location: LCCOMB_X83_Y44_N28
\BancoReg|Mux45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux45~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux45~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux45~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux45~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|Mux61~4_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux45~4_combout\,
	combout => \BancoReg|Mux45~5_combout\);

-- Location: LCCOMB_X83_Y44_N14
\muxRtImm|C[18]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[18]~24_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux45~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux45~5_combout\,
	combout => \muxRtImm|C[18]~24_combout\);

-- Location: LCCOMB_X83_Y46_N4
\ULA|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~37_combout\ = (\ULA|Add1~36\ & ((\muxRtImm|C[18]~24_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~36\ & (\muxRtImm|C[18]~24_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~38\ = CARRY((!\ULA|Add1~36\ & (\muxRtImm|C[18]~24_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[18]~24_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~36\,
	combout => \ULA|Add1~37_combout\,
	cout => \ULA|Add1~38\);

-- Location: LCCOMB_X82_Y48_N26
\ULA|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux13~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~37_combout\) # (\ULA|Add1~37_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~37_combout\ & \ULA|Add1~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Add0~37_combout\,
	datad => \ULA|Add1~37_combout\,
	combout => \ULA|Mux13~0_combout\);

-- Location: LCCOMB_X84_Y46_N4
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

-- Location: LCCOMB_X82_Y48_N28
\ULA|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux13~1_combout\ = (\ULA|Mux13~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[18]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Mux13~0_combout\,
	datad => \ULA|tempAdd[18]~36_combout\,
	combout => \ULA|Mux13~1_combout\);

-- Location: LCCOMB_X83_Y48_N2
\MuxULAMem|C[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[18]~29_combout\ = (!\ULA|Mux30~1_combout\ & (\MuxULAMem|C[18]~9_combout\ & \ULA|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~1_combout\,
	datac => \MuxULAMem|C[18]~9_combout\,
	datad => \ULA|Mux31~1_combout\,
	combout => \MuxULAMem|C[18]~29_combout\);

-- Location: LCCOMB_X82_Y48_N18
\MuxULAMem|C[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[18]~30_combout\ = (\MuxULAMem|C[18]~29_combout\) # ((\ULA|Mux13~1_combout\ & !\UCFD|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux13~1_combout\,
	datac => \UCFD|Mux3~0_combout\,
	datad => \MuxULAMem|C[18]~29_combout\,
	combout => \MuxULAMem|C[18]~30_combout\);

-- Location: FF_X83_Y44_N9
\BancoReg|ram[8][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[18]~30_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][18]~q\);

-- Location: LCCOMB_X82_Y48_N24
\BancoReg|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux13~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][18]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[8][18]~q\,
	datac => \BancoReg|ram[12][18]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux13~1_combout\);

-- Location: LCCOMB_X83_Y50_N0
\BancoReg|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux13~2_combout\ = (\InstMem|ram~550_combout\ & (((\InstMem|ram~549_combout\ & \BancoReg|ram[4][18]~q\)))) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[0][18]~q\) # ((!\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[0][18]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[4][18]~q\,
	combout => \BancoReg|Mux13~2_combout\);

-- Location: LCCOMB_X83_Y50_N22
\BancoReg|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux13~0_combout\ = (\InstMem|ram~549_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & ((!\BancoReg|ram[13][18]~q\))) # (!\InstMem|ram~551_combout\ & (!\BancoReg|ram[5][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][18]~q\,
	datab => \BancoReg|ram[13][18]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux13~0_combout\);

-- Location: LCCOMB_X84_Y50_N18
\BancoReg|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux13~3_combout\ = (\BancoReg|Mux13~0_combout\ & (\BancoReg|Mux13~1_combout\ & (\InstMem|ram~549_combout\))) # (!\BancoReg|Mux13~0_combout\ & ((\InstMem|ram~549_combout\ $ (!\BancoReg|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux13~1_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux13~2_combout\,
	datad => \BancoReg|Mux13~0_combout\,
	combout => \BancoReg|Mux13~3_combout\);

-- Location: LCCOMB_X85_Y46_N6
\ULA|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~39_combout\ = (\ULA|Add0~38\ & (\BancoReg|Mux12~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~38\ & ((\BancoReg|Mux12~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~40\ = CARRY((\BancoReg|Mux12~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux12~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~38\,
	combout => \ULA|Add0~39_combout\,
	cout => \ULA|Add0~40\);

-- Location: LCCOMB_X83_Y46_N6
\ULA|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~39_combout\ = (\ULA|Add1~38\ & (\muxRtImm|C[19]~23_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~38\ & ((\muxRtImm|C[19]~23_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~40\ = CARRY((\muxRtImm|C[19]~23_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[19]~23_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~38\,
	combout => \ULA|Add1~39_combout\,
	cout => \ULA|Add1~40\);

-- Location: LCCOMB_X84_Y45_N30
\ULA|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux12~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~39_combout\) # (\ULA|Add1~39_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~39_combout\ & \ULA|Add1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \ULA|Add0~39_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|Add1~39_combout\,
	combout => \ULA|Mux12~0_combout\);

-- Location: LCCOMB_X84_Y46_N6
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

-- Location: LCCOMB_X83_Y45_N8
\ULA|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux12~1_combout\ = (\ULA|Mux12~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[19]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Mux12~0_combout\,
	datad => \ULA|tempAdd[19]~38_combout\,
	combout => \ULA|Mux12~1_combout\);

-- Location: LCCOMB_X84_Y48_N24
\MuxULAMem|C[19]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[19]~31_combout\ = (\MuxULAMem|C[18]~9_combout\ & ((\ULA|Mux31~0_combout\ & ((!\InstMem|ram~557_combout\))) # (!\ULA|Mux31~0_combout\ & ((\InstMem|ram~557_combout\) # (!\ULA|tempAdd[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~0_combout\,
	datab => \ULA|tempAdd[0]~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \MuxULAMem|C[18]~9_combout\,
	combout => \MuxULAMem|C[19]~31_combout\);

-- Location: LCCOMB_X84_Y48_N18
\MuxULAMem|C[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[19]~32_combout\ = (\ULA|Mux30~1_combout\ & (\MuxULAMem|C[19]~31_combout\ & ((!\ULA|sltIn[0]~0_combout\) # (!\ULA|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~0_combout\,
	datab => \ULA|Mux30~1_combout\,
	datac => \MuxULAMem|C[19]~31_combout\,
	datad => \ULA|sltIn[0]~0_combout\,
	combout => \MuxULAMem|C[19]~32_combout\);

-- Location: LCCOMB_X84_Y48_N14
\MuxULAMem|C[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[19]~33_combout\ = (\MuxULAMem|C[19]~32_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datab => \ULA|Mux12~1_combout\,
	datad => \MuxULAMem|C[19]~32_combout\,
	combout => \MuxULAMem|C[19]~33_combout\);

-- Location: FF_X84_Y48_N29
\BancoReg|ram[12][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[19]~33_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][19]~q\);

-- Location: LCCOMB_X83_Y44_N10
\BancoReg|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux44~0_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|ram[8][19]~q\)))) # (!\InstMem|ram~554_combout\ & ((\PC|DOUT\(1) & (\BancoReg|ram[8][19]~q\ & \PC|DOUT\(0))) # (!\PC|DOUT\(1) & ((\BancoReg|ram[8][19]~q\) # (\PC|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[8][19]~q\,
	datad => \PC|DOUT\(0),
	combout => \BancoReg|Mux44~0_combout\);

-- Location: LCCOMB_X84_Y44_N8
\BancoReg|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux44~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux44~0_combout\ & ((\BancoReg|ram[13][19]~q\))) # (!\BancoReg|Mux44~0_combout\ & (\BancoReg|ram[12][19]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][19]~q\,
	datab => \BancoReg|ram[13][19]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|Mux44~0_combout\,
	combout => \BancoReg|Mux44~1_combout\);

-- Location: LCCOMB_X83_Y44_N20
\BancoReg|Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux44~2_combout\ = (\PC|DOUT\(0) & ((\BancoReg|ram[0][19]~q\) # ((!\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & (\BancoReg|ram[0][19]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[0][19]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux44~2_combout\);

-- Location: LCCOMB_X85_Y44_N24
\BancoReg|Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux44~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux44~2_combout\ & ((\BancoReg|ram[5][19]~q\))) # (!\BancoReg|Mux44~2_combout\ & (\BancoReg|ram[4][19]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][19]~q\,
	datab => \BancoReg|ram[5][19]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|Mux44~2_combout\,
	combout => \BancoReg|Mux44~3_combout\);

-- Location: LCCOMB_X84_Y44_N2
\BancoReg|Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux44~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|Mux44~1_combout\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|Mux44~3_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux44~1_combout\,
	datad => \BancoReg|Mux44~3_combout\,
	combout => \BancoReg|Mux44~4_combout\);

-- Location: LCCOMB_X84_Y44_N0
\BancoReg|Mux44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux44~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux44~4_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux44~4_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux44~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~553_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux44~4_combout\,
	combout => \BancoReg|Mux44~5_combout\);

-- Location: LCCOMB_X84_Y44_N10
\muxRtImm|C[19]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[19]~23_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux44~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux44~5_combout\,
	combout => \muxRtImm|C[19]~23_combout\);

-- Location: LCCOMB_X83_Y46_N8
\ULA|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~41_combout\ = (\ULA|Add1~40\ & ((\muxRtImm|C[20]~22_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~40\ & (\muxRtImm|C[20]~22_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~42\ = CARRY((!\ULA|Add1~40\ & (\muxRtImm|C[20]~22_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[20]~22_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~40\,
	combout => \ULA|Add1~41_combout\,
	cout => \ULA|Add1~42\);

-- Location: LCCOMB_X86_Y45_N6
\BancoReg|ram[13][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[13][20]~feeder_combout\ = \MuxULAMem|C[20]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[20]~34_combout\,
	combout => \BancoReg|ram[13][20]~feeder_combout\);

-- Location: FF_X86_Y45_N7
\BancoReg|ram[13][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[13][20]~feeder_combout\,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][20]~q\);

-- Location: LCCOMB_X79_Y45_N24
\BancoReg|ram[5][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][20]~feeder_combout\ = \MuxULAMem|C[20]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[20]~34_combout\,
	combout => \BancoReg|ram[5][20]~feeder_combout\);

-- Location: FF_X79_Y45_N25
\BancoReg|ram[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][20]~feeder_combout\,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][20]~q\);

-- Location: LCCOMB_X86_Y45_N12
\BancoReg|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux11~0_combout\ = (\InstMem|ram~549_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & (!\BancoReg|ram[13][20]~q\)) # (!\InstMem|ram~551_combout\ & ((!\BancoReg|ram[5][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|ram[13][20]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \BancoReg|ram[5][20]~q\,
	combout => \BancoReg|Mux11~0_combout\);

-- Location: FF_X84_Y45_N15
\BancoReg|ram[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[20]~34_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][20]~q\);

-- Location: LCCOMB_X86_Y45_N8
\BancoReg|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux11~2_combout\ = (\InstMem|ram~550_combout\ & (((\BancoReg|ram[4][20]~q\ & \InstMem|ram~549_combout\)))) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[0][20]~q\) # ((!\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][20]~q\,
	datab => \BancoReg|ram[4][20]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux11~2_combout\);

-- Location: FF_X83_Y44_N1
\BancoReg|ram[8][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[20]~34_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][20]~q\);

-- Location: FF_X84_Y45_N25
\BancoReg|ram[12][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[20]~34_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][20]~q\);

-- Location: LCCOMB_X86_Y45_N22
\BancoReg|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux11~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][20]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[8][20]~q\,
	datad => \BancoReg|ram[12][20]~q\,
	combout => \BancoReg|Mux11~1_combout\);

-- Location: LCCOMB_X86_Y45_N10
\BancoReg|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux11~3_combout\ = (\BancoReg|Mux11~0_combout\ & (((\BancoReg|Mux11~1_combout\ & \InstMem|ram~549_combout\)))) # (!\BancoReg|Mux11~0_combout\ & (\BancoReg|Mux11~2_combout\ $ (((!\InstMem|ram~549_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux11~0_combout\,
	datab => \BancoReg|Mux11~2_combout\,
	datac => \BancoReg|Mux11~1_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux11~3_combout\);

-- Location: LCCOMB_X85_Y46_N8
\ULA|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_combout\ = (\ULA|Add0~40\ & ((\BancoReg|Mux11~3_combout\ $ (\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~40\ & (\BancoReg|Mux11~3_combout\ $ (\UCULA|Mux7~0_combout\ $ (VCC))))
-- \ULA|Add0~42\ = CARRY((!\ULA|Add0~40\ & (\BancoReg|Mux11~3_combout\ $ (\UCULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux11~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~40\,
	combout => \ULA|Add0~41_combout\,
	cout => \ULA|Add0~42\);

-- Location: LCCOMB_X84_Y45_N8
\ULA|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux11~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add1~41_combout\) # (\ULA|Add0~41_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~41_combout\ & \ULA|Add0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \ULA|Add1~41_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|Add0~41_combout\,
	combout => \ULA|Mux11~0_combout\);

-- Location: LCCOMB_X84_Y46_N8
\ULA|tempAdd[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[20]~40_combout\ = ((\ULA|Add1~41_combout\ $ (\ULA|Add0~41_combout\ $ (!\ULA|tempAdd[19]~39\)))) # (GND)
-- \ULA|tempAdd[20]~41\ = CARRY((\ULA|Add1~41_combout\ & ((\ULA|Add0~41_combout\) # (!\ULA|tempAdd[19]~39\))) # (!\ULA|Add1~41_combout\ & (\ULA|Add0~41_combout\ & !\ULA|tempAdd[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~41_combout\,
	datab => \ULA|Add0~41_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[19]~39\,
	combout => \ULA|tempAdd[20]~40_combout\,
	cout => \ULA|tempAdd[20]~41\);

-- Location: LCCOMB_X84_Y45_N2
\ULA|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux11~1_combout\ = (\ULA|Mux11~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[20]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Mux11~0_combout\,
	datad => \ULA|tempAdd[20]~40_combout\,
	combout => \ULA|Mux11~1_combout\);

-- Location: LCCOMB_X84_Y45_N14
\MuxULAMem|C[20]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[20]~34_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux11~1_combout\,
	combout => \MuxULAMem|C[20]~34_combout\);

-- Location: FF_X83_Y44_N27
\BancoReg|ram[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[20]~34_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][20]~q\);

-- Location: LCCOMB_X83_Y44_N26
\BancoReg|Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux43~2_combout\ = (\PC|DOUT\(1) & ((\BancoReg|ram[0][20]~q\) # ((!\InstMem|ram~554_combout\ & !\PC|DOUT\(0))))) # (!\PC|DOUT\(1) & (\BancoReg|ram[0][20]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|ram[0][20]~q\,
	datad => \PC|DOUT\(0),
	combout => \BancoReg|Mux43~2_combout\);

-- Location: LCCOMB_X83_Y44_N0
\BancoReg|Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux43~3_combout\ = (\BancoReg|Mux43~2_combout\ & ((\InstMem|ram~554_combout\) # ((!\InstMem|ram~556_combout\)))) # (!\BancoReg|Mux43~2_combout\ & (!\InstMem|ram~554_combout\ & (\BancoReg|ram[8][20]~q\ & \InstMem|ram~556_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux43~2_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|ram[8][20]~q\,
	datad => \InstMem|ram~556_combout\,
	combout => \BancoReg|Mux43~3_combout\);

-- Location: LCCOMB_X79_Y45_N12
\BancoReg|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux43~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~551_combout\ & ((\InstMem|ram~552_combout\ & (\BancoReg|ram[5][20]~q\)) # (!\InstMem|ram~552_combout\ & ((\BancoReg|ram[4][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][20]~q\,
	datab => \BancoReg|ram[4][20]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux43~0_combout\);

-- Location: LCCOMB_X84_Y45_N24
\BancoReg|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux43~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux43~0_combout\ & (\BancoReg|ram[13][20]~q\)) # (!\BancoReg|Mux43~0_combout\ & ((\BancoReg|ram[12][20]~q\))))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[13][20]~q\,
	datac => \BancoReg|ram[12][20]~q\,
	datad => \BancoReg|Mux43~0_combout\,
	combout => \BancoReg|Mux43~1_combout\);

-- Location: LCCOMB_X83_Y44_N6
\BancoReg|Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux43~4_combout\ = (\InstMem|ram~550_combout\ & (((\BancoReg|Mux43~1_combout\) # (!\InstMem|ram~549_combout\)))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux43~3_combout\ & (\InstMem|ram~549_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|Mux43~3_combout\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|Mux43~1_combout\,
	combout => \BancoReg|Mux43~4_combout\);

-- Location: LCCOMB_X83_Y44_N12
\BancoReg|Mux43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux43~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux43~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux43~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \BancoReg|Mux61~4_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux43~4_combout\,
	combout => \BancoReg|Mux43~5_combout\);

-- Location: LCCOMB_X83_Y44_N16
\muxRtImm|C[20]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[20]~22_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux43~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux43~5_combout\,
	combout => \muxRtImm|C[20]~22_combout\);

-- Location: LCCOMB_X83_Y46_N10
\ULA|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~43_combout\ = (\ULA|Add1~42\ & (\muxRtImm|C[21]~21_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~42\ & ((\muxRtImm|C[21]~21_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~44\ = CARRY((\muxRtImm|C[21]~21_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[21]~21_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~42\,
	combout => \ULA|Add1~43_combout\,
	cout => \ULA|Add1~44\);

-- Location: FF_X81_Y46_N7
\BancoReg|ram[13][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[21]~35_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][21]~q\);

-- Location: FF_X83_Y45_N1
\BancoReg|ram[12][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxULAMem|C[21]~35_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][21]~q\);

-- Location: LCCOMB_X81_Y46_N6
\BancoReg|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux10~0_combout\ = (\InstMem|ram~549_combout\ & ((\BancoReg|ram[12][21]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[13][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datac => \BancoReg|ram[13][21]~q\,
	datad => \BancoReg|ram[12][21]~q\,
	combout => \BancoReg|Mux10~0_combout\);

-- Location: FF_X82_Y44_N29
\BancoReg|ram[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[21]~35_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][21]~q\);

-- Location: LCCOMB_X82_Y44_N2
\BancoReg|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux10~2_combout\ = (\InstMem|ram~549_combout\ & (((!\BancoReg|ram[4][21]~q\)) # (!\InstMem|ram~550_combout\))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\ & ((!\BancoReg|ram[5][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[4][21]~q\,
	datad => \BancoReg|ram[5][21]~q\,
	combout => \BancoReg|Mux10~2_combout\);

-- Location: FF_X83_Y44_N5
\BancoReg|ram[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[21]~35_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][21]~q\);

-- Location: FF_X83_Y44_N31
\BancoReg|ram[8][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[21]~35_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][21]~q\);

-- Location: LCCOMB_X82_Y44_N4
\BancoReg|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux10~1_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~550_combout\) # (\BancoReg|ram[8][21]~q\)))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][21]~q\ & (!\InstMem|ram~550_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][21]~q\,
	datab => \InstMem|ram~551_combout\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[8][21]~q\,
	combout => \BancoReg|Mux10~1_combout\);

-- Location: LCCOMB_X81_Y46_N16
\BancoReg|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux10~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux10~1_combout\ & (\BancoReg|Mux10~0_combout\)) # (!\BancoReg|Mux10~1_combout\ & ((!\BancoReg|Mux10~2_combout\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux10~2_combout\ & 
-- \BancoReg|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux10~0_combout\,
	datab => \BancoReg|Mux10~2_combout\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|Mux10~1_combout\,
	combout => \BancoReg|Mux10~3_combout\);

-- Location: LCCOMB_X85_Y46_N10
\ULA|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~43_combout\ = (\ULA|Add0~42\ & (\BancoReg|Mux10~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~42\ & ((\BancoReg|Mux10~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~44\ = CARRY((\BancoReg|Mux10~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux10~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~42\,
	combout => \ULA|Add0~43_combout\,
	cout => \ULA|Add0~44\);

-- Location: LCCOMB_X84_Y46_N10
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

-- Location: LCCOMB_X84_Y45_N16
\ULA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux10~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add1~43_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add0~43_combout\))) # (!\ULA|Add1~43_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~43_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|Add0~43_combout\,
	combout => \ULA|Mux10~0_combout\);

-- Location: LCCOMB_X83_Y45_N30
\ULA|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux10~1_combout\ = (\ULA|Mux10~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[21]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|tempAdd[21]~42_combout\,
	datad => \ULA|Mux10~0_combout\,
	combout => \ULA|Mux10~1_combout\);

-- Location: LCCOMB_X83_Y45_N0
\MuxULAMem|C[21]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[21]~35_combout\ = (\MuxULAMem|C[13]~22_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux10~1_combout\,
	datad => \MuxULAMem|C[13]~22_combout\,
	combout => \MuxULAMem|C[21]~35_combout\);

-- Location: FF_X82_Y44_N3
\BancoReg|ram[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[21]~35_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][21]~q\);

-- Location: LCCOMB_X83_Y44_N22
\BancoReg|Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux42~2_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|ram[0][21]~q\)))) # (!\InstMem|ram~554_combout\ & ((\PC|DOUT\(1) & (\BancoReg|ram[0][21]~q\ & \PC|DOUT\(0))) # (!\PC|DOUT\(1) & ((\BancoReg|ram[0][21]~q\) # (\PC|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[0][21]~q\,
	datad => \PC|DOUT\(0),
	combout => \BancoReg|Mux42~2_combout\);

-- Location: LCCOMB_X82_Y44_N28
\BancoReg|Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux42~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux42~2_combout\ & ((\BancoReg|ram[5][21]~q\))) # (!\BancoReg|Mux42~2_combout\ & (\BancoReg|ram[4][21]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[4][21]~q\,
	datac => \BancoReg|ram[5][21]~q\,
	datad => \BancoReg|Mux42~2_combout\,
	combout => \BancoReg|Mux42~3_combout\);

-- Location: LCCOMB_X83_Y44_N30
\BancoReg|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux42~0_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|ram[8][21]~q\)))) # (!\InstMem|ram~554_combout\ & ((\PC|DOUT\(1) & (\BancoReg|ram[8][21]~q\ & \PC|DOUT\(0))) # (!\PC|DOUT\(1) & ((\BancoReg|ram[8][21]~q\) # (\PC|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \PC|DOUT\(1),
	datac => \BancoReg|ram[8][21]~q\,
	datad => \PC|DOUT\(0),
	combout => \BancoReg|Mux42~0_combout\);

-- Location: LCCOMB_X82_Y46_N0
\BancoReg|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux42~1_combout\ = (\BancoReg|Mux42~0_combout\ & (((\BancoReg|ram[13][21]~q\)) # (!\InstMem|ram~550_combout\))) # (!\BancoReg|Mux42~0_combout\ & (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux42~0_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[13][21]~q\,
	datad => \BancoReg|ram[12][21]~q\,
	combout => \BancoReg|Mux42~1_combout\);

-- Location: LCCOMB_X82_Y46_N18
\BancoReg|Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux42~4_combout\ = (\InstMem|ram~551_combout\ & (((\BancoReg|Mux42~1_combout\)) # (!\InstMem|ram~549_combout\))) # (!\InstMem|ram~551_combout\ & (\InstMem|ram~549_combout\ & (\BancoReg|Mux42~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux42~3_combout\,
	datad => \BancoReg|Mux42~1_combout\,
	combout => \BancoReg|Mux42~4_combout\);

-- Location: LCCOMB_X82_Y46_N16
\BancoReg|Mux42~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux42~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux42~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux42~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux42~4_combout\,
	combout => \BancoReg|Mux42~5_combout\);

-- Location: LCCOMB_X82_Y46_N12
\muxRtImm|C[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[21]~21_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux42~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux42~5_combout\,
	combout => \muxRtImm|C[21]~21_combout\);

-- Location: LCCOMB_X83_Y46_N12
\ULA|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~45_combout\ = (\ULA|Add1~44\ & ((\muxRtImm|C[22]~20_combout\ $ (\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~44\ & (\muxRtImm|C[22]~20_combout\ $ (\UCULA|Mux5~0_combout\ $ (VCC))))
-- \ULA|Add1~46\ = CARRY((!\ULA|Add1~44\ & (\muxRtImm|C[22]~20_combout\ $ (\UCULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[22]~20_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~44\,
	combout => \ULA|Add1~45_combout\,
	cout => \ULA|Add1~46\);

-- Location: LCCOMB_X85_Y46_N12
\ULA|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_combout\ = (\ULA|Add0~44\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux9~3_combout\)))) # (!\ULA|Add0~44\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux9~3_combout\ $ (VCC))))
-- \ULA|Add0~46\ = CARRY((!\ULA|Add0~44\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux9~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~44\,
	combout => \ULA|Add0~45_combout\,
	cout => \ULA|Add0~46\);

-- Location: LCCOMB_X84_Y46_N12
\ULA|tempAdd[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[22]~44_combout\ = ((\ULA|Add1~45_combout\ $ (\ULA|Add0~45_combout\ $ (!\ULA|tempAdd[21]~43\)))) # (GND)
-- \ULA|tempAdd[22]~45\ = CARRY((\ULA|Add1~45_combout\ & ((\ULA|Add0~45_combout\) # (!\ULA|tempAdd[21]~43\))) # (!\ULA|Add1~45_combout\ & (\ULA|Add0~45_combout\ & !\ULA|tempAdd[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~45_combout\,
	datab => \ULA|Add0~45_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[21]~43\,
	combout => \ULA|tempAdd[22]~44_combout\,
	cout => \ULA|tempAdd[22]~45\);

-- Location: LCCOMB_X84_Y45_N18
\ULA|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux9~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~45_combout\) # (\ULA|Add1~45_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~45_combout\ & \ULA|Add1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Add0~45_combout\,
	datad => \ULA|Add1~45_combout\,
	combout => \ULA|Mux9~0_combout\);

-- Location: LCCOMB_X84_Y45_N20
\ULA|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux9~1_combout\ = (\ULA|Mux9~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[22]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|tempAdd[22]~44_combout\,
	datad => \ULA|Mux9~0_combout\,
	combout => \ULA|Mux9~1_combout\);

-- Location: LCCOMB_X84_Y45_N26
\MuxULAMem|C[22]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[22]~36_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux9~1_combout\,
	combout => \MuxULAMem|C[22]~36_combout\);

-- Location: FF_X85_Y49_N15
\BancoReg|ram[12][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[22]~36_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][22]~q\);

-- Location: LCCOMB_X85_Y49_N24
\BancoReg|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux9~1_combout\ = (\InstMem|ram~550_combout\ & (\BancoReg|ram[12][22]~q\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[8][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[12][22]~q\,
	datad => \BancoReg|ram[8][22]~q\,
	combout => \BancoReg|Mux9~1_combout\);

-- Location: LCCOMB_X85_Y49_N30
\BancoReg|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux9~2_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & (\BancoReg|ram[4][22]~q\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[0][22]~q\))))) # (!\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][22]~q\,
	datab => \InstMem|ram~549_combout\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[0][22]~q\,
	combout => \BancoReg|Mux9~2_combout\);

-- Location: LCCOMB_X85_Y49_N18
\BancoReg|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux9~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~549_combout\)) # (!\BancoReg|ram[13][22]~q\))) # (!\InstMem|ram~551_combout\ & (((!\BancoReg|ram[5][22]~q\ & !\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][22]~q\,
	datab => \BancoReg|ram[5][22]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux9~0_combout\);

-- Location: LCCOMB_X85_Y49_N28
\BancoReg|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux9~3_combout\ = (\BancoReg|Mux9~0_combout\ & (\InstMem|ram~549_combout\ & (\BancoReg|Mux9~1_combout\))) # (!\BancoReg|Mux9~0_combout\ & (\InstMem|ram~549_combout\ $ (((!\BancoReg|Mux9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \BancoReg|Mux9~1_combout\,
	datac => \BancoReg|Mux9~2_combout\,
	datad => \BancoReg|Mux9~0_combout\,
	combout => \BancoReg|Mux9~3_combout\);

-- Location: LCCOMB_X85_Y46_N14
\ULA|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~47_combout\ = (\ULA|Add0~46\ & (\BancoReg|Mux8~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~46\ & ((\BancoReg|Mux8~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~48\ = CARRY((\BancoReg|Mux8~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux8~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~46\,
	combout => \ULA|Add0~47_combout\,
	cout => \ULA|Add0~48\);

-- Location: FF_X82_Y45_N31
\BancoReg|ram[12][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[23]~37_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][23]~q\);

-- Location: FF_X81_Y46_N13
\BancoReg|ram[13][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[23]~37_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][23]~q\);

-- Location: LCCOMB_X81_Y46_N0
\BancoReg|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux40~0_combout\ = (\PC|DOUT\(1) & (\BancoReg|ram[8][23]~q\ & ((\PC|DOUT\(0)) # (\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(1) & ((\BancoReg|ram[8][23]~q\) # ((\PC|DOUT\(0) & !\InstMem|ram~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(0),
	datac => \BancoReg|ram[8][23]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux40~0_combout\);

-- Location: LCCOMB_X81_Y46_N12
\BancoReg|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux40~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux40~0_combout\ & ((\BancoReg|ram[13][23]~q\))) # (!\BancoReg|Mux40~0_combout\ & (\BancoReg|ram[12][23]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][23]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[13][23]~q\,
	datad => \BancoReg|Mux40~0_combout\,
	combout => \BancoReg|Mux40~1_combout\);

-- Location: LCCOMB_X80_Y45_N28
\BancoReg|ram[4][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][23]~feeder_combout\ = \MuxULAMem|C[23]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[23]~37_combout\,
	combout => \BancoReg|ram[4][23]~feeder_combout\);

-- Location: FF_X80_Y45_N29
\BancoReg|ram[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][23]~feeder_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][23]~q\);

-- Location: FF_X82_Y45_N1
\BancoReg|ram[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[23]~37_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][23]~q\);

-- Location: FF_X81_Y45_N15
\BancoReg|ram[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[23]~37_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][23]~q\);

-- Location: LCCOMB_X81_Y45_N16
\BancoReg|Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux40~2_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|ram[0][23]~q\)))) # (!\InstMem|ram~554_combout\ & ((\PC|DOUT\(1) & (\PC|DOUT\(0) & \BancoReg|ram[0][23]~q\)) # (!\PC|DOUT\(1) & ((\PC|DOUT\(0)) # (\BancoReg|ram[0][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(0),
	datad => \BancoReg|ram[0][23]~q\,
	combout => \BancoReg|Mux40~2_combout\);

-- Location: LCCOMB_X82_Y45_N0
\BancoReg|Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux40~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux40~2_combout\ & ((\BancoReg|ram[5][23]~q\))) # (!\BancoReg|Mux40~2_combout\ & (\BancoReg|ram[4][23]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[4][23]~q\,
	datac => \BancoReg|ram[5][23]~q\,
	datad => \BancoReg|Mux40~2_combout\,
	combout => \BancoReg|Mux40~3_combout\);

-- Location: LCCOMB_X82_Y45_N2
\BancoReg|Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux40~4_combout\ = (\InstMem|ram~551_combout\ & (((\BancoReg|Mux40~1_combout\)) # (!\InstMem|ram~549_combout\))) # (!\InstMem|ram~551_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|Mux40~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux40~1_combout\,
	datad => \BancoReg|Mux40~3_combout\,
	combout => \BancoReg|Mux40~4_combout\);

-- Location: LCCOMB_X82_Y45_N28
\BancoReg|Mux40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux40~5_combout\ = (\InstMem|ram~553_combout\ & (((\BancoReg|Mux40~4_combout\)))) # (!\InstMem|ram~553_combout\ & ((\InstMem|ram~554_combout\ & ((\BancoReg|Mux40~4_combout\))) # (!\InstMem|ram~554_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux40~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~553_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux40~4_combout\,
	combout => \BancoReg|Mux40~5_combout\);

-- Location: LCCOMB_X82_Y45_N18
\muxRtImm|C[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[23]~19_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux40~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux40~5_combout\,
	combout => \muxRtImm|C[23]~19_combout\);

-- Location: LCCOMB_X83_Y46_N14
\ULA|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~47_combout\ = (\ULA|Add1~46\ & (\muxRtImm|C[23]~19_combout\ $ ((!\UCULA|Mux5~0_combout\)))) # (!\ULA|Add1~46\ & ((\muxRtImm|C[23]~19_combout\ $ (\UCULA|Mux5~0_combout\)) # (GND)))
-- \ULA|Add1~48\ = CARRY((\muxRtImm|C[23]~19_combout\ $ (!\UCULA|Mux5~0_combout\)) # (!\ULA|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxRtImm|C[23]~19_combout\,
	datab => \UCULA|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~46\,
	combout => \ULA|Add1~47_combout\,
	cout => \ULA|Add1~48\);

-- Location: LCCOMB_X82_Y45_N22
\ULA|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux8~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add0~47_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add1~47_combout\))) # (!\ULA|Add0~47_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~47_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~47_combout\,
	datad => \InstMem|ram~557_combout\,
	combout => \ULA|Mux8~0_combout\);

-- Location: LCCOMB_X84_Y46_N14
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

-- Location: LCCOMB_X82_Y45_N4
\ULA|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux8~1_combout\ = (\ULA|Mux8~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[23]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Mux8~0_combout\,
	datad => \ULA|tempAdd[23]~46_combout\,
	combout => \ULA|Mux8~1_combout\);

-- Location: LCCOMB_X82_Y45_N26
\MuxULAMem|C[23]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[23]~37_combout\ = (\MuxULAMem|C[18]~29_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux8~1_combout\,
	datad => \MuxULAMem|C[18]~29_combout\,
	combout => \MuxULAMem|C[23]~37_combout\);

-- Location: FF_X81_Y46_N3
\BancoReg|ram[8][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[23]~37_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][23]~q\);

-- Location: LCCOMB_X81_Y46_N2
\BancoReg|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux8~1_combout\ = (\InstMem|ram~550_combout\ & (\InstMem|ram~551_combout\)) # (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|ram[8][23]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[0][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|ram[8][23]~q\,
	datad => \BancoReg|ram[0][23]~q\,
	combout => \BancoReg|Mux8~1_combout\);

-- Location: LCCOMB_X81_Y46_N4
\BancoReg|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux8~0_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][23]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][23]~q\,
	datab => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[13][23]~q\,
	combout => \BancoReg|Mux8~0_combout\);

-- Location: LCCOMB_X81_Y46_N30
\BancoReg|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux8~2_combout\ = (\InstMem|ram~550_combout\ & ((\InstMem|ram~549_combout\ & ((!\BancoReg|ram[4][23]~q\))) # (!\InstMem|ram~549_combout\ & (!\BancoReg|ram[5][23]~q\)))) # (!\InstMem|ram~550_combout\ & (((\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[5][23]~q\,
	datac => \BancoReg|ram[4][23]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux8~2_combout\);

-- Location: LCCOMB_X81_Y46_N28
\BancoReg|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux8~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux8~1_combout\ & (\BancoReg|Mux8~0_combout\)) # (!\BancoReg|Mux8~1_combout\ & ((!\BancoReg|Mux8~2_combout\))))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux8~1_combout\ & 
-- ((\BancoReg|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|Mux8~1_combout\,
	datac => \BancoReg|Mux8~0_combout\,
	datad => \BancoReg|Mux8~2_combout\,
	combout => \BancoReg|Mux8~3_combout\);

-- Location: LCCOMB_X85_Y46_N16
\ULA|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_combout\ = (\ULA|Add0~48\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux7~3_combout\)))) # (!\ULA|Add0~48\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux7~3_combout\ $ (VCC))))
-- \ULA|Add0~50\ = CARRY((!\ULA|Add0~48\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux7~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~48\,
	combout => \ULA|Add0~49_combout\,
	cout => \ULA|Add0~50\);

-- Location: FF_X82_Y46_N9
\BancoReg|ram[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[24]~38_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][24]~q\);

-- Location: LCCOMB_X82_Y46_N8
\BancoReg|Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux39~2_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|ram[0][24]~q\)))) # (!\InstMem|ram~554_combout\ & ((\PC|DOUT\(0) & (\BancoReg|ram[0][24]~q\ & \PC|DOUT\(1))) # (!\PC|DOUT\(0) & ((\BancoReg|ram[0][24]~q\) # (\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \PC|DOUT\(0),
	datac => \BancoReg|ram[0][24]~q\,
	datad => \PC|DOUT\(1),
	combout => \BancoReg|Mux39~2_combout\);

-- Location: LCCOMB_X82_Y46_N26
\BancoReg|Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux39~3_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux39~2_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~556_combout\ & (\BancoReg|ram[8][24]~q\ & !\BancoReg|Mux39~2_combout\)) # (!\InstMem|ram~556_combout\ & 
-- ((\BancoReg|Mux39~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~556_combout\,
	datac => \BancoReg|ram[8][24]~q\,
	datad => \BancoReg|Mux39~2_combout\,
	combout => \BancoReg|Mux39~3_combout\);

-- Location: FF_X83_Y50_N9
\BancoReg|ram[13][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[24]~38_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][24]~q\);

-- Location: FF_X83_Y50_N19
\BancoReg|ram[12][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[24]~38_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][24]~q\);

-- Location: FF_X84_Y50_N21
\BancoReg|ram[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[24]~38_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][24]~q\);

-- Location: FF_X85_Y48_N5
\BancoReg|ram[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[24]~38_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][24]~q\);

-- Location: LCCOMB_X83_Y50_N6
\BancoReg|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux39~0_combout\ = (\InstMem|ram~551_combout\ & (\InstMem|ram~552_combout\)) # (!\InstMem|ram~551_combout\ & ((\InstMem|ram~552_combout\ & (\BancoReg|ram[5][24]~q\)) # (!\InstMem|ram~552_combout\ & ((\BancoReg|ram[4][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \InstMem|ram~552_combout\,
	datac => \BancoReg|ram[5][24]~q\,
	datad => \BancoReg|ram[4][24]~q\,
	combout => \BancoReg|Mux39~0_combout\);

-- Location: LCCOMB_X83_Y50_N18
\BancoReg|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux39~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux39~0_combout\ & (\BancoReg|ram[13][24]~q\)) # (!\BancoReg|Mux39~0_combout\ & ((\BancoReg|ram[12][24]~q\))))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[13][24]~q\,
	datac => \BancoReg|ram[12][24]~q\,
	datad => \BancoReg|Mux39~0_combout\,
	combout => \BancoReg|Mux39~1_combout\);

-- Location: LCCOMB_X82_Y46_N2
\BancoReg|Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux39~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|Mux39~1_combout\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|Mux39~3_combout\)))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|Mux39~3_combout\,
	datad => \BancoReg|Mux39~1_combout\,
	combout => \BancoReg|Mux39~4_combout\);

-- Location: LCCOMB_X82_Y46_N24
\BancoReg|Mux39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux39~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux39~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux39~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux39~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux39~4_combout\,
	combout => \BancoReg|Mux39~5_combout\);

-- Location: LCCOMB_X82_Y46_N30
\muxRtImm|C[24]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[24]~18_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux39~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux39~5_combout\,
	combout => \muxRtImm|C[24]~18_combout\);

-- Location: LCCOMB_X83_Y46_N16
\ULA|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~49_combout\ = (\ULA|Add1~48\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[24]~18_combout\)))) # (!\ULA|Add1~48\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[24]~18_combout\ $ (VCC))))
-- \ULA|Add1~50\ = CARRY((!\ULA|Add1~48\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[24]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[24]~18_combout\,
	datad => VCC,
	cin => \ULA|Add1~48\,
	combout => \ULA|Add1~49_combout\,
	cout => \ULA|Add1~50\);

-- Location: LCCOMB_X85_Y48_N22
\ULA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux7~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~49_combout\) # (\ULA|Add1~49_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~49_combout\ & \ULA|Add1~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~49_combout\,
	datad => \ULA|Add1~49_combout\,
	combout => \ULA|Mux7~0_combout\);

-- Location: LCCOMB_X84_Y46_N16
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

-- Location: LCCOMB_X85_Y48_N20
\ULA|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux7~1_combout\ = (\ULA|Mux7~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[24]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Mux7~0_combout\,
	datad => \ULA|tempAdd[24]~48_combout\,
	combout => \ULA|Mux7~1_combout\);

-- Location: LCCOMB_X85_Y48_N30
\MuxULAMem|C[24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[24]~38_combout\ = (\MuxULAMem|C[19]~32_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datab => \ULA|Mux7~1_combout\,
	datad => \MuxULAMem|C[19]~32_combout\,
	combout => \MuxULAMem|C[24]~38_combout\);

-- Location: FF_X82_Y46_N27
\BancoReg|ram[8][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[24]~38_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][24]~q\);

-- Location: LCCOMB_X83_Y50_N8
\BancoReg|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux7~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][24]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[8][24]~q\,
	datad => \BancoReg|ram[12][24]~q\,
	combout => \BancoReg|Mux7~1_combout\);

-- Location: LCCOMB_X84_Y50_N26
\BancoReg|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux7~2_combout\ = (\InstMem|ram~550_combout\ & (\BancoReg|ram[4][24]~q\ & (\InstMem|ram~549_combout\))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|ram[0][24]~q\) # (!\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[4][24]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[0][24]~q\,
	combout => \BancoReg|Mux7~2_combout\);

-- Location: LCCOMB_X84_Y50_N0
\BancoReg|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux7~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~549_combout\)) # (!\BancoReg|ram[13][24]~q\))) # (!\InstMem|ram~551_combout\ & (((!\InstMem|ram~549_combout\ & !\BancoReg|ram[5][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[13][24]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[5][24]~q\,
	combout => \BancoReg|Mux7~0_combout\);

-- Location: LCCOMB_X84_Y50_N4
\BancoReg|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux7~3_combout\ = (\BancoReg|Mux7~0_combout\ & (\BancoReg|Mux7~1_combout\ & (\InstMem|ram~549_combout\))) # (!\BancoReg|Mux7~0_combout\ & ((\InstMem|ram~549_combout\ $ (!\BancoReg|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux7~1_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux7~2_combout\,
	datad => \BancoReg|Mux7~0_combout\,
	combout => \BancoReg|Mux7~3_combout\);

-- Location: LCCOMB_X85_Y46_N18
\ULA|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~51_combout\ = (\ULA|Add0~50\ & (\BancoReg|Mux6~3_combout\ $ ((!\UCULA|Mux7~0_combout\)))) # (!\ULA|Add0~50\ & ((\BancoReg|Mux6~3_combout\ $ (\UCULA|Mux7~0_combout\)) # (GND)))
-- \ULA|Add0~52\ = CARRY((\BancoReg|Mux6~3_combout\ $ (!\UCULA|Mux7~0_combout\)) # (!\ULA|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux6~3_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datad => VCC,
	cin => \ULA|Add0~50\,
	combout => \ULA|Add0~51_combout\,
	cout => \ULA|Add0~52\);

-- Location: LCCOMB_X83_Y46_N18
\ULA|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~51_combout\ = (\ULA|Add1~50\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[25]~17_combout\)))) # (!\ULA|Add1~50\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[25]~17_combout\)) # (GND)))
-- \ULA|Add1~52\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[25]~17_combout\)) # (!\ULA|Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[25]~17_combout\,
	datad => VCC,
	cin => \ULA|Add1~50\,
	combout => \ULA|Add1~51_combout\,
	cout => \ULA|Add1~52\);

-- Location: LCCOMB_X84_Y46_N18
\ULA|tempAdd[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[25]~50_combout\ = (\ULA|Add0~51_combout\ & ((\ULA|Add1~51_combout\ & (\ULA|tempAdd[24]~49\ & VCC)) # (!\ULA|Add1~51_combout\ & (!\ULA|tempAdd[24]~49\)))) # (!\ULA|Add0~51_combout\ & ((\ULA|Add1~51_combout\ & (!\ULA|tempAdd[24]~49\)) # 
-- (!\ULA|Add1~51_combout\ & ((\ULA|tempAdd[24]~49\) # (GND)))))
-- \ULA|tempAdd[25]~51\ = CARRY((\ULA|Add0~51_combout\ & (!\ULA|Add1~51_combout\ & !\ULA|tempAdd[24]~49\)) # (!\ULA|Add0~51_combout\ & ((!\ULA|tempAdd[24]~49\) # (!\ULA|Add1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~51_combout\,
	datab => \ULA|Add1~51_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[24]~49\,
	combout => \ULA|tempAdd[25]~50_combout\,
	cout => \ULA|tempAdd[25]~51\);

-- Location: LCCOMB_X85_Y48_N2
\ULA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux6~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add0~51_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add1~51_combout\))) # (!\ULA|Add0~51_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add1~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \ULA|Add0~51_combout\,
	datac => \UCULA|Mux7~0_combout\,
	datad => \ULA|Add1~51_combout\,
	combout => \ULA|Mux6~0_combout\);

-- Location: LCCOMB_X85_Y48_N28
\ULA|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux6~1_combout\ = (\ULA|Mux6~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[25]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|tempAdd[25]~50_combout\,
	datad => \ULA|Mux6~0_combout\,
	combout => \ULA|Mux6~1_combout\);

-- Location: LCCOMB_X85_Y48_N8
\MuxULAMem|C[25]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[25]~39_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux6~1_combout\,
	combout => \MuxULAMem|C[25]~39_combout\);

-- Location: FF_X85_Y48_N19
\BancoReg|ram[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[25]~39_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][25]~q\);

-- Location: LCCOMB_X80_Y46_N10
\BancoReg|Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux38~2_combout\ = (\PC|DOUT\(0) & ((\BancoReg|ram[0][25]~q\) # ((!\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(0) & (\BancoReg|ram[0][25]~q\ & ((\InstMem|ram~554_combout\) # (!\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \BancoReg|ram[0][25]~q\,
	datac => \PC|DOUT\(1),
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux38~2_combout\);

-- Location: LCCOMB_X80_Y46_N12
\BancoReg|Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux38~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux38~2_combout\ & ((\BancoReg|ram[5][25]~q\))) # (!\BancoReg|Mux38~2_combout\ & (\BancoReg|ram[4][25]~q\)))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][25]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[5][25]~q\,
	datad => \BancoReg|Mux38~2_combout\,
	combout => \BancoReg|Mux38~3_combout\);

-- Location: LCCOMB_X81_Y46_N26
\BancoReg|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux38~0_combout\ = (\PC|DOUT\(1) & (\BancoReg|ram[8][25]~q\ & ((\PC|DOUT\(0)) # (\InstMem|ram~554_combout\)))) # (!\PC|DOUT\(1) & ((\BancoReg|ram[8][25]~q\) # ((\PC|DOUT\(0) & !\InstMem|ram~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(0),
	datac => \BancoReg|ram[8][25]~q\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux38~0_combout\);

-- Location: LCCOMB_X81_Y46_N20
\BancoReg|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux38~1_combout\ = (\BancoReg|Mux38~0_combout\ & (((\BancoReg|ram[13][25]~q\) # (!\InstMem|ram~550_combout\)))) # (!\BancoReg|Mux38~0_combout\ & (\BancoReg|ram[12][25]~q\ & ((\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux38~0_combout\,
	datab => \BancoReg|ram[12][25]~q\,
	datac => \BancoReg|ram[13][25]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux38~1_combout\);

-- Location: LCCOMB_X81_Y46_N22
\BancoReg|Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux38~4_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & ((\BancoReg|Mux38~1_combout\))) # (!\InstMem|ram~551_combout\ & (\BancoReg|Mux38~3_combout\)))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~551_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|Mux38~3_combout\,
	datad => \BancoReg|Mux38~1_combout\,
	combout => \BancoReg|Mux38~4_combout\);

-- Location: LCCOMB_X82_Y46_N6
\BancoReg|Mux38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux38~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux38~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux38~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux38~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux38~4_combout\,
	combout => \BancoReg|Mux38~5_combout\);

-- Location: LCCOMB_X82_Y46_N28
\muxRtImm|C[25]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[25]~17_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux38~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux38~5_combout\,
	combout => \muxRtImm|C[25]~17_combout\);

-- Location: LCCOMB_X83_Y46_N20
\ULA|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~53_combout\ = (\ULA|Add1~52\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[26]~16_combout\)))) # (!\ULA|Add1~52\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[26]~16_combout\ $ (VCC))))
-- \ULA|Add1~54\ = CARRY((!\ULA|Add1~52\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[26]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[26]~16_combout\,
	datad => VCC,
	cin => \ULA|Add1~52\,
	combout => \ULA|Add1~53_combout\,
	cout => \ULA|Add1~54\);

-- Location: LCCOMB_X85_Y46_N20
\ULA|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_combout\ = (\ULA|Add0~52\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux5~3_combout\)))) # (!\ULA|Add0~52\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux5~3_combout\ $ (VCC))))
-- \ULA|Add0~54\ = CARRY((!\ULA|Add0~52\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux5~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~52\,
	combout => \ULA|Add0~53_combout\,
	cout => \ULA|Add0~54\);

-- Location: LCCOMB_X82_Y48_N4
\ULA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux5~0_combout\ = (\InstMem|ram~557_combout\ & ((\ULA|Add1~53_combout\ & ((\UCULA|Mux7~0_combout\) # (\ULA|Add0~53_combout\))) # (!\ULA|Add1~53_combout\ & (\UCULA|Mux7~0_combout\ & \ULA|Add0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~53_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \InstMem|ram~557_combout\,
	datad => \ULA|Add0~53_combout\,
	combout => \ULA|Mux5~0_combout\);

-- Location: LCCOMB_X84_Y46_N20
\ULA|tempAdd[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[26]~52_combout\ = ((\ULA|Add0~53_combout\ $ (\ULA|Add1~53_combout\ $ (!\ULA|tempAdd[25]~51\)))) # (GND)
-- \ULA|tempAdd[26]~53\ = CARRY((\ULA|Add0~53_combout\ & ((\ULA|Add1~53_combout\) # (!\ULA|tempAdd[25]~51\))) # (!\ULA|Add0~53_combout\ & (\ULA|Add1~53_combout\ & !\ULA|tempAdd[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~53_combout\,
	datab => \ULA|Add1~53_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[25]~51\,
	combout => \ULA|tempAdd[26]~52_combout\,
	cout => \ULA|tempAdd[26]~53\);

-- Location: LCCOMB_X82_Y48_N14
\ULA|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux5~1_combout\ = (\ULA|Mux5~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[26]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Mux5~0_combout\,
	datad => \ULA|tempAdd[26]~52_combout\,
	combout => \ULA|Mux5~1_combout\);

-- Location: LCCOMB_X82_Y48_N2
\MuxULAMem|C[26]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[26]~40_combout\ = (\MuxULAMem|C[18]~29_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux5~1_combout\,
	datad => \MuxULAMem|C[18]~29_combout\,
	combout => \MuxULAMem|C[26]~40_combout\);

-- Location: FF_X82_Y49_N23
\BancoReg|ram[8][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[26]~40_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][26]~q\);

-- Location: LCCOMB_X82_Y49_N26
\BancoReg|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux5~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][26]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[8][26]~q\,
	datad => \BancoReg|ram[12][26]~q\,
	combout => \BancoReg|Mux5~1_combout\);

-- Location: LCCOMB_X83_Y50_N26
\BancoReg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux5~0_combout\ = (\InstMem|ram~549_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~549_combout\ & ((\InstMem|ram~551_combout\ & ((!\BancoReg|ram[13][26]~q\))) # (!\InstMem|ram~551_combout\ & (!\BancoReg|ram[5][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][26]~q\,
	datab => \BancoReg|ram[13][26]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux5~0_combout\);

-- Location: LCCOMB_X82_Y49_N28
\BancoReg|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux5~2_combout\ = (\InstMem|ram~550_combout\ & (((\BancoReg|ram[4][26]~q\ & \InstMem|ram~549_combout\)))) # (!\InstMem|ram~550_combout\ & ((\BancoReg|ram[0][26]~q\) # ((!\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][26]~q\,
	datab => \InstMem|ram~550_combout\,
	datac => \BancoReg|ram[4][26]~q\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux5~2_combout\);

-- Location: LCCOMB_X82_Y49_N30
\BancoReg|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux5~3_combout\ = (\BancoReg|Mux5~0_combout\ & (\BancoReg|Mux5~1_combout\ & (\InstMem|ram~549_combout\))) # (!\BancoReg|Mux5~0_combout\ & ((\InstMem|ram~549_combout\ $ (!\BancoReg|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux5~1_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux5~0_combout\,
	datad => \BancoReg|Mux5~2_combout\,
	combout => \BancoReg|Mux5~3_combout\);

-- Location: LCCOMB_X85_Y46_N22
\ULA|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~55_combout\ = (\ULA|Add0~54\ & (\UCULA|Mux7~0_combout\ $ ((!\BancoReg|Mux4~3_combout\)))) # (!\ULA|Add0~54\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux4~3_combout\)) # (GND)))
-- \ULA|Add0~56\ = CARRY((\UCULA|Mux7~0_combout\ $ (!\BancoReg|Mux4~3_combout\)) # (!\ULA|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux4~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~54\,
	combout => \ULA|Add0~55_combout\,
	cout => \ULA|Add0~56\);

-- Location: LCCOMB_X83_Y46_N22
\ULA|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~55_combout\ = (\ULA|Add1~54\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[27]~15_combout\)))) # (!\ULA|Add1~54\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[27]~15_combout\)) # (GND)))
-- \ULA|Add1~56\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[27]~15_combout\)) # (!\ULA|Add1~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[27]~15_combout\,
	datad => VCC,
	cin => \ULA|Add1~54\,
	combout => \ULA|Add1~55_combout\,
	cout => \ULA|Add1~56\);

-- Location: LCCOMB_X84_Y46_N22
\ULA|tempAdd[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[27]~54_combout\ = (\ULA|Add0~55_combout\ & ((\ULA|Add1~55_combout\ & (\ULA|tempAdd[26]~53\ & VCC)) # (!\ULA|Add1~55_combout\ & (!\ULA|tempAdd[26]~53\)))) # (!\ULA|Add0~55_combout\ & ((\ULA|Add1~55_combout\ & (!\ULA|tempAdd[26]~53\)) # 
-- (!\ULA|Add1~55_combout\ & ((\ULA|tempAdd[26]~53\) # (GND)))))
-- \ULA|tempAdd[27]~55\ = CARRY((\ULA|Add0~55_combout\ & (!\ULA|Add1~55_combout\ & !\ULA|tempAdd[26]~53\)) # (!\ULA|Add0~55_combout\ & ((!\ULA|tempAdd[26]~53\) # (!\ULA|Add1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~55_combout\,
	datab => \ULA|Add1~55_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[26]~53\,
	combout => \ULA|tempAdd[27]~54_combout\,
	cout => \ULA|tempAdd[27]~55\);

-- Location: LCCOMB_X87_Y48_N6
\ULA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux4~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~55_combout\) # (\ULA|Add1~55_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~55_combout\ & \ULA|Add1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~55_combout\,
	datad => \ULA|Add1~55_combout\,
	combout => \ULA|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y48_N4
\ULA|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux4~1_combout\ = (\ULA|Mux4~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[27]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|tempAdd[27]~54_combout\,
	datad => \ULA|Mux4~0_combout\,
	combout => \ULA|Mux4~1_combout\);

-- Location: LCCOMB_X83_Y48_N28
\MuxULAMem|C[27]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[27]~41_combout\ = (!\ULA|Mux30~1_combout\ & (\ULA|Mux29~1_combout\ $ (\ULA|Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~1_combout\,
	datac => \ULA|Mux29~1_combout\,
	datad => \ULA|Mux31~1_combout\,
	combout => \MuxULAMem|C[27]~41_combout\);

-- Location: LCCOMB_X87_Y48_N22
\MuxULAMem|C[27]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[27]~42_combout\ = (\UCFD|Mux3~0_combout\ & (!\ULA|Mux28~1_combout\ & ((\MuxULAMem|C[27]~41_combout\)))) # (!\UCFD|Mux3~0_combout\ & (((\ULA|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~1_combout\,
	datab => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux4~1_combout\,
	datad => \MuxULAMem|C[27]~41_combout\,
	combout => \MuxULAMem|C[27]~42_combout\);

-- Location: FF_X86_Y48_N7
\BancoReg|ram[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[27]~42_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][27]~q\);

-- Location: LCCOMB_X86_Y48_N6
\BancoReg|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux36~0_combout\ = (!\InstMem|ram~554_combout\ & (\PC|DOUT\(0) & (\BancoReg|ram[5][27]~q\ & !\PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \PC|DOUT\(0),
	datac => \BancoReg|ram[5][27]~q\,
	datad => \PC|DOUT\(1),
	combout => \BancoReg|Mux36~0_combout\);

-- Location: LCCOMB_X82_Y46_N22
\BancoReg|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux36~1_combout\ = (\InstMem|ram~550_combout\ & (((\InstMem|ram~551_combout\)))) # (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|ram[8][27]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[8][27]~q\,
	datac => \BancoReg|ram[0][27]~q\,
	datad => \InstMem|ram~551_combout\,
	combout => \BancoReg|Mux36~1_combout\);

-- Location: LCCOMB_X86_Y48_N28
\BancoReg|Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux36~2_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux36~1_combout\ & (\BancoReg|ram[12][27]~q\)) # (!\BancoReg|Mux36~1_combout\ & ((\BancoReg|ram[4][27]~q\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[12][27]~q\,
	datac => \BancoReg|ram[4][27]~q\,
	datad => \BancoReg|Mux36~1_combout\,
	combout => \BancoReg|Mux36~2_combout\);

-- Location: LCCOMB_X87_Y46_N20
\BancoReg|Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux36~3_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~552_combout\ & (\BancoReg|Mux36~0_combout\)) # (!\InstMem|ram~552_combout\ & ((\BancoReg|Mux36~2_combout\))))) # (!\InstMem|ram~549_combout\ & (\InstMem|ram~552_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \InstMem|ram~552_combout\,
	datac => \BancoReg|Mux36~0_combout\,
	datad => \BancoReg|Mux36~2_combout\,
	combout => \BancoReg|Mux36~3_combout\);

-- Location: LCCOMB_X87_Y46_N18
\BancoReg|Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux36~4_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux36~3_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux36~3_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux36~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux36~3_combout\,
	combout => \BancoReg|Mux36~4_combout\);

-- Location: LCCOMB_X87_Y46_N24
\muxRtImm|C[27]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[27]~15_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux36~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux36~4_combout\,
	combout => \muxRtImm|C[27]~15_combout\);

-- Location: LCCOMB_X83_Y46_N24
\ULA|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~57_combout\ = (\ULA|Add1~56\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[28]~14_combout\)))) # (!\ULA|Add1~56\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[28]~14_combout\ $ (VCC))))
-- \ULA|Add1~58\ = CARRY((!\ULA|Add1~56\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[28]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[28]~14_combout\,
	datad => VCC,
	cin => \ULA|Add1~56\,
	combout => \ULA|Add1~57_combout\,
	cout => \ULA|Add1~58\);

-- Location: LCCOMB_X85_Y46_N24
\ULA|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_combout\ = (\ULA|Add0~56\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux3~3_combout\)))) # (!\ULA|Add0~56\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux3~3_combout\ $ (VCC))))
-- \ULA|Add0~58\ = CARRY((!\ULA|Add0~56\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux3~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~56\,
	combout => \ULA|Add0~57_combout\,
	cout => \ULA|Add0~58\);

-- Location: LCCOMB_X86_Y46_N26
\ULA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux3~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add1~57_combout\) # (\ULA|Add0~57_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add1~57_combout\ & \ULA|Add0~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add1~57_combout\,
	datad => \ULA|Add0~57_combout\,
	combout => \ULA|Mux3~0_combout\);

-- Location: LCCOMB_X84_Y46_N24
\ULA|tempAdd[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[28]~56_combout\ = ((\ULA|Add0~57_combout\ $ (\ULA|Add1~57_combout\ $ (!\ULA|tempAdd[27]~55\)))) # (GND)
-- \ULA|tempAdd[28]~57\ = CARRY((\ULA|Add0~57_combout\ & ((\ULA|Add1~57_combout\) # (!\ULA|tempAdd[27]~55\))) # (!\ULA|Add0~57_combout\ & (\ULA|Add1~57_combout\ & !\ULA|tempAdd[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~57_combout\,
	datab => \ULA|Add1~57_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[27]~55\,
	combout => \ULA|tempAdd[28]~56_combout\,
	cout => \ULA|tempAdd[28]~57\);

-- Location: LCCOMB_X85_Y48_N26
\ULA|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux3~1_combout\ = (\ULA|Mux3~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[28]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Mux3~0_combout\,
	datad => \ULA|tempAdd[28]~56_combout\,
	combout => \ULA|Mux3~1_combout\);

-- Location: LCCOMB_X85_Y48_N16
\MuxULAMem|C[28]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[28]~43_combout\ = (\MuxULAMem|C[19]~32_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux3~1_combout\,
	datad => \MuxULAMem|C[19]~32_combout\,
	combout => \MuxULAMem|C[28]~43_combout\);

-- Location: FF_X86_Y46_N1
\BancoReg|ram[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[28]~43_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][28]~q\);

-- Location: LCCOMB_X86_Y46_N30
\BancoReg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux3~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~549_combout\) # (!\BancoReg|ram[13][28]~q\)))) # (!\InstMem|ram~551_combout\ & (!\BancoReg|ram[5][28]~q\ & (!\InstMem|ram~549_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[5][28]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[13][28]~q\,
	combout => \BancoReg|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y46_N4
\BancoReg|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux3~2_combout\ = (\InstMem|ram~549_combout\ & ((\InstMem|ram~550_combout\ & ((\BancoReg|ram[4][28]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[0][28]~q\)))) # (!\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][28]~q\,
	datab => \BancoReg|ram[4][28]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux3~2_combout\);

-- Location: LCCOMB_X85_Y48_N4
\BancoReg|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux3~1_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|ram[12][28]~q\))) # (!\InstMem|ram~550_combout\ & (\BancoReg|ram[8][28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][28]~q\,
	datab => \BancoReg|ram[12][28]~q\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux3~1_combout\);

-- Location: LCCOMB_X86_Y46_N14
\BancoReg|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux3~3_combout\ = (\BancoReg|Mux3~0_combout\ & (\InstMem|ram~549_combout\ & ((\BancoReg|Mux3~1_combout\)))) # (!\BancoReg|Mux3~0_combout\ & (\InstMem|ram~549_combout\ $ ((!\BancoReg|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux3~0_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux3~2_combout\,
	datad => \BancoReg|Mux3~1_combout\,
	combout => \BancoReg|Mux3~3_combout\);

-- Location: LCCOMB_X85_Y46_N26
\ULA|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~59_combout\ = (\ULA|Add0~58\ & (\UCULA|Mux7~0_combout\ $ ((!\BancoReg|Mux2~3_combout\)))) # (!\ULA|Add0~58\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux2~3_combout\)) # (GND)))
-- \ULA|Add0~60\ = CARRY((\UCULA|Mux7~0_combout\ $ (!\BancoReg|Mux2~3_combout\)) # (!\ULA|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux2~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~58\,
	combout => \ULA|Add0~59_combout\,
	cout => \ULA|Add0~60\);

-- Location: LCCOMB_X80_Y49_N12
\BancoReg|ram[0][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[0][29]~feeder_combout\ = \MuxULAMem|C[29]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[29]~44_combout\,
	combout => \BancoReg|ram[0][29]~feeder_combout\);

-- Location: FF_X80_Y49_N13
\BancoReg|ram[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[0][29]~feeder_combout\,
	ena => \BancoReg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[0][29]~q\);

-- Location: LCCOMB_X80_Y49_N22
\BancoReg|Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux34~2_combout\ = (\BancoReg|ram[0][29]~q\ & (((\PC|DOUT\(1)) # (\InstMem|ram~554_combout\)) # (!\PC|DOUT\(0)))) # (!\BancoReg|ram[0][29]~q\ & (!\PC|DOUT\(0) & (\PC|DOUT\(1) & !\InstMem|ram~554_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][29]~q\,
	datab => \PC|DOUT\(0),
	datac => \PC|DOUT\(1),
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux34~2_combout\);

-- Location: LCCOMB_X79_Y47_N26
\BancoReg|Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux34~3_combout\ = (\InstMem|ram~556_combout\ & ((\BancoReg|Mux34~2_combout\ & ((\InstMem|ram~554_combout\))) # (!\BancoReg|Mux34~2_combout\ & (\BancoReg|ram[8][29]~q\ & !\InstMem|ram~554_combout\)))) # (!\InstMem|ram~556_combout\ & 
-- (((\BancoReg|Mux34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~556_combout\,
	datab => \BancoReg|ram[8][29]~q\,
	datac => \BancoReg|Mux34~2_combout\,
	datad => \InstMem|ram~554_combout\,
	combout => \BancoReg|Mux34~3_combout\);

-- Location: FF_X79_Y47_N17
\BancoReg|ram[13][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[29]~44_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][29]~q\);

-- Location: LCCOMB_X83_Y49_N0
\BancoReg|ram[12][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[12][29]~feeder_combout\ = \MuxULAMem|C[29]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[29]~44_combout\,
	combout => \BancoReg|ram[12][29]~feeder_combout\);

-- Location: FF_X83_Y49_N1
\BancoReg|ram[12][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[12][29]~feeder_combout\,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][29]~q\);

-- Location: LCCOMB_X79_Y45_N22
\BancoReg|ram[5][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[5][29]~feeder_combout\ = \MuxULAMem|C[29]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[29]~44_combout\,
	combout => \BancoReg|ram[5][29]~feeder_combout\);

-- Location: FF_X79_Y45_N23
\BancoReg|ram[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[5][29]~feeder_combout\,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][29]~q\);

-- Location: LCCOMB_X79_Y45_N20
\BancoReg|ram[4][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[4][29]~feeder_combout\ = \MuxULAMem|C[29]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MuxULAMem|C[29]~44_combout\,
	combout => \BancoReg|ram[4][29]~feeder_combout\);

-- Location: FF_X79_Y45_N21
\BancoReg|ram[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[4][29]~feeder_combout\,
	ena => \BancoReg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[4][29]~q\);

-- Location: LCCOMB_X79_Y45_N10
\BancoReg|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux34~0_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~552_combout\)))) # (!\InstMem|ram~551_combout\ & ((\InstMem|ram~552_combout\ & (\BancoReg|ram[5][29]~q\)) # (!\InstMem|ram~552_combout\ & ((\BancoReg|ram[4][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][29]~q\,
	datab => \BancoReg|ram[4][29]~q\,
	datac => \InstMem|ram~551_combout\,
	datad => \InstMem|ram~552_combout\,
	combout => \BancoReg|Mux34~0_combout\);

-- Location: LCCOMB_X79_Y47_N0
\BancoReg|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux34~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|Mux34~0_combout\ & (\BancoReg|ram[13][29]~q\)) # (!\BancoReg|Mux34~0_combout\ & ((\BancoReg|ram[12][29]~q\))))) # (!\InstMem|ram~551_combout\ & (((\BancoReg|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[13][29]~q\,
	datac => \BancoReg|ram[12][29]~q\,
	datad => \BancoReg|Mux34~0_combout\,
	combout => \BancoReg|Mux34~1_combout\);

-- Location: LCCOMB_X79_Y47_N24
\BancoReg|Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux34~4_combout\ = (\InstMem|ram~550_combout\ & (((\BancoReg|Mux34~1_combout\)) # (!\InstMem|ram~549_combout\))) # (!\InstMem|ram~550_combout\ & (\InstMem|ram~549_combout\ & (\BancoReg|Mux34~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux34~3_combout\,
	datad => \BancoReg|Mux34~1_combout\,
	combout => \BancoReg|Mux34~4_combout\);

-- Location: LCCOMB_X79_Y47_N2
\BancoReg|Mux34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux34~5_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux34~4_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux34~4_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux34~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux61~4_combout\,
	datab => \InstMem|ram~554_combout\,
	datac => \InstMem|ram~553_combout\,
	datad => \BancoReg|Mux34~4_combout\,
	combout => \BancoReg|Mux34~5_combout\);

-- Location: LCCOMB_X79_Y47_N12
\muxRtImm|C[29]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[29]~13_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux34~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux34~5_combout\,
	combout => \muxRtImm|C[29]~13_combout\);

-- Location: LCCOMB_X83_Y46_N26
\ULA|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~59_combout\ = (\ULA|Add1~58\ & (\UCULA|Mux5~0_combout\ $ ((!\muxRtImm|C[29]~13_combout\)))) # (!\ULA|Add1~58\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[29]~13_combout\)) # (GND)))
-- \ULA|Add1~60\ = CARRY((\UCULA|Mux5~0_combout\ $ (!\muxRtImm|C[29]~13_combout\)) # (!\ULA|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[29]~13_combout\,
	datad => VCC,
	cin => \ULA|Add1~58\,
	combout => \ULA|Add1~59_combout\,
	cout => \ULA|Add1~60\);

-- Location: LCCOMB_X83_Y49_N30
\ULA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux2~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~59_combout\) # (\ULA|Add1~59_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~59_combout\ & \ULA|Add1~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Add0~59_combout\,
	datad => \ULA|Add1~59_combout\,
	combout => \ULA|Mux2~0_combout\);

-- Location: LCCOMB_X84_Y46_N26
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

-- Location: LCCOMB_X83_Y49_N24
\ULA|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux2~1_combout\ = (\ULA|Mux2~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[29]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Mux2~0_combout\,
	datad => \ULA|tempAdd[29]~58_combout\,
	combout => \ULA|Mux2~1_combout\);

-- Location: LCCOMB_X83_Y49_N2
\MuxULAMem|C[29]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[29]~44_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux2~1_combout\,
	combout => \MuxULAMem|C[29]~44_combout\);

-- Location: FF_X79_Y47_N19
\BancoReg|ram[8][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[29]~44_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[8][29]~q\);

-- Location: LCCOMB_X79_Y47_N30
\BancoReg|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux2~1_combout\ = (\InstMem|ram~551_combout\ & ((\BancoReg|ram[8][29]~q\) # ((\InstMem|ram~550_combout\)))) # (!\InstMem|ram~551_combout\ & (((!\InstMem|ram~550_combout\ & \BancoReg|ram[0][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[8][29]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[0][29]~q\,
	combout => \BancoReg|Mux2~1_combout\);

-- Location: LCCOMB_X80_Y46_N2
\BancoReg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux2~0_combout\ = (\InstMem|ram~549_combout\ & (\BancoReg|ram[12][29]~q\)) # (!\InstMem|ram~549_combout\ & ((\BancoReg|ram[13][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|ram[12][29]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[13][29]~q\,
	combout => \BancoReg|Mux2~0_combout\);

-- Location: LCCOMB_X79_Y45_N2
\BancoReg|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux2~2_combout\ = (\InstMem|ram~550_combout\ & ((\InstMem|ram~549_combout\ & ((!\BancoReg|ram[4][29]~q\))) # (!\InstMem|ram~549_combout\ & (!\BancoReg|ram[5][29]~q\)))) # (!\InstMem|ram~550_combout\ & (((\InstMem|ram~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][29]~q\,
	datab => \BancoReg|ram[4][29]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \InstMem|ram~549_combout\,
	combout => \BancoReg|Mux2~2_combout\);

-- Location: LCCOMB_X80_Y46_N0
\BancoReg|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux2~3_combout\ = (\BancoReg|Mux2~1_combout\ & ((\InstMem|ram~550_combout\ & (\BancoReg|Mux2~0_combout\)) # (!\InstMem|ram~550_combout\ & ((\BancoReg|Mux2~2_combout\))))) # (!\BancoReg|Mux2~1_combout\ & (((\InstMem|ram~550_combout\ & 
-- !\BancoReg|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux2~1_combout\,
	datab => \BancoReg|Mux2~0_combout\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|Mux2~2_combout\,
	combout => \BancoReg|Mux2~3_combout\);

-- Location: LCCOMB_X85_Y46_N28
\ULA|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_combout\ = (\ULA|Add0~60\ & ((\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux1~3_combout\)))) # (!\ULA|Add0~60\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux1~3_combout\ $ (VCC))))
-- \ULA|Add0~62\ = CARRY((!\ULA|Add0~60\ & (\UCULA|Mux7~0_combout\ $ (\BancoReg|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \BancoReg|Mux1~3_combout\,
	datad => VCC,
	cin => \ULA|Add0~60\,
	combout => \ULA|Add0~61_combout\,
	cout => \ULA|Add0~62\);

-- Location: LCCOMB_X83_Y46_N28
\ULA|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~61_combout\ = (\ULA|Add1~60\ & ((\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[30]~12_combout\)))) # (!\ULA|Add1~60\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[30]~12_combout\ $ (VCC))))
-- \ULA|Add1~62\ = CARRY((!\ULA|Add1~60\ & (\UCULA|Mux5~0_combout\ $ (\muxRtImm|C[30]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux5~0_combout\,
	datab => \muxRtImm|C[30]~12_combout\,
	datad => VCC,
	cin => \ULA|Add1~60\,
	combout => \ULA|Add1~61_combout\,
	cout => \ULA|Add1~62\);

-- Location: LCCOMB_X86_Y48_N4
\ULA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux1~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~61_combout\) # (\ULA|Add1~61_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~61_combout\ & \ULA|Add1~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Add0~61_combout\,
	datad => \ULA|Add1~61_combout\,
	combout => \ULA|Mux1~0_combout\);

-- Location: LCCOMB_X84_Y46_N28
\ULA|tempAdd[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|tempAdd[30]~60_combout\ = ((\ULA|Add0~61_combout\ $ (\ULA|Add1~61_combout\ $ (!\ULA|tempAdd[29]~59\)))) # (GND)
-- \ULA|tempAdd[30]~61\ = CARRY((\ULA|Add0~61_combout\ & ((\ULA|Add1~61_combout\) # (!\ULA|tempAdd[29]~59\))) # (!\ULA|Add0~61_combout\ & (\ULA|Add1~61_combout\ & !\ULA|tempAdd[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add0~61_combout\,
	datab => \ULA|Add1~61_combout\,
	datad => VCC,
	cin => \ULA|tempAdd[29]~59\,
	combout => \ULA|tempAdd[30]~60_combout\,
	cout => \ULA|tempAdd[30]~61\);

-- Location: LCCOMB_X86_Y48_N10
\ULA|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux1~1_combout\ = (\ULA|Mux1~0_combout\) # ((!\UCULA|Mux7~0_combout\ & (!\InstMem|ram~557_combout\ & \ULA|tempAdd[30]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCULA|Mux7~0_combout\,
	datab => \InstMem|ram~557_combout\,
	datac => \ULA|Mux1~0_combout\,
	datad => \ULA|tempAdd[30]~60_combout\,
	combout => \ULA|Mux1~1_combout\);

-- Location: LCCOMB_X86_Y48_N0
\MuxULAMem|C[30]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[30]~45_combout\ = (!\UCFD|Mux3~0_combout\ & \ULA|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCFD|Mux3~0_combout\,
	datad => \ULA|Mux1~1_combout\,
	combout => \MuxULAMem|C[30]~45_combout\);

-- Location: FF_X83_Y49_N5
\BancoReg|ram[12][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[30]~45_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[12][30]~q\);

-- Location: LCCOMB_X83_Y49_N26
\BancoReg|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux33~1_combout\ = (\InstMem|ram~551_combout\ & (((\InstMem|ram~550_combout\) # (\BancoReg|ram[8][30]~q\)))) # (!\InstMem|ram~551_combout\ & (\BancoReg|ram[0][30]~q\ & (!\InstMem|ram~550_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \BancoReg|ram[0][30]~q\,
	datac => \InstMem|ram~550_combout\,
	datad => \BancoReg|ram[8][30]~q\,
	combout => \BancoReg|Mux33~1_combout\);

-- Location: LCCOMB_X83_Y49_N8
\BancoReg|Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux33~2_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux33~1_combout\ & (\BancoReg|ram[12][30]~q\)) # (!\BancoReg|Mux33~1_combout\ & ((\BancoReg|ram[4][30]~q\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|ram[12][30]~q\,
	datac => \BancoReg|Mux33~1_combout\,
	datad => \BancoReg|ram[4][30]~q\,
	combout => \BancoReg|Mux33~2_combout\);

-- Location: LCCOMB_X83_Y49_N12
\BancoReg|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux33~0_combout\ = (!\InstMem|ram~554_combout\ & (!\PC|DOUT\(1) & (\PC|DOUT\(0) & \BancoReg|ram[5][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(0),
	datad => \BancoReg|ram[5][30]~q\,
	combout => \BancoReg|Mux33~0_combout\);

-- Location: LCCOMB_X83_Y49_N6
\BancoReg|Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux33~3_combout\ = (\InstMem|ram~552_combout\ & (((\BancoReg|Mux33~0_combout\)) # (!\InstMem|ram~549_combout\))) # (!\InstMem|ram~552_combout\ & (\InstMem|ram~549_combout\ & (\BancoReg|Mux33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~552_combout\,
	datab => \InstMem|ram~549_combout\,
	datac => \BancoReg|Mux33~2_combout\,
	datad => \BancoReg|Mux33~0_combout\,
	combout => \BancoReg|Mux33~3_combout\);

-- Location: LCCOMB_X83_Y49_N28
\BancoReg|Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux33~4_combout\ = (\InstMem|ram~554_combout\ & (((\BancoReg|Mux33~3_combout\)))) # (!\InstMem|ram~554_combout\ & ((\InstMem|ram~553_combout\ & ((\BancoReg|Mux33~3_combout\))) # (!\InstMem|ram~553_combout\ & (\BancoReg|Mux61~4_combout\ & 
-- !\BancoReg|Mux33~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~554_combout\,
	datab => \InstMem|ram~553_combout\,
	datac => \BancoReg|Mux61~4_combout\,
	datad => \BancoReg|Mux33~3_combout\,
	combout => \BancoReg|Mux33~4_combout\);

-- Location: LCCOMB_X83_Y49_N22
\muxRtImm|C[30]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[30]~12_combout\ = (!\UCFD|Mux3~0_combout\ & \BancoReg|Mux33~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datad => \BancoReg|Mux33~4_combout\,
	combout => \muxRtImm|C[30]~12_combout\);

-- Location: LCCOMB_X83_Y46_N30
\ULA|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add1~63_combout\ = \UCULA|Mux5~0_combout\ $ (\ULA|Add1~62\ $ (\muxRtImm|C[31]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UCULA|Mux5~0_combout\,
	datad => \muxRtImm|C[31]~11_combout\,
	cin => \ULA|Add1~62\,
	combout => \ULA|Add1~63_combout\);

-- Location: LCCOMB_X82_Y45_N24
\ULA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux0~0_combout\ = (\InstMem|ram~557_combout\ & ((\UCULA|Mux7~0_combout\ & ((\ULA|Add0~63_combout\) # (\ULA|Add1~63_combout\))) # (!\UCULA|Mux7~0_combout\ & (\ULA|Add0~63_combout\ & \ULA|Add1~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|Add0~63_combout\,
	datad => \ULA|Add1~63_combout\,
	combout => \ULA|Mux0~0_combout\);

-- Location: LCCOMB_X82_Y45_N14
\ULA|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Mux0~1_combout\ = (\ULA|Mux0~0_combout\) # ((!\InstMem|ram~557_combout\ & (!\UCULA|Mux7~0_combout\ & \ULA|tempAdd[32]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~557_combout\,
	datab => \UCULA|Mux7~0_combout\,
	datac => \ULA|tempAdd[32]~62_combout\,
	datad => \ULA|Mux0~0_combout\,
	combout => \ULA|Mux0~1_combout\);

-- Location: LCCOMB_X82_Y45_N10
\MuxULAMem|C[31]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[31]~46_combout\ = (\MuxULAMem|C[18]~29_combout\) # ((!\UCFD|Mux3~0_combout\ & \ULA|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datac => \ULA|Mux0~1_combout\,
	datad => \MuxULAMem|C[18]~29_combout\,
	combout => \MuxULAMem|C[31]~46_combout\);

-- Location: LCCOMB_X80_Y45_N8
\BancoReg|ram[13][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|ram[13][31]~feeder_combout\ = \MuxULAMem|C[31]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MuxULAMem|C[31]~46_combout\,
	combout => \BancoReg|ram[13][31]~feeder_combout\);

-- Location: FF_X80_Y45_N9
\BancoReg|ram[13][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \BancoReg|ram[13][31]~feeder_combout\,
	ena => \BancoReg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[13][31]~q\);

-- Location: LCCOMB_X81_Y45_N14
\BancoReg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux0~0_combout\ = (\InstMem|ram~549_combout\ & ((\BancoReg|ram[12][31]~q\))) # (!\InstMem|ram~549_combout\ & (\BancoReg|ram[13][31]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][31]~q\,
	datab => \InstMem|ram~549_combout\,
	datad => \BancoReg|ram[12][31]~q\,
	combout => \BancoReg|Mux0~0_combout\);

-- Location: LCCOMB_X81_Y45_N26
\BancoReg|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux0~1_combout\ = (\InstMem|ram~550_combout\ & (\InstMem|ram~551_combout\)) # (!\InstMem|ram~550_combout\ & ((\InstMem|ram~551_combout\ & (\BancoReg|ram[8][31]~q\)) # (!\InstMem|ram~551_combout\ & ((\BancoReg|ram[0][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \InstMem|ram~551_combout\,
	datac => \BancoReg|ram[8][31]~q\,
	datad => \BancoReg|ram[0][31]~q\,
	combout => \BancoReg|Mux0~1_combout\);

-- Location: LCCOMB_X80_Y45_N12
\BancoReg|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux0~2_combout\ = (\InstMem|ram~549_combout\ & (((!\InstMem|ram~550_combout\) # (!\BancoReg|ram[4][31]~q\)))) # (!\InstMem|ram~549_combout\ & (!\BancoReg|ram[5][31]~q\ & ((\InstMem|ram~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][31]~q\,
	datab => \BancoReg|ram[4][31]~q\,
	datac => \InstMem|ram~549_combout\,
	datad => \InstMem|ram~550_combout\,
	combout => \BancoReg|Mux0~2_combout\);

-- Location: LCCOMB_X81_Y45_N0
\BancoReg|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux0~3_combout\ = (\InstMem|ram~550_combout\ & ((\BancoReg|Mux0~1_combout\ & (\BancoReg|Mux0~0_combout\)) # (!\BancoReg|Mux0~1_combout\ & ((!\BancoReg|Mux0~2_combout\))))) # (!\InstMem|ram~550_combout\ & (((\BancoReg|Mux0~1_combout\ & 
-- \BancoReg|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~550_combout\,
	datab => \BancoReg|Mux0~0_combout\,
	datac => \BancoReg|Mux0~1_combout\,
	datad => \BancoReg|Mux0~2_combout\,
	combout => \BancoReg|Mux0~3_combout\);

-- Location: LCCOMB_X85_Y46_N30
\ULA|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ULA|Add0~63_combout\ = \BancoReg|Mux0~3_combout\ $ (\ULA|Add0~62\ $ (\UCULA|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux0~3_combout\,
	datad => \UCULA|Mux7~0_combout\,
	cin => \ULA|Add0~62\,
	combout => \ULA|Add0~63_combout\);

-- Location: LCCOMB_X84_Y46_N30
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

-- Location: LCCOMB_X84_Y45_N0
\ANDBeqOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~0_combout\ = (!\ULA|tempAdd[2]~4_combout\ & !\ULA|tempAdd[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|tempAdd[2]~4_combout\,
	datad => \ULA|tempAdd[1]~2_combout\,
	combout => \ANDBeqOut~0_combout\);

-- Location: LCCOMB_X84_Y45_N4
\ANDBeqOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~1_combout\ = (\InstMem|ram~551_combout\ & (!\ULA|tempAdd[0]~0_combout\ & (!\ULA|tempAdd[32]~62_combout\ & \ANDBeqOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~551_combout\,
	datab => \ULA|tempAdd[0]~0_combout\,
	datac => \ULA|tempAdd[32]~62_combout\,
	datad => \ANDBeqOut~0_combout\,
	combout => \ANDBeqOut~1_combout\);

-- Location: LCCOMB_X84_Y45_N10
\ANDBeqOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~2_combout\ = (!\ULA|tempAdd[5]~10_combout\ & (!\ULA|tempAdd[3]~6_combout\ & (!\ULA|tempAdd[4]~8_combout\ & !\ULA|tempAdd[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[5]~10_combout\,
	datab => \ULA|tempAdd[3]~6_combout\,
	datac => \ULA|tempAdd[4]~8_combout\,
	datad => \ULA|tempAdd[6]~12_combout\,
	combout => \ANDBeqOut~2_combout\);

-- Location: LCCOMB_X85_Y45_N16
\ANDBeqOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~3_combout\ = (!\ULA|tempAdd[7]~14_combout\ & (!\ULA|tempAdd[9]~18_combout\ & (!\ULA|tempAdd[8]~16_combout\ & !\ULA|tempAdd[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[7]~14_combout\,
	datab => \ULA|tempAdd[9]~18_combout\,
	datac => \ULA|tempAdd[8]~16_combout\,
	datad => \ULA|tempAdd[10]~20_combout\,
	combout => \ANDBeqOut~3_combout\);

-- Location: LCCOMB_X85_Y45_N30
\ANDBeqOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~4_combout\ = (!\ULA|tempAdd[12]~24_combout\ & (!\ULA|tempAdd[13]~26_combout\ & (!\ULA|tempAdd[11]~22_combout\ & !\ULA|tempAdd[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[12]~24_combout\,
	datab => \ULA|tempAdd[13]~26_combout\,
	datac => \ULA|tempAdd[11]~22_combout\,
	datad => \ULA|tempAdd[14]~28_combout\,
	combout => \ANDBeqOut~4_combout\);

-- Location: LCCOMB_X85_Y45_N20
\ANDBeqOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~5_combout\ = (!\ULA|tempAdd[16]~32_combout\ & (!\ULA|tempAdd[15]~30_combout\ & (!\ULA|tempAdd[18]~36_combout\ & !\ULA|tempAdd[17]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[16]~32_combout\,
	datab => \ULA|tempAdd[15]~30_combout\,
	datac => \ULA|tempAdd[18]~36_combout\,
	datad => \ULA|tempAdd[17]~34_combout\,
	combout => \ANDBeqOut~5_combout\);

-- Location: LCCOMB_X85_Y45_N22
\ANDBeqOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~6_combout\ = (\ANDBeqOut~2_combout\ & (\ANDBeqOut~3_combout\ & (\ANDBeqOut~4_combout\ & \ANDBeqOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANDBeqOut~2_combout\,
	datab => \ANDBeqOut~3_combout\,
	datac => \ANDBeqOut~4_combout\,
	datad => \ANDBeqOut~5_combout\,
	combout => \ANDBeqOut~6_combout\);

-- Location: LCCOMB_X85_Y45_N24
\ANDBeqOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~7_combout\ = (!\ULA|tempAdd[20]~40_combout\ & (!\ULA|tempAdd[19]~38_combout\ & (!\ULA|tempAdd[21]~42_combout\ & !\ULA|tempAdd[22]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[20]~40_combout\,
	datab => \ULA|tempAdd[19]~38_combout\,
	datac => \ULA|tempAdd[21]~42_combout\,
	datad => \ULA|tempAdd[22]~44_combout\,
	combout => \ANDBeqOut~7_combout\);

-- Location: LCCOMB_X85_Y45_N10
\ANDBeqOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~8_combout\ = (!\ULA|tempAdd[23]~46_combout\ & (!\ULA|tempAdd[24]~48_combout\ & (\ANDBeqOut~6_combout\ & \ANDBeqOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[23]~46_combout\,
	datab => \ULA|tempAdd[24]~48_combout\,
	datac => \ANDBeqOut~6_combout\,
	datad => \ANDBeqOut~7_combout\,
	combout => \ANDBeqOut~8_combout\);

-- Location: LCCOMB_X85_Y45_N28
\ANDBeqOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~9_combout\ = (!\ULA|tempAdd[26]~52_combout\ & (!\ULA|tempAdd[25]~50_combout\ & (!\ULA|tempAdd[27]~54_combout\ & \ANDBeqOut~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[26]~52_combout\,
	datab => \ULA|tempAdd[25]~50_combout\,
	datac => \ULA|tempAdd[27]~54_combout\,
	datad => \ANDBeqOut~8_combout\,
	combout => \ANDBeqOut~9_combout\);

-- Location: LCCOMB_X85_Y45_N2
\ANDBeqOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~10_combout\ = (!\ULA|tempAdd[29]~58_combout\ & (!\ULA|tempAdd[28]~56_combout\ & (!\ULA|tempAdd[30]~60_combout\ & \ANDBeqOut~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tempAdd[29]~58_combout\,
	datab => \ULA|tempAdd[28]~56_combout\,
	datac => \ULA|tempAdd[30]~60_combout\,
	datad => \ANDBeqOut~9_combout\,
	combout => \ANDBeqOut~10_combout\);

-- Location: LCCOMB_X85_Y45_N12
\ANDBeqOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ANDBeqOut~11_combout\ = (\ANDBeqOut~1_combout\ & \ANDBeqOut~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ANDBeqOut~1_combout\,
	datad => \ANDBeqOut~10_combout\,
	combout => \ANDBeqOut~11_combout\);

-- Location: LCCOMB_X82_Y47_N10
\MuxJUMP|C[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[0]~2_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[0]~0_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux0~0_combout\,
	datab => \AdderPC|tempAdd[0]~0_combout\,
	datac => \AdderBEQ|tempAdd[0]~0_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[0]~2_combout\);

-- Location: FF_X82_Y47_N11
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LCCOMB_X92_Y46_N2
\AdderPC|tempAdd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[1]~2_combout\ = (\PC|DOUT\(1) & (!\AdderPC|tempAdd[0]~1\)) # (!\PC|DOUT\(1) & ((\AdderPC|tempAdd[0]~1\) # (GND)))
-- \AdderPC|tempAdd[1]~3\ = CARRY((!\AdderPC|tempAdd[0]~1\) # (!\PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datad => VCC,
	cin => \AdderPC|tempAdd[0]~1\,
	combout => \AdderPC|tempAdd[1]~2_combout\,
	cout => \AdderPC|tempAdd[1]~3\);

-- Location: LCCOMB_X91_Y46_N2
\AdderBEQ|tempAdd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[1]~2_combout\ = (\AdderPC|tempAdd[1]~2_combout\ & (!\AdderBEQ|tempAdd[0]~1\)) # (!\AdderPC|tempAdd[1]~2_combout\ & ((\AdderBEQ|tempAdd[0]~1\) # (GND)))
-- \AdderBEQ|tempAdd[1]~3\ = CARRY((!\AdderBEQ|tempAdd[0]~1\) # (!\AdderPC|tempAdd[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[1]~2_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[0]~1\,
	combout => \AdderBEQ|tempAdd[1]~2_combout\,
	cout => \AdderBEQ|tempAdd[1]~3\);

-- Location: LCCOMB_X82_Y47_N8
\MuxJUMP|C[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[1]~3_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[1]~2_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[1]~2_combout\,
	datab => \AdderPC|tempAdd[1]~2_combout\,
	datac => \UCFD|Mux0~0_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[1]~3_combout\);

-- Location: FF_X82_Y47_N9
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LCCOMB_X92_Y46_N4
\AdderPC|tempAdd[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[2]~4_combout\ = (\PC|DOUT\(2) & (\AdderPC|tempAdd[1]~3\ $ (GND))) # (!\PC|DOUT\(2) & (!\AdderPC|tempAdd[1]~3\ & VCC))
-- \AdderPC|tempAdd[2]~5\ = CARRY((\PC|DOUT\(2) & !\AdderPC|tempAdd[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(2),
	datad => VCC,
	cin => \AdderPC|tempAdd[1]~3\,
	combout => \AdderPC|tempAdd[2]~4_combout\,
	cout => \AdderPC|tempAdd[2]~5\);

-- Location: LCCOMB_X92_Y46_N6
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

-- Location: LCCOMB_X90_Y45_N2
\InstMem|ram~560\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~560_combout\ = (\PC|DOUT\(2) & (!\PC|DOUT\(3) & ((\PC|DOUT\(0)) # (\PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(2),
	datac => \PC|DOUT\(1),
	datad => \PC|DOUT\(3),
	combout => \InstMem|ram~560_combout\);

-- Location: LCCOMB_X90_Y45_N4
\InstMem|ram~559\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~559_combout\ = (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\PC|DOUT\(0) $ (\PC|DOUT\(1))))) # (!\PC|DOUT\(2) & (((!\PC|DOUT\(1) & \PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(2),
	datac => \PC|DOUT\(1),
	datad => \PC|DOUT\(3),
	combout => \InstMem|ram~559_combout\);

-- Location: LCCOMB_X91_Y46_N4
\AdderBEQ|tempAdd[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[2]~4_combout\ = ((\InstMem|ram~559_combout\ $ (\AdderPC|tempAdd[2]~4_combout\ $ (!\AdderBEQ|tempAdd[1]~3\)))) # (GND)
-- \AdderBEQ|tempAdd[2]~5\ = CARRY((\InstMem|ram~559_combout\ & ((\AdderPC|tempAdd[2]~4_combout\) # (!\AdderBEQ|tempAdd[1]~3\))) # (!\InstMem|ram~559_combout\ & (\AdderPC|tempAdd[2]~4_combout\ & !\AdderBEQ|tempAdd[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~559_combout\,
	datab => \AdderPC|tempAdd[2]~4_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[1]~3\,
	combout => \AdderBEQ|tempAdd[2]~4_combout\,
	cout => \AdderBEQ|tempAdd[2]~5\);

-- Location: LCCOMB_X91_Y46_N6
\AdderBEQ|tempAdd[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[3]~6_combout\ = (\AdderPC|tempAdd[3]~6_combout\ & ((\InstMem|ram~560_combout\ & (\AdderBEQ|tempAdd[2]~5\ & VCC)) # (!\InstMem|ram~560_combout\ & (!\AdderBEQ|tempAdd[2]~5\)))) # (!\AdderPC|tempAdd[3]~6_combout\ & 
-- ((\InstMem|ram~560_combout\ & (!\AdderBEQ|tempAdd[2]~5\)) # (!\InstMem|ram~560_combout\ & ((\AdderBEQ|tempAdd[2]~5\) # (GND)))))
-- \AdderBEQ|tempAdd[3]~7\ = CARRY((\AdderPC|tempAdd[3]~6_combout\ & (!\InstMem|ram~560_combout\ & !\AdderBEQ|tempAdd[2]~5\)) # (!\AdderPC|tempAdd[3]~6_combout\ & ((!\AdderBEQ|tempAdd[2]~5\) # (!\InstMem|ram~560_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[3]~6_combout\,
	datab => \InstMem|ram~560_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[2]~5\,
	combout => \AdderBEQ|tempAdd[3]~6_combout\,
	cout => \AdderBEQ|tempAdd[3]~7\);

-- Location: LCCOMB_X82_Y47_N12
\MuxJUMP|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[3]~1_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[3]~6_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux0~0_combout\,
	datab => \AdderBEQ|tempAdd[3]~6_combout\,
	datac => \AdderPC|tempAdd[3]~6_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[3]~1_combout\);

-- Location: FF_X82_Y47_N13
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LCCOMB_X86_Y47_N2
\UCFD|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCFD|Mux0~0_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(1) & (!\PC|DOUT\(0) & \PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(2),
	combout => \UCFD|Mux0~0_combout\);

-- Location: LCCOMB_X82_Y47_N22
\MuxJUMP|C[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[2]~0_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[2]~4_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux0~0_combout\,
	datab => \AdderPC|tempAdd[2]~4_combout\,
	datac => \AdderBEQ|tempAdd[2]~4_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[2]~0_combout\);

-- Location: FF_X82_Y47_N23
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LCCOMB_X86_Y47_N22
\UCFD|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCFD|Mux3~0_combout\ = (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (\PC|DOUT\(0) & !\PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(2),
	datab => \PC|DOUT\(3),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(1),
	combout => \UCFD|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y48_N26
\MuxULAMem|C[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[0]~48_combout\ = (!\ULA|Mux28~1_combout\ & ((\ULA|Mux29~1_combout\ & ((!\ULA|Mux31~1_combout\))) # (!\ULA|Mux29~1_combout\ & ((\ULA|Mux30~1_combout\) # (\ULA|Mux31~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~1_combout\,
	datab => \ULA|Mux29~1_combout\,
	datac => \ULA|Mux28~1_combout\,
	datad => \ULA|Mux31~1_combout\,
	combout => \MuxULAMem|C[0]~48_combout\);

-- Location: LCCOMB_X83_Y48_N30
\MuxULAMem|C[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxULAMem|C[0]~49_combout\ = (\UCFD|Mux3~0_combout\ & (\MuxULAMem|C[0]~48_combout\)) # (!\UCFD|Mux3~0_combout\ & ((\ULA|Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux3~0_combout\,
	datac => \MuxULAMem|C[0]~48_combout\,
	datad => \ULA|Mux31~1_combout\,
	combout => \MuxULAMem|C[0]~49_combout\);

-- Location: FF_X81_Y47_N5
\BancoReg|ram[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MuxULAMem|C[0]~49_combout\,
	sload => VCC,
	ena => \BancoReg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoReg|ram[5][0]~q\);

-- Location: LCCOMB_X79_Y47_N4
\BancoReg|Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux95~1_combout\ = (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\ & (\BancoReg|ram[5][0]~q\)) # (!\regTestEnd[0]~input_o\ & ((!\BancoReg|ram[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|ram[5][0]~q\,
	datad => \BancoReg|ram[4][0]~q\,
	combout => \BancoReg|Mux95~1_combout\);

-- Location: LCCOMB_X89_Y47_N30
\BancoReg|Mux95~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux95~2_combout\ = (\regTestEnd[1]~input_o\) # ((!\regTestEnd[0]~input_o\ & \BancoReg|ram[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regTestEnd[0]~input_o\,
	datac => \regTestEnd[1]~input_o\,
	datad => \BancoReg|ram[0][0]~q\,
	combout => \BancoReg|Mux95~2_combout\);

-- Location: IOIBUF_X89_Y73_N15
\regTestEnd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(2),
	o => \regTestEnd[2]~input_o\);

-- Location: LCCOMB_X89_Y47_N12
\BancoReg|Mux95~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux95~3_combout\ = (\regTestEnd[3]~input_o\ & (((\regTestEnd[2]~input_o\)))) # (!\regTestEnd[3]~input_o\ & ((\regTestEnd[2]~input_o\ & (\BancoReg|Mux95~1_combout\)) # (!\regTestEnd[2]~input_o\ & ((\BancoReg|Mux95~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux95~1_combout\,
	datac => \BancoReg|Mux95~2_combout\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux95~3_combout\);

-- Location: LCCOMB_X89_Y47_N20
\BancoReg|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux95~0_combout\ = (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\) # (!\BancoReg|ram[8][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datad => \BancoReg|ram[8][0]~q\,
	combout => \BancoReg|Mux95~0_combout\);

-- Location: LCCOMB_X81_Y47_N20
\BancoReg|Mux95~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux95~4_combout\ = (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\ & (\BancoReg|ram[13][0]~q\)) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|ram[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[13][0]~q\,
	datad => \BancoReg|ram[12][0]~q\,
	combout => \BancoReg|Mux95~4_combout\);

-- Location: LCCOMB_X89_Y47_N26
\BancoReg|Mux95~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux95~5_combout\ = (\BancoReg|Mux95~3_combout\ & (((\BancoReg|Mux95~4_combout\) # (!\regTestEnd[3]~input_o\)))) # (!\BancoReg|Mux95~3_combout\ & (\BancoReg|Mux95~0_combout\ & ((\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux95~3_combout\,
	datab => \BancoReg|Mux95~0_combout\,
	datac => \BancoReg|Mux95~4_combout\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux95~5_combout\);

-- Location: LCCOMB_X82_Y51_N2
\BancoReg|Mux94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux94~1_combout\ = (\regTestEnd[3]~input_o\ & (((\BancoReg|ram[8][1]~q\) # (\regTestEnd[2]~input_o\)))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[0][1]~q\ & ((!\regTestEnd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[0][1]~q\,
	datac => \BancoReg|ram[8][1]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux94~1_combout\);

-- Location: LCCOMB_X82_Y51_N20
\BancoReg|Mux94~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux94~2_combout\ = (\regTestEnd[2]~input_o\ & ((\BancoReg|Mux94~1_combout\ & (\BancoReg|ram[12][1]~q\)) # (!\BancoReg|Mux94~1_combout\ & ((!\BancoReg|ram[4][1]~q\))))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|Mux94~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[12][1]~q\,
	datac => \BancoReg|Mux94~1_combout\,
	datad => \BancoReg|ram[4][1]~q\,
	combout => \BancoReg|Mux94~2_combout\);

-- Location: LCCOMB_X82_Y51_N0
\BancoReg|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux94~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[13][1]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[5][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[13][1]~q\,
	datad => \BancoReg|ram[5][1]~q\,
	combout => \BancoReg|Mux94~0_combout\);

-- Location: LCCOMB_X82_Y51_N26
\BancoReg|Mux94~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux94~3_combout\ = (\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\) # ((\BancoReg|Mux94~0_combout\)))) # (!\regTestEnd[0]~input_o\ & (!\regTestEnd[1]~input_o\ & (\BancoReg|Mux94~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|Mux94~2_combout\,
	datad => \BancoReg|Mux94~0_combout\,
	combout => \BancoReg|Mux94~3_combout\);

-- Location: LCCOMB_X82_Y51_N8
\BancoReg|Mux94~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux94~4_combout\ = (\BancoReg|Mux94~3_combout\ & (((!\regTestEnd[3]~input_o\ & !\regTestEnd[2]~input_o\)) # (!\regTestEnd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux94~3_combout\,
	datac => \regTestEnd[1]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux94~4_combout\);

-- Location: LCCOMB_X84_Y49_N12
\BancoReg|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux93~0_combout\ = (\regTestEnd[3]~input_o\ & (((!\regTestEnd[0]~input_o\) # (!\BancoReg|ram[13][2]~q\)))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][2]~q\ & ((\regTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[5][2]~q\,
	datac => \BancoReg|ram[13][2]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux93~0_combout\);

-- Location: LCCOMB_X84_Y49_N14
\BancoReg|Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux93~1_combout\ = (\regTestEnd[2]~input_o\ & (((\BancoReg|ram[12][2]~q\) # (!\BancoReg|Mux93~0_combout\)))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[8][2]~q\ & ((\BancoReg|Mux93~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[8][2]~q\,
	datac => \BancoReg|ram[12][2]~q\,
	datad => \BancoReg|Mux93~0_combout\,
	combout => \BancoReg|Mux93~1_combout\);

-- Location: LCCOMB_X84_Y49_N30
\BancoReg|Mux93~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux93~2_combout\ = (\regTestEnd[0]~input_o\ & (((\BancoReg|Mux93~0_combout\) # (!\BancoReg|Mux93~1_combout\)))) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|Mux93~1_combout\ & (\BancoReg|ram[4][2]~q\ & !\BancoReg|Mux93~0_combout\)) # 
-- (!\BancoReg|Mux93~1_combout\ & ((\BancoReg|Mux93~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][2]~q\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|Mux93~1_combout\,
	datad => \BancoReg|Mux93~0_combout\,
	combout => \BancoReg|Mux93~2_combout\);

-- Location: LCCOMB_X84_Y49_N4
\BancoReg|Mux93~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux93~3_combout\ = (!\BancoReg|Mux93~2_combout\ & ((\BancoReg|Mux93~1_combout\ & ((!\regTestEnd[1]~input_o\))) # (!\BancoReg|Mux93~1_combout\ & ((\BancoReg|ram[0][2]~q\) # (\regTestEnd[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux93~2_combout\,
	datab => \BancoReg|Mux93~1_combout\,
	datac => \BancoReg|ram[0][2]~q\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux93~3_combout\);

-- Location: LCCOMB_X83_Y51_N22
\BancoReg|Mux92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux92~1_combout\ = (\regTestEnd[2]~input_o\ & (((\regTestEnd[3]~input_o\)) # (!\BancoReg|ram[4][3]~q\))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|ram[0][3]~q\ & !\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[4][3]~q\,
	datac => \BancoReg|ram[0][3]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux92~1_combout\);

-- Location: LCCOMB_X83_Y51_N4
\BancoReg|Mux92~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux92~2_combout\ = (\BancoReg|Mux92~1_combout\ & ((\BancoReg|ram[12][3]~q\) # ((!\regTestEnd[3]~input_o\)))) # (!\BancoReg|Mux92~1_combout\ & (((\BancoReg|ram[8][3]~q\ & \regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][3]~q\,
	datab => \BancoReg|ram[8][3]~q\,
	datac => \BancoReg|Mux92~1_combout\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux92~2_combout\);

-- Location: LCCOMB_X87_Y48_N24
\BancoReg|Mux94~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux94~5_combout\ = (\regTestEnd[3]~input_o\) # (\regTestEnd[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux94~5_combout\);

-- Location: LCCOMB_X83_Y51_N26
\BancoReg|Mux92~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux92~3_combout\ = (\regTestEnd[0]~input_o\ & (\regTestEnd[1]~input_o\)) # (!\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\ & ((!\BancoReg|Mux94~5_combout\))) # (!\regTestEnd[1]~input_o\ & (\BancoReg|Mux92~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|Mux92~2_combout\,
	datad => \BancoReg|Mux94~5_combout\,
	combout => \BancoReg|Mux92~3_combout\);

-- Location: LCCOMB_X83_Y51_N12
\BancoReg|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux92~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[13][3]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[5][3]~q\))))) # (!\regTestEnd[2]~input_o\ & (((!\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[13][3]~q\,
	datac => \BancoReg|ram[5][3]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux92~0_combout\);

-- Location: LCCOMB_X83_Y51_N18
\BancoReg|Mux92~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux92~4_combout\ = (\regTestEnd[0]~input_o\ & (!\BancoReg|Mux92~3_combout\ & \BancoReg|Mux92~0_combout\)) # (!\regTestEnd[0]~input_o\ & (\BancoReg|Mux92~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \BancoReg|Mux92~3_combout\,
	datad => \BancoReg|Mux92~0_combout\,
	combout => \BancoReg|Mux92~4_combout\);

-- Location: LCCOMB_X88_Y47_N18
\BancoReg|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux91~0_combout\ = (\regTestEnd[0]~input_o\ & ((\regTestEnd[3]~input_o\ & ((!\BancoReg|ram[13][4]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][4]~q\)))) # (!\regTestEnd[0]~input_o\ & (((\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][4]~q\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[13][4]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux91~0_combout\);

-- Location: LCCOMB_X87_Y47_N30
\BancoReg|Mux91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux91~1_combout\ = (\BancoReg|Mux91~0_combout\ & ((\regTestEnd[2]~input_o\ & ((\BancoReg|ram[12][4]~q\))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[8][4]~q\)))) # (!\BancoReg|Mux91~0_combout\ & (((\regTestEnd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][4]~q\,
	datab => \BancoReg|Mux91~0_combout\,
	datac => \BancoReg|ram[12][4]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux91~1_combout\);

-- Location: LCCOMB_X88_Y47_N4
\BancoReg|Mux91~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux91~2_combout\ = (\BancoReg|Mux91~0_combout\ & (((!\regTestEnd[0]~input_o\)) # (!\BancoReg|Mux91~1_combout\))) # (!\BancoReg|Mux91~0_combout\ & ((\regTestEnd[0]~input_o\) # ((\BancoReg|Mux91~1_combout\ & \BancoReg|ram[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux91~0_combout\,
	datab => \BancoReg|Mux91~1_combout\,
	datac => \BancoReg|ram[4][4]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux91~2_combout\);

-- Location: LCCOMB_X88_Y47_N22
\BancoReg|Mux91~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux91~3_combout\ = (\BancoReg|Mux91~1_combout\ & (((\BancoReg|Mux91~2_combout\ & !\regTestEnd[1]~input_o\)))) # (!\BancoReg|Mux91~1_combout\ & (!\BancoReg|Mux91~2_combout\ & ((\BancoReg|ram[0][4]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux91~1_combout\,
	datab => \BancoReg|ram[0][4]~q\,
	datac => \BancoReg|Mux91~2_combout\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux91~3_combout\);

-- Location: LCCOMB_X88_Y47_N8
\BancoReg|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux90~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[13][5]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][5]~q\)))) # (!\regTestEnd[2]~input_o\ & (((\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][5]~q\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[13][5]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux90~0_combout\);

-- Location: LCCOMB_X88_Y47_N30
\BancoReg|Mux90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux90~1_combout\ = (\regTestEnd[2]~input_o\ & (((\regTestEnd[3]~input_o\)))) # (!\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (!\BancoReg|ram[8][5]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][5]~q\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[0][5]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux90~1_combout\);

-- Location: LCCOMB_X87_Y47_N8
\BancoReg|Mux90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux90~2_combout\ = (\regTestEnd[2]~input_o\ & ((\BancoReg|Mux90~1_combout\ & ((\BancoReg|ram[12][5]~q\))) # (!\BancoReg|Mux90~1_combout\ & (\BancoReg|ram[4][5]~q\)))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|Mux90~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[4][5]~q\,
	datac => \BancoReg|Mux90~1_combout\,
	datad => \BancoReg|ram[12][5]~q\,
	combout => \BancoReg|Mux90~2_combout\);

-- Location: LCCOMB_X87_Y48_N18
\BancoReg|Mux90~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux90~3_combout\ = (\regTestEnd[1]~input_o\ & (((\regTestEnd[0]~input_o\)))) # (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\ & (\BancoReg|Mux90~0_combout\)) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|Mux90~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux90~0_combout\,
	datab => \regTestEnd[1]~input_o\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|Mux90~2_combout\,
	combout => \BancoReg|Mux90~3_combout\);

-- Location: LCCOMB_X87_Y48_N20
\BancoReg|Mux90~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux90~4_combout\ = (\regTestEnd[1]~input_o\ & (!\regTestEnd[3]~input_o\ & (!\regTestEnd[2]~input_o\ & !\BancoReg|Mux90~3_combout\))) # (!\regTestEnd[1]~input_o\ & (((\BancoReg|Mux90~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \regTestEnd[2]~input_o\,
	datad => \BancoReg|Mux90~3_combout\,
	combout => \BancoReg|Mux90~4_combout\);

-- Location: LCCOMB_X80_Y45_N20
\BancoReg|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux89~0_combout\ = (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\ & ((\BancoReg|ram[5][6]~q\))) # (!\regTestEnd[0]~input_o\ & (\BancoReg|ram[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[4][6]~q\,
	datad => \BancoReg|ram[5][6]~q\,
	combout => \BancoReg|Mux89~0_combout\);

-- Location: LCCOMB_X81_Y44_N20
\BancoReg|Mux89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux89~2_combout\ = (!\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datac => \BancoReg|ram[0][6]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux89~2_combout\);

-- Location: LCCOMB_X82_Y44_N16
\BancoReg|Mux89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux89~1_combout\ = (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\) # (!\BancoReg|ram[8][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \BancoReg|ram[8][6]~q\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux89~1_combout\);

-- Location: LCCOMB_X82_Y44_N24
\BancoReg|Mux89~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux89~3_combout\ = (\regTestEnd[2]~input_o\ & (((\regTestEnd[3]~input_o\)))) # (!\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|Mux89~1_combout\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|Mux89~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|Mux89~2_combout\,
	datac => \regTestEnd[3]~input_o\,
	datad => \BancoReg|Mux89~1_combout\,
	combout => \BancoReg|Mux89~3_combout\);

-- Location: LCCOMB_X82_Y44_N22
\BancoReg|Mux89~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux89~4_combout\ = (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\ & (\BancoReg|ram[13][6]~q\)) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|ram[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|ram[13][6]~q\,
	datad => \BancoReg|ram[12][6]~q\,
	combout => \BancoReg|Mux89~4_combout\);

-- Location: LCCOMB_X83_Y44_N24
\BancoReg|Mux89~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux89~5_combout\ = (\regTestEnd[2]~input_o\ & ((\BancoReg|Mux89~3_combout\ & ((\BancoReg|Mux89~4_combout\))) # (!\BancoReg|Mux89~3_combout\ & (\BancoReg|Mux89~0_combout\)))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|Mux89~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux89~0_combout\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|Mux89~3_combout\,
	datad => \BancoReg|Mux89~4_combout\,
	combout => \BancoReg|Mux89~5_combout\);

-- Location: LCCOMB_X89_Y47_N10
\BancoReg|Mux88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux88~1_combout\ = (\regTestEnd[3]~input_o\ & (((\regTestEnd[2]~input_o\)))) # (!\regTestEnd[3]~input_o\ & ((\regTestEnd[2]~input_o\ & (\BancoReg|ram[4][7]~q\)) # (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[4][7]~q\,
	datac => \BancoReg|ram[0][7]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux88~1_combout\);

-- Location: LCCOMB_X89_Y47_N16
\BancoReg|Mux88~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux88~2_combout\ = (\regTestEnd[3]~input_o\ & ((\BancoReg|Mux88~1_combout\ & (\BancoReg|ram[12][7]~q\)) # (!\BancoReg|Mux88~1_combout\ & ((\BancoReg|ram[8][7]~q\))))) # (!\regTestEnd[3]~input_o\ & (((\BancoReg|Mux88~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[12][7]~q\,
	datac => \BancoReg|ram[8][7]~q\,
	datad => \BancoReg|Mux88~1_combout\,
	combout => \BancoReg|Mux88~2_combout\);

-- Location: LCCOMB_X89_Y47_N22
\BancoReg|Mux88~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux88~3_combout\ = (\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\) # ((!\BancoReg|Mux94~5_combout\)))) # (!\regTestEnd[1]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\BancoReg|Mux88~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|Mux94~5_combout\,
	datad => \BancoReg|Mux88~2_combout\,
	combout => \BancoReg|Mux88~3_combout\);

-- Location: LCCOMB_X89_Y47_N24
\BancoReg|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux88~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[13][7]~q\))) # (!\regTestEnd[3]~input_o\ & (!\BancoReg|ram[5][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[5][7]~q\,
	datac => \BancoReg|ram[13][7]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux88~0_combout\);

-- Location: LCCOMB_X89_Y47_N8
\BancoReg|Mux88~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux88~4_combout\ = (\regTestEnd[0]~input_o\ & (!\BancoReg|Mux88~3_combout\ & \BancoReg|Mux88~0_combout\)) # (!\regTestEnd[0]~input_o\ & (\BancoReg|Mux88~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|Mux88~3_combout\,
	datad => \BancoReg|Mux88~0_combout\,
	combout => \BancoReg|Mux88~4_combout\);

-- Location: LCCOMB_X83_Y45_N12
\BancoReg|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux87~0_combout\ = (\regTestEnd[3]~input_o\ & (((!\regTestEnd[0]~input_o\) # (!\BancoReg|ram[13][8]~q\)))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][8]~q\ & ((\regTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[5][8]~q\,
	datac => \BancoReg|ram[13][8]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux87~0_combout\);

-- Location: LCCOMB_X83_Y45_N26
\BancoReg|Mux87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux87~1_combout\ = (\regTestEnd[2]~input_o\ & (((\BancoReg|ram[12][8]~q\)) # (!\BancoReg|Mux87~0_combout\))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|Mux87~0_combout\ & ((\BancoReg|ram[8][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|Mux87~0_combout\,
	datac => \BancoReg|ram[12][8]~q\,
	datad => \BancoReg|ram[8][8]~q\,
	combout => \BancoReg|Mux87~1_combout\);

-- Location: LCCOMB_X83_Y45_N10
\BancoReg|Mux87~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux87~2_combout\ = (\BancoReg|Mux87~0_combout\ & (((!\BancoReg|Mux87~1_combout\)) # (!\regTestEnd[0]~input_o\))) # (!\BancoReg|Mux87~0_combout\ & ((\regTestEnd[0]~input_o\) # ((\BancoReg|Mux87~1_combout\ & \BancoReg|ram[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux87~0_combout\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|Mux87~1_combout\,
	datad => \BancoReg|ram[4][8]~q\,
	combout => \BancoReg|Mux87~2_combout\);

-- Location: LCCOMB_X81_Y45_N24
\BancoReg|Mux87~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux87~3_combout\ = (\BancoReg|Mux87~1_combout\ & (((!\regTestEnd[1]~input_o\ & \BancoReg|Mux87~2_combout\)))) # (!\BancoReg|Mux87~1_combout\ & (!\BancoReg|Mux87~2_combout\ & ((\BancoReg|ram[0][8]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux87~1_combout\,
	datab => \BancoReg|ram[0][8]~q\,
	datac => \regTestEnd[1]~input_o\,
	datad => \BancoReg|Mux87~2_combout\,
	combout => \BancoReg|Mux87~3_combout\);

-- Location: LCCOMB_X80_Y49_N4
\BancoReg|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux86~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[13][9]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[5][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][9]~q\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[5][9]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux86~0_combout\);

-- Location: LCCOMB_X80_Y49_N14
\BancoReg|Mux86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux86~1_combout\ = (\regTestEnd[2]~input_o\ & (((\regTestEnd[3]~input_o\)))) # (!\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[8][9]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][9]~q\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[0][9]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux86~1_combout\);

-- Location: LCCOMB_X80_Y49_N0
\BancoReg|Mux86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux86~2_combout\ = (\BancoReg|Mux86~1_combout\ & (((\BancoReg|ram[12][9]~q\) # (!\regTestEnd[2]~input_o\)))) # (!\BancoReg|Mux86~1_combout\ & (\BancoReg|ram[4][9]~q\ & ((\regTestEnd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][9]~q\,
	datab => \BancoReg|ram[12][9]~q\,
	datac => \BancoReg|Mux86~1_combout\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux86~2_combout\);

-- Location: LCCOMB_X80_Y49_N26
\BancoReg|Mux86~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux86~3_combout\ = (\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\) # ((\BancoReg|Mux86~0_combout\)))) # (!\regTestEnd[0]~input_o\ & (!\regTestEnd[1]~input_o\ & ((\BancoReg|Mux86~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|Mux86~0_combout\,
	datad => \BancoReg|Mux86~2_combout\,
	combout => \BancoReg|Mux86~3_combout\);

-- Location: LCCOMB_X80_Y49_N16
\BancoReg|Mux86~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux86~4_combout\ = (\regTestEnd[1]~input_o\ & (!\regTestEnd[3]~input_o\ & (!\BancoReg|Mux86~3_combout\ & !\regTestEnd[2]~input_o\))) # (!\regTestEnd[1]~input_o\ & (((\BancoReg|Mux86~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|Mux86~3_combout\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux86~4_combout\);

-- Location: LCCOMB_X86_Y50_N26
\BancoReg|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux85~0_combout\ = (\regTestEnd[3]~input_o\ & (((!\BancoReg|ram[13][10]~q\) # (!\regTestEnd[0]~input_o\)))) # (!\regTestEnd[3]~input_o\ & (!\BancoReg|ram[5][10]~q\ & (\regTestEnd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[5][10]~q\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|ram[13][10]~q\,
	combout => \BancoReg|Mux85~0_combout\);

-- Location: LCCOMB_X85_Y50_N24
\BancoReg|Mux85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux85~1_combout\ = (\regTestEnd[2]~input_o\ & (((\BancoReg|ram[12][10]~q\) # (!\BancoReg|Mux85~0_combout\)))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[8][10]~q\ & ((\BancoReg|Mux85~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][10]~q\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[12][10]~q\,
	datad => \BancoReg|Mux85~0_combout\,
	combout => \BancoReg|Mux85~1_combout\);

-- Location: LCCOMB_X85_Y50_N4
\BancoReg|Mux85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux85~2_combout\ = (\BancoReg|Mux85~1_combout\ & ((\BancoReg|Mux85~0_combout\ & (\regTestEnd[0]~input_o\)) # (!\BancoReg|Mux85~0_combout\ & (!\regTestEnd[0]~input_o\ & !\BancoReg|ram[4][10]~q\)))) # (!\BancoReg|Mux85~1_combout\ & 
-- ((\BancoReg|Mux85~0_combout\) # ((\regTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux85~1_combout\,
	datab => \BancoReg|Mux85~0_combout\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|ram[4][10]~q\,
	combout => \BancoReg|Mux85~2_combout\);

-- Location: LCCOMB_X85_Y50_N6
\BancoReg|Mux85~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux85~3_combout\ = (!\BancoReg|Mux85~2_combout\ & ((\BancoReg|Mux85~1_combout\ & ((!\regTestEnd[1]~input_o\))) # (!\BancoReg|Mux85~1_combout\ & ((\BancoReg|ram[0][10]~q\) # (\regTestEnd[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][10]~q\,
	datab => \BancoReg|Mux85~2_combout\,
	datac => \BancoReg|Mux85~1_combout\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux85~3_combout\);

-- Location: LCCOMB_X80_Y49_N8
\BancoReg|Mux84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux84~1_combout\ = (\regTestEnd[3]~input_o\ & (\regTestEnd[2]~input_o\)) # (!\regTestEnd[3]~input_o\ & ((\regTestEnd[2]~input_o\ & ((\BancoReg|ram[4][11]~q\))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[0][11]~q\,
	datad => \BancoReg|ram[4][11]~q\,
	combout => \BancoReg|Mux84~1_combout\);

-- Location: LCCOMB_X80_Y49_N10
\BancoReg|Mux84~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux84~2_combout\ = (\regTestEnd[3]~input_o\ & ((\BancoReg|Mux84~1_combout\ & ((\BancoReg|ram[12][11]~q\))) # (!\BancoReg|Mux84~1_combout\ & (\BancoReg|ram[8][11]~q\)))) # (!\regTestEnd[3]~input_o\ & (((\BancoReg|Mux84~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[8][11]~q\,
	datac => \BancoReg|Mux84~1_combout\,
	datad => \BancoReg|ram[12][11]~q\,
	combout => \BancoReg|Mux84~2_combout\);

-- Location: LCCOMB_X80_Y49_N24
\BancoReg|Mux84~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux84~3_combout\ = (\regTestEnd[0]~input_o\ & (\regTestEnd[1]~input_o\)) # (!\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\ & (!\BancoReg|Mux94~5_combout\)) # (!\regTestEnd[1]~input_o\ & ((\BancoReg|Mux84~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|Mux94~5_combout\,
	datad => \BancoReg|Mux84~2_combout\,
	combout => \BancoReg|Mux84~3_combout\);

-- Location: LCCOMB_X80_Y49_N18
\BancoReg|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux84~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[13][11]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[5][11]~q\,
	datad => \BancoReg|ram[13][11]~q\,
	combout => \BancoReg|Mux84~0_combout\);

-- Location: LCCOMB_X80_Y49_N2
\BancoReg|Mux84~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux84~4_combout\ = (\BancoReg|Mux84~3_combout\ & (!\regTestEnd[0]~input_o\)) # (!\BancoReg|Mux84~3_combout\ & (\regTestEnd[0]~input_o\ & \BancoReg|Mux84~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Mux84~3_combout\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|Mux84~0_combout\,
	combout => \BancoReg|Mux84~4_combout\);

-- Location: LCCOMB_X86_Y50_N24
\BancoReg|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux83~0_combout\ = (\regTestEnd[3]~input_o\ & (((!\BancoReg|ram[13][12]~q\)) # (!\regTestEnd[0]~input_o\))) # (!\regTestEnd[3]~input_o\ & (\regTestEnd[0]~input_o\ & (!\BancoReg|ram[5][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[5][12]~q\,
	datad => \BancoReg|ram[13][12]~q\,
	combout => \BancoReg|Mux83~0_combout\);

-- Location: LCCOMB_X85_Y50_N12
\BancoReg|Mux83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux83~1_combout\ = (\BancoReg|Mux83~0_combout\ & ((\regTestEnd[2]~input_o\ & (\BancoReg|ram[12][12]~q\)) # (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[8][12]~q\))))) # (!\BancoReg|Mux83~0_combout\ & (\regTestEnd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux83~0_combout\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[12][12]~q\,
	datad => \BancoReg|ram[8][12]~q\,
	combout => \BancoReg|Mux83~1_combout\);

-- Location: LCCOMB_X85_Y50_N28
\BancoReg|Mux83~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux83~2_combout\ = (\BancoReg|Mux83~0_combout\ & (((!\BancoReg|Mux83~1_combout\)) # (!\regTestEnd[0]~input_o\))) # (!\BancoReg|Mux83~0_combout\ & ((\regTestEnd[0]~input_o\) # ((\BancoReg|Mux83~1_combout\ & \BancoReg|ram[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux83~0_combout\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|Mux83~1_combout\,
	datad => \BancoReg|ram[4][12]~q\,
	combout => \BancoReg|Mux83~2_combout\);

-- Location: LCCOMB_X85_Y50_N30
\BancoReg|Mux83~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux83~3_combout\ = (\BancoReg|Mux83~1_combout\ & (!\regTestEnd[1]~input_o\ & ((\BancoReg|Mux83~2_combout\)))) # (!\BancoReg|Mux83~1_combout\ & (!\BancoReg|Mux83~2_combout\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|ram[0][12]~q\,
	datac => \BancoReg|Mux83~1_combout\,
	datad => \BancoReg|Mux83~2_combout\,
	combout => \BancoReg|Mux83~3_combout\);

-- Location: LCCOMB_X79_Y47_N22
\BancoReg|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux82~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[13][13]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][13]~q\,
	datab => \BancoReg|ram[13][13]~q\,
	datac => \regTestEnd[3]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux82~0_combout\);

-- Location: LCCOMB_X79_Y47_N28
\BancoReg|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux82~1_combout\ = (\regTestEnd[3]~input_o\ & ((\BancoReg|ram[8][13]~q\) # ((\regTestEnd[2]~input_o\)))) # (!\regTestEnd[3]~input_o\ & (((\BancoReg|ram[0][13]~q\ & !\regTestEnd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][13]~q\,
	datab => \BancoReg|ram[0][13]~q\,
	datac => \regTestEnd[3]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux82~1_combout\);

-- Location: LCCOMB_X80_Y47_N8
\BancoReg|Mux82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux82~2_combout\ = (\regTestEnd[2]~input_o\ & ((\BancoReg|Mux82~1_combout\ & (\BancoReg|ram[12][13]~q\)) # (!\BancoReg|Mux82~1_combout\ & ((\BancoReg|ram[4][13]~q\))))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|Mux82~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[12][13]~q\,
	datac => \BancoReg|ram[4][13]~q\,
	datad => \BancoReg|Mux82~1_combout\,
	combout => \BancoReg|Mux82~2_combout\);

-- Location: LCCOMB_X79_Y47_N14
\BancoReg|Mux82~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux82~3_combout\ = (\regTestEnd[1]~input_o\ & (((\regTestEnd[0]~input_o\)))) # (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\ & (\BancoReg|Mux82~0_combout\)) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|Mux82~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux82~0_combout\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|Mux82~2_combout\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux82~3_combout\);

-- Location: LCCOMB_X81_Y44_N30
\BancoReg|Mux82~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux82~4_combout\ = (\regTestEnd[1]~input_o\ & (!\regTestEnd[3]~input_o\ & (!\regTestEnd[2]~input_o\ & !\BancoReg|Mux82~3_combout\))) # (!\regTestEnd[1]~input_o\ & (((\BancoReg|Mux82~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \regTestEnd[1]~input_o\,
	datad => \BancoReg|Mux82~3_combout\,
	combout => \BancoReg|Mux82~4_combout\);

-- Location: LCCOMB_X83_Y50_N10
\BancoReg|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux81~0_combout\ = (\regTestEnd[0]~input_o\ & ((\regTestEnd[3]~input_o\ & ((!\BancoReg|ram[13][14]~q\))) # (!\regTestEnd[3]~input_o\ & (!\BancoReg|ram[5][14]~q\)))) # (!\regTestEnd[0]~input_o\ & (((\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \BancoReg|ram[5][14]~q\,
	datac => \BancoReg|ram[13][14]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux81~0_combout\);

-- Location: LCCOMB_X83_Y50_N20
\BancoReg|Mux81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux81~1_combout\ = (\regTestEnd[2]~input_o\ & (((\BancoReg|ram[12][14]~q\) # (!\BancoReg|Mux81~0_combout\)))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[8][14]~q\ & ((\BancoReg|Mux81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[8][14]~q\,
	datac => \BancoReg|ram[12][14]~q\,
	datad => \BancoReg|Mux81~0_combout\,
	combout => \BancoReg|Mux81~1_combout\);

-- Location: LCCOMB_X84_Y50_N30
\BancoReg|Mux81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux81~2_combout\ = (\BancoReg|Mux81~1_combout\ & ((\BancoReg|Mux81~0_combout\ & ((\regTestEnd[0]~input_o\))) # (!\BancoReg|Mux81~0_combout\ & (!\BancoReg|ram[4][14]~q\ & !\regTestEnd[0]~input_o\)))) # (!\BancoReg|Mux81~1_combout\ & 
-- ((\BancoReg|Mux81~0_combout\) # ((\regTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux81~1_combout\,
	datab => \BancoReg|Mux81~0_combout\,
	datac => \BancoReg|ram[4][14]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux81~2_combout\);

-- Location: LCCOMB_X83_Y50_N16
\BancoReg|Mux81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux81~3_combout\ = (!\BancoReg|Mux81~2_combout\ & ((\regTestEnd[1]~input_o\ & ((!\BancoReg|Mux81~1_combout\))) # (!\regTestEnd[1]~input_o\ & ((\BancoReg|ram[0][14]~q\) # (\BancoReg|Mux81~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|ram[0][14]~q\,
	datac => \BancoReg|Mux81~2_combout\,
	datad => \BancoReg|Mux81~1_combout\,
	combout => \BancoReg|Mux81~3_combout\);

-- Location: LCCOMB_X84_Y44_N12
\BancoReg|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux80~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[13][15]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[5][15]~q\,
	datac => \BancoReg|ram[13][15]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux80~0_combout\);

-- Location: LCCOMB_X81_Y44_N14
\BancoReg|Mux80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux80~1_combout\ = (\regTestEnd[2]~input_o\ & ((\BancoReg|ram[4][15]~q\) # ((\regTestEnd[3]~input_o\)))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|ram[0][15]~q\ & !\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[4][15]~q\,
	datac => \BancoReg|ram[0][15]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux80~1_combout\);

-- Location: LCCOMB_X81_Y44_N24
\BancoReg|Mux80~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux80~2_combout\ = (\regTestEnd[3]~input_o\ & ((\BancoReg|Mux80~1_combout\ & ((\BancoReg|ram[12][15]~q\))) # (!\BancoReg|Mux80~1_combout\ & (\BancoReg|ram[8][15]~q\)))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|Mux80~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux80~1_combout\,
	datac => \BancoReg|ram[8][15]~q\,
	datad => \BancoReg|ram[12][15]~q\,
	combout => \BancoReg|Mux80~2_combout\);

-- Location: LCCOMB_X81_Y44_N4
\BancoReg|Mux80~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux80~3_combout\ = (\regTestEnd[0]~input_o\ & (((\regTestEnd[1]~input_o\)))) # (!\regTestEnd[0]~input_o\ & ((\regTestEnd[1]~input_o\ & ((!\BancoReg|Mux94~5_combout\))) # (!\regTestEnd[1]~input_o\ & (\BancoReg|Mux80~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \BancoReg|Mux80~2_combout\,
	datac => \regTestEnd[1]~input_o\,
	datad => \BancoReg|Mux94~5_combout\,
	combout => \BancoReg|Mux80~3_combout\);

-- Location: LCCOMB_X84_Y44_N4
\BancoReg|Mux80~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux80~4_combout\ = (\BancoReg|Mux80~3_combout\ & ((!\regTestEnd[0]~input_o\))) # (!\BancoReg|Mux80~3_combout\ & (\BancoReg|Mux80~0_combout\ & \regTestEnd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BancoReg|Mux80~0_combout\,
	datac => \BancoReg|Mux80~3_combout\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux80~4_combout\);

-- Location: LCCOMB_X86_Y49_N10
\BancoReg|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux79~0_combout\ = (\regTestEnd[0]~input_o\ & ((\regTestEnd[3]~input_o\ & (!\BancoReg|ram[13][16]~q\)) # (!\regTestEnd[3]~input_o\ & ((!\BancoReg|ram[5][16]~q\))))) # (!\regTestEnd[0]~input_o\ & (\regTestEnd[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[13][16]~q\,
	datad => \BancoReg|ram[5][16]~q\,
	combout => \BancoReg|Mux79~0_combout\);

-- Location: LCCOMB_X86_Y49_N16
\BancoReg|Mux79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux79~1_combout\ = (\regTestEnd[2]~input_o\ & (((\BancoReg|ram[12][16]~q\) # (!\BancoReg|Mux79~0_combout\)))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[8][16]~q\ & ((\BancoReg|Mux79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[8][16]~q\,
	datac => \BancoReg|ram[12][16]~q\,
	datad => \BancoReg|Mux79~0_combout\,
	combout => \BancoReg|Mux79~1_combout\);

-- Location: LCCOMB_X86_Y49_N8
\BancoReg|Mux79~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux79~2_combout\ = (\regTestEnd[0]~input_o\ & (((!\BancoReg|Mux79~1_combout\) # (!\BancoReg|Mux79~0_combout\)))) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|Mux79~0_combout\) # ((\BancoReg|ram[4][16]~q\ & \BancoReg|Mux79~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][16]~q\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|Mux79~0_combout\,
	datad => \BancoReg|Mux79~1_combout\,
	combout => \BancoReg|Mux79~2_combout\);

-- Location: LCCOMB_X86_Y49_N2
\BancoReg|Mux79~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux79~3_combout\ = (\BancoReg|Mux79~2_combout\ & (((!\regTestEnd[1]~input_o\ & \BancoReg|Mux79~1_combout\)))) # (!\BancoReg|Mux79~2_combout\ & (!\BancoReg|Mux79~1_combout\ & ((\BancoReg|ram[0][16]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][16]~q\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|Mux79~2_combout\,
	datad => \BancoReg|Mux79~1_combout\,
	combout => \BancoReg|Mux79~3_combout\);

-- Location: LCCOMB_X81_Y44_N12
\BancoReg|Mux78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux78~1_combout\ = (\regTestEnd[2]~input_o\ & (((\regTestEnd[3]~input_o\)))) # (!\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[8][17]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[0][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[8][17]~q\,
	datac => \BancoReg|ram[0][17]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux78~1_combout\);

-- Location: LCCOMB_X81_Y44_N26
\BancoReg|Mux78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux78~2_combout\ = (\BancoReg|Mux78~1_combout\ & ((\BancoReg|ram[12][17]~q\) # ((!\regTestEnd[2]~input_o\)))) # (!\BancoReg|Mux78~1_combout\ & (((\regTestEnd[2]~input_o\ & \BancoReg|ram[4][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux78~1_combout\,
	datab => \BancoReg|ram[12][17]~q\,
	datac => \regTestEnd[2]~input_o\,
	datad => \BancoReg|ram[4][17]~q\,
	combout => \BancoReg|Mux78~2_combout\);

-- Location: LCCOMB_X81_Y45_N6
\BancoReg|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux78~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[13][17]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[5][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][17]~q\,
	datab => \regTestEnd[3]~input_o\,
	datac => \regTestEnd[2]~input_o\,
	datad => \BancoReg|ram[5][17]~q\,
	combout => \BancoReg|Mux78~0_combout\);

-- Location: LCCOMB_X89_Y47_N18
\BancoReg|Mux78~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux78~3_combout\ = (\regTestEnd[1]~input_o\ & (\regTestEnd[0]~input_o\)) # (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\ & ((\BancoReg|Mux78~0_combout\))) # (!\regTestEnd[0]~input_o\ & (\BancoReg|Mux78~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|Mux78~2_combout\,
	datad => \BancoReg|Mux78~0_combout\,
	combout => \BancoReg|Mux78~3_combout\);

-- Location: LCCOMB_X89_Y47_N28
\BancoReg|Mux78~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux78~4_combout\ = (\BancoReg|Mux78~3_combout\ & (((!\regTestEnd[1]~input_o\)))) # (!\BancoReg|Mux78~3_combout\ & (!\regTestEnd[3]~input_o\ & (\regTestEnd[1]~input_o\ & !\regTestEnd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|Mux78~3_combout\,
	datac => \regTestEnd[1]~input_o\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux78~4_combout\);

-- Location: LCCOMB_X82_Y48_N6
\BancoReg|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux77~0_combout\ = (\regTestEnd[0]~input_o\ & ((\regTestEnd[3]~input_o\ & (!\BancoReg|ram[13][18]~q\)) # (!\regTestEnd[3]~input_o\ & ((!\BancoReg|ram[5][18]~q\))))) # (!\regTestEnd[0]~input_o\ & (((\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][18]~q\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[5][18]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux77~0_combout\);

-- Location: LCCOMB_X82_Y48_N12
\BancoReg|Mux77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux77~1_combout\ = (\regTestEnd[2]~input_o\ & ((\BancoReg|ram[12][18]~q\) # ((!\BancoReg|Mux77~0_combout\)))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|ram[8][18]~q\ & \BancoReg|Mux77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][18]~q\,
	datab => \BancoReg|ram[8][18]~q\,
	datac => \regTestEnd[2]~input_o\,
	datad => \BancoReg|Mux77~0_combout\,
	combout => \BancoReg|Mux77~1_combout\);

-- Location: LCCOMB_X82_Y48_N30
\BancoReg|Mux77~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux77~2_combout\ = (\BancoReg|Mux77~1_combout\ & ((\regTestEnd[0]~input_o\ & ((\BancoReg|Mux77~0_combout\))) # (!\regTestEnd[0]~input_o\ & (!\BancoReg|ram[4][18]~q\ & !\BancoReg|Mux77~0_combout\)))) # (!\BancoReg|Mux77~1_combout\ & 
-- ((\regTestEnd[0]~input_o\) # ((\BancoReg|Mux77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux77~1_combout\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[4][18]~q\,
	datad => \BancoReg|Mux77~0_combout\,
	combout => \BancoReg|Mux77~2_combout\);

-- Location: LCCOMB_X83_Y50_N24
\BancoReg|Mux77~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux77~3_combout\ = (!\BancoReg|Mux77~2_combout\ & ((\regTestEnd[1]~input_o\ & ((!\BancoReg|Mux77~1_combout\))) # (!\regTestEnd[1]~input_o\ & ((\BancoReg|ram[0][18]~q\) # (\BancoReg|Mux77~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux77~2_combout\,
	datab => \BancoReg|ram[0][18]~q\,
	datac => \regTestEnd[1]~input_o\,
	datad => \BancoReg|Mux77~1_combout\,
	combout => \BancoReg|Mux77~3_combout\);

-- Location: LCCOMB_X84_Y44_N26
\BancoReg|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux76~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[13][19]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[5][19]~q\,
	datac => \BancoReg|ram[13][19]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux76~0_combout\);

-- Location: LCCOMB_X80_Y45_N26
\BancoReg|Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux76~1_combout\ = (\regTestEnd[3]~input_o\ & (\regTestEnd[2]~input_o\)) # (!\regTestEnd[3]~input_o\ & ((\regTestEnd[2]~input_o\ & (\BancoReg|ram[4][19]~q\)) # (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[0][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[4][19]~q\,
	datad => \BancoReg|ram[0][19]~q\,
	combout => \BancoReg|Mux76~1_combout\);

-- Location: LCCOMB_X84_Y44_N28
\BancoReg|Mux76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux76~2_combout\ = (\BancoReg|Mux76~1_combout\ & (((\BancoReg|ram[12][19]~q\) # (!\regTestEnd[3]~input_o\)))) # (!\BancoReg|Mux76~1_combout\ & (\BancoReg|ram[8][19]~q\ & ((\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][19]~q\,
	datab => \BancoReg|Mux76~1_combout\,
	datac => \BancoReg|ram[12][19]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux76~2_combout\);

-- Location: LCCOMB_X84_Y44_N14
\BancoReg|Mux76~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux76~3_combout\ = (\regTestEnd[1]~input_o\ & (((\regTestEnd[0]~input_o\)) # (!\BancoReg|Mux94~5_combout\))) # (!\regTestEnd[1]~input_o\ & (((\BancoReg|Mux76~2_combout\ & !\regTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux94~5_combout\,
	datab => \BancoReg|Mux76~2_combout\,
	datac => \regTestEnd[1]~input_o\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux76~3_combout\);

-- Location: LCCOMB_X84_Y44_N20
\BancoReg|Mux76~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux76~4_combout\ = (\BancoReg|Mux76~3_combout\ & ((!\regTestEnd[0]~input_o\))) # (!\BancoReg|Mux76~3_combout\ & (\BancoReg|Mux76~0_combout\ & \regTestEnd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux76~0_combout\,
	datac => \BancoReg|Mux76~3_combout\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux76~4_combout\);

-- Location: LCCOMB_X80_Y45_N4
\BancoReg|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux75~0_combout\ = (\regTestEnd[0]~input_o\ & ((\regTestEnd[3]~input_o\ & (!\BancoReg|ram[13][20]~q\)) # (!\regTestEnd[3]~input_o\ & ((!\BancoReg|ram[5][20]~q\))))) # (!\regTestEnd[0]~input_o\ & (((\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][20]~q\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[5][20]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux75~0_combout\);

-- Location: LCCOMB_X81_Y45_N28
\BancoReg|Mux75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux75~1_combout\ = (\regTestEnd[2]~input_o\ & (((\BancoReg|ram[12][20]~q\)) # (!\BancoReg|Mux75~0_combout\))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|Mux75~0_combout\ & (\BancoReg|ram[8][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|Mux75~0_combout\,
	datac => \BancoReg|ram[8][20]~q\,
	datad => \BancoReg|ram[12][20]~q\,
	combout => \BancoReg|Mux75~1_combout\);

-- Location: LCCOMB_X80_Y45_N6
\BancoReg|Mux75~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux75~2_combout\ = (\BancoReg|Mux75~0_combout\ & (((!\BancoReg|Mux75~1_combout\)) # (!\regTestEnd[0]~input_o\))) # (!\BancoReg|Mux75~0_combout\ & ((\regTestEnd[0]~input_o\) # ((\BancoReg|ram[4][20]~q\ & \BancoReg|Mux75~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux75~0_combout\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[4][20]~q\,
	datad => \BancoReg|Mux75~1_combout\,
	combout => \BancoReg|Mux75~2_combout\);

-- Location: LCCOMB_X80_Y45_N16
\BancoReg|Mux75~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux75~3_combout\ = (\BancoReg|Mux75~1_combout\ & (!\regTestEnd[1]~input_o\ & ((\BancoReg|Mux75~2_combout\)))) # (!\BancoReg|Mux75~1_combout\ & (!\BancoReg|Mux75~2_combout\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|Mux75~1_combout\,
	datac => \BancoReg|ram[0][20]~q\,
	datad => \BancoReg|Mux75~2_combout\,
	combout => \BancoReg|Mux75~3_combout\);

-- Location: LCCOMB_X83_Y44_N4
\BancoReg|Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux74~1_combout\ = (\regTestEnd[2]~input_o\ & (((\regTestEnd[3]~input_o\)))) # (!\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[8][21]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[0][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][21]~q\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[0][21]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux74~1_combout\);

-- Location: LCCOMB_X80_Y45_N18
\BancoReg|Mux74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux74~2_combout\ = (\BancoReg|Mux74~1_combout\ & (((\BancoReg|ram[12][21]~q\)) # (!\regTestEnd[2]~input_o\))) # (!\BancoReg|Mux74~1_combout\ & (\regTestEnd[2]~input_o\ & ((\BancoReg|ram[4][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux74~1_combout\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[12][21]~q\,
	datad => \BancoReg|ram[4][21]~q\,
	combout => \BancoReg|Mux74~2_combout\);

-- Location: LCCOMB_X80_Y46_N18
\BancoReg|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux74~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[13][21]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[5][21]~q\,
	datac => \BancoReg|ram[13][21]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux74~0_combout\);

-- Location: LCCOMB_X80_Y46_N4
\BancoReg|Mux74~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux74~3_combout\ = (\regTestEnd[0]~input_o\ & (((\BancoReg|Mux74~0_combout\) # (\regTestEnd[1]~input_o\)))) # (!\regTestEnd[0]~input_o\ & (\BancoReg|Mux74~2_combout\ & ((!\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux74~2_combout\,
	datab => \BancoReg|Mux74~0_combout\,
	datac => \regTestEnd[0]~input_o\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux74~3_combout\);

-- Location: LCCOMB_X86_Y49_N24
\BancoReg|Mux74~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux74~4_combout\ = (\BancoReg|Mux74~3_combout\ & (((!\regTestEnd[1]~input_o\)))) # (!\BancoReg|Mux74~3_combout\ & (!\regTestEnd[3]~input_o\ & (!\regTestEnd[2]~input_o\ & \regTestEnd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux74~3_combout\,
	datab => \regTestEnd[3]~input_o\,
	datac => \regTestEnd[2]~input_o\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux74~4_combout\);

-- Location: LCCOMB_X85_Y49_N20
\BancoReg|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux73~0_combout\ = (\regTestEnd[3]~input_o\ & (((!\regTestEnd[0]~input_o\)) # (!\BancoReg|ram[13][22]~q\))) # (!\regTestEnd[3]~input_o\ & (((!\BancoReg|ram[5][22]~q\ & \regTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][22]~q\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[5][22]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux73~0_combout\);

-- Location: LCCOMB_X85_Y49_N14
\BancoReg|Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux73~1_combout\ = (\BancoReg|Mux73~0_combout\ & ((\regTestEnd[2]~input_o\ & (\BancoReg|ram[12][22]~q\)) # (!\regTestEnd[2]~input_o\ & ((\BancoReg|ram[8][22]~q\))))) # (!\BancoReg|Mux73~0_combout\ & (\regTestEnd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux73~0_combout\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[12][22]~q\,
	datad => \BancoReg|ram[8][22]~q\,
	combout => \BancoReg|Mux73~1_combout\);

-- Location: LCCOMB_X85_Y49_N6
\BancoReg|Mux73~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux73~2_combout\ = (\BancoReg|Mux73~0_combout\ & (((\regTestEnd[0]~input_o\)) # (!\BancoReg|Mux73~1_combout\))) # (!\BancoReg|Mux73~0_combout\ & ((\BancoReg|Mux73~1_combout\ & (!\BancoReg|ram[4][22]~q\ & !\regTestEnd[0]~input_o\)) # 
-- (!\BancoReg|Mux73~1_combout\ & ((\regTestEnd[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux73~0_combout\,
	datab => \BancoReg|Mux73~1_combout\,
	datac => \BancoReg|ram[4][22]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux73~2_combout\);

-- Location: LCCOMB_X85_Y49_N8
\BancoReg|Mux73~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux73~3_combout\ = (!\BancoReg|Mux73~2_combout\ & ((\regTestEnd[1]~input_o\ & ((!\BancoReg|Mux73~1_combout\))) # (!\regTestEnd[1]~input_o\ & ((\BancoReg|ram[0][22]~q\) # (\BancoReg|Mux73~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux73~2_combout\,
	datab => \BancoReg|ram[0][22]~q\,
	datac => \regTestEnd[1]~input_o\,
	datad => \BancoReg|Mux73~1_combout\,
	combout => \BancoReg|Mux73~3_combout\);

-- Location: LCCOMB_X80_Y45_N22
\BancoReg|Mux72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux72~1_combout\ = (\regTestEnd[3]~input_o\ & (((\regTestEnd[2]~input_o\)))) # (!\regTestEnd[3]~input_o\ & ((\regTestEnd[2]~input_o\ & ((\BancoReg|ram[4][23]~q\))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[0][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[0][23]~q\,
	datac => \BancoReg|ram[4][23]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux72~1_combout\);

-- Location: LCCOMB_X80_Y46_N28
\BancoReg|Mux72~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux72~2_combout\ = (\regTestEnd[3]~input_o\ & ((\BancoReg|Mux72~1_combout\ & ((\BancoReg|ram[12][23]~q\))) # (!\BancoReg|Mux72~1_combout\ & (\BancoReg|ram[8][23]~q\)))) # (!\regTestEnd[3]~input_o\ & (((\BancoReg|Mux72~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][23]~q\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|Mux72~1_combout\,
	datad => \BancoReg|ram[12][23]~q\,
	combout => \BancoReg|Mux72~2_combout\);

-- Location: LCCOMB_X80_Y46_N30
\BancoReg|Mux72~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux72~3_combout\ = (\regTestEnd[1]~input_o\ & (((\regTestEnd[0]~input_o\) # (!\BancoReg|Mux94~5_combout\)))) # (!\regTestEnd[1]~input_o\ & (\BancoReg|Mux72~2_combout\ & (!\regTestEnd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|Mux72~2_combout\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|Mux94~5_combout\,
	combout => \BancoReg|Mux72~3_combout\);

-- Location: LCCOMB_X80_Y46_N26
\BancoReg|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux72~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[13][23]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[5][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[13][23]~q\,
	datad => \BancoReg|ram[5][23]~q\,
	combout => \BancoReg|Mux72~0_combout\);

-- Location: LCCOMB_X79_Y46_N16
\BancoReg|Mux72~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux72~4_combout\ = (\BancoReg|Mux72~3_combout\ & (!\regTestEnd[0]~input_o\)) # (!\BancoReg|Mux72~3_combout\ & (\regTestEnd[0]~input_o\ & \BancoReg|Mux72~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux72~3_combout\,
	datab => \regTestEnd[0]~input_o\,
	datad => \BancoReg|Mux72~0_combout\,
	combout => \BancoReg|Mux72~4_combout\);

-- Location: LCCOMB_X84_Y50_N20
\BancoReg|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux71~0_combout\ = (\regTestEnd[3]~input_o\ & (((!\regTestEnd[0]~input_o\)) # (!\BancoReg|ram[13][24]~q\))) # (!\regTestEnd[3]~input_o\ & (((!\BancoReg|ram[5][24]~q\ & \regTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[13][24]~q\,
	datac => \BancoReg|ram[5][24]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux71~0_combout\);

-- Location: LCCOMB_X85_Y49_N2
\BancoReg|Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux71~1_combout\ = (\regTestEnd[2]~input_o\ & (((\BancoReg|ram[12][24]~q\) # (!\BancoReg|Mux71~0_combout\)))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[8][24]~q\ & (\BancoReg|Mux71~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[8][24]~q\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|Mux71~0_combout\,
	datad => \BancoReg|ram[12][24]~q\,
	combout => \BancoReg|Mux71~1_combout\);

-- Location: LCCOMB_X85_Y49_N16
\BancoReg|Mux71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux71~2_combout\ = (\BancoReg|Mux71~0_combout\ & (((!\regTestEnd[0]~input_o\) # (!\BancoReg|Mux71~1_combout\)))) # (!\BancoReg|Mux71~0_combout\ & ((\regTestEnd[0]~input_o\) # ((\BancoReg|ram[4][24]~q\ & \BancoReg|Mux71~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][24]~q\,
	datab => \BancoReg|Mux71~0_combout\,
	datac => \BancoReg|Mux71~1_combout\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux71~2_combout\);

-- Location: LCCOMB_X89_Y47_N6
\BancoReg|Mux71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux71~3_combout\ = (\BancoReg|Mux71~1_combout\ & (!\regTestEnd[1]~input_o\ & ((\BancoReg|Mux71~2_combout\)))) # (!\BancoReg|Mux71~1_combout\ & (!\BancoReg|Mux71~2_combout\ & ((\regTestEnd[1]~input_o\) # (\BancoReg|ram[0][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|ram[0][24]~q\,
	datac => \BancoReg|Mux71~1_combout\,
	datad => \BancoReg|Mux71~2_combout\,
	combout => \BancoReg|Mux71~3_combout\);

-- Location: LCCOMB_X80_Y46_N16
\BancoReg|Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux70~1_combout\ = (\regTestEnd[2]~input_o\ & (\regTestEnd[3]~input_o\)) # (!\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[8][25]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[0][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[0][25]~q\,
	datad => \BancoReg|ram[8][25]~q\,
	combout => \BancoReg|Mux70~1_combout\);

-- Location: LCCOMB_X80_Y46_N14
\BancoReg|Mux70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux70~2_combout\ = (\regTestEnd[2]~input_o\ & ((\BancoReg|Mux70~1_combout\ & ((\BancoReg|ram[12][25]~q\))) # (!\BancoReg|Mux70~1_combout\ & (\BancoReg|ram[4][25]~q\)))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|Mux70~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][25]~q\,
	datab => \BancoReg|ram[12][25]~q\,
	datac => \regTestEnd[2]~input_o\,
	datad => \BancoReg|Mux70~1_combout\,
	combout => \BancoReg|Mux70~2_combout\);

-- Location: LCCOMB_X80_Y46_N6
\BancoReg|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux70~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[13][25]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][25]~q\,
	datab => \regTestEnd[3]~input_o\,
	datac => \regTestEnd[2]~input_o\,
	datad => \BancoReg|ram[13][25]~q\,
	combout => \BancoReg|Mux70~0_combout\);

-- Location: LCCOMB_X80_Y46_N20
\BancoReg|Mux70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux70~3_combout\ = (\regTestEnd[1]~input_o\ & (((\regTestEnd[0]~input_o\)))) # (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\ & ((\BancoReg|Mux70~0_combout\))) # (!\regTestEnd[0]~input_o\ & (\BancoReg|Mux70~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \BancoReg|Mux70~2_combout\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|Mux70~0_combout\,
	combout => \BancoReg|Mux70~3_combout\);

-- Location: LCCOMB_X80_Y46_N22
\BancoReg|Mux70~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux70~4_combout\ = (\regTestEnd[1]~input_o\ & (!\regTestEnd[3]~input_o\ & (!\regTestEnd[2]~input_o\ & !\BancoReg|Mux70~3_combout\))) # (!\regTestEnd[1]~input_o\ & (((\BancoReg|Mux70~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[3]~input_o\,
	datac => \regTestEnd[2]~input_o\,
	datad => \BancoReg|Mux70~3_combout\,
	combout => \BancoReg|Mux70~4_combout\);

-- Location: LCCOMB_X83_Y50_N28
\BancoReg|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux69~0_combout\ = (\regTestEnd[0]~input_o\ & ((\regTestEnd[3]~input_o\ & ((!\BancoReg|ram[13][26]~q\))) # (!\regTestEnd[3]~input_o\ & (!\BancoReg|ram[5][26]~q\)))) # (!\regTestEnd[0]~input_o\ & (((\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[0]~input_o\,
	datab => \BancoReg|ram[5][26]~q\,
	datac => \BancoReg|ram[13][26]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux69~0_combout\);

-- Location: LCCOMB_X82_Y49_N22
\BancoReg|Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux69~1_combout\ = (\BancoReg|Mux69~0_combout\ & ((\regTestEnd[2]~input_o\ & ((\BancoReg|ram[12][26]~q\))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[8][26]~q\)))) # (!\BancoReg|Mux69~0_combout\ & (\regTestEnd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux69~0_combout\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[8][26]~q\,
	datad => \BancoReg|ram[12][26]~q\,
	combout => \BancoReg|Mux69~1_combout\);

-- Location: LCCOMB_X82_Y49_N12
\BancoReg|Mux69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux69~2_combout\ = (\regTestEnd[0]~input_o\ & (((\BancoReg|Mux69~0_combout\) # (!\BancoReg|Mux69~1_combout\)))) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|Mux69~1_combout\ & (!\BancoReg|ram[4][26]~q\ & !\BancoReg|Mux69~0_combout\)) # 
-- (!\BancoReg|Mux69~1_combout\ & ((\BancoReg|Mux69~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[4][26]~q\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|Mux69~1_combout\,
	datad => \BancoReg|Mux69~0_combout\,
	combout => \BancoReg|Mux69~2_combout\);

-- Location: LCCOMB_X87_Y48_N10
\BancoReg|Mux69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux69~3_combout\ = (!\BancoReg|Mux69~2_combout\ & ((\BancoReg|Mux69~1_combout\ & ((!\regTestEnd[1]~input_o\))) # (!\BancoReg|Mux69~1_combout\ & ((\BancoReg|ram[0][26]~q\) # (\regTestEnd[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux69~2_combout\,
	datab => \BancoReg|ram[0][26]~q\,
	datac => \BancoReg|Mux69~1_combout\,
	datad => \regTestEnd[1]~input_o\,
	combout => \BancoReg|Mux69~3_combout\);

-- Location: LCCOMB_X87_Y48_N30
\BancoReg|Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux68~1_combout\ = (\regTestEnd[2]~input_o\ & (((\regTestEnd[3]~input_o\) # (\BancoReg|ram[4][27]~q\)))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|ram[0][27]~q\ & (!\regTestEnd[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[0][27]~q\,
	datac => \regTestEnd[3]~input_o\,
	datad => \BancoReg|ram[4][27]~q\,
	combout => \BancoReg|Mux68~1_combout\);

-- Location: LCCOMB_X87_Y48_N16
\BancoReg|Mux68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux68~2_combout\ = (\regTestEnd[3]~input_o\ & ((\BancoReg|Mux68~1_combout\ & ((\BancoReg|ram[12][27]~q\))) # (!\BancoReg|Mux68~1_combout\ & (\BancoReg|ram[8][27]~q\)))) # (!\regTestEnd[3]~input_o\ & (((\BancoReg|Mux68~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \BancoReg|ram[8][27]~q\,
	datac => \BancoReg|Mux68~1_combout\,
	datad => \BancoReg|ram[12][27]~q\,
	combout => \BancoReg|Mux68~2_combout\);

-- Location: LCCOMB_X87_Y48_N26
\BancoReg|Mux68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux68~3_combout\ = (\regTestEnd[1]~input_o\ & (((\regTestEnd[0]~input_o\)) # (!\BancoReg|Mux94~5_combout\))) # (!\regTestEnd[1]~input_o\ & (((!\regTestEnd[0]~input_o\ & \BancoReg|Mux68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux94~5_combout\,
	datab => \regTestEnd[1]~input_o\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|Mux68~2_combout\,
	combout => \BancoReg|Mux68~3_combout\);

-- Location: LCCOMB_X87_Y48_N8
\BancoReg|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux68~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[13][27]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[5][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[3]~input_o\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[13][27]~q\,
	datad => \BancoReg|ram[5][27]~q\,
	combout => \BancoReg|Mux68~0_combout\);

-- Location: LCCOMB_X87_Y48_N12
\BancoReg|Mux68~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux68~4_combout\ = (\BancoReg|Mux68~3_combout\ & (!\regTestEnd[0]~input_o\)) # (!\BancoReg|Mux68~3_combout\ & (\regTestEnd[0]~input_o\ & \BancoReg|Mux68~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux68~3_combout\,
	datac => \regTestEnd[0]~input_o\,
	datad => \BancoReg|Mux68~0_combout\,
	combout => \BancoReg|Mux68~4_combout\);

-- Location: LCCOMB_X86_Y46_N0
\BancoReg|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux67~0_combout\ = (\regTestEnd[3]~input_o\ & (((!\regTestEnd[0]~input_o\)) # (!\BancoReg|ram[13][28]~q\))) # (!\regTestEnd[3]~input_o\ & (((!\BancoReg|ram[5][28]~q\ & \regTestEnd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][28]~q\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[5][28]~q\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux67~0_combout\);

-- Location: LCCOMB_X86_Y46_N8
\BancoReg|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux67~1_combout\ = (\regTestEnd[2]~input_o\ & ((\BancoReg|ram[12][28]~q\) # ((!\BancoReg|Mux67~0_combout\)))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|ram[8][28]~q\ & \BancoReg|Mux67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[12][28]~q\,
	datab => \BancoReg|ram[8][28]~q\,
	datac => \regTestEnd[2]~input_o\,
	datad => \BancoReg|Mux67~0_combout\,
	combout => \BancoReg|Mux67~1_combout\);

-- Location: LCCOMB_X87_Y46_N28
\BancoReg|Mux67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux67~2_combout\ = (\BancoReg|Mux67~0_combout\ & (((!\BancoReg|Mux67~1_combout\)) # (!\regTestEnd[0]~input_o\))) # (!\BancoReg|Mux67~0_combout\ & ((\regTestEnd[0]~input_o\) # ((\BancoReg|ram[4][28]~q\ & \BancoReg|Mux67~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux67~0_combout\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|ram[4][28]~q\,
	datad => \BancoReg|Mux67~1_combout\,
	combout => \BancoReg|Mux67~2_combout\);

-- Location: LCCOMB_X87_Y46_N30
\BancoReg|Mux67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux67~3_combout\ = (\BancoReg|Mux67~2_combout\ & (((!\regTestEnd[1]~input_o\ & \BancoReg|Mux67~1_combout\)))) # (!\BancoReg|Mux67~2_combout\ & (!\BancoReg|Mux67~1_combout\ & ((\BancoReg|ram[0][28]~q\) # (\regTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][28]~q\,
	datab => \BancoReg|Mux67~2_combout\,
	datac => \regTestEnd[1]~input_o\,
	datad => \BancoReg|Mux67~1_combout\,
	combout => \BancoReg|Mux67~3_combout\);

-- Location: LCCOMB_X79_Y47_N16
\BancoReg|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux66~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & (\BancoReg|ram[13][29]~q\)) # (!\regTestEnd[3]~input_o\ & ((\BancoReg|ram[5][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[13][29]~q\,
	datad => \BancoReg|ram[5][29]~q\,
	combout => \BancoReg|Mux66~0_combout\);

-- Location: LCCOMB_X79_Y47_N18
\BancoReg|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux66~1_combout\ = (\regTestEnd[3]~input_o\ & (((\BancoReg|ram[8][29]~q\) # (\regTestEnd[2]~input_o\)))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[0][29]~q\ & ((!\regTestEnd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[0][29]~q\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[8][29]~q\,
	datad => \regTestEnd[2]~input_o\,
	combout => \BancoReg|Mux66~1_combout\);

-- Location: LCCOMB_X79_Y47_N8
\BancoReg|Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux66~2_combout\ = (\regTestEnd[2]~input_o\ & ((\BancoReg|Mux66~1_combout\ & ((\BancoReg|ram[12][29]~q\))) # (!\BancoReg|Mux66~1_combout\ & (\BancoReg|ram[4][29]~q\)))) # (!\regTestEnd[2]~input_o\ & (((\BancoReg|Mux66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|ram[4][29]~q\,
	datac => \BancoReg|ram[12][29]~q\,
	datad => \BancoReg|Mux66~1_combout\,
	combout => \BancoReg|Mux66~2_combout\);

-- Location: LCCOMB_X79_Y47_N10
\BancoReg|Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux66~3_combout\ = (\regTestEnd[1]~input_o\ & (((\regTestEnd[0]~input_o\)))) # (!\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\ & (\BancoReg|Mux66~0_combout\)) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|Mux66~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux66~0_combout\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|Mux66~2_combout\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux66~3_combout\);

-- Location: LCCOMB_X79_Y47_N20
\BancoReg|Mux66~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux66~4_combout\ = (\regTestEnd[1]~input_o\ & (!\regTestEnd[2]~input_o\ & (!\regTestEnd[3]~input_o\ & !\BancoReg|Mux66~3_combout\))) # (!\regTestEnd[1]~input_o\ & (((\BancoReg|Mux66~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \regTestEnd[1]~input_o\,
	datac => \regTestEnd[3]~input_o\,
	datad => \BancoReg|Mux66~3_combout\,
	combout => \BancoReg|Mux66~4_combout\);

-- Location: LCCOMB_X86_Y49_N4
\BancoReg|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux65~0_combout\ = (\regTestEnd[0]~input_o\ & ((\regTestEnd[3]~input_o\ & (!\BancoReg|ram[13][30]~q\)) # (!\regTestEnd[3]~input_o\ & ((!\BancoReg|ram[5][30]~q\))))) # (!\regTestEnd[0]~input_o\ & (((\regTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[13][30]~q\,
	datab => \BancoReg|ram[5][30]~q\,
	datac => \regTestEnd[0]~input_o\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux65~0_combout\);

-- Location: LCCOMB_X86_Y49_N14
\BancoReg|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux65~1_combout\ = (\regTestEnd[2]~input_o\ & (((\BancoReg|ram[12][30]~q\)) # (!\BancoReg|Mux65~0_combout\))) # (!\regTestEnd[2]~input_o\ & (\BancoReg|Mux65~0_combout\ & ((\BancoReg|ram[8][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \BancoReg|Mux65~0_combout\,
	datac => \BancoReg|ram[12][30]~q\,
	datad => \BancoReg|ram[8][30]~q\,
	combout => \BancoReg|Mux65~1_combout\);

-- Location: LCCOMB_X85_Y49_N10
\BancoReg|Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux65~2_combout\ = (\BancoReg|Mux65~0_combout\ & (((\regTestEnd[0]~input_o\) # (!\BancoReg|Mux65~1_combout\)))) # (!\BancoReg|Mux65~0_combout\ & ((\BancoReg|Mux65~1_combout\ & (!\BancoReg|ram[4][30]~q\ & !\regTestEnd[0]~input_o\)) # 
-- (!\BancoReg|Mux65~1_combout\ & ((\regTestEnd[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux65~0_combout\,
	datab => \BancoReg|ram[4][30]~q\,
	datac => \BancoReg|Mux65~1_combout\,
	datad => \regTestEnd[0]~input_o\,
	combout => \BancoReg|Mux65~2_combout\);

-- Location: LCCOMB_X85_Y49_N4
\BancoReg|Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux65~3_combout\ = (!\BancoReg|Mux65~2_combout\ & ((\regTestEnd[1]~input_o\ & (!\BancoReg|Mux65~1_combout\)) # (!\regTestEnd[1]~input_o\ & ((\BancoReg|Mux65~1_combout\) # (\BancoReg|ram[0][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux65~2_combout\,
	datab => \regTestEnd[1]~input_o\,
	datac => \BancoReg|Mux65~1_combout\,
	datad => \BancoReg|ram[0][30]~q\,
	combout => \BancoReg|Mux65~3_combout\);

-- Location: LCCOMB_X80_Y45_N30
\BancoReg|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux64~0_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\ & ((\BancoReg|ram[13][31]~q\))) # (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[5][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|ram[5][31]~q\,
	datab => \regTestEnd[2]~input_o\,
	datac => \BancoReg|ram[13][31]~q\,
	datad => \regTestEnd[3]~input_o\,
	combout => \BancoReg|Mux64~0_combout\);

-- Location: LCCOMB_X81_Y45_N10
\BancoReg|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux64~1_combout\ = (\regTestEnd[2]~input_o\ & ((\regTestEnd[3]~input_o\) # ((\BancoReg|ram[4][31]~q\)))) # (!\regTestEnd[2]~input_o\ & (!\regTestEnd[3]~input_o\ & (\BancoReg|ram[0][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[2]~input_o\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[0][31]~q\,
	datad => \BancoReg|ram[4][31]~q\,
	combout => \BancoReg|Mux64~1_combout\);

-- Location: LCCOMB_X81_Y45_N4
\BancoReg|Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux64~2_combout\ = (\BancoReg|Mux64~1_combout\ & (((\BancoReg|ram[12][31]~q\)) # (!\regTestEnd[3]~input_o\))) # (!\BancoReg|Mux64~1_combout\ & (\regTestEnd[3]~input_o\ & (\BancoReg|ram[8][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux64~1_combout\,
	datab => \regTestEnd[3]~input_o\,
	datac => \BancoReg|ram[8][31]~q\,
	datad => \BancoReg|ram[12][31]~q\,
	combout => \BancoReg|Mux64~2_combout\);

-- Location: LCCOMB_X80_Y45_N10
\BancoReg|Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux64~3_combout\ = (\regTestEnd[1]~input_o\ & ((\regTestEnd[0]~input_o\) # ((!\BancoReg|Mux94~5_combout\)))) # (!\regTestEnd[1]~input_o\ & (!\regTestEnd[0]~input_o\ & ((\BancoReg|Mux64~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regTestEnd[1]~input_o\,
	datab => \regTestEnd[0]~input_o\,
	datac => \BancoReg|Mux94~5_combout\,
	datad => \BancoReg|Mux64~2_combout\,
	combout => \BancoReg|Mux64~3_combout\);

-- Location: LCCOMB_X80_Y45_N24
\BancoReg|Mux64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux64~4_combout\ = (\regTestEnd[0]~input_o\ & (\BancoReg|Mux64~0_combout\ & !\BancoReg|Mux64~3_combout\)) # (!\regTestEnd[0]~input_o\ & ((\BancoReg|Mux64~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoReg|Mux64~0_combout\,
	datab => \regTestEnd[0]~input_o\,
	datad => \BancoReg|Mux64~3_combout\,
	combout => \BancoReg|Mux64~4_combout\);

-- Location: IOIBUF_X7_Y0_N8
\memTestEnd[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(2),
	o => \memTestEnd[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\memTestEnd[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(0),
	o => \memTestEnd[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\memTestEnd[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(1),
	o => \memTestEnd[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\memTestEnd[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(3),
	o => \memTestEnd[3]~input_o\);

-- Location: LCCOMB_X4_Y1_N12
\MemDados|ram~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~549_combout\ = (!\memTestEnd[3]~input_o\ & ((\memTestEnd[2]~input_o\ & (!\memTestEnd[0]~input_o\)) # (!\memTestEnd[2]~input_o\ & ((\memTestEnd[0]~input_o\) # (\memTestEnd[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~549_combout\);

-- Location: LCCOMB_X4_Y1_N6
\MemDados|ram~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~550_combout\ = (\memTestEnd[2]~input_o\ & (!\memTestEnd[3]~input_o\ & (\memTestEnd[0]~input_o\ $ (\memTestEnd[1]~input_o\)))) # (!\memTestEnd[2]~input_o\ & (((!\memTestEnd[1]~input_o\ & \memTestEnd[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~550_combout\);

-- Location: LCCOMB_X4_Y1_N24
\MemDados|ram~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~551_combout\ = (\memTestEnd[2]~input_o\ & (!\memTestEnd[3]~input_o\ & ((\memTestEnd[0]~input_o\) # (\memTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~551_combout\);

-- Location: LCCOMB_X4_Y1_N18
\MemDados|ram~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~552_combout\ = (!\memTestEnd[3]~input_o\ & ((\memTestEnd[2]~input_o\ & (\memTestEnd[0]~input_o\ $ (\memTestEnd[1]~input_o\))) # (!\memTestEnd[2]~input_o\ & (\memTestEnd[0]~input_o\ & \memTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~552_combout\);

-- Location: LCCOMB_X4_Y1_N28
\MemDados|ram~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~553_combout\ = (\memTestEnd[0]~input_o\ & (!\memTestEnd[3]~input_o\ & (\memTestEnd[2]~input_o\ $ (\memTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~553_combout\);

-- Location: LCCOMB_X4_Y1_N14
\MemDados|ram~554\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~554_combout\ = (\memTestEnd[2]~input_o\ & (!\memTestEnd[0]~input_o\ & (\memTestEnd[1]~input_o\ & !\memTestEnd[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~554_combout\);

-- Location: LCCOMB_X4_Y1_N4
\MemDados|ram~555\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~555_combout\ = (\memTestEnd[2]~input_o\) # ((\memTestEnd[0]~input_o\) # ((\memTestEnd[1]~input_o\) # (\memTestEnd[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~555_combout\);

-- Location: LCCOMB_X4_Y1_N26
\MemDados|ram~556\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~556_combout\ = (!\memTestEnd[2]~input_o\ & (!\memTestEnd[3]~input_o\ & (\memTestEnd[0]~input_o\ $ (\memTestEnd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~556_combout\);

-- Location: LCCOMB_X4_Y1_N0
\MemDados|ram~557\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~557_combout\ = (\memTestEnd[2]~input_o\) # (((\memTestEnd[1]~input_o\) # (\memTestEnd[3]~input_o\)) # (!\memTestEnd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~557_combout\);

-- Location: LCCOMB_X4_Y1_N22
\MemDados|ram~558\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~558_combout\ = (!\memTestEnd[2]~input_o\ & (!\memTestEnd[0]~input_o\ & (\memTestEnd[1]~input_o\ & !\memTestEnd[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~558_combout\);

-- Location: LCCOMB_X4_Y1_N20
\MemDados|ram~559\ : cycloneive_lcell_comb
-- Equation(s):
-- \MemDados|ram~559_combout\ = (\memTestEnd[1]~input_o\) # ((\memTestEnd[3]~input_o\) # (\memTestEnd[2]~input_o\ $ (!\memTestEnd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memTestEnd[2]~input_o\,
	datab => \memTestEnd[0]~input_o\,
	datac => \memTestEnd[1]~input_o\,
	datad => \memTestEnd[3]~input_o\,
	combout => \MemDados|ram~559_combout\);

-- Location: LCCOMB_X88_Y47_N12
\BancoReg|Mux62~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoReg|Mux62~6_combout\ = (\InstMem|ram~553_combout\ & (\BancoReg|Mux62~4_combout\)) # (!\InstMem|ram~553_combout\ & ((\BancoReg|Mux62~4_combout\ & (\InstMem|ram~554_combout\)) # (!\BancoReg|Mux62~4_combout\ & (!\InstMem|ram~554_combout\ & 
-- \BancoReg|Mux62~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~553_combout\,
	datab => \BancoReg|Mux62~4_combout\,
	datac => \InstMem|ram~554_combout\,
	datad => \BancoReg|Mux62~5_combout\,
	combout => \BancoReg|Mux62~6_combout\);

-- Location: LCCOMB_X92_Y46_N8
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

-- Location: LCCOMB_X91_Y46_N8
\AdderBEQ|tempAdd[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[4]~8_combout\ = (\AdderPC|tempAdd[4]~8_combout\ & (\AdderBEQ|tempAdd[3]~7\ $ (GND))) # (!\AdderPC|tempAdd[4]~8_combout\ & (!\AdderBEQ|tempAdd[3]~7\ & VCC))
-- \AdderBEQ|tempAdd[4]~9\ = CARRY((\AdderPC|tempAdd[4]~8_combout\ & !\AdderBEQ|tempAdd[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[4]~8_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[3]~7\,
	combout => \AdderBEQ|tempAdd[4]~8_combout\,
	cout => \AdderBEQ|tempAdd[4]~9\);

-- Location: LCCOMB_X90_Y45_N28
\PC|DOUT[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[4]~0_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[4]~8_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[4]~8_combout\,
	datab => \AdderPC|tempAdd[4]~8_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[4]~0_combout\);

-- Location: FF_X90_Y45_N29
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[4]~0_combout\,
	asdata => \InstMem|ram~558_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LCCOMB_X92_Y46_N10
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

-- Location: LCCOMB_X86_Y47_N26
\InstMem|ram~561\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~561_combout\ = (!\PC|DOUT\(3) & ((\PC|DOUT\(2) & (\PC|DOUT\(0) $ (\PC|DOUT\(1)))) # (!\PC|DOUT\(2) & (\PC|DOUT\(0) & \PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datab => \PC|DOUT\(2),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(1),
	combout => \InstMem|ram~561_combout\);

-- Location: LCCOMB_X91_Y46_N10
\AdderBEQ|tempAdd[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[5]~10_combout\ = (\InstMem|ram~561_combout\ & ((\AdderPC|tempAdd[5]~10_combout\ & (\AdderBEQ|tempAdd[4]~9\ & VCC)) # (!\AdderPC|tempAdd[5]~10_combout\ & (!\AdderBEQ|tempAdd[4]~9\)))) # (!\InstMem|ram~561_combout\ & 
-- ((\AdderPC|tempAdd[5]~10_combout\ & (!\AdderBEQ|tempAdd[4]~9\)) # (!\AdderPC|tempAdd[5]~10_combout\ & ((\AdderBEQ|tempAdd[4]~9\) # (GND)))))
-- \AdderBEQ|tempAdd[5]~11\ = CARRY((\InstMem|ram~561_combout\ & (!\AdderPC|tempAdd[5]~10_combout\ & !\AdderBEQ|tempAdd[4]~9\)) # (!\InstMem|ram~561_combout\ & ((!\AdderBEQ|tempAdd[4]~9\) # (!\AdderPC|tempAdd[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~561_combout\,
	datab => \AdderPC|tempAdd[5]~10_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[4]~9\,
	combout => \AdderBEQ|tempAdd[5]~10_combout\,
	cout => \AdderBEQ|tempAdd[5]~11\);

-- Location: LCCOMB_X90_Y45_N18
\MuxJUMP|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[5]~4_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[5]~10_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux0~0_combout\,
	datab => \AdderPC|tempAdd[5]~10_combout\,
	datac => \AdderBEQ|tempAdd[5]~10_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[5]~4_combout\);

-- Location: FF_X90_Y45_N19
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LCCOMB_X92_Y46_N12
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

-- Location: LCCOMB_X90_Y45_N12
\InstMem|ram~562\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~562_combout\ = ((\PC|DOUT\(3)) # (\PC|DOUT\(2) $ (!\PC|DOUT\(1)))) # (!\PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(0),
	datab => \PC|DOUT\(2),
	datac => \PC|DOUT\(1),
	datad => \PC|DOUT\(3),
	combout => \InstMem|ram~562_combout\);

-- Location: LCCOMB_X91_Y46_N12
\AdderBEQ|tempAdd[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[6]~12_combout\ = ((\AdderPC|tempAdd[6]~12_combout\ $ (\InstMem|ram~562_combout\ $ (\AdderBEQ|tempAdd[5]~11\)))) # (GND)
-- \AdderBEQ|tempAdd[6]~13\ = CARRY((\AdderPC|tempAdd[6]~12_combout\ & ((!\AdderBEQ|tempAdd[5]~11\) # (!\InstMem|ram~562_combout\))) # (!\AdderPC|tempAdd[6]~12_combout\ & (!\InstMem|ram~562_combout\ & !\AdderBEQ|tempAdd[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[6]~12_combout\,
	datab => \InstMem|ram~562_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[5]~11\,
	combout => \AdderBEQ|tempAdd[6]~12_combout\,
	cout => \AdderBEQ|tempAdd[6]~13\);

-- Location: LCCOMB_X90_Y45_N22
\PC|DOUT[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[6]~1_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[6]~12_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[6]~12_combout\,
	datab => \AdderPC|tempAdd[6]~12_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[6]~1_combout\);

-- Location: FF_X90_Y45_N23
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[6]~1_combout\,
	asdata => \InstMem|ram~559_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LCCOMB_X86_Y47_N12
\InstMem|ram~563\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~563_combout\ = (!\PC|DOUT\(3) & (\PC|DOUT\(1) & (!\PC|DOUT\(0) & \PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(3),
	datab => \PC|DOUT\(1),
	datac => \PC|DOUT\(0),
	datad => \PC|DOUT\(2),
	combout => \InstMem|ram~563_combout\);

-- Location: LCCOMB_X92_Y46_N14
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

-- Location: LCCOMB_X91_Y46_N14
\AdderBEQ|tempAdd[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[7]~14_combout\ = (\InstMem|ram~563_combout\ & ((\AdderPC|tempAdd[7]~14_combout\ & (\AdderBEQ|tempAdd[6]~13\ & VCC)) # (!\AdderPC|tempAdd[7]~14_combout\ & (!\AdderBEQ|tempAdd[6]~13\)))) # (!\InstMem|ram~563_combout\ & 
-- ((\AdderPC|tempAdd[7]~14_combout\ & (!\AdderBEQ|tempAdd[6]~13\)) # (!\AdderPC|tempAdd[7]~14_combout\ & ((\AdderBEQ|tempAdd[6]~13\) # (GND)))))
-- \AdderBEQ|tempAdd[7]~15\ = CARRY((\InstMem|ram~563_combout\ & (!\AdderPC|tempAdd[7]~14_combout\ & !\AdderBEQ|tempAdd[6]~13\)) # (!\InstMem|ram~563_combout\ & ((!\AdderBEQ|tempAdd[6]~13\) # (!\AdderPC|tempAdd[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~563_combout\,
	datab => \AdderPC|tempAdd[7]~14_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[6]~13\,
	combout => \AdderBEQ|tempAdd[7]~14_combout\,
	cout => \AdderBEQ|tempAdd[7]~15\);

-- Location: LCCOMB_X90_Y45_N24
\PC|DOUT[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[7]~2_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[7]~14_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[7]~14_combout\,
	datab => \AdderPC|tempAdd[7]~14_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[7]~2_combout\);

-- Location: FF_X90_Y45_N25
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[7]~2_combout\,
	asdata => \InstMem|ram~560_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LCCOMB_X92_Y46_N16
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

-- Location: LCCOMB_X91_Y46_N16
\AdderBEQ|tempAdd[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[8]~16_combout\ = ((\InstMem|ram~563_combout\ $ (\AdderPC|tempAdd[8]~16_combout\ $ (!\AdderBEQ|tempAdd[7]~15\)))) # (GND)
-- \AdderBEQ|tempAdd[8]~17\ = CARRY((\InstMem|ram~563_combout\ & ((\AdderPC|tempAdd[8]~16_combout\) # (!\AdderBEQ|tempAdd[7]~15\))) # (!\InstMem|ram~563_combout\ & (\AdderPC|tempAdd[8]~16_combout\ & !\AdderBEQ|tempAdd[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~563_combout\,
	datab => \AdderPC|tempAdd[8]~16_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[7]~15\,
	combout => \AdderBEQ|tempAdd[8]~16_combout\,
	cout => \AdderBEQ|tempAdd[8]~17\);

-- Location: LCCOMB_X90_Y45_N20
\MuxJUMP|C[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[8]~5_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[8]~16_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCFD|Mux0~0_combout\,
	datab => \AdderPC|tempAdd[8]~16_combout\,
	datac => \AdderBEQ|tempAdd[8]~16_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[8]~5_combout\);

-- Location: FF_X90_Y45_N21
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LCCOMB_X92_Y46_N18
\AdderPC|tempAdd[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[9]~18_combout\ = (\PC|DOUT\(9) & (!\AdderPC|tempAdd[8]~17\)) # (!\PC|DOUT\(9) & ((\AdderPC|tempAdd[8]~17\) # (GND)))
-- \AdderPC|tempAdd[9]~19\ = CARRY((!\AdderPC|tempAdd[8]~17\) # (!\PC|DOUT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(9),
	datad => VCC,
	cin => \AdderPC|tempAdd[8]~17\,
	combout => \AdderPC|tempAdd[9]~18_combout\,
	cout => \AdderPC|tempAdd[9]~19\);

-- Location: LCCOMB_X91_Y46_N18
\AdderBEQ|tempAdd[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[9]~18_combout\ = (\InstMem|ram~563_combout\ & ((\AdderPC|tempAdd[9]~18_combout\ & (\AdderBEQ|tempAdd[8]~17\ & VCC)) # (!\AdderPC|tempAdd[9]~18_combout\ & (!\AdderBEQ|tempAdd[8]~17\)))) # (!\InstMem|ram~563_combout\ & 
-- ((\AdderPC|tempAdd[9]~18_combout\ & (!\AdderBEQ|tempAdd[8]~17\)) # (!\AdderPC|tempAdd[9]~18_combout\ & ((\AdderBEQ|tempAdd[8]~17\) # (GND)))))
-- \AdderBEQ|tempAdd[9]~19\ = CARRY((\InstMem|ram~563_combout\ & (!\AdderPC|tempAdd[9]~18_combout\ & !\AdderBEQ|tempAdd[8]~17\)) # (!\InstMem|ram~563_combout\ & ((!\AdderBEQ|tempAdd[8]~17\) # (!\AdderPC|tempAdd[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~563_combout\,
	datab => \AdderPC|tempAdd[9]~18_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[8]~17\,
	combout => \AdderBEQ|tempAdd[9]~18_combout\,
	cout => \AdderBEQ|tempAdd[9]~19\);

-- Location: LCCOMB_X90_Y45_N10
\PC|DOUT[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[9]~3_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[9]~18_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[9]~18_combout\,
	datab => \AdderPC|tempAdd[9]~18_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[9]~3_combout\);

-- Location: FF_X90_Y45_N11
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[9]~3_combout\,
	asdata => \InstMem|ram~561_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: LCCOMB_X92_Y46_N20
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

-- Location: LCCOMB_X91_Y46_N20
\AdderBEQ|tempAdd[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[10]~20_combout\ = ((\InstMem|ram~563_combout\ $ (\AdderPC|tempAdd[10]~20_combout\ $ (!\AdderBEQ|tempAdd[9]~19\)))) # (GND)
-- \AdderBEQ|tempAdd[10]~21\ = CARRY((\InstMem|ram~563_combout\ & ((\AdderPC|tempAdd[10]~20_combout\) # (!\AdderBEQ|tempAdd[9]~19\))) # (!\InstMem|ram~563_combout\ & (\AdderPC|tempAdd[10]~20_combout\ & !\AdderBEQ|tempAdd[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~563_combout\,
	datab => \AdderPC|tempAdd[10]~20_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[9]~19\,
	combout => \AdderBEQ|tempAdd[10]~20_combout\,
	cout => \AdderBEQ|tempAdd[10]~21\);

-- Location: LCCOMB_X90_Y45_N0
\PC|DOUT[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[10]~4_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[10]~20_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[10]~20_combout\,
	datab => \AdderPC|tempAdd[10]~20_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[10]~4_combout\);

-- Location: LCCOMB_X90_Y45_N30
\InstMem|ram~562_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~562_wirecell_combout\ = !\InstMem|ram~562_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InstMem|ram~562_combout\,
	combout => \InstMem|ram~562_wirecell_combout\);

-- Location: FF_X90_Y45_N1
\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[10]~4_combout\,
	asdata => \InstMem|ram~562_wirecell_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

-- Location: LCCOMB_X92_Y46_N22
\AdderPC|tempAdd[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[11]~22_combout\ = (\PC|DOUT\(11) & (!\AdderPC|tempAdd[10]~21\)) # (!\PC|DOUT\(11) & ((\AdderPC|tempAdd[10]~21\) # (GND)))
-- \AdderPC|tempAdd[11]~23\ = CARRY((!\AdderPC|tempAdd[10]~21\) # (!\PC|DOUT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(11),
	datad => VCC,
	cin => \AdderPC|tempAdd[10]~21\,
	combout => \AdderPC|tempAdd[11]~22_combout\,
	cout => \AdderPC|tempAdd[11]~23\);

-- Location: LCCOMB_X91_Y46_N22
\AdderBEQ|tempAdd[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[11]~22_combout\ = (\AdderPC|tempAdd[11]~22_combout\ & (!\AdderBEQ|tempAdd[10]~21\)) # (!\AdderPC|tempAdd[11]~22_combout\ & ((\AdderBEQ|tempAdd[10]~21\) # (GND)))
-- \AdderBEQ|tempAdd[11]~23\ = CARRY((!\AdderBEQ|tempAdd[10]~21\) # (!\AdderPC|tempAdd[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[11]~22_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[10]~21\,
	combout => \AdderBEQ|tempAdd[11]~22_combout\,
	cout => \AdderBEQ|tempAdd[11]~23\);

-- Location: LCCOMB_X86_Y47_N0
\PC|DOUT[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[11]~5_combout\ = (\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[11]~22_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[11]~22_combout\,
	datab => \AdderBEQ|tempAdd[11]~22_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[11]~5_combout\);

-- Location: FF_X86_Y47_N1
\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[11]~5_combout\,
	asdata => \InstMem|ram~563_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

-- Location: LCCOMB_X92_Y46_N24
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

-- Location: LCCOMB_X91_Y46_N24
\AdderBEQ|tempAdd[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[12]~24_combout\ = (\AdderPC|tempAdd[12]~24_combout\ & (\AdderBEQ|tempAdd[11]~23\ $ (GND))) # (!\AdderPC|tempAdd[12]~24_combout\ & (!\AdderBEQ|tempAdd[11]~23\ & VCC))
-- \AdderBEQ|tempAdd[12]~25\ = CARRY((\AdderPC|tempAdd[12]~24_combout\ & !\AdderBEQ|tempAdd[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[12]~24_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[11]~23\,
	combout => \AdderBEQ|tempAdd[12]~24_combout\,
	cout => \AdderBEQ|tempAdd[12]~25\);

-- Location: LCCOMB_X86_Y47_N30
\PC|DOUT[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[12]~6_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[12]~24_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[12]~24_combout\,
	datab => \AdderPC|tempAdd[12]~24_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[12]~6_combout\);

-- Location: FF_X86_Y47_N31
\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[12]~6_combout\,
	asdata => \InstMem|ram~563_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

-- Location: LCCOMB_X92_Y46_N26
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

-- Location: LCCOMB_X91_Y46_N26
\AdderBEQ|tempAdd[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[13]~26_combout\ = (\InstMem|ram~549_combout\ & ((\AdderPC|tempAdd[13]~26_combout\ & (!\AdderBEQ|tempAdd[12]~25\)) # (!\AdderPC|tempAdd[13]~26_combout\ & ((\AdderBEQ|tempAdd[12]~25\) # (GND))))) # (!\InstMem|ram~549_combout\ & 
-- ((\AdderPC|tempAdd[13]~26_combout\ & (\AdderBEQ|tempAdd[12]~25\ & VCC)) # (!\AdderPC|tempAdd[13]~26_combout\ & (!\AdderBEQ|tempAdd[12]~25\))))
-- \AdderBEQ|tempAdd[13]~27\ = CARRY((\InstMem|ram~549_combout\ & ((!\AdderBEQ|tempAdd[12]~25\) # (!\AdderPC|tempAdd[13]~26_combout\))) # (!\InstMem|ram~549_combout\ & (!\AdderPC|tempAdd[13]~26_combout\ & !\AdderBEQ|tempAdd[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMem|ram~549_combout\,
	datab => \AdderPC|tempAdd[13]~26_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[12]~25\,
	combout => \AdderBEQ|tempAdd[13]~26_combout\,
	cout => \AdderBEQ|tempAdd[13]~27\);

-- Location: LCCOMB_X86_Y47_N20
\PC|DOUT[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[13]~7_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[13]~26_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[13]~26_combout\,
	datab => \AdderPC|tempAdd[13]~26_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[13]~7_combout\);

-- Location: FF_X86_Y47_N21
\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[13]~7_combout\,
	asdata => \InstMem|ram~563_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

-- Location: LCCOMB_X92_Y46_N28
\AdderPC|tempAdd[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[14]~28_combout\ = (\PC|DOUT\(14) & (\AdderPC|tempAdd[13]~27\ $ (GND))) # (!\PC|DOUT\(14) & (!\AdderPC|tempAdd[13]~27\ & VCC))
-- \AdderPC|tempAdd[14]~29\ = CARRY((\PC|DOUT\(14) & !\AdderPC|tempAdd[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(14),
	datad => VCC,
	cin => \AdderPC|tempAdd[13]~27\,
	combout => \AdderPC|tempAdd[14]~28_combout\,
	cout => \AdderPC|tempAdd[14]~29\);

-- Location: LCCOMB_X91_Y46_N28
\AdderBEQ|tempAdd[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[14]~28_combout\ = (\AdderPC|tempAdd[14]~28_combout\ & (\AdderBEQ|tempAdd[13]~27\ $ (GND))) # (!\AdderPC|tempAdd[14]~28_combout\ & (!\AdderBEQ|tempAdd[13]~27\ & VCC))
-- \AdderBEQ|tempAdd[14]~29\ = CARRY((\AdderPC|tempAdd[14]~28_combout\ & !\AdderBEQ|tempAdd[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[14]~28_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[13]~27\,
	combout => \AdderBEQ|tempAdd[14]~28_combout\,
	cout => \AdderBEQ|tempAdd[14]~29\);

-- Location: LCCOMB_X86_Y47_N18
\PC|DOUT[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[14]~8_combout\ = (\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[14]~28_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[14]~28_combout\,
	datab => \AdderBEQ|tempAdd[14]~28_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[14]~8_combout\);

-- Location: FF_X86_Y47_N19
\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[14]~8_combout\,
	asdata => \InstMem|ram~563_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

-- Location: LCCOMB_X92_Y46_N30
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

-- Location: LCCOMB_X91_Y46_N30
\AdderBEQ|tempAdd[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[15]~30_combout\ = (\AdderPC|tempAdd[15]~30_combout\ & (!\AdderBEQ|tempAdd[14]~29\)) # (!\AdderPC|tempAdd[15]~30_combout\ & ((\AdderBEQ|tempAdd[14]~29\) # (GND)))
-- \AdderBEQ|tempAdd[15]~31\ = CARRY((!\AdderBEQ|tempAdd[14]~29\) # (!\AdderPC|tempAdd[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[15]~30_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[14]~29\,
	combout => \AdderBEQ|tempAdd[15]~30_combout\,
	cout => \AdderBEQ|tempAdd[15]~31\);

-- Location: LCCOMB_X86_Y45_N0
\MuxJUMP|C[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[15]~6_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[15]~30_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[15]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[15]~30_combout\,
	datab => \UCFD|Mux0~0_combout\,
	datac => \AdderPC|tempAdd[15]~30_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[15]~6_combout\);

-- Location: FF_X86_Y45_N1
\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

-- Location: LCCOMB_X92_Y45_N0
\AdderPC|tempAdd[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[16]~32_combout\ = (\PC|DOUT\(16) & (\AdderPC|tempAdd[15]~31\ $ (GND))) # (!\PC|DOUT\(16) & (!\AdderPC|tempAdd[15]~31\ & VCC))
-- \AdderPC|tempAdd[16]~33\ = CARRY((\PC|DOUT\(16) & !\AdderPC|tempAdd[15]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(16),
	datad => VCC,
	cin => \AdderPC|tempAdd[15]~31\,
	combout => \AdderPC|tempAdd[16]~32_combout\,
	cout => \AdderPC|tempAdd[16]~33\);

-- Location: LCCOMB_X91_Y45_N0
\AdderBEQ|tempAdd[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[16]~32_combout\ = (\AdderPC|tempAdd[16]~32_combout\ & (\AdderBEQ|tempAdd[15]~31\ $ (GND))) # (!\AdderPC|tempAdd[16]~32_combout\ & (!\AdderBEQ|tempAdd[15]~31\ & VCC))
-- \AdderBEQ|tempAdd[16]~33\ = CARRY((\AdderPC|tempAdd[16]~32_combout\ & !\AdderBEQ|tempAdd[15]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[16]~32_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[15]~31\,
	combout => \AdderBEQ|tempAdd[16]~32_combout\,
	cout => \AdderBEQ|tempAdd[16]~33\);

-- Location: LCCOMB_X90_Y45_N26
\MuxJUMP|C[16]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[16]~7_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[16]~32_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[16]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[16]~32_combout\,
	datab => \UCFD|Mux0~0_combout\,
	datac => \AdderBEQ|tempAdd[16]~32_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[16]~7_combout\);

-- Location: FF_X90_Y45_N27
\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[16]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

-- Location: LCCOMB_X92_Y45_N2
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

-- Location: LCCOMB_X91_Y45_N2
\AdderBEQ|tempAdd[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[17]~34_combout\ = (\AdderPC|tempAdd[17]~34_combout\ & (!\AdderBEQ|tempAdd[16]~33\)) # (!\AdderPC|tempAdd[17]~34_combout\ & ((\AdderBEQ|tempAdd[16]~33\) # (GND)))
-- \AdderBEQ|tempAdd[17]~35\ = CARRY((!\AdderBEQ|tempAdd[16]~33\) # (!\AdderPC|tempAdd[17]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[17]~34_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[16]~33\,
	combout => \AdderBEQ|tempAdd[17]~34_combout\,
	cout => \AdderBEQ|tempAdd[17]~35\);

-- Location: LCCOMB_X86_Y45_N16
\PC|DOUT[17]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[17]~9_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[17]~34_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[17]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[17]~34_combout\,
	datab => \AdderPC|tempAdd[17]~34_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[17]~9_combout\);

-- Location: LCCOMB_X86_Y45_N14
\InstMem|ram~549_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstMem|ram~549_wirecell_combout\ = !\InstMem|ram~549_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InstMem|ram~549_combout\,
	combout => \InstMem|ram~549_wirecell_combout\);

-- Location: FF_X86_Y45_N17
\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[17]~9_combout\,
	asdata => \InstMem|ram~549_wirecell_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

-- Location: LCCOMB_X92_Y45_N4
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

-- Location: LCCOMB_X91_Y45_N4
\AdderBEQ|tempAdd[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[18]~36_combout\ = (\AdderPC|tempAdd[18]~36_combout\ & (\AdderBEQ|tempAdd[17]~35\ $ (GND))) # (!\AdderPC|tempAdd[18]~36_combout\ & (!\AdderBEQ|tempAdd[17]~35\ & VCC))
-- \AdderBEQ|tempAdd[18]~37\ = CARRY((\AdderPC|tempAdd[18]~36_combout\ & !\AdderBEQ|tempAdd[17]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[18]~36_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[17]~35\,
	combout => \AdderBEQ|tempAdd[18]~36_combout\,
	cout => \AdderBEQ|tempAdd[18]~37\);

-- Location: LCCOMB_X90_Y45_N16
\MuxJUMP|C[18]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[18]~8_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[18]~36_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[18]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[18]~36_combout\,
	datab => \UCFD|Mux0~0_combout\,
	datac => \AdderPC|tempAdd[18]~36_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[18]~8_combout\);

-- Location: FF_X90_Y45_N17
\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[18]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

-- Location: LCCOMB_X92_Y45_N6
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

-- Location: LCCOMB_X91_Y45_N6
\AdderBEQ|tempAdd[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[19]~38_combout\ = (\AdderPC|tempAdd[19]~38_combout\ & (!\AdderBEQ|tempAdd[18]~37\)) # (!\AdderPC|tempAdd[19]~38_combout\ & ((\AdderBEQ|tempAdd[18]~37\) # (GND)))
-- \AdderBEQ|tempAdd[19]~39\ = CARRY((!\AdderBEQ|tempAdd[18]~37\) # (!\AdderPC|tempAdd[19]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[19]~38_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[18]~37\,
	combout => \AdderBEQ|tempAdd[19]~38_combout\,
	cout => \AdderBEQ|tempAdd[19]~39\);

-- Location: LCCOMB_X90_Y45_N14
\MuxJUMP|C[19]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[19]~9_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[19]~38_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[19]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[19]~38_combout\,
	datab => \UCFD|Mux0~0_combout\,
	datac => \AdderPC|tempAdd[19]~38_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[19]~9_combout\);

-- Location: FF_X90_Y45_N15
\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[19]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

-- Location: LCCOMB_X92_Y45_N8
\AdderPC|tempAdd[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[20]~40_combout\ = (\PC|DOUT\(20) & (\AdderPC|tempAdd[19]~39\ $ (GND))) # (!\PC|DOUT\(20) & (!\AdderPC|tempAdd[19]~39\ & VCC))
-- \AdderPC|tempAdd[20]~41\ = CARRY((\PC|DOUT\(20) & !\AdderPC|tempAdd[19]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(20),
	datad => VCC,
	cin => \AdderPC|tempAdd[19]~39\,
	combout => \AdderPC|tempAdd[20]~40_combout\,
	cout => \AdderPC|tempAdd[20]~41\);

-- Location: LCCOMB_X91_Y45_N8
\AdderBEQ|tempAdd[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[20]~40_combout\ = (\AdderPC|tempAdd[20]~40_combout\ & (\AdderBEQ|tempAdd[19]~39\ $ (GND))) # (!\AdderPC|tempAdd[20]~40_combout\ & (!\AdderBEQ|tempAdd[19]~39\ & VCC))
-- \AdderBEQ|tempAdd[20]~41\ = CARRY((\AdderPC|tempAdd[20]~40_combout\ & !\AdderBEQ|tempAdd[19]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[20]~40_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[19]~39\,
	combout => \AdderBEQ|tempAdd[20]~40_combout\,
	cout => \AdderBEQ|tempAdd[20]~41\);

-- Location: LCCOMB_X86_Y45_N2
\PC|DOUT[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[20]~10_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[20]~40_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[20]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[20]~40_combout\,
	datab => \AdderPC|tempAdd[20]~40_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[20]~10_combout\);

-- Location: FF_X86_Y45_N3
\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[20]~10_combout\,
	asdata => \InstMem|ram~552_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

-- Location: LCCOMB_X92_Y45_N10
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

-- Location: LCCOMB_X91_Y45_N10
\AdderBEQ|tempAdd[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[21]~42_combout\ = (\AdderPC|tempAdd[21]~42_combout\ & (!\AdderBEQ|tempAdd[20]~41\)) # (!\AdderPC|tempAdd[21]~42_combout\ & ((\AdderBEQ|tempAdd[20]~41\) # (GND)))
-- \AdderBEQ|tempAdd[21]~43\ = CARRY((!\AdderBEQ|tempAdd[20]~41\) # (!\AdderPC|tempAdd[21]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[21]~42_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[20]~41\,
	combout => \AdderBEQ|tempAdd[21]~42_combout\,
	cout => \AdderBEQ|tempAdd[21]~43\);

-- Location: LCCOMB_X86_Y45_N4
\PC|DOUT[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[21]~11_combout\ = (\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[21]~42_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[21]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[21]~42_combout\,
	datab => \AdderBEQ|tempAdd[21]~42_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[21]~11_combout\);

-- Location: FF_X86_Y45_N5
\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[21]~11_combout\,
	asdata => \InstMem|ram~549_wirecell_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

-- Location: LCCOMB_X92_Y45_N12
\AdderPC|tempAdd[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[22]~44_combout\ = (\PC|DOUT\(22) & (\AdderPC|tempAdd[21]~43\ $ (GND))) # (!\PC|DOUT\(22) & (!\AdderPC|tempAdd[21]~43\ & VCC))
-- \AdderPC|tempAdd[22]~45\ = CARRY((\PC|DOUT\(22) & !\AdderPC|tempAdd[21]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(22),
	datad => VCC,
	cin => \AdderPC|tempAdd[21]~43\,
	combout => \AdderPC|tempAdd[22]~44_combout\,
	cout => \AdderPC|tempAdd[22]~45\);

-- Location: LCCOMB_X91_Y45_N12
\AdderBEQ|tempAdd[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[22]~44_combout\ = (\AdderPC|tempAdd[22]~44_combout\ & (\AdderBEQ|tempAdd[21]~43\ $ (GND))) # (!\AdderPC|tempAdd[22]~44_combout\ & (!\AdderBEQ|tempAdd[21]~43\ & VCC))
-- \AdderBEQ|tempAdd[22]~45\ = CARRY((\AdderPC|tempAdd[22]~44_combout\ & !\AdderBEQ|tempAdd[21]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[22]~44_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[21]~43\,
	combout => \AdderBEQ|tempAdd[22]~44_combout\,
	cout => \AdderBEQ|tempAdd[22]~45\);

-- Location: LCCOMB_X86_Y45_N30
\PC|DOUT[22]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[22]~12_combout\ = (\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[22]~44_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[22]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[22]~44_combout\,
	datab => \AdderPC|tempAdd[22]~44_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[22]~12_combout\);

-- Location: FF_X86_Y45_N31
\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[22]~12_combout\,
	asdata => \InstMem|ram~550_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

-- Location: LCCOMB_X92_Y45_N14
\AdderPC|tempAdd[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[23]~46_combout\ = (\PC|DOUT\(23) & (!\AdderPC|tempAdd[22]~45\)) # (!\PC|DOUT\(23) & ((\AdderPC|tempAdd[22]~45\) # (GND)))
-- \AdderPC|tempAdd[23]~47\ = CARRY((!\AdderPC|tempAdd[22]~45\) # (!\PC|DOUT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(23),
	datad => VCC,
	cin => \AdderPC|tempAdd[22]~45\,
	combout => \AdderPC|tempAdd[23]~46_combout\,
	cout => \AdderPC|tempAdd[23]~47\);

-- Location: LCCOMB_X91_Y45_N14
\AdderBEQ|tempAdd[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[23]~46_combout\ = (\AdderPC|tempAdd[23]~46_combout\ & (!\AdderBEQ|tempAdd[22]~45\)) # (!\AdderPC|tempAdd[23]~46_combout\ & ((\AdderBEQ|tempAdd[22]~45\) # (GND)))
-- \AdderBEQ|tempAdd[23]~47\ = CARRY((!\AdderBEQ|tempAdd[22]~45\) # (!\AdderPC|tempAdd[23]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[23]~46_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[22]~45\,
	combout => \AdderBEQ|tempAdd[23]~46_combout\,
	cout => \AdderBEQ|tempAdd[23]~47\);

-- Location: LCCOMB_X86_Y45_N28
\PC|DOUT[23]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[23]~13_combout\ = (\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[23]~46_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[23]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[23]~46_combout\,
	datab => \AdderBEQ|tempAdd[23]~46_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[23]~13_combout\);

-- Location: FF_X86_Y45_N29
\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[23]~13_combout\,
	asdata => \InstMem|ram~551_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

-- Location: LCCOMB_X92_Y45_N16
\AdderPC|tempAdd[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[24]~48_combout\ = (\PC|DOUT\(24) & (\AdderPC|tempAdd[23]~47\ $ (GND))) # (!\PC|DOUT\(24) & (!\AdderPC|tempAdd[23]~47\ & VCC))
-- \AdderPC|tempAdd[24]~49\ = CARRY((\PC|DOUT\(24) & !\AdderPC|tempAdd[23]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(24),
	datad => VCC,
	cin => \AdderPC|tempAdd[23]~47\,
	combout => \AdderPC|tempAdd[24]~48_combout\,
	cout => \AdderPC|tempAdd[24]~49\);

-- Location: LCCOMB_X91_Y45_N16
\AdderBEQ|tempAdd[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[24]~48_combout\ = (\AdderPC|tempAdd[24]~48_combout\ & (\AdderBEQ|tempAdd[23]~47\ $ (GND))) # (!\AdderPC|tempAdd[24]~48_combout\ & (!\AdderBEQ|tempAdd[23]~47\ & VCC))
-- \AdderBEQ|tempAdd[24]~49\ = CARRY((\AdderPC|tempAdd[24]~48_combout\ & !\AdderBEQ|tempAdd[23]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[24]~48_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[23]~47\,
	combout => \AdderBEQ|tempAdd[24]~48_combout\,
	cout => \AdderBEQ|tempAdd[24]~49\);

-- Location: LCCOMB_X90_Y45_N8
\MuxJUMP|C[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[24]~10_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & (\AdderBEQ|tempAdd[24]~48_combout\)) # (!\ANDBeqOut~11_combout\ & ((\AdderPC|tempAdd[24]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[24]~48_combout\,
	datab => \UCFD|Mux0~0_combout\,
	datac => \AdderPC|tempAdd[24]~48_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[24]~10_combout\);

-- Location: FF_X90_Y45_N9
\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[24]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

-- Location: LCCOMB_X92_Y45_N18
\AdderPC|tempAdd[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[25]~50_combout\ = (\PC|DOUT\(25) & (!\AdderPC|tempAdd[24]~49\)) # (!\PC|DOUT\(25) & ((\AdderPC|tempAdd[24]~49\) # (GND)))
-- \AdderPC|tempAdd[25]~51\ = CARRY((!\AdderPC|tempAdd[24]~49\) # (!\PC|DOUT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(25),
	datad => VCC,
	cin => \AdderPC|tempAdd[24]~49\,
	combout => \AdderPC|tempAdd[25]~50_combout\,
	cout => \AdderPC|tempAdd[25]~51\);

-- Location: LCCOMB_X91_Y45_N18
\AdderBEQ|tempAdd[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[25]~50_combout\ = (\AdderPC|tempAdd[25]~50_combout\ & (!\AdderBEQ|tempAdd[24]~49\)) # (!\AdderPC|tempAdd[25]~50_combout\ & ((\AdderBEQ|tempAdd[24]~49\) # (GND)))
-- \AdderBEQ|tempAdd[25]~51\ = CARRY((!\AdderBEQ|tempAdd[24]~49\) # (!\AdderPC|tempAdd[25]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[25]~50_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[24]~49\,
	combout => \AdderBEQ|tempAdd[25]~50_combout\,
	cout => \AdderBEQ|tempAdd[25]~51\);

-- Location: LCCOMB_X86_Y45_N26
\PC|DOUT[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[25]~14_combout\ = (\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[25]~50_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[25]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[25]~50_combout\,
	datab => \AdderBEQ|tempAdd[25]~50_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[25]~14_combout\);

-- Location: FF_X86_Y45_N27
\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[25]~14_combout\,
	asdata => \InstMem|ram~549_wirecell_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

-- Location: LCCOMB_X92_Y45_N20
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

-- Location: LCCOMB_X91_Y45_N20
\AdderBEQ|tempAdd[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[26]~52_combout\ = (\AdderPC|tempAdd[26]~52_combout\ & (\AdderBEQ|tempAdd[25]~51\ $ (GND))) # (!\AdderPC|tempAdd[26]~52_combout\ & (!\AdderBEQ|tempAdd[25]~51\ & VCC))
-- \AdderBEQ|tempAdd[26]~53\ = CARRY((\AdderPC|tempAdd[26]~52_combout\ & !\AdderBEQ|tempAdd[25]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[26]~52_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[25]~51\,
	combout => \AdderBEQ|tempAdd[26]~52_combout\,
	cout => \AdderBEQ|tempAdd[26]~53\);

-- Location: LCCOMB_X90_Y45_N6
\MuxJUMP|C[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[26]~11_combout\ = (!\UCFD|Mux0~0_combout\ & ((\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[26]~52_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[26]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[26]~52_combout\,
	datab => \UCFD|Mux0~0_combout\,
	datac => \AdderBEQ|tempAdd[26]~52_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \MuxJUMP|C[26]~11_combout\);

-- Location: FF_X90_Y45_N7
\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

-- Location: LCCOMB_X92_Y45_N22
\AdderPC|tempAdd[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[27]~54_combout\ = (\PC|DOUT\(27) & (!\AdderPC|tempAdd[26]~53\)) # (!\PC|DOUT\(27) & ((\AdderPC|tempAdd[26]~53\) # (GND)))
-- \AdderPC|tempAdd[27]~55\ = CARRY((!\AdderPC|tempAdd[26]~53\) # (!\PC|DOUT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|DOUT\(27),
	datad => VCC,
	cin => \AdderPC|tempAdd[26]~53\,
	combout => \AdderPC|tempAdd[27]~54_combout\,
	cout => \AdderPC|tempAdd[27]~55\);

-- Location: LCCOMB_X91_Y45_N22
\AdderBEQ|tempAdd[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[27]~54_combout\ = (\AdderPC|tempAdd[27]~54_combout\ & (!\AdderBEQ|tempAdd[26]~53\)) # (!\AdderPC|tempAdd[27]~54_combout\ & ((\AdderBEQ|tempAdd[26]~53\) # (GND)))
-- \AdderBEQ|tempAdd[27]~55\ = CARRY((!\AdderBEQ|tempAdd[26]~53\) # (!\AdderPC|tempAdd[27]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[27]~54_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[26]~53\,
	combout => \AdderBEQ|tempAdd[27]~54_combout\,
	cout => \AdderBEQ|tempAdd[27]~55\);

-- Location: LCCOMB_X86_Y45_N24
\PC|DOUT[27]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|DOUT[27]~15_combout\ = (\ANDBeqOut~11_combout\ & ((\AdderBEQ|tempAdd[27]~54_combout\))) # (!\ANDBeqOut~11_combout\ & (\AdderPC|tempAdd[27]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[27]~54_combout\,
	datab => \AdderBEQ|tempAdd[27]~54_combout\,
	datad => \ANDBeqOut~11_combout\,
	combout => \PC|DOUT[27]~15_combout\);

-- Location: FF_X86_Y45_N25
\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC|DOUT[27]~15_combout\,
	asdata => \InstMem|ram~550_combout\,
	sload => \UCFD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

-- Location: LCCOMB_X92_Y45_N24
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

-- Location: LCCOMB_X91_Y45_N24
\AdderBEQ|tempAdd[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[28]~56_combout\ = (\AdderPC|tempAdd[28]~56_combout\ & (\AdderBEQ|tempAdd[27]~55\ $ (GND))) # (!\AdderPC|tempAdd[28]~56_combout\ & (!\AdderBEQ|tempAdd[27]~55\ & VCC))
-- \AdderBEQ|tempAdd[28]~57\ = CARRY((\AdderPC|tempAdd[28]~56_combout\ & !\AdderBEQ|tempAdd[27]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[28]~56_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[27]~55\,
	combout => \AdderBEQ|tempAdd[28]~56_combout\,
	cout => \AdderBEQ|tempAdd[28]~57\);

-- Location: LCCOMB_X85_Y45_N4
\MuxJUMP|C[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[28]~12_combout\ = (\ANDBeqOut~1_combout\ & ((\ANDBeqOut~10_combout\ & (\AdderBEQ|tempAdd[28]~56_combout\)) # (!\ANDBeqOut~10_combout\ & ((\AdderPC|tempAdd[28]~56_combout\))))) # (!\ANDBeqOut~1_combout\ & (((\AdderPC|tempAdd[28]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[28]~56_combout\,
	datab => \AdderPC|tempAdd[28]~56_combout\,
	datac => \ANDBeqOut~1_combout\,
	datad => \ANDBeqOut~10_combout\,
	combout => \MuxJUMP|C[28]~12_combout\);

-- Location: FF_X85_Y45_N5
\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[28]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

-- Location: LCCOMB_X92_Y45_N26
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

-- Location: LCCOMB_X91_Y45_N26
\AdderBEQ|tempAdd[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[29]~58_combout\ = (\AdderPC|tempAdd[29]~58_combout\ & (!\AdderBEQ|tempAdd[28]~57\)) # (!\AdderPC|tempAdd[29]~58_combout\ & ((\AdderBEQ|tempAdd[28]~57\) # (GND)))
-- \AdderBEQ|tempAdd[29]~59\ = CARRY((!\AdderBEQ|tempAdd[28]~57\) # (!\AdderPC|tempAdd[29]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[29]~58_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[28]~57\,
	combout => \AdderBEQ|tempAdd[29]~58_combout\,
	cout => \AdderBEQ|tempAdd[29]~59\);

-- Location: LCCOMB_X85_Y45_N6
\MuxJUMP|C[29]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[29]~13_combout\ = (\ANDBeqOut~1_combout\ & ((\ANDBeqOut~10_combout\ & ((\AdderBEQ|tempAdd[29]~58_combout\))) # (!\ANDBeqOut~10_combout\ & (\AdderPC|tempAdd[29]~58_combout\)))) # (!\ANDBeqOut~1_combout\ & (\AdderPC|tempAdd[29]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[29]~58_combout\,
	datab => \AdderBEQ|tempAdd[29]~58_combout\,
	datac => \ANDBeqOut~1_combout\,
	datad => \ANDBeqOut~10_combout\,
	combout => \MuxJUMP|C[29]~13_combout\);

-- Location: FF_X85_Y45_N7
\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[29]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

-- Location: LCCOMB_X92_Y45_N28
\AdderPC|tempAdd[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[30]~60_combout\ = (\PC|DOUT\(30) & (\AdderPC|tempAdd[29]~59\ $ (GND))) # (!\PC|DOUT\(30) & (!\AdderPC|tempAdd[29]~59\ & VCC))
-- \AdderPC|tempAdd[30]~61\ = CARRY((\PC|DOUT\(30) & !\AdderPC|tempAdd[29]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(30),
	datad => VCC,
	cin => \AdderPC|tempAdd[29]~59\,
	combout => \AdderPC|tempAdd[30]~60_combout\,
	cout => \AdderPC|tempAdd[30]~61\);

-- Location: LCCOMB_X91_Y45_N28
\AdderBEQ|tempAdd[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[30]~60_combout\ = (\AdderPC|tempAdd[30]~60_combout\ & (\AdderBEQ|tempAdd[29]~59\ $ (GND))) # (!\AdderPC|tempAdd[30]~60_combout\ & (!\AdderBEQ|tempAdd[29]~59\ & VCC))
-- \AdderBEQ|tempAdd[30]~61\ = CARRY((\AdderPC|tempAdd[30]~60_combout\ & !\AdderBEQ|tempAdd[29]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AdderPC|tempAdd[30]~60_combout\,
	datad => VCC,
	cin => \AdderBEQ|tempAdd[29]~59\,
	combout => \AdderBEQ|tempAdd[30]~60_combout\,
	cout => \AdderBEQ|tempAdd[30]~61\);

-- Location: LCCOMB_X85_Y45_N8
\MuxJUMP|C[30]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[30]~14_combout\ = (\ANDBeqOut~1_combout\ & ((\ANDBeqOut~10_combout\ & (\AdderBEQ|tempAdd[30]~60_combout\)) # (!\ANDBeqOut~10_combout\ & ((\AdderPC|tempAdd[30]~60_combout\))))) # (!\ANDBeqOut~1_combout\ & (((\AdderPC|tempAdd[30]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[30]~60_combout\,
	datab => \AdderPC|tempAdd[30]~60_combout\,
	datac => \ANDBeqOut~1_combout\,
	datad => \ANDBeqOut~10_combout\,
	combout => \MuxJUMP|C[30]~14_combout\);

-- Location: FF_X85_Y45_N9
\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[30]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

-- Location: LCCOMB_X92_Y45_N30
\AdderPC|tempAdd[32]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderPC|tempAdd[32]~62_combout\ = \AdderPC|tempAdd[30]~61\ $ (\PC|DOUT\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|DOUT\(31),
	cin => \AdderPC|tempAdd[30]~61\,
	combout => \AdderPC|tempAdd[32]~62_combout\);

-- Location: LCCOMB_X91_Y45_N30
\AdderBEQ|tempAdd[32]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \AdderBEQ|tempAdd[32]~62_combout\ = \AdderPC|tempAdd[32]~62_combout\ $ (\AdderBEQ|tempAdd[30]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AdderPC|tempAdd[32]~62_combout\,
	cin => \AdderBEQ|tempAdd[30]~61\,
	combout => \AdderBEQ|tempAdd[32]~62_combout\);

-- Location: LCCOMB_X85_Y45_N18
\MuxJUMP|C[31]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxJUMP|C[31]~15_combout\ = (\ANDBeqOut~1_combout\ & ((\ANDBeqOut~10_combout\ & (\AdderBEQ|tempAdd[32]~62_combout\)) # (!\ANDBeqOut~10_combout\ & ((\AdderPC|tempAdd[32]~62_combout\))))) # (!\ANDBeqOut~1_combout\ & (((\AdderPC|tempAdd[32]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AdderBEQ|tempAdd[32]~62_combout\,
	datab => \AdderPC|tempAdd[32]~62_combout\,
	datac => \ANDBeqOut~1_combout\,
	datad => \ANDBeqOut~10_combout\,
	combout => \MuxJUMP|C[31]~15_combout\);

-- Location: FF_X85_Y45_N19
\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MuxJUMP|C[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

-- Location: LCCOMB_X80_Y1_N20
\muxRtImm|C[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxRtImm|C[0]~39_combout\ = (\UCFD|Mux3~0_combout\ & (\InstMem|ram~558_combout\)) # (!\UCFD|Mux3~0_combout\ & ((\BancoReg|Mux63~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMem|ram~558_combout\,
	datac => \BancoReg|Mux63~5_combout\,
	datad => \UCFD|Mux3~0_combout\,
	combout => \muxRtImm|C[0]~39_combout\);

-- Location: LCCOMB_X96_Y49_N28
\UCFD|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UCFD|Mux2~0_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & (\PC|DOUT\(1) $ (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|DOUT\(1),
	datab => \PC|DOUT\(3),
	datac => \PC|DOUT\(2),
	datad => \PC|DOUT\(0),
	combout => \UCFD|Mux2~0_combout\);

-- Location: IOIBUF_X56_Y73_N15
\regTestEnd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regTestEnd(4),
	o => \regTestEnd[4]~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\memTestEnd[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(4),
	o => \memTestEnd[4]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\memTestEnd[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(5),
	o => \memTestEnd[5]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\memTestEnd[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(6),
	o => \memTestEnd[6]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\memTestEnd[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(7),
	o => \memTestEnd[7]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\memTestEnd[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(8),
	o => \memTestEnd[8]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\memTestEnd[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(9),
	o => \memTestEnd[9]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\memTestEnd[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(10),
	o => \memTestEnd[10]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\memTestEnd[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(11),
	o => \memTestEnd[11]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\memTestEnd[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(12),
	o => \memTestEnd[12]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\memTestEnd[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(13),
	o => \memTestEnd[13]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\memTestEnd[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(14),
	o => \memTestEnd[14]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\memTestEnd[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(15),
	o => \memTestEnd[15]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\memTestEnd[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(16),
	o => \memTestEnd[16]~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\memTestEnd[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(17),
	o => \memTestEnd[17]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\memTestEnd[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(18),
	o => \memTestEnd[18]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\memTestEnd[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(19),
	o => \memTestEnd[19]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\memTestEnd[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(20),
	o => \memTestEnd[20]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\memTestEnd[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(21),
	o => \memTestEnd[21]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\memTestEnd[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(22),
	o => \memTestEnd[22]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\memTestEnd[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(23),
	o => \memTestEnd[23]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\memTestEnd[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(24),
	o => \memTestEnd[24]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\memTestEnd[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(25),
	o => \memTestEnd[25]~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\memTestEnd[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(26),
	o => \memTestEnd[26]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\memTestEnd[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(27),
	o => \memTestEnd[27]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\memTestEnd[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(28),
	o => \memTestEnd[28]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\memTestEnd[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(29),
	o => \memTestEnd[29]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\memTestEnd[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memTestEnd(30),
	o => \memTestEnd[30]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
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

ww_instRsOut(0) <= \instRsOut[0]~output_o\;

ww_instRsOut(1) <= \instRsOut[1]~output_o\;

ww_instRsOut(2) <= \instRsOut[2]~output_o\;

ww_instRsOut(3) <= \instRsOut[3]~output_o\;

ww_instRsOut(4) <= \instRsOut[4]~output_o\;

ww_instRtOut(0) <= \instRtOut[0]~output_o\;

ww_instRtOut(1) <= \instRtOut[1]~output_o\;

ww_instRtOut(2) <= \instRtOut[2]~output_o\;

ww_instRtOut(3) <= \instRtOut[3]~output_o\;

ww_instRtOut(4) <= \instRtOut[4]~output_o\;

ww_instRdOut(0) <= \instRdOut[0]~output_o\;

ww_instRdOut(1) <= \instRdOut[1]~output_o\;

ww_instRdOut(2) <= \instRdOut[2]~output_o\;

ww_instRdOut(3) <= \instRdOut[3]~output_o\;

ww_instRdOut(4) <= \instRdOut[4]~output_o\;

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
END structure;


