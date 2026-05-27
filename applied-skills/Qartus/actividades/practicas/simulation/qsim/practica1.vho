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

-- DATE "10/06/2022 16:51:34"

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

ENTITY 	practica1 IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	pausa : IN std_logic;
	uni : OUT std_logic_vector(3 DOWNTO 0);
	dec : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica1;

-- Design Ports Information
-- uni[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pausa	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica1 IS
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
SIGNAL ww_pausa : std_logic;
SIGNAL ww_uni : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dec : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \contUni[0]~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pausa~input_o\ : std_logic;
SIGNAL \contUni[2]~1_combout\ : std_logic;
SIGNAL \contUni~2_combout\ : std_logic;
SIGNAL \contUni~0_combout\ : std_logic;
SIGNAL \contDec[0]~4_combout\ : std_logic;
SIGNAL \contDec[0]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contDec~2_combout\ : std_logic;
SIGNAL \contDec[3]~3_combout\ : std_logic;
SIGNAL \contDec~1_combout\ : std_logic;
SIGNAL contUni : std_logic_vector(3 DOWNTO 0);
SIGNAL contDec : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_pausa~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_contDec : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_contUni : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_pausa <= pausa;
uni <= ww_uni;
dec <= ww_dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pausa~input_o\ <= NOT \pausa~input_o\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_contDec(3) <= NOT contDec(3);
ALT_INV_contDec(2) <= NOT contDec(2);
ALT_INV_contDec(1) <= NOT contDec(1);
ALT_INV_contDec(0) <= NOT contDec(0);
ALT_INV_contUni(3) <= NOT contUni(3);
ALT_INV_contUni(2) <= NOT contUni(2);
ALT_INV_contUni(1) <= NOT contUni(1);
ALT_INV_contUni(0) <= NOT contUni(0);

-- Location: IOOBUF_X89_Y36_N22
\uni[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contUni(0),
	devoe => ww_devoe,
	o => ww_uni(0));

-- Location: IOOBUF_X89_Y38_N56
\uni[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contUni(1),
	devoe => ww_devoe,
	o => ww_uni(1));

-- Location: IOOBUF_X89_Y37_N56
\uni[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contUni(2),
	devoe => ww_devoe,
	o => ww_uni(2));

-- Location: IOOBUF_X89_Y37_N22
\uni[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contUni(3),
	devoe => ww_devoe,
	o => ww_uni(3));

-- Location: IOOBUF_X89_Y36_N39
\dec[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contDec(0),
	devoe => ww_devoe,
	o => ww_dec(0));

-- Location: IOOBUF_X89_Y37_N39
\dec[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contDec(1),
	devoe => ww_devoe,
	o => ww_dec(1));

-- Location: IOOBUF_X89_Y35_N79
\dec[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contDec(2),
	devoe => ww_devoe,
	o => ww_dec(2));

-- Location: IOOBUF_X89_Y37_N5
\dec[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => contDec(3),
	devoe => ww_devoe,
	o => ww_dec(3));

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

-- Location: LABCELL_X88_Y37_N36
\contUni[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contUni[0]~3_combout\ = ( !contUni(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_contUni(0),
	combout => \contUni[0]~3_combout\);

-- Location: IOIBUF_X89_Y38_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\pausa~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pausa,
	o => \pausa~input_o\);

-- Location: FF_X88_Y37_N38
\contUni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contUni[0]~3_combout\,
	clrn => \reset~input_o\,
	ena => \pausa~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contUni(0));

-- Location: LABCELL_X88_Y37_N57
\contUni[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contUni[2]~1_combout\ = ( contUni(2) & ( contUni(0) & ( (!\pausa~input_o\) # (!contUni(1)) ) ) ) # ( !contUni(2) & ( contUni(0) & ( (\pausa~input_o\ & contUni(1)) ) ) ) # ( contUni(2) & ( !contUni(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pausa~input_o\,
	datac => ALT_INV_contUni(1),
	datae => ALT_INV_contUni(2),
	dataf => ALT_INV_contUni(0),
	combout => \contUni[2]~1_combout\);

-- Location: FF_X88_Y37_N59
\contUni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contUni[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contUni(2));

-- Location: LABCELL_X88_Y37_N12
\contUni~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contUni~2_combout\ = ( contUni(3) & ( contUni(0) & ( !contUni(2) $ (!contUni(1)) ) ) ) # ( !contUni(3) & ( contUni(0) & ( (contUni(2) & contUni(1)) ) ) ) # ( contUni(3) & ( !contUni(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001100110011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contUni(2),
	datad => ALT_INV_contUni(1),
	datae => ALT_INV_contUni(3),
	dataf => ALT_INV_contUni(0),
	combout => \contUni~2_combout\);

-- Location: FF_X88_Y37_N14
\contUni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contUni~2_combout\,
	clrn => \reset~input_o\,
	ena => \pausa~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contUni(3));

-- Location: LABCELL_X88_Y37_N45
\contUni~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contUni~0_combout\ = ( contUni(1) & ( contUni(3) & ( !contUni(0) ) ) ) # ( !contUni(1) & ( contUni(3) & ( (contUni(2) & contUni(0)) ) ) ) # ( contUni(1) & ( !contUni(3) & ( !contUni(0) ) ) ) # ( !contUni(1) & ( !contUni(3) & ( contUni(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_contUni(2),
	datad => ALT_INV_contUni(0),
	datae => ALT_INV_contUni(1),
	dataf => ALT_INV_contUni(3),
	combout => \contUni~0_combout\);

-- Location: FF_X88_Y37_N47
\contUni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contUni~0_combout\,
	clrn => \reset~input_o\,
	ena => \pausa~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contUni(1));

