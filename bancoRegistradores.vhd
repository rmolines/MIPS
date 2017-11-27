library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5
    );

-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;

        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC   : in std_logic_vector((larguraEndBancoRegs-1) downto 0);

        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);

        escreveC      : in std_logic := '1';

        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0);

        endTeste        : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        saidaTeste      : out std_logic_vector((larguraDados -1) downto 0)

    );
end entity;

architecture behaviour of bancoRegistradores is


	subtype word_t is std_logic_vector((larguraDados-1) downto 0);
	type memory_t is array(15 downto 0) of word_t;

		-- Declare the RAM signal.
	-- signal ram : memory_t;

	-- Register to hold the address
	-- signal addr_reg : natural range 0 to (larguraEndBancoRegs-1);


	function init_bank return memory_t is
		variable tmp : memory_t := (others => (others => '0'));
	begin
		-- Initialize each address with the address itself
		tmp(0) := std_logic_vector(to_signed(0, larguraDados));
		tmp(1) := std_logic_vector(to_signed(8, larguraDados));
		tmp(2) := std_logic_vector(to_signed(-3, larguraDados));
		tmp(3) := std_logic_vector(to_signed(3, larguraDados));
		tmp(4) := std_logic_vector(to_signed(15, larguraDados));
		tmp(5) := std_logic_vector(to_signed(404, larguraDados));
		tmp(8) := std_logic_vector(to_signed(97, larguraDados));
		tmp(9) := std_logic_vector(to_signed(97, larguraDados));
		return tmp;
	end;

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

	saidaA <= ram(to_integer(unsigned (enderecoA)));

	saidaB <= ram(to_integer(unsigned (enderecoB)));

   saidaTeste <= ram(to_integer(unsigned (endTeste)));



end behaviour;
