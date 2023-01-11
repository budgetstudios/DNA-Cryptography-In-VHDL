library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity char_to_bin is
    port (
        char_in: in character;
        bin_out: out std_logic_vector(7 downto 0)
    );
end char_to_bin;

architecture behavioral of char_to_bin is
begin
    process(char_in)
    begin
        bin_out <= std_logic_vector(to_unsigned(character'pos(char_in), 8));
    end process;
end behavioral;