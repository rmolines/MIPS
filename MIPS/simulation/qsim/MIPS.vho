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

-- DATE "11/23/2017 19:34:26"

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

ENTITY 	RAM IS
    PORT (
	clk : IN std_logic;
	addr : IN std_logic;
	data : IN std_logic_vector(31 DOWNTO 0);
	we : IN std_logic;
	re : IN std_logic;
	q : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END RAM;

-- Design Ports Information
-- q[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[31]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- re	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[16]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[17]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[18]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[19]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[20]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[21]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[22]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[23]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[24]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[25]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[26]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[27]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[28]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[29]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[30]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[31]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM IS
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
SIGNAL ww_addr : std_logic;
SIGNAL ww_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_we : std_logic;
SIGNAL ww_re : std_logic;
SIGNAL ww_q : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \q[10]~output_o\ : std_logic;
SIGNAL \q[11]~output_o\ : std_logic;
SIGNAL \q[12]~output_o\ : std_logic;
SIGNAL \q[13]~output_o\ : std_logic;
SIGNAL \q[14]~output_o\ : std_logic;
SIGNAL \q[15]~output_o\ : std_logic;
SIGNAL \q[16]~output_o\ : std_logic;
SIGNAL \q[17]~output_o\ : std_logic;
SIGNAL \q[18]~output_o\ : std_logic;
SIGNAL \q[19]~output_o\ : std_logic;
SIGNAL \q[20]~output_o\ : std_logic;
SIGNAL \q[21]~output_o\ : std_logic;
SIGNAL \q[22]~output_o\ : std_logic;
SIGNAL \q[23]~output_o\ : std_logic;
SIGNAL \q[24]~output_o\ : std_logic;
SIGNAL \q[25]~output_o\ : std_logic;
SIGNAL \q[26]~output_o\ : std_logic;
SIGNAL \q[27]~output_o\ : std_logic;
SIGNAL \q[28]~output_o\ : std_logic;
SIGNAL \q[29]~output_o\ : std_logic;
SIGNAL \q[30]~output_o\ : std_logic;
SIGNAL \q[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \addr~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \ram~131_combout\ : std_logic;
SIGNAL \ram~34_q\ : std_logic;
SIGNAL \ram~66feeder_combout\ : std_logic;
SIGNAL \ram~130_combout\ : std_logic;
SIGNAL \ram~66_q\ : std_logic;
SIGNAL \ram~98_combout\ : std_logic;
SIGNAL \re~input_o\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \ram~35_q\ : std_logic;
SIGNAL \ram~67feeder_combout\ : std_logic;
SIGNAL \ram~67_q\ : std_logic;
SIGNAL \ram~99_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \ram~36_q\ : std_logic;
SIGNAL \ram~68_q\ : std_logic;
SIGNAL \ram~100_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \ram~37feeder_combout\ : std_logic;
SIGNAL \ram~37_q\ : std_logic;
SIGNAL \ram~69feeder_combout\ : std_logic;
SIGNAL \ram~69_q\ : std_logic;
SIGNAL \ram~101_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \ram~38_q\ : std_logic;
SIGNAL \ram~70feeder_combout\ : std_logic;
SIGNAL \ram~70_q\ : std_logic;
SIGNAL \ram~102_combout\ : std_logic;
SIGNAL \q[4]~reg0_q\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \ram~39_q\ : std_logic;
SIGNAL \ram~71_q\ : std_logic;
SIGNAL \ram~103_combout\ : std_logic;
SIGNAL \q[5]~reg0_q\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \ram~40feeder_combout\ : std_logic;
SIGNAL \ram~40_q\ : std_logic;
SIGNAL \ram~72feeder_combout\ : std_logic;
SIGNAL \ram~72_q\ : std_logic;
SIGNAL \ram~104_combout\ : std_logic;
SIGNAL \q[6]~reg0_q\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \ram~41feeder_combout\ : std_logic;
SIGNAL \ram~41_q\ : std_logic;
SIGNAL \ram~73feeder_combout\ : std_logic;
SIGNAL \ram~73_q\ : std_logic;
SIGNAL \ram~105_combout\ : std_logic;
SIGNAL \q[7]~reg0_q\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \ram~42_q\ : std_logic;
SIGNAL \ram~74_q\ : std_logic;
SIGNAL \ram~106_combout\ : std_logic;
SIGNAL \q[8]~reg0_q\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \ram~43feeder_combout\ : std_logic;
SIGNAL \ram~43_q\ : std_logic;
SIGNAL \ram~75feeder_combout\ : std_logic;
SIGNAL \ram~75_q\ : std_logic;
SIGNAL \ram~107_combout\ : std_logic;
SIGNAL \q[9]~reg0_q\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \ram~44feeder_combout\ : std_logic;
SIGNAL \ram~44_q\ : std_logic;
SIGNAL \ram~76_q\ : std_logic;
SIGNAL \ram~108_combout\ : std_logic;
SIGNAL \q[10]~reg0_q\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \ram~45feeder_combout\ : std_logic;
SIGNAL \ram~45_q\ : std_logic;
SIGNAL \ram~77_q\ : std_logic;
SIGNAL \ram~109_combout\ : std_logic;
SIGNAL \q[11]~reg0_q\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \ram~46_q\ : std_logic;
SIGNAL \ram~78_q\ : std_logic;
SIGNAL \ram~110_combout\ : std_logic;
SIGNAL \q[12]~reg0_q\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \ram~47_q\ : std_logic;
SIGNAL \ram~79feeder_combout\ : std_logic;
SIGNAL \ram~79_q\ : std_logic;
SIGNAL \ram~111_combout\ : std_logic;
SIGNAL \q[13]~reg0_q\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \ram~48feeder_combout\ : std_logic;
SIGNAL \ram~48_q\ : std_logic;
SIGNAL \ram~80feeder_combout\ : std_logic;
SIGNAL \ram~80_q\ : std_logic;
SIGNAL \ram~112_combout\ : std_logic;
SIGNAL \q[14]~reg0_q\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \ram~81_q\ : std_logic;
SIGNAL \ram~49feeder_combout\ : std_logic;
SIGNAL \ram~49_q\ : std_logic;
SIGNAL \ram~113_combout\ : std_logic;
SIGNAL \q[15]~reg0_q\ : std_logic;
SIGNAL \data[16]~input_o\ : std_logic;
SIGNAL \ram~50_q\ : std_logic;
SIGNAL \ram~82feeder_combout\ : std_logic;
SIGNAL \ram~82_q\ : std_logic;
SIGNAL \ram~114_combout\ : std_logic;
SIGNAL \q[16]~reg0_q\ : std_logic;
SIGNAL \data[17]~input_o\ : std_logic;
SIGNAL \ram~51feeder_combout\ : std_logic;
SIGNAL \ram~51_q\ : std_logic;
SIGNAL \ram~83feeder_combout\ : std_logic;
SIGNAL \ram~83_q\ : std_logic;
SIGNAL \ram~115_combout\ : std_logic;
SIGNAL \q[17]~reg0_q\ : std_logic;
SIGNAL \data[18]~input_o\ : std_logic;
SIGNAL \ram~52feeder_combout\ : std_logic;
SIGNAL \ram~52_q\ : std_logic;
SIGNAL \ram~84feeder_combout\ : std_logic;
SIGNAL \ram~84_q\ : std_logic;
SIGNAL \ram~116_combout\ : std_logic;
SIGNAL \q[18]~reg0_q\ : std_logic;
SIGNAL \data[19]~input_o\ : std_logic;
SIGNAL \ram~53_q\ : std_logic;
SIGNAL \ram~85feeder_combout\ : std_logic;
SIGNAL \ram~85_q\ : std_logic;
SIGNAL \ram~117_combout\ : std_logic;
SIGNAL \q[19]~reg0_q\ : std_logic;
SIGNAL \data[20]~input_o\ : std_logic;
SIGNAL \ram~86feeder_combout\ : std_logic;
SIGNAL \ram~86_q\ : std_logic;
SIGNAL \ram~54feeder_combout\ : std_logic;
SIGNAL \ram~54_q\ : std_logic;
SIGNAL \ram~118_combout\ : std_logic;
SIGNAL \q[20]~reg0_q\ : std_logic;
SIGNAL \data[21]~input_o\ : std_logic;
SIGNAL \ram~55_q\ : std_logic;
SIGNAL \ram~87_q\ : std_logic;
SIGNAL \ram~119_combout\ : std_logic;
SIGNAL \q[21]~reg0_q\ : std_logic;
SIGNAL \data[22]~input_o\ : std_logic;
SIGNAL \ram~56feeder_combout\ : std_logic;
SIGNAL \ram~56_q\ : std_logic;
SIGNAL \ram~88feeder_combout\ : std_logic;
SIGNAL \ram~88_q\ : std_logic;
SIGNAL \ram~120_combout\ : std_logic;
SIGNAL \q[22]~reg0_q\ : std_logic;
SIGNAL \data[23]~input_o\ : std_logic;
SIGNAL \ram~89_q\ : std_logic;
SIGNAL \ram~57feeder_combout\ : std_logic;
SIGNAL \ram~57_q\ : std_logic;
SIGNAL \ram~121_combout\ : std_logic;
SIGNAL \q[23]~reg0_q\ : std_logic;
SIGNAL \data[24]~input_o\ : std_logic;
SIGNAL \ram~90_q\ : std_logic;
SIGNAL \ram~58_q\ : std_logic;
SIGNAL \ram~122_combout\ : std_logic;
SIGNAL \q[24]~reg0_q\ : std_logic;
SIGNAL \data[25]~input_o\ : std_logic;
SIGNAL \ram~91feeder_combout\ : std_logic;
SIGNAL \ram~91_q\ : std_logic;
SIGNAL \ram~59_q\ : std_logic;
SIGNAL \ram~123_combout\ : std_logic;
SIGNAL \q[25]~reg0_q\ : std_logic;
SIGNAL \data[26]~input_o\ : std_logic;
SIGNAL \ram~92_q\ : std_logic;
SIGNAL \ram~60feeder_combout\ : std_logic;
SIGNAL \ram~60_q\ : std_logic;
SIGNAL \ram~124_combout\ : std_logic;
SIGNAL \q[26]~reg0_q\ : std_logic;
SIGNAL \data[27]~input_o\ : std_logic;
SIGNAL \ram~93feeder_combout\ : std_logic;
SIGNAL \ram~93_q\ : std_logic;
SIGNAL \ram~61feeder_combout\ : std_logic;
SIGNAL \ram~61_q\ : std_logic;
SIGNAL \ram~125_combout\ : std_logic;
SIGNAL \q[27]~reg0_q\ : std_logic;
SIGNAL \data[28]~input_o\ : std_logic;
SIGNAL \ram~94_q\ : std_logic;
SIGNAL \ram~62feeder_combout\ : std_logic;
SIGNAL \ram~62_q\ : std_logic;
SIGNAL \ram~126_combout\ : std_logic;
SIGNAL \q[28]~reg0_q\ : std_logic;
SIGNAL \data[29]~input_o\ : std_logic;
SIGNAL \ram~95feeder_combout\ : std_logic;
SIGNAL \ram~95_q\ : std_logic;
SIGNAL \ram~63feeder_combout\ : std_logic;
SIGNAL \ram~63_q\ : std_logic;
SIGNAL \ram~127_combout\ : std_logic;
SIGNAL \q[29]~reg0_q\ : std_logic;
SIGNAL \data[30]~input_o\ : std_logic;
SIGNAL \ram~64feeder_combout\ : std_logic;
SIGNAL \ram~64_q\ : std_logic;
SIGNAL \ram~96feeder_combout\ : std_logic;
SIGNAL \ram~96_q\ : std_logic;
SIGNAL \ram~128_combout\ : std_logic;
SIGNAL \q[30]~reg0_q\ : std_logic;
SIGNAL \data[31]~input_o\ : std_logic;
SIGNAL \ram~97_q\ : std_logic;
SIGNAL \ram~65feeder_combout\ : std_logic;
SIGNAL \ram~65_q\ : std_logic;
SIGNAL \ram~129_combout\ : std_logic;
SIGNAL \q[31]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_addr <= addr;
ww_data <= data;
ww_we <= we;
ww_re <= re;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[4]~reg0_q\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]~reg0_q\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]~reg0_q\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[7]~reg0_q\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[8]~reg0_q\,
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\q[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[9]~reg0_q\,
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\q[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[10]~reg0_q\,
	devoe => ww_devoe,
	o => \q[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\q[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[11]~reg0_q\,
	devoe => ww_devoe,
	o => \q[11]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\q[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[12]~reg0_q\,
	devoe => ww_devoe,
	o => \q[12]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\q[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[13]~reg0_q\,
	devoe => ww_devoe,
	o => \q[13]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\q[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[14]~reg0_q\,
	devoe => ww_devoe,
	o => \q[14]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\q[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[15]~reg0_q\,
	devoe => ww_devoe,
	o => \q[15]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\q[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[16]~reg0_q\,
	devoe => ww_devoe,
	o => \q[16]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\q[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[17]~reg0_q\,
	devoe => ww_devoe,
	o => \q[17]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\q[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[18]~reg0_q\,
	devoe => ww_devoe,
	o => \q[18]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\q[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[19]~reg0_q\,
	devoe => ww_devoe,
	o => \q[19]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\q[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[20]~reg0_q\,
	devoe => ww_devoe,
	o => \q[20]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\q[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[21]~reg0_q\,
	devoe => ww_devoe,
	o => \q[21]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\q[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[22]~reg0_q\,
	devoe => ww_devoe,
	o => \q[22]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\q[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[23]~reg0_q\,
	devoe => ww_devoe,
	o => \q[23]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\q[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[24]~reg0_q\,
	devoe => ww_devoe,
	o => \q[24]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\q[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[25]~reg0_q\,
	devoe => ww_devoe,
	o => \q[25]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\q[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[26]~reg0_q\,
	devoe => ww_devoe,
	o => \q[26]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\q[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[27]~reg0_q\,
	devoe => ww_devoe,
	o => \q[27]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\q[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[28]~reg0_q\,
	devoe => ww_devoe,
	o => \q[28]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\q[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[29]~reg0_q\,
	devoe => ww_devoe,
	o => \q[29]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\q[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[30]~reg0_q\,
	devoe => ww_devoe,
	o => \q[30]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\q[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[31]~reg0_q\,
	devoe => ww_devoe,
	o => \q[31]~output_o\);

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

-- Location: IOIBUF_X62_Y73_N22
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\addr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr,
	o => \addr~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\we~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: LCCOMB_X79_Y70_N26
\ram~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~131_combout\ = (!\addr~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~input_o\,
	datad => \we~input_o\,
	combout => \ram~131_combout\);

-- Location: FF_X73_Y70_N21
\ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~34_q\);

-- Location: LCCOMB_X74_Y70_N28
\ram~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~66feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \ram~66feeder_combout\);

-- Location: LCCOMB_X79_Y70_N28
\ram~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~130_combout\ = (\addr~input_o\ & \we~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~input_o\,
	datad => \we~input_o\,
	combout => \ram~130_combout\);

-- Location: FF_X74_Y70_N29
\ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~66feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~66_q\);

-- Location: LCCOMB_X73_Y70_N0
\ram~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~98_combout\ = (\addr~input_o\ & ((\ram~66_q\))) # (!\addr~input_o\ & (\ram~34_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~34_q\,
	datac => \addr~input_o\,
	datad => \ram~66_q\,
	combout => \ram~98_combout\);

-- Location: IOIBUF_X81_Y73_N22
\re~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_re,
	o => \re~input_o\);

-- Location: FF_X73_Y70_N1
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~98_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: IOIBUF_X58_Y73_N15
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: FF_X73_Y70_N27
\ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~35_q\);

-- Location: LCCOMB_X74_Y70_N22
\ram~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~67feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \ram~67feeder_combout\);

-- Location: FF_X74_Y70_N23
\ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~67feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~67_q\);

-- Location: LCCOMB_X73_Y70_N2
\ram~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~99_combout\ = (\addr~input_o\ & ((\ram~67_q\))) # (!\addr~input_o\ & (\ram~35_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~35_q\,
	datad => \ram~67_q\,
	combout => \ram~99_combout\);

-- Location: FF_X73_Y70_N3
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~99_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: IOIBUF_X58_Y73_N1
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: FF_X73_Y70_N9
\ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~36_q\);

-- Location: FF_X74_Y70_N17
\ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~68_q\);

-- Location: LCCOMB_X73_Y70_N16
\ram~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~100_combout\ = (\addr~input_o\ & ((\ram~68_q\))) # (!\addr~input_o\ & (\ram~36_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~36_q\,
	datad => \ram~68_q\,
	combout => \ram~100_combout\);

-- Location: FF_X73_Y70_N17
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~100_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: IOIBUF_X69_Y73_N15
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: LCCOMB_X73_Y70_N14
\ram~37feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~37feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \ram~37feeder_combout\);

-- Location: FF_X73_Y70_N15
\ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~37feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~37_q\);

-- Location: LCCOMB_X74_Y70_N2
\ram~69feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~69feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \ram~69feeder_combout\);

-- Location: FF_X74_Y70_N3
\ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~69feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~69_q\);

-- Location: LCCOMB_X73_Y70_N6
\ram~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~101_combout\ = (\addr~input_o\ & ((\ram~69_q\))) # (!\addr~input_o\ & (\ram~37_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~37_q\,
	datad => \ram~69_q\,
	combout => \ram~101_combout\);

-- Location: FF_X73_Y70_N7
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~101_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: IOIBUF_X58_Y73_N22
\data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: FF_X73_Y70_N5
\ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~38_q\);

-- Location: LCCOMB_X74_Y70_N4
\ram~70feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~70feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[4]~input_o\,
	combout => \ram~70feeder_combout\);

-- Location: FF_X74_Y70_N5
\ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~70feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~70_q\);

-- Location: LCCOMB_X73_Y70_N28
\ram~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~102_combout\ = (\addr~input_o\ & ((\ram~70_q\))) # (!\addr~input_o\ & (\ram~38_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~38_q\,
	datad => \ram~70_q\,
	combout => \ram~102_combout\);

-- Location: FF_X73_Y70_N29
\q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~102_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[4]~reg0_q\);

-- Location: IOIBUF_X62_Y73_N15
\data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: FF_X73_Y70_N11
\ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~39_q\);

-- Location: FF_X74_Y70_N7
\ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[5]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~71_q\);

