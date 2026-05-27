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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/19/2022 18:02:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sdram
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sdram_vhd_vec_tst IS
END sdram_vhd_vec_tst;
ARCHITECTURE sdram_arch OF sdram_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ce : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dati : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dato : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dir : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL oe : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL we : STD_LOGIC;
COMPONENT sdram
	PORT (
	ce : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	count : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	dati : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dato : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	dir : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	oe : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sdram
	PORT MAP (
-- list connections between master ports and signals
	ce => ce,
	clk => clk,
	count => count,
	dati => dati,
	dato => dato,
	dir => dir,
	oe => oe,
	reset => reset,
	we => we
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- ce
t_prcs_ce: PROCESS
BEGIN
	ce <= '0';
	WAIT FOR 60000 ps;
	ce <= '1';
	WAIT FOR 40000 ps;
	ce <= '0';
	WAIT FOR 160000 ps;
	ce <= '1';
	WAIT FOR 110000 ps;
	ce <= '0';
	WAIT FOR 340000 ps;
	ce <= '1';
	WAIT FOR 40000 ps;
	ce <= '0';
WAIT;
END PROCESS t_prcs_ce;

-- oe
t_prcs_oe: PROCESS
BEGIN
	oe <= '0';
	WAIT FOR 60000 ps;
	oe <= '1';
	WAIT FOR 40000 ps;
	oe <= '0';
	WAIT FOR 160000 ps;
	oe <= '1';
	WAIT FOR 110000 ps;
	oe <= '0';
	WAIT FOR 230000 ps;
	oe <= '1';
	WAIT FOR 40000 ps;
	oe <= '0';
	WAIT FOR 70000 ps;
	oe <= '1';
	WAIT FOR 40000 ps;
	oe <= '0';
WAIT;
END PROCESS t_prcs_oe;

-- we
t_prcs_we: PROCESS
BEGIN
	we <= '0';
	WAIT FOR 60000 ps;
	we <= '1';
	WAIT FOR 80000 ps;
	we <= '0';
	WAIT FOR 330000 ps;
	we <= '1';
	WAIT FOR 40000 ps;
	we <= '0';
	WAIT FOR 90000 ps;
	we <= '1';
	WAIT FOR 40000 ps;
	we <= '0';
WAIT;
END PROCESS t_prcs_we;
-- dati[3]
t_prcs_dati_3: PROCESS
BEGIN
	dati(3) <= '0';
WAIT;
END PROCESS t_prcs_dati_3;
-- dati[2]
t_prcs_dati_2: PROCESS
BEGIN
	dati(2) <= '0';
WAIT;
END PROCESS t_prcs_dati_2;
-- dati[1]
t_prcs_dati_1: PROCESS
BEGIN
	dati(1) <= '0';
WAIT;
END PROCESS t_prcs_dati_1;
-- dati[0]
t_prcs_dati_0: PROCESS
BEGIN
	dati(0) <= '0';
WAIT;
END PROCESS t_prcs_dati_0;
-- dir[2]
t_prcs_dir_2: PROCESS
BEGIN
	dir(2) <= '0';
WAIT;
END PROCESS t_prcs_dir_2;
-- dir[1]
t_prcs_dir_1: PROCESS
BEGIN
	dir(1) <= '0';
WAIT;
END PROCESS t_prcs_dir_1;
-- dir[0]
t_prcs_dir_0: PROCESS
BEGIN
	dir(0) <= '0';
WAIT;
END PROCESS t_prcs_dir_0;
END sdram_arch;
