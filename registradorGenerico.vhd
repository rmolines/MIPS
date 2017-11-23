library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 entity registradorGenerico is
    generic (
        larguraDados : natural := 32
    );
      port (DIN : in    std_logic_vector(larguraDados-1 downto 0);
           DOUT : out   std_logic_vector(larguraDados-1 downto 0);
           ENABLE : in  std_logic := '1';
           CLK : in std_logic;
			  RST : in std_logic := '0');
 end entity;

 architecture comportamento of registradorGenerico is
 begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
            if (rising_edge(CLK)) then
					 if (RST = '1') then
						DOUT <= (others => '0');
                else if (ENABLE = '1') then
                        DOUT <= DIN;
                end if;
            end if;
        end if;
    end process;
 end architecture;