library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_FlipFlopD is
end tb_FlipFlopD;

architecture teste of tb_Aula8 is

component FlipFlopD is
	port( clock: in std_logic;
		  D: in std_logic;
	      Q: out std_logic
	    );
end component;


signal D,Q: std_logic;
signal clock : std_logic := '0';
constant clk_period : time := 2 ns;

begin

instancia_FlipFlopD: FlipFlopD port map(clock=>clock,D=>D,Q=>Q);
clk_process :process
   begin
        clock <= '0';
        wait for clk_period/2;  --for 0.5 ns signal is '0'.
        clock <= '1';
        wait for clk_period/2;  --for next 0.5 ns signal is '1'.
   end process;

D <= '0', '1' after 3 ns, '0' after 5 ns, '1' after 7 ns;
end FlipFlopD;