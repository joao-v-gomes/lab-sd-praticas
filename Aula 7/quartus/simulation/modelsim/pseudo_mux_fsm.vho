-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/13/2022 22:21:10"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pseudo_mux_fsm IS
    PORT (
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	S : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Q : BUFFER std_logic
	);
END pseudo_mux_fsm;

-- Design Ports Information
-- Q	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pseudo_mux_fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Selector7~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \state.INIT~0_combout\ : std_logic;
SIGNAL \state.INIT~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \flag_s~combout\ : std_logic;
SIGNAL \statemachine_comb~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~0clkctrl_outclk\ : std_logic;
SIGNAL \nextstate.STATE_B_207~combout\ : std_logic;
SIGNAL \state.STATE_B~0_combout\ : std_logic;
SIGNAL \state.STATE_B~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \nextstate.STATE_C_187~combout\ : std_logic;
SIGNAL \state.STATE_C~0_combout\ : std_logic;
SIGNAL \state.STATE_C~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \nextstate.STATE_D_167~combout\ : std_logic;
SIGNAL \state.STATE_D~0_combout\ : std_logic;
SIGNAL \state.STATE_D~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \nextstate.STATE_A_227~combout\ : std_logic;
SIGNAL \state.STATE_A~0_combout\ : std_logic;
SIGNAL \state.STATE_A~q\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
ww_S <= S;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Selector7~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector7~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\Q~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector5~2_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\A~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\CLOCK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\S~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: LCCOMB_X56_Y52_N4
\state.INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.INIT~0_combout\ = !\RESET~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RESET~input_o\,
	combout => \state.INIT~0_combout\);

-- Location: FF_X57_Y52_N21
\state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \state.INIT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.INIT~q\);

-- Location: LCCOMB_X57_Y52_N20
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.INIT~q\ & (\flag_s~combout\ $ (\S~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flag_s~combout\,
	datac => \state.INIT~q\,
	datad => \S~input_o\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X57_Y52_N2
flag_s : fiftyfivenm_lcell_comb
-- Equation(s):
-- \flag_s~combout\ = (\Selector6~0_combout\ & ((\statemachine_comb~0_combout\))) # (!\Selector6~0_combout\ & (\flag_s~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flag_s~combout\,
	datac => \statemachine_comb~0_combout\,
	datad => \Selector6~0_combout\,
	combout => \flag_s~combout\);

-- Location: LCCOMB_X57_Y52_N12
\statemachine_comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \statemachine_comb~0_combout\ = (\S~input_o\ & !\flag_s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S~input_o\,
	datad => \flag_s~combout\,
	combout => \statemachine_comb~0_combout\);

-- Location: LCCOMB_X57_Y52_N4
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\flag_s~combout\ & (\state.STATE_B~q\)) # (!\flag_s~combout\ & ((\S~input_o\ & ((\state.STATE_A~q\))) # (!\S~input_o\ & (\state.STATE_B~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_B~q\,
	datab => \flag_s~combout\,
	datac => \S~input_o\,
	datad => \state.STATE_A~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X57_Y52_N18
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\S~input_o\ $ (\flag_s~combout\)) # (!\state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~input_o\,
	datac => \state.INIT~q\,
	datad => \flag_s~combout\,
	combout => \Selector7~0_combout\);

-- Location: CLKCTRL_G12
\Selector7~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector7~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector7~0clkctrl_outclk\);

-- Location: LCCOMB_X57_Y52_N16
\nextstate.STATE_B_207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate.STATE_B_207~combout\ = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Selector1~0_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (\nextstate.STATE_B_207~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.STATE_B_207~combout\,
	datab => \Selector1~0_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => \nextstate.STATE_B_207~combout\);

-- Location: LCCOMB_X57_Y52_N28
\state.STATE_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.STATE_B~0_combout\ = (!\RESET~input_o\ & \nextstate.STATE_B_207~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \nextstate.STATE_B_207~combout\,
	combout => \state.STATE_B~0_combout\);

-- Location: FF_X57_Y52_N29
\state.STATE_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \state.STATE_B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_B~q\);

