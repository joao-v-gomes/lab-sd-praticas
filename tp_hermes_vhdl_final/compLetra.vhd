library IEEE;
use IEEE.std_logic_1164.all;

entity compLetra is

    port(I1 : in std_logic;     
         I2 : in std_logic;     
			I3 : in std_logic;     
			I4 : in std_logic;      
			I5 : in std_logic;      
			
			C1 : in std_logic;     
			C2 : in std_logic;     
			C3 : in std_logic;      
			C4 : in std_logic;      
			C5 : in std_logic;     
			
         L : out std_logic);    

end compLetra;

architecture compLetra_logic of compLetra is

 begin
   process (I1,I2,I3,I4,I5,C1,C2,C3,C4,C5)
		begin
			--L1 <= '1';
			--L2 <= '0';
			--L3 <= '0';
			--L4 <= '0';
			--L5 <= '0';
			
			if (I1 = C1) AND (I2 = C2) AND (I3 = C3) AND (I4 = C4) AND (I5 = C5) THEN
				L <= '1';
			ELSE
				L <= '0';
			end if;
		end process;

end compLetra_logic; 

