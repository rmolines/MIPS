library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX is

  generic(
    DATA_WIDTH : natural := 32
  );

  port (
  SEL : in std_logic;
  A   : in std_logic_vector (DATA_WIDTH-1 downto 0);
  B   : in std_logic_vector (DATA_WIDTH-1 downto 0);
  C : out std_logic_vector (DATA_WIDTH-1 downto 0)
  );
end entity;

architecture MUX_ARCH of MUX is
begin
  C <= A WHEN (SEL = '0') ELSE
           B;
end architecture;
