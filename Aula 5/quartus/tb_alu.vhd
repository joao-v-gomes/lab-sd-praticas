library IEEE;
use IEEE.std_logic_1164.all;

entity tb_alu is
end tb_alu;

architecture teste of tb_alu is

component  alu is
port (
		control : in    std_logic_vector(3 downto 0);
	  src1    : in    std_logic_vector(2 downto 0);
	  src2    : in    std_logic_vector(2 downto 0);
	  result  : out   std_logic_vector(2 downto 0);
	  zero    : out   std_logic

);
end component;

signal src_1, src_2, res : std_logic_vector(2 downto 0);
signal ctrl : std_logic_vector(3 downto 0);
signal z : std_logic;

begin
	instance_alu: alu port map (
				src1 => src_1,
				src2 => src_2,
				result => res,
				control => ctrl,
				zero => z
	);
	
	-- and
	-- or
	-- +
	-- -
	-- 1 < 2
	-- not or
	
	ctrl <= "0000", "0001" after 5ns, "0010" after 20ns, "0110" after 35ns, "0111" after 50ns, "1100" after 65ns;
	
	src_1 <= "000", "001" after 10ns, "010" after 25ns, "110" after 40ns; 
	
	src_2 <= "001", "010" after 15ns, "001" after 30ns, "100" after 45ns;
	
end teste;