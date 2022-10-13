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

-- DATE "10/13/2022 15:45:50"

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

ENTITY 	segment IS
    PORT (
	inputParameter : IN std_logic_vector(3 DOWNTO 0);
	seg : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END segment;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputParameter[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputParameter[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputParameter[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputParameter[3]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF segment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputParameter : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \inputParameter[0]~input_o\ : std_logic;
SIGNAL \inputParameter[1]~input_o\ : std_logic;
SIGNAL \inputParameter[3]~input_o\ : std_logic;
SIGNAL \inputParameter[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_inputParameter <= inputParameter;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
\seg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\seg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\seg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\seg[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\seg[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\seg[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\seg[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOIBUF_X0_Y25_N1
\inputParameter[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputParameter(0),
	o => \inputParameter[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\inputParameter[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputParameter(1),
	o => \inputParameter[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\inputParameter[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputParameter(3),
	o => \inputParameter[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\inputParameter[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputParameter(2),
	o => \inputParameter[2]~input_o\);

-- Location: LCCOMB_X21_Y28_N0
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\inputParameter[3]~input_o\ & (\inputParameter[0]~input_o\ & (\inputParameter[1]~input_o\ $ (\inputParameter[2]~input_o\)))) # (!\inputParameter[3]~input_o\ & (!\inputParameter[1]~input_o\ & (\inputParameter[0]~input_o\ $ 
-- (\inputParameter[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputParameter[0]~input_o\,
	datab => \inputParameter[1]~input_o\,
	datac => \inputParameter[3]~input_o\,
	datad => \inputParameter[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y28_N2
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\inputParameter[1]~input_o\ & ((\inputParameter[0]~input_o\ & (\inputParameter[3]~input_o\)) # (!\inputParameter[0]~input_o\ & ((\inputParameter[2]~input_o\))))) # (!\inputParameter[1]~input_o\ & (\inputParameter[2]~input_o\ & 
-- (\inputParameter[0]~input_o\ $ (\inputParameter[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputParameter[0]~input_o\,
	datab => \inputParameter[1]~input_o\,
	datac => \inputParameter[3]~input_o\,
	datad => \inputParameter[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X21_Y28_N12
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\inputParameter[3]~input_o\ & (\inputParameter[2]~input_o\ & ((\inputParameter[1]~input_o\) # (!\inputParameter[0]~input_o\)))) # (!\inputParameter[3]~input_o\ & (!\inputParameter[0]~input_o\ & (\inputParameter[1]~input_o\ & 
-- !\inputParameter[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputParameter[0]~input_o\,
	datab => \inputParameter[1]~input_o\,
	datac => \inputParameter[3]~input_o\,
	datad => \inputParameter[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X21_Y28_N14
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\inputParameter[0]~input_o\ & (\inputParameter[1]~input_o\ $ (((!\inputParameter[2]~input_o\))))) # (!\inputParameter[0]~input_o\ & ((\inputParameter[1]~input_o\ & (\inputParameter[3]~input_o\ & !\inputParameter[2]~input_o\)) # 
-- (!\inputParameter[1]~input_o\ & (!\inputParameter[3]~input_o\ & \inputParameter[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputParameter[0]~input_o\,
	datab => \inputParameter[1]~input_o\,
	datac => \inputParameter[3]~input_o\,
	datad => \inputParameter[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X21_Y28_N16
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\inputParameter[1]~input_o\ & (\inputParameter[0]~input_o\ & (!\inputParameter[3]~input_o\))) # (!\inputParameter[1]~input_o\ & ((\inputParameter[2]~input_o\ & ((!\inputParameter[3]~input_o\))) # (!\inputParameter[2]~input_o\ & 
-- (\inputParameter[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputParameter[0]~input_o\,
	datab => \inputParameter[1]~input_o\,
	datac => \inputParameter[3]~input_o\,
	datad => \inputParameter[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X21_Y28_N26
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\inputParameter[1]~input_o\ & (((!\inputParameter[3]~input_o\ & !\inputParameter[2]~input_o\)))) # (!\inputParameter[1]~input_o\ & (\inputParameter[0]~input_o\ & (\inputParameter[3]~input_o\ $ (!\inputParameter[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputParameter[0]~input_o\,
	datab => \inputParameter[1]~input_o\,
	datac => \inputParameter[3]~input_o\,
	datad => \inputParameter[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X21_Y28_N4
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\inputParameter[0]~input_o\ & ((\inputParameter[3]~input_o\) # (\inputParameter[1]~input_o\ $ (\inputParameter[2]~input_o\)))) # (!\inputParameter[0]~input_o\ & ((\inputParameter[1]~input_o\) # (\inputParameter[3]~input_o\ $ 
-- (\inputParameter[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputParameter[0]~input_o\,
	datab => \inputParameter[1]~input_o\,
	datac => \inputParameter[3]~input_o\,
	datad => \inputParameter[2]~input_o\,
	combout => \Mux0~0_combout\);

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;
END structure;


