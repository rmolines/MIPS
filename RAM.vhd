-- Quartus Prime VHDL Template
-- Simple Dual-Port RAM with different read/write addresses but
-- single read/write clock

library ieee;
use ieee.std_logic_1164.all;

entity RAM is

	generic
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 32
	);

	port
	(
		clk		: in std_logic;
		addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic := '0';
		re		: in std_logic := '1';
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end RAM;

architecture rtl of RAM is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	function init_bank
		return memory_t is
		variable tmp : memory_t := (others => (others => '0'));
	begin
		-- Initialize each address with the address itself
		tmp(0) := std_logic_vector(to_signed(114, larguraDados));
		tmp(1) := std_logic_vector(to_signed(097, larguraDados));
		tmp(2) := std_logic_vector(to_signed(102, larguraDados));
		tmp(3) := std_logic_vector(to_signed(097, larguraDados));
		tmp(4) := std_logic_vector(to_signed(101, larguraDados));
		tmp(5) := std_logic_vector(to_signed(108, larguraDados));
		return tmp;
	end init_bank;

	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the
	-- default value.
	signal ram : memory_t := init_bank;

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if(we = '1') then
			ram(addr) <= data;
		end if;
		if (re = '1') then
			q <= ram(addr);
		end if;
	end if;
	end process;

end rtl;
