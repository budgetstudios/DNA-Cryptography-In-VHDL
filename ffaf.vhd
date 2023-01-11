library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity xor_dna_tb is
end xor_dna_tb;

architecture Behavioral of xor_dna_tb is
    component xor_dna is
        Port ( dna1 : in  string (1 to 32);
               dna2 : in  string (1 to 32);
               result : out  string (1 to 32));
    end component;
    
    -- Declare test bench signals
    signal dna1 : string(1 to 32);
    signal dna2 : string(1 to 32);
    signal result : string(1 to 32);
    
begin
    -- Instantiate the xor_dna component
    uut : xor_dna
        port map (
            dna1 => dna1,
            dna2 => dna2,
            result => result
        );
        
    -- Test process
    test_process : process
    begin
        -- Set input  DNA strands and check result
		  
        dna1 <= "AAAAAAAAGGGGGGGGTTTTTTTTCCCCCCCC";
        dna2 <= "TTTTTTTTAAAAAAAACCCCCCCCTTTTTTTT";
        wait for 10 ns;
        
        
     
        
        
        
    end process;
end Behavioral;