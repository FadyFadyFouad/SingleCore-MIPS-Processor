
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ALU is
      Port ( data1 : in std_logic_vector(31 downto 0);
 data2 : in std_logic_vector(31 downto 0);
 aluop : in std_logic_vector(3 downto 0);
 cin : in std_logic_vector(31 downto 0);
 dataout: out std_logic_vector(31 downto 0);
cflag: out std_logic;
zflag: out std_logic;
oflag: out std_logic);
end ALU;

architecture Behavioral of ALU is
COMPONENT ALU1BIT IS
        PORT(
       data1 : in std_LOGIC;
 data2 : in std_logic;
 aluop : in std_logic_vector(3 downto 0);
 cin : in std_logic;
 dataout: out std_logic;
 COUT : OUT STD_LOGIC);
 END COMPONENT;
 signal cout : std_logic_vector(31 downto 0);
 SIGNAL TEMP :STD_LOGIC_VECTOR(31 DOWNTO 0);
 SIGNAL CONTROL :STD_LOGIC;
begin
CONTROL <= '1' WHEN ALUOP = "0110" or ALUOP = "0111" ELSE
   '0';
bit0 : ALU1BIT port map(data1(0),data2(0),aluop,CONTROL,temp(0),cout(0)) ;
bit1 : ALU1BIT port map(data1(1),data2(1),aluop,cout(0),temp(1),cout(1));
bit2 : ALU1BIT port map(data1(2),data2(2),aluop,cout(1),temp(2),cout(2));
bit3 : ALU1BIT port map(data1(3),data2(3),aluop,cout(2),temp(3),cout(3));
bit4 : ALU1BIT port map(data1(4),data2(4),aluop,cout(3),temp(4),cout(4));
bit5 : ALU1BIT port map(data1(5),data2(5),aluop,cout(4),temp(5),cout(5));
bit6 : ALU1BIT port map(data1(6),data2(6),aluop,cout(5),temp(6),cout(6));
bit7 : ALU1BIT port map(data1(7),data2(7),aluop,cout(6),temp(7),cout(7));
bit8 : ALU1BIT port map(data1(8),data2(8),aluop,cout(7),temp(8),cout(8));
bit9 : ALU1BIT port map(data1(9),data2(9),aluop,cout(8),temp(9),cout(9));
bit10 : ALU1BIT port map(data1(10),data2(10),aluop,cout(9),temp(10),cout(10));
bit11 : ALU1BIT port map(data1(11),data2(11),aluop,cout(10),temp(11),cout(11));
bit12 : ALU1BIT port map(data1(12),data2(12),aluop,cout(11),temp(12),cout(12));
bit13 : ALU1BIT port map(data1(13),data2(13),aluop,cout(12),temp(13),cout(13));
bit14 : ALU1BIT port map(data1(14),data2(14),aluop,cout(13),temp(14),cout(14));
bit15 : ALU1BIT port map(data1(15),data2(15),aluop,cout(14),temp(15),cout(15));
bit16 : ALU1BIT port map(data1(16),data2(16),aluop,cout(15),temp(16),cout(16));
bit17 : ALU1BIT port map(data1(17),data2(17),aluop,cout(16),temp(17),cout(17));
bit18 : ALU1BIT port map(data1(18),data2(18),aluop,cout(17),temp(18),cout(18));
bit19 : ALU1BIT port map(data1(19),data2(19),aluop,cout(18),temp(19),cout(19));
bit20 : ALU1BIT port map(data1(20),data2(20),aluop,cout(19),temp(20),cout(20));
bit21 : ALU1BIT port map(data1(21),data2(21),aluop,cout(20),temp(21),cout(21));
bit22 : ALU1BIT port map(data1(22),data2(22),aluop,cout(21),temp(22),cout(22));
bit23 : ALU1BIT port map(data1(23),data2(23),aluop,cout(22),temp(23),cout(23));
bit24 : ALU1BIT port map(data1(24),data2(24),aluop,cout(23),temp(24),cout(24));
bit25 : ALU1BIT port map(data1(25),data2(25),aluop,cout(24),temp(25),cout(25));
bit26 : ALU1BIT port map(data1(26),data2(26),aluop,cout(25),temp(26),cout(26));
bit27 : ALU1BIT port map(data1(27),data2(27),aluop,cout(26),temp(27),cout(27));
bit28 : ALU1BIT port map(data1(28),data2(28),aluop,cout(27),temp(28),cout(28));
bit29 : ALU1BIT port map(data1(29),data2(29),aluop,cout(28),temp(29),cout(29));
bit30 : ALU1BIT port map(data1(30),data2(30),aluop,cout(29),temp(30),cout(30));
bit31 : ALU1BIT port map(data1(31),data2(31),aluop,cout(30),temp(31),cout(31));

--dataout <= temp;
dataout<= x"00000001" when ( aluop="0111" and temp(31)='1') else
			 x"00000000" when ( aluop="0111" and temp(31)='0') else
			 temp;

ZFLAG <= '1' WHEN TEMP= "00000000000000000000000000000000" ELSE
         '0';
oflag <= cout(30) xor cout(31);
cflag <= cout(31);
end Behavioral;

