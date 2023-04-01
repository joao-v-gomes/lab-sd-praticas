library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparador is

	generic
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		a	   : in unsigned  ((DATA_WIDTH-1) downto 0);
		b	   : in unsigned  ((DATA_WIDTH-1) downto 0);
		resultMaior : out std_logic;
		resultMenor : out std_logic;
		resultIgual : out std_logic
	);

end entity;

architecture rtl of comparador is
begin
	process(a,b)
		begin
			resultMaior <= '0';
			resultMenor <= '0';
			resultIgual <= '0';
			
			if (A > B) then
				--result <= x"2";
				resultMaior <= '1';
			elsif (A < B) then
				--result <= x"1";
				resultMenor <= '1';
			else
				--result <= x"3";
				resultIgual <= '1';
			end if;
	end process;
end rtl;
