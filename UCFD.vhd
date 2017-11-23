LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UCULA is
  port (
  clk	  : in std_logic;
  OP    : in std_logic_vector(5 downto 0);
  muxJump : out std_logic;
  muxRtRd : out std_logic;
  regWriteEnb : out std_logic;
  muxRtImm : out std_logic;
  ULAOP : out std_logic_vector(1 downto 0);
  MuxULAMem : out std_logic;
  BEQ : out std_logic;
  memReadEnb : out std_logic;
  memWriteEnb : out std_logic
  );
end entity;

architecture UCULAarch of UCULA  is


begin

  process (OP, clk) is
  begin
  	if(rising_edge(clk)) then
      case OP is
        when "000000" => muxJump <= '0';
                         muxRtRd <= '1';
                         regWriteEnb <= '1';
                         muxRtImm <= '0';
                         muxULAMem <= '0';
                         BEQ <= '0';
                         memReadEnb <= '0';
                         memWriteEnb <= '0';
                         ULAOP <= "10";

        when "100011" => muxJump <= '0';
                         muxRtRd <= '0';
                         regWriteEnb <= '1';
                         muxRtImm <= '1';
                         muxULAMem <= '1';
                         BEQ <= '0';
                         memReadEnb <= '1';
                         memWriteEnb <= '0';
                         ULAOP <= "00";

        when "101011" => muxJump <= '0';
                         muxRtRd <= '0';
                         regWriteEnb <= '0';
                         muxRtImm <= '1';
                         muxULAMem <= '0';
                         BEQ <= '0';
                         memReadEnb <= '0';
                         memWriteEnb <= '1';
                         ULAOP <= "00";

        when "000100" => muxJump <= '0';
                         muxRtRd <= '0';
                         regWriteEnb <= '0';
                         muxRtImm <= '0';
                         muxULAMem <= '0';
                         BEQ <= '1';
                         memReadEnb <= '0';
                         memWriteEnb <= '0';
                         ULAOP <= "01";

        when "000010" => muxJump <= '1';
                         muxRtRd <= '0';
                         regWriteEnb <= '0';
                         muxRtImm <= '0';
                         muxULAMem <= '0';
                         BEQ <= '0';
                         memReadEnb <= '0';
                         memWriteEnb <= '0';
                         ULAOP <= "00";

      end case;


    end if;
  end process;
end architecture;
