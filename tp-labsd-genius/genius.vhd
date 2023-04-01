library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity genius is
    port (
		entrada_azul : in std_logic;
		entrada_amarelo : in std_logic;
		entrada_verde : in std_logic;
		entrada_Vermelho : in std_logic;
		entrada_preto : in std_logic;
        
		led_azul : out std_logic;
		led_amarelo : out std_logic;
		led_verde : out std_logic;
		led_vermelho : out std_logic;
		led_ligado : out std_logic
    );
end genius;

architecture arch of genius is
begin
	process(entrada_azul,entrada_amarelo,entrada_verde,entrada_Vermelho)
		begin
			led_amarelo <= '0';
			led_azul <= '0';
			led_verde <= '0';
			led_vermelho<= '0';
			
			if (entrada_azul = '1' or entrada_amarelo = '1') then
				led_azul <= '1';
			end if;
	end process;
end arch;