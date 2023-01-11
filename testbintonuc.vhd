library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity test_bin_to_nuc is
end test_bin_to_nuc;

architecture testbench of test_bin_to_nuc is
    -- Declare input and output signals for the DUT
    signal bin_in: std_logic_vector(63 downto 0);
    signal rule: character;
    signal nuc_out: string(1 to 32);

    -- Declare the DUT
    component bin_to_nuc is
        port (
            bin_in: in std_logic_vector(63 downto 0);
            rule: in character;
            nuc_out: out string (1 to 32)
        );
    end component;

begin
    -- Instantiate the DUT
    dut: bin_to_nuc
        port map (
            bin_in => bin_in,
            rule => rule,
            nuc_out => nuc_out
        );

    -- Test case:  rule = "001"
    test_case_1: process
    begin
        bin_in <= "0101000101010001010100010101000101010001010100010101000101010001";
        rule <= '1';
        wait for 10 ns;
     
    
        bin_in <= "0111011101110111011101110111011101110111011101110111011101110111";
        rule <= '4';
        wait for 10 ns;
        
    end process;

    -- Add additional test cases here

end testbench;
