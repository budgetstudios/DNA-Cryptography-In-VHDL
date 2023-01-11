library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity string_to_bin_tb is
end string_to_bin_tb;

architecture behavioral of string_to_bin_tb is
    component string_to_bin is
        port (
            string_in: in string(1 to 8);
            bin_out: out  std_logic_vector(63 downto 0)
        );
    end component;
    signal string_in: string(1 to 8) := (others => ' ');
    signal bin_out: std_logic_vector(63 downto 0);
begin
    uut: string_to_bin
        port map (
            string_in => string_in,
            bin_out => bin_out
        );

    -- Test cases
     process
    begin
        string_in <= "abcdefgh";
        wait for 10 ns;
       
        string_in <= "ABCDEFGH";
        wait for 10 ns;
        
        
    end process;
End;
