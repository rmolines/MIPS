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
		"000000" & "00001" & "00010" & "00100" & "00000000000";
		INSTTWO		  : std_logic_vector(31 downto 0) :=
		"100011" & "00100" & "00101" & "0000000000000001";
		INSTTHREE		  : std_logic_vector(31 downto 0) :=
		"101011" & "00100" & "00101" & "0000000000000011";
		INSTFOUR		  : std_logic_vector(31 downto 0) :=
		"000100" & "01000" & "01001" & "0000000000000001";
		INSTFIVE		  : std_logic_vector(31 downto 0) :=
		"000010" & "00000000000000000000000001"
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
	type mt is array(15 downto 0) of wt;

	function coco return mt is
		variable tmp : mt := (others => (others => '0'));
	begin
		-- Initialize each address with the address itself
		tmp(0) := (others => '0');
		tmp(1) := INSTTWO;
		tmp(2) := (others => '0');
		tmp(3) := (others => '0');
		tmp(4) := (others => '0');
		tmp(5) := std_logic_vector(to_signed(8, DATA_WIDTH));
		tmp(6) := std_logic_vector(to_signed(9, DATA_WIDTH));
		tmp(7) := std_logic_vector(to_signed(8, DATA_WIDTH));
		tmp(8) := std_logic_vector(to_signed(4, DATA_WIDTH));
		tmp(9) := std_logic_vector(to_signed(2, DATA_WIDTH));
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
