

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Entity declaration
entity dna_encryption is
    port (
        password: in string (1 to 8);
        rule: in character ;
        
		  encrypted_DNA : out string (1 to 32)
    );
end entity dna_encryption;

-- Architecture declaration
architecture behavioral of dna_encryption is
    -- Declare component instances here
    component reverse is
        port(
            binary_in : in std_logic_vector(63 downto 0);
            binary_out : out std_logic_vector(63 downto 0)
        );
    end component;
    component string_to_bin is
        port (
            string_in: in string(1 to 8);
            bin_out: out std_logic_vector(63 downto 0)
        );
    end component;
    component bin_to_nuc is
        port (
            bin_in: in std_logic_vector(7 downto 0);
            rule: in character;
            nuc_out: out string (1 to 4)
        );
    end component;
    component xor_dna is
        port (
           dna1 : in   string(1 to 32);
           dna2 : in  string(1 to 32);
           result : out  string(1 to 32) 
        );
    end component;
signal bin_pass,key : std_logic_vector(63 downto 0);
signal pass_nuc,key_nuc: string(1 to 32);
begin

    -- Instantiate component instances and connect them together here
    
    str_to_bin: entity work.string_to_bin
        port map (password,bin_pass);
	 key_gen: entity work.reverse
        port map (bin_pass,key);
    bin_to_nuc_1: entity work.bin_to_nuc
        port map (bin_pass,rule,pass_nuc);
	 bin_to_nuc_2: entity work.bin_to_nuc
        port map ( key,rule,key_nuc );
      --encrypted_2<=key_nuc;
		--encrypted_1<=pass_nuc;
   
    -- Connect additional component instances here
    xor_dna_1: entity work.xor_dna
        port map (pass_nuc,key_nuc,encrypted_DNA);
end architecture;