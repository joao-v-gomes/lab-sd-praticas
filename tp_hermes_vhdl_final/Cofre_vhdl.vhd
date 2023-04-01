library IEEE;
use IEEE.std_logic_1164.all;

entity Cofre_vhdl is

    port(
			-- Entradas para a Identificacao dos Individuos
			L1 : in std_logic_vector(4 downto 0);
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
			
			--Xa : out std_logic;
			--Xb : out std_logic;
			--Xc : out std_logic;
			
			-- Entradas da FSM do Cofre
			Xt : in std_logic;
			Clock: in std_logic;
			Reset : in std_logic;
			--TImer3s : in std_logic;
			
			-- Saidas da FSM do Cofre
			Led_Vermelho : out std_logic;
			Led_Amarelo : out std_logic;
			Led_Verde : out std_logic;
			
			Cofre : out std_logic);

end Cofre_vhdl;

architecture Cofre_logic of Cofre_vhdl is
	
COMPONENT Identifica3Individuos
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
		Xa		:	 OUT STD_LOGIC;
		Xb		:	 OUT STD_LOGIC;
		Xc		:	 OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT contador_mod3
	PORT
	(
		x		:	 IN STD_LOGIC;
		clk		:	 IN STD_LOGIC;
		clear		:	 IN STD_LOGIC;
		Z		:	 OUT NATURAL RANGE 0 TO 3
	);
END COMPONENT;

	type statetype is ( INIT, A, B, C) ;
	signal state, nextstate : statetype := INIT;
	signal Xa_comp, Xb_comp, Xc_comp : std_logic;
	signal Timer3s : NATURAL RANGE 0 TO 3;

begin
	contador3s: contador_mod3
	port map 
	(
		X => Xt,
		clk => Clock,
		clear => Reset,
		Z => Timer3s
	);

	Ident3indv : Identifica3Individuos
		port map
		(
			L1(0) => L1(0),
			L1(1) => L1(1),
			L1(2) => L1(2),
			L1(3) => L1(3),
			L1(4) => L1(4),
			
			C_L1(0) => C_L1(0),
			C_L1(1) => C_L1(1),
			C_L1(2) => C_L1(2),
			C_L1(3) => C_L1(3),
			C_L1(4) => C_L1(4),
			
			D1(0) => D1(0),
			D1(1) => D1(1),
			D1(2) => D1(2),
			D1(3) => D1(3),
			
			C_D1(0) => C_D1(0),
			C_D1(1) => C_D1(1),
			C_D1(2) => C_D1(2),
			C_D1(3) => C_D1(3),
			
			L2(0) => L2(0),
			L2(1) => L2(1),
			L2(2) => L2(2),
			L2(3) => L2(3),
			L2(4) => L2(4),
			
			C_L2(0) => C_L2(0),
			C_L2(1) => C_L2(1),
			C_L2(2) => C_L2(2),
			C_L2(3) => C_L2(3),
			C_L2(4) => C_L2(4),
			
			D2(0) => D2(0),
			D2(1) => D2(1),
			D2(2) => D2(2),
			D2(3) => D2(3),
			
			C_D2(0) => C_D2(0),
			C_D2(1) => C_D2(1),
			C_D2(2) => C_D2(2),
			C_D2(3) => C_D2(3),
			
			L3(0) => L3(0),
			L3(1) => L3(1),
			L3(2) => L3(2),
			L3(3) => L3(3),
			L3(4) => L3(4),
			
			C_L3(0) => C_L3(0),
			C_L3(1) => C_L3(1),
			C_L3(2) => C_L3(2),
			C_L3(3) => C_L3(3),
			C_L3(4) => C_L3(4),
			
			D3(0) => D3(0),
			D3(1) => D3(1),
			D3(2) => D3(2),
			D3(3) => D3(3),
			
			C_D3(0) => C_D3(0),
			C_D3(1) => C_D3(1),
			C_D3(2) => C_D3(2),
			C_D3(3) => C_D3(3),
			
			Xa => Xa_comp,
			Xb => Xb_comp,
			Xc => Xc_comp
			
		);
	

	statemachine_seq :process(Clock, Reset)
		begin
			if ( Reset = '1' ) then
				state <= INIT;
			elsif (rising_edge(Clock)) then
				state <= nextstate;
			end if;
	end process;
		
	statemachine_comb: process( Xa_comp, Xb_comp, Xc_comp, Timer3s, state )
			begin
					LED_Vermelho <= '0';
					LED_Amarelo <= '0';
					LED_Verde <= '0';
					Cofre <= '0';
					
					case state is
						when INIT =>
							
							IF (Xa_comp = '0' or Xb_comp = '1' or Xc_comp = '1') THEN
								nextstate <= INIT;
							elsif (Xa_comp = '1' and Xb_comp = '0' and Xc_comp = '0') THEN
								nextstate <= A;
							end if;
							
						when A =>
							LED_Vermelho <= '1';
							
							IF (Xa_comp = '0') then
								nextstate <= INIT;
							elsif (Xa_comp = '1' and Xb_comp = '0' and Xc_comp = '0') THEN
								nextstate <= A;
							elsif (Xa_comp = '1' and Xb_comp = '1' and Xc_comp = '0') THEN
								nextstate <= B;
							end if;
						when B =>
							LED_Vermelho <= '1';
							LED_Amarelo <= '1';
							
							IF (Xa_comp = '0' or Xb_comp = '0') then
								nextstate <= INIT;
							elsif (Xa_comp = '1' and Xb_comp = '1' and Xc_comp = '0') THEN
								nextstate <= B;
							elsif Xa_comp = '1' and Xb_comp = '1' and Xc_comp = '1' then
								nextstate <= C;
							end if;
						when C =>
							LED_Vermelho <= '1';
							LED_Amarelo <= '1';
							LED_Verde <= '1';
							Cofre <= '1';
							
							IF (Xa_comp = '1' and Xb_comp = '1' and Xc_comp = '1' and Timer3s = 3) THEN
								nextstate <= C;
							elsif (Xa_comp = '0' or Xb_comp = '0' or Xc_comp = '0' or Timer3s = 3) then
								nextstate <= INIT;
							end if;
					end case;
			end process;
end Cofre_logic;