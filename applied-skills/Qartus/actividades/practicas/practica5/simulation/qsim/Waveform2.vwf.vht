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
-- Generated on "10/21/2022 17:45:38"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dati : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dato : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dir : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ies : STD_LOGIC;
SIGNAL into : STD_LOGIC;
SIGNAL iwes : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT sdram
	PORT (
	clk : IN STD_LOGIC;
	count : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	dati : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dato : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	dir : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ies : IN STD_LOGIC;
	into : IN STD_LOGIC;
	iwes : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sdram
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count => count,
	dati => dati,
	dato => dato,
	dir => dir,
	ies => ies,
	into => into,
	iwes => iwes,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
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

-- ies
t_prcs_ies: PROCESS
BEGIN
	ies <= '0';
	WAIT FOR 40000 ps;
	ies <= '1';
	WAIT FOR 130000 ps;
	ies <= '0';
	WAIT FOR 75000 ps;
	ies <= '1';
	WAIT FOR 15000 ps;
	ies <= '0';
WAIT;
END PROCESS t_prcs_ies;

-- into
t_prcs_into: PROCESS
BEGIN
	into <= '0';
	WAIT FOR 40000 ps;
	into <= '1';
	WAIT FOR 130000 ps;
	into <= '0';
	WAIT FOR 75000 ps;
	into <= '1';
	WAIT FOR 15000 ps;
	into <= '0';
WAIT;
END PROCESS t_prcs_into;

-- iwes
t_prcs_iwes: PROCESS
BEGIN
	iwes <= '0';
	WAIT FOR 245000 ps;
	iwes <= '1';
	WAIT FOR 15000 ps;
	iwes <= '0';
WAIT;
END PROCESS t_prcs_iwes;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END sdram_arch;
