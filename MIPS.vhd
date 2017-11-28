library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS is
  port (
  --entradas
    clk : in std_logic;
    key: in std_logic_vector(3 downto 0);
    regEnd : in natural;
    memEnd : in std_logic_vector(31 downto 0);

    --saidas
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0);
    regTestOut, memTestOut : out std_logic_vector(31 downto 0);
    regTestEndOut : out std_logic_vector(4 downto 0);
    memTestEndOut : out std_logic_vector(31 downto 0)
  );
end entity;

architecture MIPSarch of MIPS is

  signal regDataAUX, memDataAUX : std_logic_vector(31 downto 0);
  signal regTest, memTest : natural := 0;

begin
  memTestOut <= memDataAUX;
  regTestOut <= regDataAUX;
  memTestEndOut <= memEnd;
  regTestEndOut <= std_logic_vector(to_unsigned(regEnd, 5));

  FD : entity work.fluxoDeDados port map
  (clk => clk, regTestEnd => std_logic_vector(to_unsigned(regEnd, 5)),
  memTestEnd => memEnd,
  regTestOut => regDataAUX, memTestOut => memDataAUX);


  display2 : entity work.conversorHex7seg
    Port map (saida7seg => HEX2, dadoHex => regDataAUX(3 downto 0));
  display4 : entity work.conversorHex7seg
    Port map (saida7seg => HEX4, dadoHex => memDataAUX(3 downto 0));
  -- display4 : entity work.conversorHex7seg
  --   Port map (saida7seg => HEX4, dadoHex => auxSh_u);
  -- display5 : entity work.conversorHex7seg
  --   Port map (saida7seg => HEX5, dadoHex => auxSh_d);

  -- process(key)
  -- begin
  --   if (rising_edge(key(3))) then
  --     regTest <= regTest+1;
  --     if (regTest = 10) then
  --       regTest <= 0;
  --     end if;
  --   end if;
  --   if (rising_edge(key(2))) then
  --     memTest <= memTest+1;
  --     if (memTest = 10) then
  --       memTest <= 0;
  --     end if;
  --   end if;
	-- end process;
end architecture;
