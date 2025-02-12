
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity ALUcontrol is
    Port ( func : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUcontrol;

architecture Behavioral of ALUcontrol is

begin
Operation(3) <='0';
Operation(2) <= ALUOp(0) or (ALUOp(1) and func(1));
Operation(1) <= not ALUOp(1) or not func(2);
Operation(0) <= (func(3) or func(0)) and ALUOp(1);

end Behavioral;

