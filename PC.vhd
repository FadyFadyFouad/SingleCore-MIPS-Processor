
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.MainModulePack.all;

entity PC is
    Port ( START :IN STD_LOGIC;
	 inadd : in  STD_LOGIC_VECTOR (31 downto 0);
	        jump,branch,clk : in std_logic;
	        oflag : in std_logic;
	        instruction :in STD_LOGIC_VECTOR (31 downto 0);
           outadd : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is

					
signal outputsada : std_logic_vector (31 downto 0);
signal instructionjump : STD_LOGIC_VECTOR(31 downto 0);
signal instructionbeq :STD_LOGIC_VECTOR(31 downto 0);
signal outputext:STD_LOGIC_VECTOR(31 downto 0);
signal outputextshift:STD_LOGIC_VECTOR(31 downto 0);
signal outputalu:STD_LOGIC_VECTOR(31 downto 0);
signal muxonesel,muxtwosel : std_logic;
signal outputmuxone :std_LOGIC_VECTOR(31 downto 0);
begin

instructionjump(27 downto 0) <= instruction(25 downto 0) & "00";
instructionjump(31) <=inadd(31);
instructionjump(30) <=inadd(30);
instructionjump(29) <=inadd(29);
instructionjump(28) <=inadd(28);

outputext <= x"0000" & instruction(15 downto 0) when  instruction(15)='0' else
	  x"FFFF" & instruction(15 downto 0);

outputextshift <= outputext(29 downto 0) & "00";
outputalu <= outputextshift + inadd;
muxonesel <= (branch and oflag and not(instruction(26))) OR (branch and not(oflag) and instruction(26));
muxTWOsel <= JUMP;

outputmuxone <= inadd  when  muxonesel='0' else
 outputalu;


process(clk)
begin
if(clk ' event and clk ='0') then
--outputsada<= inadd + x"00000004";

if (muxtwosel='0') then
outadd<=outputmuxone;
else
outadd<=instructionjump;
end if;
IF(START='1') THEN
OUTADD <= X"00000000";
outputsada <=X"00000000";
END IF;


end if;
end process;
end Behavioral;

