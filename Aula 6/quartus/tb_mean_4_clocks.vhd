library IEEE;
use IEEE.std_logic_1164.all;

entity tb_mean_4_clocks is
end tb_mean_4_clocks;

architecture teste of tb_mean_4_clocks is

component mean_4_clocks is
port (

		CLK     : in    std_logic;
	  RESET   : in    std_logic;
	  INPUT   : in    std_logic_vector(3 downto 0);
	  OUTPUT  : out   std_logic_vector(3 downto 0)
);

end component;

signal input,output : std_logic_vector(3 downto 0);
signal clk, reset : std_logic;

begin 
	instance_mean_4_clocks: mean_4_clocks port map(
	
			INPUT => input,
			OUTPUT => output,
			CLK => clk,
			RESET => reset
	
	);

	clk <= '0', '1' after 5ns, '0' after 10ns, '1' after 15ns, '0' after 20ns, '1' after 25ns, '0' after 30ns, '1' after 35ns, '0' after 40ns;
	
	input <= "0000", "0100" after 3ns, "0100" after 8ns, "0100" after 13ns, "0100" after 18ns;
	
	reset <= '1', '0' after 1ns, '1' after 45ns;
	
	
end teste;
