library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use ieee.numeric_std.all;

entity tb_aula10 is
	generic(
				w: natural := 4
			);
end tb_aula10;

architecture teste of tb_aula10 is

	component aula10 is 
		port (
		  x   : in   std_logic_vector((w-1) downto 0);
        y   : out  std_logic_vector((w-1) downto 0)
		);
	 end component;

	signal clock : std_logic;
	signal data_in : std_logic_vector((w-1) downto 0);
	signal data_output : std_logic_vector((w-1) downto 0);
	 
	constant max_value : natural := 4;
	constant mim_value : natural := 1;
	
	constant PERIOD     : time := 20 ns;
   constant DUTY_CYCLE : real := 0.5;
   constant OFFSET     : time := 5 ns;
	
	signal read_data_in    : std_logic:='0';
   signal flag_write      : std_logic:='0';   

   
   file   inputs_data_in  : text open read_mode  is "arquivo.txt";
   file   outputs         : text open write_mode is "saida1.txt";
	 --cd C:/Users/Aluno/Desktop/Aula10
	 --do tb_script10.tcl
	 
	 begin
		instance_aula10 : aula10 port map (x => data_in, y => data_output);
		PROCESS    -- clock 
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clock <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));         -------10ns
					 clock <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;
		  
------------------------------------------------------------------------------------
----------------- processo para ler os dados do arquivo arquivo.txt
------------------------------------------------------------------------------------
read_inputs_data_in:process
		variable linea : line;
		variable input : std_logic_vector((w-1) downto 0);
	begin
	    wait until falling_edge(clock);
		while not endfile(inputs_data_in) loop
		      if read_data_in  = '1' then
			     readline(inputs_data_in,linea);   ------- pega linha do arquivo determinado
				 read(linea,input);						------- da linha obtida, pega o valor e passa para data in
				 data_in <= input;
			  end if;
			  wait for PERIOD;
		end loop;
		wait;
	end process read_inputs_data_in;	
------------------------------------------------------------------------------------
----------------- processo para gerar os estimulos de entrada
------------------------------------------------------------------------------------
	
   tb_stimulus : PROCESS
   BEGIN
        WAIT FOR (OFFSET + 3*PERIOD);
            read_data_in <= '1';		
			for i in mim_value to max_value loop       ----- delimitacao da quantidade de valores a serem lidos
		        wait for PERIOD;
		    end loop;
            read_data_in <= '0';		
		WAIT;
   END PROCESS tb_stimulus;	
	
------------------------------------------------------------------------------------
------ processo para gerar os estimulos de escrita do arquivo de saida
------------------------------------------------------------------------------------   
   
   escreve_outputs : PROCESS
   BEGIN
        WAIT FOR (OFFSET + 4*PERIOD);
           flag_write <= '1';
			for i in mim_value to max_value loop
		        wait for PERIOD;
		    end loop;
            flag_write <= '0';			
		WAIT;
   END PROCESS escreve_outputs;   
   
-- ------------------------------------------------------------------------------------
-- ------ processo para escriber os dados de saida no arquivo .txt
-- ------------------------------------------------------------------------------------   
   
	write_outputs:process
		variable linea  : line;
		variable output : std_logic_vector (w-1 downto 0);
	begin
	    wait until clock ='0';
		while true loop
			if (flag_write ='1')then
				output := std_logic_vector(unsigned(data_output));  ----- joga valor a ser escrito numa variavel auxiliar, convertendo-o
				write(linea,output);											------ pega o numero da linha do arquivo em que sera escrito o valor
				writeline(outputs,linea);									------ escreve o valor na linha
			end if;
			wait for PERIOD;
		end loop; 
	end process write_outputs; 		
		end teste;