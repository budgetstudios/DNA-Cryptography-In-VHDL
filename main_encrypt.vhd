----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:53 01/10/2023 
-- Design Name: 
-- Module Name:    main_encrypt - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main_encrypt is

    port (clk: in std_logic;
        password_in: in string (1 to 8);
        rule_in: in character ;
		  key_in: STD_LOGIC_VECTOR (3 downto 0);
        choose_encrypt: in character;
		  encrypted_dna : out string (1 to 32);
		  encrypted_ceaser : out string (1 to 8)
    );

end main_encrypt;

architecture Behavioral of main_encrypt is


  component dna_encryption is
    port (
        password: in string (1 to 8);
        rule: in character ;
        
		  encrypted_DNA : out string (1 to 32)
    );
  end component;
 component fullwordceaser is
 
    port (clk : in std_logic;
        password: in string (1 to 8);
        key: std_logic_vector(3 downto 0) ;
        
          encrypted_CEASER: out string (1 to 8)
    );


end  component;
signal encrypted_1 : string (1 to 32);
signal encrypted_2: string (1 to 8);
begin
dna_encryption_1 : entity work.dna_encryption
    port map (password_in,rule_in,encrypted_1);
fullwordceaser_1 : entity work.fullwordceaser
    port map (clk,password_in,key_in,encrypted_2);

process(choose_encrypt)
begin
case choose_encrypt is 
when '1' => 
encrypted_dna<=encrypted_1;
when  '2' => 
encrypted_ceaser <=encrypted_2;
	
end case;
end process;
end Behavioral;


