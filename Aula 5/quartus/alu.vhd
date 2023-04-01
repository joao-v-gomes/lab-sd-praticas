library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
    generic (
        W       :       integer := 3
    );
    port (
        control : in    std_logic_vector(3 downto 0);
        src1    : in    std_logic_vector(W - 1 downto 0);
        src2    : in    std_logic_vector(W - 1 downto 0);
        result  : out   std_logic_vector(W - 1 downto 0);
        zero    : out   std_logic
    );
end alu;


-- Define the architecture for this entity.
-- Consider the following operations to calculate the value or RESULT:
--      CONTROL             RESULT
--      0000                SRC1 and SRC2 
--      0001                SRC1 or SRC2
--      0010                SRC1 + SRC2
--      0110                SRC1 - SRC2
--      0111                SRC1 < SRC2 ? 1 : 0
--      1100                NOT( SRC1 or SRC2 )

-- Consider the following behavior for the ZERO output:
--  ZERO <= RESULT == 0 ? 1 : 0

architecture arch of alu is

signal r : std_logic_vector(W - 1 downto 0);

begin
	process(src1,src2,control)
		begin
			if (control = "0000") then
				r <= src1 and src2;
			elsif (control = "0001") then
				r <= src1 or src2;
			elsif (control = "0010") then
				r <= std_logic_vector(unsigned(src1) + unsigned(src2));
			elsif (control = "0110") then
				r <= std_logic_vector(unsigned(src1) - unsigned(src2));
			elsif (control = "0111") then
				if (src1 < src2) then
					r <= "111";
				else
					r <= "000";
				end if;
			elsif (control = "1100") then
				r <= not(src1 or src2);
			else 
				r <= "000";
			end if;
	end process;
	
	process(r)
		begin
			if (r = "000") then
				zero <= '1';
			else
				zero <= '0';
			end if;
	end process;
	
	result <= r;
	
end architecture;