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
-- Generated on "11/23/2017 19:28:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bancoRegistradores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bancoRegistradores_vhd_vec_tst IS
END bancoRegistradores_vhd_vec_tst;
ARCHITECTURE bancoRegistradores_arch OF bancoRegistradores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dadoEscritaC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL enderecoA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL enderecoB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL enderecoC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL escreveC : STD_LOGIC;
SIGNAL saidaA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaB : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT bancoRegistradores
	PORT (
	clk : IN STD_LOGIC;
	dadoEscritaC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	enderecoA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	enderecoB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	enderecoC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	escreveC : IN STD_LOGIC;
	saidaA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bancoRegistradores
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dadoEscritaC => dadoEscritaC,
	enderecoA => enderecoA,
	enderecoB => enderecoB,
	enderecoC => enderecoC,
	escreveC => escreveC,
	saidaA => saidaA,
	saidaB => saidaB
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
-- dadoEscritaC[31]
t_prcs_dadoEscritaC_31: PROCESS
BEGIN
	dadoEscritaC(31) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_31;
-- dadoEscritaC[30]
t_prcs_dadoEscritaC_30: PROCESS
BEGIN
	dadoEscritaC(30) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_30;
-- dadoEscritaC[29]
t_prcs_dadoEscritaC_29: PROCESS
BEGIN
	dadoEscritaC(29) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_29;
-- dadoEscritaC[28]
t_prcs_dadoEscritaC_28: PROCESS
BEGIN
	dadoEscritaC(28) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_28;
-- dadoEscritaC[27]
t_prcs_dadoEscritaC_27: PROCESS
BEGIN
	dadoEscritaC(27) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_27;
-- dadoEscritaC[26]
t_prcs_dadoEscritaC_26: PROCESS
BEGIN
	dadoEscritaC(26) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_26;
-- dadoEscritaC[25]
t_prcs_dadoEscritaC_25: PROCESS
BEGIN
	dadoEscritaC(25) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_25;
-- dadoEscritaC[24]
t_prcs_dadoEscritaC_24: PROCESS
BEGIN
	dadoEscritaC(24) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_24;
-- dadoEscritaC[23]
t_prcs_dadoEscritaC_23: PROCESS
BEGIN
	dadoEscritaC(23) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_23;
-- dadoEscritaC[22]
t_prcs_dadoEscritaC_22: PROCESS
BEGIN
	dadoEscritaC(22) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_22;
-- dadoEscritaC[21]
t_prcs_dadoEscritaC_21: PROCESS
BEGIN
	dadoEscritaC(21) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_21;
-- dadoEscritaC[20]
t_prcs_dadoEscritaC_20: PROCESS
BEGIN
	dadoEscritaC(20) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_20;
-- dadoEscritaC[19]
t_prcs_dadoEscritaC_19: PROCESS
BEGIN
	dadoEscritaC(19) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_19;
-- dadoEscritaC[18]
t_prcs_dadoEscritaC_18: PROCESS
BEGIN
	dadoEscritaC(18) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_18;
-- dadoEscritaC[17]
t_prcs_dadoEscritaC_17: PROCESS
BEGIN
	dadoEscritaC(17) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_17;
-- dadoEscritaC[16]
t_prcs_dadoEscritaC_16: PROCESS
BEGIN
	dadoEscritaC(16) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_16;
-- dadoEscritaC[15]
t_prcs_dadoEscritaC_15: PROCESS
BEGIN
	dadoEscritaC(15) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_15;
-- dadoEscritaC[14]
t_prcs_dadoEscritaC_14: PROCESS
BEGIN
	dadoEscritaC(14) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_14;
-- dadoEscritaC[13]
t_prcs_dadoEscritaC_13: PROCESS
BEGIN
	dadoEscritaC(13) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_13;
-- dadoEscritaC[12]
t_prcs_dadoEscritaC_12: PROCESS
BEGIN
	dadoEscritaC(12) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_12;
-- dadoEscritaC[11]
t_prcs_dadoEscritaC_11: PROCESS
BEGIN
	dadoEscritaC(11) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_11;
-- dadoEscritaC[10]
t_prcs_dadoEscritaC_10: PROCESS
BEGIN
	dadoEscritaC(10) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_10;
-- dadoEscritaC[9]
t_prcs_dadoEscritaC_9: PROCESS
BEGIN
	dadoEscritaC(9) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_9;
-- dadoEscritaC[8]
t_prcs_dadoEscritaC_8: PROCESS
BEGIN
	dadoEscritaC(8) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_8;
-- dadoEscritaC[7]
t_prcs_dadoEscritaC_7: PROCESS
BEGIN
	dadoEscritaC(7) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_7;
-- dadoEscritaC[6]
t_prcs_dadoEscritaC_6: PROCESS
BEGIN
	dadoEscritaC(6) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscritaC_6;
-- dadoEscritaC[5]
t_prcs_dadoEscritaC_5: PROCESS
BEGIN
	dadoEscritaC(5) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_5;
-- dadoEscritaC[4]
t_prcs_dadoEscritaC_4: PROCESS
BEGIN
	dadoEscritaC(4) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscritaC_4;
-- dadoEscritaC[3]
t_prcs_dadoEscritaC_3: PROCESS
BEGIN
	dadoEscritaC(3) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscritaC_3;
-- dadoEscritaC[2]
t_prcs_dadoEscritaC_2: PROCESS
BEGIN
	dadoEscritaC(2) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_2;
-- dadoEscritaC[1]
t_prcs_dadoEscritaC_1: PROCESS
BEGIN
	dadoEscritaC(1) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_1;
-- dadoEscritaC[0]
t_prcs_dadoEscritaC_0: PROCESS
BEGIN
	dadoEscritaC(0) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_0;
-- enderecoA[31]
t_prcs_enderecoA_31: PROCESS
BEGIN
	enderecoA(31) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_31;
-- enderecoA[30]
t_prcs_enderecoA_30: PROCESS
BEGIN
	enderecoA(30) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_30;
-- enderecoA[29]
t_prcs_enderecoA_29: PROCESS
BEGIN
	enderecoA(29) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_29;
-- enderecoA[28]
t_prcs_enderecoA_28: PROCESS
BEGIN
	enderecoA(28) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_28;
-- enderecoA[27]
t_prcs_enderecoA_27: PROCESS
BEGIN
	enderecoA(27) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_27;
-- enderecoA[26]
t_prcs_enderecoA_26: PROCESS
BEGIN
	enderecoA(26) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_26;
-- enderecoA[25]
t_prcs_enderecoA_25: PROCESS
BEGIN
	enderecoA(25) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_25;
-- enderecoA[24]
t_prcs_enderecoA_24: PROCESS
BEGIN
	enderecoA(24) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_24;
-- enderecoA[23]
t_prcs_enderecoA_23: PROCESS
BEGIN
	enderecoA(23) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_23;
-- enderecoA[22]
t_prcs_enderecoA_22: PROCESS
BEGIN
	enderecoA(22) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_22;
-- enderecoA[21]
t_prcs_enderecoA_21: PROCESS
BEGIN
	enderecoA(21) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_21;
-- enderecoA[20]
t_prcs_enderecoA_20: PROCESS
BEGIN
	enderecoA(20) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_20;
-- enderecoA[19]
t_prcs_enderecoA_19: PROCESS
BEGIN
	enderecoA(19) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_19;
-- enderecoA[18]
t_prcs_enderecoA_18: PROCESS
BEGIN
	enderecoA(18) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_18;
-- enderecoA[17]
t_prcs_enderecoA_17: PROCESS
BEGIN
	enderecoA(17) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_17;
-- enderecoA[16]
t_prcs_enderecoA_16: PROCESS
BEGIN
	enderecoA(16) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_16;
-- enderecoA[15]
t_prcs_enderecoA_15: PROCESS
BEGIN
	enderecoA(15) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_15;
-- enderecoA[14]
t_prcs_enderecoA_14: PROCESS
BEGIN
	enderecoA(14) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_14;
-- enderecoA[13]
t_prcs_enderecoA_13: PROCESS
BEGIN
	enderecoA(13) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_13;
-- enderecoA[12]
t_prcs_enderecoA_12: PROCESS
BEGIN
	enderecoA(12) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_12;
-- enderecoA[11]
t_prcs_enderecoA_11: PROCESS
BEGIN
	enderecoA(11) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_11;
-- enderecoA[10]
t_prcs_enderecoA_10: PROCESS
BEGIN
	enderecoA(10) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_10;
-- enderecoA[9]
t_prcs_enderecoA_9: PROCESS
BEGIN
	enderecoA(9) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_9;
-- enderecoA[8]
t_prcs_enderecoA_8: PROCESS
BEGIN
	enderecoA(8) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_8;
-- enderecoA[7]
t_prcs_enderecoA_7: PROCESS
BEGIN
	enderecoA(7) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_7;
-- enderecoA[6]
t_prcs_enderecoA_6: PROCESS
BEGIN
	enderecoA(6) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_6;
-- enderecoA[5]
t_prcs_enderecoA_5: PROCESS
BEGIN
	enderecoA(5) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_5;
-- enderecoA[4]
t_prcs_enderecoA_4: PROCESS
BEGIN
	enderecoA(4) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_4;
-- enderecoA[3]
t_prcs_enderecoA_3: PROCESS
BEGIN
	enderecoA(3) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_3;
-- enderecoA[2]
t_prcs_enderecoA_2: PROCESS
BEGIN
	enderecoA(2) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_2;
-- enderecoA[1]
t_prcs_enderecoA_1: PROCESS
BEGIN
	enderecoA(1) <= '1';
WAIT;
END PROCESS t_prcs_enderecoA_1;
-- enderecoA[0]
t_prcs_enderecoA_0: PROCESS
BEGIN
	enderecoA(0) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_0;
-- enderecoB[31]
t_prcs_enderecoB_31: PROCESS
BEGIN
	enderecoB(31) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_31;
-- enderecoB[30]
t_prcs_enderecoB_30: PROCESS
BEGIN
	enderecoB(30) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_30;
-- enderecoB[29]
t_prcs_enderecoB_29: PROCESS
BEGIN
	enderecoB(29) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_29;
-- enderecoB[28]
t_prcs_enderecoB_28: PROCESS
BEGIN
	enderecoB(28) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_28;
-- enderecoB[27]
t_prcs_enderecoB_27: PROCESS
BEGIN
	enderecoB(27) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_27;
-- enderecoB[26]
t_prcs_enderecoB_26: PROCESS
BEGIN
	enderecoB(26) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_26;
-- enderecoB[25]
t_prcs_enderecoB_25: PROCESS
BEGIN
	enderecoB(25) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_25;
-- enderecoB[24]
t_prcs_enderecoB_24: PROCESS
BEGIN
	enderecoB(24) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_24;
-- enderecoB[23]
t_prcs_enderecoB_23: PROCESS
BEGIN
	enderecoB(23) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_23;
-- enderecoB[22]
t_prcs_enderecoB_22: PROCESS
BEGIN
	enderecoB(22) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_22;
-- enderecoB[21]
t_prcs_enderecoB_21: PROCESS
BEGIN
	enderecoB(21) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_21;
-- enderecoB[20]
t_prcs_enderecoB_20: PROCESS
BEGIN
	enderecoB(20) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_20;
-- enderecoB[19]
t_prcs_enderecoB_19: PROCESS
BEGIN
	enderecoB(19) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_19;
-- enderecoB[18]
t_prcs_enderecoB_18: PROCESS
BEGIN
	enderecoB(18) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_18;
-- enderecoB[17]
t_prcs_enderecoB_17: PROCESS
BEGIN
	enderecoB(17) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_17;
-- enderecoB[16]
t_prcs_enderecoB_16: PROCESS
BEGIN
	enderecoB(16) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_16;
-- enderecoB[15]
t_prcs_enderecoB_15: PROCESS
BEGIN
	enderecoB(15) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_15;
-- enderecoB[14]
t_prcs_enderecoB_14: PROCESS
BEGIN
	enderecoB(14) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_14;
-- enderecoB[13]
t_prcs_enderecoB_13: PROCESS
BEGIN
	enderecoB(13) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_13;
-- enderecoB[12]
t_prcs_enderecoB_12: PROCESS
BEGIN
	enderecoB(12) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_12;
-- enderecoB[11]
t_prcs_enderecoB_11: PROCESS
BEGIN
	enderecoB(11) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_11;
-- enderecoB[10]
t_prcs_enderecoB_10: PROCESS
BEGIN
	enderecoB(10) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_10;
-- enderecoB[9]
t_prcs_enderecoB_9: PROCESS
BEGIN
	enderecoB(9) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_9;
-- enderecoB[8]
t_prcs_enderecoB_8: PROCESS
BEGIN
	enderecoB(8) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_8;
-- enderecoB[7]
t_prcs_enderecoB_7: PROCESS
BEGIN
	enderecoB(7) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_7;
-- enderecoB[6]
t_prcs_enderecoB_6: PROCESS
BEGIN
	enderecoB(6) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_6;
-- enderecoB[5]
t_prcs_enderecoB_5: PROCESS
BEGIN
	enderecoB(5) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_5;
-- enderecoB[4]
t_prcs_enderecoB_4: PROCESS
BEGIN
	enderecoB(4) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_4;
-- enderecoB[3]
t_prcs_enderecoB_3: PROCESS
BEGIN
	enderecoB(3) <= '1';
WAIT;
END PROCESS t_prcs_enderecoB_3;
-- enderecoB[2]
t_prcs_enderecoB_2: PROCESS
BEGIN
	enderecoB(2) <= '1';
WAIT;
END PROCESS t_prcs_enderecoB_2;
-- enderecoB[1]
t_prcs_enderecoB_1: PROCESS
BEGIN
	enderecoB(1) <= '1';
WAIT;
END PROCESS t_prcs_enderecoB_1;
-- enderecoB[0]
t_prcs_enderecoB_0: PROCESS
BEGIN
	enderecoB(0) <= '1';
WAIT;
END PROCESS t_prcs_enderecoB_0;
-- enderecoC[31]
t_prcs_enderecoC_31: PROCESS
BEGIN
	enderecoC(31) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_31;
-- enderecoC[30]
t_prcs_enderecoC_30: PROCESS
BEGIN
	enderecoC(30) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_30;
-- enderecoC[29]
t_prcs_enderecoC_29: PROCESS
BEGIN
	enderecoC(29) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_29;
-- enderecoC[28]
t_prcs_enderecoC_28: PROCESS
BEGIN
	enderecoC(28) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_28;
-- enderecoC[27]
t_prcs_enderecoC_27: PROCESS
BEGIN
	enderecoC(27) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_27;
-- enderecoC[26]
t_prcs_enderecoC_26: PROCESS
BEGIN
	enderecoC(26) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_26;
-- enderecoC[25]
t_prcs_enderecoC_25: PROCESS
BEGIN
	enderecoC(25) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_25;
-- enderecoC[24]
t_prcs_enderecoC_24: PROCESS
BEGIN
	enderecoC(24) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_24;
-- enderecoC[23]
t_prcs_enderecoC_23: PROCESS
BEGIN
	enderecoC(23) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_23;
-- enderecoC[22]
t_prcs_enderecoC_22: PROCESS
BEGIN
	enderecoC(22) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_22;
-- enderecoC[21]
t_prcs_enderecoC_21: PROCESS
BEGIN
	enderecoC(21) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_21;
-- enderecoC[20]
t_prcs_enderecoC_20: PROCESS
BEGIN
	enderecoC(20) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_20;
-- enderecoC[19]
t_prcs_enderecoC_19: PROCESS
BEGIN
	enderecoC(19) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_19;
-- enderecoC[18]
t_prcs_enderecoC_18: PROCESS
BEGIN
	enderecoC(18) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_18;
-- enderecoC[17]
t_prcs_enderecoC_17: PROCESS
BEGIN
	enderecoC(17) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_17;
-- enderecoC[16]
t_prcs_enderecoC_16: PROCESS
BEGIN
	enderecoC(16) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_16;
-- enderecoC[15]
t_prcs_enderecoC_15: PROCESS
BEGIN
	enderecoC(15) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_15;
-- enderecoC[14]
t_prcs_enderecoC_14: PROCESS
BEGIN
	enderecoC(14) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_14;
-- enderecoC[13]
t_prcs_enderecoC_13: PROCESS
BEGIN
	enderecoC(13) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_13;
-- enderecoC[12]
t_prcs_enderecoC_12: PROCESS
BEGIN
	enderecoC(12) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_12;
-- enderecoC[11]
t_prcs_enderecoC_11: PROCESS
BEGIN
	enderecoC(11) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_11;
-- enderecoC[10]
t_prcs_enderecoC_10: PROCESS
BEGIN
	enderecoC(10) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_10;
-- enderecoC[9]
t_prcs_enderecoC_9: PROCESS
BEGIN
	enderecoC(9) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_9;
-- enderecoC[8]
t_prcs_enderecoC_8: PROCESS
BEGIN
	enderecoC(8) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_8;
-- enderecoC[7]
t_prcs_enderecoC_7: PROCESS
BEGIN
	enderecoC(7) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_7;
-- enderecoC[6]
t_prcs_enderecoC_6: PROCESS
BEGIN
	enderecoC(6) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_6;
-- enderecoC[5]
t_prcs_enderecoC_5: PROCESS
BEGIN
	enderecoC(5) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_5;
-- enderecoC[4]
t_prcs_enderecoC_4: PROCESS
BEGIN
	enderecoC(4) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_4;
-- enderecoC[3]
t_prcs_enderecoC_3: PROCESS
BEGIN
	enderecoC(3) <= '1';
WAIT;
END PROCESS t_prcs_enderecoC_3;
-- enderecoC[2]
t_prcs_enderecoC_2: PROCESS
BEGIN
	enderecoC(2) <= '1';
WAIT;
END PROCESS t_prcs_enderecoC_2;
-- enderecoC[1]
t_prcs_enderecoC_1: PROCESS
BEGIN
	enderecoC(1) <= '1';
WAIT;
END PROCESS t_prcs_enderecoC_1;
-- enderecoC[0]
t_prcs_enderecoC_0: PROCESS
BEGIN
	enderecoC(0) <= '1';
WAIT;
END PROCESS t_prcs_enderecoC_0;

-- escreveC
t_prcs_escreveC: PROCESS
BEGIN
	escreveC <= '1';
WAIT;
END PROCESS t_prcs_escreveC;
END bancoRegistradores_arch;
