library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Entity declaration for the test bench
entity reverse_tb is
end entity;

-- Architecture declaration for the test bench
architecture behavioral of reverse_tb is
    -- Declare stimulus signals
    signal binary_in : std_logic_vector(63 downto 0) := (others => '0');
    signal binary_out : std_logic_vector(63 downto 0);

    -- Instantiate the component under test (CUT)
    component reverse is
        port(
            binary_in : in std_logic_vector(63 downto 0);
            binary_out : out std_logic_vector(63 downto 0)
        );
    end component;

begin
    -- Connect the stimulus signals to the CUT
    uut: entity work.reverse
        port map (
            binary_in => binary_in,
            binary_out => binary_out
        );

   
 process
begin
    -- Set initial values for stimulus signals
    binary_in <= "0000101011110011000010101111001100001010111100110000101011110011";

    -- Wait for 100 ns to allow the CUT to stabilize
    wait for 100 ns;

    -- Assertions to check the output of the CUT
    assert binary_out = "1100001010111100110000101011110011000010101111001100001010111000"
        report "Incorrect output"
        severity error;

    -- Wait for 100 ns before ending the test
    wait for 100 ns;
end process;
End;