-- Location: LCCOMB_X73_Y70_N22
\ram~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~103_combout\ = (\addr~input_o\ & ((\ram~71_q\))) # (!\addr~input_o\ & (\ram~39_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~39_q\,
	datac => \addr~input_o\,
	datad => \ram~71_q\,
	combout => \ram~103_combout\);

-- Location: FF_X73_Y70_N23
\q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~103_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~reg0_q\);

-- Location: IOIBUF_X60_Y73_N22
\data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: LCCOMB_X73_Y70_N24
\ram~40feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~40feeder_combout\ = \data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[6]~input_o\,
	combout => \ram~40feeder_combout\);

-- Location: FF_X73_Y70_N25
\ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~40feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~40_q\);

-- Location: LCCOMB_X74_Y70_N24
\ram~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~72feeder_combout\ = \data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[6]~input_o\,
	combout => \ram~72feeder_combout\);

-- Location: FF_X74_Y70_N25
\ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~72feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~72_q\);

-- Location: LCCOMB_X73_Y70_N12
\ram~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~104_combout\ = (\addr~input_o\ & ((\ram~72_q\))) # (!\addr~input_o\ & (\ram~40_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~40_q\,
	datac => \addr~input_o\,
	datad => \ram~72_q\,
	combout => \ram~104_combout\);

