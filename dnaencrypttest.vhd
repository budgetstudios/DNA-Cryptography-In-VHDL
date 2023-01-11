library ieee;
use ieee.std_logic_1164.all;

entity main_tb is
end main_tb;

architecture behavior of main_tb is
component main is
    port (
        clk: in std_logic;
        message: in character;
        key: in std_logic_vector(3 downto 0);
        encrypted_char: out character
    );
end component;
    signal clk: std_logic := '0';
    signal message: character ;
    signal key: std_logic_vector(3 downto 0) ;
    signal encrypted_char: character;
     constant clk_period : time := 10 ns;
begin
    -- Instantiate the design under test
    dut: entity work.main
        port map (
            clk => clk,
            message => message,
            key => key,
            encrypted_char => encrypted_char
        );

    -- Generate a clock signal
    clk_process: process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    -- Test the encrypted message
    test_process: process
    begin
         wait for 10 ns;
          message<='a';
          key<="0010";
        
           wait for clk_period;

       
    end process;
end behavior;
