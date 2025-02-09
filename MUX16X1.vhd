library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX16X1 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           I4 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC);
end MUX16X1;

architecture Behavioral of MUX16X1 is

begin
O <= I0 WHEN S = "0000" ELSE
     I1 WHEN S = "0001" ELSE
	  I2 WHEN S = "0010" ELSE
	  I3 WHEN S= "0110" or S="0111" ELSE
	  I4 WHEN S = "1100" ;
	  

end Behavioral;

