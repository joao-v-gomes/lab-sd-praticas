library IEEE;
use IEEE.std_logic_1164.all;

entity IdentificaIndividuo is

    port(L : in std_logic_vector(4 downto 0);      
			C_L: in std_logic_vector(4 downto 0);
			D : in std_logic_vector(3 downto 0);      
			C_D : in std_logic_vector(3 downto 0);
			
			
			--S_L : buffer std_logic;    
			--S_D : buffer std_logic;    
			
			X : out std_logic);    
         


end IdentificaIndividuo;

architecture IdentificaIndividuo_logic of IdentificaIndividuo is
signal S_L , S_D: std_logic;
COMPONENT compDigito
	PORT
	(
		I1		:	 IN STD_LOGIC;
		I2		:	 IN STD_LOGIC;
		I3		:	 IN STD_LOGIC;
		I4		:	 IN STD_LOGIC;
		C1		:	 IN STD_LOGIC;
		C2		:	 IN STD_LOGIC;
		C3		:	 IN STD_LOGIC;
		C4		:	 IN STD_LOGIC;
		D		:	 OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT compLetra
	PORT
	(
		I1		:	 IN STD_LOGIC;
		I2		:	 IN STD_LOGIC;
		I3		:	 IN STD_LOGIC;
		I4		:	 IN STD_LOGIC;
		I5		:	 IN STD_LOGIC;
		C1		:	 IN STD_LOGIC;
		C2		:	 IN STD_LOGIC;
		C3		:	 IN STD_LOGIC;
		C4		:	 IN STD_LOGIC;
		C5		:	 IN STD_LOGIC;
		L		:	 OUT STD_LOGIC
	);
END COMPONENT;

begin
	Letra: compLetra 
	port map
	(
		I1 => L(0),
		I2 => L(1),
		I3 => L(2),
		I4 => L(3),
		I5 => L(4),
		
		C1 => C_L(0),
		C2 => C_L(1),
		C3 => C_L(2),
		C4 => C_L(3),
		C5 => C_L(4),
		
		L => S_L
	
	);
	
	Digito: compDigito
	port map
	(
		I1 => D(0),
		I2 => D(1),
		I3 => D(2),
		I4 => D(3),
		
		C1 => C_D(0),
		C2 => C_D(1),
		C3 => C_D(2),
		C4 => C_D(3),
		
		D => S_D
	);
		
	x <= S_L AND S_D;
	
		
end IdentificaIndividuo_logic;
	