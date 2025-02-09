
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALUTEST IS
END ALUTEST;
 
ARCHITECTURE behavior OF ALUTEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic_vector(31 downto 0);
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data1 : std_logic_vector(31 downto 0) := (others => '0');
   signal data2 : std_logic_vector(31 downto 0) := (others => '0');
   signal aluop : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal dataout : std_logic_vector(31 downto 0);
   signal cflag : std_logic;
   signal zflag : std_logic;
   signal oflag : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          data1 => data1,
          data2 => data2,
          aluop => aluop,
          cin => cin,
          dataout => dataout,
          cflag => cflag,
          zflag => zflag,
          oflag => oflag
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      WAIT FOR 100 NS;
      data1 <= "11000000000000000000000000000000" ;
			data2 <= "10100000000000000000000000000000" ;
			aluop <= "0000" ;
		
		WAIT FOR 100 NS;
       data1 <= "11000000000000000000000000000000" ;
			data2 <= "10100000000000000000000000000000" ;
			aluop <= "0001" ;
		
		WAIT FOR 100 NS;
      data1 <= "01110000000000000000000000000000" ;
			data2 <= "01100000000000000000000000000000" ;
			aluop <= "0010" ;
		
		WAIT FOR 100 NS;
     data1 <= "11110000000000000000000000000000" ;
			data2 <= "00010000000000000000000000000000" ;
			aluop <= "0010" ;
		
		WAIT FOR 100 NS;
      data1 <= "00000000000000000000000000000111" ; --a = 7
			data2 <= "00000000000000000000000000000110" ; --b = 6
			
			aluop <= "0110" ;
		WAIT FOR 100 NS;
		data1 <= "00000000000000000000000000000110" ; --a = 6
			data2 <= "00000000000000000000000000000111" ; --b = 7
			
			aluop <= "0110" ;
      wait;
   end process;

END;
