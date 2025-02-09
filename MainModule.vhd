library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;  
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.MainModulePack.all;
entity MainModule is
       Port(
		 START: IN STD_LOGIC;
		CLK: IN STD_LOGIC;
		RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
		RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
		ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
		PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
		DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0)
		 );
		 
end MainModule;

architecture Behavioral of MainModule is

signal address : STD_LOGIC_VECTOR(31 downto 0);
signal OPcode : std_LOGIC_VECTOR(5 downto 0);
signal DATaA : STD_LOGIC_VECTOR(31 downto 0);
signal RegDst1,jump1,branch1,memread1,memtoreg1,memwrite1,ALUsrc1,regwrite1,ofla,cfla,zfla :STD_LOGIC;
signal ALUOp1 : STD_LOGIC_VECTOR (1 downto 0);
signal alucout : std_logic_vector (3 downto 0);
signal extended : std_logic_vector ( 31 downto 0);
signal muxregout : std_logic_vector ( 4 downto 0);
signal redata1 : std_logic_vector (31 downto 0 );
signal redata2 : std_logic_vector (31 downto 0 );
siGNAL DATAMEMORYDATAOUT : STD_LOGIC_VECTOR(31 downto 0);
signal useless : std_logic_vector (31 downto 0);
signal aluout1 :std_logic_vector (31 downto 0);
signal mux32out :std_logic_vector (31 downto 0);
signal mux32out2 : std_logic_vector (31 downto 0);
signal pcout1 : std_LOGIC_VECTOR (31 downto 0);
begin

PC1:PC port map(START,PCOUT1+ x"00000004",jump1,branch1,clk,zfla,DATAA,pcout1);
I1 :iNSTRUCTIONMEM port map(pcout1,dataa);
OPcode <= DATAA(31 DOWNTO 26);
C1 : Control port map(OPcode,RegDst1,jump1,branch1,memread1,memtoreg1,ALUOp1,memwrite1,ALUsrc1,regwrite1);
a1 : alucontrol port map(dataa(5 downto 0),ALUOp1,alucout);
m2: mux32bits port map (redata2,EXTENDED,ALUsrc1,mux32out2);
ALU1 : ALU port map (redata1,mux32out2,alucout,useless,ALUOUT1,cfla,zfla,ofla);
D1 :DATAMEMORY port map (START, redata2,DATAMEMORYDATAOUT,memread1,memwrite1,aluout1,clk);
extbits : signextender port map(DATaA(15 DOWNTO 0), EXTENDED);
M1 : MUX2X1MAIN PORT MAP( DATAa(20 DOWNTO 16),DATaA(15 DOWNTO 11),RegDst1,muxregout);
mux32 : mux32bits port map(aluout1,DATAMEMORYDATAOUT,memtoreg1,mux32out);
r1 : registerfile Port map( dataa(25 downto 21),dataa (20 downto 16),muxregout,regwrite1,clk,mux32out,redata1,redata2);
RegFileOut1 <= redata1;
RegFileOut2 <= redata2;
ALUOut <= aluout1;
DataMemOut <= DATAMEMORYDATAOUT;
PCout <= pcout1;


end Behavioral;

