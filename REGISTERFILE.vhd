
library IEEE;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.all;

entity REGISTERFILE is
       PORT(
		 read_sel1 : in std_logic_vector(4 downto 0);
       read_sel2 : in std_logic_vector(4 downto 0);
       write_sel : in std_logic_vector(4 downto 0);
       write_ena : in std_logic;
       clk: in std_logic;
       write_data: in std_logic_vector(31 downto 0);
       data1: out std_logic_vector(31 downto 0);
       data2: out std_logic_vector(31 downto 0));
end REGISTERFILE;

 architecture Behavioral of REGISTERFILE is
type REGISTERS is array(0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
signal array_reg:REGISTERS := ( X"00000000",
                                X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000", --$s0
                                X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000",
										  X"00000000");
                        
begin
PROCESS(CLK)
BEGIN  
IF(CLK ' EVENT AND CLK ='0') THEN
	IF(WRITE_ENA ='1') THEN
	   ARRAY_REG(TO_INTEGER(UNSIGNED(WRITE_SEL))) <= WRITE_DATA;
	END IF;
	

	
END IF;	
END PROCESS;
	DATA1<= ARRAY_REG(TO_INTEGER(UNSIGNED(READ_SEL1)));
	DATA2<= ARRAY_REG(TO_INTEGER(UNSIGNED(READ_SEL2)));
end Behavioral;

