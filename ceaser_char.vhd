library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity main is
    port (
        clk: in std_logic;
        message: character;
        key: in std_logic_vector(3 downto 0);
        encrypted_char: out character
    );
end main;

architecture behavioral of main is
component bin_to_char is
    port (
        bin_in: in std_logic_vector(7 downto 0);
        char_out: out std_logic_vector(7 downto 0)
    );
end component;
component  Caesar_cipher is
    Port ( clk : in  STD_LOGIC;
           message : in  STD_LOGIC_VECTOR (7 downto 0);
           key : in  STD_LOGIC_VECTOR (3 downto 0);
           encrypted : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
component  char_to_bin is
    port (
        char_in: in character;
        bin_out: out std_logic_vector(7 downto 0)
    );
end component;

    signal  message_bin: std_logic_vector(7 downto 0);
    signal encrypted_bin: std_logic_vector(7 downto 0);
begin
    -- Convert message from  ASCII to binary
    bin_to_char_inst: entity work.bin_to_char
        port map (
            encrypted_bin,
            encrypted_char
                
        );

    -- Encrypt message using Caesar cipher
    Caesar_cipher_inst: entity work.Caesar_cipher
        port map (
             clk,
             message_bin,
             key,
             encrypted_bin
        );

    -- Convert encrypted message back to ASCII
    char_to_bin_inst: entity work.char_to_bin
        port map (
          message,
             message_bin
        );
end behavioral;