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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/29/2022 16:18:37"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fulladder IS
    PORT (
	input_A : IN std_logic;
	input_B : IN std_logic;
	input_Cin : IN std_logic;
	output_S : BUFFER std_logic;
	output_Cout : BUFFER std_logic
	);
END fulladder;

-- Design Ports Information
-- output_S	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_Cout	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_A	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_B	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_Cin	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fulladder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_A : std_logic;
SIGNAL ww_input_B : std_logic;
SIGNAL ww_input_Cin : std_logic;
SIGNAL ww_output_S : std_logic;
SIGNAL ww_output_Cout : std_logic;
SIGNAL \output_S~output_o\ : std_logic;
SIGNAL \output_Cout~output_o\ : std_logic;
SIGNAL \input_A~input_o\ : std_logic;
SIGNAL \input_B~input_o\ : std_logic;
SIGNAL \input_Cin~input_o\ : std_logic;
SIGNAL \output_S~0_combout\ : std_logic;
SIGNAL \output_Cout~0_combout\ : std_logic;

BEGIN

ww_input_A <= input_A;
ww_input_B <= input_B;
ww_input_Cin <= input_Cin;
output_S <= ww_output_S;
output_Cout <= ww_output_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y27_N16
\output_S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_S~0_combout\,
	devoe => ww_devoe,
	o => \output_S~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\output_Cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_Cout~0_combout\,
	devoe => ww_devoe,
	o => \output_Cout~output_o\);

-- Location: IOIBUF_X0_Y25_N1
\input_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_A,
	o => \input_A~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\input_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_B,
	o => \input_B~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\input_Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_Cin,
	o => \input_Cin~input_o\);

-- Location: LCCOMB_X14_Y26_N0
\output_S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_S~0_combout\ = \input_A~input_o\ $ (\input_B~input_o\ $ (\input_Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_A~input_o\,
	datac => \input_B~input_o\,
	datad => \input_Cin~input_o\,
	combout => \output_S~0_combout\);

-- Location: LCCOMB_X14_Y26_N2
\output_Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_Cout~0_combout\ = (\input_A~input_o\ & ((\input_B~input_o\) # (\input_Cin~input_o\))) # (!\input_A~input_o\ & (\input_B~input_o\ & \input_Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_A~input_o\,
	datac => \input_B~input_o\,
	datad => \input_Cin~input_o\,
	combout => \output_Cout~0_combout\);

ww_output_S <= \output_S~output_o\;

ww_output_Cout <= \output_Cout~output_o\;
END structure;