-- Location: LCCOMB_X57_Y52_N26
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\S~input_o\ & ((\flag_s~combout\ & (\state.STATE_C~q\)) # (!\flag_s~combout\ & ((\state.STATE_B~q\))))) # (!\S~input_o\ & (((\state.STATE_C~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~input_o\,
	datab => \flag_s~combout\,
	datac => \state.STATE_C~q\,
	datad => \state.STATE_B~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X57_Y52_N24
\nextstate.STATE_C_187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate.STATE_C_187~combout\ = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Selector2~0_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (\nextstate.STATE_C_187~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nextstate.STATE_C_187~combout\,
	datac => \Selector2~0_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => \nextstate.STATE_C_187~combout\);

-- Location: LCCOMB_X57_Y52_N8
\state.STATE_C~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.STATE_C~0_combout\ = (!\RESET~input_o\ & \nextstate.STATE_C_187~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \nextstate.STATE_C_187~combout\,
	combout => \state.STATE_C~0_combout\);

-- Location: FF_X57_Y52_N9
\state.STATE_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \state.STATE_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_C~q\);

-- Location: LCCOMB_X57_Y52_N0
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\S~input_o\ & ((\flag_s~combout\ & (\state.STATE_D~q\)) # (!\flag_s~combout\ & ((\state.STATE_C~q\))))) # (!\S~input_o\ & (((\state.STATE_D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~input_o\,
	datab => \flag_s~combout\,
	datac => \state.STATE_D~q\,
	datad => \state.STATE_C~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X57_Y52_N10
\nextstate.STATE_D_167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate.STATE_D_167~combout\ = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Selector3~0_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (\nextstate.STATE_D_167~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.STATE_D_167~combout\,
	datac => \Selector3~0_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => \nextstate.STATE_D_167~combout\);

-- Location: LCCOMB_X57_Y52_N30
\state.STATE_D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.STATE_D~0_combout\ = (!\RESET~input_o\ & \nextstate.STATE_D_167~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \nextstate.STATE_D_167~combout\,
	combout => \state.STATE_D~0_combout\);

-- Location: FF_X57_Y52_N31
\state.STATE_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \state.STATE_D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_D~q\);

-- Location: LCCOMB_X57_Y52_N22
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\statemachine_comb~0_combout\ & ((\state.STATE_D~q\))) # (!\statemachine_comb~0_combout\ & (\state.STATE_A~q\))) # (!\state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \statemachine_comb~0_combout\,
	datab => \state.INIT~q\,
	datac => \state.STATE_A~q\,
	datad => \state.STATE_D~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X57_Y52_N6
\nextstate.STATE_A_227\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate.STATE_A_227~combout\ = (GLOBAL(\Selector7~0clkctrl_outclk\) & ((\Selector0~0_combout\))) # (!GLOBAL(\Selector7~0clkctrl_outclk\) & (\nextstate.STATE_A_227~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.STATE_A_227~combout\,
	datab => \Selector0~0_combout\,
	datad => \Selector7~0clkctrl_outclk\,
	combout => \nextstate.STATE_A_227~combout\);

-- Location: LCCOMB_X57_Y52_N14
\state.STATE_A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.STATE_A~0_combout\ = (!\RESET~input_o\ & \nextstate.STATE_A_227~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \nextstate.STATE_A_227~combout\,
	combout => \state.STATE_A~0_combout\);

-- Location: FF_X57_Y52_N15
\state.STATE_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \state.STATE_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_A~q\);

-- Location: IOIBUF_X51_Y54_N22
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X54_Y52_N18
\Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\A~input_o\ & ((\state.STATE_A~q\) # ((\B~input_o\ & \state.STATE_B~q\)))) # (!\A~input_o\ & (((\B~input_o\ & \state.STATE_B~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \state.STATE_A~q\,
	datac => \B~input_o\,
	datad => \state.STATE_B~q\,
	combout => \Selector5~1_combout\);

-- Location: IOIBUF_X54_Y54_N29
\D~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\C~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X54_Y52_N28
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.STATE_D~q\ & ((\D~input_o\) # ((\C~input_o\ & \state.STATE_C~q\)))) # (!\state.STATE_D~q\ & (((\C~input_o\ & \state.STATE_C~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_D~q\,
	datab => \D~input_o\,
	datac => \C~input_o\,
	datad => \state.STATE_C~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X54_Y52_N12
\Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector5~1_combout\) # (\Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~1_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~2_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Q <= \Q~output_o\;
END structure;


