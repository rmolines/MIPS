LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UCULA is
  port (
  clk	  : in std_logic;
  OP    : in std_logic_vector(1 downto 0);
  funct : in std_logic_vector(5 downto 0);
  ctrl  : out std_logic_vector(3 downto 0)
  );
end entity;

architecture UCULAarch of UCULA is


begin

  process (OP, funct) is
    variable tempCtrl : std_logic_vector (3 downto 0);
    variable tempFunct : std_logic_vector (5 downto 0);
  begin
	tempFunct := funct;
    case OP is
      when "00" => tempCtrl := "0010";
      when "01" => tempCtrl := "0110";
      when "10" =>
        case tempFunct(3 downto 0) is
          when "0000" => tempCtrl := "0010";
          when "0010" => tempCtrl := "0110";
          when "0100" => tempCtrl := "0000";
          when "0101" => tempCtrl := "0001";
          when "1010" => tempCtrl := "0111";
          when others => tempCtrl := "1111";
        end case;
	    when others => tempCtrl := "1111";
    end case;



    ctrl <= tempCtrl;

  end process;
end architecture;