-- Location: LABCELL_X88_Y37_N24
\contDec[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \contDec[0]~4_combout\ = !contDec(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_contDec(0),
	combout => \contDec[0]~4_combout\);

-- Location: LABCELL_X88_Y37_N27
\contDec[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contDec[0]~0_combout\ = ( !contUni(1) & ( (\pausa~input_o\ & (contUni(3) & (!contUni(2) & contUni(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pausa~input_o\,
	datab => ALT_INV_contUni(3),
	datac => ALT_INV_contUni(2),
	datad => ALT_INV_contUni(0),
	dataf => ALT_INV_contUni(1),
	combout => \contDec[0]~0_combout\);

-- Location: FF_X88_Y37_N26
\contDec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contDec[0]~4_combout\,
	clrn => \reset~input_o\,
	ena => \contDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contDec(0));

-- Location: LABCELL_X88_Y37_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( contUni(0) & ( !contUni(2) & ( (!contUni(1) & contUni(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contUni(1),
	datad => ALT_INV_contUni(3),
	datae => ALT_INV_contUni(0),
	dataf => ALT_INV_contUni(2),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X88_Y37_N9
\contDec~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \contDec~2_combout\ = ( contDec(3) & ( !contDec(2) $ (((!contDec(0)) # (!contDec(1)))) ) ) # ( !contDec(3) & ( (!contDec(0) & ((contDec(2)))) # (contDec(0) & (contDec(1) & !contDec(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101010000001011010101000000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_contDec(0),
	datac => ALT_INV_contDec(1),
	datad => ALT_INV_contDec(2),
	dataf => ALT_INV_contDec(3),
	combout => \contDec~2_combout\);

-- Location: FF_X88_Y37_N11
\contDec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contDec~2_combout\,
	clrn => \reset~input_o\,
	ena => \contDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contDec(2));

-- Location: LABCELL_X88_Y37_N30
\contDec[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \contDec[3]~3_combout\ = ( contDec(3) & ( contDec(0) & ( (!\Equal0~0_combout\) # ((!contDec(2)) # ((!\pausa~input_o\) # (!contDec(1)))) ) ) ) # ( !contDec(3) & ( contDec(0) & ( (\Equal0~0_combout\ & (contDec(2) & (\pausa~input_o\ & contDec(1)))) ) ) ) # ( 
-- contDec(3) & ( !contDec(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => ALT_INV_contDec(2),
	datac => \ALT_INV_pausa~input_o\,
	datad => ALT_INV_contDec(1),
	datae => ALT_INV_contDec(3),
	dataf => ALT_INV_contDec(0),
	combout => \contDec[3]~3_combout\);

-- Location: FF_X88_Y37_N32
\contDec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contDec[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contDec(3));

-- Location: LABCELL_X88_Y37_N6
\contDec~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \contDec~1_combout\ = ( contDec(2) & ( (!contDec(0) & ((contDec(1)))) # (contDec(0) & (contDec(3) & !contDec(1))) ) ) # ( !contDec(2) & ( !contDec(0) $ (!contDec(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000011111100000000001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_contDec(3),
	datac => ALT_INV_contDec(0),
	datad => ALT_INV_contDec(1),
	dataf => ALT_INV_contDec(2),
	combout => \contDec~1_combout\);

-- Location: FF_X88_Y37_N8
\contDec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \contDec~1_combout\,
	clrn => \reset~input_o\,
	ena => \contDec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contDec(1));

-- Location: LABCELL_X33_Y37_N3
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


