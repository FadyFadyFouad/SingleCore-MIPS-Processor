library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX2X1MAIN is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
			  S: in STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (4 downto 0));
end MUX2X1MAIN;

architecture Behavioral of MUX2X1MAIN is

begin
O <= A when S ='0' else
		B;

end Behavioral;

