library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Caesar_cipher is
    Port ( clk : in  STD_LOGIC;
           message : in  STD_LOGIC_VECTOR (7 downto 0);
           key : in  STD_LOGIC_VECTOR (3 downto 0);
           encrypted : out  STD_LOGIC_VECTOR (7 downto 0));
end Caesar_cipher;

architecture Behavioral of Caesar_cipher is
begin
    process (clk)
    begin
        if rising_edge(clk) then
            encrypted <= std_logic_vector(unsigned(message) + unsigned(key));
        end if;
    end process;
end Behavioral;
