library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity xor_dna is
    Port ( dna1 : in   string(1 to 32);
           dna2 : in  string(1 to 32);
           result : out  string(1 to 32) );
end xor_dna;

architecture Behavioral of xor_dna is
begin
    process(dna1, dna2)
    begin
        for i in 1 to 32 loop
            case dna1(i) is
                when 'C' =>
                    case dna2(i) is
                        when 'C' => result(i)  <= 'C';
                        when 'T' => result(i)  <= 'T';
                        when 'A' => result(i)  <= 'A';
                        when 'G' => result(i)  <= 'G';
                        when others =>
                            result(i) <= 'X';
                    end case;
                when 'T' =>
                    case dna2(i) is
                        when 'C' => result(i)  <= 'T';
                        when 'T' => result(i)  <= 'C';
                        when 'A' => result(i)  <= 'G';
                        when 'G' => result(i)  <= 'A';
                        when others =>
                            result(i) <= 'X';
                    end case;
                when 'A' =>
                    case dna2(i) is
                        when 'C' => result(i)  <= 'A';
                        when 'T' => result(i) <= 'G';
                        when 'A' => result(i) <= 'C';
                        when 'G' => result(i) <= 'T';
                        when others =>
                            result(i) <= 'X';
                    end case;
                when 'G' =>
                    case dna2(i) is
                        when 'C' => result(i) <= 'G';
                        when 'T' => result(i) <= 'A';
                        when 'A' => result(i) <= 'T';
                        when 'G' => result(i) <= 'C';
                        when others =>
                            result(i) <= 'X';
                    end case;
                when others =>
                    result(i) <= 'X';
            end case;
        end loop;
    end process;
end Behavioral;
