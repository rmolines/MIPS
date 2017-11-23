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
-- Generated on "11/23/2017 19:32:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_vhd_vec_tst IS
END RAM_vhd_vec_tst;
ARCHITECTURE RAM_arch OF RAM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL re : STD_LOGIC;
SIGNAL we : STD_LOGIC;
COMPONENT RAM
	PORT (
	addr : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	re : IN STD_LOGIC;
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	data => data,
	q => q,
	re => re,
	we => we
	);

-- addr
t_prcs_addr: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		addr <= '0';
		WAIT FOR 160000 ps;
		addr <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	addr <= '0';
WAIT;
END PROCESS t_prcs_addr;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- data[31]
t_prcs_data_31: PROCESS
BEGIN
	data(31) <= '0';
WAIT;
END PROCESS t_prcs_data_31;
-- data[30]
t_prcs_data_30: PROCESS
BEGIN
	data(30) <= '0';
WAIT;
END PROCESS t_prcs_data_30;
-- data[29]
t_prcs_data_29: PROCESS
BEGIN
	data(29) <= '0';
WAIT;
END PROCESS t_prcs_data_29;
-- data[28]
t_prcs_data_28: PROCESS
BEGIN
	data(28) <= '0';
WAIT;
END PROCESS t_prcs_data_28;
-- data[27]
t_prcs_data_27: PROCESS
BEGIN
	data(27) <= '0';
WAIT;
END PROCESS t_prcs_data_27;
-- data[26]
t_prcs_data_26: PROCESS
BEGIN
	data(26) <= '0';
WAIT;
END PROCESS t_prcs_data_26;
-- data[25]
t_prcs_data_25: PROCESS
BEGIN
	data(25) <= '0';
WAIT;
END PROCESS t_prcs_data_25;
-- data[24]
t_prcs_data_24: PROCESS
BEGIN
	data(24) <= '0';
WAIT;
END PROCESS t_prcs_data_24;
-- data[23]
t_prcs_data_23: PROCESS
BEGIN
	data(23) <= '0';
WAIT;
END PROCESS t_prcs_data_23;
-- data[22]
t_prcs_data_22: PROCESS
BEGIN
	data(22) <= '0';
WAIT;
END PROCESS t_prcs_data_22;
-- data[21]
t_prcs_data_21: PROCESS
BEGIN
	data(21) <= '0';
WAIT;
END PROCESS t_prcs_data_21;
-- data[20]
t_prcs_data_20: PROCESS
BEGIN
	data(20) <= '0';
WAIT;
END PROCESS t_prcs_data_20;
-- data[19]
t_prcs_data_19: PROCESS
BEGIN
	data(19) <= '0';
WAIT;
END PROCESS t_prcs_data_19;
-- data[18]
t_prcs_data_18: PROCESS
BEGIN
	data(18) <= '0';
WAIT;
END PROCESS t_prcs_data_18;
-- data[17]
t_prcs_data_17: PROCESS
BEGIN
	data(17) <= '0';
WAIT;
END PROCESS t_prcs_data_17;
-- data[16]
t_prcs_data_16: PROCESS
BEGIN
	data(16) <= '0';
WAIT;
END PROCESS t_prcs_data_16;
-- data[15]
t_prcs_data_15: PROCESS
BEGIN
	data(15) <= '0';
WAIT;
END PROCESS t_prcs_data_15;
-- data[14]
t_prcs_data_14: PROCESS
BEGIN
	data(14) <= '0';
WAIT;
END PROCESS t_prcs_data_14;
-- data[13]
t_prcs_data_13: PROCESS
BEGIN
	data(13) <= '0';
WAIT;
END PROCESS t_prcs_data_13;
-- data[12]
t_prcs_data_12: PROCESS
BEGIN
	data(12) <= '0';
WAIT;
END PROCESS t_prcs_data_12;
-- data[11]
t_prcs_data_11: PROCESS
BEGIN
	data(11) <= '0';
WAIT;
END PROCESS t_prcs_data_11;
-- data[10]
t_prcs_data_10: PROCESS
BEGIN
	data(10) <= '1';
WAIT;
END PROCESS t_prcs_data_10;
-- data[9]
t_prcs_data_9: PROCESS
BEGIN
	data(9) <= '0';
WAIT;
END PROCESS t_prcs_data_9;
-- data[8]
t_prcs_data_8: PROCESS
BEGIN
	data(8) <= '0';
WAIT;
END PROCESS t_prcs_data_8;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '0';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '0';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;

-- re
t_prcs_re: PROCESS
BEGIN
	re <= '1';
WAIT;
END PROCESS t_prcs_re;

-- we
t_prcs_we: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		we <= '0';
		WAIT FOR 75000 ps;
		we <= '1';
		WAIT FOR 75000 ps;
	END LOOP;
	we <= '0';
	WAIT FOR 75000 ps;
	we <= '1';
WAIT;
END PROCESS t_prcs_we;
END RAM_arch;
