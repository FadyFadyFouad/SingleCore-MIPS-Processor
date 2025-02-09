

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MainModulePack is

component ALU is
      Port ( data1 : in std_logic_vector(31 downto 0);
 data2 : in std_logic_vector(31 downto 0);
 aluop : in std_logic_vector(3 downto 0);
 cin : in std_logic_vector(31 downto 0);
 dataout: out std_logic_vector(31 downto 0);
cflag: out std_logic;
zflag: out std_logic;
oflag: out std_logic);
end component;

component REGISTERFILE is
       PORT(
		 read_sel1 : in std_logic_vector(4 downto 0);
       read_sel2 : in std_logic_vector(4 downto 0);
       write_sel : in std_logic_vector(4 downto 0);
       write_ena : in std_logic;
       clk: in std_logic;
       write_data: in std_logic_vector(31 downto 0);
       data1: out std_logic_vector(31 downto 0);
       data2: out std_logic_vector(31 downto 0));
end component;

component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;


component Control is
			Port(
			OPcode : in std_logic_vector(5 downto 0);
			RegDst : out std_logic;
			Jump : out std_logic;
			Branch : out std_logic;
			MemRead : out std_logic;
			MemToReg : out std_logic;
			ALUop : out std_logic_vector(1 downto 0);
			MemWrite : out std_logic;
			ALUsrc : out std_logic;
			RegWrite : out std_logic
			);
end component;

component SignExtender is
			PORT(
							bitsin : in STD_LOGIC_VECTOR(15 downto 0);
							bitsout :out STD_LOGIC_VECTOR(31 downto 0));
end component;

COMPONENT MUX2X1MAIN IS
         Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
			  S: in STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (4 downto 0));
END COMPONENT;
component ALUcontrol is
    Port ( func : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));

end component ;

component mux32bits is
Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end component;

component PC is
Port ( start : in std_logic;
inadd : in  STD_LOGIC_VECTOR (31 downto 0);
	        jump,branch,clk : in std_logic;
	        oflag : in std_logic;
	        instruction :in STD_LOGIC_VECTOR (31 downto 0);
           outadd : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end component;
COMPONENT iNSTRUCTIONMEM IS
port(
		Address : in STD_LOGIC_VECTOR(31 downto 0);
		addressout : out STD_LOGIC_VECTOR(31 downto 0)
		);
		END COMPONENT;
end MainModulePack;

package body MainModulePack is


 
end MainModulePack;