-- Location: FF_X73_Y70_N13
\q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~104_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~reg0_q\);

-- Location: IOIBUF_X72_Y73_N15
\data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: LCCOMB_X75_Y70_N24
\ram~41feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~41feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[7]~input_o\,
	combout => \ram~41feeder_combout\);

-- Location: FF_X75_Y70_N25
\ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~41feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~41_q\);

-- Location: LCCOMB_X74_Y70_N26
\ram~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~73feeder_combout\ = \data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[7]~input_o\,
	combout => \ram~73feeder_combout\);

-- Location: FF_X74_Y70_N27
\ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~73feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~73_q\);

-- Location: LCCOMB_X75_Y70_N16
\ram~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~105_combout\ = (\addr~input_o\ & ((\ram~73_q\))) # (!\addr~input_o\ & (\ram~41_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datab => \ram~41_q\,
	datac => \ram~73_q\,
	combout => \ram~105_combout\);

-- Location: FF_X75_Y70_N17
\q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~105_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[7]~reg0_q\);

-- Location: IOIBUF_X69_Y73_N22
\data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: FF_X75_Y70_N11
\ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[8]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~42_q\);

-- Location: FF_X74_Y70_N13
\ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[8]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~74_q\);

-- Location: LCCOMB_X75_Y70_N26
\ram~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~106_combout\ = (\addr~input_o\ & ((\ram~74_q\))) # (!\addr~input_o\ & (\ram~42_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~42_q\,
	datac => \addr~input_o\,
	datad => \ram~74_q\,
	combout => \ram~106_combout\);

