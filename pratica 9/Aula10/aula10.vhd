library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aula10 is
	 generic(
		w: natural := 4
	 );
    port (
		  x   : in   std_logic_vector((w-1) downto 0);

        y   : out  std_logic_vector((w-1) downto 0) -- unsigned(w-1 downto 0)
    );
end aula10;                            


architecture funcao of aula10 is
--signal a : unsigned ((w-1) downto 0);
--signal f : unsigned ((3*w)-1 downto 0);
--signal result : unsigned (2*w-1 downto 0);
signal result : std_logic_vector(2*w-1 downto 0);
begin
     --a <= unsigned(not(x));
	  --f <= a * unsigned(x) * "0010";
	  --result<= f(3 downto 0);
	  --y <= result;
			--result <= shift_left(unsigned(not(x))*unsigned(x),1);
		result <= std_logic_vector(shift_left(unsigned(not(x))*unsigned(x),1));
		y <= result(3 downto 0);
end funcao;