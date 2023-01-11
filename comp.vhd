library ieee;
use ieee.std_logic_1164.all;


entity reverse is
    port(
        binary_in : in std_logic_vector(63 downto 0);
        binary_out : out std_logic_vector(63 downto 0)
    );
end reverse;


architecture behavioral of reverse is
begin
    -- Iterate 
    process(binary_in)
    begin
        for i in 0 to 63 loop
            binary_out(i) <= binary_in(63-i);
        end loop;
    end process;
end architecture;