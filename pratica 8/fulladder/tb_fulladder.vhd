LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity tb_fulladder is
end tb_fulladder;
 
ARCHITECTURE teste OF tb_fulladder IS
 

 COMPONENT fulladder is
 PORT(
			x   : IN std_logic;
			y   : IN std_logic;
			Cin : IN std_logic;
			s   : OUT std_logic;
			Cout: OUT std_logic
 );
 END COMPONENT;
 
 signal a : std_logic;
 signal b : std_logic;
 signal Ce : std_logic;
 
 signal ss : std_logic;
 signal Cs : std_logic;
 
BEGIN
 

 instance_fulladder: fulladder PORT MAP (
			x => a,
			y => b,
			Cin => Ce,
			s => ss,
			Cout => Cs
 );
 


a  <= '0', '0' after 5ns ,'1' after 10ns, '1' after 15ns, '0' after 20ns ,'0' after 25ns, '1' after 30ns, '1' after 35ns;
b   <= '0', '1' after 5ns ,'0' after 10ns, '1' after 15ns, '0' after 20ns ,'1' after 25ns, '0' after 30ns, '1' after 35ns;
Ce <= '0', '0' after 5ns ,'0' after 10ns, '0' after 15ns, '1' after 20ns ,'1' after 25ns, '1' after 30ns, '1' after 35ns;

 


end teste;