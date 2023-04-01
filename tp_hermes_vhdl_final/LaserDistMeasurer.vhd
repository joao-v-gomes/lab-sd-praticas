library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith. all;

entity LaserDistMeasurer is
	port 
	( 
		clk, rst : in std_logic;
		B, S: in std_logic;
		L: out std_logic;
		D: out unsigned( 15 downto 0)
	) ;
	
end LaserDistMeasurer;

architecture behavior of LaserDistMeasurer is
	type statetype is ( S0, S1, S2, S3, S4) ;
	signal state : statetype;
	signal Dctr : unsigned( 15 downto 0) ;
	constant U_ZERO : unsigned ( 15 downto 0) := "0000000000000000" ;
	constant U_ONE : unsigned( 0 downto 0) := "1";
	begin
		statemachine: process( clk, rst )
			begin
				if ( rst = '1' ) then
					L <= '0';
					D <= U_ZERO;
					Dctr <= U_ZERO;
					state <= S0;  -- initial state
				elsif ( clk='1' and clk'event) then
					case state is
						when S0 =>
							L <= '0' ; -- laser off
							D <= U_ZERO; -- clear D
							
							state <= S1;
						when S1 =>
							Dctr <= U_ZERO; -- reset count
							if ( B= '1' ) then
								state <= S2;
								else
									state <= S1;
							end if ;
						when S2 =>
							L <= '1' ; -- laser on
							state <= S3;
						when S3 =>
							L <= '0' ; -- laser off
							Dctr <= Dctr + 1;
							if ( S='1' ) then
								state <= S4;
								else
									state <= S3;
							end if ;
						when S4 =>
							D <= SHR( Dctr , U_ONE) ; -- calculate D
							state <= S1;
					end case;
				end if;
			end process;
end behavior ;