-- Location: FF_X75_Y70_N27
\q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~106_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[8]~reg0_q\);

-- Location: IOIBUF_X100_Y73_N22
\data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: LCCOMB_X75_Y70_N8
\ram~43feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~43feeder_combout\ = \data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[9]~input_o\,
	combout => \ram~43feeder_combout\);

-- Location: FF_X75_Y70_N9
\ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~43feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~43_q\);

-- Location: LCCOMB_X74_Y70_N14
\ram~75feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~75feeder_combout\ = \data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[9]~input_o\,
	combout => \ram~75feeder_combout\);

-- Location: FF_X74_Y70_N15
\ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~75feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~75_q\);

-- Location: LCCOMB_X75_Y70_N28
\ram~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~107_combout\ = (\addr~input_o\ & ((\ram~75_q\))) # (!\addr~input_o\ & (\ram~43_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~43_q\,
	datad => \ram~75_q\,
	combout => \ram~107_combout\);

-- Location: FF_X75_Y70_N29
\q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~107_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[9]~reg0_q\);

-- Location: IOIBUF_X74_Y73_N22
\data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: LCCOMB_X75_Y70_N22
\ram~44feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~44feeder_combout\ = \data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[10]~input_o\,
	combout => \ram~44feeder_combout\);

-- Location: FF_X75_Y70_N23
\ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~44feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~44_q\);

