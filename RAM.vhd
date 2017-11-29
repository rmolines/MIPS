-- Quartus Prime VHDL Template
-- Simple Dual-Port RAM with different read/write addresses but
-- single read/write clock

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is

	generic
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 32;
		INST		  : std_logic_vector(31 downto 0) :=
		"000000" & "00001" & "00010" & "00101" & "00000100101"; -- R
		INSTTWO		  : std_logic_vector(31 downto 0) :=
		"100011" & "00101" & "00111" & "0000000000010001"; -- LW R3, 17(R5)
		INSTTHREE		  : std_logic_vector(31 downto 0) :=
		"101011" & "00101" & "01010" & "0000000000000010"; -- SW R10, 2(R5)
		INSTFOUR		  : std_logic_vector(31 downto 0) :=
		"000100" & "00011" & "00101" & "0000000000000111"; -- BEQ R3, R2, 7
		INSTFIVE		  : std_logic_vector(31 downto 0) :=
		"000010" & "00000000000000000000010111"; -- J 23
		INSTSIX		  : std_logic_vector(31 downto 0) :=
		"000000" & "00101" & "00110" & "01001" & "00000101010"; -- R SLT R5, R6, R5
		INSTSEVEN		  : std_logic_vector(31 downto 0) :=
    "000010" & "00000000000000000000011011" -- J 27
	);

	port
	(
		clk		: in std_logic;
		addr	: in natural;
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic := '0';
		re		: in std_logic := '1';
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0);

    endTeste : in std_logic_vector((ADDR_WIDTH-1) downto 0) := std_logic_vector(to_signed(0, DATA_WIDTH));
    saidaTeste : out std_logic_vector((DATA_WIDTH -1) downto 0) := std_logic_vector(to_signed(0, DATA_WIDTH))
	);

end RAM;

architecture behaviour of RAM is

	-- Build a 2-D array type for the RAM
	subtype wt is std_logic_vector(31 downto 0);
	type mt is array(27 downto 0) of wt;

	function coco return mt is
		variable tmp : mt := (others => (others => '0'));
	begin
		-- Initialize each address with the address itself
		tmp(0) := INST;
		tmp(1) := (others => '0');
		tmp(2) := (others => '0');
		tmp(3) := (others => '0');
		tmp(4) := INSTFOUR;
		tmp(5) := (others => '0');
		tmp(6) := (others => '0');
		tmp(7) := (others => '0');
		tmp(8) := INSTTWO;
		tmp(9) := (others => '0');
		tmp(10) := (others => '0');
		tmp(11) := (others => '0');
		tmp(12) := INSTTWO;
		tmp(13) := (others => '0');
		tmp(14) := (others => '0');
		tmp(15) := (others => '0');
		tmp(16) := INSTFIVE;
		tmp(17) := (others => '0');
		tmp(18) := (others => '0');
		tmp(19) := (others => '0');
		tmp(20) := std_logic_vector(to_signed(15, DATA_WIDTH));
		tmp(21) := std_logic_vector(to_signed(4, DATA_WIDTH));
		tmp(22) := std_logic_vector(to_signed(2, DATA_WIDTH));
		tmp(23) := INSTSIX;
		tmp(24) := (others => '0');
		tmp(25) := (others => '0');
		tmp(26) := (others => '0');
		tmp(27) := INSTSEVEN;
		return tmp;
	end coco;

	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the
	-- default value.
	signal ram : mt := coco;
begin
	-- ram <= coco;
	process(clk, re)
	begin
	-- case clk is
	-- 	when '1' => case we is
	-- 		when '1' => ram(addr) <= data;
	-- 		when others => ram(addr) <= ram(addr);
	-- 	end case;
	-- 	when others => ram(addr) <= ram(addr);
	-- end case;
	if(rising_edge(clk)) then
		if(we = '1') then
			ram(addr) <= data;
		end if;
	end if;
	end process;

	q <= ram(addr) when re = '1' else
		  std_logic_vector(to_signed(0, DATA_WIDTH));

	saidaTeste <= ram(to_integer(unsigned (endTeste)));


end behaviour;
