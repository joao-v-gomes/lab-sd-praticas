library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all ;


Entity funcao is
GENERIC ( 
				r : natural:= 2 
) ;
	
	port (
				x: in std_logic_vector (3 downto 0);
				y: out std_logic_vector (3 downto 0));
end funcao;

Architecture behavorial of funcao is
	signal resultado: std_logic_vector (11 downto 0);

begin
	resultado <= (std_logic_vector(to_unsigned(r,4))* x * not x);
end behavorial;