-- Location: FF_X74_Y70_N21
\ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[10]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~76_q\);

-- Location: LCCOMB_X75_Y70_N2
\ram~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~108_combout\ = (\addr~input_o\ & ((\ram~76_q\))) # (!\addr~input_o\ & (\ram~44_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~44_q\,
	datad => \ram~76_q\,
	combout => \ram~108_combout\);

-- Location: FF_X75_Y70_N3
\q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~108_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[10]~reg0_q\);

-- Location: IOIBUF_X74_Y73_N15
\data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: LCCOMB_X75_Y70_N12
\ram~45feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~45feeder_combout\ = \data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[11]~input_o\,
	combout => \ram~45feeder_combout\);

-- Location: FF_X75_Y70_N13
\ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~45feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~45_q\);

-- Location: FF_X74_Y70_N11
\ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[11]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~77_q\);

-- Location: LCCOMB_X75_Y70_N0
\ram~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~109_combout\ = (\addr~input_o\ & ((\ram~77_q\))) # (!\addr~input_o\ & (\ram~45_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~45_q\,
	datac => \addr~input_o\,
	datad => \ram~77_q\,
	combout => \ram~109_combout\);

-- Location: FF_X75_Y70_N1
\q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~109_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[11]~reg0_q\);

-- Location: IOIBUF_X67_Y73_N15
\data[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

-- Location: FF_X75_Y70_N31
\ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[12]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~46_q\);

-- Location: FF_X74_Y70_N1
\ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[12]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~78_q\);

-- Location: LCCOMB_X75_Y70_N6
\ram~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~110_combout\ = (\addr~input_o\ & ((\ram~78_q\))) # (!\addr~input_o\ & (\ram~46_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~46_q\,
	datac => \ram~78_q\,
	datad => \addr~input_o\,
	combout => \ram~110_combout\);

-- Location: FF_X75_Y70_N7
\q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~110_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[12]~reg0_q\);

-- Location: IOIBUF_X67_Y73_N22
\data[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

-- Location: FF_X75_Y70_N5
\ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[13]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~47_q\);

-- Location: LCCOMB_X74_Y70_N30
\ram~79feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~79feeder_combout\ = \data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[13]~input_o\,
	combout => \ram~79feeder_combout\);

-- Location: FF_X74_Y70_N31
\ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~79feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~79_q\);

-- Location: LCCOMB_X75_Y70_N20
\ram~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~111_combout\ = (\addr~input_o\ & ((\ram~79_q\))) # (!\addr~input_o\ & (\ram~47_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~47_q\,
	datad => \ram~79_q\,
	combout => \ram~111_combout\);

-- Location: FF_X75_Y70_N21
\q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~111_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[13]~reg0_q\);

-- Location: IOIBUF_X72_Y73_N22
\data[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

-- Location: LCCOMB_X75_Y70_N14
\ram~48feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~48feeder_combout\ = \data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[14]~input_o\,
	combout => \ram~48feeder_combout\);

-- Location: FF_X75_Y70_N15
\ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~48feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~48_q\);

-- Location: LCCOMB_X74_Y70_N8
\ram~80feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~80feeder_combout\ = \data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[14]~input_o\,
	combout => \ram~80feeder_combout\);

-- Location: FF_X74_Y70_N9
\ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~80feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~80_q\);

-- Location: LCCOMB_X75_Y70_N18
\ram~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~112_combout\ = (\addr~input_o\ & ((\ram~80_q\))) # (!\addr~input_o\ & (\ram~48_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~48_q\,
	datad => \ram~80_q\,
	combout => \ram~112_combout\);

-- Location: FF_X75_Y70_N19
\q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~112_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[14]~reg0_q\);

-- Location: IOIBUF_X81_Y73_N8
\data[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

-- Location: FF_X76_Y70_N5
\ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[15]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~81_q\);

-- Location: LCCOMB_X77_Y70_N24
\ram~49feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~49feeder_combout\ = \data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[15]~input_o\,
	combout => \ram~49feeder_combout\);

-- Location: FF_X77_Y70_N25
\ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~49feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~49_q\);

