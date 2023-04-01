library IEEE;
use IEEE.std_logic_1164.all;

entity compDigito is

    port(I1 : in std_logic;      
         I2 : in std_logic;      
			I3 : in std_logic;      
			I4 : in std_logic;      			
			C1 : in std_logic;      
			C2 : in std_logic;      
			C3 : in std_logic;      
			C4 : in std_logic;      
			
         D : out std_logic);    

end compDigito;

architecture compDigito_logic of compDigito is

 begin
   process (I1,I2,I3,I4,C1,C2,C3,C4)
		begin
			--L1 <= '1';
			--L2 <= '0';
			--L3 <= '0';
			--L4 <= '0';
			--L5 <= '0';
			
			if (I1 = C1) AND (I2 = C2) AND (I3 = C3) AND (I4 = C4) THEN
				D <= '1';
			ELSE
				D <= '0';
			end if;
		end process;

end compDigito_logic; 