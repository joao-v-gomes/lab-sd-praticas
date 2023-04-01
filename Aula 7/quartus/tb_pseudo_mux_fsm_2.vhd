library IEEE;
use IEEE.std_logic_1164.all;

entity pseudo_mux_fsm_2 is
end pseudo_mux_fsm_2;

architecture teste of pseudo_mux_fsm_2 is
component pseudo_mux_fsm_2 is
port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q,flags       : out   std_logic  -- data output
 );
 end component;
 
 signal a,b,c,d,s,clock,reset,q,flags : std_logic;
 
 begin
 
	clockprcss: process
		begin
			clock <= '0';
			wait for 5ns;
			clock <= '1';
			wait for 5ns;
		end process;
 
	instance_pseudo_mus_fsm_2: pseudo_mux_fsm_2 
		port map (
			RESET => reset,
			CLOCK => clock,
			S => s,
			Q => q,
			A => a,
			B => b,
			C => c,
			D => d,
			flags => flags
		);
		
reset <= '0', '1' after 45ns;

s <= '0', '1' after 10ns, '0' after 20ns, '1' after 30ns, '0' after 40ns;
--, '1' after 25ns, '0' after 30ns, '1' after 35ns;  

 a <= '1';
 b <= '0';
 c <= '1';
 d <= '0';
 
		
 end teste;