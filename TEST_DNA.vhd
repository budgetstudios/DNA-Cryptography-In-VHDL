-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
  component dna_encryption is
    port (
        password: in string (1 to 8);
        rule: in character ;
		   --encrypted_DNA_1 : out string (1 to 32);
		   --encrypted_DNA_2: out string (1 to 32);
			encrypted_DNA: out string (1 to 32)
    );
end component ;

          SIGNAL password:  string (1 to 8);
           signal rule: character ;
			  --signal encrypted_DNA_1:  string (1 to 32);
			  --signal encrypted_DNA_2 :  string (1 to 32);
           signal encrypted_DNA :  string (1 to 32);

  BEGIN

  -- Component  Instantiation
          uut: dna_encryption PORT MAP(
                  password => password,
						rule=> rule,
						--encrypted_DNA_1 => encrypted_DNA_1,
                  --encrypted_DNA_2 => encrypted_DNA_2,
						encrypted_DNA => encrypted_DNA
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
      password <="aaaaaaaa";
		rule<='7';
		wait for 10 ns;
      

      
     END PROCESS tb;
   

  END;
