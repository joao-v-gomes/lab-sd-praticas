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

-- DATE "10/04/2022 16:46:18"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	control : IN std_logic_vector(3 DOWNTO 0);
	src1 : IN std_logic_vector(2 DOWNTO 0);
	src2 : IN std_logic_vector(2 DOWNTO 0);
	result : BUFFER std_logic_vector(2 DOWNTO 0);
	zero : BUFFER std_logic
	);
END alu;

-- Design Ports Information
-- result[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src2[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- src1[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_control : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_src1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_src2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \control[2]~input_o\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \control[3]~input_o\ : std_logic;
SIGNAL \r~6_combout\ : std_logic;
SIGNAL \src1[0]~input_o\ : std_logic;
SIGNAL \src2[0]~input_o\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \r~2_combout\ : std_logic;
SIGNAL \src2[1]~input_o\ : std_logic;
SIGNAL \src1[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \src2[2]~input_o\ : std_logic;
SIGNAL \src1[2]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \r~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \r~3_combout\ : std_logic;
SIGNAL \r~4_combout\ : std_logic;
SIGNAL \r~5_combout\ : std_logic;
SIGNAL \r~7_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \r~9_combout\ : std_logic;
SIGNAL \r~10_combout\ : std_logic;
SIGNAL \r~8_combout\ : std_logic;
SIGNAL \r~11_combout\ : std_logic;
SIGNAL \r~12_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \r~13_combout\ : std_logic;
SIGNAL \r~14_combout\ : std_logic;
SIGNAL \r~15_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_control <= control;
ww_src1 <= src1;
ww_src2 <= src2;
result <= ww_result;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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
\result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r~7_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r~11_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r~15_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\zero~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal6~0_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOIBUF_X56_Y54_N1
\control[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(2),
	o => \control[2]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\control[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\control[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\control[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(3),
	o => \control[3]~input_o\);

-- Location: LCCOMB_X51_Y53_N10
\r~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~6_combout\ = (\control[2]~input_o\ & (\control[3]~input_o\ & ((\control[1]~input_o\) # (\control[0]~input_o\)))) # (!\control[2]~input_o\ & ((\control[3]~input_o\) # ((\control[1]~input_o\ & \control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datab => \control[1]~input_o\,
	datac => \control[0]~input_o\,
	datad => \control[3]~input_o\,
	combout => \r~6_combout\);

-- Location: IOIBUF_X51_Y54_N29
\src1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src1(0),
	o => \src1[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\src2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src2(0),
	o => \src2[0]~input_o\);

-- Location: LCCOMB_X51_Y53_N16
\r~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (!\src1[0]~input_o\ & !\src2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \src1[0]~input_o\,
	datad => \src2[0]~input_o\,
	combout => \r~0_combout\);

-- Location: LCCOMB_X51_Y53_N6
\r~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~2_combout\ = (\control[0]~input_o\ & (!\control[2]~input_o\)) # (!\control[0]~input_o\ & ((\control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datab => \control[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \r~2_combout\);

-- Location: IOIBUF_X54_Y54_N22
\src2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src2(1),
	o => \src2[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\src1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src1(1),
	o => \src1[1]~input_o\);

-- Location: LCCOMB_X50_Y53_N0
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\src2[1]~input_o\ & (((\src2[0]~input_o\ & !\src1[0]~input_o\)) # (!\src1[1]~input_o\))) # (!\src2[1]~input_o\ & (!\src1[1]~input_o\ & (\src2[0]~input_o\ & !\src1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \src2[1]~input_o\,
	datab => \src1[1]~input_o\,
	datac => \src2[0]~input_o\,
	datad => \src1[0]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X49_Y54_N1
\src2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src2(2),
	o => \src2[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\src1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_src1(2),
	o => \src1[2]~input_o\);

-- Location: LCCOMB_X50_Y53_N2
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\ & ((\src2[2]~input_o\) # (!\src1[2]~input_o\))) # (!\LessThan0~0_combout\ & (\src2[2]~input_o\ & !\src1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \src2[2]~input_o\,
	datad => \src1[2]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X51_Y53_N12
\r~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~1_combout\ = (\control[1]~input_o\ & ((\control[2]~input_o\) # (!\control[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datab => \control[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \r~1_combout\);

-- Location: LCCOMB_X51_Y53_N26
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\control[2]~input_o\ & (\control[1]~input_o\ & (!\control[0]~input_o\ & !\control[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datab => \control[1]~input_o\,
	datac => \control[0]~input_o\,
	datad => \control[3]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X50_Y53_N28
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \Equal2~0_combout\ $ (\src2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \src2[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X50_Y53_N16
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X50_Y53_N18
\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\src1[0]~input_o\ & (!\Add0~2_cout\)) # (!\src1[0]~input_o\ & ((\Add0~2_cout\) # (GND))))) # (!\Add0~0_combout\ & ((\src1[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\src1[0]~input_o\ & (!\Add0~2_cout\))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\src1[0]~input_o\))) # (!\Add0~0_combout\ & (!\src1[0]~input_o\ & !\Add0~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \src1[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X50_Y53_N6
\r~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~3_combout\ = (\r~2_combout\ & (((\Add0~3_combout\) # (!\r~1_combout\)))) # (!\r~2_combout\ & (\LessThan0~1_combout\ & (\r~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~2_combout\,
	datab => \LessThan0~1_combout\,
	datac => \r~1_combout\,
	datad => \Add0~3_combout\,
	combout => \r~3_combout\);

-- Location: LCCOMB_X51_Y53_N24
\r~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~4_combout\ = (\control[2]~input_o\) # ((!\control[0]~input_o\ & \control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[2]~input_o\,
	datab => \control[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \r~4_combout\);

-- Location: LCCOMB_X50_Y53_N8
\r~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~5_combout\ = (\r~3_combout\ & ((\r~4_combout\) # ((\src2[0]~input_o\) # (\src1[0]~input_o\)))) # (!\r~3_combout\ & (!\r~4_combout\ & (\src2[0]~input_o\ & \src1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~3_combout\,
	datab => \r~4_combout\,
	datac => \src2[0]~input_o\,
	datad => \src1[0]~input_o\,
	combout => \r~5_combout\);

-- Location: LCCOMB_X51_Y53_N20
\r~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~7_combout\ = (!\r~6_combout\ & ((\control[3]~input_o\ & (\r~0_combout\)) # (!\control[3]~input_o\ & ((\r~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~6_combout\,
	datab => \r~0_combout\,
	datac => \r~5_combout\,
	datad => \control[3]~input_o\,
	combout => \r~7_combout\);

-- Location: LCCOMB_X50_Y53_N10
\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \Equal2~0_combout\ $ (\src2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \src2[1]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X50_Y53_N20
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\src1[1]~input_o\ $ (\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & (\src1[1]~input_o\ & !\Add0~4\)) # (!\Add0~5_combout\ & ((\src1[1]~input_o\) # (!\Add0~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \src1[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X50_Y53_N12
\r~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~9_combout\ = (\r~2_combout\ & ((\Add0~6_combout\) # ((!\r~1_combout\)))) # (!\r~2_combout\ & (((\r~1_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~2_combout\,
	datab => \Add0~6_combout\,
	datac => \r~1_combout\,
	datad => \LessThan0~1_combout\,
	combout => \r~9_combout\);

-- Location: LCCOMB_X51_Y53_N0
\r~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~10_combout\ = (\r~9_combout\ & ((\r~4_combout\) # ((\src1[1]~input_o\) # (\src2[1]~input_o\)))) # (!\r~9_combout\ & (!\r~4_combout\ & (\src1[1]~input_o\ & \src2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~9_combout\,
	datab => \r~4_combout\,
	datac => \src1[1]~input_o\,
	datad => \src2[1]~input_o\,
	combout => \r~10_combout\);

-- Location: LCCOMB_X51_Y53_N30
\r~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~8_combout\ = (!\src1[1]~input_o\ & !\src2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \src1[1]~input_o\,
	datad => \src2[1]~input_o\,
	combout => \r~8_combout\);

-- Location: LCCOMB_X51_Y53_N18
\r~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~11_combout\ = (!\r~6_combout\ & ((\control[3]~input_o\ & ((\r~8_combout\))) # (!\control[3]~input_o\ & (\r~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~6_combout\,
	datab => \r~10_combout\,
	datac => \r~8_combout\,
	datad => \control[3]~input_o\,
	combout => \r~11_combout\);

-- Location: LCCOMB_X50_Y53_N14
\r~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~12_combout\ = (!\src2[2]~input_o\ & !\src1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \src2[2]~input_o\,
	datad => \src1[2]~input_o\,
	combout => \r~12_combout\);

-- Location: LCCOMB_X50_Y53_N24
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Equal2~0_combout\ $ (\src2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \src2[2]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X50_Y53_N22
\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \Add0~8_combout\ $ (\Add0~7\ $ (!\src1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => \src1[2]~input_o\,
	cin => \Add0~7\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X50_Y53_N26
\r~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~13_combout\ = (\r~1_combout\ & ((\r~2_combout\ & (\Add0~9_combout\)) # (!\r~2_combout\ & ((\LessThan0~1_combout\))))) # (!\r~1_combout\ & (((\r~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \LessThan0~1_combout\,
	datac => \r~1_combout\,
	datad => \r~2_combout\,
	combout => \r~13_combout\);

-- Location: LCCOMB_X50_Y53_N4
\r~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~14_combout\ = (\r~13_combout\ & ((\r~4_combout\) # ((\src2[2]~input_o\) # (\src1[2]~input_o\)))) # (!\r~13_combout\ & (!\r~4_combout\ & (\src2[2]~input_o\ & \src1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~13_combout\,
	datab => \r~4_combout\,
	datac => \src2[2]~input_o\,
	datad => \src1[2]~input_o\,
	combout => \r~14_combout\);

-- Location: LCCOMB_X51_Y53_N28
\r~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~15_combout\ = (!\r~6_combout\ & ((\control[3]~input_o\ & (\r~12_combout\)) # (!\control[3]~input_o\ & ((\r~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~12_combout\,
	datab => \control[3]~input_o\,
	datac => \r~14_combout\,
	datad => \r~6_combout\,
	combout => \r~15_combout\);

-- Location: LCCOMB_X51_Y53_N14
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\r~15_combout\ & (!\r~7_combout\ & !\r~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~15_combout\,
	datac => \r~7_combout\,
	datad => \r~11_combout\,
	combout => \Equal6~0_combout\);

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

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_zero <= \zero~output_o\;
END structure;


