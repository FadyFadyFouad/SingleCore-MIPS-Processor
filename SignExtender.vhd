
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SignExtender is
					PORT(
							bitsin : in STD_LOGIC_VECTOR(15 downto 0);
							bitsout :out STD_LOGIC_VECTOR(31 downto 0));
end SignExtender;

architecture Behavioral of SignExtender is

begin
bitsout <= x"0000" & bitsin when bitsin(15)='0' else
			  x"FFFF" & bitsin;
end Behavioral;

