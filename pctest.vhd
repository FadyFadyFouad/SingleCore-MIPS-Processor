
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pctest IS
END pctest;
 
ARCHITECTURE behavior OF pctest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         START : IN  std_logic;
         inadd : IN  std_logic_vector(31 downto 0);
         jump : IN  std_logic;
         branch : IN  std_logic;
         clk : IN  std_logic;
         oflag : IN  std_logic;
         instruction : IN  std_logic_vector(31 downto 0);
         outadd : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal START : std_logic := '0';
   signal inadd : std_logic_vector(31 downto 0) := (others => '0');
   signal jump : std_logic := '0';
   signal branch : std_logic := '0';
   signal clk : std_logic := '0';
   signal oflag : std_logic := '0';
   signal instruction : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal outadd : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          START => START,
          inadd => inadd,
          jump => jump,
          branch => branch,
          clk => clk,
          oflag => oflag,
          instruction => instruction,
          outadd => outadd
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      START <='1';
		INADD <= X"00000000";
		JUMP <= '0';
		BRANCH <= '0';
		OFLAG <= '1';
		INSTRUCTION <= X"05856775";
      wait for 100 ns;	
		START <='0';
		INADD <= X"00000001";
		JUMP <= '0';
		BRANCH <= '1';
		OFLAG <= '1';
		INSTRUCTION <= X"00000008";
		wait for 100 ns;
		
		wait for 100 ns;
		
		wait for 100 ns;
		
		wait for 100 ns;

      

      -- insert stimulus here 

      wait;
   end process;

END;
