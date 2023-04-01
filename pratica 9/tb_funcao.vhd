library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all ;


Entity tb_funcao is
end tb_funcao;
Architecture teste of tb_funcao is
	
component funcao is
	port ( x: in std_logic_vector (3 downto 0);
			 y: out std_logic_vector (3 downto 0));
			 end component;

	signal X: std_logic_vector (3 downto 0);
   signal Y: std_logic_vector (3 downto 0);
begin
fx: funcao port map (x=>X, y=>Y);
	x<= x"0", x"1" after 20ns, x"2" after 40ns, x"7" after 60ns;
end teste;
