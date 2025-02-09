
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FULLADDER is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           COUT : out  STD_LOGIC;
           O : out  STD_LOGIC);
end FULLADDER;

architecture Behavioral of FULLADDER is

begin
O <= A XOR B XOR CIN;
COUT <= (A AND B) OR (A AND CIN) OR ( B AND CIN);


end Behavioral;