-- Location: LCCOMB_X76_Y70_N28
\ram~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~113_combout\ = (\addr~input_o\ & (\ram~81_q\)) # (!\addr~input_o\ & ((\ram~49_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~81_q\,
	datad => \ram~49_q\,
	combout => \ram~113_combout\);

-- Location: FF_X76_Y70_N29
\q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~113_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[15]~reg0_q\);

-- Location: IOIBUF_X102_Y73_N1
\data[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(16),
	o => \data[16]~input_o\);

-- Location: FF_X77_Y70_N15
\ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[16]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~50_q\);

-- Location: LCCOMB_X76_Y70_N18
\ram~82feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~82feeder_combout\ = \data[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[16]~input_o\,
	combout => \ram~82feeder_combout\);

-- Location: FF_X76_Y70_N19
\ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~82feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~82_q\);

-- Location: LCCOMB_X77_Y70_N0
\ram~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~114_combout\ = (\addr~input_o\ & ((\ram~82_q\))) # (!\addr~input_o\ & (\ram~50_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~50_q\,
	datad => \ram~82_q\,
	combout => \ram~114_combout\);

-- Location: FF_X77_Y70_N1
\q[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~114_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[16]~reg0_q\);

-- Location: IOIBUF_X79_Y73_N8
\data[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(17),
	o => \data[17]~input_o\);

-- Location: LCCOMB_X77_Y70_N28
\ram~51feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~51feeder_combout\ = \data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[17]~input_o\,
	combout => \ram~51feeder_combout\);

-- Location: FF_X77_Y70_N29
\ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~51feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~51_q\);

-- Location: LCCOMB_X76_Y70_N12
\ram~83feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~83feeder_combout\ = \data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[17]~input_o\,
	combout => \ram~83feeder_combout\);

-- Location: FF_X76_Y70_N13
\ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~83feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~83_q\);

-- Location: LCCOMB_X77_Y70_N26
\ram~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~115_combout\ = (\addr~input_o\ & ((\ram~83_q\))) # (!\addr~input_o\ & (\ram~51_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~51_q\,
	datac => \addr~input_o\,
	datad => \ram~83_q\,
	combout => \ram~115_combout\);

-- Location: FF_X77_Y70_N27
\q[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~115_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[17]~reg0_q\);

-- Location: IOIBUF_X105_Y73_N8
\data[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(18),
	o => \data[18]~input_o\);

-- Location: LCCOMB_X77_Y70_N22
\ram~52feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~52feeder_combout\ = \data[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[18]~input_o\,
	combout => \ram~52feeder_combout\);

-- Location: FF_X77_Y70_N23
\ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~52feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~52_q\);

-- Location: LCCOMB_X76_Y70_N2
\ram~84feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~84feeder_combout\ = \data[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[18]~input_o\,
	combout => \ram~84feeder_combout\);

-- Location: FF_X76_Y70_N3
\ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~84feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~84_q\);

-- Location: LCCOMB_X77_Y70_N20
\ram~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~116_combout\ = (\addr~input_o\ & ((\ram~84_q\))) # (!\addr~input_o\ & (\ram~52_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~52_q\,
	datad => \ram~84_q\,
	combout => \ram~116_combout\);

-- Location: FF_X77_Y70_N21
\q[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~116_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[18]~reg0_q\);

-- Location: IOIBUF_X102_Y73_N8
\data[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(19),
	o => \data[19]~input_o\);

-- Location: FF_X77_Y70_N5
\ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[19]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~53_q\);

-- Location: LCCOMB_X76_Y70_N8
\ram~85feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~85feeder_combout\ = \data[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[19]~input_o\,
	combout => \ram~85feeder_combout\);

-- Location: FF_X76_Y70_N9
\ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~85feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~85_q\);

-- Location: LCCOMB_X77_Y70_N6
\ram~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~117_combout\ = (\addr~input_o\ & ((\ram~85_q\))) # (!\addr~input_o\ & (\ram~53_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~53_q\,
	datad => \ram~85_q\,
	combout => \ram~117_combout\);

-- Location: FF_X77_Y70_N7
\q[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~117_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[19]~reg0_q\);

-- Location: IOIBUF_X79_Y73_N1
\data[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(20),
	o => \data[20]~input_o\);

-- Location: LCCOMB_X76_Y70_N26
\ram~86feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~86feeder_combout\ = \data[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[20]~input_o\,
	combout => \ram~86feeder_combout\);

-- Location: FF_X76_Y70_N27
\ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~86feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~86_q\);

-- Location: LCCOMB_X77_Y70_N18
\ram~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~54feeder_combout\ = \data[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[20]~input_o\,
	combout => \ram~54feeder_combout\);

-- Location: FF_X77_Y70_N19
\ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~54feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~54_q\);

-- Location: LCCOMB_X76_Y70_N6
\ram~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~118_combout\ = (\addr~input_o\ & (\ram~86_q\)) # (!\addr~input_o\ & ((\ram~54_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~86_q\,
	datad => \ram~54_q\,
	combout => \ram~118_combout\);

-- Location: FF_X76_Y70_N7
\q[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~118_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[20]~reg0_q\);

-- Location: IOIBUF_X105_Y73_N1
\data[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(21),
	o => \data[21]~input_o\);

-- Location: FF_X77_Y70_N9
\ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[21]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~55_q\);

-- Location: FF_X76_Y70_N25
\ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[21]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~87_q\);

