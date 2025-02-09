
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity mux32bits is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end mux32bits;

architecture Behavioral of mux32bits is

begin
O <= A when S ='0' else
		B;

end Behavioral;

