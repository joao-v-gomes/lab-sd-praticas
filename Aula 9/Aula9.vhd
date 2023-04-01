library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity Aula9 is
   generic (
			r : integer := 2);	
	port (
			x: in std_logic_vector(3 downto 0);
			f: out std_logic_vector(3 downto 0));
end Aula9;

architecture one of Aula9 is
	signal y : std_logic_vector(11 downto 0);
begin

	y <= (std_logic_vector(to_unsigned(r, 4)) * x * NOT x);
	f <= y(3 downto 0);
	end one;