-- Location: LCCOMB_X77_Y70_N16
\ram~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~119_combout\ = (\addr~input_o\ & ((\ram~87_q\))) # (!\addr~input_o\ & (\ram~55_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~55_q\,
	datad => \ram~87_q\,
	combout => \ram~119_combout\);

-- Location: FF_X77_Y70_N17
\q[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~119_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[21]~reg0_q\);

-- Location: IOIBUF_X52_Y73_N1
\data[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(22),
	o => \data[22]~input_o\);

-- Location: LCCOMB_X77_Y70_N30
\ram~56feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~56feeder_combout\ = \data[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[22]~input_o\,
	combout => \ram~56feeder_combout\);

-- Location: FF_X77_Y70_N31
\ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~56feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~56_q\);

-- Location: LCCOMB_X76_Y70_N14
\ram~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~88feeder_combout\ = \data[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[22]~input_o\,
	combout => \ram~88feeder_combout\);

-- Location: FF_X76_Y70_N15
\ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~88feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~88_q\);

-- Location: LCCOMB_X77_Y70_N10
\ram~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~120_combout\ = (\addr~input_o\ & ((\ram~88_q\))) # (!\addr~input_o\ & (\ram~56_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~56_q\,
	datad => \ram~88_q\,
	combout => \ram~120_combout\);

-- Location: FF_X77_Y70_N11
\q[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~120_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[22]~reg0_q\);

-- Location: IOIBUF_X89_Y73_N8
\data[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(23),
	o => \data[23]~input_o\);

-- Location: FF_X80_Y70_N9
\ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[23]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~89_q\);

-- Location: LCCOMB_X79_Y70_N8
\ram~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~57feeder_combout\ = \data[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[23]~input_o\,
	combout => \ram~57feeder_combout\);

-- Location: FF_X79_Y70_N9
\ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~57feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~57_q\);

-- Location: LCCOMB_X80_Y70_N0
\ram~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~121_combout\ = (\addr~input_o\ & (\ram~89_q\)) # (!\addr~input_o\ & ((\ram~57_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~input_o\,
	datac => \ram~89_q\,
	datad => \ram~57_q\,
	combout => \ram~121_combout\);

-- Location: FF_X80_Y70_N1
\q[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~121_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[23]~reg0_q\);

-- Location: IOIBUF_X85_Y73_N8
\data[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(24),
	o => \data[24]~input_o\);

-- Location: FF_X80_Y70_N31
\ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[24]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~90_q\);

-- Location: FF_X79_Y70_N11
\ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[24]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~58_q\);

-- Location: LCCOMB_X80_Y70_N18
\ram~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~122_combout\ = (\addr~input_o\ & (\ram~90_q\)) # (!\addr~input_o\ & ((\ram~58_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~input_o\,
	datac => \ram~90_q\,
	datad => \ram~58_q\,
	combout => \ram~122_combout\);

-- Location: FF_X80_Y70_N19
\q[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~122_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[24]~reg0_q\);

-- Location: IOIBUF_X83_Y73_N1
\data[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(25),
	o => \data[25]~input_o\);

-- Location: LCCOMB_X80_Y70_N4
\ram~91feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~91feeder_combout\ = \data[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[25]~input_o\,
	combout => \ram~91feeder_combout\);

-- Location: FF_X80_Y70_N5
\ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~91feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~91_q\);

-- Location: FF_X79_Y70_N13
\ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[25]~input_o\,
	sload => VCC,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~59_q\);

-- Location: LCCOMB_X80_Y70_N24
\ram~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~123_combout\ = (\addr~input_o\ & (\ram~91_q\)) # (!\addr~input_o\ & ((\ram~59_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~input_o\,
	datac => \ram~91_q\,
	datad => \ram~59_q\,
	combout => \ram~123_combout\);

-- Location: FF_X80_Y70_N25
\q[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~123_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[25]~reg0_q\);

-- Location: IOIBUF_X94_Y73_N8
\data[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(26),
	o => \data[26]~input_o\);

-- Location: FF_X80_Y70_N27
\ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[26]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~92_q\);

-- Location: LCCOMB_X79_Y70_N2
\ram~60feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~60feeder_combout\ = \data[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[26]~input_o\,
	combout => \ram~60feeder_combout\);

-- Location: FF_X79_Y70_N3
\ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~60feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~60_q\);

-- Location: LCCOMB_X80_Y70_N10
\ram~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~124_combout\ = (\addr~input_o\ & (\ram~92_q\)) # (!\addr~input_o\ & ((\ram~60_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~input_o\,
	datac => \ram~92_q\,
	datad => \ram~60_q\,
	combout => \ram~124_combout\);

-- Location: FF_X80_Y70_N11
\q[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~124_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[26]~reg0_q\);

-- Location: IOIBUF_X94_Y73_N1
\data[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(27),
	o => \data[27]~input_o\);

-- Location: LCCOMB_X80_Y70_N12
\ram~93feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~93feeder_combout\ = \data[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[27]~input_o\,
	combout => \ram~93feeder_combout\);

-- Location: FF_X80_Y70_N13
\ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~93feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~93_q\);

-- Location: LCCOMB_X79_Y70_N20
\ram~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~61feeder_combout\ = \data[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[27]~input_o\,
	combout => \ram~61feeder_combout\);

-- Location: FF_X79_Y70_N21
\ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~61feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~61_q\);

