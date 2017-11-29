library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPSC is
  port (
  --entradas
    clk : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    regEnd, memEnd : in std_logic_vector(31 downto 0);
    LEDG  : out STD_LOGIC_VECTOR(8 DOWNTO 0) := (others => '0');

    --saidas
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0);
    -- HEX2, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 downto 0);
    regTestOut2, memTestOut : out std_logic_vector(31 downto 0);
    regTestEndOut, memTestEndOut : out std_logic_vector(31 downto 0)
  );
end entity;

architecture MIPSCarch of MIPSC is

  signal regDataAUX, memDataAUX : std_logic_vector(31 downto 0);
  signal regTemp : natural := to_integer(unsigned(regEnd));
  signal memTemp : natural := to_integer(unsigned(memEnd));
  signal regEndHEX, memEndHEX : std_logic_vector(31 downto 0);

--  signal regTestNat : natural := to_integer(signed(regEnd));
--  signal memTestNat : natural := to_integer(signed(memEnd));

begin
--  regTemp <= to_integer(unsigned(regEnd));
--  memTemp <= to_integer(unsigned(memEnd));
  regEndHEX <= std_logic_vector(to_unsigned(regTemp, 32));
  memEndHEX <= std_logic_vector(to_unsigned(memTemp, 32));
  regTestEndOut <= regEndHEX;
  memTestEndOut <= memEndHEX;
  regTestOut2 <= regDataAUX;
  memTestOut <= memDataAUX;
  -- regTestEndOut <= memEnd;
  -- memTestEndOut <= regEnd;
  -- regTestEndOut <= std_logic_vector(to_unsigned(regEnd, 5));
  LEDG(3 downto 0) <= not(KEY(3 downto 0));      -- Cada LED VERDE, de 0 a 3, indica se o botao correspondente foi pressionado.

  FD : entity work.fluxoDeDadosC port map
  (clk => not(key(0)), regTestEnd => std_logic_vector(to_unsigned(regTemp, 5)),
  memTestEnd => std_logic_vector(to_unsigned(memTemp, 32)),
  regTestOut => regDataAUX, memTestOut => memDataAUX);


  display2 : entity work.conversorHex7seg
    Port map (saida7seg => HEX0, dadoHex => regDataAUX(3 downto 0));
  display4 : entity work.conversorHex7seg
    Port map (saida7seg => HEX2, dadoHex => memDataAUX(3 downto 0));
  display6 : entity work.conversorHex7seg
    Port map (saida7seg => HEX4, dadoHex => regEndHEX(3 downto 0));
  display7 : entity work.conversorHex7seg
    Port map (saida7seg => HEX6, dadoHex => memEndHEX(3 downto 0));
  display1 : entity work.conversorHex7seg
    Port map (saida7seg => HEX1, dadoHex => "1111", apaga => '1');
  display3 : entity work.conversorHex7seg
    Port map (saida7seg => HEX3, dadoHex => "1111", apaga => '1');
  display5 : entity work.conversorHex7seg
    Port map (saida7seg => HEX5, dadoHex => "1111", apaga => '1');
  display8 : entity work.conversorHex7seg
    Port map (saida7seg => HEX7, dadoHex => "1111", apaga => '1');

  process(key)
  begin
    if (rising_edge(key(2))) then
      regTemp <= regTemp+1;
      if (regTemp = 10) then
        regTemp <= 0;
      end if;
    end if;
    if (rising_edge(key(1))) then
      memTemp <= memTemp+1;
      if (memTemp = 10) then
        memTemp <= 0;
      end if;
    end if;
	end process;
end architecture;
