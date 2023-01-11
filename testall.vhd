library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_encrypt_tb is
end entity;

architecture test of main_encrypt_tb is

signal clk : std_logic := '0';
signal password_in : string (1 to 8);
signal rule_in : character ;
signal key_in : std_logic_vector(3 downto 0);
signal choose_encrypt : character;
signal encrypted_dna : string (1 to 32);
signal encrypted_ceaser : string (1 to 8);

begin

-- Instantiate the DUT
dut : entity work.main_encrypt
    port map (clk => clk,
        password_in => password_in,
        rule_in => rule_in,
        key_in => key_in,
        choose_encrypt => choose_encrypt,
        encrypted_dna => encrypted_dna,
        encrypted_ceaser => encrypted_ceaser
    );

-- Clock Process
clk_process : process
begin
    clk <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
end process;

-- Test Case 1
test_case_1 : process
begin
    -- Set input values
    password_in <= "abcd1234";
    rule_in <= '4';
    key_in <= "0100";
    choose_encrypt <= '1';
    wait for 10 ns;

   

    -- Set input values
	 wait for 10 ns;
    password_in <= "abcd1234";
    rule_in <= '4';
    key_in <= "0100";
    choose_encrypt <= '2';
    wait for clk_period*10;
  
end process;

end architecture;