-- Location: LCCOMB_X80_Y70_N16
\ram~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~125_combout\ = (\addr~input_o\ & (\ram~93_q\)) # (!\addr~input_o\ & ((\ram~61_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~93_q\,
	datab => \addr~input_o\,
	datad => \ram~61_q\,
	combout => \ram~125_combout\);

-- Location: FF_X80_Y70_N17
\q[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~125_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[27]~reg0_q\);

-- Location: IOIBUF_X83_Y73_N8
\data[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(28),
	o => \data[28]~input_o\);

-- Location: FF_X80_Y70_N15
\ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[28]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~94_q\);

-- Location: LCCOMB_X79_Y70_N18
\ram~62feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~62feeder_combout\ = \data[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[28]~input_o\,
	combout => \ram~62feeder_combout\);

-- Location: FF_X79_Y70_N19
\ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~62feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~62_q\);

-- Location: LCCOMB_X80_Y70_N6
\ram~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~126_combout\ = (\addr~input_o\ & (\ram~94_q\)) # (!\addr~input_o\ & ((\ram~62_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~input_o\,
	datac => \ram~94_q\,
	datad => \ram~62_q\,
	combout => \ram~126_combout\);

-- Location: FF_X80_Y70_N7
\q[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~126_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[28]~reg0_q\);

-- Location: IOIBUF_X85_Y73_N1
\data[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(29),
	o => \data[29]~input_o\);

-- Location: LCCOMB_X80_Y70_N28
\ram~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~95feeder_combout\ = \data[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[29]~input_o\,
	combout => \ram~95feeder_combout\);

-- Location: FF_X80_Y70_N29
\ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~95feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~95_q\);

-- Location: LCCOMB_X79_Y70_N24
\ram~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~63feeder_combout\ = \data[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[29]~input_o\,
	combout => \ram~63feeder_combout\);

-- Location: FF_X79_Y70_N25
\ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~63feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~63_q\);

-- Location: LCCOMB_X80_Y70_N20
\ram~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~127_combout\ = (\addr~input_o\ & (\ram~95_q\)) # (!\addr~input_o\ & ((\ram~63_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~95_q\,
	datac => \addr~input_o\,
	datad => \ram~63_q\,
	combout => \ram~127_combout\);

-- Location: FF_X80_Y70_N21
\q[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~127_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[29]~reg0_q\);

-- Location: IOIBUF_X60_Y73_N15
\data[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(30),
	o => \data[30]~input_o\);

-- Location: LCCOMB_X73_Y70_N30
\ram~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~64feeder_combout\ = \data[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[30]~input_o\,
	combout => \ram~64feeder_combout\);

-- Location: FF_X73_Y70_N31
\ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~64feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~64_q\);

-- Location: LCCOMB_X74_Y70_N18
\ram~96feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~96feeder_combout\ = \data[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[30]~input_o\,
	combout => \ram~96feeder_combout\);

-- Location: FF_X74_Y70_N19
\ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~96feeder_combout\,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~96_q\);

-- Location: LCCOMB_X73_Y70_N18
\ram~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~128_combout\ = (\addr~input_o\ & ((\ram~96_q\))) # (!\addr~input_o\ & (\ram~64_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~input_o\,
	datac => \ram~64_q\,
	datad => \ram~96_q\,
	combout => \ram~128_combout\);

-- Location: FF_X73_Y70_N19
\q[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~128_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[30]~reg0_q\);

-- Location: IOIBUF_X87_Y73_N1
\data[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(31),
	o => \data[31]~input_o\);

-- Location: FF_X80_Y70_N23
\ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[31]~input_o\,
	sload => VCC,
	ena => \ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~97_q\);

-- Location: LCCOMB_X79_Y70_N14
\ram~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~65feeder_combout\ = \data[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[31]~input_o\,
	combout => \ram~65feeder_combout\);

-- Location: FF_X79_Y70_N15
\ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~65feeder_combout\,
	ena => \ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~65_q\);

-- Location: LCCOMB_X80_Y70_N2
\ram~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram~129_combout\ = (\addr~input_o\ & (\ram~97_q\)) # (!\addr~input_o\ & ((\ram~65_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~input_o\,
	datac => \ram~97_q\,
	datad => \ram~65_q\,
	combout => \ram~129_combout\);

-- Location: FF_X80_Y70_N3
\q[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~129_combout\,
	ena => \re~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[31]~reg0_q\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;

ww_q(10) <= \q[10]~output_o\;

ww_q(11) <= \q[11]~output_o\;

ww_q(12) <= \q[12]~output_o\;

ww_q(13) <= \q[13]~output_o\;

ww_q(14) <= \q[14]~output_o\;

ww_q(15) <= \q[15]~output_o\;

ww_q(16) <= \q[16]~output_o\;

ww_q(17) <= \q[17]~output_o\;

ww_q(18) <= \q[18]~output_o\;

ww_q(19) <= \q[19]~output_o\;

ww_q(20) <= \q[20]~output_o\;

ww_q(21) <= \q[21]~output_o\;

ww_q(22) <= \q[22]~output_o\;

ww_q(23) <= \q[23]~output_o\;

ww_q(24) <= \q[24]~output_o\;

ww_q(25) <= \q[25]~output_o\;

ww_q(26) <= \q[26]~output_o\;

ww_q(27) <= \q[27]~output_o\;

ww_q(28) <= \q[28]~output_o\;

ww_q(29) <= \q[29]~output_o\;

ww_q(30) <= \q[30]~output_o\;

ww_q(31) <= \q[31]~output_o\;
END structure;


