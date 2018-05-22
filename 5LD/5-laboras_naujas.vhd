library ieee;
use ieee.std_logic_1164.all;
 
entity ARBA is
  port (
    A    : in  std_logic;
    B    : in  std_logic;
	C    : in  std_logic;
    F : out std_logic
    );
end ARBA;
 
architecture rtl of ARBA is
begin
process (A, B, C)
begin
 case A is
   when A = '0' and B = '0' and C = '1' => F <= '1';
   when A = '0' and B = '1' and C = '0' => F <= '0';
   when A = '0' and B = '1' and C = '1' => F <= '0';
   when A = '1' and B = '1' and C = '0' => F <= '1';
   when A = '1' and B = '0' and C = '1' => F <= '1';
   when A = '1' and B = '1' and C = '1' => F <= '1';
end process;  
end rtl;


 