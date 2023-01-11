library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity string_to_bin is
    port (
        string_in: in string(1 to 8);
        bin_out: out std_logic_vector(63 downto 0)
    );
end string_to_bin;

architecture behavioral of string_to_bin is
begin
    process(string_in)
    begin
        bin_out <= (others => '0');
        for i in 0 to 7 loop
            bin_out(8*(7-i) + 7 downto 8*(7-i)) <= std_logic_vector(to_unsigned(character'pos(string_in(i+1)), 8));
        end loop;
    end process;
end behavioral;
