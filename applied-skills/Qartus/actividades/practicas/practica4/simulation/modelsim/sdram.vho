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

-- DATE "10/19/2022 17:38:09"

-- 
-- Device: Altera 5CGXFC7C6F23I7 Package FBGA484
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

ENTITY 	sdram IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	count : OUT std_logic_vector(2 DOWNTO 0)
	);
END sdram;

-- Design Ports Information
-- count[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sdram IS
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
SIGNAL ww_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \count_i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \count_i[1]~feeder_combout\ : std_logic;
SIGNAL \count_i[1]~DUPLICATE_q\ : std_logic;
SIGNAL \count_i[2]~feeder_combout\ : std_logic;
SIGNAL \feedback~0_combout\ : std_logic;
SIGNAL count_i : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_count_i : std_logic_vector(2 DOWNTO 1);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_count_i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count_i[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_count_i(1) <= NOT count_i(1);
ALT_INV_count_i(2) <= NOT count_i(2);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_count_i[0]~DUPLICATE_q\ <= NOT \count_i[0]~DUPLICATE_q\;
\ALT_INV_count_i[1]~DUPLICATE_q\ <= NOT \count_i[1]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y35_N79
\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => count_i(0),
	devoe => ww_devoe,
	o => ww_count(0));

-- Location: IOOBUF_X89_Y35_N45
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => count_i(1),
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X89_Y35_N96
\count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => count_i(2),
	devoe => ww_devoe,
	o => ww_count(2));

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

-- Location: IOIBUF_X89_Y36_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y35_N50
\count_i[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \feedback~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_i[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y35_N6
\count_i[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_i[1]~feeder_combout\ = ( \count_i[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_i[0]~DUPLICATE_q\,
	combout => \count_i[1]~feeder_combout\);

-- Location: FF_X88_Y35_N7
\count_i[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_i[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_i[1]~DUPLICATE_q\);

-- Location: FF_X88_Y35_N8
\count_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_i[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_i(1));

-- Location: LABCELL_X88_Y35_N45
\count_i[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_i[2]~feeder_combout\ = ( count_i(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_count_i(1),
	combout => \count_i[2]~feeder_combout\);

-- Location: FF_X88_Y35_N47
\count_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \count_i[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_i(2));

-- Location: LABCELL_X88_Y35_N48
\feedback~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \feedback~0_combout\ = ( \count_i[1]~DUPLICATE_q\ & ( count_i(2) ) ) # ( !\count_i[1]~DUPLICATE_q\ & ( !count_i(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_count_i[1]~DUPLICATE_q\,
	dataf => ALT_INV_count_i(2),
	combout => \feedback~0_combout\);

-- Location: FF_X88_Y35_N49
\count_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \feedback~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_i(0));

-- Location: LABCELL_X23_Y19_N0
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


