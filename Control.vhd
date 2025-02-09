
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Control is
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
end Control;

architecture Behavioral of Control is

begin 
process(OPCODE)
BEGIN
if (OPcode="000000") THEN
			RegDst <= '1' ; --Rtype
			Jump <= '0';
			Branch <= '0' ;
			MemRead <= '0';
			MemToReg <= '0' ;
			ALUop <= "10" ;
			MemWrite <= '0' ;
			ALUsrc <= '0' ;
			RegWrite <= '1';
ELSIF (OPcode = "100011")	THEN		
			RegDst <= '0' ;--lw
			Jump <= '0' ;
			Branch <= '0' ;
			MemRead <= '1';
			MemToReg <= '1' ;
			ALUop <= "00" ;
			MemWrite <= '0';
			ALUsrc <= '1' ;
			RegWrite <= '1'  ;
	ELSIF (OPcode = "101011") THEN		
			
			RegDst <= 'X' ; --sw
			Jump <= '0';
			Branch <= '0' ;
			MemRead <= '0';
			MemToReg <= 'X' ;
			ALUop <= "00" ;
			MemWrite <= '1' ;
			ALUsrc <= '1' ;
			RegWrite <= '0';
			
	ELSIF (OPcode = "000100" or OPcode = "000101" ) THEN
			
			RegDst <= 'X' ; --beq
			Jump <= '0' ;
			Branch <= '1' ;
			MemRead <= '0' ;
			MemToReg <= 'X' ;
			ALUop <= "01" ;
			MemWrite <= '0' ;
			ALUsrc <= '0' ;
			RegWrite <= '0' ;
	ELSIF (OPcode = "000010") THEN	
			
			RegDst <= 'X' ; --jump
			Jump <= '1' ;
			Branch <= '0' ;
			MemRead <= '0' ;
			MemToReg <= 'X' ;
			ALUop <= "00" ;
			MemWrite <= '0' ;
			ALUsrc <= '0' ;
			RegWrite <= '0' ;

END IF;
END PROCESS;
end Behavioral;

