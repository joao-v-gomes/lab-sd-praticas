library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_comparador is
end tb_comparador;

architecture teste of tb_comparador is

component comparador is
port (
		a	   : in unsigned  (3 downto 0);
		b	   : in unsigned  (3 downto 0);
		resultMaior : out std_logic;
		resultMenor : out std_logic;
		resultIgual : out std_logic

);
end component;

signal A,B : unsigned (3 downto 0);
signal Rmaior, Rmenor, Rigual : std_logic;

begin
	instance_comparador: comparador port map(a =>A,b =>B, resultMaior => Rmaior, resultMenor => Rmenor, resultIgual => Rigual);
	
	A <= "0001", "0000" after 10ns, "1111" after 30ns;
	B <= "0001", "1000" after 20ns, "1111" after 40ns;
end teste;