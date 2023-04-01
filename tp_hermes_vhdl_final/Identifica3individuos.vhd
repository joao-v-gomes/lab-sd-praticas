library IEEE;
use IEEE.std_logic_1164.all;

entity Identifica3Individuos is

    port(L1 : in std_logic_vector(4 downto 0);
			L2 : in std_logic_vector(4 downto 0);
			L3 : in std_logic_vector(4 downto 0);
			
			C_L1 : in std_logic_vector(4 downto 0);
			C_L2 : in std_logic_vector(4 downto 0);
			C_L3 : in std_logic_vector(4 downto 0);
			
			D1 : in std_logic_vector(3 downto 0);
			D2 : in std_logic_vector(3 downto 0);
			D3 : in std_logic_vector(3 downto 0);
			
			C_D1 : in std_logic_vector(3 downto 0);
			C_D2 : in std_logic_vector(3 downto 0);
			C_D3 : in std_logic_vector(3 downto 0);   
			
			Xa : out std_logic;
			Xb : out std_logic;
			Xc : out std_logic);
         
end Identifica3Individuos;

architecture Identifica3Individuos_logic of Identifica3Individuos is

COMPONENT IdentificaIndividuo
	PORT
	(
		L		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		C_L		:	 IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		D		:	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		C_D		:	 IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		X		:	 OUT STD_LOGIC
	);
END COMPONENT;

begin
	IdentXa : IdentificaIndividuo
		port map
		(
			L(0) => L1(0),
			L(1) => L1(1),
			L(2) => L1(2),
			L(3) => L1(3),
			L(4) => L1(4),
			
			C_L(0) => C_L1(0),
			C_L(1) => C_L1(1),
			C_L(2) => C_L1(2),
			C_L(3) => C_L1(3),
			C_L(4) => C_L1(4),
			
			D(0) => D1(0),
			D(1) => D1(1),
			D(2) => D1(2),
			D(3) => D1(3),
			
			C_D(0) => C_D1(0),
			C_D(1) => C_D1(1),
			C_D(2) => C_D1(2),
			C_D(3) => C_D1(3),
			
			X => Xa
			
		);
		
		IdentXb : IdentificaIndividuo
		port map
		(
			L(0) => L2(0),
			L(1) => L2(1),
			L(2) => L2(2),
			L(3) => L2(3),
			L(4) => L2(4),
			
			C_L(0) => C_L2(0),
			C_L(1) => C_L2(1),
			C_L(2) => C_L2(2),
			C_L(3) => C_L2(3),
			C_L(4) => C_L2(4),
			
			D(0) => D2(0),
			D(1) => D2(1),
			D(2) => D2(2),
			D(3) => D2(3),
			
			C_D(0) => C_D2(0),
			C_D(1) => C_D2(1),
			C_D(2) => C_D2(2),
			C_D(3) => C_D2(3),
			
			X => Xb
			
		);
		
		IdentXc : IdentificaIndividuo
		port map
		(
			L(0) => L3(0),
			L(1) => L3(1),
			L(2) => L3(2),
			L(3) => L3(3),
			L(4) => L3(4),
			
			C_L(0) => C_L3(0),
			C_L(1) => C_L3(1),
			C_L(2) => C_L3(2),
			C_L(3) => C_L3(3),
			C_L(4) => C_L3(4),
			
			D(0) => D3(0),
			D(1) => D3(1),
			D(2) => D3(2),
			D(3) => D3(3),
			
			C_D(0) => C_D3(0),
			C_D(1) => C_D3(1),
			C_D(2) => C_D3(2),
			C_D(3) => C_D3(3),
			
			X => Xc
			
		);
end Identifica3Individuos_logic;