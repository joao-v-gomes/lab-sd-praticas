library ieee;
use ieee. std_logic_1164.all;

entity testeBench_cofre is

end entity;

architecture testeBench_cofre_logic of testeBench_cofre is
	
COMPONENT Cofre_vhdl
	PORT
	(
		L1		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		L2		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		L3		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		C_L1		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		C_L2		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		C_L3		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		D1		:	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		D2		:	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		D3		:	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		C_D1		:	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		C_D2		:	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		C_D3		:	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		Xt		:	 IN STD_LOGIC;
		Clock		:	 IN STD_LOGIC;
		Reset		:	 IN STD_LOGIC;
		Led_Vermelho		:	 OUT STD_LOGIC;
		Led_Amarelo		:	 OUT STD_LOGIC;
		Led_Verde		:	 OUT STD_LOGIC;
		Cofre		:	 OUT STD_LOGIC
	);
END COMPONENT;
signal l1, l2, l3, c_l1, c_l2, c_l3 : std_logic_vector (4 downto 0);
signal d1, d2, d3, c_d1, c_d2, c_d3 : std_logic_vector (3 downto 0); 
signal xt, clock, reset : std_logic :='0';
signal led_vermelho, led_amarelo, led_verde, cofre : std_logic;

	begin
	
		cofre_tp: Cofre_vhdl
		port map
		(
			L1 => l1,
			L2 => l2,
			L3 => l3,
			
			D1 => d1,
			D2 => d2,
			D3 => d3,
			
			C_L1 => c_l1,
			C_L2 => c_l2,
			C_L3 => c_l3,
			
			C_D1 => c_d1,
			C_D2 => c_d2,
			C_D3 => c_d3,
			
			Xt => xt,
			Clock => clock,
			Reset => reset,
			
			Led_Vermelho => led_vermelho,
			Led_Amarelo => led_amarelo,
			Led_Verde => led_verde, 
			Cofre => cofre
						
		);
		
		-- Entradas hardwired
		-- Identifica o Daniel com o final 4
		c_l1 <= "00100"; --D
		c_d1 <= "0100";	--4
		
		-- Identifica o Joao com o final 0
		c_l2 <= "01010"; --J
		c_d2 <= "0000"; --0
		
		-- Identifica a Marcelle com o final 6
		c_l3 <= "01101"; --M
		c_d3 <= "0110"; --6
		
		-- Sinal do clock 10MHz
		clock <= not (clock) after 4 ns;
		
		-- Sinal do clock Xt
		xt <= not (xt) after 6 ns;
		
		-- Entradas dos Individuos
		l1 <= "00000","00100" after 15 ns, "00000" after 100 ns ;
		d1 <= "0000","0100" after 15 ns, "0000" after 100 ns;
		
		l2 <= "00000","01010" after 30 ns, "00000" after 100 ns;
		d2 <= "0000","0000" after 30 ns, "0000" after 100 ns;
		
		l3 <= "00000","01101" after 45 ns, "00000" after 100 ns;
		d3 <= "0000","0110" after 45 ns, "0000" after 100 ns;
		
	
end testeBench_cofre_logic;