library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is

  Port ( A :  in std_logic_vector(31 downto 0) := std_logic_vector(signed(to_unsigned(30, 32)));
         B :  in std_logic_vector(31 downto 0) := std_logic_vector(signed(to_unsigned(25, 32)));
         Sel: in std_logic_vector(3 downto 0);
         C : out std_logic_vector(31 downto 0);
			zeroFlag : out std_logic;
			v  : out std_logic
 );
end entity;

architecture ULAarch of ULA is

  signal muxAOut, muxBOut, adderOut,
         andOut, orOut, sltIn: std_logic_vector(31 downto 0);
  signal overflow : std_logic;

begin

  process (A, B, Sel, sltIn, overflow) is
    variable tempOF : std_logic_vector(2 downto 0);
    variable tempA  : std_logic_vector(31 downto 0);
    variable tempB  : std_logic_vector(31 downto 0);
    variable C9     : std_logic_vector(32 downto 0);
    variable tempAdd: std_logic_vector(32 downto 0);
  begin
    tempA := (others => '0');
    tempB := (others => '0');
    case Sel(3) is
      when '1' => tempA := std_logic_vector(to_signed(-to_integer(signed(A)), A'length));
      when others => tempA := A;
    end case;
	 case sel(2) is
      when '1' => tempB := std_logic_vector(to_signed(-to_integer(signed(B)), B'length));
      when others => tempB := B;
	 end case;
	 tempAdd := std_logic_vector(resize(to_signed(to_integer(signed(tempA)) + to_integer(signed(tempB)), C'length), C9'length));
    C9 := (others => '0');
    case Sel(1 downto 0) is
      when "11" => C9 := (0 => sltIn(0), others => '0');
      when "10" => C9 := tempAdd;
      when "01" => C9(32 downto 0) := '0' & std_logic_vector(tempA OR tempB);
      when "00" => C9(32 downto 0) := '0' & std_logic_vector(tempA AND tempB);
      when others => C9 := (others => '0');
    end case;
    C(31 downto 0) <= C9(31 downto 0);
    -- overflow = "b001" (entrada POSITIVA e saida NEGATIVA)  OU "b110" (entrada NEGATIVA e saida POSITIVA)
    tempOF := tempA(tempA'high) & tempB(tempB'high) & tempAdd(tempAdd'high-1);
    case tempOF is
      when "001"  => overflow <= '1';
      when "110"  => overflow <= '1';
      when others => overflow <= '0';
    end case;
	 v <= overflow;
    sltIn <= (0 => overflow XOR tempAdd(31), others => '0');
    case to_integer(signed(tempAdd(31 downto 0))) is
      when 0 => zeroFlag <= '1';
      when others => zeroFlag <= '0';
    end case;
  end process;
end architecture;
