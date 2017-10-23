library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 8;
        larguraEndBancoRegs : natural := 3
    );
	 
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC   : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
--      
        escreveC      : in std_logic := '1';
--
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture behaviour of bancoRegistradores is 


	subtype word_t is std_logic_vector(7 downto 0);
	type memory_t is array(7 downto 0) of word_t;
	
		-- Declare the RAM signal.
	-- signal ram : memory_t;
	
	-- Register to hold the address
	signal addr_reg : natural range 0 to 7;
	
	
	function init_bank
		return memory_t is
		variable tmp : memory_t := (others => (others => '0'));
	begin
		-- Initialize each address with the address itself
		tmp(0) := std_logic_vector(to_unsigned(114, 8));
		tmp(1) := std_logic_vector(to_unsigned(097, 8));
		tmp(2) := std_logic_vector(to_unsigned(102, 8));
		tmp(3) := std_logic_vector(to_unsigned(097, 8));
		tmp(4) := std_logic_vector(to_unsigned(101, 8));
		tmp(5) := std_logic_vector(to_unsigned(108, 8));
		return tmp;
	end init_bank;
	
	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal ram : memory_t := init_bank;
	
	

begin 

	process (clk)
	begin
		if (rising_edge(clk)) then
			if (escreveC = '1') then
				ram(to_integer(signed (enderecoC))) <= dadoEscritaC;
			end if;
		end if;

	end process;
	
	saidaA <= ram(to_integer(signed (enderecoA)));
	
	saidaB <= ram(to_integer(signed (enderecoB)));
	

end behaviour;