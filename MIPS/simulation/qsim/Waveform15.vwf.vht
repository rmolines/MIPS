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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/28/2017 12:34:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPSC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPSC_vhd_vec_tst IS
END MIPSC_vhd_vec_tst;
ARCHITECTURE MIPSC_arch OF MIPSC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL key : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL memEnd : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL memTestEndOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL memTestOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL regEnd : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL regTestEndOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL regTestOut2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPSC
	PORT (
	clk : IN STD_LOGIC;
	key : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	memEnd : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	memTestEndOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	memTestOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	regEnd : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	regTestEndOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	regTestOut2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPSC
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	key => key,
	memEnd => memEnd,
	memTestEndOut => memTestEndOut,
	memTestOut => memTestOut,
	regEnd => regEnd,
	regTestEndOut => regTestEndOut,
	regTestOut2 => regTestOut2
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		clk <= '0';
		WAIT FOR 80000 ps;
		clk <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- key[3]
t_prcs_key_3: PROCESS
BEGIN
	key(3) <= '0';
	WAIT FOR 20000 ps;
	key(3) <= '1';
	WAIT FOR 20000 ps;
	key(3) <= '0';
	WAIT FOR 30000 ps;
	key(3) <= '1';
	WAIT FOR 10000 ps;
	key(3) <= '0';
	WAIT FOR 20000 ps;
	key(3) <= '1';
	WAIT FOR 30000 ps;
	key(3) <= '0';
	WAIT FOR 30000 ps;
	key(3) <= '1';
	WAIT FOR 50000 ps;
	key(3) <= '0';
	WAIT FOR 40000 ps;
	key(3) <= '1';
	WAIT FOR 50000 ps;
	key(3) <= '0';
WAIT;
END PROCESS t_prcs_key_3;
-- key[2]
t_prcs_key_2: PROCESS
BEGIN
	key(2) <= '0';
WAIT;
END PROCESS t_prcs_key_2;
-- key[1]
t_prcs_key_1: PROCESS
BEGIN
	key(1) <= '0';
WAIT;
END PROCESS t_prcs_key_1;
-- key[0]
t_prcs_key_0: PROCESS
BEGIN
	key(0) <= '0';
	WAIT FOR 80000 ps;
	key(0) <= '1';
	WAIT FOR 60000 ps;
	key(0) <= '0';
WAIT;
END PROCESS t_prcs_key_0;
-- memEnd[31]
t_prcs_memEnd_31: PROCESS
BEGIN
	memEnd(31) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_31;
-- memEnd[30]
t_prcs_memEnd_30: PROCESS
BEGIN
	memEnd(30) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_30;
-- memEnd[29]
t_prcs_memEnd_29: PROCESS
BEGIN
	memEnd(29) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_29;
-- memEnd[28]
t_prcs_memEnd_28: PROCESS
BEGIN
	memEnd(28) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_28;
-- memEnd[27]
t_prcs_memEnd_27: PROCESS
BEGIN
	memEnd(27) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_27;
-- memEnd[26]
t_prcs_memEnd_26: PROCESS
BEGIN
	memEnd(26) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_26;
-- memEnd[25]
t_prcs_memEnd_25: PROCESS
BEGIN
	memEnd(25) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_25;
-- memEnd[24]
t_prcs_memEnd_24: PROCESS
BEGIN
	memEnd(24) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_24;
-- memEnd[23]
t_prcs_memEnd_23: PROCESS
BEGIN
	memEnd(23) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_23;
-- memEnd[22]
t_prcs_memEnd_22: PROCESS
BEGIN
	memEnd(22) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_22;
-- memEnd[21]
t_prcs_memEnd_21: PROCESS
BEGIN
	memEnd(21) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_21;
-- memEnd[20]
t_prcs_memEnd_20: PROCESS
BEGIN
	memEnd(20) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_20;
-- memEnd[19]
t_prcs_memEnd_19: PROCESS
BEGIN
	memEnd(19) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_19;
-- memEnd[18]
t_prcs_memEnd_18: PROCESS
BEGIN
	memEnd(18) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_18;
-- memEnd[17]
t_prcs_memEnd_17: PROCESS
BEGIN
	memEnd(17) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_17;
-- memEnd[16]
t_prcs_memEnd_16: PROCESS
BEGIN
	memEnd(16) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_16;
-- memEnd[15]
t_prcs_memEnd_15: PROCESS
BEGIN
	memEnd(15) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_15;
-- memEnd[14]
t_prcs_memEnd_14: PROCESS
BEGIN
	memEnd(14) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_14;
-- memEnd[13]
t_prcs_memEnd_13: PROCESS
BEGIN
	memEnd(13) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_13;
-- memEnd[12]
t_prcs_memEnd_12: PROCESS
BEGIN
	memEnd(12) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_12;
-- memEnd[11]
t_prcs_memEnd_11: PROCESS
BEGIN
	memEnd(11) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_11;
-- memEnd[10]
t_prcs_memEnd_10: PROCESS
BEGIN
	memEnd(10) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_10;
-- memEnd[9]
t_prcs_memEnd_9: PROCESS
BEGIN
	memEnd(9) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_9;
-- memEnd[8]
t_prcs_memEnd_8: PROCESS
BEGIN
	memEnd(8) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_8;
-- memEnd[7]
t_prcs_memEnd_7: PROCESS
BEGIN
	memEnd(7) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_7;
-- memEnd[6]
t_prcs_memEnd_6: PROCESS
BEGIN
	memEnd(6) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_6;
-- memEnd[5]
t_prcs_memEnd_5: PROCESS
BEGIN
	memEnd(5) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_5;
-- memEnd[4]
t_prcs_memEnd_4: PROCESS
BEGIN
	memEnd(4) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_4;
-- memEnd[3]
t_prcs_memEnd_3: PROCESS
BEGIN
	memEnd(3) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_3;
-- memEnd[2]
t_prcs_memEnd_2: PROCESS
BEGIN
	memEnd(2) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_2;
-- memEnd[1]
t_prcs_memEnd_1: PROCESS
BEGIN
	memEnd(1) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_1;
-- memEnd[0]
t_prcs_memEnd_0: PROCESS
BEGIN
	memEnd(0) <= '0';
WAIT;
END PROCESS t_prcs_memEnd_0;
-- regEnd[31]
t_prcs_regEnd_31: PROCESS
BEGIN
	regEnd(31) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_31;
-- regEnd[30]
t_prcs_regEnd_30: PROCESS
BEGIN
	regEnd(30) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_30;
-- regEnd[29]
t_prcs_regEnd_29: PROCESS
BEGIN
	regEnd(29) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_29;
-- regEnd[28]
t_prcs_regEnd_28: PROCESS
BEGIN
	regEnd(28) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_28;
-- regEnd[27]
t_prcs_regEnd_27: PROCESS
BEGIN
	regEnd(27) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_27;
-- regEnd[26]
t_prcs_regEnd_26: PROCESS
BEGIN
	regEnd(26) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_26;
-- regEnd[25]
t_prcs_regEnd_25: PROCESS
BEGIN
	regEnd(25) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_25;
-- regEnd[24]
t_prcs_regEnd_24: PROCESS
BEGIN
	regEnd(24) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_24;
-- regEnd[23]
t_prcs_regEnd_23: PROCESS
BEGIN
	regEnd(23) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_23;
-- regEnd[22]
t_prcs_regEnd_22: PROCESS
BEGIN
	regEnd(22) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_22;
-- regEnd[21]
t_prcs_regEnd_21: PROCESS
BEGIN
	regEnd(21) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_21;
-- regEnd[20]
t_prcs_regEnd_20: PROCESS
BEGIN
	regEnd(20) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_20;
-- regEnd[19]
t_prcs_regEnd_19: PROCESS
BEGIN
	regEnd(19) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_19;
-- regEnd[18]
t_prcs_regEnd_18: PROCESS
BEGIN
	regEnd(18) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_18;
-- regEnd[17]
t_prcs_regEnd_17: PROCESS
BEGIN
	regEnd(17) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_17;
-- regEnd[16]
t_prcs_regEnd_16: PROCESS
BEGIN
	regEnd(16) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_16;
-- regEnd[15]
t_prcs_regEnd_15: PROCESS
BEGIN
	regEnd(15) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_15;
-- regEnd[14]
t_prcs_regEnd_14: PROCESS
BEGIN
	regEnd(14) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_14;
-- regEnd[13]
t_prcs_regEnd_13: PROCESS
BEGIN
	regEnd(13) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_13;
-- regEnd[12]
t_prcs_regEnd_12: PROCESS
BEGIN
	regEnd(12) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_12;
-- regEnd[11]
t_prcs_regEnd_11: PROCESS
BEGIN
	regEnd(11) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_11;
-- regEnd[10]
t_prcs_regEnd_10: PROCESS
BEGIN
	regEnd(10) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_10;
-- regEnd[9]
t_prcs_regEnd_9: PROCESS
BEGIN
	regEnd(9) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_9;
-- regEnd[8]
t_prcs_regEnd_8: PROCESS
BEGIN
	regEnd(8) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_8;
-- regEnd[7]
t_prcs_regEnd_7: PROCESS
BEGIN
	regEnd(7) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_7;
-- regEnd[6]
t_prcs_regEnd_6: PROCESS
BEGIN
	regEnd(6) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_6;
-- regEnd[5]
t_prcs_regEnd_5: PROCESS
BEGIN
	regEnd(5) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_5;
-- regEnd[4]
t_prcs_regEnd_4: PROCESS
BEGIN
	regEnd(4) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_4;
-- regEnd[3]
t_prcs_regEnd_3: PROCESS
BEGIN
	regEnd(3) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_3;
-- regEnd[2]
t_prcs_regEnd_2: PROCESS
BEGIN
	regEnd(2) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_2;
-- regEnd[1]
t_prcs_regEnd_1: PROCESS
BEGIN
	regEnd(1) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_1;
-- regEnd[0]
t_prcs_regEnd_0: PROCESS
BEGIN
	regEnd(0) <= '0';
WAIT;
END PROCESS t_prcs_regEnd_0;
END MIPSC_arch;
