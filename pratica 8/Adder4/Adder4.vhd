library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
 
entity Adder4 is
	Port ( x		: in STD_LOGIC_VECTOR (3 downto 0);
			 y 	: in STD_LOGIC_VECTOR (3 downto 0);
			 Cin 	: in STD_LOGIC;
			 s 	: out STD_LOGIC_VECTOR (3 downto 0);
			 Cout : out STD_LOGIC);
end Adder4;
 
architecture rtl of Adder4 is
 
 
component fulladder
	Port ( x : in STD_LOGIC;
			 y : in STD_LOGIC;
			 Cin : in STD_LOGIC;
			 s : out STD_LOGIC;
			 Cout : out STD_LOGIC);
end component;
 
 
signal c1,c2,c3: STD_LOGIC;
 
begin
 
FA1: fulladder port map( x(0), y(0), Cin, s(0), c1);
FA2: fulladder port map( x(1), y(1), c1, s(1), c2);
FA3: fulladder port map( x(2), y(2), c2, s(2), c3);
FA4: fulladder port map( x(3), y(3), c3, s(3), Cout);
 
end rtl;