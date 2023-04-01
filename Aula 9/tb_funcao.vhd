library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;


entity tb_funcao is
 generic(
		w: natural := 4
	 );
end tb_funcao;

architecture teste of tb_funcao is

component funcao is
generic(
		w: natural := 4
	 );
 port (
        clk : in std_logic;
		  x   : in    std_logic_vector((w-1) downto 0);
        y   : out   unsigned((w-1) downto 0)
		  		 );
end component;

signal X1 :  std_logic_vector((w-1) downto 0);
signal Y1 :  unsigned((w-1) downto 0);
signal CLK:  std_logic := '0';
begin
instancia_funcao: funcao port map(x=>X1,y=>Y1, clk=> CLK);
CLK <= not(CLK) after 2 ns;
X1 <= "0000", "0001" after 5 ns, "0000" after 9 ns, "1110" after 13 ns, "1010" after 17 ns; 
end teste;