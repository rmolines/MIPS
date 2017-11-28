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
-- Generated on "11/28/2017 12:05:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fluxoDeDadosC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fluxoDeDadosC_vhd_vec_tst IS
END fluxoDeDadosC_vhd_vec_tst;
ARCHITECTURE fluxoDeDadosC_arch OF fluxoDeDadosC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL beqadder : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL beqadder2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL beqadderout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL instRdOut : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL instRsOut : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL instRtOut : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL memTestEnd : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL memTestOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PCOutTeste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL readData1Out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL readData2Out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL regTestEnd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL regTestOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULAINA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULAINB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULAOUTTESTE : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULASEL : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL word : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL writeData : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT fluxoDeDadosC
	PORT (
	beqadder : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	beqadder2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	beqadderout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	instRdOut : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	instRsOut : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	instRtOut : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	memTestEnd : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	memTestOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	PCOutTeste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	readData1Out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	readData2Out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	regTestEnd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	regTestOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAINA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAINB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAOUTTESTE : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULASEL : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	word : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	writeData : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fluxoDeDadosC
	PORT MAP (
-- list connections between master ports and signals
	beqadder => beqadder,
	beqadder2 => beqadder2,
	beqadderout => beqadderout,
	clk => clk,
	instRdOut => instRdOut,
	instRsOut => instRsOut,
	instRtOut => instRtOut,
	memTestEnd => memTestEnd,
	memTestOut => memTestOut,
	PCOutTeste => PCOutTeste,
	readData1Out => readData1Out,
	readData2Out => readData2Out,
	regTestEnd => regTestEnd,
	regTestOut => regTestOut,
	ULAINA => ULAINA,
	ULAINB => ULAINB,
	ULAOUTTESTE => ULAOUTTESTE,
	ULASEL => ULASEL,
	word => word,
	writeData => writeData
	);

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
-- regTestEnd[4]
t_prcs_regTestEnd_4: PROCESS
BEGIN
	regTestEnd(4) <= '0';
WAIT;
END PROCESS t_prcs_regTestEnd_4;
-- regTestEnd[3]
t_prcs_regTestEnd_3: PROCESS
BEGIN
	regTestEnd(3) <= '0';
WAIT;
END PROCESS t_prcs_regTestEnd_3;
-- regTestEnd[2]
t_prcs_regTestEnd_2: PROCESS
BEGIN
	regTestEnd(2) <= '1';
WAIT;
END PROCESS t_prcs_regTestEnd_2;
-- regTestEnd[1]
t_prcs_regTestEnd_1: PROCESS
BEGIN
	regTestEnd(1) <= '0';
WAIT;
END PROCESS t_prcs_regTestEnd_1;
-- regTestEnd[0]
t_prcs_regTestEnd_0: PROCESS
BEGIN
	regTestEnd(0) <= '1';
WAIT;
END PROCESS t_prcs_regTestEnd_0;
-- memTestEnd[31]
t_prcs_memTestEnd_31: PROCESS
BEGIN
	memTestEnd(31) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_31;
-- memTestEnd[30]
t_prcs_memTestEnd_30: PROCESS
BEGIN
	memTestEnd(30) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_30;
-- memTestEnd[29]
t_prcs_memTestEnd_29: PROCESS
BEGIN
	memTestEnd(29) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_29;
-- memTestEnd[28]
t_prcs_memTestEnd_28: PROCESS
BEGIN
	memTestEnd(28) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_28;
-- memTestEnd[27]
t_prcs_memTestEnd_27: PROCESS
BEGIN
	memTestEnd(27) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_27;
-- memTestEnd[26]
t_prcs_memTestEnd_26: PROCESS
BEGIN
	memTestEnd(26) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_26;
-- memTestEnd[25]
t_prcs_memTestEnd_25: PROCESS
BEGIN
	memTestEnd(25) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_25;
-- memTestEnd[24]
t_prcs_memTestEnd_24: PROCESS
BEGIN
	memTestEnd(24) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_24;
-- memTestEnd[23]
t_prcs_memTestEnd_23: PROCESS
BEGIN
	memTestEnd(23) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_23;
-- memTestEnd[22]
t_prcs_memTestEnd_22: PROCESS
BEGIN
	memTestEnd(22) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_22;
-- memTestEnd[21]
t_prcs_memTestEnd_21: PROCESS
BEGIN
	memTestEnd(21) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_21;
-- memTestEnd[20]
t_prcs_memTestEnd_20: PROCESS
BEGIN
	memTestEnd(20) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_20;
-- memTestEnd[19]
t_prcs_memTestEnd_19: PROCESS
BEGIN
	memTestEnd(19) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_19;
-- memTestEnd[18]
t_prcs_memTestEnd_18: PROCESS
BEGIN
	memTestEnd(18) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_18;
-- memTestEnd[17]
t_prcs_memTestEnd_17: PROCESS
BEGIN
	memTestEnd(17) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_17;
-- memTestEnd[16]
t_prcs_memTestEnd_16: PROCESS
BEGIN
	memTestEnd(16) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_16;
-- memTestEnd[15]
t_prcs_memTestEnd_15: PROCESS
BEGIN
	memTestEnd(15) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_15;
-- memTestEnd[14]
t_prcs_memTestEnd_14: PROCESS
BEGIN
	memTestEnd(14) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_14;
-- memTestEnd[13]
t_prcs_memTestEnd_13: PROCESS
BEGIN
	memTestEnd(13) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_13;
-- memTestEnd[12]
t_prcs_memTestEnd_12: PROCESS
BEGIN
	memTestEnd(12) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_12;
-- memTestEnd[11]
t_prcs_memTestEnd_11: PROCESS
BEGIN
	memTestEnd(11) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_11;
-- memTestEnd[10]
t_prcs_memTestEnd_10: PROCESS
BEGIN
	memTestEnd(10) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_10;
-- memTestEnd[9]
t_prcs_memTestEnd_9: PROCESS
BEGIN
	memTestEnd(9) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_9;
-- memTestEnd[8]
t_prcs_memTestEnd_8: PROCESS
BEGIN
	memTestEnd(8) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_8;
-- memTestEnd[7]
t_prcs_memTestEnd_7: PROCESS
BEGIN
	memTestEnd(7) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_7;
-- memTestEnd[6]
t_prcs_memTestEnd_6: PROCESS
BEGIN
	memTestEnd(6) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_6;
-- memTestEnd[5]
t_prcs_memTestEnd_5: PROCESS
BEGIN
	memTestEnd(5) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_5;
-- memTestEnd[4]
t_prcs_memTestEnd_4: PROCESS
BEGIN
	memTestEnd(4) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_4;
-- memTestEnd[3]
t_prcs_memTestEnd_3: PROCESS
BEGIN
	memTestEnd(3) <= '1';
WAIT;
END PROCESS t_prcs_memTestEnd_3;
-- memTestEnd[2]
t_prcs_memTestEnd_2: PROCESS
BEGIN
	memTestEnd(2) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_2;
-- memTestEnd[1]
t_prcs_memTestEnd_1: PROCESS
BEGIN
	memTestEnd(1) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_1;
-- memTestEnd[0]
t_prcs_memTestEnd_0: PROCESS
BEGIN
	memTestEnd(0) <= '0';
WAIT;
END PROCESS t_prcs_memTestEnd_0;
END fluxoDeDadosC_arch;
