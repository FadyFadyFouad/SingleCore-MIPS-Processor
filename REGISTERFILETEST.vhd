
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY REGISTERFILETEST IS
END REGISTERFILETEST;
 
ARCHITECTURE behavior OF REGISTERFILETEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REGISTERFILE
    PORT(
         read_sel1 : IN  std_logic_vector(4 downto 0);
         read_sel2 : IN  std_logic_vector(4 downto 0);
         write_sel : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         clk : IN  std_logic;
         write_data : IN  std_logic_vector(31 downto 0);
         data1 : OUT  std_logic_vector(31 downto 0);
         data2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal read_sel1 : std_logic_vector(4 downto 0) := (others => '0');
   signal read_sel2 : std_logic_vector(4 downto 0) := (others => '0');
   signal write_sel : std_logic_vector(4 downto 0) := (others => '0');
   signal write_ena : std_logic := '0';
   signal clk : std_logic := '0';
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal data1 : std_logic_vector(31 downto 0);
   signal data2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REGISTERFILE PORT MAP (
          read_sel1 => read_sel1,
          read_sel2 => read_sel2,
          write_sel => write_sel,
          write_ena => write_ena,
          clk => clk,
          write_data => write_data,
          data1 => data1,
          data2 => data2
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		write_sel <= "01000" ; --$t0
			write_data <= "00001111000011110000111100001111" ;
			write_ena <= '1' ;
     wait for 100 ns;

     write_sel <= "10000" ; --$s0
			write_data <= "11110000111100001111000011110000" ;
			write_ena <= '1' ;
			wait for 100 ns;
			read_sel1 <= "01000" ; --$t0
			read_sel2 <= "10000" ; --$s0
			write_ena <= '0' ;
wait for 100 ns;
       read_sel1 <= "01000" ; --$t0
			read_sel2 <= "10000" ; --$s0
			write_sel <= "01000" ; --$t0
			write_data <= "00000000000000000000000000000000" ;
			write_ena <= '1' ;
			wait for 100 ns;
			
      wait;
   end process;

END;
