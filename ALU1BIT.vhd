
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE WORK.ALUPACK.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity ALU1BIT is
       PORT(
       data1 : in std_LOGIC;
 data2 : in std_logic;
 aluop : in std_logic_vector(3 downto 0);
 cin : in std_logic;
 dataout: out std_logic;
 COUT : OUT STD_LOGIC);
end ALU1BIT;

architecture Behavioral of ALU1BIT is
SIGNAL I0,I1,I2,I3 : STD_LOGIC;
SIGNAL SUB : STD_LOGIC;
SIGNAL MUXO : STD_LOGIC;
begin
I0 <= DATA1 AND DATA2;
I1 <= DATA1 OR DATA2;
SUB <= '1' WHEN ALUOP="0110" or  ALUOP="0111" ELSE
      '0';
    
MUX1X2 : MUX2X1 PORT MAP(DATA2,SUB,MUXO);
FA : FULLADDER PORT MAP(DATA1,MUXO,CIN,COUT,I2);
I3 <= DATA1 NOR DATA2;
MUX1X16 :MUX16X1 PORT MAP(I0,I1,I2,I2,I3,ALUOP,DATAOUT);
end Behavioral;

