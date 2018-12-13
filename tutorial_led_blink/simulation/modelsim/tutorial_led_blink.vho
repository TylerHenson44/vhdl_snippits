-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/10/2018 20:43:18"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tutorial_led_blink IS
    PORT (
	i_clock : IN std_logic;
	i_enable : IN std_logic;
	i_switch_1 : IN std_logic;
	i_switch_2 : IN std_logic;
	o_led_drive : BUFFER std_logic
	);
END tutorial_led_blink;

-- Design Ports Information
-- o_led_drive	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_enable	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_switch_1	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_switch_2	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tutorial_led_blink IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_enable : std_logic;
SIGNAL ww_i_switch_1 : std_logic;
SIGNAL ww_i_switch_2 : std_logic;
SIGNAL ww_o_led_drive : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \i_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[11]~DUPLICATE_q\ : std_logic;
SIGNAL \r_CNT_100HZ[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \r_CNT_100HZ[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \r_CNT_100HZ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \r_CNT_100HZ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \r_CNT_100HZ[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \r_TOGGLE_100HZ~0_combout\ : std_logic;
SIGNAL \r_TOGGLE_100HZ~q\ : std_logic;
SIGNAL \i_switch_2~input_o\ : std_logic;
SIGNAL \i_switch_1~input_o\ : std_logic;
SIGNAL \i_enable~input_o\ : std_logic;
SIGNAL \o_led_drive~0_combout\ : std_logic;
SIGNAL r_CNT_100HZ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_r_CNT_100HZ[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r_CNT_100HZ[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i_switch_2~input_o\ : std_logic;
SIGNAL \ALT_INV_i_switch_1~input_o\ : std_logic;
SIGNAL \ALT_INV_i_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_r_TOGGLE_100HZ~q\ : std_logic;
SIGNAL ALT_INV_r_CNT_100HZ : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_i_clock <= i_clock;
ww_i_enable <= i_enable;
ww_i_switch_1 <= i_switch_1;
ww_i_switch_2 <= i_switch_2;
o_led_drive <= ww_o_led_drive;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_r_CNT_100HZ[9]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[9]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[8]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[8]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[7]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[7]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[6]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[6]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[4]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[4]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[3]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[3]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[1]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[1]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[0]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[0]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[17]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[17]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[16]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[16]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[15]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[15]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[12]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[12]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[11]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[11]~DUPLICATE_q\;
\ALT_INV_r_CNT_100HZ[5]~DUPLICATE_q\ <= NOT \r_CNT_100HZ[5]~DUPLICATE_q\;
\ALT_INV_i_switch_2~input_o\ <= NOT \i_switch_2~input_o\;
\ALT_INV_i_switch_1~input_o\ <= NOT \i_switch_1~input_o\;
\ALT_INV_i_enable~input_o\ <= NOT \i_enable~input_o\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_r_TOGGLE_100HZ~q\ <= NOT \r_TOGGLE_100HZ~q\;
ALT_INV_r_CNT_100HZ(10) <= NOT r_CNT_100HZ(10);
ALT_INV_r_CNT_100HZ(9) <= NOT r_CNT_100HZ(9);
ALT_INV_r_CNT_100HZ(8) <= NOT r_CNT_100HZ(8);
ALT_INV_r_CNT_100HZ(7) <= NOT r_CNT_100HZ(7);
ALT_INV_r_CNT_100HZ(6) <= NOT r_CNT_100HZ(6);
ALT_INV_r_CNT_100HZ(4) <= NOT r_CNT_100HZ(4);
ALT_INV_r_CNT_100HZ(3) <= NOT r_CNT_100HZ(3);
ALT_INV_r_CNT_100HZ(2) <= NOT r_CNT_100HZ(2);
ALT_INV_r_CNT_100HZ(1) <= NOT r_CNT_100HZ(1);
ALT_INV_r_CNT_100HZ(0) <= NOT r_CNT_100HZ(0);
ALT_INV_r_CNT_100HZ(17) <= NOT r_CNT_100HZ(17);
ALT_INV_r_CNT_100HZ(16) <= NOT r_CNT_100HZ(16);
ALT_INV_r_CNT_100HZ(15) <= NOT r_CNT_100HZ(15);
ALT_INV_r_CNT_100HZ(14) <= NOT r_CNT_100HZ(14);
ALT_INV_r_CNT_100HZ(13) <= NOT r_CNT_100HZ(13);
ALT_INV_r_CNT_100HZ(12) <= NOT r_CNT_100HZ(12);
ALT_INV_r_CNT_100HZ(11) <= NOT r_CNT_100HZ(11);
ALT_INV_r_CNT_100HZ(5) <= NOT r_CNT_100HZ(5);

-- Location: IOOBUF_X0_Y18_N79
\o_led_drive~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_led_drive~0_combout\,
	devoe => ww_devoe,
	o => ww_o_led_drive);

-- Location: IOIBUF_X22_Y0_N1
\i_clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clock,
	o => \i_clock~input_o\);

-- Location: CLKCTRL_G6
\i_clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_clock~input_o\,
	outclk => \i_clock~inputCLKENA0_outclk\);

-- Location: MLABCELL_X28_Y4_N0
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( r_CNT_100HZ(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~34\ = CARRY(( r_CNT_100HZ(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_r_CNT_100HZ(0),
	cin => GND,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X28_Y4_N2
\r_CNT_100HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(0));

-- Location: MLABCELL_X28_Y4_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( r_CNT_100HZ(1) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( r_CNT_100HZ(1) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_r_CNT_100HZ(1),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X28_Y4_N5
\r_CNT_100HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(1));

-- Location: MLABCELL_X28_Y4_N6
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( r_CNT_100HZ(2) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( r_CNT_100HZ(2) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_r_CNT_100HZ(2),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X28_Y4_N7
\r_CNT_100HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(2));

-- Location: MLABCELL_X28_Y4_N9
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \r_CNT_100HZ[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \r_CNT_100HZ[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_r_CNT_100HZ[3]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X28_Y4_N11
\r_CNT_100HZ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[3]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N12
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \r_CNT_100HZ[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \r_CNT_100HZ[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_r_CNT_100HZ[4]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X28_Y4_N14
\r_CNT_100HZ[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[4]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N15
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \r_CNT_100HZ[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~2\ = CARRY(( \r_CNT_100HZ[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_r_CNT_100HZ[5]~DUPLICATE_q\,
	cin => \Add0~50\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X28_Y4_N17
\r_CNT_100HZ[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[5]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \r_CNT_100HZ[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~54\ = CARRY(( \r_CNT_100HZ[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_r_CNT_100HZ[6]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X28_Y4_N20
\r_CNT_100HZ[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[6]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N21
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \r_CNT_100HZ[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \r_CNT_100HZ[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_r_CNT_100HZ[7]~DUPLICATE_q\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X28_Y4_N23
\r_CNT_100HZ[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[7]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N24
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \r_CNT_100HZ[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \r_CNT_100HZ[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_r_CNT_100HZ[8]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: MLABCELL_X28_Y4_N27
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \r_CNT_100HZ[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \r_CNT_100HZ[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_r_CNT_100HZ[9]~DUPLICATE_q\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X28_Y4_N29
\r_CNT_100HZ[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[9]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N30
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( r_CNT_100HZ(10) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( r_CNT_100HZ(10) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_r_CNT_100HZ(10),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X28_Y4_N31
\r_CNT_100HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(10));

-- Location: MLABCELL_X28_Y4_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \r_CNT_100HZ[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~6\ = CARRY(( \r_CNT_100HZ[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r_CNT_100HZ[11]~DUPLICATE_q\,
	cin => \Add0~70\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X28_Y4_N35
\r_CNT_100HZ[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[11]~DUPLICATE_q\);

-- Location: FF_X28_Y4_N47
\r_CNT_100HZ[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[15]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \r_CNT_100HZ[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \r_CNT_100HZ[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_r_CNT_100HZ[12]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X28_Y4_N38
\r_CNT_100HZ[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[12]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( r_CNT_100HZ(13) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( r_CNT_100HZ(13) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_r_CNT_100HZ(13),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X28_Y4_N41
\r_CNT_100HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(13));

-- Location: MLABCELL_X28_Y4_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( r_CNT_100HZ(14) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( r_CNT_100HZ(14) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_r_CNT_100HZ(14),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X28_Y4_N43
\r_CNT_100HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(14));

-- Location: MLABCELL_X28_Y4_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \r_CNT_100HZ[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \r_CNT_100HZ[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_r_CNT_100HZ[15]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X28_Y4_N46
\r_CNT_100HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(15));

-- Location: FF_X28_Y4_N37
\r_CNT_100HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(12));

-- Location: FF_X28_Y4_N50
\r_CNT_100HZ[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[16]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \r_CNT_100HZ[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \r_CNT_100HZ[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_r_CNT_100HZ[16]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X28_Y4_N49
\r_CNT_100HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(16));

-- Location: FF_X28_Y4_N53
\r_CNT_100HZ[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[17]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \r_CNT_100HZ[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r_CNT_100HZ[17]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: FF_X28_Y4_N52
\r_CNT_100HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(17));

-- Location: LABCELL_X29_Y4_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !r_CNT_100HZ(13) & ( r_CNT_100HZ(17) & ( (r_CNT_100HZ(15) & (r_CNT_100HZ(14) & (r_CNT_100HZ(12) & r_CNT_100HZ(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_r_CNT_100HZ(15),
	datab => ALT_INV_r_CNT_100HZ(14),
	datac => ALT_INV_r_CNT_100HZ(12),
	datad => ALT_INV_r_CNT_100HZ(16),
	datae => ALT_INV_r_CNT_100HZ(13),
	dataf => ALT_INV_r_CNT_100HZ(17),
	combout => \Equal0~0_combout\);

-- Location: FF_X28_Y4_N10
\r_CNT_100HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(3));

-- Location: FF_X28_Y4_N1
\r_CNT_100HZ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[0]~DUPLICATE_q\);

-- Location: FF_X28_Y4_N13
\r_CNT_100HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(4));

-- Location: FF_X28_Y4_N4
\r_CNT_100HZ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[1]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y4_N18
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !r_CNT_100HZ(4) & ( \r_CNT_100HZ[1]~DUPLICATE_q\ & ( (r_CNT_100HZ(3) & (r_CNT_100HZ(2) & \r_CNT_100HZ[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_r_CNT_100HZ(3),
	datac => ALT_INV_r_CNT_100HZ(2),
	datad => \ALT_INV_r_CNT_100HZ[0]~DUPLICATE_q\,
	datae => ALT_INV_r_CNT_100HZ(4),
	dataf => \ALT_INV_r_CNT_100HZ[1]~DUPLICATE_q\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X28_Y4_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~2_combout\ & ( \Equal0~1_combout\ & ( (!\r_CNT_100HZ[5]~DUPLICATE_q\ & (!\r_CNT_100HZ[11]~DUPLICATE_q\ & \Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_r_CNT_100HZ[5]~DUPLICATE_q\,
	datac => \ALT_INV_r_CNT_100HZ[11]~DUPLICATE_q\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: FF_X28_Y4_N26
\r_CNT_100HZ[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_CNT_100HZ[8]~DUPLICATE_q\);

-- Location: FF_X28_Y4_N25
\r_CNT_100HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(8));

-- Location: FF_X28_Y4_N28
\r_CNT_100HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(9));

-- Location: FF_X28_Y4_N19
\r_CNT_100HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(6));

-- Location: FF_X28_Y4_N22
\r_CNT_100HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(7));

-- Location: LABCELL_X29_Y4_N36
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( r_CNT_100HZ(7) & ( !r_CNT_100HZ(10) & ( (!r_CNT_100HZ(8) & (!r_CNT_100HZ(9) & !r_CNT_100HZ(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_r_CNT_100HZ(8),
	datac => ALT_INV_r_CNT_100HZ(9),
	datad => ALT_INV_r_CNT_100HZ(6),
	datae => ALT_INV_r_CNT_100HZ(7),
	dataf => ALT_INV_r_CNT_100HZ(10),
	combout => \Equal0~2_combout\);

-- Location: FF_X28_Y4_N34
\r_CNT_100HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(11));

-- Location: FF_X28_Y4_N16
\r_CNT_100HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CNT_100HZ(5));

-- Location: LABCELL_X29_Y4_N24
\r_TOGGLE_100HZ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \r_TOGGLE_100HZ~0_combout\ = ( \r_TOGGLE_100HZ~q\ & ( \Equal0~0_combout\ & ( (!\Equal0~2_combout\) # (((!\Equal0~1_combout\) # (r_CNT_100HZ(5))) # (r_CNT_100HZ(11))) ) ) ) # ( !\r_TOGGLE_100HZ~q\ & ( \Equal0~0_combout\ & ( (\Equal0~2_combout\ & 
-- (!r_CNT_100HZ(11) & (\Equal0~1_combout\ & !r_CNT_100HZ(5)))) ) ) ) # ( \r_TOGGLE_100HZ~q\ & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => ALT_INV_r_CNT_100HZ(11),
	datac => \ALT_INV_Equal0~1_combout\,
	datad => ALT_INV_r_CNT_100HZ(5),
	datae => \ALT_INV_r_TOGGLE_100HZ~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \r_TOGGLE_100HZ~0_combout\);

-- Location: FF_X29_Y4_N26
r_TOGGLE_100HZ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \r_TOGGLE_100HZ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_TOGGLE_100HZ~q\);

-- Location: IOIBUF_X33_Y0_N41
\i_switch_2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_switch_2,
	o => \i_switch_2~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\i_switch_1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_switch_1,
	o => \i_switch_1~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\i_enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable,
	o => \i_enable~input_o\);

-- Location: LABCELL_X29_Y4_N42
\o_led_drive~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_led_drive~0_combout\ = ( \i_enable~input_o\ & ( (\r_TOGGLE_100HZ~q\ & (!\i_switch_2~input_o\ & !\i_switch_1~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r_TOGGLE_100HZ~q\,
	datab => \ALT_INV_i_switch_2~input_o\,
	datac => \ALT_INV_i_switch_1~input_o\,
	dataf => \ALT_INV_i_enable~input_o\,
	combout => \o_led_drive~0_combout\);

-- Location: LABCELL_X32_Y34_N0
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


