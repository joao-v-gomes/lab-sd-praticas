library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mean_4_clocks is
    generic (
        W       :       integer := 4
    );
    port (
        CLK     : in    std_logic;
        RESET   : in    std_logic;
        INPUT   : in    std_logic_vector(W - 1 downto 0);
        OUTPUT  : out   std_logic_vector(W - 1 downto 0)
    );
end mean_4_clocks;

-- Implement the testbench and find the errors in this model.
-- Consider the following expected behavior:
--      Every rising edge of CLK input, the content of INPUT
--      is added to a register chain and used to calculate the
--      mean value over 4 clock periods

architecture arch of mean_4_clocks is
begin	
    process(CLK, RESET) is
        variable var1 : unsigned(W - 1 downto 0);
        variable var2 : unsigned(W - 1 downto 0);
        variable var3 : unsigned(W - 1 downto 0);
        variable var4 : unsigned(W - 1 downto 0);
		  variable sum_2 : unsigned(W - 1 downto 0);
		  
			
    begin
		OUTPUT <= "0000";
        if (RESET = '1') then
            var1 := to_unsigned(0,W);
            var2 := to_unsigned(0,W);
            var3 := to_unsigned(0,W);
            var4 := to_unsigned(0,W);
				sum_2 := to_unsigned(0,W);
        elsif (rising_edge(CLK)) then
				var4 := var3;
				var3 := var2;
				var2 := var1;
            var1 := unsigned("0" & INPUT(W-1 downto 1));
--            var2 := var1;
--            var3 := var2;
--            var4 := var3;
        end if;
		  
		  sum_2 := (var1 + var2 + var3 + var4);
		  
		  
		 OUTPUT <= std_logic_vector("0" & sum_2(W-1 downto 1));
		 
    end process;
    
end arch;