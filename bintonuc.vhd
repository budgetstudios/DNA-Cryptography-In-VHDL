library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity bin_to_nuc is
    port (
        bin_in: in std_logic_vector(63 downto 0);
        rule: in character;
        nuc_out: out string (1 to 32)
    );
end bin_to_nuc;

architecture behavioral of bin_to_nuc is
begin
    process(bin_in, rule)
    begin
        for i in 0 to 31 loop
            nuc_out(i+1) <= 'X';
            case rule is
                when '1' => 
                    case bin_in(2*i+1 downto 2*i) is
                        when "00" => nuc_out(i+1) <= 'A';
                        when "01" => nuc_out(i+1) <= 'C';
                        when "10" => nuc_out(i+1) <= 'G';
                        when "11" => nuc_out(i+1) <= 'T';
								when others =>
                    nuc_out(i+1) <= 'X';
								
                    end case;
                when '2' => 
                    case bin_in(2*i+1 downto 2*i) is
                        when "00" => nuc_out(i+1) <= 'A';
                        when "01" => nuc_out(i+1) <= 'G';
                        when "10" => nuc_out(i+1) <= 'C';
                        when "11" => nuc_out(i+1) <= 'T';
								when others =>
                    nuc_out(i+1) <= 'X';
                    end case;
                when '3' => 
                    case bin_in(2*i+1 downto 2*i) is
                        when "00" => nuc_out(i+1) <= 'G';
                        when "01" => nuc_out(i+1) <= 'A';
                        when "10" => nuc_out(i+1) <= 'T';
                        when "11" => nuc_out(i+1) <= 'C';
								when others =>
                    nuc_out(i+1) <= 'X';
                    end case;
                when '4'=> 
                    case bin_in(2*i+1 downto 2*i) is
                        when "00" => nuc_out(i+1) <= 'G';
                        when "01" => nuc_out(i+1) <= 'T';
                        when "10" => nuc_out(i+1) <= 'A';
                        when "11" => nuc_out(i+1) <= 'C';
								when others =>
                    nuc_out(i+1) <= 'X';
                    end case;
                when '5' => 
                    case bin_in(2*i+1 downto 2*i) is
                        when "00" => nuc_out(i+1) <= 'T';
                        when "01" => nuc_out(i+1) <= 'C';
                        when "10" => nuc_out(i+1) <= 'G';
                        when "11" => nuc_out(i+1) <= 'A';
								when others =>
                    nuc_out(i+1) <= 'X';
                    end case;
                when '6' => 
                    case bin_in(2*i+1 downto 2*i) is
                        when "00" => nuc_out(i+1) <= 'T';
                        when "01" => nuc_out(i+1) <= 'G';
                        when "10" => nuc_out(i+1) <= 'C';
                        when "11" => nuc_out(i+1) <= 'A';
								when others =>
                    nuc_out(i+1) <= 'X';
                    end case;
						   when '7' => 
                    case bin_in(2*i+1 downto 2*i) is
                        when "00" => nuc_out(i+1) <= 'C';
                        when "01" => nuc_out(i+1) <= 'A';
                        when "10" => nuc_out(i+1) <= 'T';
                        when "11" => nuc_out(i+1) <= 'G';
								when others =>
                    nuc_out(i+1) <= 'X';
                    end case;
						  when '8' => 
                    case bin_in(2*i+1 downto 2*i) is
                        when "00" => nuc_out(i+1) <= 'C';
                        when "01" => nuc_out(i+1) <= 'T';
                        when "10" => nuc_out(i+1) <= 'A';
                        when "11" => nuc_out(i+1) <= 'G';
								when others =>
                    nuc_out(i+1) <= 'X';
                   end case;
						 when others =>
                    nuc_out(i+1) <= 'X';
	end case;
   end loop;	
	end process;
	end behavioral;
