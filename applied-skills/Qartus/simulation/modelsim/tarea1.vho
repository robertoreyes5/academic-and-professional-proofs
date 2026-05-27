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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/06/2022 15:23:12"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tarea1 IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	x : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END tarea1;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tarea1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \contador[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL contador : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contador : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_contador[0]~DUPLICATE_q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_x <= x;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_contador(0) <= NOT contador(0);
ALT_INV_contador(1) <= NOT contador(1);
ALT_INV_contador(3) <= NOT contador(3);
ALT_INV_contador(2) <= NOT contador(2);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_contador[0]~DUPLICATE_q\ <= NOT \contador[0]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y37_N56
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contador(0),
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X89_Y35_N96
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contador(1),
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X89_Y37_N22
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contador(2),
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X89_Y36_N56
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contador(3),
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y37_N57
\contador[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contador[0]~0_combout\ = ( !contador(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_contador(0),
	combout => \contador[0]~0_combout\);

-- Location: IOIBUF_X89_Y37_N38
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y37_N58
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contador[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: IOIBUF_X89_Y37_N4
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: FF_X88_Y37_N59
\contador[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contador[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N27
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( contador(1) & ( \contador[0]~DUPLICATE_q\ & ( !\x~input_o\ ) ) ) # ( !contador(1) & ( \contador[0]~DUPLICATE_q\ & ( \x~input_o\ ) ) ) # ( contador(1) & ( !\contador[0]~DUPLICATE_q\ & ( \x~input_o\ ) ) ) # ( !contador(1) & ( 
-- !\contador[0]~DUPLICATE_q\ & ( !\x~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010101010101010101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~input_o\,
	datae => ALT_INV_contador(1),
	dataf => \ALT_INV_contador[0]~DUPLICATE_q\,
	combout => \Add0~0_combout\);

-- Location: FF_X88_Y37_N29
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LABCELL_X88_Y37_N48
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( contador(2) & ( contador(1) & ( (!\x~input_o\) # (!\contador[0]~DUPLICATE_q\) ) ) ) # ( !contador(2) & ( contador(1) & ( (\x~input_o\ & \contador[0]~DUPLICATE_q\) ) ) ) # ( contador(2) & ( !contador(1) & ( (\contador[0]~DUPLICATE_q\) 
-- # (\x~input_o\) ) ) ) # ( !contador(2) & ( !contador(1) & ( (!\x~input_o\ & !\contador[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000011111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x~input_o\,
	datad => \ALT_INV_contador[0]~DUPLICATE_q\,
	datae => ALT_INV_contador(2),
	dataf => ALT_INV_contador(1),
	combout => \Add0~1_combout\);

-- Location: FF_X88_Y37_N50
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LABCELL_X88_Y37_N18
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( contador(3) & ( contador(1) & ( (!\x~input_o\) # ((!contador(2)) # (!\contador[0]~DUPLICATE_q\)) ) ) ) # ( !contador(3) & ( contador(1) & ( (\x~input_o\ & (contador(2) & \contador[0]~DUPLICATE_q\)) ) ) ) # ( contador(3) & ( 
-- !contador(1) & ( ((\contador[0]~DUPLICATE_q\) # (contador(2))) # (\x~input_o\) ) ) ) # ( !contador(3) & ( !contador(1) & ( (!\x~input_o\ & (!contador(2) & !\contador[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000010111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~input_o\,
	datac => ALT_INV_contador(2),
	datad => \ALT_INV_contador[0]~DUPLICATE_q\,
	datae => ALT_INV_contador(3),
	dataf => ALT_INV_contador(1),
	combout => \Add0~2_combout\);

-- Location: FF_X88_Y37_N19
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LABCELL_X30_Y77_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


