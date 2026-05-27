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

-- DATE "10/21/2022 17:45:40"

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
	clk : IN std_logic;
	dir : IN std_logic_vector(2 DOWNTO 0);
	ies : IN std_logic;
	iwes : IN std_logic;
	into : IN std_logic;
	reset : IN std_logic;
	dati : IN std_logic_vector(3 DOWNTO 0);
	dato : BUFFER std_logic_vector(3 DOWNTO 0);
	count : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END sdram;

-- Design Ports Information
-- dato[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iwes	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- into	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ies	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dati[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dati[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dati[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dati[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_dir : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ies : std_logic;
SIGNAL ww_iwes : std_logic;
SIGNAL ww_into : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_dati : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dato : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dir[2]~input_o\ : std_logic;
SIGNAL \dati[0]~input_o\ : std_logic;
SIGNAL \into~input_o\ : std_logic;
SIGNAL \dir[0]~input_o\ : std_logic;
SIGNAL \dir[1]~input_o\ : std_logic;
SIGNAL \iwes~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ram~73_combout\ : std_logic;
SIGNAL \ram~36_q\ : std_logic;
SIGNAL \ram~32feeder_combout\ : std_logic;
SIGNAL \ram~75_combout\ : std_logic;
SIGNAL \ram~32_q\ : std_logic;
SIGNAL \ram~72_combout\ : std_logic;
SIGNAL \ram~28_q\ : std_logic;
SIGNAL \ram~12feeder_combout\ : std_logic;
SIGNAL \ram~76_combout\ : std_logic;
SIGNAL \ram~12_q\ : std_logic;
SIGNAL \ram~16feeder_combout\ : std_logic;
SIGNAL \ram~79_combout\ : std_logic;
SIGNAL \ram~16_q\ : std_logic;
SIGNAL \ram~20feeder_combout\ : std_logic;
SIGNAL \ram~77_combout\ : std_logic;
SIGNAL \ram~20_q\ : std_logic;
SIGNAL \ram~8feeder_combout\ : std_logic;
SIGNAL \ram~78_combout\ : std_logic;
SIGNAL \ram~8_q\ : std_logic;
SIGNAL \ram~56_combout\ : std_logic;
SIGNAL \ram~74_combout\ : std_logic;
SIGNAL \ram~24_q\ : std_logic;
SIGNAL \ram~40_combout\ : std_logic;
SIGNAL \dato[3]~4_combout\ : std_logic;
SIGNAL \dato[0]~reg0_q\ : std_logic;
SIGNAL \ies~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \dato[0]~en_q\ : std_logic;
SIGNAL \dati[1]~input_o\ : std_logic;
SIGNAL \ram~37feeder_combout\ : std_logic;
SIGNAL \ram~37_q\ : std_logic;
SIGNAL \ram~33feeder_combout\ : std_logic;
SIGNAL \ram~33_q\ : std_logic;
SIGNAL \ram~29feeder_combout\ : std_logic;
SIGNAL \ram~29_q\ : std_logic;
SIGNAL \ram~13_q\ : std_logic;
SIGNAL \ram~17feeder_combout\ : std_logic;
SIGNAL \ram~17_q\ : std_logic;
SIGNAL \ram~21_q\ : std_logic;
SIGNAL \ram~9feeder_combout\ : std_logic;
SIGNAL \ram~9_q\ : std_logic;
SIGNAL \ram~60_combout\ : std_logic;
SIGNAL \ram~25feeder_combout\ : std_logic;
SIGNAL \ram~25_q\ : std_logic;
SIGNAL \ram~44_combout\ : std_logic;
SIGNAL \dato[1]~reg0_q\ : std_logic;
SIGNAL \dato[1]~en_q\ : std_logic;
SIGNAL \dati[2]~input_o\ : std_logic;
SIGNAL \ram~38feeder_combout\ : std_logic;
SIGNAL \ram~38_q\ : std_logic;
SIGNAL \ram~34feeder_combout\ : std_logic;
SIGNAL \ram~34_q\ : std_logic;
SIGNAL \ram~30feeder_combout\ : std_logic;
SIGNAL \ram~30_q\ : std_logic;
SIGNAL \ram~18_q\ : std_logic;
SIGNAL \ram~22_q\ : std_logic;
SIGNAL \ram~14_q\ : std_logic;
SIGNAL \ram~10feeder_combout\ : std_logic;
SIGNAL \ram~10_q\ : std_logic;
SIGNAL \ram~64_combout\ : std_logic;
SIGNAL \ram~26feeder_combout\ : std_logic;
SIGNAL \ram~26_q\ : std_logic;
SIGNAL \ram~48_combout\ : std_logic;
SIGNAL \dato[2]~reg0_q\ : std_logic;
SIGNAL \dato[2]~en_q\ : std_logic;
SIGNAL \dati[3]~input_o\ : std_logic;
SIGNAL \ram~31feeder_combout\ : std_logic;
SIGNAL \ram~31_q\ : std_logic;
SIGNAL \ram~35feeder_combout\ : std_logic;
SIGNAL \ram~35_q\ : std_logic;
SIGNAL \ram~39feeder_combout\ : std_logic;
SIGNAL \ram~39_q\ : std_logic;
SIGNAL \ram~19feeder_combout\ : std_logic;
SIGNAL \ram~19_q\ : std_logic;
SIGNAL \ram~15_q\ : std_logic;
SIGNAL \ram~23_q\ : std_logic;
SIGNAL \ram~11feeder_combout\ : std_logic;
SIGNAL \ram~11_q\ : std_logic;
SIGNAL \ram~68_combout\ : std_logic;
SIGNAL \ram~27feeder_combout\ : std_logic;
SIGNAL \ram~27_q\ : std_logic;
SIGNAL \ram~52_combout\ : std_logic;
SIGNAL \dato[3]~reg0_q\ : std_logic;
SIGNAL \dato[3]~en_q\ : std_logic;
SIGNAL \count_i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \count_i[1]~feeder_combout\ : std_logic;
SIGNAL \count_i[1]~DUPLICATE_q\ : std_logic;
SIGNAL \count_i[2]~feeder_combout\ : std_logic;
SIGNAL \feedback~0_combout\ : std_logic;
SIGNAL count_i : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_count_i[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count_i[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_dati[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dati[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dati[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dir[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dati[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dir[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dir[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ies~input_o\ : std_logic;
SIGNAL \ALT_INV_into~input_o\ : std_logic;
SIGNAL \ALT_INV_iwes~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ALT_INV_ram~11_q\ : std_logic;
SIGNAL \ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ALT_INV_ram~15_q\ : std_logic;
SIGNAL \ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ALT_INV_ram~10_q\ : std_logic;
SIGNAL \ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ALT_INV_ram~14_q\ : std_logic;
SIGNAL \ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ALT_INV_ram~9_q\ : std_logic;
SIGNAL \ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ALT_INV_ram~13_q\ : std_logic;
SIGNAL \ALT_INV_ram~16_q\ : std_logic;
SIGNAL \ALT_INV_ram~8_q\ : std_logic;
SIGNAL \ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ALT_INV_ram~12_q\ : std_logic;
SIGNAL \ALT_INV_ram~35_q\ : std_logic;
SIGNAL \ALT_INV_ram~27_q\ : std_logic;
SIGNAL \ALT_INV_ram~39_q\ : std_logic;
SIGNAL \ALT_INV_ram~31_q\ : std_logic;
SIGNAL \ALT_INV_ram~34_q\ : std_logic;
SIGNAL \ALT_INV_ram~26_q\ : std_logic;
SIGNAL \ALT_INV_ram~38_q\ : std_logic;
SIGNAL \ALT_INV_ram~30_q\ : std_logic;
SIGNAL \ALT_INV_ram~33_q\ : std_logic;
SIGNAL \ALT_INV_ram~25_q\ : std_logic;
SIGNAL \ALT_INV_ram~37_q\ : std_logic;
SIGNAL \ALT_INV_ram~29_q\ : std_logic;
SIGNAL \ALT_INV_ram~32_q\ : std_logic;
SIGNAL \ALT_INV_ram~24_q\ : std_logic;
SIGNAL \ALT_INV_ram~36_q\ : std_logic;
SIGNAL \ALT_INV_ram~28_q\ : std_logic;
SIGNAL ALT_INV_count_i : std_logic_vector(2 DOWNTO 1);
SIGNAL \ALT_INV_ram~68_combout\ : std_logic;
SIGNAL \ALT_INV_ram~64_combout\ : std_logic;
SIGNAL \ALT_INV_ram~60_combout\ : std_logic;
SIGNAL \ALT_INV_ram~56_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_dir <= dir;
ww_ies <= ies;
ww_iwes <= iwes;
ww_into <= into;
ww_reset <= reset;
ww_dati <= dati;
dato <= ww_dato;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_count_i[1]~DUPLICATE_q\ <= NOT \count_i[1]~DUPLICATE_q\;
\ALT_INV_count_i[0]~DUPLICATE_q\ <= NOT \count_i[0]~DUPLICATE_q\;
\ALT_INV_dati[3]~input_o\ <= NOT \dati[3]~input_o\;
\ALT_INV_dati[2]~input_o\ <= NOT \dati[2]~input_o\;
\ALT_INV_dati[1]~input_o\ <= NOT \dati[1]~input_o\;
\ALT_INV_dir[0]~input_o\ <= NOT \dir[0]~input_o\;
\ALT_INV_dati[0]~input_o\ <= NOT \dati[0]~input_o\;
\ALT_INV_dir[1]~input_o\ <= NOT \dir[1]~input_o\;
\ALT_INV_dir[2]~input_o\ <= NOT \dir[2]~input_o\;
\ALT_INV_ies~input_o\ <= NOT \ies~input_o\;
\ALT_INV_into~input_o\ <= NOT \into~input_o\;
\ALT_INV_iwes~input_o\ <= NOT \iwes~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_ram~19_q\ <= NOT \ram~19_q\;
\ALT_INV_ram~11_q\ <= NOT \ram~11_q\;
\ALT_INV_ram~23_q\ <= NOT \ram~23_q\;
\ALT_INV_ram~15_q\ <= NOT \ram~15_q\;
\ALT_INV_ram~18_q\ <= NOT \ram~18_q\;
\ALT_INV_ram~10_q\ <= NOT \ram~10_q\;
\ALT_INV_ram~22_q\ <= NOT \ram~22_q\;
\ALT_INV_ram~14_q\ <= NOT \ram~14_q\;
\ALT_INV_ram~17_q\ <= NOT \ram~17_q\;
\ALT_INV_ram~9_q\ <= NOT \ram~9_q\;
\ALT_INV_ram~21_q\ <= NOT \ram~21_q\;
\ALT_INV_ram~13_q\ <= NOT \ram~13_q\;
\ALT_INV_ram~16_q\ <= NOT \ram~16_q\;
\ALT_INV_ram~8_q\ <= NOT \ram~8_q\;
\ALT_INV_ram~20_q\ <= NOT \ram~20_q\;
\ALT_INV_ram~12_q\ <= NOT \ram~12_q\;
\ALT_INV_ram~35_q\ <= NOT \ram~35_q\;
\ALT_INV_ram~27_q\ <= NOT \ram~27_q\;
\ALT_INV_ram~39_q\ <= NOT \ram~39_q\;
\ALT_INV_ram~31_q\ <= NOT \ram~31_q\;
\ALT_INV_ram~34_q\ <= NOT \ram~34_q\;
\ALT_INV_ram~26_q\ <= NOT \ram~26_q\;
\ALT_INV_ram~38_q\ <= NOT \ram~38_q\;
\ALT_INV_ram~30_q\ <= NOT \ram~30_q\;
\ALT_INV_ram~33_q\ <= NOT \ram~33_q\;
\ALT_INV_ram~25_q\ <= NOT \ram~25_q\;
\ALT_INV_ram~37_q\ <= NOT \ram~37_q\;
\ALT_INV_ram~29_q\ <= NOT \ram~29_q\;
\ALT_INV_ram~32_q\ <= NOT \ram~32_q\;
\ALT_INV_ram~24_q\ <= NOT \ram~24_q\;
\ALT_INV_ram~36_q\ <= NOT \ram~36_q\;
\ALT_INV_ram~28_q\ <= NOT \ram~28_q\;
ALT_INV_count_i(2) <= NOT count_i(2);
ALT_INV_count_i(1) <= NOT count_i(1);
\ALT_INV_ram~68_combout\ <= NOT \ram~68_combout\;
\ALT_INV_ram~64_combout\ <= NOT \ram~64_combout\;
\ALT_INV_ram~60_combout\ <= NOT \ram~60_combout\;
\ALT_INV_ram~56_combout\ <= NOT \ram~56_combout\;

-- Location: IOOBUF_X89_Y36_N22
\dato[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dato[0]~reg0_q\,
	oe => \dato[0]~en_q\,
	devoe => ww_devoe,
	o => ww_dato(0));

-- Location: IOOBUF_X89_Y36_N5
\dato[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dato[1]~reg0_q\,
	oe => \dato[1]~en_q\,
	devoe => ww_devoe,
	o => ww_dato(1));

-- Location: IOOBUF_X89_Y37_N5
\dato[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dato[2]~reg0_q\,
	oe => \dato[2]~en_q\,
	devoe => ww_devoe,
	o => ww_dato(2));

-- Location: IOOBUF_X89_Y37_N22
\dato[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dato[3]~reg0_q\,
	oe => \dato[3]~en_q\,
	devoe => ww_devoe,
	o => ww_dato(3));

-- Location: IOOBUF_X88_Y81_N3
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

-- Location: IOOBUF_X89_Y38_N39
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count_i[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X89_Y38_N56
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

-- Location: IOIBUF_X89_Y35_N44
\dir[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir(2),
	o => \dir[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\dati[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dati(0),
	o => \dati[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\into~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_into,
	o => \into~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\dir[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir(0),
	o => \dir[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\dir[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir(1),
	o => \dir[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\iwes~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iwes,
	o => \iwes~input_o\);

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

-- Location: LABCELL_X88_Y37_N27
\ram~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~73_combout\ = ( \iwes~input_o\ & ( !\reset~input_o\ & ( (\dir[2]~input_o\ & (\into~input_o\ & (\dir[0]~input_o\ & \dir[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_into~input_o\,
	datac => \ALT_INV_dir[0]~input_o\,
	datad => \ALT_INV_dir[1]~input_o\,
	datae => \ALT_INV_iwes~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \ram~73_combout\);

-- Location: FF_X88_Y35_N46
\ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[0]~input_o\,
	sload => VCC,
	ena => \ram~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~36_q\);

-- Location: MLABCELL_X87_Y36_N6
\ram~32feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~32feeder_combout\ = ( \dati[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[0]~input_o\,
	combout => \ram~32feeder_combout\);

-- Location: LABCELL_X88_Y36_N54
\ram~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~75_combout\ = ( \dir[2]~input_o\ & ( !\reset~input_o\ & ( (!\dir[0]~input_o\ & (\into~input_o\ & (\iwes~input_o\ & \dir[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[0]~input_o\,
	datab => \ALT_INV_into~input_o\,
	datac => \ALT_INV_iwes~input_o\,
	datad => \ALT_INV_dir[1]~input_o\,
	datae => \ALT_INV_dir[2]~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \ram~75_combout\);

-- Location: FF_X87_Y36_N7
\ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~32feeder_combout\,
	ena => \ram~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~32_q\);

-- Location: LABCELL_X88_Y37_N48
\ram~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~72_combout\ = ( \into~input_o\ & ( !\reset~input_o\ & ( (\dir[2]~input_o\ & (\dir[0]~input_o\ & (\iwes~input_o\ & !\dir[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_dir[0]~input_o\,
	datac => \ALT_INV_iwes~input_o\,
	datad => \ALT_INV_dir[1]~input_o\,
	datae => \ALT_INV_into~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \ram~72_combout\);

-- Location: FF_X88_Y35_N4
\ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[0]~input_o\,
	sload => VCC,
	ena => \ram~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~28_q\);

-- Location: LABCELL_X88_Y36_N12
\ram~12feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~12feeder_combout\ = ( \dati[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[0]~input_o\,
	combout => \ram~12feeder_combout\);

-- Location: LABCELL_X88_Y37_N57
\ram~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~76_combout\ = ( \iwes~input_o\ & ( !\reset~input_o\ & ( (!\dir[1]~input_o\ & (\into~input_o\ & (\dir[0]~input_o\ & !\dir[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[1]~input_o\,
	datab => \ALT_INV_into~input_o\,
	datac => \ALT_INV_dir[0]~input_o\,
	datad => \ALT_INV_dir[2]~input_o\,
	datae => \ALT_INV_iwes~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \ram~76_combout\);

-- Location: FF_X88_Y36_N14
\ram~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~12feeder_combout\,
	ena => \ram~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~12_q\);

-- Location: MLABCELL_X87_Y36_N33
\ram~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~16feeder_combout\ = ( \dati[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[0]~input_o\,
	combout => \ram~16feeder_combout\);

-- Location: LABCELL_X88_Y36_N36
\ram~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~79_combout\ = ( !\dir[2]~input_o\ & ( !\dir[0]~input_o\ & ( (!\reset~input_o\ & (\into~input_o\ & (\iwes~input_o\ & \dir[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_into~input_o\,
	datac => \ALT_INV_iwes~input_o\,
	datad => \ALT_INV_dir[1]~input_o\,
	datae => \ALT_INV_dir[2]~input_o\,
	dataf => \ALT_INV_dir[0]~input_o\,
	combout => \ram~79_combout\);

-- Location: FF_X87_Y36_N34
\ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~16feeder_combout\,
	ena => \ram~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~16_q\);

-- Location: LABCELL_X88_Y36_N48
\ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~20feeder_combout\ = ( \dati[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[0]~input_o\,
	combout => \ram~20feeder_combout\);

-- Location: LABCELL_X88_Y37_N39
\ram~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~77_combout\ = ( \iwes~input_o\ & ( !\reset~input_o\ & ( (!\dir[2]~input_o\ & (\into~input_o\ & (\dir[0]~input_o\ & \dir[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_into~input_o\,
	datac => \ALT_INV_dir[0]~input_o\,
	datad => \ALT_INV_dir[1]~input_o\,
	datae => \ALT_INV_iwes~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \ram~77_combout\);

-- Location: FF_X88_Y36_N50
\ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~20feeder_combout\,
	ena => \ram~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~20_q\);

-- Location: MLABCELL_X87_Y36_N24
\ram~8feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~8feeder_combout\ = ( \dati[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[0]~input_o\,
	combout => \ram~8feeder_combout\);

-- Location: LABCELL_X88_Y36_N30
\ram~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~78_combout\ = ( !\dir[2]~input_o\ & ( !\reset~input_o\ & ( (!\dir[0]~input_o\ & (\into~input_o\ & (\iwes~input_o\ & !\dir[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[0]~input_o\,
	datab => \ALT_INV_into~input_o\,
	datac => \ALT_INV_iwes~input_o\,
	datad => \ALT_INV_dir[1]~input_o\,
	datae => \ALT_INV_dir[2]~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \ram~78_combout\);

-- Location: FF_X87_Y36_N25
\ram~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~8feeder_combout\,
	ena => \ram~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~8_q\);

-- Location: LABCELL_X88_Y36_N9
\ram~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~56_combout\ = ( !\dir[1]~input_o\ & ( (!\dir[2]~input_o\ & ((!\dir[0]~input_o\ & (((\ram~8_q\)))) # (\dir[0]~input_o\ & (\ram~12_q\)))) # (\dir[2]~input_o\ & ((((\dir[0]~input_o\))))) ) ) # ( \dir[1]~input_o\ & ( (!\dir[2]~input_o\ & 
-- (((!\dir[0]~input_o\ & (\ram~16_q\)) # (\dir[0]~input_o\ & ((\ram~20_q\)))))) # (\dir[2]~input_o\ & ((((\dir[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001110111000010100101010100001010011101110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_ram~12_q\,
	datac => \ALT_INV_ram~16_q\,
	datad => \ALT_INV_dir[0]~input_o\,
	datae => \ALT_INV_dir[1]~input_o\,
	dataf => \ALT_INV_ram~20_q\,
	datag => \ALT_INV_ram~8_q\,
	combout => \ram~56_combout\);

-- Location: LABCELL_X88_Y37_N30
\ram~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~74_combout\ = ( \into~input_o\ & ( !\dir[1]~input_o\ & ( (\dir[2]~input_o\ & (!\reset~input_o\ & (\iwes~input_o\ & !\dir[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_iwes~input_o\,
	datad => \ALT_INV_dir[0]~input_o\,
	datae => \ALT_INV_into~input_o\,
	dataf => \ALT_INV_dir[1]~input_o\,
	combout => \ram~74_combout\);

-- Location: FF_X87_Y37_N4
\ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[0]~input_o\,
	sload => VCC,
	ena => \ram~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~24_q\);

-- Location: LABCELL_X88_Y36_N24
\ram~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~40_combout\ = ( !\dir[1]~input_o\ & ( (!\dir[2]~input_o\ & ((((\ram~56_combout\))))) # (\dir[2]~input_o\ & (((!\ram~56_combout\ & (\ram~24_q\)) # (\ram~56_combout\ & ((\ram~28_q\)))))) ) ) # ( \dir[1]~input_o\ & ( (!\dir[2]~input_o\ & 
-- ((((\ram~56_combout\))))) # (\dir[2]~input_o\ & (((!\ram~56_combout\ & ((\ram~32_q\))) # (\ram~56_combout\ & (\ram~36_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_ram~36_q\,
	datac => \ALT_INV_ram~32_q\,
	datad => \ALT_INV_ram~28_q\,
	datae => \ALT_INV_dir[1]~input_o\,
	dataf => \ALT_INV_ram~56_combout\,
	datag => \ALT_INV_ram~24_q\,
	combout => \ram~40_combout\);

-- Location: LABCELL_X88_Y36_N42
\dato[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dato[3]~4_combout\ = ( !\reset~input_o\ & ( (!\into~input_o\) # (!\iwes~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_into~input_o\,
	datac => \ALT_INV_iwes~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \dato[3]~4_combout\);

-- Location: FF_X88_Y36_N25
\dato[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~40_combout\,
	ena => \dato[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato[0]~reg0_q\);

-- Location: IOIBUF_X89_Y37_N38
\ies~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ies,
	o => \ies~input_o\);

-- Location: LABCELL_X88_Y37_N12
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \ies~input_o\ & ( \into~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_into~input_o\,
	dataf => \ALT_INV_ies~input_o\,
	combout => \process_0~0_combout\);

-- Location: FF_X88_Y36_N10
\dato[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \process_0~0_combout\,
	sload => VCC,
	ena => \dato[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato[0]~en_q\);

-- Location: IOIBUF_X89_Y35_N78
\dati[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dati(1),
	o => \dati[1]~input_o\);

-- Location: LABCELL_X88_Y35_N33
\ram~37feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~37feeder_combout\ = ( \dati[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[1]~input_o\,
	combout => \ram~37feeder_combout\);

-- Location: FF_X88_Y35_N34
\ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~37feeder_combout\,
	ena => \ram~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~37_q\);

-- Location: MLABCELL_X87_Y36_N45
\ram~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~33feeder_combout\ = ( \dati[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[1]~input_o\,
	combout => \ram~33feeder_combout\);

-- Location: FF_X87_Y36_N46
\ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~33feeder_combout\,
	ena => \ram~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~33_q\);

-- Location: LABCELL_X88_Y35_N15
\ram~29feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~29feeder_combout\ = ( \dati[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[1]~input_o\,
	combout => \ram~29feeder_combout\);

-- Location: FF_X88_Y35_N17
\ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~29feeder_combout\,
	ena => \ram~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~29_q\);

-- Location: FF_X88_Y36_N59
\ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[1]~input_o\,
	sload => VCC,
	ena => \ram~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~13_q\);

-- Location: MLABCELL_X87_Y36_N12
\ram~17feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~17feeder_combout\ = ( \dati[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[1]~input_o\,
	combout => \ram~17feeder_combout\);

-- Location: FF_X87_Y36_N13
\ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~17feeder_combout\,
	ena => \ram~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~17_q\);

-- Location: FF_X88_Y36_N32
\ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[1]~input_o\,
	sload => VCC,
	ena => \ram~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~21_q\);

-- Location: MLABCELL_X87_Y36_N57
\ram~9feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~9feeder_combout\ = ( \dati[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[1]~input_o\,
	combout => \ram~9feeder_combout\);

-- Location: FF_X87_Y36_N58
\ram~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~9feeder_combout\,
	ena => \ram~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~9_q\);

-- Location: LABCELL_X88_Y36_N18
\ram~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~60_combout\ = ( !\dir[1]~input_o\ & ( (!\dir[2]~input_o\ & (((!\dir[0]~input_o\ & ((\ram~9_q\))) # (\dir[0]~input_o\ & (\ram~13_q\))))) # (\dir[2]~input_o\ & ((((\dir[0]~input_o\))))) ) ) # ( \dir[1]~input_o\ & ( (!\dir[2]~input_o\ & 
-- (((!\dir[0]~input_o\ & (\ram~17_q\)) # (\dir[0]~input_o\ & ((\ram~21_q\)))))) # (\dir[2]~input_o\ & ((((\dir[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001110111011101110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_ram~13_q\,
	datac => \ALT_INV_ram~17_q\,
	datad => \ALT_INV_ram~21_q\,
	datae => \ALT_INV_dir[1]~input_o\,
	dataf => \ALT_INV_dir[0]~input_o\,
	datag => \ALT_INV_ram~9_q\,
	combout => \ram~60_combout\);

-- Location: MLABCELL_X87_Y37_N24
\ram~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~25feeder_combout\ = ( \dati[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[1]~input_o\,
	combout => \ram~25feeder_combout\);

-- Location: FF_X87_Y37_N25
\ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~25feeder_combout\,
	ena => \ram~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~25_q\);

-- Location: LABCELL_X88_Y36_N0
\ram~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~44_combout\ = ( !\dir[1]~input_o\ & ( (!\dir[2]~input_o\ & ((((\ram~60_combout\))))) # (\dir[2]~input_o\ & (((!\ram~60_combout\ & (\ram~25_q\)) # (\ram~60_combout\ & ((\ram~29_q\)))))) ) ) # ( \dir[1]~input_o\ & ( (!\dir[2]~input_o\ & 
-- ((((\ram~60_combout\))))) # (\dir[2]~input_o\ & (((!\ram~60_combout\ & ((\ram~33_q\))) # (\ram~60_combout\ & (\ram~37_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_ram~37_q\,
	datac => \ALT_INV_ram~33_q\,
	datad => \ALT_INV_ram~29_q\,
	datae => \ALT_INV_dir[1]~input_o\,
	dataf => \ALT_INV_ram~60_combout\,
	datag => \ALT_INV_ram~25_q\,
	combout => \ram~44_combout\);

-- Location: FF_X88_Y36_N1
\dato[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~44_combout\,
	ena => \dato[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato[1]~reg0_q\);

-- Location: FF_X88_Y36_N40
\dato[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \process_0~0_combout\,
	sload => VCC,
	ena => \dato[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato[1]~en_q\);

-- Location: IOIBUF_X89_Y37_N55
\dati[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dati(2),
	o => \dati[2]~input_o\);

-- Location: LABCELL_X88_Y38_N48
\ram~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~38feeder_combout\ = ( \dati[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[2]~input_o\,
	combout => \ram~38feeder_combout\);

-- Location: FF_X88_Y38_N49
\ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~38feeder_combout\,
	ena => \ram~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~38_q\);

-- Location: MLABCELL_X87_Y37_N54
\ram~34feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~34feeder_combout\ = ( \dati[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[2]~input_o\,
	combout => \ram~34feeder_combout\);

-- Location: FF_X87_Y37_N55
\ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~34feeder_combout\,
	ena => \ram~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~34_q\);

-- Location: LABCELL_X88_Y38_N54
\ram~30feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~30feeder_combout\ = ( \dati[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[2]~input_o\,
	combout => \ram~30feeder_combout\);

-- Location: FF_X88_Y38_N56
\ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~30feeder_combout\,
	ena => \ram~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~30_q\);

-- Location: FF_X87_Y36_N52
\ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[2]~input_o\,
	sload => VCC,
	ena => \ram~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~18_q\);

-- Location: FF_X88_Y37_N14
\ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[2]~input_o\,
	sload => VCC,
	ena => \ram~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~22_q\);

-- Location: FF_X88_Y37_N26
\ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[2]~input_o\,
	sload => VCC,
	ena => \ram~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~14_q\);

-- Location: MLABCELL_X87_Y37_N21
\ram~10feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~10feeder_combout\ = ( \dati[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[2]~input_o\,
	combout => \ram~10feeder_combout\);

-- Location: FF_X87_Y37_N22
\ram~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~10feeder_combout\,
	ena => \ram~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~10_q\);

-- Location: LABCELL_X88_Y37_N42
\ram~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~64_combout\ = ( !\dir[1]~input_o\ & ( (!\dir[2]~input_o\ & ((!\dir[0]~input_o\ & (\ram~10_q\)) # (\dir[0]~input_o\ & (((\ram~14_q\)))))) # (\dir[2]~input_o\ & (\dir[0]~input_o\)) ) ) # ( \dir[1]~input_o\ & ( (!\dir[2]~input_o\ & ((!\dir[0]~input_o\ & 
-- (\ram~18_q\)) # (\dir[0]~input_o\ & (((\ram~22_q\)))))) # (\dir[2]~input_o\ & (\dir[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_dir[0]~input_o\,
	datac => \ALT_INV_ram~18_q\,
	datad => \ALT_INV_ram~22_q\,
	datae => \ALT_INV_dir[1]~input_o\,
	dataf => \ALT_INV_ram~14_q\,
	datag => \ALT_INV_ram~10_q\,
	combout => \ram~64_combout\);

-- Location: MLABCELL_X87_Y37_N42
\ram~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~26feeder_combout\ = ( \dati[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[2]~input_o\,
	combout => \ram~26feeder_combout\);

-- Location: FF_X87_Y37_N43
\ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~26feeder_combout\,
	ena => \ram~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~26_q\);

-- Location: LABCELL_X88_Y37_N0
\ram~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~48_combout\ = ( !\dir[1]~input_o\ & ( ((!\dir[2]~input_o\ & (((\ram~64_combout\)))) # (\dir[2]~input_o\ & ((!\ram~64_combout\ & (\ram~26_q\)) # (\ram~64_combout\ & ((\ram~30_q\)))))) ) ) # ( \dir[1]~input_o\ & ( (!\dir[2]~input_o\ & 
-- ((((\ram~64_combout\))))) # (\dir[2]~input_o\ & (((!\ram~64_combout\ & ((\ram~34_q\))) # (\ram~64_combout\ & (\ram~38_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~38_q\,
	datab => \ALT_INV_dir[2]~input_o\,
	datac => \ALT_INV_ram~34_q\,
	datad => \ALT_INV_ram~30_q\,
	datae => \ALT_INV_dir[1]~input_o\,
	dataf => \ALT_INV_ram~64_combout\,
	datag => \ALT_INV_ram~26_q\,
	combout => \ram~48_combout\);

-- Location: FF_X88_Y37_N1
\dato[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~48_combout\,
	ena => \dato[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato[2]~reg0_q\);

-- Location: FF_X88_Y37_N55
\dato[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \process_0~0_combout\,
	sload => VCC,
	ena => \dato[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato[2]~en_q\);

-- Location: IOIBUF_X89_Y38_N21
\dati[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dati(3),
	o => \dati[3]~input_o\);

-- Location: LABCELL_X88_Y38_N39
\ram~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~31feeder_combout\ = ( \dati[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[3]~input_o\,
	combout => \ram~31feeder_combout\);

-- Location: FF_X88_Y38_N40
\ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~31feeder_combout\,
	ena => \ram~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~31_q\);

-- Location: MLABCELL_X87_Y37_N39
\ram~35feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~35feeder_combout\ = ( \dati[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[3]~input_o\,
	combout => \ram~35feeder_combout\);

-- Location: FF_X87_Y37_N40
\ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~35feeder_combout\,
	ena => \ram~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~35_q\);

-- Location: LABCELL_X88_Y38_N21
\ram~39feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~39feeder_combout\ = ( \dati[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[3]~input_o\,
	combout => \ram~39feeder_combout\);

-- Location: FF_X88_Y38_N22
\ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~39feeder_combout\,
	ena => \ram~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~39_q\);

-- Location: MLABCELL_X87_Y36_N0
\ram~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~19feeder_combout\ = ( \dati[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[3]~input_o\,
	combout => \ram~19feeder_combout\);

-- Location: FF_X87_Y36_N1
\ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~19feeder_combout\,
	ena => \ram~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~19_q\);

-- Location: FF_X88_Y37_N53
\ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[3]~input_o\,
	sload => VCC,
	ena => \ram~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~15_q\);

-- Location: FF_X88_Y37_N32
\ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dati[3]~input_o\,
	sload => VCC,
	ena => \ram~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~23_q\);

-- Location: MLABCELL_X87_Y37_N9
\ram~11feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~11feeder_combout\ = ( \dati[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[3]~input_o\,
	combout => \ram~11feeder_combout\);

-- Location: FF_X87_Y37_N10
\ram~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~11feeder_combout\,
	ena => \ram~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~11_q\);

-- Location: LABCELL_X88_Y37_N9
\ram~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~68_combout\ = ( !\dir[1]~input_o\ & ( (!\dir[2]~input_o\ & ((!\dir[0]~input_o\ & (\ram~11_q\)) # (\dir[0]~input_o\ & (((\ram~15_q\)))))) # (\dir[2]~input_o\ & (\dir[0]~input_o\)) ) ) # ( \dir[1]~input_o\ & ( (!\dir[2]~input_o\ & ((!\dir[0]~input_o\ & 
-- (\ram~19_q\)) # (\dir[0]~input_o\ & (((\ram~23_q\)))))) # (\dir[2]~input_o\ & (\dir[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dir[2]~input_o\,
	datab => \ALT_INV_dir[0]~input_o\,
	datac => \ALT_INV_ram~19_q\,
	datad => \ALT_INV_ram~15_q\,
	datae => \ALT_INV_dir[1]~input_o\,
	dataf => \ALT_INV_ram~23_q\,
	datag => \ALT_INV_ram~11_q\,
	combout => \ram~68_combout\);

-- Location: MLABCELL_X87_Y37_N33
\ram~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~27feeder_combout\ = ( \dati[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dati[3]~input_o\,
	combout => \ram~27feeder_combout\);

-- Location: FF_X87_Y37_N34
\ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~27feeder_combout\,
	ena => \ram~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~27_q\);

-- Location: LABCELL_X88_Y37_N18
\ram~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~52_combout\ = ( !\dir[1]~input_o\ & ( (!\dir[2]~input_o\ & ((((\ram~68_combout\))))) # (\dir[2]~input_o\ & (((!\ram~68_combout\ & ((\ram~27_q\))) # (\ram~68_combout\ & (\ram~31_q\))))) ) ) # ( \dir[1]~input_o\ & ( ((!\dir[2]~input_o\ & 
-- (((\ram~68_combout\)))) # (\dir[2]~input_o\ & ((!\ram~68_combout\ & (\ram~35_q\)) # (\ram~68_combout\ & ((\ram~39_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ram~31_q\,
	datab => \ALT_INV_dir[2]~input_o\,
	datac => \ALT_INV_ram~35_q\,
	datad => \ALT_INV_ram~39_q\,
	datae => \ALT_INV_dir[1]~input_o\,
	dataf => \ALT_INV_ram~68_combout\,
	datag => \ALT_INV_ram~27_q\,
	combout => \ram~52_combout\);

-- Location: FF_X88_Y37_N19
\dato[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ram~52_combout\,
	ena => \dato[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato[3]~reg0_q\);

-- Location: FF_X88_Y37_N37
\dato[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \process_0~0_combout\,
	sload => VCC,
	ena => \dato[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato[3]~en_q\);

-- Location: FF_X88_Y38_N31
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

-- Location: LABCELL_X88_Y38_N12
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

-- Location: FF_X88_Y38_N13
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

-- Location: LABCELL_X88_Y38_N9
\count_i[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_i[2]~feeder_combout\ = ( \count_i[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_i[1]~DUPLICATE_q\,
	combout => \count_i[2]~feeder_combout\);

-- Location: FF_X88_Y38_N10
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

-- Location: FF_X88_Y38_N14
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

-- Location: LABCELL_X88_Y38_N30
\feedback~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \feedback~0_combout\ = ( count_i(2) & ( count_i(1) ) ) # ( !count_i(2) & ( !count_i(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_count_i(2),
	dataf => ALT_INV_count_i(1),
	combout => \feedback~0_combout\);

-- Location: FF_X88_Y38_N32
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

-- Location: MLABCELL_X84_Y34_N0
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


