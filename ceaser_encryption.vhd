library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity fullwordceaser is
    port (clk : in std_logic;
        password: in string (1 to 8);
        key: std_logic_vector(3 downto 0) ;
        
          encrypted_CEASER: out string (1 to 8)
    );


end fullwordceaser;

architecture Behavioral of fullwordceaser is
component main is
    port (
        clk: in std_logic;
        message: character;
        key: in std_logic_vector(3 downto 0);
        encrypted_char: out character
    );
end component;

begin
 main_1: entity work.main
        port map (clk,password(1),key,encrypted_CEASER(1));
  main_2: entity work.main
        port map (clk,password(2),key,encrypted_CEASER(2));
 main_3: entity work.main
        port map (clk,password(3),key,encrypted_CEASER(3));

 main_4: entity work.main
        port map (clk,password(4),key,encrypted_CEASER(4));
 main_5: entity work.main
        port map (clk,password(5),key,encrypted_CEASER(5));
 main_6: entity work.main
        port map (clk,password(6),key,encrypted_CEASER(6));
 main_7: entity work.main
        port map (clk,password(7),key,encrypted_CEASER(7));
 main_8: entity work.main
        port map (clk,password(8),key,encrypted_CEASER(8));



end Behavioral;