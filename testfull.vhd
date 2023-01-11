LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY testfull IS
END testfull;
 
ARCHITECTURE behavior OF testfull IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullwordceaser
    PORT(
         clk : IN  std_logic;
         password : IN  string(1 to 8);
         key : IN  std_logic_vector(3 downto 0);
         encrypted_CEASER : OUT  string(1 to 8)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal password : string(1 to 8) := (others => '0');
   signal key : std_logic_vector(3 downto 0) := (others => '0');
    
     --Outputs
   signal encrypted_CEASER : string(1 to 8);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: fullwordceaser PORT MAP (
          clk => clk,
          password => password,
          key => key,
          encrypted_CEASER => encrypted_CEASER
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
     password<="abcd1234";
      key<="0010";
      wait for clk_period*10;

      -- insert stimulus here 

   
   end process;
end;