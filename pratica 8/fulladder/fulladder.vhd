LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fulladder is
    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
end fulladder;
architecture RTL OF fulladder is
signal tmp: std_logic_vector(1 downto 0);
begin
	process(x,y,Cin)
	begin
		if(x='0' and y ='1' and Cin = '1') or 
		  (x='1' and y ='0' and Cin = '1') or
		  (x='1' and y ='1' and Cin = '0') or 
		  (x='1' and y ='1' and Cin = '1') 
		then Cout <= '1';
else
Cout <= '0';
end if;
		if (x='0' and y ='0' and Cin = '1') or 
			(x='0' and y ='1' and Cin = '0') or
			(x='1' and y ='0' and Cin = '0') or 
			(x='1' and y ='1' and Cin = '1') 
		then s <= '1';
else
	 s <= '0';
	 
	end if;
   end process;
  
end RTL;