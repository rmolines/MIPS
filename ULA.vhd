entity ULA is

  Port ( A :  in std_logic_vector(31 downto 0);
         B :  in std_logic_vector(31 downto 0);
         Sel: in std_logic_vector(3 downto 0);
         C : out std_logic_vector(31 downto 0);
      	 overflow: out std_logic,
			   zeroFlag : out std_logic
 );
end entity;

architecture ULAarch of ULA is

  signal muxAOut, muxBOut, adderOut
         andOut, orOut: std_logic_vector(31 downto 0);

begin

  C => muxResultOut;
  zeroFlag => NOT muxResultOut;
  
  MuxA : entity work.MUX port map
       (A => A, B => (NOT A), SEL => SEL(3),
       C => muxAOut);

  MuxB : entity work.MUX port map
       (A => B, B => NOT B, SEL => SEL(2),
       C => muxBOut);

  Adder : entity work.adder port map
       (A => muxAOut, B => muxBOut, C => adderOut,
       );

  MUXResult : entity work.MUX port map
       (A => andOut, B => orOut, C => adderOut,
       D => sltOut, E => muxResultOut);

end architecture;
