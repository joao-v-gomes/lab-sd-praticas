library IEEE;
use IEEE.std_logic_1164.all;

entity tb_pseudo_mux_fsm is
end tb_pseudo_mux_fsm;

architecture teste of tb_pseudo_mux_fsm is
component pseudo_mux_fsm is
port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
 );
 end component;
 
 signal a,b,c,d,s,clock,reset,q : std_logic;
 
 begin
 
	clockprcss: process
		begin
			clock <= '0';
			wait for 1ns;
			clock <= '1';
			wait for 1ns;
		end process;
 
	instance_pseudo_mus_fsm: pseudo_mux_fsm 
		port map (
			RESET => reset,
			CLOCK => clock,
			S => s,
			Q => q,
			A => a,
			B => b,
			C => c,
			D => d
		);
		
reset <= '0', '1' after 45ns;

s <= '0', '1' after 5ns, '0' after 10ns, '1' after 15ns, '0' after 20ns, '1' after 25ns, '0' after 30ns, '1' after 35ns;  

 a <= '1';
 b <= '0';
 c <= '1';
 d <= '0';
 
		
 end teste;