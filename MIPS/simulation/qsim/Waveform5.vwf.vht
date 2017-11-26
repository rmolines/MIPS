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
-- Generated on "11/26/2017 12:20:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fluxoDeDados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fluxoDeDados_vhd_vec_tst IS
END fluxoDeDados_vhd_vec_tst;
ARCHITECTURE fluxoDeDados_arch OF fluxoDeDados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL instRdOut : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL instRsOut : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL instRtOut : STD_LOGIC_VECTOR(4 DOWNTO 0);
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
COMPONENT fluxoDeDados
	PORT (
	clk : IN STD_LOGIC;
	instRdOut : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	instRsOut : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	instRtOut : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	PCOutTeste : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	readData1Out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	readData2Out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	regTestEnd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	regTestOut : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAINA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAINB : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAOUTTESTE : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULASEL : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	word : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	writeData : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fluxoDeDados
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	instRdOut => instRdOut,
	instRsOut => instRsOut,
	instRtOut => instRtOut,
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
END fluxoDeDados_arch;
