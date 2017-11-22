LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity comparador is
  port (
  clk       : in std_logic;
  a         : in std_logic_vector(23 downto 0);
  b         : in std_logic_vector(23 downto 0);
  c         : out std_logic
  );
end entity;

architecture comparadorarc of comparador is

  

begin
  c <= '1' WHEN (a=b) ELSE
       '0';  

end architecture;
