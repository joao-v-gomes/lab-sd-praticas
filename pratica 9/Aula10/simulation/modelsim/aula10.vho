-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/07/2022 22:55:30"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	aula10 IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : OUT std_logic_vector(3 DOWNTO 0)
	);
END aula10;

-- Design Ports Information
-- x[3]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[2]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[0]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[1]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[0]	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- y[1]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- y[2]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- y[3]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF aula10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|adder|result_node|cs_buffer[0]~0_combout\ : std_logic;
SIGNAL \x~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_x <= x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: LC_X2_Y4_N4
\Mult0|mult_core|decoder_node[1][0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][0]~combout\ = LCELL((((!\x~combout\(0) & \x~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\(0),
	datad => \x~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LC_X2_Y4_N9
\Mult0|mult_core|decoder_node[0][1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][1]~combout\ = LCELL((((\x~combout\(0) & !\x~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\(0),
	datad => \x~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LC_X2_Y4_N2
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0_combout\ = \Mult0|mult_core|decoder_node[1][0]~combout\ $ ((\Mult0|mult_core|decoder_node[0][1]~combout\))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\ = CARRY((\Mult0|mult_core|decoder_node[1][0]~combout\ & (\Mult0|mult_core|decoder_node[0][1]~combout\)))
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_13\ = CARRY((\Mult0|mult_core|decoder_node[1][0]~combout\ & (\Mult0|mult_core|decoder_node[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][0]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][1]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0_combout\,
	cout0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\,
	cout1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_13\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(2),
	combout => \x~combout\(2));

-- Location: LC_X2_Y4_N6
\Mult0|mult_core|decoder_node[2][0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][0]~combout\ = LCELL((\x~combout\(2) & (((!\x~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(2),
	datac => \x~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LC_X2_Y4_N7
\Mult0|mult_core|decoder_node[0][2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][2]~combout\ = LCELL((!\x~combout\(2) & (((\x~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(2),
	datac => \x~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LC_X2_Y4_N8
\Mult0|mult_core|decoder_node[1][1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][1]~combout\ = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LC_X2_Y4_N3
\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5_combout\ = (\Mult0|mult_core|decoder_node[0][2]~combout\ $ (\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\ $ (\Mult0|mult_core|decoder_node[1][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => \Mult0|mult_core|decoder_node[1][1]~combout\,
	cin0 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2\,
	cin1 => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~2COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5_combout\);

-- Location: LC_X2_Y4_N5
\Mult0|mult_core|padder|sub_par_add|adder[0]|adder|result_node|cs_buffer[0]~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|adder|result_node|cs_buffer[0]~0_combout\ = ((\Mult0|mult_core|decoder_node[2][0]~combout\ $ (\Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|decoder_node[2][0]~combout\,
	datad => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|adder|result_node|cs_buffer[0]~0_combout\);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|adder[0]|adder|result_node|cs_buffer[0]~0_combout\,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|adder|result_node|cs_buffer[0]~0_combout\,
	oe => VCC,
	padio => ww_y(3));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(3));
END structure;


