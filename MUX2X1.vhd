
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


entity MUX2X1 is
    Port ( A : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC);
end MUX2X1;

architecture Behavioral of MUX2X1 is

begin
O <= A WHEN S ='0' ELSE
    NOT(A);
    
end Behavioral;

