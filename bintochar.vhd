library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

entity bin_to_char is
    port (
        bin_in: in std_logic_vector(7 downto 0);
        char_out: out character
    );
end bin_to_char;

architecture behavioral of bin_to_char is
begin
    process(bin_in)
    begin
        char_out <= character'val(to_integer(signed(bin_in)));
    end process;
end behavioral;