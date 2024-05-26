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

-- DATE "05/27/2024 00:30:06"

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

ENTITY 	home_screen_block_diagram IS
    PORT (
	VGA_VS : OUT std_logic;
	CLOCK_50 : IN std_logic;
	PS2_DAT : INOUT std_logic;
	PS2_CLK : INOUT std_logic;
	VGA_HS : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR0 : OUT std_logic;
	LEDR1 : OUT std_logic;
	LEDR3 : OUT std_logic;
	LEDR4 : OUT std_logic;
	VGA_B : OUT std_logic_vector(3 DOWNTO 3);
	VGA_G : OUT std_logic_vector(3 DOWNTO 3);
	VGA_R : OUT std_logic_vector(3 DOWNTO 3);
	key : IN std_logic_vector(1 DOWNTO 0);
	sw : IN std_logic_vector(9 DOWNTO 0)
	);
END home_screen_block_diagram;

-- Design Ports Information
-- VGA_VS	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_HS	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR0	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR3	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR4	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[3]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[3]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- key[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_DAT	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PS2_CLK	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF home_screen_block_diagram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR0 : std_logic;
SIGNAL ww_LEDR1 : std_logic;
SIGNAL ww_LEDR3 : std_logic;
SIGNAL ww_LEDR4 : std_logic;
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \inst5|filter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|Equal2~0_combout\ : std_logic;
SIGNAL \inst5|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst5|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst5|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst5|inhibit_wait_count[0]~0_combout\ : std_logic;
SIGNAL \inst5|Add0~6\ : std_logic;
SIGNAL \inst5|Add0~1_sumout\ : std_logic;
SIGNAL \inst5|Selector0~0_combout\ : std_logic;
SIGNAL \inst5|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst5|Add0~41_sumout\ : std_logic;
SIGNAL \inst5|Add0~42\ : std_logic;
SIGNAL \inst5|Add0~37_sumout\ : std_logic;
SIGNAL \inst5|Add0~38\ : std_logic;
SIGNAL \inst5|Add0~33_sumout\ : std_logic;
SIGNAL \inst5|Add0~34\ : std_logic;
SIGNAL \inst5|Add0~29_sumout\ : std_logic;
SIGNAL \inst5|Add0~30\ : std_logic;
SIGNAL \inst5|Add0~25_sumout\ : std_logic;
SIGNAL \inst5|Add0~26\ : std_logic;
SIGNAL \inst5|Add0~21_sumout\ : std_logic;
SIGNAL \inst5|Add0~22\ : std_logic;
SIGNAL \inst5|Add0~17_sumout\ : std_logic;
SIGNAL \inst5|Add0~18\ : std_logic;
SIGNAL \inst5|Add0~13_sumout\ : std_logic;
SIGNAL \inst5|Add0~14\ : std_logic;
SIGNAL \inst5|Add0~9_sumout\ : std_logic;
SIGNAL \inst5|Add0~10\ : std_logic;
SIGNAL \inst5|Add0~5_sumout\ : std_logic;
SIGNAL \inst5|Selector1~0_combout\ : std_logic;
SIGNAL \inst5|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst5|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \PS2_DAT~input_o\ : std_logic;
SIGNAL \inst5|INCNT~3_combout\ : std_logic;
SIGNAL \inst5|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst5|send_char~0_combout\ : std_logic;
SIGNAL \inst5|send_char~q\ : std_logic;
SIGNAL \inst5|output_ready~0_combout\ : std_logic;
SIGNAL \inst5|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst5|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst5|OUTCNT[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|output_ready~q\ : std_logic;
SIGNAL \inst5|Selector3~0_combout\ : std_logic;
SIGNAL \inst5|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst5|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst5|INCNT~2_combout\ : std_logic;
SIGNAL \inst5|INCNT~0_combout\ : std_logic;
SIGNAL \inst5|INCNT~4_combout\ : std_logic;
SIGNAL \inst5|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst5|READ_CHAR~q\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|iready_set~0_combout\ : std_logic;
SIGNAL \inst5|iready_set~feeder_combout\ : std_logic;
SIGNAL \inst5|iready_set~q\ : std_logic;
SIGNAL \inst5|Selector4~0_combout\ : std_logic;
SIGNAL \inst5|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst5|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst5|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst5|Selector6~0_combout\ : std_logic;
SIGNAL \inst5|send_data~q\ : std_logic;
SIGNAL \inst5|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst5|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst5|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst5|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst5|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst5|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst5|WideOr4~combout\ : std_logic;
SIGNAL \inst2|Add1~33_sumout\ : std_logic;
SIGNAL \inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst2|Add0~26\ : std_logic;
SIGNAL \inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst2|Add0~22\ : std_logic;
SIGNAL \inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst2|Add0~14\ : std_logic;
SIGNAL \inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|Add0~18\ : std_logic;
SIGNAL \inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst2|Add0~6\ : std_logic;
SIGNAL \inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|Add0~2\ : std_logic;
SIGNAL \inst2|Add0~34\ : std_logic;
SIGNAL \inst2|Add0~37_sumout\ : std_logic;
SIGNAL \inst2|Add0~38\ : std_logic;
SIGNAL \inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst2|h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~33_sumout\ : std_logic;
SIGNAL \inst2|h_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|v_count[0]~0_combout\ : std_logic;
SIGNAL \inst2|Add1~2\ : std_logic;
SIGNAL \inst2|Add1~29_sumout\ : std_logic;
SIGNAL \inst2|Add1~30\ : std_logic;
SIGNAL \inst2|Add1~21_sumout\ : std_logic;
SIGNAL \inst2|Add1~22\ : std_logic;
SIGNAL \inst2|Add1~17_sumout\ : std_logic;
SIGNAL \inst2|v_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~18\ : std_logic;
SIGNAL \inst2|Add1~9_sumout\ : std_logic;
SIGNAL \inst2|Add1~10\ : std_logic;
SIGNAL \inst2|Add1~13_sumout\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst2|Add1~14\ : std_logic;
SIGNAL \inst2|Add1~25_sumout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|process_0~7_combout\ : std_logic;
SIGNAL \inst2|Add1~34\ : std_logic;
SIGNAL \inst2|Add1~37_sumout\ : std_logic;
SIGNAL \inst2|Add1~38\ : std_logic;
SIGNAL \inst2|Add1~5_sumout\ : std_logic;
SIGNAL \inst2|Add1~6\ : std_logic;
SIGNAL \inst2|Add1~1_sumout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|vert_sync~q\ : std_logic;
SIGNAL \inst2|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst2|vert_sync_out~q\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|process_0~8_combout\ : std_logic;
SIGNAL \inst2|horiz_sync~q\ : std_logic;
SIGNAL \inst2|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst2|horiz_sync_out~q\ : std_logic;
SIGNAL \inst5|new_cursor_row[2]~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_COUNT~0_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[0]~0_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst5|Equal4~0_combout\ : std_logic;
SIGNAL \inst5|left_button~0_combout\ : std_logic;
SIGNAL \inst5|Equal3~0_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add4~11\ : std_logic;
SIGNAL \inst5|Add4~27\ : std_logic;
SIGNAL \inst5|Add4~23\ : std_logic;
SIGNAL \inst5|Add4~19\ : std_logic;
SIGNAL \inst5|Add4~15\ : std_logic;
SIGNAL \inst5|Add4~39\ : std_logic;
SIGNAL \inst5|Add4~35\ : std_logic;
SIGNAL \inst5|Add4~31\ : std_logic;
SIGNAL \inst5|Add4~5_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst5|new_cursor_row[9]~1_combout\ : std_logic;
SIGNAL \inst5|Add4~9_sumout\ : std_logic;
SIGNAL \inst5|LessThan5~0_combout\ : std_logic;
SIGNAL \inst5|Add4~29_sumout\ : std_logic;
SIGNAL \inst5|LessThan5~1_combout\ : std_logic;
SIGNAL \inst5|LessThan5~2_combout\ : std_logic;
SIGNAL \inst5|cursor_row~8_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst5|Add4~10\ : std_logic;
SIGNAL \inst5|Add4~25_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~13_combout\ : std_logic;
SIGNAL \inst5|Add4~26\ : std_logic;
SIGNAL \inst5|Add4~21_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~12_combout\ : std_logic;
SIGNAL \inst5|Add4~22\ : std_logic;
SIGNAL \inst5|Add4~17_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~11_combout\ : std_logic;
SIGNAL \inst5|Add4~18\ : std_logic;
SIGNAL \inst5|Add4~13_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~9_combout\ : std_logic;
SIGNAL \inst5|cursor_row~10_combout\ : std_logic;
SIGNAL \inst5|Add4~14\ : std_logic;
SIGNAL \inst5|Add4~37_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~6_combout\ : std_logic;
SIGNAL \inst5|cursor_row~7_combout\ : std_logic;
SIGNAL \inst5|Add4~38\ : std_logic;
SIGNAL \inst5|Add4~33_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~4_combout\ : std_logic;
SIGNAL \inst5|cursor_row~5_combout\ : std_logic;
SIGNAL \inst5|Add4~34\ : std_logic;
SIGNAL \inst5|Add4~30\ : std_logic;
SIGNAL \inst5|Add4~6\ : std_logic;
SIGNAL \inst5|Add4~7\ : std_logic;
SIGNAL \inst5|Add4~1_sumout\ : std_logic;
SIGNAL \inst5|RECV_UART~1_combout\ : std_logic;
SIGNAL \inst5|RECV_UART~0_combout\ : std_logic;
SIGNAL \inst5|RECV_UART~2_combout\ : std_logic;
SIGNAL \inst5|cursor_row~0_combout\ : std_logic;
SIGNAL \inst5|cursor_row~1_combout\ : std_logic;
SIGNAL \inst5|cursor_row~2_combout\ : std_logic;
SIGNAL \inst5|cursor_row~3_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out~0_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[5]~1_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[4]~2_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[3]~3_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[2]~4_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[1]~5_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[3]~6_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \inst5|Add5~10\ : std_logic;
SIGNAL \inst5|Add5~5_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~9_combout\ : std_logic;
SIGNAL \inst5|Add5~18\ : std_logic;
SIGNAL \inst5|Add5~37_sumout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add5~38\ : std_logic;
SIGNAL \inst5|Add5~33_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~5_combout\ : std_logic;
SIGNAL \inst5|Add5~34\ : std_logic;
SIGNAL \inst5|Add5~29_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~7_combout\ : std_logic;
SIGNAL \inst5|Add5~30\ : std_logic;
SIGNAL \inst5|Add5~25_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~8_combout\ : std_logic;
SIGNAL \inst5|Add5~26\ : std_logic;
SIGNAL \inst5|Add5~21_sumout\ : std_logic;
SIGNAL \inst5|RECV_UART~3_combout\ : std_logic;
SIGNAL \inst5|cursor_column~4_combout\ : std_logic;
SIGNAL \inst5|Add5~22\ : std_logic;
SIGNAL \inst5|Add5~1_sumout\ : std_logic;
SIGNAL \inst5|LessThan9~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|cursor_column~0_combout\ : std_logic;
SIGNAL \inst5|Add5~2\ : std_logic;
SIGNAL \inst5|Add5~9_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~1_combout\ : std_logic;
SIGNAL \inst5|cursor_column[9]~2_combout\ : std_logic;
SIGNAL \inst5|Add5~6\ : std_logic;
SIGNAL \inst5|Add5~13_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~6_combout\ : std_logic;
SIGNAL \inst5|Add5~17_sumout\ : std_logic;
SIGNAL \inst5|RECV_UART~4_combout\ : std_logic;
SIGNAL \inst5|cursor_column~3_combout\ : std_logic;
SIGNAL \inst11|SevenSeg_out[6]~0_combout\ : std_logic;
SIGNAL \inst11|SevenSeg_out[5]~6_combout\ : std_logic;
SIGNAL \inst11|SevenSeg_out[4]~1_combout\ : std_logic;
SIGNAL \inst11|SevenSeg_out[3]~5_combout\ : std_logic;
SIGNAL \inst11|SevenSeg_out[2]~4_combout\ : std_logic;
SIGNAL \inst11|SevenSeg_out[1]~3_combout\ : std_logic;
SIGNAL \inst11|SevenSeg_out[0]~2_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR1[0]~1_combout\ : std_logic;
SIGNAL \inst5|left_button~q\ : std_logic;
SIGNAL \inst5|right_button~q\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|process_1~4_combout\ : std_logic;
SIGNAL \inst|process_1~1_combout\ : std_logic;
SIGNAL \inst|process_1~2_combout\ : std_logic;
SIGNAL \inst|process_1~5_combout\ : std_logic;
SIGNAL \inst|process_1~3_combout\ : std_logic;
SIGNAL \inst|process_1~7_combout\ : std_logic;
SIGNAL \inst|process_1~8_combout\ : std_logic;
SIGNAL \inst|process_1~9_combout\ : std_logic;
SIGNAL \inst|process_1~10_combout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|next_state.HOME_SCREEN_528~combout\ : std_logic;
SIGNAL \inst|state.HOME_SCREEN~0_combout\ : std_logic;
SIGNAL \inst|state.HOME_SCREEN~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|next_state.TRAINING_MODE_513~combout\ : std_logic;
SIGNAL \inst|state.TRAINING_MODE~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|led3~combout\ : std_logic;
SIGNAL \inst|process_1~6_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|next_state.SINGLE_PLAYER_MODE_498~combout\ : std_logic;
SIGNAL \inst|state.SINGLE_PLAYER_MODE~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|led4~combout\ : std_logic;
SIGNAL \inst2|v_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|v_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|v_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add14~22\ : std_logic;
SIGNAL \inst|Add14~26\ : std_logic;
SIGNAL \inst|Add14~30\ : std_logic;
SIGNAL \inst|Add14~18\ : std_logic;
SIGNAL \inst|Add14~10\ : std_logic;
SIGNAL \inst|Add14~14\ : std_logic;
SIGNAL \inst|Add14~6\ : std_logic;
SIGNAL \inst|Add14~1_sumout\ : std_logic;
SIGNAL \inst|Add14~9_sumout\ : std_logic;
SIGNAL \inst|Add14~5_sumout\ : std_logic;
SIGNAL \inst|Add14~13_sumout\ : std_logic;
SIGNAL \inst|Add14~25_sumout\ : std_logic;
SIGNAL \inst|Add14~21_sumout\ : std_logic;
SIGNAL \inst|Add14~29_sumout\ : std_logic;
SIGNAL \inst|box3_on~0_combout\ : std_logic;
SIGNAL \inst|Add14~17_sumout\ : std_logic;
SIGNAL \inst|box3_on~1_combout\ : std_logic;
SIGNAL \inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \inst2|pixel_column[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|pixel_column[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Add12~34_cout\ : std_logic;
SIGNAL \inst|Add12~30_cout\ : std_logic;
SIGNAL \inst|Add12~26_cout\ : std_logic;
SIGNAL \inst|Add12~22_cout\ : std_logic;
SIGNAL \inst|Add12~14\ : std_logic;
SIGNAL \inst|Add12~18\ : std_logic;
SIGNAL \inst|Add12~10\ : std_logic;
SIGNAL \inst|Add12~1_sumout\ : std_logic;
SIGNAL \inst|Add12~17_sumout\ : std_logic;
SIGNAL \inst|Add12~9_sumout\ : std_logic;
SIGNAL \inst|Add12~2\ : std_logic;
SIGNAL \inst|Add12~5_sumout\ : std_logic;
SIGNAL \inst|Add12~13_sumout\ : std_logic;
SIGNAL \inst|box3_on~2_combout\ : std_logic;
SIGNAL \inst|box3_on~5_combout\ : std_logic;
SIGNAL \inst|LessThan15~0_combout\ : std_logic;
SIGNAL \inst|box3_on~3_combout\ : std_logic;
SIGNAL \inst|box3_on~4_combout\ : std_logic;
SIGNAL \inst|box3_on~6_combout\ : std_logic;
SIGNAL \inst|Add6~30\ : std_logic;
SIGNAL \inst|Add6~26\ : std_logic;
SIGNAL \inst|Add6~22\ : std_logic;
SIGNAL \inst|Add6~14\ : std_logic;
SIGNAL \inst|Add6~17_sumout\ : std_logic;
SIGNAL \inst|Add6~29_sumout\ : std_logic;
SIGNAL \inst|Add6~25_sumout\ : std_logic;
SIGNAL \inst|Add6~21_sumout\ : std_logic;
SIGNAL \inst|box1_on~1_combout\ : std_logic;
SIGNAL \inst|Add6~18\ : std_logic;
SIGNAL \inst|Add6~10\ : std_logic;
SIGNAL \inst|Add6~2\ : std_logic;
SIGNAL \inst|Add6~5_sumout\ : std_logic;
SIGNAL \inst|Add6~9_sumout\ : std_logic;
SIGNAL \inst|Add6~13_sumout\ : std_logic;
SIGNAL \inst|Add6~1_sumout\ : std_logic;
SIGNAL \inst|box1_on~2_combout\ : std_logic;
SIGNAL \inst|box1_on~5_combout\ : std_logic;
SIGNAL \inst|box1_on~3_combout\ : std_logic;
SIGNAL \inst|box1_on~4_combout\ : std_logic;
SIGNAL \inst|box1_on~6_combout\ : std_logic;
SIGNAL \inst|Add4~34_cout\ : std_logic;
SIGNAL \inst|Add4~30_cout\ : std_logic;
SIGNAL \inst|Add4~26_cout\ : std_logic;
SIGNAL \inst|Add4~22_cout\ : std_logic;
SIGNAL \inst|Add4~14\ : std_logic;
SIGNAL \inst|Add4~18\ : std_logic;
SIGNAL \inst|Add4~10\ : std_logic;
SIGNAL \inst|Add4~1_sumout\ : std_logic;
SIGNAL \inst|Add4~9_sumout\ : std_logic;
SIGNAL \inst|Add4~2\ : std_logic;
SIGNAL \inst|Add4~5_sumout\ : std_logic;
SIGNAL \inst|Add4~13_sumout\ : std_logic;
SIGNAL \inst|Add4~17_sumout\ : std_logic;
SIGNAL \inst|box1_on~0_combout\ : std_logic;
SIGNAL \inst2|blue_out~2_combout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|ball_on~0_combout\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|ball_on~1_combout\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ball_on~2_combout\ : std_logic;
SIGNAL \inst|box2_on~0_combout\ : std_logic;
SIGNAL \inst|box2_on~1_combout\ : std_logic;
SIGNAL \inst2|video_on_v~q\ : std_logic;
SIGNAL \inst2|video_on_h~q\ : std_logic;
SIGNAL \inst2|blue_out~0_combout\ : std_logic;
SIGNAL \inst|box2_on~6_combout\ : std_logic;
SIGNAL \inst|box2_on~7_combout\ : std_logic;
SIGNAL \inst|box2_on~8_combout\ : std_logic;
SIGNAL \inst|Add10~2\ : std_logic;
SIGNAL \inst|Add10~5_sumout\ : std_logic;
SIGNAL \inst|Add10~6\ : std_logic;
SIGNAL \inst|Add10~10\ : std_logic;
SIGNAL \inst|Add10~13_sumout\ : std_logic;
SIGNAL \inst|Add10~14\ : std_logic;
SIGNAL \inst|Add10~17_sumout\ : std_logic;
SIGNAL \inst|Add10~1_sumout\ : std_logic;
SIGNAL \inst|Add10~9_sumout\ : std_logic;
SIGNAL \inst|box2_on~2_combout\ : std_logic;
SIGNAL \inst|box2_on~3_combout\ : std_logic;
SIGNAL \inst|Add8~30_cout\ : std_logic;
SIGNAL \inst|Add8~26_cout\ : std_logic;
SIGNAL \inst|Add8~22_cout\ : std_logic;
SIGNAL \inst|Add8~14\ : std_logic;
SIGNAL \inst|Add8~17_sumout\ : std_logic;
SIGNAL \inst|Add8~18\ : std_logic;
SIGNAL \inst|Add8~10\ : std_logic;
SIGNAL \inst|Add8~1_sumout\ : std_logic;
SIGNAL \inst|Add8~9_sumout\ : std_logic;
SIGNAL \inst|Add8~2\ : std_logic;
SIGNAL \inst|Add8~5_sumout\ : std_logic;
SIGNAL \inst|Add8~13_sumout\ : std_logic;
SIGNAL \inst|box2_on~5_combout\ : std_logic;
SIGNAL \inst|Add10~18\ : std_logic;
SIGNAL \inst|Add10~22\ : std_logic;
SIGNAL \inst|Add10~25_sumout\ : std_logic;
SIGNAL \inst|Add10~21_sumout\ : std_logic;
SIGNAL \inst|box2_on~4_combout\ : std_logic;
SIGNAL \inst2|blue_out~1_combout\ : std_logic;
SIGNAL \inst|Add2~6\ : std_logic;
SIGNAL \inst|Add2~2\ : std_logic;
SIGNAL \inst|Add2~18\ : std_logic;
SIGNAL \inst|Add2~13_sumout\ : std_logic;
SIGNAL \inst|Add2~14\ : std_logic;
SIGNAL \inst|Add2~9_sumout\ : std_logic;
SIGNAL \inst|Add2~17_sumout\ : std_logic;
SIGNAL \inst|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|Add3~14\ : std_logic;
SIGNAL \inst|Add3~10\ : std_logic;
SIGNAL \inst|Add3~26\ : std_logic;
SIGNAL \inst|Add3~22\ : std_logic;
SIGNAL \inst|Add3~18\ : std_logic;
SIGNAL \inst|Add3~2\ : std_logic;
SIGNAL \inst|Add3~5_sumout\ : std_logic;
SIGNAL \inst|Add2~10\ : std_logic;
SIGNAL \inst|Add2~21_sumout\ : std_logic;
SIGNAL \inst|Add3~1_sumout\ : std_logic;
SIGNAL \inst|Add2~22\ : std_logic;
SIGNAL \inst|Add2~25_sumout\ : std_logic;
SIGNAL \inst|ball_on~3_combout\ : std_logic;
SIGNAL \inst|LessThan2~4_combout\ : std_logic;
SIGNAL \inst|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|Add2~1_sumout\ : std_logic;
SIGNAL \inst|Add2~5_sumout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|ball_on~4_combout\ : std_logic;
SIGNAL \inst|Add1~6\ : std_logic;
SIGNAL \inst|Add1~2\ : std_logic;
SIGNAL \inst|Add1~18\ : std_logic;
SIGNAL \inst|Add1~13_sumout\ : std_logic;
SIGNAL \inst|Add1~17_sumout\ : std_logic;
SIGNAL \inst|Add1~14\ : std_logic;
SIGNAL \inst|Add1~9_sumout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|Add1~10\ : std_logic;
SIGNAL \inst|Add1~30\ : std_logic;
SIGNAL \inst|Add1~21_sumout\ : std_logic;
SIGNAL \inst|Add1~22\ : std_logic;
SIGNAL \inst|Add1~25_sumout\ : std_logic;
SIGNAL \inst|Add1~29_sumout\ : std_logic;
SIGNAL \inst|ball_on~5_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|Add1~5_sumout\ : std_logic;
SIGNAL \inst|Add1~1_sumout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|ball_on~6_combout\ : std_logic;
SIGNAL \inst|Add3~25_sumout\ : std_logic;
SIGNAL \inst|Add3~21_sumout\ : std_logic;
SIGNAL \inst|Add3~17_sumout\ : std_logic;
SIGNAL \inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|Add3~13_sumout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|Add3~9_sumout\ : std_logic;
SIGNAL \inst|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|LessThan3~4_combout\ : std_logic;
SIGNAL \inst2|blue_out~3_combout\ : std_logic;
SIGNAL \inst2|blue_out~q\ : std_logic;
SIGNAL \inst2|green_out~q\ : std_logic;
SIGNAL \inst5|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst5|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst5|inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|pll2_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|pll2_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|ALT_INV_h_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_v_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_PS2_DAT~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_next_state.SINGLE_PLAYER_MODE_498~combout\ : std_logic;
SIGNAL \inst|ALT_INV_next_state.TRAINING_MODE_513~combout\ : std_logic;
SIGNAL \inst|ALT_INV_next_state.HOME_SCREEN_528~combout\ : std_logic;
SIGNAL \inst|ALT_INV_led4~combout\ : std_logic;
SIGNAL \inst|ALT_INV_led3~combout\ : std_logic;
SIGNAL \inst11|ALT_INV_SevenSeg_out[1]~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst5|ALT_INV_SHIFTOUT\ : std_logic_vector(9 DOWNTO 3);
SIGNAL \inst5|ALT_INV_iready_set~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst5|ALT_INV_iready_set~q\ : std_logic;
SIGNAL \inst5|ALT_INV_SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst5|ALT_INV_OUTCNT~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~7_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|ALT_INV_send_char~q\ : std_logic;
SIGNAL \inst5|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst5|ALT_INV_PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_row~9_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_row~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_output_ready~q\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|ALT_INV_new_cursor_row[2]~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_blue_out~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box3_on~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box3_on~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box3_on~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box3_on~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box3_on~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box1_on~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box1_on~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan15~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box1_on~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box1_on~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box1_on~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box1_on~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box1_on~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box3_on~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box3_on~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_blue_out~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_blue_out~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_video_on_h~q\ : std_logic;
SIGNAL \inst2|ALT_INV_video_on_v~q\ : std_logic;
SIGNAL \inst|ALT_INV_box2_on~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box2_on~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box2_on~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box2_on~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box2_on~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box2_on~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box2_on~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box2_on~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_box2_on~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ball_on~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_state.SINGLE_PLAYER_MODE~q\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_state.TRAINING_MODE~q\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_state.HOME_SCREEN~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_RECV_UART~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_RECV_UART~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_row~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_row~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|ALT_INV_READ_CHAR~q\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst5|ALT_INV_MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst5|ALT_INV_RECV_UART~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_RECV_UART~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_RECV_UART~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|ALT_INV_cursor_row~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_horiz_sync~q\ : std_logic;
SIGNAL \inst2|ALT_INV_vert_sync~q\ : std_logic;
SIGNAL \inst5|ALT_INV_left_button~q\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst7|ALT_INV_SevenSeg_out[1]~5_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_SevenSeg_out~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst5|ALT_INV_new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|ALT_INV_new_cursor_row\ : std_logic_vector(9 DOWNTO 0);

BEGIN

VGA_VS <= ww_VGA_VS;
ww_CLOCK_50 <= CLOCK_50;
VGA_HS <= ww_VGA_HS;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDR0 <= ww_LEDR0;
LEDR1 <= ww_LEDR1;
LEDR3 <= ww_LEDR3;
LEDR4 <= ww_LEDR4;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
VGA_R <= ww_VGA_R;
ww_key <= key;
ww_sw <= sw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ <= \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(5);

\inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\inst2|ALT_INV_h_count[7]~DUPLICATE_q\ <= NOT \inst2|h_count[7]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[4]~DUPLICATE_q\ <= NOT \inst2|h_count[4]~DUPLICATE_q\;
\inst2|ALT_INV_v_count[6]~DUPLICATE_q\ <= NOT \inst2|v_count[6]~DUPLICATE_q\;
\ALT_INV_PS2_DAT~input_o\ <= NOT \PS2_DAT~input_o\;
\inst|ALT_INV_next_state.SINGLE_PLAYER_MODE_498~combout\ <= NOT \inst|next_state.SINGLE_PLAYER_MODE_498~combout\;
\inst|ALT_INV_next_state.TRAINING_MODE_513~combout\ <= NOT \inst|next_state.TRAINING_MODE_513~combout\;
\inst|ALT_INV_next_state.HOME_SCREEN_528~combout\ <= NOT \inst|next_state.HOME_SCREEN_528~combout\;
\inst|ALT_INV_led4~combout\ <= NOT \inst|led4~combout\;
\inst|ALT_INV_led3~combout\ <= NOT \inst|led3~combout\;
\inst11|ALT_INV_SevenSeg_out[1]~3_combout\ <= NOT \inst11|SevenSeg_out[1]~3_combout\;
\inst5|ALT_INV_inhibit_wait_count\(1) <= NOT \inst5|inhibit_wait_count\(1);
\inst5|ALT_INV_inhibit_wait_count\(0) <= NOT \inst5|inhibit_wait_count\(0);
\inst5|ALT_INV_inhibit_wait_count\(2) <= NOT \inst5|inhibit_wait_count\(2);
\inst5|ALT_INV_inhibit_wait_count\(3) <= NOT \inst5|inhibit_wait_count\(3);
\inst5|ALT_INV_inhibit_wait_count\(4) <= NOT \inst5|inhibit_wait_count\(4);
\inst5|ALT_INV_SHIFTOUT\(9) <= NOT \inst5|SHIFTOUT\(9);
\inst5|ALT_INV_inhibit_wait_count\(5) <= NOT \inst5|inhibit_wait_count\(5);
\inst5|ALT_INV_inhibit_wait_count\(6) <= NOT \inst5|inhibit_wait_count\(6);
\inst5|ALT_INV_inhibit_wait_count\(7) <= NOT \inst5|inhibit_wait_count\(7);
\inst5|ALT_INV_inhibit_wait_count\(8) <= NOT \inst5|inhibit_wait_count\(8);
\inst5|ALT_INV_SHIFTOUT\(5) <= NOT \inst5|SHIFTOUT\(5);
\inst5|ALT_INV_inhibit_wait_count\(9) <= NOT \inst5|inhibit_wait_count\(9);
\inst5|ALT_INV_SHIFTOUT\(4) <= NOT \inst5|SHIFTOUT\(4);
\inst5|ALT_INV_iready_set~0_combout\ <= NOT \inst5|iready_set~0_combout\;
\inst5|ALT_INV_SHIFTOUT\(3) <= NOT \inst5|SHIFTOUT\(3);
\inst5|ALT_INV_mouse_state.WAIT_CMD_ACK~q\ <= NOT \inst5|mouse_state.WAIT_CMD_ACK~q\;
\inst5|ALT_INV_iready_set~q\ <= NOT \inst5|iready_set~q\;
\inst5|ALT_INV_SHIFTIN\(8) <= NOT \inst5|SHIFTIN\(8);
\inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\ <= NOT \inst5|mouse_state.INPUT_PACKETS~q\;
\inst5|ALT_INV_OUTCNT~2_combout\ <= NOT \inst5|OUTCNT~2_combout\;
\inst5|ALT_INV_OUTCNT\(0) <= NOT \inst5|OUTCNT\(0);
\inst5|ALT_INV_SHIFTIN\(4) <= NOT \inst5|SHIFTIN\(4);
\inst5|ALT_INV_inhibit_wait_count\(10) <= NOT \inst5|inhibit_wait_count\(10);
\inst5|ALT_INV_inhibit_wait_count\(11) <= NOT \inst5|inhibit_wait_count\(11);
\inst|ALT_INV_Selector4~1_combout\ <= NOT \inst|Selector4~1_combout\;
\inst|ALT_INV_Selector3~1_combout\ <= NOT \inst|Selector3~1_combout\;
\inst|ALT_INV_Selector0~0_combout\ <= NOT \inst|Selector0~0_combout\;
\inst|ALT_INV_Selector8~0_combout\ <= NOT \inst|Selector8~0_combout\;
\inst|ALT_INV_process_1~10_combout\ <= NOT \inst|process_1~10_combout\;
\inst|ALT_INV_process_1~9_combout\ <= NOT \inst|process_1~9_combout\;
\inst|ALT_INV_process_1~8_combout\ <= NOT \inst|process_1~8_combout\;
\inst|ALT_INV_process_1~7_combout\ <= NOT \inst|process_1~7_combout\;
\inst5|ALT_INV_SHIFTIN\(2) <= NOT \inst5|SHIFTIN\(2);
\inst5|ALT_INV_PACKET_CHAR2\(1) <= NOT \inst5|PACKET_CHAR2\(1);
\inst5|ALT_INV_PACKET_CHAR2\(2) <= NOT \inst5|PACKET_CHAR2\(2);
\inst5|ALT_INV_PACKET_CHAR2\(3) <= NOT \inst5|PACKET_CHAR2\(3);
\inst5|ALT_INV_PACKET_CHAR2\(4) <= NOT \inst5|PACKET_CHAR2\(4);
\inst5|ALT_INV_PACKET_CHAR2\(5) <= NOT \inst5|PACKET_CHAR2\(5);
\inst5|ALT_INV_PACKET_CHAR2\(0) <= NOT \inst5|PACKET_CHAR2\(0);
\inst5|ALT_INV_PACKET_CHAR2\(7) <= NOT \inst5|PACKET_CHAR2\(7);
\inst5|ALT_INV_PACKET_CHAR2\(6) <= NOT \inst5|PACKET_CHAR2\(6);
\inst5|ALT_INV_send_char~q\ <= NOT \inst5|send_char~q\;
\inst5|ALT_INV_send_data~q\ <= NOT \inst5|send_data~q\;
\inst5|ALT_INV_OUTCNT\(1) <= NOT \inst5|OUTCNT\(1);
\inst5|ALT_INV_OUTCNT\(2) <= NOT \inst5|OUTCNT\(2);
\inst5|ALT_INV_OUTCNT\(3) <= NOT \inst5|OUTCNT\(3);
\inst5|ALT_INV_PACKET_CHAR3\(5) <= NOT \inst5|PACKET_CHAR3\(5);
\inst5|ALT_INV_PACKET_CHAR3\(6) <= NOT \inst5|PACKET_CHAR3\(6);
\inst5|ALT_INV_PACKET_CHAR3\(1) <= NOT \inst5|PACKET_CHAR3\(1);
\inst5|ALT_INV_PACKET_CHAR3\(2) <= NOT \inst5|PACKET_CHAR3\(2);
\inst5|ALT_INV_PACKET_CHAR3\(3) <= NOT \inst5|PACKET_CHAR3\(3);
\inst5|ALT_INV_PACKET_CHAR3\(4) <= NOT \inst5|PACKET_CHAR3\(4);
\inst5|ALT_INV_PACKET_CHAR3\(0) <= NOT \inst5|PACKET_CHAR3\(0);
\inst5|ALT_INV_PACKET_CHAR3\(7) <= NOT \inst5|PACKET_CHAR3\(7);
\inst2|ALT_INV_Equal1~0_combout\ <= NOT \inst2|Equal1~0_combout\;
\inst2|ALT_INV_Equal0~0_combout\ <= NOT \inst2|Equal0~0_combout\;
\inst2|ALT_INV_process_0~6_combout\ <= NOT \inst2|process_0~6_combout\;
\inst2|ALT_INV_process_0~5_combout\ <= NOT \inst2|process_0~5_combout\;
\inst2|ALT_INV_process_0~4_combout\ <= NOT \inst2|process_0~4_combout\;
\inst2|ALT_INV_LessThan1~0_combout\ <= NOT \inst2|LessThan1~0_combout\;
\inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\ <= NOT \inst5|mouse_state.LOAD_COMMAND~q\;
\inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst5|mouse_state.INHIBIT_TRANS~q\;
\inst5|ALT_INV_cursor_row~9_combout\ <= NOT \inst5|cursor_row~9_combout\;
\inst5|ALT_INV_LessThan5~2_combout\ <= NOT \inst5|LessThan5~2_combout\;
\inst5|ALT_INV_LessThan5~1_combout\ <= NOT \inst5|LessThan5~1_combout\;
\inst5|ALT_INV_LessThan5~0_combout\ <= NOT \inst5|LessThan5~0_combout\;
\inst5|ALT_INV_cursor_row~6_combout\ <= NOT \inst5|cursor_row~6_combout\;
\inst5|ALT_INV_SHIFTIN\(0) <= NOT \inst5|SHIFTIN\(0);
\inst5|ALT_INV_output_ready~q\ <= NOT \inst5|output_ready~q\;
\inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\ <= NOT \inst5|mouse_state.LOAD_COMMAND2~q\;
\inst5|ALT_INV_Equal1~0_combout\ <= NOT \inst5|Equal1~0_combout\;
\inst5|ALT_INV_Equal2~0_combout\ <= NOT \inst5|Equal2~0_combout\;
\inst5|ALT_INV_filter\(4) <= NOT \inst5|filter\(4);
\inst5|ALT_INV_filter\(3) <= NOT \inst5|filter\(3);
\inst5|ALT_INV_filter\(2) <= NOT \inst5|filter\(2);
\inst5|ALT_INV_filter\(1) <= NOT \inst5|filter\(1);
\inst5|ALT_INV_filter\(0) <= NOT \inst5|filter\(0);
\inst5|ALT_INV_filter\(7) <= NOT \inst5|filter\(7);
\inst5|ALT_INV_filter\(6) <= NOT \inst5|filter\(6);
\inst5|ALT_INV_filter\(5) <= NOT \inst5|filter\(5);
\inst5|ALT_INV_new_cursor_row[2]~0_combout\ <= NOT \inst5|new_cursor_row[2]~0_combout\;
\inst2|ALT_INV_process_0~3_combout\ <= NOT \inst2|process_0~3_combout\;
\inst2|ALT_INV_process_0~2_combout\ <= NOT \inst2|process_0~2_combout\;
\inst2|ALT_INV_process_0~0_combout\ <= NOT \inst2|process_0~0_combout\;
\inst2|ALT_INV_LessThan7~0_combout\ <= NOT \inst2|LessThan7~0_combout\;
\inst2|ALT_INV_blue_out~2_combout\ <= NOT \inst2|blue_out~2_combout\;
\inst|ALT_INV_box3_on~6_combout\ <= NOT \inst|box3_on~6_combout\;
\inst|ALT_INV_box3_on~5_combout\ <= NOT \inst|box3_on~5_combout\;
\inst|ALT_INV_box3_on~4_combout\ <= NOT \inst|box3_on~4_combout\;
\inst|ALT_INV_box3_on~3_combout\ <= NOT \inst|box3_on~3_combout\;
\inst|ALT_INV_box3_on~2_combout\ <= NOT \inst|box3_on~2_combout\;
\inst|ALT_INV_box1_on~6_combout\ <= NOT \inst|box1_on~6_combout\;
\inst|ALT_INV_box1_on~5_combout\ <= NOT \inst|box1_on~5_combout\;
\inst|ALT_INV_LessThan15~0_combout\ <= NOT \inst|LessThan15~0_combout\;
\inst|ALT_INV_box1_on~4_combout\ <= NOT \inst|box1_on~4_combout\;
\inst|ALT_INV_box1_on~3_combout\ <= NOT \inst|box1_on~3_combout\;
\inst|ALT_INV_box1_on~2_combout\ <= NOT \inst|box1_on~2_combout\;
\inst|ALT_INV_box1_on~1_combout\ <= NOT \inst|box1_on~1_combout\;
\inst|ALT_INV_box1_on~0_combout\ <= NOT \inst|box1_on~0_combout\;
\inst|ALT_INV_box3_on~1_combout\ <= NOT \inst|box3_on~1_combout\;
\inst|ALT_INV_box3_on~0_combout\ <= NOT \inst|box3_on~0_combout\;
\inst2|ALT_INV_blue_out~1_combout\ <= NOT \inst2|blue_out~1_combout\;
\inst2|ALT_INV_blue_out~0_combout\ <= NOT \inst2|blue_out~0_combout\;
\inst2|ALT_INV_video_on_h~q\ <= NOT \inst2|video_on_h~q\;
\inst2|ALT_INV_video_on_v~q\ <= NOT \inst2|video_on_v~q\;
\inst|ALT_INV_box2_on~8_combout\ <= NOT \inst|box2_on~8_combout\;
\inst|ALT_INV_box2_on~7_combout\ <= NOT \inst|box2_on~7_combout\;
\inst|ALT_INV_box2_on~6_combout\ <= NOT \inst|box2_on~6_combout\;
\inst|ALT_INV_box2_on~5_combout\ <= NOT \inst|box2_on~5_combout\;
\inst|ALT_INV_box2_on~4_combout\ <= NOT \inst|box2_on~4_combout\;
\inst|ALT_INV_box2_on~3_combout\ <= NOT \inst|box2_on~3_combout\;
\inst|ALT_INV_box2_on~2_combout\ <= NOT \inst|box2_on~2_combout\;
\inst|ALT_INV_box2_on~1_combout\ <= NOT \inst|box2_on~1_combout\;
\inst|ALT_INV_box2_on~0_combout\ <= NOT \inst|box2_on~0_combout\;
\inst|ALT_INV_ball_on~6_combout\ <= NOT \inst|ball_on~6_combout\;
\inst|ALT_INV_ball_on~5_combout\ <= NOT \inst|ball_on~5_combout\;
\inst|ALT_INV_LessThan1~4_combout\ <= NOT \inst|LessThan1~4_combout\;
\inst2|ALT_INV_pixel_column\(8) <= NOT \inst2|pixel_column\(8);
\inst2|ALT_INV_pixel_column\(9) <= NOT \inst2|pixel_column\(9);
\inst|ALT_INV_LessThan1~3_combout\ <= NOT \inst|LessThan1~3_combout\;
\inst|ALT_INV_LessThan1~2_combout\ <= NOT \inst|LessThan1~2_combout\;
\inst2|ALT_INV_pixel_column\(5) <= NOT \inst2|pixel_column\(5);
\inst2|ALT_INV_pixel_column\(6) <= NOT \inst2|pixel_column\(6);
\inst2|ALT_INV_pixel_column\(7) <= NOT \inst2|pixel_column\(7);
\inst|ALT_INV_LessThan1~1_combout\ <= NOT \inst|LessThan1~1_combout\;
\inst|ALT_INV_LessThan1~0_combout\ <= NOT \inst|LessThan1~0_combout\;
\inst2|ALT_INV_pixel_column\(3) <= NOT \inst2|pixel_column\(3);
\inst2|ALT_INV_pixel_column\(4) <= NOT \inst2|pixel_column\(4);
\inst|ALT_INV_ball_on~4_combout\ <= NOT \inst|ball_on~4_combout\;
\inst|ALT_INV_ball_on~3_combout\ <= NOT \inst|ball_on~3_combout\;
\inst|ALT_INV_LessThan2~4_combout\ <= NOT \inst|LessThan2~4_combout\;
\inst|ALT_INV_LessThan2~3_combout\ <= NOT \inst|LessThan2~3_combout\;
\inst|ALT_INV_LessThan2~2_combout\ <= NOT \inst|LessThan2~2_combout\;
\inst|ALT_INV_LessThan2~1_combout\ <= NOT \inst|LessThan2~1_combout\;
\inst|ALT_INV_LessThan2~0_combout\ <= NOT \inst|LessThan2~0_combout\;
\inst|ALT_INV_LessThan3~4_combout\ <= NOT \inst|LessThan3~4_combout\;
\inst|ALT_INV_LessThan3~3_combout\ <= NOT \inst|LessThan3~3_combout\;
\inst|ALT_INV_LessThan3~2_combout\ <= NOT \inst|LessThan3~2_combout\;
\inst2|ALT_INV_pixel_row\(5) <= NOT \inst2|pixel_row\(5);
\inst2|ALT_INV_pixel_row\(6) <= NOT \inst2|pixel_row\(6);
\inst2|ALT_INV_pixel_row\(7) <= NOT \inst2|pixel_row\(7);
\inst|ALT_INV_LessThan3~1_combout\ <= NOT \inst|LessThan3~1_combout\;
\inst|ALT_INV_LessThan3~0_combout\ <= NOT \inst|LessThan3~0_combout\;
\inst2|ALT_INV_pixel_row\(0) <= NOT \inst2|pixel_row\(0);
\inst2|ALT_INV_pixel_row\(1) <= NOT \inst2|pixel_row\(1);
\inst2|ALT_INV_pixel_row\(2) <= NOT \inst2|pixel_row\(2);
\inst2|ALT_INV_pixel_row\(3) <= NOT \inst2|pixel_row\(3);
\inst2|ALT_INV_pixel_row\(4) <= NOT \inst2|pixel_row\(4);
\inst2|ALT_INV_pixel_row\(8) <= NOT \inst2|pixel_row\(8);
\inst|ALT_INV_ball_on~2_combout\ <= NOT \inst|ball_on~2_combout\;
\inst|ALT_INV_ball_on~1_combout\ <= NOT \inst|ball_on~1_combout\;
\inst|ALT_INV_ball_on~0_combout\ <= NOT \inst|ball_on~0_combout\;
\inst|ALT_INV_LessThan0~3_combout\ <= NOT \inst|LessThan0~3_combout\;
\inst|ALT_INV_LessThan0~2_combout\ <= NOT \inst|LessThan0~2_combout\;
\inst|ALT_INV_LessThan0~1_combout\ <= NOT \inst|LessThan0~1_combout\;
\inst|ALT_INV_LessThan0~0_combout\ <= NOT \inst|LessThan0~0_combout\;
\inst2|ALT_INV_pixel_column\(0) <= NOT \inst2|pixel_column\(0);
\inst2|ALT_INV_pixel_column\(2) <= NOT \inst2|pixel_column\(2);
\inst2|ALT_INV_pixel_column\(1) <= NOT \inst2|pixel_column\(1);
\inst|ALT_INV_Selector4~0_combout\ <= NOT \inst|Selector4~0_combout\;
\inst|ALT_INV_state.SINGLE_PLAYER_MODE~q\ <= NOT \inst|state.SINGLE_PLAYER_MODE~q\;
\inst|ALT_INV_process_1~6_combout\ <= NOT \inst|process_1~6_combout\;
\inst|ALT_INV_Selector2~0_combout\ <= NOT \inst|Selector2~0_combout\;
\inst|ALT_INV_Selector3~0_combout\ <= NOT \inst|Selector3~0_combout\;
\inst|ALT_INV_process_1~5_combout\ <= NOT \inst|process_1~5_combout\;
\inst|ALT_INV_process_1~4_combout\ <= NOT \inst|process_1~4_combout\;
\inst|ALT_INV_state.TRAINING_MODE~q\ <= NOT \inst|state.TRAINING_MODE~q\;
\inst|ALT_INV_process_1~3_combout\ <= NOT \inst|process_1~3_combout\;
\inst|ALT_INV_process_1~2_combout\ <= NOT \inst|process_1~2_combout\;
\inst5|ALT_INV_cursor_row\(1) <= NOT \inst5|cursor_row\(1);
\inst5|ALT_INV_cursor_row\(2) <= NOT \inst5|cursor_row\(2);
\inst5|ALT_INV_cursor_row\(3) <= NOT \inst5|cursor_row\(3);
\inst5|ALT_INV_cursor_row\(4) <= NOT \inst5|cursor_row\(4);
\inst|ALT_INV_process_1~1_combout\ <= NOT \inst|process_1~1_combout\;
\inst|ALT_INV_process_1~0_combout\ <= NOT \inst|process_1~0_combout\;
\inst5|ALT_INV_cursor_row\(0) <= NOT \inst5|cursor_row\(0);
\inst5|ALT_INV_cursor_row\(5) <= NOT \inst5|cursor_row\(5);
\inst|ALT_INV_state.HOME_SCREEN~q\ <= NOT \inst|state.HOME_SCREEN~q\;
\inst5|ALT_INV_Equal4~0_combout\ <= NOT \inst5|Equal4~0_combout\;
\inst5|ALT_INV_LessThan9~0_combout\ <= NOT \inst5|LessThan9~0_combout\;
\inst5|ALT_INV_RECV_UART~4_combout\ <= NOT \inst5|RECV_UART~4_combout\;
\inst5|ALT_INV_RECV_UART~3_combout\ <= NOT \inst5|RECV_UART~3_combout\;
\inst5|ALT_INV_Equal3~0_combout\ <= NOT \inst5|Equal3~0_combout\;
\inst11|ALT_INV_Equal0~0_combout\ <= NOT \inst11|Equal0~0_combout\;
\inst5|ALT_INV_cursor_row~4_combout\ <= NOT \inst5|cursor_row~4_combout\;
\inst5|ALT_INV_cursor_row~2_combout\ <= NOT \inst5|cursor_row~2_combout\;
\inst5|ALT_INV_LessThan1~0_combout\ <= NOT \inst5|LessThan1~0_combout\;
\inst5|ALT_INV_INCNT\(0) <= NOT \inst5|INCNT\(0);
\inst5|ALT_INV_INCNT\(1) <= NOT \inst5|INCNT\(1);
\inst5|ALT_INV_INCNT\(2) <= NOT \inst5|INCNT\(2);
\inst5|ALT_INV_INCNT\(3) <= NOT \inst5|INCNT\(3);
\inst5|ALT_INV_READ_CHAR~q\ <= NOT \inst5|READ_CHAR~q\;
\inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst5|mouse_state.WAIT_OUTPUT_READY~q\;
\inst5|ALT_INV_MOUSE_CLK_FILTER~q\ <= NOT \inst5|MOUSE_CLK_FILTER~q\;
\inst5|ALT_INV_RECV_UART~2_combout\ <= NOT \inst5|RECV_UART~2_combout\;
\inst5|ALT_INV_RECV_UART~1_combout\ <= NOT \inst5|RECV_UART~1_combout\;
\inst5|ALT_INV_RECV_UART~0_combout\ <= NOT \inst5|RECV_UART~0_combout\;
\inst5|ALT_INV_PACKET_COUNT\(0) <= NOT \inst5|PACKET_COUNT\(0);
\inst5|ALT_INV_PACKET_COUNT\(1) <= NOT \inst5|PACKET_COUNT\(1);
\inst5|ALT_INV_cursor_row~0_combout\ <= NOT \inst5|cursor_row~0_combout\;
\inst2|ALT_INV_horiz_sync~q\ <= NOT \inst2|horiz_sync~q\;
\inst2|ALT_INV_vert_sync~q\ <= NOT \inst2|vert_sync~q\;
\inst5|ALT_INV_left_button~q\ <= NOT \inst5|left_button~q\;
\inst5|ALT_INV_cursor_column\(8) <= NOT \inst5|cursor_column\(8);
\inst5|ALT_INV_cursor_column\(6) <= NOT \inst5|cursor_column\(6);
\inst7|ALT_INV_SevenSeg_out[1]~5_combout\ <= NOT \inst7|SevenSeg_out[1]~5_combout\;
\inst7|ALT_INV_SevenSeg_out~0_combout\ <= NOT \inst7|SevenSeg_out~0_combout\;
\inst5|ALT_INV_cursor_row\(6) <= NOT \inst5|cursor_row\(6);
\inst5|ALT_INV_cursor_row\(7) <= NOT \inst5|cursor_row\(7);
\inst5|ALT_INV_cursor_row\(8) <= NOT \inst5|cursor_row\(8);
\inst2|ALT_INV_h_count\(8) <= NOT \inst2|h_count\(8);
\inst2|ALT_INV_h_count\(7) <= NOT \inst2|h_count\(7);
\inst2|ALT_INV_h_count\(9) <= NOT \inst2|h_count\(9);
\inst2|ALT_INV_h_count\(0) <= NOT \inst2|h_count\(0);
\inst2|ALT_INV_h_count\(1) <= NOT \inst2|h_count\(1);
\inst2|ALT_INV_h_count\(4) <= NOT \inst2|h_count\(4);
\inst2|ALT_INV_h_count\(2) <= NOT \inst2|h_count\(2);
\inst2|ALT_INV_h_count\(3) <= NOT \inst2|h_count\(3);
\inst2|ALT_INV_h_count\(5) <= NOT \inst2|h_count\(5);
\inst2|ALT_INV_h_count\(6) <= NOT \inst2|h_count\(6);
\inst2|ALT_INV_v_count\(1) <= NOT \inst2|v_count\(1);
\inst2|ALT_INV_v_count\(0) <= NOT \inst2|v_count\(0);
\inst2|ALT_INV_v_count\(4) <= NOT \inst2|v_count\(4);
\inst2|ALT_INV_v_count\(9) <= NOT \inst2|v_count\(9);
\inst2|ALT_INV_v_count\(5) <= NOT \inst2|v_count\(5);
\inst2|ALT_INV_v_count\(6) <= NOT \inst2|v_count\(6);
\inst2|ALT_INV_v_count\(8) <= NOT \inst2|v_count\(8);
\inst2|ALT_INV_v_count\(7) <= NOT \inst2|v_count\(7);
\inst2|ALT_INV_v_count\(2) <= NOT \inst2|v_count\(2);
\inst2|ALT_INV_v_count\(3) <= NOT \inst2|v_count\(3);
\inst|ALT_INV_Add12~17_sumout\ <= NOT \inst|Add12~17_sumout\;
\inst|ALT_INV_Add12~13_sumout\ <= NOT \inst|Add12~13_sumout\;
\inst|ALT_INV_Add12~9_sumout\ <= NOT \inst|Add12~9_sumout\;
\inst|ALT_INV_Add12~5_sumout\ <= NOT \inst|Add12~5_sumout\;
\inst|ALT_INV_Add12~1_sumout\ <= NOT \inst|Add12~1_sumout\;
\inst|ALT_INV_Add6~29_sumout\ <= NOT \inst|Add6~29_sumout\;
\inst|ALT_INV_Add6~25_sumout\ <= NOT \inst|Add6~25_sumout\;
\inst|ALT_INV_Add6~21_sumout\ <= NOT \inst|Add6~21_sumout\;
\inst|ALT_INV_Add6~17_sumout\ <= NOT \inst|Add6~17_sumout\;
\inst|ALT_INV_Add6~13_sumout\ <= NOT \inst|Add6~13_sumout\;
\inst|ALT_INV_Add6~9_sumout\ <= NOT \inst|Add6~9_sumout\;
\inst|ALT_INV_Add6~5_sumout\ <= NOT \inst|Add6~5_sumout\;
\inst|ALT_INV_Add6~1_sumout\ <= NOT \inst|Add6~1_sumout\;
\inst|ALT_INV_Add4~17_sumout\ <= NOT \inst|Add4~17_sumout\;
\inst|ALT_INV_Add4~13_sumout\ <= NOT \inst|Add4~13_sumout\;
\inst|ALT_INV_Add4~9_sumout\ <= NOT \inst|Add4~9_sumout\;
\inst|ALT_INV_Add4~5_sumout\ <= NOT \inst|Add4~5_sumout\;
\inst|ALT_INV_Add4~1_sumout\ <= NOT \inst|Add4~1_sumout\;
\inst|ALT_INV_Add14~29_sumout\ <= NOT \inst|Add14~29_sumout\;
\inst|ALT_INV_Add14~25_sumout\ <= NOT \inst|Add14~25_sumout\;
\inst|ALT_INV_Add14~21_sumout\ <= NOT \inst|Add14~21_sumout\;
\inst|ALT_INV_Add14~17_sumout\ <= NOT \inst|Add14~17_sumout\;
\inst|ALT_INV_Add14~13_sumout\ <= NOT \inst|Add14~13_sumout\;
\inst|ALT_INV_Add14~9_sumout\ <= NOT \inst|Add14~9_sumout\;
\inst|ALT_INV_Add14~5_sumout\ <= NOT \inst|Add14~5_sumout\;
\inst|ALT_INV_Add14~1_sumout\ <= NOT \inst|Add14~1_sumout\;
\inst|ALT_INV_Add8~17_sumout\ <= NOT \inst|Add8~17_sumout\;
\inst|ALT_INV_Add8~13_sumout\ <= NOT \inst|Add8~13_sumout\;
\inst|ALT_INV_Add8~9_sumout\ <= NOT \inst|Add8~9_sumout\;
\inst|ALT_INV_Add8~5_sumout\ <= NOT \inst|Add8~5_sumout\;
\inst|ALT_INV_Add8~1_sumout\ <= NOT \inst|Add8~1_sumout\;
\inst|ALT_INV_Add10~25_sumout\ <= NOT \inst|Add10~25_sumout\;
\inst|ALT_INV_Add10~21_sumout\ <= NOT \inst|Add10~21_sumout\;
\inst|ALT_INV_Add10~17_sumout\ <= NOT \inst|Add10~17_sumout\;
\inst|ALT_INV_Add10~13_sumout\ <= NOT \inst|Add10~13_sumout\;
\inst|ALT_INV_Add10~9_sumout\ <= NOT \inst|Add10~9_sumout\;
\inst|ALT_INV_Add10~5_sumout\ <= NOT \inst|Add10~5_sumout\;
\inst|ALT_INV_Add10~1_sumout\ <= NOT \inst|Add10~1_sumout\;
\inst|ALT_INV_Add1~29_sumout\ <= NOT \inst|Add1~29_sumout\;
\inst|ALT_INV_Add1~25_sumout\ <= NOT \inst|Add1~25_sumout\;
\inst|ALT_INV_Add1~21_sumout\ <= NOT \inst|Add1~21_sumout\;
\inst|ALT_INV_Add1~17_sumout\ <= NOT \inst|Add1~17_sumout\;
\inst|ALT_INV_Add1~13_sumout\ <= NOT \inst|Add1~13_sumout\;
\inst|ALT_INV_Add1~9_sumout\ <= NOT \inst|Add1~9_sumout\;
\inst|ALT_INV_Add1~5_sumout\ <= NOT \inst|Add1~5_sumout\;
\inst|ALT_INV_Add1~1_sumout\ <= NOT \inst|Add1~1_sumout\;
\inst|ALT_INV_Add2~25_sumout\ <= NOT \inst|Add2~25_sumout\;
\inst|ALT_INV_Add2~21_sumout\ <= NOT \inst|Add2~21_sumout\;
\inst|ALT_INV_Add2~17_sumout\ <= NOT \inst|Add2~17_sumout\;
\inst|ALT_INV_Add2~13_sumout\ <= NOT \inst|Add2~13_sumout\;
\inst|ALT_INV_Add2~9_sumout\ <= NOT \inst|Add2~9_sumout\;
\inst|ALT_INV_Add2~5_sumout\ <= NOT \inst|Add2~5_sumout\;
\inst|ALT_INV_Add2~1_sumout\ <= NOT \inst|Add2~1_sumout\;
\inst|ALT_INV_Add3~25_sumout\ <= NOT \inst|Add3~25_sumout\;
\inst|ALT_INV_Add3~21_sumout\ <= NOT \inst|Add3~21_sumout\;
\inst|ALT_INV_Add3~17_sumout\ <= NOT \inst|Add3~17_sumout\;
\inst|ALT_INV_Add3~13_sumout\ <= NOT \inst|Add3~13_sumout\;
\inst|ALT_INV_Add3~9_sumout\ <= NOT \inst|Add3~9_sumout\;
\inst|ALT_INV_Add3~5_sumout\ <= NOT \inst|Add3~5_sumout\;
\inst|ALT_INV_Add3~1_sumout\ <= NOT \inst|Add3~1_sumout\;
\inst|ALT_INV_Add0~29_sumout\ <= NOT \inst|Add0~29_sumout\;
\inst|ALT_INV_Add0~25_sumout\ <= NOT \inst|Add0~25_sumout\;
\inst|ALT_INV_Add0~21_sumout\ <= NOT \inst|Add0~21_sumout\;
\inst|ALT_INV_Add0~17_sumout\ <= NOT \inst|Add0~17_sumout\;
\inst|ALT_INV_Add0~13_sumout\ <= NOT \inst|Add0~13_sumout\;
\inst|ALT_INV_Add0~9_sumout\ <= NOT \inst|Add0~9_sumout\;
\inst|ALT_INV_Add0~5_sumout\ <= NOT \inst|Add0~5_sumout\;
\inst|ALT_INV_Add0~1_sumout\ <= NOT \inst|Add0~1_sumout\;
\inst5|ALT_INV_cursor_column\(1) <= NOT \inst5|cursor_column\(1);
\inst5|ALT_INV_cursor_column\(4) <= NOT \inst5|cursor_column\(4);
\inst5|ALT_INV_cursor_column\(3) <= NOT \inst5|cursor_column\(3);
\inst5|ALT_INV_cursor_column\(0) <= NOT \inst5|cursor_column\(0);
\inst5|ALT_INV_cursor_column\(2) <= NOT \inst5|cursor_column\(2);
\inst5|ALT_INV_cursor_column\(5) <= NOT \inst5|cursor_column\(5);
\inst5|ALT_INV_new_cursor_column\(1) <= NOT \inst5|new_cursor_column\(1);
\inst5|ALT_INV_new_cursor_column\(2) <= NOT \inst5|new_cursor_column\(2);
\inst5|ALT_INV_new_cursor_column\(3) <= NOT \inst5|new_cursor_column\(3);
\inst5|ALT_INV_new_cursor_column\(4) <= NOT \inst5|new_cursor_column\(4);
\inst5|ALT_INV_new_cursor_column\(5) <= NOT \inst5|new_cursor_column\(5);
\inst5|ALT_INV_new_cursor_column\(0) <= NOT \inst5|new_cursor_column\(0);
\inst5|ALT_INV_new_cursor_column\(9) <= NOT \inst5|new_cursor_column\(9);
\inst5|ALT_INV_new_cursor_column\(7) <= NOT \inst5|new_cursor_column\(7);
\inst5|ALT_INV_new_cursor_column\(8) <= NOT \inst5|new_cursor_column\(8);
\inst5|ALT_INV_new_cursor_column\(6) <= NOT \inst5|new_cursor_column\(6);
\inst5|ALT_INV_new_cursor_row\(5) <= NOT \inst5|new_cursor_row\(5);
\inst5|ALT_INV_new_cursor_row\(6) <= NOT \inst5|new_cursor_row\(6);
\inst5|ALT_INV_new_cursor_row\(7) <= NOT \inst5|new_cursor_row\(7);
\inst5|ALT_INV_new_cursor_row\(1) <= NOT \inst5|new_cursor_row\(1);
\inst5|ALT_INV_new_cursor_row\(2) <= NOT \inst5|new_cursor_row\(2);
\inst5|ALT_INV_new_cursor_row\(3) <= NOT \inst5|new_cursor_row\(3);
\inst5|ALT_INV_new_cursor_row\(4) <= NOT \inst5|new_cursor_row\(4);
\inst5|ALT_INV_new_cursor_row\(0) <= NOT \inst5|new_cursor_row\(0);
\inst5|ALT_INV_new_cursor_row\(8) <= NOT \inst5|new_cursor_row\(8);
\inst5|ALT_INV_new_cursor_row\(9) <= NOT \inst5|new_cursor_row\(9);
\inst5|ALT_INV_cursor_column\(9) <= NOT \inst5|cursor_column\(9);
\inst5|ALT_INV_cursor_column\(7) <= NOT \inst5|cursor_column\(7);

-- Location: IOOBUF_X20_Y45_N53
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X20_Y45_N36
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_SevenSeg_out~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|SevenSeg_out[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|SevenSeg_out[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|SevenSeg_out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|SevenSeg_out[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_SevenSeg_out[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|SevenSeg_out[3]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|SevenSeg_out[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|SevenSeg_out[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|SevenSeg_out[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|SevenSeg_out[3]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|SevenSeg_out[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_SevenSeg_out[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|SevenSeg_out[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X14_Y0_N36
\LEDR0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|left_button~q\,
	devoe => ww_devoe,
	o => ww_LEDR0);

-- Location: IOOBUF_X14_Y0_N19
\LEDR1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|right_button~q\,
	devoe => ww_devoe,
	o => ww_LEDR1);

-- Location: IOOBUF_X54_Y14_N96
\LEDR3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|led3~combout\,
	devoe => ww_devoe,
	o => ww_LEDR3);

-- Location: IOOBUF_X54_Y14_N79
\LEDR4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|led4~combout\,
	devoe => ww_devoe,
	o => ww_LEDR4);

-- Location: IOOBUF_X12_Y45_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|blue_out~q\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X20_Y45_N19
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|green_out~q\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X16_Y45_N76
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X0_Y21_N5
\PS2_DAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MOUSE_DATA_BUF~q\,
	oe => \inst5|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => PS2_DAT);

-- Location: IOOBUF_X0_Y20_N5
\PS2_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst5|WideOr4~combout\,
	devoe => ww_devoe,
	o => PS2_CLK);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y7_N0
\inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y1_N0
\inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \inst3|pll2_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \inst3|pll2_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y5_N0
\inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y5_N1
\inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 6,
	dprio0_cnt_lo_div => 6,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "25.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 5)
-- pragma translate_on
PORT MAP (
	nen0 => \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\,
	tclk0 => \inst3|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \inst3|pll2_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \inst3|pll2_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G6
\inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|pll2_inst|altera_pll_i|outclk_wire\(0),
	outclk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: IOIBUF_X0_Y20_N4
\PS2_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_CLK,
	o => \PS2_CLK~input_o\);

-- Location: FF_X41_Y5_N5
\inst5|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \PS2_CLK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(0));

-- Location: FF_X41_Y5_N13
\inst5|filter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter[1]~DUPLICATE_q\);

-- Location: FF_X41_Y6_N8
\inst5|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter[1]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(2));

-- Location: FF_X41_Y5_N17
\inst5|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(3));

-- Location: FF_X41_Y5_N56
\inst5|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(4));

-- Location: FF_X41_Y5_N29
\inst5|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(5));

-- Location: FF_X41_Y5_N14
\inst5|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(1));

-- Location: LABCELL_X41_Y5_N30
\inst5|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal1~0_combout\ = ( \inst5|filter\(1) & ( (\inst5|filter\(0) & (\inst5|filter\(3) & (\inst5|filter\(4) & \inst5|filter\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_filter\(0),
	datab => \inst5|ALT_INV_filter\(3),
	datac => \inst5|ALT_INV_filter\(4),
	datad => \inst5|ALT_INV_filter\(2),
	dataf => \inst5|ALT_INV_filter\(1),
	combout => \inst5|Equal1~0_combout\);

-- Location: LABCELL_X41_Y5_N33
\inst5|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal2~0_combout\ = ( !\inst5|filter\(1) & ( (!\inst5|filter\(0) & (!\inst5|filter\(3) & (!\inst5|filter\(2) & !\inst5|filter\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_filter\(0),
	datab => \inst5|ALT_INV_filter\(3),
	datac => \inst5|ALT_INV_filter\(2),
	datad => \inst5|ALT_INV_filter\(4),
	dataf => \inst5|ALT_INV_filter\(1),
	combout => \inst5|Equal2~0_combout\);

-- Location: FF_X41_Y3_N40
\inst5|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(6));

-- Location: FF_X41_Y5_N25
\inst5|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(7));

-- Location: LABCELL_X41_Y5_N24
\inst5|MOUSE_CLK_FILTER~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|MOUSE_CLK_FILTER~0_combout\ = ( \inst5|filter\(6) & ( \inst5|MOUSE_CLK_FILTER~q\ ) ) # ( !\inst5|filter\(6) & ( \inst5|MOUSE_CLK_FILTER~q\ & ( ((!\inst5|Equal2~0_combout\) # (\inst5|filter\(7))) # (\inst5|filter\(5)) ) ) ) # ( \inst5|filter\(6) & ( 
-- !\inst5|MOUSE_CLK_FILTER~q\ & ( (\inst5|filter\(5) & (\inst5|Equal1~0_combout\ & \inst5|filter\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000111110101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_filter\(5),
	datab => \inst5|ALT_INV_Equal1~0_combout\,
	datac => \inst5|ALT_INV_Equal2~0_combout\,
	datad => \inst5|ALT_INV_filter\(7),
	datae => \inst5|ALT_INV_filter\(6),
	dataf => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	combout => \inst5|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X40_Y4_N4
\inst5|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|MOUSE_CLK_FILTER~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|MOUSE_CLK_FILTER~q\);

-- Location: LABCELL_X39_Y5_N27
\inst5|SHIFTOUT[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst5|SHIFTOUT[9]~feeder_combout\);

-- Location: MLABCELL_X34_Y8_N48
\inst5|inhibit_wait_count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|inhibit_wait_count[0]~0_combout\ = !\inst5|inhibit_wait_count\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_inhibit_wait_count\(0),
	combout => \inst5|inhibit_wait_count[0]~0_combout\);

-- Location: MLABCELL_X34_Y8_N27
\inst5|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~5_sumout\ = SUM(( \inst5|inhibit_wait_count\(10) ) + ( GND ) + ( \inst5|Add0~10\ ))
-- \inst5|Add0~6\ = CARRY(( \inst5|inhibit_wait_count\(10) ) + ( GND ) + ( \inst5|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_inhibit_wait_count\(10),
	cin => \inst5|Add0~10\,
	sumout => \inst5|Add0~5_sumout\,
	cout => \inst5|Add0~6\);

-- Location: MLABCELL_X34_Y8_N30
\inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_sumout\ = SUM(( \inst5|inhibit_wait_count\(11) ) + ( GND ) + ( \inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_inhibit_wait_count\(11),
	cin => \inst5|Add0~6\,
	sumout => \inst5|Add0~1_sumout\);

-- Location: FF_X34_Y8_N31
\inst5|inhibit_wait_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~1_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(11));

-- Location: MLABCELL_X34_Y8_N42
\inst5|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector0~0_combout\ = ( \inst5|inhibit_wait_count\(11) & ( (\inst5|mouse_state.INHIBIT_TRANS~q\) # (\inst5|inhibit_wait_count\(10)) ) ) # ( !\inst5|inhibit_wait_count\(11) & ( \inst5|mouse_state.INHIBIT_TRANS~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_inhibit_wait_count\(10),
	datad => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	dataf => \inst5|ALT_INV_inhibit_wait_count\(11),
	combout => \inst5|Selector0~0_combout\);

-- Location: FF_X34_Y8_N44
\inst5|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X34_Y8_N50
\inst5|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|inhibit_wait_count[0]~0_combout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(0));

-- Location: MLABCELL_X34_Y8_N0
\inst5|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~41_sumout\ = SUM(( \inst5|inhibit_wait_count\(0) ) + ( \inst5|inhibit_wait_count\(1) ) + ( !VCC ))
-- \inst5|Add0~42\ = CARRY(( \inst5|inhibit_wait_count\(0) ) + ( \inst5|inhibit_wait_count\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_inhibit_wait_count\(1),
	datac => \inst5|ALT_INV_inhibit_wait_count\(0),
	cin => GND,
	sumout => \inst5|Add0~41_sumout\,
	cout => \inst5|Add0~42\);

-- Location: FF_X34_Y8_N2
\inst5|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~41_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(1));

-- Location: MLABCELL_X34_Y8_N3
\inst5|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~37_sumout\ = SUM(( \inst5|inhibit_wait_count\(2) ) + ( GND ) + ( \inst5|Add0~42\ ))
-- \inst5|Add0~38\ = CARRY(( \inst5|inhibit_wait_count\(2) ) + ( GND ) + ( \inst5|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_inhibit_wait_count\(2),
	cin => \inst5|Add0~42\,
	sumout => \inst5|Add0~37_sumout\,
	cout => \inst5|Add0~38\);

-- Location: FF_X34_Y8_N5
\inst5|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~37_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(2));

-- Location: MLABCELL_X34_Y8_N6
\inst5|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~33_sumout\ = SUM(( \inst5|inhibit_wait_count\(3) ) + ( GND ) + ( \inst5|Add0~38\ ))
-- \inst5|Add0~34\ = CARRY(( \inst5|inhibit_wait_count\(3) ) + ( GND ) + ( \inst5|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_inhibit_wait_count\(3),
	cin => \inst5|Add0~38\,
	sumout => \inst5|Add0~33_sumout\,
	cout => \inst5|Add0~34\);

-- Location: FF_X34_Y8_N7
\inst5|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~33_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(3));

-- Location: MLABCELL_X34_Y8_N9
\inst5|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~29_sumout\ = SUM(( \inst5|inhibit_wait_count\(4) ) + ( GND ) + ( \inst5|Add0~34\ ))
-- \inst5|Add0~30\ = CARRY(( \inst5|inhibit_wait_count\(4) ) + ( GND ) + ( \inst5|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_inhibit_wait_count\(4),
	cin => \inst5|Add0~34\,
	sumout => \inst5|Add0~29_sumout\,
	cout => \inst5|Add0~30\);

-- Location: FF_X34_Y8_N11
\inst5|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~29_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(4));

-- Location: MLABCELL_X34_Y8_N12
\inst5|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~25_sumout\ = SUM(( \inst5|inhibit_wait_count\(5) ) + ( GND ) + ( \inst5|Add0~30\ ))
-- \inst5|Add0~26\ = CARRY(( \inst5|inhibit_wait_count\(5) ) + ( GND ) + ( \inst5|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_inhibit_wait_count\(5),
	cin => \inst5|Add0~30\,
	sumout => \inst5|Add0~25_sumout\,
	cout => \inst5|Add0~26\);

-- Location: FF_X34_Y8_N14
\inst5|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~25_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(5));

-- Location: MLABCELL_X34_Y8_N15
\inst5|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~21_sumout\ = SUM(( \inst5|inhibit_wait_count\(6) ) + ( GND ) + ( \inst5|Add0~26\ ))
-- \inst5|Add0~22\ = CARRY(( \inst5|inhibit_wait_count\(6) ) + ( GND ) + ( \inst5|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_inhibit_wait_count\(6),
	cin => \inst5|Add0~26\,
	sumout => \inst5|Add0~21_sumout\,
	cout => \inst5|Add0~22\);

-- Location: FF_X34_Y8_N16
\inst5|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~21_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(6));

-- Location: MLABCELL_X34_Y8_N18
\inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~17_sumout\ = SUM(( \inst5|inhibit_wait_count\(7) ) + ( GND ) + ( \inst5|Add0~22\ ))
-- \inst5|Add0~18\ = CARRY(( \inst5|inhibit_wait_count\(7) ) + ( GND ) + ( \inst5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_inhibit_wait_count\(7),
	cin => \inst5|Add0~22\,
	sumout => \inst5|Add0~17_sumout\,
	cout => \inst5|Add0~18\);

-- Location: FF_X34_Y8_N19
\inst5|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~17_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(7));

-- Location: MLABCELL_X34_Y8_N21
\inst5|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~13_sumout\ = SUM(( \inst5|inhibit_wait_count\(8) ) + ( GND ) + ( \inst5|Add0~18\ ))
-- \inst5|Add0~14\ = CARRY(( \inst5|inhibit_wait_count\(8) ) + ( GND ) + ( \inst5|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_inhibit_wait_count\(8),
	cin => \inst5|Add0~18\,
	sumout => \inst5|Add0~13_sumout\,
	cout => \inst5|Add0~14\);

-- Location: FF_X34_Y8_N23
\inst5|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~13_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(8));

-- Location: MLABCELL_X34_Y8_N24
\inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~9_sumout\ = SUM(( \inst5|inhibit_wait_count\(9) ) + ( GND ) + ( \inst5|Add0~14\ ))
-- \inst5|Add0~10\ = CARRY(( \inst5|inhibit_wait_count\(9) ) + ( GND ) + ( \inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_inhibit_wait_count\(9),
	cin => \inst5|Add0~14\,
	sumout => \inst5|Add0~9_sumout\,
	cout => \inst5|Add0~10\);

-- Location: FF_X34_Y8_N26
\inst5|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~9_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(9));

-- Location: FF_X34_Y8_N29
\inst5|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~5_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(10));

-- Location: MLABCELL_X34_Y8_N45
\inst5|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector1~0_combout\ = ( \inst5|inhibit_wait_count\(11) & ( (\inst5|inhibit_wait_count\(10) & !\inst5|mouse_state.INHIBIT_TRANS~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_inhibit_wait_count\(10),
	datac => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	dataf => \inst5|ALT_INV_inhibit_wait_count\(11),
	combout => \inst5|Selector1~0_combout\);

-- Location: FF_X34_Y8_N47
\inst5|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X34_Y8_N38
\inst5|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.LOAD_COMMAND2~q\);

-- Location: IOIBUF_X0_Y21_N4
\PS2_DAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_DAT,
	o => \PS2_DAT~input_o\);

-- Location: LABCELL_X40_Y4_N21
\inst5|INCNT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~3_combout\ = ( !\inst5|INCNT\(3) & ( !\inst5|INCNT\(1) $ (!\inst5|INCNT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_INCNT\(1),
	datad => \inst5|ALT_INV_INCNT\(0),
	dataf => \inst5|ALT_INV_INCNT\(3),
	combout => \inst5|INCNT~3_combout\);

-- Location: LABCELL_X39_Y5_N57
\inst5|OUTCNT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~1_combout\ = ( \inst5|OUTCNT\(2) & ( !\inst5|OUTCNT\(3) & ( (!\inst5|OUTCNT\(0)) # (!\inst5|OUTCNT\(1)) ) ) ) # ( !\inst5|OUTCNT\(2) & ( !\inst5|OUTCNT\(3) & ( (\inst5|OUTCNT\(0) & \inst5|OUTCNT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_OUTCNT\(0),
	datad => \inst5|ALT_INV_OUTCNT\(1),
	datae => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(3),
	combout => \inst5|OUTCNT~1_combout\);

-- Location: LABCELL_X39_Y5_N15
\inst5|send_char~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|send_char~0_combout\ = ( \inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( \inst5|OUTCNT\(1) & ( (\inst5|send_char~q\) # (\inst5|OUTCNT\(3)) ) ) ) # ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( \inst5|OUTCNT\(1) & ( \inst5|send_char~q\ ) ) ) # ( 
-- \inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( !\inst5|OUTCNT\(1) & ( ((\inst5|OUTCNT\(2) & \inst5|OUTCNT\(3))) # (\inst5|send_char~q\) ) ) ) # ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( !\inst5|OUTCNT\(1) & ( \inst5|send_char~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000100011111111100000000111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(2),
	datab => \inst5|ALT_INV_OUTCNT\(3),
	datad => \inst5|ALT_INV_send_char~q\,
	datae => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	dataf => \inst5|ALT_INV_OUTCNT\(1),
	combout => \inst5|send_char~0_combout\);

-- Location: FF_X39_Y5_N56
\inst5|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|send_char~0_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|send_char~q\);

-- Location: LABCELL_X39_Y5_N33
\inst5|output_ready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|output_ready~0_combout\ = ( \inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( !\inst5|send_char~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_send_char~q\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|output_ready~0_combout\);

-- Location: FF_X39_Y5_N50
\inst5|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|OUTCNT~1_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|OUTCNT\(2));

-- Location: LABCELL_X39_Y5_N42
\inst5|OUTCNT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~3_combout\ = ( !\inst5|OUTCNT\(2) & ( \inst5|OUTCNT\(3) & ( (!\inst5|OUTCNT\(1) & !\inst5|OUTCNT\(0)) ) ) ) # ( \inst5|OUTCNT\(2) & ( !\inst5|OUTCNT\(3) & ( !\inst5|OUTCNT\(0) ) ) ) # ( !\inst5|OUTCNT\(2) & ( !\inst5|OUTCNT\(3) & ( 
-- !\inst5|OUTCNT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_OUTCNT\(1),
	datad => \inst5|ALT_INV_OUTCNT\(0),
	datae => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(3),
	combout => \inst5|OUTCNT~3_combout\);

-- Location: FF_X39_Y5_N14
\inst5|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|OUTCNT~3_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|OUTCNT\(0));

-- Location: LABCELL_X39_Y5_N21
\inst5|OUTCNT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~2_combout\ = ( \inst5|OUTCNT\(2) & ( (!\inst5|OUTCNT\(3) & (!\inst5|OUTCNT\(1) $ (!\inst5|OUTCNT\(0)))) ) ) # ( !\inst5|OUTCNT\(2) & ( (!\inst5|OUTCNT\(1) & ((\inst5|OUTCNT\(0)))) # (\inst5|OUTCNT\(1) & (!\inst5|OUTCNT\(3) & 
-- !\inst5|OUTCNT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101001001010010010100100101001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(1),
	datab => \inst5|ALT_INV_OUTCNT\(3),
	datac => \inst5|ALT_INV_OUTCNT\(0),
	dataf => \inst5|ALT_INV_OUTCNT\(2),
	combout => \inst5|OUTCNT~2_combout\);

-- Location: LABCELL_X39_Y5_N51
\inst5|OUTCNT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT[1]~feeder_combout\ = \inst5|OUTCNT~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT~2_combout\,
	combout => \inst5|OUTCNT[1]~feeder_combout\);

-- Location: FF_X39_Y5_N53
\inst5|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|OUTCNT[1]~feeder_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	ena => \inst5|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|OUTCNT\(1));

-- Location: LABCELL_X39_Y5_N36
\inst5|OUTCNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~0_combout\ = ( \inst5|OUTCNT\(0) & ( (!\inst5|OUTCNT\(1) & (\inst5|OUTCNT\(3) & !\inst5|OUTCNT\(2))) # (\inst5|OUTCNT\(1) & (!\inst5|OUTCNT\(3) & \inst5|OUTCNT\(2))) ) ) # ( !\inst5|OUTCNT\(0) & ( (!\inst5|OUTCNT\(1) & (\inst5|OUTCNT\(3) & 
-- !\inst5|OUTCNT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100100001001000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(1),
	datab => \inst5|ALT_INV_OUTCNT\(3),
	datac => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(0),
	combout => \inst5|OUTCNT~0_combout\);

-- Location: FF_X39_Y5_N47
\inst5|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|OUTCNT~0_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|OUTCNT\(3));

-- Location: LABCELL_X39_Y5_N3
\inst5|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = ( \inst5|OUTCNT\(2) & ( \inst5|OUTCNT\(3) ) ) # ( !\inst5|OUTCNT\(2) & ( (\inst5|OUTCNT\(3) & \inst5|OUTCNT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_OUTCNT\(3),
	datad => \inst5|ALT_INV_OUTCNT\(1),
	dataf => \inst5|ALT_INV_OUTCNT\(2),
	combout => \inst5|LessThan0~0_combout\);

-- Location: FF_X39_Y5_N5
\inst5|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|LessThan0~0_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	ena => \inst5|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|output_ready~q\);

-- Location: MLABCELL_X34_Y8_N39
\inst5|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector3~0_combout\ = ( \inst5|output_ready~q\ & ( \inst5|mouse_state.LOAD_COMMAND2~q\ ) ) # ( !\inst5|output_ready~q\ & ( (\inst5|mouse_state.WAIT_OUTPUT_READY~q\) # (\inst5|mouse_state.LOAD_COMMAND2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\,
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	dataf => \inst5|ALT_INV_output_ready~q\,
	combout => \inst5|Selector3~0_combout\);

-- Location: FF_X40_Y4_N50
\inst5|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|Selector3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LABCELL_X40_Y4_N0
\inst5|INCNT[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT[3]~1_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( \inst5|READ_CHAR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|INCNT[3]~1_combout\);

-- Location: FF_X40_Y4_N14
\inst5|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|INCNT~3_combout\,
	sload => VCC,
	ena => \inst5|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|INCNT\(1));

-- Location: LABCELL_X40_Y4_N51
\inst5|INCNT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~2_combout\ = ( \inst5|INCNT\(0) & ( !\inst5|INCNT\(3) & ( !\inst5|INCNT\(2) $ (!\inst5|INCNT\(1)) ) ) ) # ( !\inst5|INCNT\(0) & ( !\inst5|INCNT\(3) & ( \inst5|INCNT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111000011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_INCNT\(2),
	datac => \inst5|ALT_INV_INCNT\(1),
	datae => \inst5|ALT_INV_INCNT\(0),
	dataf => \inst5|ALT_INV_INCNT\(3),
	combout => \inst5|INCNT~2_combout\);

-- Location: FF_X40_Y4_N44
\inst5|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|INCNT~2_combout\,
	sload => VCC,
	ena => \inst5|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|INCNT\(2));

-- Location: LABCELL_X39_Y4_N9
\inst5|INCNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~0_combout\ = ( \inst5|INCNT\(2) & ( (\inst5|INCNT\(1) & (!\inst5|INCNT\(3) & \inst5|INCNT\(0))) ) ) # ( !\inst5|INCNT\(2) & ( (!\inst5|INCNT\(1) & (\inst5|INCNT\(3) & !\inst5|INCNT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_INCNT\(1),
	datac => \inst5|ALT_INV_INCNT\(3),
	datad => \inst5|ALT_INV_INCNT\(0),
	dataf => \inst5|ALT_INV_INCNT\(2),
	combout => \inst5|INCNT~0_combout\);

-- Location: FF_X40_Y4_N59
\inst5|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|INCNT~0_combout\,
	sload => VCC,
	ena => \inst5|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|INCNT\(3));

-- Location: LABCELL_X40_Y4_N30
\inst5|INCNT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~4_combout\ = ( \inst5|INCNT\(2) & ( (!\inst5|INCNT\(0) & !\inst5|INCNT\(3)) ) ) # ( !\inst5|INCNT\(2) & ( (!\inst5|INCNT\(0) & ((!\inst5|INCNT\(3)) # (!\inst5|INCNT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(0),
	datab => \inst5|ALT_INV_INCNT\(3),
	datad => \inst5|ALT_INV_INCNT\(1),
	dataf => \inst5|ALT_INV_INCNT\(2),
	combout => \inst5|INCNT~4_combout\);

-- Location: FF_X40_Y4_N29
\inst5|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|INCNT~4_combout\,
	sload => VCC,
	ena => \inst5|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|INCNT\(0));

-- Location: LABCELL_X40_Y4_N42
\inst5|READ_CHAR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|READ_CHAR~0_combout\ = ( \inst5|INCNT\(2) & ( \inst5|INCNT\(3) & ( (!\PS2_DAT~input_o\ & !\inst5|READ_CHAR~q\) ) ) ) # ( !\inst5|INCNT\(2) & ( \inst5|INCNT\(3) & ( (!\inst5|READ_CHAR~q\ & (!\PS2_DAT~input_o\)) # (\inst5|READ_CHAR~q\ & 
-- (((!\inst5|INCNT\(0) & !\inst5|INCNT\(1))))) ) ) ) # ( \inst5|INCNT\(2) & ( !\inst5|INCNT\(3) & ( (!\PS2_DAT~input_o\) # (\inst5|READ_CHAR~q\) ) ) ) # ( !\inst5|INCNT\(2) & ( !\inst5|INCNT\(3) & ( (!\PS2_DAT~input_o\) # (\inst5|READ_CHAR~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PS2_DAT~input_o\,
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_INCNT\(0),
	datad => \inst5|ALT_INV_INCNT\(1),
	datae => \inst5|ALT_INV_INCNT\(2),
	dataf => \inst5|ALT_INV_INCNT\(3),
	combout => \inst5|READ_CHAR~0_combout\);

-- Location: FF_X40_Y4_N8
\inst5|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|READ_CHAR~0_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|READ_CHAR~q\);

-- Location: LABCELL_X40_Y4_N33
\inst5|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = ( \inst5|INCNT\(1) & ( \inst5|INCNT\(3) ) ) # ( !\inst5|INCNT\(1) & ( (\inst5|INCNT\(3) & ((\inst5|INCNT\(0)) # (\inst5|INCNT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_INCNT\(3),
	datac => \inst5|ALT_INV_INCNT\(2),
	datad => \inst5|ALT_INV_INCNT\(0),
	dataf => \inst5|ALT_INV_INCNT\(1),
	combout => \inst5|LessThan1~0_combout\);

-- Location: LABCELL_X40_Y4_N3
\inst5|iready_set~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|iready_set~0_combout\ = ( \inst5|LessThan1~0_combout\ & ( ((\PS2_DAT~input_o\ & \inst5|iready_set~q\)) # (\inst5|READ_CHAR~q\) ) ) # ( !\inst5|LessThan1~0_combout\ & ( (\PS2_DAT~input_o\ & (!\inst5|READ_CHAR~q\ & \inst5|iready_set~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PS2_DAT~input_o\,
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_iready_set~q\,
	dataf => \inst5|ALT_INV_LessThan1~0_combout\,
	combout => \inst5|iready_set~0_combout\);

-- Location: LABCELL_X39_Y3_N9
\inst5|iready_set~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|iready_set~feeder_combout\ = \inst5|iready_set~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_iready_set~0_combout\,
	combout => \inst5|iready_set~feeder_combout\);

-- Location: FF_X39_Y3_N11
\inst5|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|iready_set~feeder_combout\,
	ena => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|iready_set~q\);

-- Location: MLABCELL_X34_Y8_N54
\inst5|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector4~0_combout\ = ( \inst5|output_ready~q\ & ( ((!\inst5|iready_set~q\ & \inst5|mouse_state.WAIT_CMD_ACK~q\)) # (\inst5|mouse_state.WAIT_OUTPUT_READY~q\) ) ) # ( !\inst5|output_ready~q\ & ( (!\inst5|iready_set~q\ & 
-- \inst5|mouse_state.WAIT_CMD_ACK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_iready_set~q\,
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst5|ALT_INV_mouse_state.WAIT_CMD_ACK~q\,
	dataf => \inst5|ALT_INV_output_ready~q\,
	combout => \inst5|Selector4~0_combout\);

-- Location: FF_X34_Y8_N55
\inst5|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.WAIT_CMD_ACK~q\);

-- Location: MLABCELL_X34_Y8_N57
\inst5|mouse_state.INPUT_PACKETS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|mouse_state.INPUT_PACKETS~0_combout\ = ( \inst5|iready_set~q\ & ( (\inst5|mouse_state.INPUT_PACKETS~q\) # (\inst5|mouse_state.WAIT_CMD_ACK~q\) ) ) # ( !\inst5|iready_set~q\ & ( \inst5|mouse_state.INPUT_PACKETS~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\,
	dataf => \inst5|ALT_INV_iready_set~q\,
	combout => \inst5|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X34_Y8_N59
\inst5|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.INPUT_PACKETS~q\);

-- Location: MLABCELL_X34_Y8_N36
\inst5|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector6~0_combout\ = ( \inst5|send_data~q\ & ( ((!\inst5|mouse_state.INHIBIT_TRANS~q\) # ((\inst5|mouse_state.LOAD_COMMAND~q\) # (\inst5|mouse_state.INPUT_PACKETS~q\))) # (\inst5|mouse_state.LOAD_COMMAND2~q\) ) ) # ( !\inst5|send_data~q\ & ( 
-- (\inst5|mouse_state.LOAD_COMMAND~q\) # (\inst5|mouse_state.LOAD_COMMAND2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\,
	datab => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	datac => \inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\,
	datad => \inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\,
	dataf => \inst5|ALT_INV_send_data~q\,
	combout => \inst5|Selector6~0_combout\);

-- Location: FF_X40_Y5_N26
\inst5|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|Selector6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|send_data~q\);

-- Location: LABCELL_X39_Y5_N6
\inst5|MOUSE_DATA_BUF~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|MOUSE_DATA_BUF~0_combout\ = ( \inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( \inst5|OUTCNT\(1) & ( (!\inst5|send_char~q\ & !\inst5|OUTCNT\(3)) ) ) ) # ( \inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( !\inst5|OUTCNT\(1) & ( (!\inst5|send_char~q\ & 
-- ((!\inst5|OUTCNT\(3)) # (!\inst5|OUTCNT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010001010100000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_send_char~q\,
	datab => \inst5|ALT_INV_OUTCNT\(3),
	datac => \inst5|ALT_INV_OUTCNT\(2),
	datae => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	dataf => \inst5|ALT_INV_OUTCNT\(1),
	combout => \inst5|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X39_Y5_N28
\inst5|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTOUT\(9));

-- Location: LABCELL_X39_Y5_N24
\inst5|SHIFTOUT[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTOUT[8]~3_combout\ = ( !\inst5|SHIFTOUT\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_SHIFTOUT\(9),
	combout => \inst5|SHIFTOUT[8]~3_combout\);

-- Location: FF_X39_Y5_N25
\inst5|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTOUT[8]~3_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTOUT\(8));

-- Location: FF_X39_Y5_N10
\inst5|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTOUT\(8),
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTOUT\(7));

-- Location: FF_X39_Y5_N8
\inst5|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTOUT\(7),
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTOUT\(6));

-- Location: FF_X39_Y5_N22
\inst5|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTOUT\(6),
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTOUT\(5));

-- Location: LABCELL_X39_Y5_N18
\inst5|SHIFTOUT[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTOUT[4]~2_combout\ = ( !\inst5|SHIFTOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_SHIFTOUT\(5),
	combout => \inst5|SHIFTOUT[4]~2_combout\);

-- Location: FF_X39_Y5_N20
\inst5|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTOUT[4]~2_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTOUT\(4));

-- Location: LABCELL_X39_Y5_N39
\inst5|SHIFTOUT[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTOUT[3]~1_combout\ = ( !\inst5|SHIFTOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_SHIFTOUT\(4),
	combout => \inst5|SHIFTOUT[3]~1_combout\);

-- Location: FF_X39_Y5_N41
\inst5|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTOUT[3]~1_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTOUT\(3));

-- Location: LABCELL_X39_Y5_N30
\inst5|SHIFTOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTOUT[2]~0_combout\ = ( !\inst5|SHIFTOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_SHIFTOUT\(3),
	combout => \inst5|SHIFTOUT[2]~0_combout\);

-- Location: FF_X39_Y5_N31
\inst5|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTOUT[2]~0_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTOUT\(2));

-- Location: FF_X39_Y5_N34
\inst5|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTOUT\(2),
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTOUT\(1));

-- Location: FF_X39_Y5_N37
\inst5|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTOUT\(1),
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|MOUSE_DATA_BUF~q\);

-- Location: MLABCELL_X34_Y8_N51
\inst5|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|WideOr4~combout\ = ( \inst5|mouse_state.INHIBIT_TRANS~q\ & ( (\inst5|mouse_state.LOAD_COMMAND~q\) # (\inst5|mouse_state.LOAD_COMMAND2~q\) ) ) # ( !\inst5|mouse_state.INHIBIT_TRANS~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\,
	datac => \inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\,
	dataf => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	combout => \inst5|WideOr4~combout\);

-- Location: MLABCELL_X37_Y5_N0
\inst2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~33_sumout\ = SUM(( \inst2|v_count\(0) ) + ( VCC ) + ( !VCC ))
-- \inst2|Add1~34\ = CARRY(( \inst2|v_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(0),
	cin => GND,
	sumout => \inst2|Add1~33_sumout\,
	cout => \inst2|Add1~34\);

-- Location: LABCELL_X40_Y6_N30
\inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~25_sumout\ = SUM(( \inst2|h_count\(0) ) + ( VCC ) + ( !VCC ))
-- \inst2|Add0~26\ = CARRY(( \inst2|h_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(0),
	cin => GND,
	sumout => \inst2|Add0~25_sumout\,
	cout => \inst2|Add0~26\);

-- Location: FF_X40_Y6_N32
\inst2|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~25_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(0));

-- Location: LABCELL_X40_Y6_N33
\inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_sumout\ = SUM(( \inst2|h_count\(1) ) + ( GND ) + ( \inst2|Add0~26\ ))
-- \inst2|Add0~22\ = CARRY(( \inst2|h_count\(1) ) + ( GND ) + ( \inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(1),
	cin => \inst2|Add0~26\,
	sumout => \inst2|Add0~21_sumout\,
	cout => \inst2|Add0~22\);

-- Location: FF_X40_Y6_N35
\inst2|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~21_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(1));

-- Location: LABCELL_X40_Y6_N36
\inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~13_sumout\ = SUM(( \inst2|h_count\(2) ) + ( GND ) + ( \inst2|Add0~22\ ))
-- \inst2|Add0~14\ = CARRY(( \inst2|h_count\(2) ) + ( GND ) + ( \inst2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(2),
	cin => \inst2|Add0~22\,
	sumout => \inst2|Add0~13_sumout\,
	cout => \inst2|Add0~14\);

-- Location: FF_X40_Y6_N38
\inst2|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~13_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(2));

-- Location: LABCELL_X40_Y6_N39
\inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_sumout\ = SUM(( \inst2|h_count\(3) ) + ( GND ) + ( \inst2|Add0~14\ ))
-- \inst2|Add0~10\ = CARRY(( \inst2|h_count\(3) ) + ( GND ) + ( \inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(3),
	cin => \inst2|Add0~14\,
	sumout => \inst2|Add0~9_sumout\,
	cout => \inst2|Add0~10\);

-- Location: FF_X40_Y6_N40
\inst2|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~9_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(3));

-- Location: LABCELL_X40_Y6_N42
\inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_sumout\ = SUM(( \inst2|h_count\(4) ) + ( GND ) + ( \inst2|Add0~10\ ))
-- \inst2|Add0~18\ = CARRY(( \inst2|h_count\(4) ) + ( GND ) + ( \inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(4),
	cin => \inst2|Add0~10\,
	sumout => \inst2|Add0~17_sumout\,
	cout => \inst2|Add0~18\);

-- Location: FF_X40_Y6_N44
\inst2|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~17_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(4));

-- Location: LABCELL_X40_Y6_N45
\inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_sumout\ = SUM(( \inst2|h_count\(5) ) + ( GND ) + ( \inst2|Add0~18\ ))
-- \inst2|Add0~6\ = CARRY(( \inst2|h_count\(5) ) + ( GND ) + ( \inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(5),
	cin => \inst2|Add0~18\,
	sumout => \inst2|Add0~5_sumout\,
	cout => \inst2|Add0~6\);

-- Location: FF_X40_Y6_N46
\inst2|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~5_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(5));

-- Location: LABCELL_X40_Y6_N48
\inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_sumout\ = SUM(( \inst2|h_count\(6) ) + ( GND ) + ( \inst2|Add0~6\ ))
-- \inst2|Add0~2\ = CARRY(( \inst2|h_count\(6) ) + ( GND ) + ( \inst2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(6),
	cin => \inst2|Add0~6\,
	sumout => \inst2|Add0~1_sumout\,
	cout => \inst2|Add0~2\);

-- Location: FF_X40_Y6_N49
\inst2|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~1_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(6));

-- Location: LABCELL_X40_Y6_N51
\inst2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~33_sumout\ = SUM(( \inst2|h_count\(7) ) + ( GND ) + ( \inst2|Add0~2\ ))
-- \inst2|Add0~34\ = CARRY(( \inst2|h_count\(7) ) + ( GND ) + ( \inst2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(7),
	cin => \inst2|Add0~2\,
	sumout => \inst2|Add0~33_sumout\,
	cout => \inst2|Add0~34\);

-- Location: LABCELL_X40_Y6_N54
\inst2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~37_sumout\ = SUM(( \inst2|h_count\(8) ) + ( GND ) + ( \inst2|Add0~34\ ))
-- \inst2|Add0~38\ = CARRY(( \inst2|h_count\(8) ) + ( GND ) + ( \inst2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(8),
	cin => \inst2|Add0~34\,
	sumout => \inst2|Add0~37_sumout\,
	cout => \inst2|Add0~38\);

-- Location: FF_X40_Y6_N56
\inst2|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~37_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(8));

-- Location: LABCELL_X40_Y6_N57
\inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~29_sumout\ = SUM(( \inst2|h_count\(9) ) + ( GND ) + ( \inst2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(9),
	cin => \inst2|Add0~38\,
	sumout => \inst2|Add0~29_sumout\);

-- Location: FF_X40_Y6_N58
\inst2|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~29_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(9));

-- Location: FF_X40_Y6_N43
\inst2|h_count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~17_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count[4]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y6_N6
\inst2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = ( \inst2|h_count\(3) & ( \inst2|h_count[4]~DUPLICATE_q\ & ( (\inst2|h_count\(9) & (\inst2|h_count\(0) & (\inst2|h_count\(1) & !\inst2|h_count\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(9),
	datab => \inst2|ALT_INV_h_count\(0),
	datac => \inst2|ALT_INV_h_count\(1),
	datad => \inst2|ALT_INV_h_count\(6),
	datae => \inst2|ALT_INV_h_count\(3),
	dataf => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LABCELL_X40_Y6_N15
\inst2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = ( !\inst2|h_count\(7) & ( (\inst2|h_count\(8) & (\inst2|Equal0~0_combout\ & (!\inst2|h_count\(5) & \inst2|h_count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(8),
	datab => \inst2|ALT_INV_Equal0~0_combout\,
	datac => \inst2|ALT_INV_h_count\(5),
	datad => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_h_count\(7),
	combout => \inst2|Equal0~1_combout\);

-- Location: FF_X40_Y6_N53
\inst2|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~33_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(7));

-- Location: FF_X40_Y6_N52
\inst2|h_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~33_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count[7]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y6_N24
\inst2|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = ( \inst2|h_count\(0) & ( (!\inst2|h_count\(1) & !\inst2|h_count\(2)) ) ) # ( !\inst2|h_count\(0) & ( !\inst2|h_count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_h_count\(1),
	datad => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_h_count\(0),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LABCELL_X40_Y6_N27
\inst2|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = ( \inst2|h_count[4]~DUPLICATE_q\ & ( (!\inst2|h_count\(6) & (((!\inst2|h_count\(5)) # (!\inst2|h_count\(3))) # (\inst2|LessThan1~0_combout\))) ) ) # ( !\inst2|h_count[4]~DUPLICATE_q\ & ( !\inst2|h_count\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000110100001111000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan1~0_combout\,
	datab => \inst2|ALT_INV_h_count\(5),
	datac => \inst2|ALT_INV_h_count\(6),
	datad => \inst2|ALT_INV_h_count\(3),
	dataf => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	combout => \inst2|process_0~4_combout\);

-- Location: LABCELL_X40_Y6_N12
\inst2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = ( \inst2|h_count\(7) & ( (!\inst2|h_count\(8) & (\inst2|Equal0~0_combout\ & (!\inst2|h_count\(2) & \inst2|h_count\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(8),
	datab => \inst2|ALT_INV_Equal0~0_combout\,
	datac => \inst2|ALT_INV_h_count\(2),
	datad => \inst2|ALT_INV_h_count\(5),
	dataf => \inst2|ALT_INV_h_count\(7),
	combout => \inst2|Equal1~0_combout\);

-- Location: MLABCELL_X37_Y5_N57
\inst2|v_count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|v_count[0]~0_combout\ = ( \inst2|process_0~6_combout\ & ( (((\inst2|h_count[7]~DUPLICATE_q\ & !\inst2|process_0~4_combout\)) # (\inst2|Equal1~0_combout\)) # (\inst2|h_count\(8)) ) ) # ( !\inst2|process_0~6_combout\ & ( \inst2|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111111001111110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count[7]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_h_count\(8),
	datac => \inst2|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_process_0~4_combout\,
	dataf => \inst2|ALT_INV_process_0~6_combout\,
	combout => \inst2|v_count[0]~0_combout\);

-- Location: FF_X37_Y5_N19
\inst2|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~17_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(6));

-- Location: MLABCELL_X37_Y5_N9
\inst2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~1_sumout\ = SUM(( \inst2|v_count\(3) ) + ( GND ) + ( \inst2|Add1~6\ ))
-- \inst2|Add1~2\ = CARRY(( \inst2|v_count\(3) ) + ( GND ) + ( \inst2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(3),
	cin => \inst2|Add1~6\,
	sumout => \inst2|Add1~1_sumout\,
	cout => \inst2|Add1~2\);

-- Location: MLABCELL_X37_Y5_N12
\inst2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~29_sumout\ = SUM(( \inst2|v_count\(4) ) + ( GND ) + ( \inst2|Add1~2\ ))
-- \inst2|Add1~30\ = CARRY(( \inst2|v_count\(4) ) + ( GND ) + ( \inst2|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(4),
	cin => \inst2|Add1~2\,
	sumout => \inst2|Add1~29_sumout\,
	cout => \inst2|Add1~30\);

-- Location: FF_X37_Y5_N14
\inst2|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~29_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(4));

-- Location: MLABCELL_X37_Y5_N15
\inst2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~21_sumout\ = SUM(( \inst2|v_count\(5) ) + ( GND ) + ( \inst2|Add1~30\ ))
-- \inst2|Add1~22\ = CARRY(( \inst2|v_count\(5) ) + ( GND ) + ( \inst2|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(5),
	cin => \inst2|Add1~30\,
	sumout => \inst2|Add1~21_sumout\,
	cout => \inst2|Add1~22\);

-- Location: FF_X37_Y5_N16
\inst2|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~21_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(5));

-- Location: MLABCELL_X37_Y5_N18
\inst2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~17_sumout\ = SUM(( \inst2|v_count\(6) ) + ( GND ) + ( \inst2|Add1~22\ ))
-- \inst2|Add1~18\ = CARRY(( \inst2|v_count\(6) ) + ( GND ) + ( \inst2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(6),
	cin => \inst2|Add1~22\,
	sumout => \inst2|Add1~17_sumout\,
	cout => \inst2|Add1~18\);

-- Location: FF_X37_Y5_N20
\inst2|v_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~17_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count[6]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y5_N21
\inst2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~9_sumout\ = SUM(( \inst2|v_count\(7) ) + ( GND ) + ( \inst2|Add1~18\ ))
-- \inst2|Add1~10\ = CARRY(( \inst2|v_count\(7) ) + ( GND ) + ( \inst2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(7),
	cin => \inst2|Add1~18\,
	sumout => \inst2|Add1~9_sumout\,
	cout => \inst2|Add1~10\);

-- Location: FF_X37_Y5_N23
\inst2|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~9_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(7));

-- Location: MLABCELL_X37_Y5_N24
\inst2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~13_sumout\ = SUM(( \inst2|v_count\(8) ) + ( GND ) + ( \inst2|Add1~10\ ))
-- \inst2|Add1~14\ = CARRY(( \inst2|v_count\(8) ) + ( GND ) + ( \inst2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(8),
	cin => \inst2|Add1~10\,
	sumout => \inst2|Add1~13_sumout\,
	cout => \inst2|Add1~14\);

-- Location: FF_X37_Y5_N26
\inst2|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~13_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(8));

-- Location: MLABCELL_X37_Y5_N45
\inst2|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = ( !\inst2|v_count\(8) & ( (!\inst2|v_count[6]~DUPLICATE_q\ & (!\inst2|v_count\(5) & (!\inst2|v_count\(4) & !\inst2|v_count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count[6]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_v_count\(5),
	datac => \inst2|ALT_INV_v_count\(4),
	datad => \inst2|ALT_INV_v_count\(7),
	dataf => \inst2|ALT_INV_v_count\(8),
	combout => \inst2|process_0~5_combout\);

-- Location: MLABCELL_X37_Y5_N27
\inst2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~25_sumout\ = SUM(( \inst2|v_count\(9) ) + ( GND ) + ( \inst2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(9),
	cin => \inst2|Add1~14\,
	sumout => \inst2|Add1~25_sumout\);

-- Location: FF_X37_Y5_N28
\inst2|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~25_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(9));

-- Location: MLABCELL_X37_Y5_N30
\inst2|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = ( \inst2|v_count\(9) & ( (\inst2|h_count\(9) & ((!\inst2|process_0~5_combout\) # ((\inst2|v_count\(3) & \inst2|v_count\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000010000111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(3),
	datab => \inst2|ALT_INV_v_count\(2),
	datac => \inst2|ALT_INV_h_count\(9),
	datad => \inst2|ALT_INV_process_0~5_combout\,
	dataf => \inst2|ALT_INV_v_count\(9),
	combout => \inst2|process_0~6_combout\);

-- Location: MLABCELL_X37_Y5_N54
\inst2|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~7_combout\ = ( \inst2|process_0~6_combout\ & ( ((\inst2|h_count[7]~DUPLICATE_q\ & !\inst2|process_0~4_combout\)) # (\inst2|h_count\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count[7]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_h_count\(8),
	datac => \inst2|ALT_INV_process_0~4_combout\,
	dataf => \inst2|ALT_INV_process_0~6_combout\,
	combout => \inst2|process_0~7_combout\);

-- Location: FF_X37_Y5_N2
\inst2|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~33_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(0));

-- Location: MLABCELL_X37_Y5_N3
\inst2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~37_sumout\ = SUM(( \inst2|v_count\(1) ) + ( GND ) + ( \inst2|Add1~34\ ))
-- \inst2|Add1~38\ = CARRY(( \inst2|v_count\(1) ) + ( GND ) + ( \inst2|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(1),
	cin => \inst2|Add1~34\,
	sumout => \inst2|Add1~37_sumout\,
	cout => \inst2|Add1~38\);

-- Location: FF_X37_Y5_N5
\inst2|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~37_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(1));

-- Location: MLABCELL_X37_Y5_N6
\inst2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~5_sumout\ = SUM(( \inst2|v_count\(2) ) + ( GND ) + ( \inst2|Add1~38\ ))
-- \inst2|Add1~6\ = CARRY(( \inst2|v_count\(2) ) + ( GND ) + ( \inst2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(2),
	cin => \inst2|Add1~38\,
	sumout => \inst2|Add1~5_sumout\,
	cout => \inst2|Add1~6\);

-- Location: FF_X37_Y5_N8
\inst2|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~5_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(2));

-- Location: FF_X37_Y5_N10
\inst2|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~1_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(3));

-- Location: MLABCELL_X37_Y5_N48
\inst2|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = ( \inst2|v_count\(5) & ( (\inst2|v_count\(6) & (\inst2|v_count\(8) & \inst2|v_count\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_v_count\(6),
	datac => \inst2|ALT_INV_v_count\(8),
	datad => \inst2|ALT_INV_v_count\(7),
	dataf => \inst2|ALT_INV_v_count\(5),
	combout => \inst2|LessThan7~0_combout\);

-- Location: MLABCELL_X37_Y5_N51
\inst2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = ( !\inst2|v_count\(4) & ( (!\inst2|v_count\(9) & (!\inst2|v_count\(0) $ (!\inst2|v_count\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(0),
	datac => \inst2|ALT_INV_v_count\(9),
	datad => \inst2|ALT_INV_v_count\(1),
	dataf => \inst2|ALT_INV_v_count\(4),
	combout => \inst2|process_0~0_combout\);

-- Location: MLABCELL_X37_Y5_N33
\inst2|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = ( \inst2|process_0~0_combout\ & ( (!\inst2|v_count\(3)) # ((!\inst2|v_count\(2)) # (!\inst2|LessThan7~0_combout\)) ) ) # ( !\inst2|process_0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(3),
	datac => \inst2|ALT_INV_v_count\(2),
	datad => \inst2|ALT_INV_LessThan7~0_combout\,
	dataf => \inst2|ALT_INV_process_0~0_combout\,
	combout => \inst2|process_0~1_combout\);

-- Location: FF_X37_Y5_N34
\inst2|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vert_sync~q\);

-- Location: LABCELL_X32_Y14_N30
\inst2|vert_sync_out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|vert_sync_out~feeder_combout\ = ( \inst2|vert_sync~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_vert_sync~q\,
	combout => \inst2|vert_sync_out~feeder_combout\);

-- Location: FF_X32_Y14_N31
\inst2|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vert_sync_out~q\);

-- Location: LABCELL_X40_Y6_N21
\inst2|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = ( \inst2|h_count\(9) & ( (!\inst2|h_count[7]~DUPLICATE_q\) # (\inst2|h_count\(8)) ) ) # ( !\inst2|h_count\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_h_count[7]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_h_count\(8),
	dataf => \inst2|ALT_INV_h_count\(9),
	combout => \inst2|process_0~3_combout\);

-- Location: LABCELL_X40_Y6_N18
\inst2|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = ( \inst2|h_count[4]~DUPLICATE_q\ & ( (!\inst2|h_count\(3) & (!\inst2|h_count\(2) & ((!\inst2|h_count\(1)) # (!\inst2|h_count\(0))))) ) ) # ( !\inst2|h_count[4]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(1),
	datab => \inst2|ALT_INV_h_count\(0),
	datac => \inst2|ALT_INV_h_count\(3),
	datad => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	combout => \inst2|process_0~2_combout\);

-- Location: LABCELL_X40_Y6_N0
\inst2|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~8_combout\ = ( !\inst2|h_count\(5) & ( ((((\inst2|process_0~2_combout\ & !\inst2|h_count\(6))) # (\inst2|process_0~3_combout\))) ) ) # ( \inst2|h_count\(5) & ( ((\inst2|h_count\(4) & (\inst2|h_count\(6) & ((\inst2|h_count\(3)) # 
-- (\inst2|h_count\(2)))))) # (\inst2|process_0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000000000001001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(2),
	datab => \inst2|ALT_INV_h_count\(4),
	datac => \inst2|ALT_INV_h_count\(3),
	datad => \inst2|ALT_INV_h_count\(6),
	datae => \inst2|ALT_INV_h_count\(5),
	dataf => \inst2|ALT_INV_process_0~3_combout\,
	datag => \inst2|ALT_INV_process_0~2_combout\,
	combout => \inst2|process_0~8_combout\);

-- Location: FF_X40_Y6_N1
\inst2|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|horiz_sync~q\);

-- Location: LABCELL_X32_Y7_N33
\inst2|horiz_sync_out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|horiz_sync_out~feeder_combout\ = ( \inst2|horiz_sync~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_horiz_sync~q\,
	combout => \inst2|horiz_sync_out~feeder_combout\);

-- Location: FF_X32_Y7_N34
\inst2|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|horiz_sync_out~q\);

-- Location: LABCELL_X41_Y4_N18
\inst5|new_cursor_row[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|new_cursor_row[2]~0_combout\ = ( \inst5|PACKET_COUNT\(0) & ( !\inst5|PACKET_COUNT\(1) ) ) # ( !\inst5|PACKET_COUNT\(0) & ( \inst5|PACKET_COUNT\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	dataf => \inst5|ALT_INV_PACKET_COUNT\(0),
	combout => \inst5|new_cursor_row[2]~0_combout\);

-- Location: LABCELL_X40_Y4_N24
\inst5|PACKET_CHAR2[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[7]~0_combout\ = ( \inst5|INCNT\(1) & ( \inst5|READ_CHAR~q\ & ( (\inst5|INCNT\(3) & !\inst5|mouse_state.WAIT_OUTPUT_READY~q\) ) ) ) # ( !\inst5|INCNT\(1) & ( \inst5|READ_CHAR~q\ & ( (\inst5|INCNT\(3) & 
-- (!\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst5|INCNT\(2)) # (\inst5|INCNT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(0),
	datab => \inst5|ALT_INV_INCNT\(3),
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst5|ALT_INV_INCNT\(2),
	datae => \inst5|ALT_INV_INCNT\(1),
	dataf => \inst5|ALT_INV_READ_CHAR~q\,
	combout => \inst5|PACKET_CHAR2[7]~0_combout\);

-- Location: FF_X41_Y4_N5
\inst5|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|new_cursor_row[2]~0_combout\,
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_COUNT\(1));

-- Location: LABCELL_X41_Y4_N33
\inst5|PACKET_COUNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_COUNT~0_combout\ = ( \inst5|PACKET_COUNT\(1) ) # ( !\inst5|PACKET_COUNT\(1) & ( !\inst5|PACKET_COUNT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_COUNT\(0),
	dataf => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|PACKET_COUNT~0_combout\);

-- Location: FF_X41_Y4_N11
\inst5|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|PACKET_COUNT~0_combout\,
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_COUNT\(0));

-- Location: LABCELL_X40_Y4_N54
\inst5|SHIFTIN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[0]~0_combout\ = ( !\inst5|INCNT\(2) & ( \inst5|INCNT\(3) & ( (!\inst5|INCNT\(0) & (\inst5|READ_CHAR~q\ & (!\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst5|INCNT\(1)))) ) ) ) # ( \inst5|INCNT\(2) & ( !\inst5|INCNT\(3) & ( 
-- (\inst5|READ_CHAR~q\ & !\inst5|mouse_state.WAIT_OUTPUT_READY~q\) ) ) ) # ( !\inst5|INCNT\(2) & ( !\inst5|INCNT\(3) & ( (\inst5|READ_CHAR~q\ & !\inst5|mouse_state.WAIT_OUTPUT_READY~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(0),
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst5|ALT_INV_INCNT\(1),
	datae => \inst5|ALT_INV_INCNT\(2),
	dataf => \inst5|ALT_INV_INCNT\(3),
	combout => \inst5|SHIFTIN[0]~0_combout\);

-- Location: FF_X41_Y5_N7
\inst5|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \PS2_DAT~input_o\,
	sload => VCC,
	ena => \inst5|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(8));

-- Location: LABCELL_X41_Y5_N51
\inst5|SHIFTIN[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[7]~feeder_combout\ = \inst5|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_SHIFTIN\(8),
	combout => \inst5|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X41_Y5_N53
\inst5|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTIN[7]~feeder_combout\,
	ena => \inst5|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(7));

-- Location: LABCELL_X41_Y4_N15
\inst5|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal4~0_combout\ = ( \inst5|PACKET_COUNT\(0) & ( !\inst5|PACKET_COUNT\(1) ) ) # ( !\inst5|PACKET_COUNT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	dataf => \inst5|ALT_INV_PACKET_COUNT\(0),
	combout => \inst5|Equal4~0_combout\);

-- Location: LABCELL_X41_Y4_N12
\inst5|left_button~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|left_button~0_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & (!\inst5|Equal4~0_combout\ & \inst5|LessThan1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_READ_CHAR~q\,
	datab => \inst5|ALT_INV_Equal4~0_combout\,
	datac => \inst5|ALT_INV_LessThan1~0_combout\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|left_button~0_combout\);

-- Location: FF_X42_Y3_N41
\inst5|PACKET_CHAR3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(7),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(7));

-- Location: FF_X41_Y5_N11
\inst5|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(7),
	sload => VCC,
	ena => \inst5|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(6));

-- Location: FF_X41_Y2_N46
\inst5|PACKET_CHAR3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(6),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(6));

-- Location: FF_X41_Y2_N35
\inst5|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(6),
	sload => VCC,
	ena => \inst5|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(5));

-- Location: FF_X41_Y2_N49
\inst5|PACKET_CHAR3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(5),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(5));

-- Location: FF_X39_Y4_N8
\inst5|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(5),
	sload => VCC,
	ena => \inst5|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(4));

-- Location: FF_X39_Y4_N53
\inst5|PACKET_CHAR3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(4),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(4));

-- Location: FF_X43_Y4_N17
\inst5|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(4),
	sload => VCC,
	ena => \inst5|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(3));

-- Location: FF_X42_Y2_N5
\inst5|PACKET_CHAR3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(3),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(3));

-- Location: LABCELL_X39_Y4_N0
\inst5|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal3~0_combout\ = (!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_COUNT\(0),
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|Equal3~0_combout\);

-- Location: FF_X39_Y4_N5
\inst5|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(3),
	sload => VCC,
	ena => \inst5|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(2));

-- Location: FF_X41_Y4_N17
\inst5|PACKET_CHAR3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(2),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(2));

-- Location: LABCELL_X39_Y4_N12
\inst5|SHIFTIN[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[1]~feeder_combout\ = \inst5|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_SHIFTIN\(2),
	combout => \inst5|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X39_Y4_N14
\inst5|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTIN[1]~feeder_combout\,
	ena => \inst5|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(1));

-- Location: FF_X41_Y4_N52
\inst5|PACKET_CHAR3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(1),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(1));

-- Location: FF_X40_Y1_N35
\inst5|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(1),
	sload => VCC,
	ena => \inst5|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(0));

-- Location: FF_X41_Y2_N59
\inst5|PACKET_CHAR3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(0),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(0));

-- Location: MLABCELL_X42_Y4_N0
\inst5|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~9_sumout\ = SUM(( !\inst5|cursor_row\(0) $ (!\inst5|PACKET_CHAR3\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst5|Add4~10\ = CARRY(( !\inst5|cursor_row\(0) $ (!\inst5|PACKET_CHAR3\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst5|Add4~11\ = SHARE((!\inst5|PACKET_CHAR3\(0)) # (\inst5|cursor_row\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111011101110100000000000000000110011001100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(0),
	datab => \inst5|ALT_INV_PACKET_CHAR3\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst5|Add4~9_sumout\,
	cout => \inst5|Add4~10\,
	shareout => \inst5|Add4~11\);

-- Location: MLABCELL_X42_Y4_N3
\inst5|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~25_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(1) $ (\inst5|cursor_row\(1)) ) + ( \inst5|Add4~11\ ) + ( \inst5|Add4~10\ ))
-- \inst5|Add4~26\ = CARRY(( !\inst5|PACKET_CHAR3\(1) $ (\inst5|cursor_row\(1)) ) + ( \inst5|Add4~11\ ) + ( \inst5|Add4~10\ ))
-- \inst5|Add4~27\ = SHARE((!\inst5|PACKET_CHAR3\(1) & \inst5|cursor_row\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_CHAR3\(1),
	datad => \inst5|ALT_INV_cursor_row\(1),
	cin => \inst5|Add4~10\,
	sharein => \inst5|Add4~11\,
	sumout => \inst5|Add4~25_sumout\,
	cout => \inst5|Add4~26\,
	shareout => \inst5|Add4~27\);

-- Location: MLABCELL_X42_Y4_N6
\inst5|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~21_sumout\ = SUM(( !\inst5|cursor_row\(2) $ (\inst5|PACKET_CHAR3\(2)) ) + ( \inst5|Add4~27\ ) + ( \inst5|Add4~26\ ))
-- \inst5|Add4~22\ = CARRY(( !\inst5|cursor_row\(2) $ (\inst5|PACKET_CHAR3\(2)) ) + ( \inst5|Add4~27\ ) + ( \inst5|Add4~26\ ))
-- \inst5|Add4~23\ = SHARE((\inst5|cursor_row\(2) & !\inst5|PACKET_CHAR3\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(2),
	datad => \inst5|ALT_INV_PACKET_CHAR3\(2),
	cin => \inst5|Add4~26\,
	sharein => \inst5|Add4~27\,
	sumout => \inst5|Add4~21_sumout\,
	cout => \inst5|Add4~22\,
	shareout => \inst5|Add4~23\);

-- Location: MLABCELL_X42_Y4_N9
\inst5|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~17_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(3) $ (\inst5|cursor_row\(3)) ) + ( \inst5|Add4~23\ ) + ( \inst5|Add4~22\ ))
-- \inst5|Add4~18\ = CARRY(( !\inst5|PACKET_CHAR3\(3) $ (\inst5|cursor_row\(3)) ) + ( \inst5|Add4~23\ ) + ( \inst5|Add4~22\ ))
-- \inst5|Add4~19\ = SHARE((!\inst5|PACKET_CHAR3\(3) & \inst5|cursor_row\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_CHAR3\(3),
	datab => \inst5|ALT_INV_cursor_row\(3),
	cin => \inst5|Add4~22\,
	sharein => \inst5|Add4~23\,
	sumout => \inst5|Add4~17_sumout\,
	cout => \inst5|Add4~18\,
	shareout => \inst5|Add4~19\);

-- Location: MLABCELL_X42_Y4_N12
\inst5|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~13_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(4) $ (\inst5|cursor_row\(4)) ) + ( \inst5|Add4~19\ ) + ( \inst5|Add4~18\ ))
-- \inst5|Add4~14\ = CARRY(( !\inst5|PACKET_CHAR3\(4) $ (\inst5|cursor_row\(4)) ) + ( \inst5|Add4~19\ ) + ( \inst5|Add4~18\ ))
-- \inst5|Add4~15\ = SHARE((!\inst5|PACKET_CHAR3\(4) & \inst5|cursor_row\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_CHAR3\(4),
	datab => \inst5|ALT_INV_cursor_row\(4),
	cin => \inst5|Add4~18\,
	sharein => \inst5|Add4~19\,
	sumout => \inst5|Add4~13_sumout\,
	cout => \inst5|Add4~14\,
	shareout => \inst5|Add4~15\);

-- Location: MLABCELL_X42_Y4_N15
\inst5|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~37_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(5) $ (\inst5|cursor_row\(5)) ) + ( \inst5|Add4~15\ ) + ( \inst5|Add4~14\ ))
-- \inst5|Add4~38\ = CARRY(( !\inst5|PACKET_CHAR3\(5) $ (\inst5|cursor_row\(5)) ) + ( \inst5|Add4~15\ ) + ( \inst5|Add4~14\ ))
-- \inst5|Add4~39\ = SHARE((!\inst5|PACKET_CHAR3\(5) & \inst5|cursor_row\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_CHAR3\(5),
	datad => \inst5|ALT_INV_cursor_row\(5),
	cin => \inst5|Add4~14\,
	sharein => \inst5|Add4~15\,
	sumout => \inst5|Add4~37_sumout\,
	cout => \inst5|Add4~38\,
	shareout => \inst5|Add4~39\);

-- Location: MLABCELL_X42_Y4_N18
\inst5|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~33_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(6) $ (\inst5|cursor_row\(6)) ) + ( \inst5|Add4~39\ ) + ( \inst5|Add4~38\ ))
-- \inst5|Add4~34\ = CARRY(( !\inst5|PACKET_CHAR3\(6) $ (\inst5|cursor_row\(6)) ) + ( \inst5|Add4~39\ ) + ( \inst5|Add4~38\ ))
-- \inst5|Add4~35\ = SHARE((!\inst5|PACKET_CHAR3\(6) & \inst5|cursor_row\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_CHAR3\(6),
	datad => \inst5|ALT_INV_cursor_row\(6),
	cin => \inst5|Add4~38\,
	sharein => \inst5|Add4~39\,
	sumout => \inst5|Add4~33_sumout\,
	cout => \inst5|Add4~34\,
	shareout => \inst5|Add4~35\);

-- Location: MLABCELL_X42_Y4_N21
\inst5|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~29_sumout\ = SUM(( !\inst5|cursor_row\(7) $ (\inst5|PACKET_CHAR3\(7)) ) + ( \inst5|Add4~35\ ) + ( \inst5|Add4~34\ ))
-- \inst5|Add4~30\ = CARRY(( !\inst5|cursor_row\(7) $ (\inst5|PACKET_CHAR3\(7)) ) + ( \inst5|Add4~35\ ) + ( \inst5|Add4~34\ ))
-- \inst5|Add4~31\ = SHARE((\inst5|cursor_row\(7) & !\inst5|PACKET_CHAR3\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_PACKET_CHAR3\(7),
	cin => \inst5|Add4~34\,
	sharein => \inst5|Add4~35\,
	sumout => \inst5|Add4~29_sumout\,
	cout => \inst5|Add4~30\,
	shareout => \inst5|Add4~31\);

-- Location: MLABCELL_X42_Y4_N24
\inst5|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~5_sumout\ = SUM(( !\inst5|cursor_row\(8) $ (\inst5|PACKET_CHAR3\(7)) ) + ( \inst5|Add4~31\ ) + ( \inst5|Add4~30\ ))
-- \inst5|Add4~6\ = CARRY(( !\inst5|cursor_row\(8) $ (\inst5|PACKET_CHAR3\(7)) ) + ( \inst5|Add4~31\ ) + ( \inst5|Add4~30\ ))
-- \inst5|Add4~7\ = SHARE((\inst5|cursor_row\(8) & !\inst5|PACKET_CHAR3\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(8),
	datab => \inst5|ALT_INV_PACKET_CHAR3\(7),
	cin => \inst5|Add4~30\,
	sharein => \inst5|Add4~31\,
	sumout => \inst5|Add4~5_sumout\,
	cout => \inst5|Add4~6\,
	shareout => \inst5|Add4~7\);

-- Location: LABCELL_X43_Y4_N57
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X41_Y4_N6
\inst5|new_cursor_row[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|new_cursor_row[9]~1_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & (!\inst5|new_cursor_row[2]~0_combout\ & \inst5|LessThan1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_new_cursor_row[2]~0_combout\,
	datad => \inst5|ALT_INV_LessThan1~0_combout\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|new_cursor_row[9]~1_combout\);

-- Location: FF_X42_Y4_N26
\inst5|new_cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~5_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(8));

-- Location: FF_X42_Y4_N2
\inst5|new_cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~9_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(0));

-- Location: MLABCELL_X42_Y4_N30
\inst5|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~0_combout\ = ( !\inst5|new_cursor_row\(2) & ( (!\inst5|new_cursor_row\(0) & (!\inst5|new_cursor_row\(3) & (!\inst5|new_cursor_row\(1) & !\inst5|new_cursor_row\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(0),
	datab => \inst5|ALT_INV_new_cursor_row\(3),
	datac => \inst5|ALT_INV_new_cursor_row\(1),
	datad => \inst5|ALT_INV_new_cursor_row\(4),
	dataf => \inst5|ALT_INV_new_cursor_row\(2),
	combout => \inst5|LessThan5~0_combout\);

-- Location: FF_X42_Y4_N23
\inst5|new_cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~29_sumout\,
	asdata => VCC,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(7));

-- Location: MLABCELL_X42_Y4_N33
\inst5|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~1_combout\ = ( \inst5|new_cursor_row\(6) & ( (\inst5|new_cursor_row\(5) & \inst5|new_cursor_row\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_new_cursor_row\(5),
	datad => \inst5|ALT_INV_new_cursor_row\(7),
	dataf => \inst5|ALT_INV_new_cursor_row\(6),
	combout => \inst5|LessThan5~1_combout\);

-- Location: MLABCELL_X42_Y4_N57
\inst5|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~2_combout\ = ( \inst5|LessThan5~1_combout\ & ( (!\inst5|new_cursor_row\(9) & ((!\inst5|new_cursor_row\(8)) # (\inst5|LessThan5~0_combout\))) ) ) # ( !\inst5|LessThan5~1_combout\ & ( !\inst5|new_cursor_row\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(8),
	datac => \inst5|ALT_INV_LessThan5~0_combout\,
	datad => \inst5|ALT_INV_new_cursor_row\(9),
	dataf => \inst5|ALT_INV_LessThan5~1_combout\,
	combout => \inst5|LessThan5~2_combout\);

-- Location: MLABCELL_X42_Y4_N48
\inst5|cursor_row~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~8_combout\ = ( \inst5|new_cursor_row\(0) & ( \inst5|RECV_UART~2_combout\ & ( (\inst5|LessThan5~2_combout\ & !\inst5|Equal3~0_combout\) ) ) ) # ( \inst5|new_cursor_row\(0) & ( !\inst5|RECV_UART~2_combout\ & ( (\inst5|LessThan5~2_combout\ 
-- & (!\inst5|Equal3~0_combout\ & ((\inst5|cursor_row\(7)) # (\inst5|cursor_row\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000011000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(8),
	datab => \inst5|ALT_INV_LessThan5~2_combout\,
	datac => \inst5|ALT_INV_Equal3~0_combout\,
	datad => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_new_cursor_row\(0),
	dataf => \inst5|ALT_INV_RECV_UART~2_combout\,
	combout => \inst5|cursor_row~8_combout\);

-- Location: LABCELL_X40_Y4_N39
\inst5|PACKET_CHAR1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR1[0]~0_combout\ = ( \inst5|LessThan1~0_combout\ & ( (!\inst5|PACKET_COUNT\(1) & (\inst5|READ_CHAR~q\ & !\inst5|mouse_state.WAIT_OUTPUT_READY~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(1),
	datac => \inst5|ALT_INV_READ_CHAR~q\,
	datad => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	dataf => \inst5|ALT_INV_LessThan1~0_combout\,
	combout => \inst5|PACKET_CHAR1[0]~0_combout\);

-- Location: FF_X42_Y4_N50
\inst5|cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~8_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(0));

-- Location: FF_X42_Y4_N5
\inst5|new_cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~25_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(1));

-- Location: LABCELL_X41_Y4_N54
\inst5|cursor_row~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~13_combout\ = ( \inst5|LessThan5~2_combout\ & ( \inst5|RECV_UART~2_combout\ & ( (!\inst5|Equal3~0_combout\ & \inst5|new_cursor_row\(1)) ) ) ) # ( \inst5|LessThan5~2_combout\ & ( !\inst5|RECV_UART~2_combout\ & ( (!\inst5|Equal3~0_combout\ 
-- & (\inst5|new_cursor_row\(1) & ((\inst5|cursor_row\(8)) # (\inst5|cursor_row\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000111000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_Equal3~0_combout\,
	datad => \inst5|ALT_INV_new_cursor_row\(1),
	datae => \inst5|ALT_INV_LessThan5~2_combout\,
	dataf => \inst5|ALT_INV_RECV_UART~2_combout\,
	combout => \inst5|cursor_row~13_combout\);

-- Location: FF_X41_Y4_N56
\inst5|cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~13_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(1));

-- Location: FF_X42_Y4_N8
\inst5|new_cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~21_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(2));

-- Location: MLABCELL_X42_Y2_N15
\inst5|cursor_row~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~12_combout\ = ( \inst5|new_cursor_row\(2) & ( \inst5|LessThan5~2_combout\ & ( (!\inst5|Equal3~0_combout\ & (((\inst5|cursor_row\(7)) # (\inst5|cursor_row\(8))) # (\inst5|RECV_UART~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~2_combout\,
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_Equal3~0_combout\,
	datad => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_new_cursor_row\(2),
	dataf => \inst5|ALT_INV_LessThan5~2_combout\,
	combout => \inst5|cursor_row~12_combout\);

-- Location: FF_X42_Y2_N17
\inst5|cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~12_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(2));

-- Location: FF_X42_Y4_N11
\inst5|new_cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~17_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(3));

-- Location: MLABCELL_X42_Y2_N12
\inst5|cursor_row~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~11_combout\ = ( \inst5|new_cursor_row\(3) & ( \inst5|LessThan5~2_combout\ & ( (!\inst5|Equal3~0_combout\ & (((\inst5|cursor_row\(7)) # (\inst5|cursor_row\(8))) # (\inst5|RECV_UART~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~2_combout\,
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_cursor_row\(7),
	datad => \inst5|ALT_INV_Equal3~0_combout\,
	datae => \inst5|ALT_INV_new_cursor_row\(3),
	dataf => \inst5|ALT_INV_LessThan5~2_combout\,
	combout => \inst5|cursor_row~11_combout\);

-- Location: FF_X42_Y2_N14
\inst5|cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~11_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(3));

-- Location: FF_X42_Y4_N14
\inst5|new_cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~13_sumout\,
	asdata => VCC,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(4));

-- Location: LABCELL_X43_Y4_N18
\inst5|cursor_row~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~9_combout\ = ( \inst5|LessThan5~1_combout\ & ( \inst5|LessThan5~0_combout\ & ( (\inst5|new_cursor_row\(4) & !\inst5|new_cursor_row\(9)) ) ) ) # ( !\inst5|LessThan5~1_combout\ & ( \inst5|LessThan5~0_combout\ & ( (\inst5|new_cursor_row\(4) 
-- & !\inst5|new_cursor_row\(9)) ) ) ) # ( \inst5|LessThan5~1_combout\ & ( !\inst5|LessThan5~0_combout\ & ( (\inst5|new_cursor_row\(4) & (!\inst5|new_cursor_row\(8) & !\inst5|new_cursor_row\(9))) ) ) ) # ( !\inst5|LessThan5~1_combout\ & ( 
-- !\inst5|LessThan5~0_combout\ & ( (\inst5|new_cursor_row\(4) & !\inst5|new_cursor_row\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_new_cursor_row\(4),
	datac => \inst5|ALT_INV_new_cursor_row\(8),
	datad => \inst5|ALT_INV_new_cursor_row\(9),
	datae => \inst5|ALT_INV_LessThan5~1_combout\,
	dataf => \inst5|ALT_INV_LessThan5~0_combout\,
	combout => \inst5|cursor_row~9_combout\);

-- Location: LABCELL_X41_Y4_N36
\inst5|cursor_row~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~10_combout\ = ( \inst5|cursor_row~9_combout\ & ( \inst5|RECV_UART~2_combout\ ) ) # ( !\inst5|cursor_row~9_combout\ & ( \inst5|RECV_UART~2_combout\ & ( (!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1)) ) ) ) # ( 
-- \inst5|cursor_row~9_combout\ & ( !\inst5|RECV_UART~2_combout\ & ( (((!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1))) # (\inst5|cursor_row\(8))) # (\inst5|cursor_row\(7)) ) ) ) # ( !\inst5|cursor_row~9_combout\ & ( !\inst5|RECV_UART~2_combout\ & ( 
-- (!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100011111111111110001000100010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datab => \inst5|ALT_INV_PACKET_COUNT\(1),
	datac => \inst5|ALT_INV_cursor_row\(7),
	datad => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_cursor_row~9_combout\,
	dataf => \inst5|ALT_INV_RECV_UART~2_combout\,
	combout => \inst5|cursor_row~10_combout\);

-- Location: FF_X41_Y4_N38
\inst5|cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~10_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(4));

-- Location: FF_X42_Y4_N17
\inst5|new_cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~37_sumout\,
	asdata => VCC,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(5));

-- Location: MLABCELL_X42_Y4_N54
\inst5|cursor_row~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~6_combout\ = ( !\inst5|new_cursor_row\(5) & ( !\inst5|new_cursor_row\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_new_cursor_row\(9),
	dataf => \inst5|ALT_INV_new_cursor_row\(5),
	combout => \inst5|cursor_row~6_combout\);

-- Location: MLABCELL_X42_Y4_N42
\inst5|cursor_row~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~7_combout\ = ( \inst5|PACKET_COUNT\(0) & ( \inst5|RECV_UART~2_combout\ & ( !\inst5|cursor_row~6_combout\ ) ) ) # ( !\inst5|PACKET_COUNT\(0) & ( \inst5|RECV_UART~2_combout\ & ( (!\inst5|PACKET_COUNT\(1)) # (!\inst5|cursor_row~6_combout\) 
-- ) ) ) # ( \inst5|PACKET_COUNT\(0) & ( !\inst5|RECV_UART~2_combout\ & ( (!\inst5|cursor_row~6_combout\ & ((\inst5|cursor_row\(7)) # (\inst5|cursor_row\(8)))) ) ) ) # ( !\inst5|PACKET_COUNT\(0) & ( !\inst5|RECV_UART~2_combout\ & ( (!\inst5|PACKET_COUNT\(1)) 
-- # ((!\inst5|cursor_row~6_combout\ & ((\inst5|cursor_row\(7)) # (\inst5|cursor_row\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110101010001111110000000011111111101010101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(1),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_cursor_row\(7),
	datad => \inst5|ALT_INV_cursor_row~6_combout\,
	datae => \inst5|ALT_INV_PACKET_COUNT\(0),
	dataf => \inst5|ALT_INV_RECV_UART~2_combout\,
	combout => \inst5|cursor_row~7_combout\);

-- Location: FF_X42_Y4_N44
\inst5|cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~7_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(5));

-- Location: FF_X42_Y4_N20
\inst5|new_cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~33_sumout\,
	asdata => VCC,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(6));

-- Location: LABCELL_X41_Y4_N9
\inst5|cursor_row~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~4_combout\ = ( !\inst5|new_cursor_row\(6) & ( !\inst5|new_cursor_row\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(9),
	dataf => \inst5|ALT_INV_new_cursor_row\(6),
	combout => \inst5|cursor_row~4_combout\);

-- Location: LABCELL_X41_Y4_N45
\inst5|cursor_row~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~5_combout\ = ( !\inst5|cursor_row~4_combout\ & ( \inst5|PACKET_COUNT\(0) & ( ((\inst5|cursor_row\(7)) # (\inst5|RECV_UART~2_combout\)) # (\inst5|cursor_row\(8)) ) ) ) # ( \inst5|cursor_row~4_combout\ & ( !\inst5|PACKET_COUNT\(0) & ( 
-- !\inst5|PACKET_COUNT\(1) ) ) ) # ( !\inst5|cursor_row~4_combout\ & ( !\inst5|PACKET_COUNT\(0) & ( (!\inst5|PACKET_COUNT\(1)) # (((\inst5|cursor_row\(7)) # (\inst5|RECV_UART~2_combout\)) # (\inst5|cursor_row\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101010101010101000111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(1),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_RECV_UART~2_combout\,
	datad => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row~4_combout\,
	dataf => \inst5|ALT_INV_PACKET_COUNT\(0),
	combout => \inst5|cursor_row~5_combout\);

-- Location: FF_X41_Y4_N47
\inst5|cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~5_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(6));

-- Location: MLABCELL_X42_Y4_N27
\inst5|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~1_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(7) ) + ( \inst5|Add4~7\ ) + ( \inst5|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR3\(7),
	cin => \inst5|Add4~6\,
	sharein => \inst5|Add4~7\,
	sumout => \inst5|Add4~1_sumout\);

-- Location: FF_X42_Y4_N29
\inst5|new_cursor_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add4~1_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(9));

-- Location: LABCELL_X41_Y4_N30
\inst5|RECV_UART~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~1_combout\ = ( !\inst5|new_cursor_row\(6) & ( (!\inst5|new_cursor_row\(5) & !\inst5|new_cursor_row\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_new_cursor_row\(5),
	datad => \inst5|ALT_INV_new_cursor_row\(7),
	dataf => \inst5|ALT_INV_new_cursor_row\(6),
	combout => \inst5|RECV_UART~1_combout\);

-- Location: MLABCELL_X42_Y4_N39
\inst5|RECV_UART~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~0_combout\ = ( !\inst5|new_cursor_row\(1) & ( !\inst5|new_cursor_row\(2) & ( (!\inst5|new_cursor_row\(3) & !\inst5|new_cursor_row\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_new_cursor_row\(3),
	datac => \inst5|ALT_INV_new_cursor_row\(4),
	datae => \inst5|ALT_INV_new_cursor_row\(1),
	dataf => \inst5|ALT_INV_new_cursor_row\(2),
	combout => \inst5|RECV_UART~0_combout\);

-- Location: LABCELL_X41_Y4_N27
\inst5|RECV_UART~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~2_combout\ = ( \inst5|new_cursor_row\(8) & ( (!\inst5|new_cursor_row\(9) & (\inst5|RECV_UART~1_combout\ & (\inst5|RECV_UART~0_combout\ & !\inst5|new_cursor_row\(0)))) ) ) # ( !\inst5|new_cursor_row\(8) & ( (!\inst5|new_cursor_row\(9) & 
-- ((!\inst5|RECV_UART~1_combout\) # (!\inst5|RECV_UART~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(9),
	datab => \inst5|ALT_INV_RECV_UART~1_combout\,
	datac => \inst5|ALT_INV_RECV_UART~0_combout\,
	datad => \inst5|ALT_INV_new_cursor_row\(0),
	dataf => \inst5|ALT_INV_new_cursor_row\(8),
	combout => \inst5|RECV_UART~2_combout\);

-- Location: LABCELL_X40_Y4_N15
\inst5|cursor_row~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~0_combout\ = ( !\inst5|new_cursor_row\(8) & ( !\inst5|new_cursor_row\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_new_cursor_row\(9),
	dataf => \inst5|ALT_INV_new_cursor_row\(8),
	combout => \inst5|cursor_row~0_combout\);

-- Location: LABCELL_X41_Y4_N48
\inst5|cursor_row~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~1_combout\ = ( \inst5|RECV_UART~2_combout\ & ( !\inst5|cursor_row~0_combout\ & ( (\inst5|PACKET_COUNT\(1)) # (\inst5|PACKET_COUNT\(0)) ) ) ) # ( !\inst5|RECV_UART~2_combout\ & ( !\inst5|cursor_row~0_combout\ & ( (!\inst5|PACKET_COUNT\(0) 
-- & (\inst5|PACKET_COUNT\(1) & ((\inst5|cursor_row\(8)) # (\inst5|cursor_row\(7))))) # (\inst5|PACKET_COUNT\(0) & (((\inst5|cursor_row\(8)) # (\inst5|cursor_row\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110111011101110111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datab => \inst5|ALT_INV_PACKET_COUNT\(1),
	datac => \inst5|ALT_INV_cursor_row\(7),
	datad => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_RECV_UART~2_combout\,
	dataf => \inst5|ALT_INV_cursor_row~0_combout\,
	combout => \inst5|cursor_row~1_combout\);

-- Location: FF_X41_Y3_N53
\inst5|cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|cursor_row~1_combout\,
	sload => VCC,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(8));

-- Location: LABCELL_X41_Y4_N24
\inst5|cursor_row~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~2_combout\ = (!\inst5|new_cursor_row\(7) & !\inst5|new_cursor_row\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_new_cursor_row\(7),
	datad => \inst5|ALT_INV_new_cursor_row\(9),
	combout => \inst5|cursor_row~2_combout\);

-- Location: LABCELL_X41_Y4_N0
\inst5|cursor_row~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~3_combout\ = ( \inst5|RECV_UART~2_combout\ & ( \inst5|PACKET_COUNT\(1) & ( !\inst5|cursor_row~2_combout\ ) ) ) # ( !\inst5|RECV_UART~2_combout\ & ( \inst5|PACKET_COUNT\(1) & ( (!\inst5|cursor_row~2_combout\ & ((\inst5|cursor_row\(7)) # 
-- (\inst5|cursor_row\(8)))) ) ) ) # ( \inst5|RECV_UART~2_combout\ & ( !\inst5|PACKET_COUNT\(1) & ( (!\inst5|PACKET_COUNT\(0)) # (!\inst5|cursor_row~2_combout\) ) ) ) # ( !\inst5|RECV_UART~2_combout\ & ( !\inst5|PACKET_COUNT\(1) & ( 
-- (!\inst5|PACKET_COUNT\(0)) # ((!\inst5|cursor_row~2_combout\ & ((\inst5|cursor_row\(7)) # (\inst5|cursor_row\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101011111010111110101111101000110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_cursor_row~2_combout\,
	datad => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_RECV_UART~2_combout\,
	dataf => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|cursor_row~3_combout\);

-- Location: FF_X42_Y3_N14
\inst5|cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|cursor_row~3_combout\,
	sload => VCC,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(7));

-- Location: LABCELL_X47_Y4_N3
\inst7|SevenSeg_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out~0_combout\ = ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(8) & ( !\inst5|cursor_row\(7) ) ) ) # ( !\inst5|cursor_row\(6) & ( \inst5|cursor_row\(8) ) ) # ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(7) ) ) 
-- ) # ( !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(8),
	combout => \inst7|SevenSeg_out~0_combout\);

-- Location: LABCELL_X47_Y4_N9
\inst7|SevenSeg_out[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[5]~1_combout\ = ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(8) & ( \inst5|cursor_row\(7) ) ) ) # ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(8) ) ) # ( !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(7) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(8),
	combout => \inst7|SevenSeg_out[5]~1_combout\);

-- Location: LABCELL_X48_Y2_N30
\inst7|SevenSeg_out[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[4]~2_combout\ = ( \inst5|cursor_row\(6) ) # ( !\inst5|cursor_row\(6) & ( (\inst5|cursor_row\(8) & !\inst5|cursor_row\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_cursor_row\(7),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst7|SevenSeg_out[4]~2_combout\);

-- Location: LABCELL_X43_Y4_N0
\inst7|SevenSeg_out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[3]~3_combout\ = ( \inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) ) # ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) ) ) # ( \inst5|cursor_row\(8) & ( 
-- !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst7|SevenSeg_out[3]~3_combout\);

-- Location: LABCELL_X40_Y4_N12
\inst7|SevenSeg_out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[2]~4_combout\ = ( !\inst5|cursor_row\(6) & ( (\inst5|cursor_row\(7) & !\inst5|cursor_row\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(7),
	datac => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst7|SevenSeg_out[2]~4_combout\);

-- Location: MLABCELL_X42_Y2_N54
\inst7|SevenSeg_out[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[1]~5_combout\ = ( \inst5|cursor_row\(7) & ( (!\inst5|cursor_row\(8)) # (\inst5|cursor_row\(6)) ) ) # ( !\inst5|cursor_row\(7) & ( (!\inst5|cursor_row\(8)) # (!\inst5|cursor_row\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(8),
	datad => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst7|SevenSeg_out[1]~5_combout\);

-- Location: LABCELL_X40_Y2_N30
\inst7|SevenSeg_out[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[3]~6_combout\ = ( \inst5|cursor_row\(6) & ( (!\inst5|cursor_row\(8) & !\inst5|cursor_row\(7)) ) ) # ( !\inst5|cursor_row\(6) & ( (\inst5|cursor_row\(8) & !\inst5|cursor_row\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000001010000010100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst7|SevenSeg_out[3]~6_combout\);

-- Location: LABCELL_X40_Y4_N18
\inst5|PACKET_CHAR2[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[7]~1_combout\ = ( \inst5|LessThan1~0_combout\ & ( (!\inst5|PACKET_COUNT\(0) & (\inst5|READ_CHAR~q\ & (!\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & \inst5|PACKET_COUNT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst5|ALT_INV_PACKET_COUNT\(1),
	dataf => \inst5|ALT_INV_LessThan1~0_combout\,
	combout => \inst5|PACKET_CHAR2[7]~1_combout\);

-- Location: FF_X41_Y5_N44
\inst5|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(7),
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(7));

-- Location: FF_X41_Y2_N29
\inst5|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(6),
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(6));

-- Location: LABCELL_X41_Y3_N21
\inst5|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~9_sumout\ = SUM(( \inst5|cursor_column\(7) ) + ( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|Add5~2\ ))
-- \inst5|Add5~10\ = CARRY(( \inst5|cursor_column\(7) ) + ( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR2\(7),
	datac => \inst5|ALT_INV_cursor_column\(7),
	cin => \inst5|Add5~2\,
	sumout => \inst5|Add5~9_sumout\,
	cout => \inst5|Add5~10\);

-- Location: LABCELL_X41_Y3_N24
\inst5|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~5_sumout\ = SUM(( \inst5|cursor_column\(8) ) + ( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|Add5~10\ ))
-- \inst5|Add5~6\ = CARRY(( \inst5|cursor_column\(8) ) + ( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR2\(7),
	datad => \inst5|ALT_INV_cursor_column\(8),
	cin => \inst5|Add5~10\,
	sumout => \inst5|Add5~5_sumout\,
	cout => \inst5|Add5~6\);

-- Location: FF_X41_Y3_N26
\inst5|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~5_sumout\,
	asdata => VCC,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(8));

-- Location: LABCELL_X40_Y3_N30
\inst5|cursor_column~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~9_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(9) & ( (\inst5|new_cursor_column\(1) & (!\inst5|new_cursor_column\(8) & ((!\inst5|new_cursor_column\(7)) # (!\inst5|new_cursor_column\(0))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(9) & ( (\inst5|new_cursor_column\(1) & (!\inst5|new_cursor_column\(7) & !\inst5|new_cursor_column\(8))) ) ) ) # ( \inst5|RECV_UART~3_combout\ & ( !\inst5|new_cursor_column\(9) & ( 
-- \inst5|new_cursor_column\(1) ) ) ) # ( !\inst5|RECV_UART~3_combout\ & ( !\inst5|new_cursor_column\(9) & ( \inst5|new_cursor_column\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101000000010000000101000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(1),
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(8),
	datad => \inst5|ALT_INV_new_cursor_column\(0),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(9),
	combout => \inst5|cursor_column~9_combout\);

-- Location: FF_X40_Y3_N32
\inst5|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~9_combout\,
	sclr => \inst5|cursor_column[9]~2_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(1));

-- Location: FF_X40_Y3_N22
\inst5|PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(1),
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(1));

-- Location: FF_X41_Y2_N41
\inst5|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(0),
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(0));

-- Location: LABCELL_X41_Y3_N0
\inst5|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~17_sumout\ = SUM(( \inst5|PACKET_CHAR2\(0) ) + ( \inst5|cursor_column\(0) ) + ( !VCC ))
-- \inst5|Add5~18\ = CARRY(( \inst5|PACKET_CHAR2\(0) ) + ( \inst5|cursor_column\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(0),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(0),
	cin => GND,
	sumout => \inst5|Add5~17_sumout\,
	cout => \inst5|Add5~18\);

-- Location: LABCELL_X41_Y3_N3
\inst5|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~37_sumout\ = SUM(( \inst5|PACKET_CHAR2\(1) ) + ( \inst5|cursor_column\(1) ) + ( \inst5|Add5~18\ ))
-- \inst5|Add5~38\ = CARRY(( \inst5|PACKET_CHAR2\(1) ) + ( \inst5|cursor_column\(1) ) + ( \inst5|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(1),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(1),
	cin => \inst5|Add5~18\,
	sumout => \inst5|Add5~37_sumout\,
	cout => \inst5|Add5~38\);

-- Location: FF_X41_Y3_N5
\inst5|new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~37_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(1));

-- Location: FF_X40_Y3_N19
\inst5|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(5),
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(5));

-- Location: LABCELL_X41_Y5_N18
\inst5|PACKET_CHAR2[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[4]~feeder_combout\ = \inst5|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_SHIFTIN\(4),
	combout => \inst5|PACKET_CHAR2[4]~feeder_combout\);

-- Location: FF_X41_Y5_N20
\inst5|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR2[4]~feeder_combout\,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(4));

-- Location: FF_X42_Y2_N23
\inst5|PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(3),
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(3));

-- Location: FF_X40_Y3_N14
\inst5|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(2),
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(2));

-- Location: LABCELL_X41_Y3_N6
\inst5|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~33_sumout\ = SUM(( \inst5|PACKET_CHAR2\(2) ) + ( \inst5|cursor_column\(2) ) + ( \inst5|Add5~38\ ))
-- \inst5|Add5~34\ = CARRY(( \inst5|PACKET_CHAR2\(2) ) + ( \inst5|cursor_column\(2) ) + ( \inst5|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_column\(2),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(2),
	cin => \inst5|Add5~38\,
	sumout => \inst5|Add5~33_sumout\,
	cout => \inst5|Add5~34\);

-- Location: FF_X41_Y3_N8
\inst5|new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~33_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(2));

-- Location: LABCELL_X40_Y3_N3
\inst5|cursor_column~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~5_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(2) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & ((!\inst5|new_cursor_column\(7)) # (!\inst5|new_cursor_column\(0))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(2) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(7) & !\inst5|new_cursor_column\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110101010101111111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(9),
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(0),
	datad => \inst5|ALT_INV_new_cursor_column\(8),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(2),
	combout => \inst5|cursor_column~5_combout\);

-- Location: FF_X40_Y3_N5
\inst5|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~5_combout\,
	sclr => \inst5|cursor_column[9]~2_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(2));

-- Location: LABCELL_X41_Y3_N9
\inst5|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~29_sumout\ = SUM(( \inst5|PACKET_CHAR2\(3) ) + ( \inst5|cursor_column\(3) ) + ( \inst5|Add5~34\ ))
-- \inst5|Add5~30\ = CARRY(( \inst5|PACKET_CHAR2\(3) ) + ( \inst5|cursor_column\(3) ) + ( \inst5|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(3),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(3),
	cin => \inst5|Add5~34\,
	sumout => \inst5|Add5~29_sumout\,
	cout => \inst5|Add5~30\);

-- Location: FF_X41_Y3_N11
\inst5|new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~29_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(3));

-- Location: MLABCELL_X42_Y3_N24
\inst5|cursor_column~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~7_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(3) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & ((!\inst5|new_cursor_column\(7)) # (!\inst5|new_cursor_column\(0))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(3) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & !\inst5|new_cursor_column\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000111110001111101011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(9),
	datad => \inst5|ALT_INV_new_cursor_column\(0),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(3),
	combout => \inst5|cursor_column~7_combout\);

-- Location: FF_X42_Y3_N26
\inst5|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~7_combout\,
	sclr => \inst5|cursor_column[9]~2_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(3));

-- Location: LABCELL_X41_Y3_N12
\inst5|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~25_sumout\ = SUM(( \inst5|cursor_column\(4) ) + ( \inst5|PACKET_CHAR2\(4) ) + ( \inst5|Add5~30\ ))
-- \inst5|Add5~26\ = CARRY(( \inst5|cursor_column\(4) ) + ( \inst5|PACKET_CHAR2\(4) ) + ( \inst5|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR2\(4),
	datad => \inst5|ALT_INV_cursor_column\(4),
	cin => \inst5|Add5~30\,
	sumout => \inst5|Add5~25_sumout\,
	cout => \inst5|Add5~26\);

-- Location: FF_X41_Y3_N14
\inst5|new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~25_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(4));

-- Location: MLABCELL_X42_Y3_N27
\inst5|cursor_column~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~8_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(4) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & ((!\inst5|new_cursor_column\(7)) # (!\inst5|new_cursor_column\(0))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(4) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & !\inst5|new_cursor_column\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111100010001111111110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(0),
	datad => \inst5|ALT_INV_new_cursor_column\(9),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(4),
	combout => \inst5|cursor_column~8_combout\);

-- Location: FF_X42_Y3_N29
\inst5|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~8_combout\,
	sclr => \inst5|cursor_column[9]~2_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(4));

-- Location: LABCELL_X41_Y3_N15
\inst5|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~21_sumout\ = SUM(( \inst5|PACKET_CHAR2\(5) ) + ( \inst5|cursor_column\(5) ) + ( \inst5|Add5~26\ ))
-- \inst5|Add5~22\ = CARRY(( \inst5|PACKET_CHAR2\(5) ) + ( \inst5|cursor_column\(5) ) + ( \inst5|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(5),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(5),
	cin => \inst5|Add5~26\,
	sumout => \inst5|Add5~21_sumout\,
	cout => \inst5|Add5~22\);

-- Location: FF_X41_Y3_N17
\inst5|new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~21_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(5));

-- Location: LABCELL_X41_Y3_N42
\inst5|RECV_UART~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~3_combout\ = ( !\inst5|new_cursor_column\(2) & ( !\inst5|new_cursor_column\(4) & ( (!\inst5|new_cursor_column\(1) & (!\inst5|new_cursor_column\(5) & (!\inst5|new_cursor_column\(6) & !\inst5|new_cursor_column\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(1),
	datab => \inst5|ALT_INV_new_cursor_column\(5),
	datac => \inst5|ALT_INV_new_cursor_column\(6),
	datad => \inst5|ALT_INV_new_cursor_column\(3),
	datae => \inst5|ALT_INV_new_cursor_column\(2),
	dataf => \inst5|ALT_INV_new_cursor_column\(4),
	combout => \inst5|RECV_UART~3_combout\);

-- Location: LABCELL_X40_Y3_N0
\inst5|cursor_column~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~4_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(5) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & ((!\inst5|new_cursor_column\(7)) # (!\inst5|new_cursor_column\(0))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(5) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(7) & !\inst5|new_cursor_column\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101010111010101111101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(9),
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(8),
	datad => \inst5|ALT_INV_new_cursor_column\(0),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(5),
	combout => \inst5|cursor_column~4_combout\);

-- Location: FF_X40_Y3_N2
\inst5|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~4_combout\,
	sclr => \inst5|cursor_column[9]~2_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(5));

-- Location: LABCELL_X41_Y3_N18
\inst5|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~1_sumout\ = SUM(( \inst5|cursor_column\(6) ) + ( \inst5|PACKET_CHAR2\(6) ) + ( \inst5|Add5~22\ ))
-- \inst5|Add5~2\ = CARRY(( \inst5|cursor_column\(6) ) + ( \inst5|PACKET_CHAR2\(6) ) + ( \inst5|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_CHAR2\(6),
	datad => \inst5|ALT_INV_cursor_column\(6),
	cin => \inst5|Add5~22\,
	sumout => \inst5|Add5~1_sumout\,
	cout => \inst5|Add5~2\);

-- Location: FF_X41_Y3_N20
\inst5|new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~1_sumout\,
	asdata => VCC,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(6));

-- Location: LABCELL_X41_Y3_N33
\inst5|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan9~0_combout\ = ( \inst5|RECV_UART~3_combout\ & ( (\inst5|new_cursor_column\(9) & (((\inst5|new_cursor_column\(0) & \inst5|new_cursor_column\(7))) # (\inst5|new_cursor_column\(8)))) ) ) # ( !\inst5|RECV_UART~3_combout\ & ( 
-- (\inst5|new_cursor_column\(9) & ((\inst5|new_cursor_column\(7)) # (\inst5|new_cursor_column\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000011000001110000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(0),
	datab => \inst5|ALT_INV_new_cursor_column\(8),
	datac => \inst5|ALT_INV_new_cursor_column\(9),
	datad => \inst5|ALT_INV_new_cursor_column\(7),
	dataf => \inst5|ALT_INV_RECV_UART~3_combout\,
	combout => \inst5|LessThan9~0_combout\);

-- Location: LABCELL_X41_Y3_N54
\inst11|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = ( !\inst5|cursor_column\(7) & ( (!\inst5|cursor_column\(9) & !\inst5|cursor_column\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(9),
	datad => \inst5|ALT_INV_cursor_column\(8),
	dataf => \inst5|ALT_INV_cursor_column\(7),
	combout => \inst11|Equal0~0_combout\);

-- Location: LABCELL_X40_Y3_N36
\inst5|cursor_column~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~0_combout\ = ( \inst11|Equal0~0_combout\ & ( ((\inst5|RECV_UART~4_combout\ & (\inst5|new_cursor_column\(6) & !\inst5|LessThan9~0_combout\))) # (\inst5|Equal3~0_combout\) ) ) # ( !\inst11|Equal0~0_combout\ & ( 
-- ((\inst5|new_cursor_column\(6) & !\inst5|LessThan9~0_combout\)) # (\inst5|Equal3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010101010111010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Equal3~0_combout\,
	datab => \inst5|ALT_INV_RECV_UART~4_combout\,
	datac => \inst5|ALT_INV_new_cursor_column\(6),
	datad => \inst5|ALT_INV_LessThan9~0_combout\,
	dataf => \inst11|ALT_INV_Equal0~0_combout\,
	combout => \inst5|cursor_column~0_combout\);

-- Location: FF_X40_Y3_N38
\inst5|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~0_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(6));

-- Location: FF_X41_Y3_N23
\inst5|new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~9_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(7));

-- Location: LABCELL_X40_Y3_N51
\inst5|cursor_column~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~1_combout\ = ( \inst5|new_cursor_column\(8) & ( (\inst5|new_cursor_column\(9)) # (\inst5|new_cursor_column\(7)) ) ) # ( !\inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_new_cursor_column\(7),
	datad => \inst5|ALT_INV_new_cursor_column\(9),
	dataf => \inst5|ALT_INV_new_cursor_column\(8),
	combout => \inst5|cursor_column~1_combout\);

-- Location: FF_X40_Y3_N53
\inst5|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~1_combout\,
	sclr => \inst5|cursor_column[9]~2_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(7));

-- Location: LABCELL_X40_Y3_N9
\inst5|cursor_column[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column[9]~2_combout\ = ( !\inst5|PACKET_COUNT\(1) & ( \inst5|cursor_column\(8) & ( !\inst5|PACKET_COUNT\(0) ) ) ) # ( \inst5|PACKET_COUNT\(1) & ( !\inst5|cursor_column\(8) & ( (!\inst5|cursor_column\(7) & (!\inst5|cursor_column\(9) & 
-- !\inst5|RECV_UART~4_combout\)) ) ) ) # ( !\inst5|PACKET_COUNT\(1) & ( !\inst5|cursor_column\(8) & ( (!\inst5|PACKET_COUNT\(0)) # ((!\inst5|cursor_column\(7) & (!\inst5|cursor_column\(9) & !\inst5|RECV_UART~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000100010000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datab => \inst5|ALT_INV_cursor_column\(9),
	datac => \inst5|ALT_INV_PACKET_COUNT\(0),
	datad => \inst5|ALT_INV_RECV_UART~4_combout\,
	datae => \inst5|ALT_INV_PACKET_COUNT\(1),
	dataf => \inst5|ALT_INV_cursor_column\(8),
	combout => \inst5|cursor_column[9]~2_combout\);

-- Location: FF_X40_Y3_N8
\inst5|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|new_cursor_column\(9),
	sclr => \inst5|cursor_column[9]~2_combout\,
	sload => VCC,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(9));

-- Location: LABCELL_X41_Y3_N27
\inst5|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~13_sumout\ = SUM(( \inst5|cursor_column\(9) ) + ( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR2\(7),
	datad => \inst5|ALT_INV_cursor_column\(9),
	cin => \inst5|Add5~6\,
	sumout => \inst5|Add5~13_sumout\);

-- Location: FF_X41_Y3_N29
\inst5|new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~13_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(9));

-- Location: MLABCELL_X42_Y3_N6
\inst5|cursor_column~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~6_combout\ = ( \inst5|new_cursor_column\(8) & ( (!\inst5|new_cursor_column\(9) & \inst5|new_cursor_column\(0)) ) ) # ( !\inst5|new_cursor_column\(8) & ( (\inst5|new_cursor_column\(0) & ((!\inst5|new_cursor_column\(9)) # 
-- (!\inst5|new_cursor_column\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(9),
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(0),
	dataf => \inst5|ALT_INV_new_cursor_column\(8),
	combout => \inst5|cursor_column~6_combout\);

-- Location: FF_X42_Y3_N8
\inst5|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~6_combout\,
	sclr => \inst5|cursor_column[9]~2_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(0));

-- Location: FF_X41_Y3_N2
\inst5|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~17_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(0));

-- Location: LABCELL_X41_Y3_N30
\inst5|RECV_UART~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~4_combout\ = ( \inst5|RECV_UART~3_combout\ & ( (!\inst5|new_cursor_column\(9) & ((!\inst5|new_cursor_column\(8) & ((\inst5|new_cursor_column\(7)))) # (\inst5|new_cursor_column\(8) & (!\inst5|new_cursor_column\(0) & 
-- !\inst5|new_cursor_column\(7))))) ) ) # ( !\inst5|RECV_UART~3_combout\ & ( (!\inst5|new_cursor_column\(8) & !\inst5|new_cursor_column\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000101100000000000010110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(0),
	datab => \inst5|ALT_INV_new_cursor_column\(8),
	datac => \inst5|ALT_INV_new_cursor_column\(7),
	datad => \inst5|ALT_INV_new_cursor_column\(9),
	dataf => \inst5|ALT_INV_RECV_UART~3_combout\,
	combout => \inst5|RECV_UART~4_combout\);

-- Location: LABCELL_X40_Y3_N39
\inst5|cursor_column~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~3_combout\ = ( \inst11|Equal0~0_combout\ & ( ((\inst5|RECV_UART~4_combout\ & (\inst5|new_cursor_column\(8) & !\inst5|LessThan9~0_combout\))) # (\inst5|Equal3~0_combout\) ) ) # ( !\inst11|Equal0~0_combout\ & ( 
-- ((\inst5|new_cursor_column\(8) & !\inst5|LessThan9~0_combout\)) # (\inst5|Equal3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010101010111010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Equal3~0_combout\,
	datab => \inst5|ALT_INV_RECV_UART~4_combout\,
	datac => \inst5|ALT_INV_new_cursor_column\(8),
	datad => \inst5|ALT_INV_LessThan9~0_combout\,
	dataf => \inst11|ALT_INV_Equal0~0_combout\,
	combout => \inst5|cursor_column~3_combout\);

-- Location: FF_X40_Y3_N41
\inst5|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~3_combout\,
	ena => \inst5|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(8));

-- Location: LABCELL_X43_Y3_N0
\inst11|SevenSeg_out[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|SevenSeg_out[6]~0_combout\ = (!\inst5|cursor_column\(8) & (!\inst5|cursor_column\(7) $ ((\inst5|cursor_column\(9))))) # (\inst5|cursor_column\(8) & (((\inst5|cursor_column\(7) & \inst5|cursor_column\(6))) # (\inst5|cursor_column\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110010111100001111001011110000111100101111000011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(8),
	datab => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(9),
	datad => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst11|SevenSeg_out[6]~0_combout\);

-- Location: LABCELL_X40_Y3_N48
\inst11|SevenSeg_out[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|SevenSeg_out[5]~6_combout\ = ( \inst5|cursor_column\(9) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) # ( !\inst5|cursor_column\(9) & ( (!\inst5|cursor_column\(7) & (!\inst5|cursor_column\(8) & \inst5|cursor_column\(6))) # 
-- (\inst5|cursor_column\(7) & ((!\inst5|cursor_column\(8)) # (\inst5|cursor_column\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(8),
	datad => \inst5|ALT_INV_cursor_column\(6),
	dataf => \inst5|ALT_INV_cursor_column\(9),
	combout => \inst11|SevenSeg_out[5]~6_combout\);

-- Location: LABCELL_X43_Y3_N3
\inst11|SevenSeg_out[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|SevenSeg_out[4]~1_combout\ = ((!\inst5|cursor_column\(7) & (\inst5|cursor_column\(8))) # (\inst5|cursor_column\(7) & ((\inst5|cursor_column\(9))))) # (\inst5|cursor_column\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101111111010011110111111101001111011111110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(8),
	datab => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(6),
	datad => \inst5|ALT_INV_cursor_column\(9),
	combout => \inst11|SevenSeg_out[4]~1_combout\);

-- Location: LABCELL_X40_Y3_N15
\inst11|SevenSeg_out[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|SevenSeg_out[3]~5_combout\ = ( \inst5|cursor_column\(8) & ( (!\inst5|cursor_column\(7) $ (\inst5|cursor_column\(6))) # (\inst5|cursor_column\(9)) ) ) # ( !\inst5|cursor_column\(8) & ( (!\inst5|cursor_column\(7) & (!\inst5|cursor_column\(9) & 
-- \inst5|cursor_column\(6))) # (\inst5|cursor_column\(7) & (\inst5|cursor_column\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010110101111010111111010111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(9),
	datad => \inst5|ALT_INV_cursor_column\(6),
	dataf => \inst5|ALT_INV_cursor_column\(8),
	combout => \inst11|SevenSeg_out[3]~5_combout\);

-- Location: LABCELL_X40_Y3_N12
\inst11|SevenSeg_out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|SevenSeg_out[2]~4_combout\ = ( \inst5|cursor_column\(8) & ( \inst5|cursor_column\(9) ) ) # ( !\inst5|cursor_column\(8) & ( (\inst5|cursor_column\(7) & ((!\inst5|cursor_column\(6)) # (\inst5|cursor_column\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101000100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datab => \inst5|ALT_INV_cursor_column\(9),
	datac => \inst5|ALT_INV_cursor_column\(6),
	dataf => \inst5|ALT_INV_cursor_column\(8),
	combout => \inst11|SevenSeg_out[2]~4_combout\);

-- Location: LABCELL_X43_Y3_N45
\inst11|SevenSeg_out[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|SevenSeg_out[1]~3_combout\ = (!\inst5|cursor_column\(8) & ((!\inst5|cursor_column\(7)) # ((!\inst5|cursor_column\(9))))) # (\inst5|cursor_column\(8) & (!\inst5|cursor_column\(9) & (!\inst5|cursor_column\(7) $ (\inst5|cursor_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101110001000111010111000100011101011100010001110101110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(8),
	datab => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(6),
	datad => \inst5|ALT_INV_cursor_column\(9),
	combout => \inst11|SevenSeg_out[1]~3_combout\);

-- Location: LABCELL_X43_Y3_N42
\inst11|SevenSeg_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|SevenSeg_out[0]~2_combout\ = (!\inst5|cursor_column\(7) & (!\inst5|cursor_column\(8) $ (((!\inst5|cursor_column\(6)) # (\inst5|cursor_column\(9)))))) # (\inst5|cursor_column\(7) & (((\inst5|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011110000111010001111000011101000111100001110100011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(8),
	datab => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(9),
	datad => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst11|SevenSeg_out[0]~2_combout\);

-- Location: LABCELL_X40_Y5_N3
\inst5|PACKET_CHAR1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR1[0]~feeder_combout\ = \inst5|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_SHIFTIN\(0),
	combout => \inst5|PACKET_CHAR1[0]~feeder_combout\);

-- Location: LABCELL_X40_Y4_N9
\inst5|PACKET_CHAR1[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR1[0]~1_combout\ = ( \inst5|LessThan1~0_combout\ & ( (!\inst5|PACKET_COUNT\(1) & (\inst5|PACKET_COUNT\(0) & (\inst5|READ_CHAR~q\ & !\inst5|mouse_state.WAIT_OUTPUT_READY~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(1),
	datab => \inst5|ALT_INV_PACKET_COUNT\(0),
	datac => \inst5|ALT_INV_READ_CHAR~q\,
	datad => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	dataf => \inst5|ALT_INV_LessThan1~0_combout\,
	combout => \inst5|PACKET_CHAR1[0]~1_combout\);

-- Location: FF_X40_Y5_N4
\inst5|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR1[0]~feeder_combout\,
	ena => \inst5|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR1\(0));

-- Location: FF_X42_Y3_N53
\inst5|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|PACKET_CHAR1\(0),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|left_button~q\);

-- Location: FF_X41_Y6_N40
\inst5|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(1),
	sload => VCC,
	ena => \inst5|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR1\(1));

-- Location: FF_X41_Y4_N13
\inst5|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|PACKET_CHAR1\(1),
	sload => VCC,
	ena => \inst5|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|right_button~q\);

-- Location: MLABCELL_X42_Y3_N15
\inst|process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = ( !\inst5|cursor_row\(5) & ( !\inst5|cursor_column\(0) & ( (\inst5|cursor_column\(3) & (!\inst5|cursor_column\(4) & (!\inst5|cursor_row\(7) & !\inst5|cursor_row\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(3),
	datab => \inst5|ALT_INV_cursor_column\(4),
	datac => \inst5|ALT_INV_cursor_row\(7),
	datad => \inst5|ALT_INV_cursor_row\(0),
	datae => \inst5|ALT_INV_cursor_row\(5),
	dataf => \inst5|ALT_INV_cursor_column\(0),
	combout => \inst|process_1~0_combout\);

-- Location: LABCELL_X41_Y3_N36
\inst|process_1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~4_combout\ = ( !\inst5|cursor_row\(2) & ( \inst5|cursor_row\(3) & ( (!\inst5|cursor_row\(4) & (!\inst5|cursor_column\(1) & (\inst5|cursor_column\(6) & \inst5|cursor_row\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(4),
	datab => \inst5|ALT_INV_cursor_column\(1),
	datac => \inst5|ALT_INV_cursor_column\(6),
	datad => \inst5|ALT_INV_cursor_row\(1),
	datae => \inst5|ALT_INV_cursor_row\(2),
	dataf => \inst5|ALT_INV_cursor_row\(3),
	combout => \inst|process_1~4_combout\);

-- Location: LABCELL_X41_Y3_N48
\inst|process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~1_combout\ = ( !\inst5|cursor_column\(7) & ( \inst5|cursor_row\(6) & ( (\inst5|cursor_row\(8) & (!\inst5|cursor_column\(9) & \inst5|cursor_column\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_cursor_column\(9),
	datad => \inst5|ALT_INV_cursor_column\(8),
	datae => \inst5|ALT_INV_cursor_column\(7),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst|process_1~1_combout\);

-- Location: LABCELL_X43_Y3_N54
\inst|process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~2_combout\ = ( !\inst5|cursor_row\(3) & ( \inst5|cursor_row\(2) & ( (\inst5|cursor_row\(4) & (!\inst5|cursor_row\(1) & (\inst5|cursor_column\(1) & !\inst5|cursor_column\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(4),
	datab => \inst5|ALT_INV_cursor_row\(1),
	datac => \inst5|ALT_INV_cursor_column\(1),
	datad => \inst5|ALT_INV_cursor_column\(6),
	datae => \inst5|ALT_INV_cursor_row\(3),
	dataf => \inst5|ALT_INV_cursor_row\(2),
	combout => \inst|process_1~2_combout\);

-- Location: MLABCELL_X42_Y3_N42
\inst|process_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~5_combout\ = ( \inst5|cursor_column\(2) & ( \inst|process_1~2_combout\ & ( (!\inst5|cursor_column\(5) & (\inst|process_1~0_combout\ & \inst|process_1~1_combout\)) ) ) ) # ( !\inst5|cursor_column\(2) & ( \inst|process_1~2_combout\ & ( 
-- (\inst5|cursor_column\(5) & (\inst|process_1~0_combout\ & (\inst|process_1~4_combout\ & \inst|process_1~1_combout\))) ) ) ) # ( !\inst5|cursor_column\(2) & ( !\inst|process_1~2_combout\ & ( (\inst5|cursor_column\(5) & (\inst|process_1~0_combout\ & 
-- (\inst|process_1~4_combout\ & \inst|process_1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(5),
	datab => \inst|ALT_INV_process_1~0_combout\,
	datac => \inst|ALT_INV_process_1~4_combout\,
	datad => \inst|ALT_INV_process_1~1_combout\,
	datae => \inst5|ALT_INV_cursor_column\(2),
	dataf => \inst|ALT_INV_process_1~2_combout\,
	combout => \inst|process_1~5_combout\);

-- Location: MLABCELL_X42_Y3_N18
\inst|process_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~3_combout\ = ( \inst|process_1~2_combout\ & ( (!\inst5|cursor_column\(5) & (\inst|process_1~0_combout\ & (\inst5|cursor_column\(2) & \inst|process_1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(5),
	datab => \inst|ALT_INV_process_1~0_combout\,
	datac => \inst5|ALT_INV_cursor_column\(2),
	datad => \inst|ALT_INV_process_1~1_combout\,
	dataf => \inst|ALT_INV_process_1~2_combout\,
	combout => \inst|process_1~3_combout\);

-- Location: LABCELL_X43_Y3_N33
\inst|process_1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~7_combout\ = ( \inst5|cursor_row\(4) & ( \inst5|cursor_row\(2) & ( (!\inst5|cursor_column\(6) & !\inst5|cursor_row\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(6),
	datad => \inst5|ALT_INV_cursor_row\(3),
	datae => \inst5|ALT_INV_cursor_row\(4),
	dataf => \inst5|ALT_INV_cursor_row\(2),
	combout => \inst|process_1~7_combout\);

-- Location: MLABCELL_X42_Y3_N3
\inst|process_1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~8_combout\ = ( \inst|process_1~7_combout\ & ( (\inst5|cursor_column\(2) & (!\inst5|cursor_row\(1) & (\inst5|cursor_column\(1) & !\inst5|cursor_column\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(2),
	datab => \inst5|ALT_INV_cursor_row\(1),
	datac => \inst5|ALT_INV_cursor_column\(1),
	datad => \inst5|ALT_INV_cursor_column\(5),
	dataf => \inst|ALT_INV_process_1~7_combout\,
	combout => \inst|process_1~8_combout\);

-- Location: MLABCELL_X42_Y3_N36
\inst|process_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~9_combout\ = ( \inst5|cursor_row\(3) & ( (!\inst5|cursor_row\(4) & (!\inst5|cursor_row\(2) & \inst5|cursor_column\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(4),
	datac => \inst5|ALT_INV_cursor_row\(2),
	datad => \inst5|ALT_INV_cursor_column\(6),
	dataf => \inst5|ALT_INV_cursor_row\(3),
	combout => \inst|process_1~9_combout\);

-- Location: MLABCELL_X42_Y3_N0
\inst|process_1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~10_combout\ = ( \inst|process_1~9_combout\ & ( (!\inst5|cursor_column\(2) & (\inst5|cursor_row\(1) & (!\inst5|cursor_column\(1) & \inst5|cursor_column\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(2),
	datab => \inst5|ALT_INV_cursor_row\(1),
	datac => \inst5|ALT_INV_cursor_column\(1),
	datad => \inst5|ALT_INV_cursor_column\(5),
	dataf => \inst|ALT_INV_process_1~9_combout\,
	combout => \inst|process_1~10_combout\);

-- Location: MLABCELL_X42_Y3_N30
\inst|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = ( \inst|process_1~1_combout\ & ( ((!\inst|process_1~0_combout\) # ((!\inst|process_1~8_combout\ & !\inst|process_1~10_combout\))) # (\inst|state.HOME_SCREEN~q\) ) ) # ( !\inst|process_1~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111101110111011111110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_state.HOME_SCREEN~q\,
	datab => \inst|ALT_INV_process_1~0_combout\,
	datac => \inst|ALT_INV_process_1~8_combout\,
	datad => \inst|ALT_INV_process_1~10_combout\,
	dataf => \inst|ALT_INV_process_1~1_combout\,
	combout => \inst|Selector8~0_combout\);

-- Location: MLABCELL_X42_Y3_N9
\inst|next_state.HOME_SCREEN_528\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|next_state.HOME_SCREEN_528~combout\ = ( \inst|Selector8~0_combout\ & ( (\inst|next_state.HOME_SCREEN_528~combout\) # (\inst|Selector0~0_combout\) ) ) # ( !\inst|Selector8~0_combout\ & ( (!\inst|Selector0~0_combout\ & 
-- \inst|next_state.HOME_SCREEN_528~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Selector0~0_combout\,
	datad => \inst|ALT_INV_next_state.HOME_SCREEN_528~combout\,
	dataf => \inst|ALT_INV_Selector8~0_combout\,
	combout => \inst|next_state.HOME_SCREEN_528~combout\);

-- Location: LABCELL_X41_Y5_N36
\inst|state.HOME_SCREEN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|state.HOME_SCREEN~0_combout\ = ( !\inst|next_state.HOME_SCREEN_528~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_next_state.HOME_SCREEN_528~combout\,
	combout => \inst|state.HOME_SCREEN~0_combout\);

-- Location: FF_X41_Y5_N38
\inst|state.HOME_SCREEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst|state.HOME_SCREEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.HOME_SCREEN~q\);

-- Location: LABCELL_X40_Y3_N54
\inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = ( \inst|process_1~0_combout\ & ( \inst|process_1~10_combout\ & ( (\inst5|left_button~q\ & ((!\inst|state.HOME_SCREEN~q\) # (\inst|process_1~1_combout\))) ) ) ) # ( !\inst|process_1~0_combout\ & ( \inst|process_1~10_combout\ & 
-- ( (\inst5|left_button~q\ & !\inst|state.HOME_SCREEN~q\) ) ) ) # ( \inst|process_1~0_combout\ & ( !\inst|process_1~10_combout\ & ( (\inst5|left_button~q\ & ((!\inst|state.HOME_SCREEN~q\) # ((\inst|process_1~8_combout\ & \inst|process_1~1_combout\)))) ) ) ) 
-- # ( !\inst|process_1~0_combout\ & ( !\inst|process_1~10_combout\ & ( (\inst5|left_button~q\ & !\inst|state.HOME_SCREEN~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000100110000001100000011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_process_1~8_combout\,
	datab => \inst5|ALT_INV_left_button~q\,
	datac => \inst|ALT_INV_state.HOME_SCREEN~q\,
	datad => \inst|ALT_INV_process_1~1_combout\,
	datae => \inst|ALT_INV_process_1~0_combout\,
	dataf => \inst|ALT_INV_process_1~10_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LABCELL_X40_Y3_N24
\inst|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = ( !\inst5|cursor_column\(5) & ( \inst|process_1~0_combout\ & ( (\inst5|cursor_column\(2) & (\inst|process_1~2_combout\ & (!\inst|state.HOME_SCREEN~q\ & \inst|process_1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(2),
	datab => \inst|ALT_INV_process_1~2_combout\,
	datac => \inst|ALT_INV_state.HOME_SCREEN~q\,
	datad => \inst|ALT_INV_process_1~1_combout\,
	datae => \inst5|ALT_INV_cursor_column\(5),
	dataf => \inst|ALT_INV_process_1~0_combout\,
	combout => \inst|Selector3~1_combout\);

-- Location: LABCELL_X40_Y3_N42
\inst|next_state.TRAINING_MODE_513\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|next_state.TRAINING_MODE_513~combout\ = ( \inst|Selector3~1_combout\ & ( (\inst|next_state.TRAINING_MODE_513~combout\) # (\inst|Selector0~0_combout\) ) ) # ( !\inst|Selector3~1_combout\ & ( (!\inst|Selector0~0_combout\ & 
-- \inst|next_state.TRAINING_MODE_513~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Selector0~0_combout\,
	datad => \inst|ALT_INV_next_state.TRAINING_MODE_513~combout\,
	dataf => \inst|ALT_INV_Selector3~1_combout\,
	combout => \inst|next_state.TRAINING_MODE_513~combout\);

-- Location: FF_X42_Y3_N47
\inst|state.TRAINING_MODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|next_state.TRAINING_MODE_513~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.TRAINING_MODE~q\);

-- Location: MLABCELL_X42_Y3_N54
\inst|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = ( \inst|state.HOME_SCREEN~q\ & ( (\inst|state.TRAINING_MODE~q\ & ((!\inst5|left_button~q\) # (!\inst|process_1~5_combout\))) ) ) # ( !\inst|state.HOME_SCREEN~q\ & ( ((\inst|state.TRAINING_MODE~q\ & ((!\inst5|left_button~q\) # 
-- (!\inst|process_1~5_combout\)))) # (\inst|process_1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111101111000011111110111100000000111011100000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_left_button~q\,
	datab => \inst|ALT_INV_process_1~5_combout\,
	datac => \inst|ALT_INV_process_1~3_combout\,
	datad => \inst|ALT_INV_state.TRAINING_MODE~q\,
	dataf => \inst|ALT_INV_state.HOME_SCREEN~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: MLABCELL_X42_Y3_N39
\inst|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = ( \inst5|left_button~q\ ) # ( !\inst5|left_button~q\ & ( \inst|state.HOME_SCREEN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_state.HOME_SCREEN~q\,
	dataf => \inst5|ALT_INV_left_button~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: MLABCELL_X42_Y3_N21
\inst|led3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led3~combout\ = ( \inst|Selector2~0_combout\ & ( \inst|Selector3~0_combout\ ) ) # ( !\inst|Selector2~0_combout\ & ( \inst|led3~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Selector3~0_combout\,
	datad => \inst|ALT_INV_led3~combout\,
	dataf => \inst|ALT_INV_Selector2~0_combout\,
	combout => \inst|led3~combout\);

-- Location: LABCELL_X41_Y3_N57
\inst|process_1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|process_1~6_combout\ = ( \inst|process_1~1_combout\ & ( (\inst|process_1~0_combout\ & (!\inst5|cursor_column\(2) & (\inst5|cursor_column\(5) & \inst|process_1~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_process_1~0_combout\,
	datab => \inst5|ALT_INV_cursor_column\(2),
	datac => \inst5|ALT_INV_cursor_column\(5),
	datad => \inst|ALT_INV_process_1~4_combout\,
	dataf => \inst|ALT_INV_process_1~1_combout\,
	combout => \inst|process_1~6_combout\);

-- Location: MLABCELL_X42_Y3_N48
\inst|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = ( \inst|process_1~1_combout\ & ( !\inst|state.HOME_SCREEN~q\ & ( (\inst|process_1~4_combout\ & (\inst|process_1~0_combout\ & (\inst5|cursor_column\(5) & !\inst5|cursor_column\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_process_1~4_combout\,
	datab => \inst|ALT_INV_process_1~0_combout\,
	datac => \inst5|ALT_INV_cursor_column\(5),
	datad => \inst5|ALT_INV_cursor_column\(2),
	datae => \inst|ALT_INV_process_1~1_combout\,
	dataf => \inst|ALT_INV_state.HOME_SCREEN~q\,
	combout => \inst|Selector4~1_combout\);

-- Location: LABCELL_X43_Y3_N21
\inst|next_state.SINGLE_PLAYER_MODE_498\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|next_state.SINGLE_PLAYER_MODE_498~combout\ = ( \inst|Selector4~1_combout\ & ( (\inst|Selector0~0_combout\) # (\inst|next_state.SINGLE_PLAYER_MODE_498~combout\) ) ) # ( !\inst|Selector4~1_combout\ & ( (\inst|next_state.SINGLE_PLAYER_MODE_498~combout\ 
-- & !\inst|Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_next_state.SINGLE_PLAYER_MODE_498~combout\,
	datad => \inst|ALT_INV_Selector0~0_combout\,
	dataf => \inst|ALT_INV_Selector4~1_combout\,
	combout => \inst|next_state.SINGLE_PLAYER_MODE_498~combout\);

-- Location: FF_X42_Y3_N59
\inst|state.SINGLE_PLAYER_MODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst|next_state.SINGLE_PLAYER_MODE_498~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.SINGLE_PLAYER_MODE~q\);

-- Location: MLABCELL_X42_Y3_N57
\inst|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = ( \inst|state.HOME_SCREEN~q\ & ( (\inst|state.SINGLE_PLAYER_MODE~q\ & ((!\inst5|left_button~q\) # (!\inst|process_1~5_combout\))) ) ) # ( !\inst|state.HOME_SCREEN~q\ & ( ((\inst|state.SINGLE_PLAYER_MODE~q\ & 
-- ((!\inst5|left_button~q\) # (!\inst|process_1~5_combout\)))) # (\inst|process_1~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111101111000011111110111100000000111011100000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_left_button~q\,
	datab => \inst|ALT_INV_process_1~5_combout\,
	datac => \inst|ALT_INV_process_1~6_combout\,
	datad => \inst|ALT_INV_state.SINGLE_PLAYER_MODE~q\,
	dataf => \inst|ALT_INV_state.HOME_SCREEN~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: MLABCELL_X42_Y3_N33
\inst|led4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led4~combout\ = ( \inst|led4~combout\ & ( (!\inst|Selector2~0_combout\) # (\inst|Selector4~0_combout\) ) ) # ( !\inst|led4~combout\ & ( (\inst|Selector2~0_combout\ & \inst|Selector4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Selector2~0_combout\,
	datad => \inst|ALT_INV_Selector4~0_combout\,
	dataf => \inst|ALT_INV_led4~combout\,
	combout => \inst|led4~combout\);

-- Location: FF_X37_Y5_N25
\inst2|v_count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~13_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count[8]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y5_N42
\inst2|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = ( !\inst2|v_count\(9) & ( (!\inst2|v_count[6]~DUPLICATE_q\) # ((!\inst2|v_count\(5)) # ((!\inst2|v_count\(7)) # (!\inst2|v_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count[6]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_v_count\(5),
	datac => \inst2|ALT_INV_v_count\(7),
	datad => \inst2|ALT_INV_v_count\(8),
	dataf => \inst2|ALT_INV_v_count\(9),
	combout => \inst2|LessThan7~1_combout\);

-- Location: FF_X37_Y4_N20
\inst2|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count[8]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(8));

-- Location: FF_X37_Y5_N22
\inst2|v_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~9_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count[7]~DUPLICATE_q\);

-- Location: FF_X37_Y4_N17
\inst2|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(7));

-- Location: FF_X37_Y4_N14
\inst2|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(6));

-- Location: FF_X37_Y4_N11
\inst2|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(5),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(5));

-- Location: FF_X37_Y4_N8
\inst2|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(4),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(4));

-- Location: FF_X37_Y4_N59
\inst2|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(3),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(3));

-- Location: FF_X37_Y4_N55
\inst2|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(2),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(2));

-- Location: FF_X37_Y5_N4
\inst2|v_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~37_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count[1]~DUPLICATE_q\);

-- Location: FF_X37_Y4_N2
\inst2|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(1));

-- Location: LABCELL_X43_Y2_N0
\inst|Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add14~21_sumout\ = SUM(( \inst2|pixel_row\(1) ) + ( \inst2|pixel_row\(2) ) + ( !VCC ))
-- \inst|Add14~22\ = CARRY(( \inst2|pixel_row\(1) ) + ( \inst2|pixel_row\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(2),
	datac => \inst2|ALT_INV_pixel_row\(1),
	cin => GND,
	sumout => \inst|Add14~21_sumout\,
	cout => \inst|Add14~22\);

-- Location: LABCELL_X43_Y2_N3
\inst|Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add14~25_sumout\ = SUM(( \inst2|pixel_row\(3) ) + ( VCC ) + ( \inst|Add14~22\ ))
-- \inst|Add14~26\ = CARRY(( \inst2|pixel_row\(3) ) + ( VCC ) + ( \inst|Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(3),
	cin => \inst|Add14~22\,
	sumout => \inst|Add14~25_sumout\,
	cout => \inst|Add14~26\);

-- Location: LABCELL_X43_Y2_N6
\inst|Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add14~29_sumout\ = SUM(( \inst2|pixel_row\(4) ) + ( GND ) + ( \inst|Add14~26\ ))
-- \inst|Add14~30\ = CARRY(( \inst2|pixel_row\(4) ) + ( GND ) + ( \inst|Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(4),
	cin => \inst|Add14~26\,
	sumout => \inst|Add14~29_sumout\,
	cout => \inst|Add14~30\);

-- Location: LABCELL_X43_Y2_N9
\inst|Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add14~17_sumout\ = SUM(( \inst2|pixel_row\(5) ) + ( GND ) + ( \inst|Add14~30\ ))
-- \inst|Add14~18\ = CARRY(( \inst2|pixel_row\(5) ) + ( GND ) + ( \inst|Add14~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(5),
	cin => \inst|Add14~30\,
	sumout => \inst|Add14~17_sumout\,
	cout => \inst|Add14~18\);

-- Location: LABCELL_X43_Y2_N12
\inst|Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add14~9_sumout\ = SUM(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst|Add14~18\ ))
-- \inst|Add14~10\ = CARRY(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst|Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(6),
	cin => \inst|Add14~18\,
	sumout => \inst|Add14~9_sumout\,
	cout => \inst|Add14~10\);

-- Location: LABCELL_X43_Y2_N15
\inst|Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add14~13_sumout\ = SUM(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst|Add14~10\ ))
-- \inst|Add14~14\ = CARRY(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst|Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(7),
	cin => \inst|Add14~10\,
	sumout => \inst|Add14~13_sumout\,
	cout => \inst|Add14~14\);

-- Location: LABCELL_X43_Y2_N18
\inst|Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add14~5_sumout\ = SUM(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst|Add14~14\ ))
-- \inst|Add14~6\ = CARRY(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst|Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(8),
	cin => \inst|Add14~14\,
	sumout => \inst|Add14~5_sumout\,
	cout => \inst|Add14~6\);

-- Location: LABCELL_X43_Y2_N21
\inst|Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add14~1_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add14~6\,
	sumout => \inst|Add14~1_sumout\);

-- Location: LABCELL_X43_Y2_N27
\inst|box3_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box3_on~0_combout\ = ( \inst|Add14~21_sumout\ & ( \inst|Add14~29_sumout\ & ( (!\inst2|pixel_row\(1) & \inst|Add14~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(1),
	datad => \inst|ALT_INV_Add14~25_sumout\,
	datae => \inst|ALT_INV_Add14~21_sumout\,
	dataf => \inst|ALT_INV_Add14~29_sumout\,
	combout => \inst|box3_on~0_combout\);

-- Location: LABCELL_X43_Y2_N54
\inst|box3_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box3_on~1_combout\ = ( \inst|box3_on~0_combout\ & ( \inst|Add14~17_sumout\ & ( (!\inst|Add14~1_sumout\ & ((!\inst|Add14~5_sumout\) # ((!\inst|Add14~9_sumout\ & !\inst|Add14~13_sumout\)))) ) ) ) # ( !\inst|box3_on~0_combout\ & ( 
-- \inst|Add14~17_sumout\ & ( (!\inst|Add14~1_sumout\ & ((!\inst|Add14~5_sumout\) # ((!\inst|Add14~9_sumout\ & !\inst|Add14~13_sumout\)))) ) ) ) # ( \inst|box3_on~0_combout\ & ( !\inst|Add14~17_sumout\ & ( (!\inst|Add14~1_sumout\ & ((!\inst|Add14~5_sumout\) 
-- # ((!\inst|Add14~9_sumout\ & !\inst|Add14~13_sumout\)))) ) ) ) # ( !\inst|box3_on~0_combout\ & ( !\inst|Add14~17_sumout\ & ( (!\inst|Add14~1_sumout\ & ((!\inst|Add14~5_sumout\) # (!\inst|Add14~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010001010000010101000101000001010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add14~1_sumout\,
	datab => \inst|ALT_INV_Add14~9_sumout\,
	datac => \inst|ALT_INV_Add14~5_sumout\,
	datad => \inst|ALT_INV_Add14~13_sumout\,
	datae => \inst|ALT_INV_box3_on~0_combout\,
	dataf => \inst|ALT_INV_Add14~17_sumout\,
	combout => \inst|box3_on~1_combout\);

-- Location: LABCELL_X43_Y5_N15
\inst2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~0_combout\ = ( \inst2|h_count\(9) & ( (!\inst2|h_count\(8) & !\inst2|h_count[7]~DUPLICATE_q\) ) ) # ( !\inst2|h_count\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_h_count\(8),
	datad => \inst2|ALT_INV_h_count[7]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_h_count\(9),
	combout => \inst2|LessThan6~0_combout\);

-- Location: FF_X43_Y5_N53
\inst2|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(9),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(9));

-- Location: FF_X43_Y5_N50
\inst2|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(8),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(8));

-- Location: FF_X43_Y5_N47
\inst2|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(7));

-- Location: FF_X43_Y5_N44
\inst2|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(6),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(6));

-- Location: MLABCELL_X42_Y6_N30
\inst2|pixel_column[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[5]~feeder_combout\ = ( \inst2|h_count\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_h_count\(5),
	combout => \inst2|pixel_column[5]~feeder_combout\);

-- Location: FF_X42_Y6_N31
\inst2|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|pixel_column[5]~feeder_combout\,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(5));

-- Location: FF_X41_Y6_N5
\inst2|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(4));

-- Location: LABCELL_X40_Y5_N6
\inst2|pixel_column[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[3]~feeder_combout\ = ( \inst2|h_count\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_h_count\(3),
	combout => \inst2|pixel_column[3]~feeder_combout\);

-- Location: FF_X40_Y5_N7
\inst2|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|pixel_column[3]~feeder_combout\,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(3));

-- Location: FF_X40_Y6_N17
\inst2|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(2),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(2));

-- Location: FF_X40_Y6_N8
\inst2|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(1),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(1));

-- Location: LABCELL_X40_Y5_N30
\inst|Add12~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add12~34_cout\ = CARRY(( \inst2|pixel_column\(2) ) + ( \inst2|pixel_column\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(2),
	datac => \inst2|ALT_INV_pixel_column\(1),
	cin => GND,
	cout => \inst|Add12~34_cout\);

-- Location: LABCELL_X40_Y5_N33
\inst|Add12~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add12~30_cout\ = CARRY(( \inst2|pixel_column\(3) ) + ( VCC ) + ( \inst|Add12~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	cin => \inst|Add12~34_cout\,
	cout => \inst|Add12~30_cout\);

-- Location: LABCELL_X40_Y5_N36
\inst|Add12~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add12~26_cout\ = CARRY(( \inst2|pixel_column\(4) ) + ( GND ) + ( \inst|Add12~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(4),
	cin => \inst|Add12~30_cout\,
	cout => \inst|Add12~26_cout\);

-- Location: LABCELL_X40_Y5_N39
\inst|Add12~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add12~22_cout\ = CARRY(( \inst2|pixel_column\(5) ) + ( GND ) + ( \inst|Add12~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(5),
	cin => \inst|Add12~26_cout\,
	cout => \inst|Add12~22_cout\);

-- Location: LABCELL_X40_Y5_N42
\inst|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add12~13_sumout\ = SUM(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst|Add12~22_cout\ ))
-- \inst|Add12~14\ = CARRY(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst|Add12~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(6),
	cin => \inst|Add12~22_cout\,
	sumout => \inst|Add12~13_sumout\,
	cout => \inst|Add12~14\);

-- Location: LABCELL_X40_Y5_N45
\inst|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add12~17_sumout\ = SUM(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst|Add12~14\ ))
-- \inst|Add12~18\ = CARRY(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst|Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	cin => \inst|Add12~14\,
	sumout => \inst|Add12~17_sumout\,
	cout => \inst|Add12~18\);

-- Location: LABCELL_X40_Y5_N48
\inst|Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add12~9_sumout\ = SUM(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst|Add12~18\ ))
-- \inst|Add12~10\ = CARRY(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst|Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(8),
	cin => \inst|Add12~18\,
	sumout => \inst|Add12~9_sumout\,
	cout => \inst|Add12~10\);

-- Location: LABCELL_X40_Y5_N51
\inst|Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add12~1_sumout\ = SUM(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst|Add12~10\ ))
-- \inst|Add12~2\ = CARRY(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst|Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(9),
	cin => \inst|Add12~10\,
	sumout => \inst|Add12~1_sumout\,
	cout => \inst|Add12~2\);

-- Location: LABCELL_X40_Y5_N54
\inst|Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add12~5_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add12~2\,
	sumout => \inst|Add12~5_sumout\);

-- Location: LABCELL_X40_Y5_N12
\inst|box3_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box3_on~2_combout\ = ( !\inst|Add12~5_sumout\ & ( \inst|Add12~13_sumout\ & ( (!\inst|Add12~1_sumout\ & !\inst|Add12~9_sumout\) ) ) ) # ( !\inst|Add12~5_sumout\ & ( !\inst|Add12~13_sumout\ & ( (!\inst|Add12~1_sumout\ & ((!\inst|Add12~17_sumout\) # 
-- (!\inst|Add12~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add12~1_sumout\,
	datab => \inst|ALT_INV_Add12~17_sumout\,
	datac => \inst|ALT_INV_Add12~9_sumout\,
	datae => \inst|ALT_INV_Add12~5_sumout\,
	dataf => \inst|ALT_INV_Add12~13_sumout\,
	combout => \inst|box3_on~2_combout\);

-- Location: LABCELL_X43_Y5_N27
\inst|box3_on~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box3_on~5_combout\ = ( \inst2|pixel_column\(5) & ( (!\inst2|pixel_column\(6) & !\inst2|pixel_column\(7)) ) ) # ( !\inst2|pixel_column\(5) & ( (!\inst2|pixel_column\(7) & ((!\inst2|pixel_column\(6)) # (!\inst2|pixel_column\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(6),
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst2|ALT_INV_pixel_column\(7),
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst|box3_on~5_combout\);

-- Location: FF_X37_Y5_N38
\inst2|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(0),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(0));

-- Location: MLABCELL_X37_Y5_N36
\inst|LessThan15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan15~0_combout\ = ( \inst2|pixel_row\(2) & ( (!\inst2|pixel_row\(3) & !\inst2|pixel_row\(4)) ) ) # ( !\inst2|pixel_row\(2) & ( (!\inst2|pixel_row\(4) & ((!\inst2|pixel_row\(3)) # ((!\inst2|pixel_row\(1) & !\inst2|pixel_row\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010100000111000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datab => \inst2|ALT_INV_pixel_row\(1),
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst2|ALT_INV_pixel_row\(0),
	dataf => \inst2|ALT_INV_pixel_row\(2),
	combout => \inst|LessThan15~0_combout\);

-- Location: MLABCELL_X37_Y4_N57
\inst|box3_on~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box3_on~3_combout\ = ( \inst|LessThan15~0_combout\ & ( \inst2|pixel_row\(5) & ( (\inst2|pixel_row\(8) & \inst2|pixel_row\(7)) ) ) ) # ( !\inst|LessThan15~0_combout\ & ( \inst2|pixel_row\(5) & ( (\inst2|pixel_row\(8) & ((\inst2|pixel_row\(6)) # 
-- (\inst2|pixel_row\(7)))) ) ) ) # ( \inst|LessThan15~0_combout\ & ( !\inst2|pixel_row\(5) & ( (\inst2|pixel_row\(8) & \inst2|pixel_row\(7)) ) ) ) # ( !\inst|LessThan15~0_combout\ & ( !\inst2|pixel_row\(5) & ( (\inst2|pixel_row\(8) & \inst2|pixel_row\(7)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010101000101010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(8),
	datab => \inst2|ALT_INV_pixel_row\(7),
	datac => \inst2|ALT_INV_pixel_row\(6),
	datae => \inst|ALT_INV_LessThan15~0_combout\,
	dataf => \inst2|ALT_INV_pixel_row\(5),
	combout => \inst|box3_on~3_combout\);

-- Location: FF_X43_Y5_N2
\inst2|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(0),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(0));

-- Location: LABCELL_X43_Y5_N24
\inst|box3_on~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box3_on~4_combout\ = ( \inst2|pixel_column\(2) & ( (\inst2|pixel_column\(3) & \inst2|pixel_column\(6)) ) ) # ( !\inst2|pixel_column\(2) & ( (\inst2|pixel_column\(3) & (\inst2|pixel_column\(6) & (\inst2|pixel_column\(0) & \inst2|pixel_column\(1)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	datab => \inst2|ALT_INV_pixel_column\(6),
	datac => \inst2|ALT_INV_pixel_column\(0),
	datad => \inst2|ALT_INV_pixel_column\(1),
	dataf => \inst2|ALT_INV_pixel_column\(2),
	combout => \inst|box3_on~4_combout\);

-- Location: LABCELL_X43_Y5_N18
\inst|box3_on~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box3_on~6_combout\ = ( \inst|box3_on~4_combout\ & ( (!\inst2|pixel_column\(8) & (!\inst2|pixel_column\(9) & !\inst|box3_on~3_combout\)) ) ) # ( !\inst|box3_on~4_combout\ & ( (!\inst2|pixel_column\(9) & (!\inst|box3_on~3_combout\ & 
-- ((!\inst2|pixel_column\(8)) # (\inst|box3_on~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	datab => \inst2|ALT_INV_pixel_column\(9),
	datac => \inst|ALT_INV_box3_on~5_combout\,
	datad => \inst|ALT_INV_box3_on~3_combout\,
	dataf => \inst|ALT_INV_box3_on~4_combout\,
	combout => \inst|box3_on~6_combout\);

-- Location: MLABCELL_X37_Y4_N0
\inst|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~29_sumout\ = SUM(( \inst2|pixel_row\(1) ) + ( \inst2|pixel_row\(2) ) + ( !VCC ))
-- \inst|Add6~30\ = CARRY(( \inst2|pixel_row\(1) ) + ( \inst2|pixel_row\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(2),
	datad => \inst2|ALT_INV_pixel_row\(1),
	cin => GND,
	sumout => \inst|Add6~29_sumout\,
	cout => \inst|Add6~30\);

-- Location: MLABCELL_X37_Y4_N3
\inst|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~25_sumout\ = SUM(( \inst2|pixel_row\(3) ) + ( GND ) + ( \inst|Add6~30\ ))
-- \inst|Add6~26\ = CARRY(( \inst2|pixel_row\(3) ) + ( GND ) + ( \inst|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(3),
	cin => \inst|Add6~30\,
	sumout => \inst|Add6~25_sumout\,
	cout => \inst|Add6~26\);

-- Location: MLABCELL_X37_Y4_N6
\inst|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~21_sumout\ = SUM(( \inst2|pixel_row\(4) ) + ( VCC ) + ( \inst|Add6~26\ ))
-- \inst|Add6~22\ = CARRY(( \inst2|pixel_row\(4) ) + ( VCC ) + ( \inst|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(4),
	cin => \inst|Add6~26\,
	sumout => \inst|Add6~21_sumout\,
	cout => \inst|Add6~22\);

-- Location: MLABCELL_X37_Y4_N9
\inst|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~13_sumout\ = SUM(( \inst2|pixel_row\(5) ) + ( VCC ) + ( \inst|Add6~22\ ))
-- \inst|Add6~14\ = CARRY(( \inst2|pixel_row\(5) ) + ( VCC ) + ( \inst|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(5),
	cin => \inst|Add6~22\,
	sumout => \inst|Add6~13_sumout\,
	cout => \inst|Add6~14\);

-- Location: MLABCELL_X37_Y4_N12
\inst|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~17_sumout\ = SUM(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst|Add6~14\ ))
-- \inst|Add6~18\ = CARRY(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(6),
	cin => \inst|Add6~14\,
	sumout => \inst|Add6~17_sumout\,
	cout => \inst|Add6~18\);

-- Location: MLABCELL_X37_Y4_N30
\inst|box1_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box1_on~1_combout\ = ( \inst|Add6~21_sumout\ & ( ((\inst|Add6~29_sumout\ & !\inst2|pixel_row\(1))) # (\inst|Add6~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add6~29_sumout\,
	datac => \inst|ALT_INV_Add6~25_sumout\,
	datad => \inst2|ALT_INV_pixel_row\(1),
	dataf => \inst|ALT_INV_Add6~21_sumout\,
	combout => \inst|box1_on~1_combout\);

-- Location: MLABCELL_X37_Y4_N15
\inst|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~9_sumout\ = SUM(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst|Add6~18\ ))
-- \inst|Add6~10\ = CARRY(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(7),
	cin => \inst|Add6~18\,
	sumout => \inst|Add6~9_sumout\,
	cout => \inst|Add6~10\);

-- Location: MLABCELL_X37_Y4_N18
\inst|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~1_sumout\ = SUM(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst|Add6~10\ ))
-- \inst|Add6~2\ = CARRY(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_row\(8),
	cin => \inst|Add6~10\,
	sumout => \inst|Add6~1_sumout\,
	cout => \inst|Add6~2\);

-- Location: MLABCELL_X37_Y4_N21
\inst|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add6~5_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add6~2\,
	sumout => \inst|Add6~5_sumout\);

-- Location: MLABCELL_X37_Y4_N36
\inst|box1_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box1_on~2_combout\ = ( \inst|Add6~13_sumout\ & ( !\inst|Add6~1_sumout\ & ( (!\inst|Add6~5_sumout\ & !\inst|Add6~9_sumout\) ) ) ) # ( !\inst|Add6~13_sumout\ & ( !\inst|Add6~1_sumout\ & ( (!\inst|Add6~5_sumout\ & ((!\inst|Add6~9_sumout\) # 
-- ((!\inst|Add6~17_sumout\ & !\inst|box1_on~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add6~17_sumout\,
	datab => \inst|ALT_INV_box1_on~1_combout\,
	datac => \inst|ALT_INV_Add6~5_sumout\,
	datad => \inst|ALT_INV_Add6~9_sumout\,
	datae => \inst|ALT_INV_Add6~13_sumout\,
	dataf => \inst|ALT_INV_Add6~1_sumout\,
	combout => \inst|box1_on~2_combout\);

-- Location: MLABCELL_X42_Y2_N57
\inst|box1_on~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box1_on~5_combout\ = ( \inst|LessThan15~0_combout\ & ( (\inst2|pixel_row\(5) & (\inst2|pixel_row\(7) & \inst2|pixel_row\(6))) ) ) # ( !\inst|LessThan15~0_combout\ & ( (\inst2|pixel_row\(7) & \inst2|pixel_row\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(5),
	datac => \inst2|ALT_INV_pixel_row\(7),
	datad => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst|ALT_INV_LessThan15~0_combout\,
	combout => \inst|box1_on~5_combout\);

-- Location: LABCELL_X43_Y5_N0
\inst|box1_on~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box1_on~3_combout\ = ( !\inst2|pixel_column\(2) & ( (!\inst2|pixel_column\(3) & ((!\inst2|pixel_column\(1)) # (!\inst2|pixel_column\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	datab => \inst2|ALT_INV_pixel_column\(1),
	datad => \inst2|ALT_INV_pixel_column\(0),
	dataf => \inst2|ALT_INV_pixel_column\(2),
	combout => \inst|box1_on~3_combout\);

-- Location: LABCELL_X43_Y5_N6
\inst|box1_on~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box1_on~4_combout\ = ( \inst2|pixel_column\(4) & ( (!\inst2|pixel_column\(7) & ((!\inst2|pixel_column\(5)) # ((!\inst2|pixel_column\(6)) # (\inst|box1_on~3_combout\)))) ) ) # ( !\inst2|pixel_column\(4) & ( !\inst2|pixel_column\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011101111000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(5),
	datab => \inst2|ALT_INV_pixel_column\(6),
	datac => \inst|ALT_INV_box1_on~3_combout\,
	datad => \inst2|ALT_INV_pixel_column\(7),
	dataf => \inst2|ALT_INV_pixel_column\(4),
	combout => \inst|box1_on~4_combout\);

-- Location: LABCELL_X43_Y5_N21
\inst|box1_on~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box1_on~6_combout\ = ( !\inst2|pixel_row\(8) & ( (!\inst2|pixel_column\(9) & (!\inst|box1_on~5_combout\ & ((!\inst2|pixel_column\(8)) # (\inst|box1_on~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000100000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	datab => \inst2|ALT_INV_pixel_column\(9),
	datac => \inst|ALT_INV_box1_on~5_combout\,
	datad => \inst|ALT_INV_box1_on~4_combout\,
	dataf => \inst2|ALT_INV_pixel_row\(8),
	combout => \inst|box1_on~6_combout\);

-- Location: LABCELL_X43_Y5_N30
\inst|Add4~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~34_cout\ = CARRY(( \inst2|pixel_column\(1) ) + ( \inst2|pixel_column\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(2),
	datad => \inst2|ALT_INV_pixel_column\(1),
	cin => GND,
	cout => \inst|Add4~34_cout\);

-- Location: LABCELL_X43_Y5_N33
\inst|Add4~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~30_cout\ = CARRY(( \inst2|pixel_column\(3) ) + ( GND ) + ( \inst|Add4~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	cin => \inst|Add4~34_cout\,
	cout => \inst|Add4~30_cout\);

-- Location: LABCELL_X43_Y5_N36
\inst|Add4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~26_cout\ = CARRY(( \inst2|pixel_column\(4) ) + ( VCC ) + ( \inst|Add4~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(4),
	cin => \inst|Add4~30_cout\,
	cout => \inst|Add4~26_cout\);

-- Location: LABCELL_X43_Y5_N39
\inst|Add4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~22_cout\ = CARRY(( \inst2|pixel_column\(5) ) + ( VCC ) + ( \inst|Add4~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(5),
	cin => \inst|Add4~26_cout\,
	cout => \inst|Add4~22_cout\);

-- Location: LABCELL_X43_Y5_N42
\inst|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~13_sumout\ = SUM(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst|Add4~22_cout\ ))
-- \inst|Add4~14\ = CARRY(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst|Add4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(6),
	cin => \inst|Add4~22_cout\,
	sumout => \inst|Add4~13_sumout\,
	cout => \inst|Add4~14\);

-- Location: LABCELL_X43_Y5_N45
\inst|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~17_sumout\ = SUM(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst|Add4~14\ ))
-- \inst|Add4~18\ = CARRY(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(7),
	cin => \inst|Add4~14\,
	sumout => \inst|Add4~17_sumout\,
	cout => \inst|Add4~18\);

-- Location: LABCELL_X43_Y5_N48
\inst|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~9_sumout\ = SUM(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst|Add4~18\ ))
-- \inst|Add4~10\ = CARRY(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(8),
	cin => \inst|Add4~18\,
	sumout => \inst|Add4~9_sumout\,
	cout => \inst|Add4~10\);

-- Location: LABCELL_X43_Y5_N51
\inst|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~1_sumout\ = SUM(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst|Add4~10\ ))
-- \inst|Add4~2\ = CARRY(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(9),
	cin => \inst|Add4~10\,
	sumout => \inst|Add4~1_sumout\,
	cout => \inst|Add4~2\);

-- Location: LABCELL_X43_Y5_N54
\inst|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~5_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add4~2\,
	sumout => \inst|Add4~5_sumout\);

-- Location: LABCELL_X43_Y5_N12
\inst|box1_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box1_on~0_combout\ = ( \inst|Add4~17_sumout\ & ( (!\inst|Add4~1_sumout\ & (!\inst|Add4~9_sumout\ & !\inst|Add4~5_sumout\)) ) ) # ( !\inst|Add4~17_sumout\ & ( (!\inst|Add4~1_sumout\ & (!\inst|Add4~5_sumout\ & ((!\inst|Add4~9_sumout\) # 
-- (!\inst|Add4~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add4~1_sumout\,
	datab => \inst|ALT_INV_Add4~9_sumout\,
	datac => \inst|ALT_INV_Add4~5_sumout\,
	datad => \inst|ALT_INV_Add4~13_sumout\,
	dataf => \inst|ALT_INV_Add4~17_sumout\,
	combout => \inst|box1_on~0_combout\);

-- Location: MLABCELL_X42_Y5_N3
\inst2|blue_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|blue_out~2_combout\ = ( \inst|box1_on~6_combout\ & ( \inst|box1_on~0_combout\ & ( (!\inst|box3_on~1_combout\ & (!\inst|box3_on~2_combout\ & \inst|box3_on~6_combout\)) ) ) ) # ( !\inst|box1_on~6_combout\ & ( \inst|box1_on~0_combout\ & ( 
-- (!\inst|box3_on~1_combout\ & (!\inst|box3_on~2_combout\ & \inst|box3_on~6_combout\)) ) ) ) # ( \inst|box1_on~6_combout\ & ( !\inst|box1_on~0_combout\ & ( (!\inst|box1_on~2_combout\) # ((!\inst|box3_on~1_combout\ & (!\inst|box3_on~2_combout\ & 
-- \inst|box3_on~6_combout\))) ) ) ) # ( !\inst|box1_on~6_combout\ & ( !\inst|box1_on~0_combout\ & ( (!\inst|box3_on~1_combout\ & (!\inst|box3_on~2_combout\ & \inst|box3_on~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000111111110000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_box3_on~1_combout\,
	datab => \inst|ALT_INV_box3_on~2_combout\,
	datac => \inst|ALT_INV_box3_on~6_combout\,
	datad => \inst|ALT_INV_box1_on~2_combout\,
	datae => \inst|ALT_INV_box1_on~6_combout\,
	dataf => \inst|ALT_INV_box1_on~0_combout\,
	combout => \inst2|blue_out~2_combout\);

-- Location: LABCELL_X41_Y2_N0
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst2|pixel_column\(2) ) + ( \inst2|pixel_column\(3) ) + ( !VCC ))
-- \inst|Add0~10\ = CARRY(( \inst2|pixel_column\(2) ) + ( \inst2|pixel_column\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(3),
	datad => \inst2|ALT_INV_pixel_column\(2),
	cin => GND,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: LABCELL_X41_Y2_N3
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst2|pixel_column\(4) ) + ( GND ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( \inst2|pixel_column\(4) ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(4),
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: LABCELL_X41_Y2_N6
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst2|pixel_column\(5) ) + ( GND ) + ( \inst|Add0~6\ ))
-- \inst|Add0~22\ = CARRY(( \inst2|pixel_column\(5) ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(5),
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: LABCELL_X41_Y2_N9
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(6),
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: LABCELL_X41_Y2_N12
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(7),
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: LABCELL_X41_Y2_N15
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst|Add0~14\ ))
-- \inst|Add0~30\ = CARRY(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: LABCELL_X41_Y2_N18
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(9),
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: LABCELL_X41_Y2_N48
\inst|ball_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~0_combout\ = ( \inst5|cursor_column\(8) & ( (\inst|Add0~29_sumout\ & (!\inst5|cursor_column\(9) $ (\inst|Add0~25_sumout\))) ) ) # ( !\inst5|cursor_column\(8) & ( (!\inst|Add0~29_sumout\ & (!\inst5|cursor_column\(9) $ 
-- (\inst|Add0~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(9),
	datab => \inst|ALT_INV_Add0~29_sumout\,
	datac => \inst|ALT_INV_Add0~25_sumout\,
	dataf => \inst5|ALT_INV_cursor_column\(8),
	combout => \inst|ball_on~0_combout\);

-- Location: LABCELL_X41_Y2_N54
\inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ( \inst2|pixel_column\(2) & ( \inst5|cursor_column\(0) & ( ((!\inst5|cursor_column\(1) & (!\inst2|pixel_column\(0) & !\inst2|pixel_column\(1))) # (\inst5|cursor_column\(1) & ((!\inst2|pixel_column\(0)) # 
-- (!\inst2|pixel_column\(1))))) # (\inst5|cursor_column\(2)) ) ) ) # ( !\inst2|pixel_column\(2) & ( \inst5|cursor_column\(0) & ( (\inst5|cursor_column\(2) & ((!\inst5|cursor_column\(1) & (!\inst2|pixel_column\(0) & !\inst2|pixel_column\(1))) # 
-- (\inst5|cursor_column\(1) & ((!\inst2|pixel_column\(0)) # (!\inst2|pixel_column\(1)))))) ) ) ) # ( \inst2|pixel_column\(2) & ( !\inst5|cursor_column\(0) & ( ((\inst5|cursor_column\(1) & !\inst2|pixel_column\(1))) # (\inst5|cursor_column\(2)) ) ) ) # ( 
-- !\inst2|pixel_column\(2) & ( !\inst5|cursor_column\(0) & ( (\inst5|cursor_column\(1) & (\inst5|cursor_column\(2) & !\inst2|pixel_column\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000010111110000111100001101000001001101111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(1),
	datab => \inst2|ALT_INV_pixel_column\(0),
	datac => \inst5|ALT_INV_cursor_column\(2),
	datad => \inst2|ALT_INV_pixel_column\(1),
	datae => \inst2|ALT_INV_pixel_column\(2),
	dataf => \inst5|ALT_INV_cursor_column\(0),
	combout => \inst|LessThan0~0_combout\);

-- Location: LABCELL_X41_Y2_N30
\inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ( \inst|Add0~5_sumout\ & ( \inst|LessThan0~0_combout\ & ( (\inst5|cursor_column\(4) & ((!\inst|Add0~9_sumout\) # (\inst5|cursor_column\(3)))) ) ) ) # ( !\inst|Add0~5_sumout\ & ( \inst|LessThan0~0_combout\ & ( 
-- ((!\inst|Add0~9_sumout\) # (\inst5|cursor_column\(4))) # (\inst5|cursor_column\(3)) ) ) ) # ( \inst|Add0~5_sumout\ & ( !\inst|LessThan0~0_combout\ & ( (\inst5|cursor_column\(3) & (!\inst|Add0~9_sumout\ & \inst5|cursor_column\(4))) ) ) ) # ( 
-- !\inst|Add0~5_sumout\ & ( !\inst|LessThan0~0_combout\ & ( ((\inst5|cursor_column\(3) & !\inst|Add0~9_sumout\)) # (\inst5|cursor_column\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111111000000000011000011110011111111110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_column\(3),
	datac => \inst|ALT_INV_Add0~9_sumout\,
	datad => \inst5|ALT_INV_cursor_column\(4),
	datae => \inst|ALT_INV_Add0~5_sumout\,
	dataf => \inst|ALT_INV_LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LABCELL_X41_Y2_N21
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~1_sumout\);

-- Location: LABCELL_X41_Y2_N51
\inst|ball_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~1_combout\ = ( \inst5|cursor_column\(8) & ( (!\inst5|cursor_column\(9) & (!\inst|Add0~29_sumout\ & !\inst|Add0~25_sumout\)) # (\inst5|cursor_column\(9) & ((!\inst|Add0~29_sumout\) # (!\inst|Add0~25_sumout\))) ) ) # ( 
-- !\inst5|cursor_column\(8) & ( (\inst5|cursor_column\(9) & !\inst|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(9),
	datac => \inst|ALT_INV_Add0~29_sumout\,
	datad => \inst|ALT_INV_Add0~25_sumout\,
	dataf => \inst5|ALT_INV_cursor_column\(8),
	combout => \inst|ball_on~1_combout\);

-- Location: LABCELL_X41_Y2_N42
\inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = ( \inst5|cursor_column\(6) & ( \inst5|cursor_column\(7) & ( (!\inst|Add0~13_sumout\) # ((!\inst|Add0~17_sumout\) # ((\inst5|cursor_column\(5) & !\inst|Add0~21_sumout\))) ) ) ) # ( !\inst5|cursor_column\(6) & ( 
-- \inst5|cursor_column\(7) & ( (!\inst|Add0~13_sumout\) # ((\inst5|cursor_column\(5) & (!\inst|Add0~21_sumout\ & !\inst|Add0~17_sumout\))) ) ) ) # ( \inst5|cursor_column\(6) & ( !\inst5|cursor_column\(7) & ( (!\inst|Add0~13_sumout\ & 
-- ((!\inst|Add0~17_sumout\) # ((\inst5|cursor_column\(5) & !\inst|Add0~21_sumout\)))) ) ) ) # ( !\inst5|cursor_column\(6) & ( !\inst5|cursor_column\(7) & ( (\inst5|cursor_column\(5) & (!\inst|Add0~13_sumout\ & (!\inst|Add0~21_sumout\ & 
-- !\inst|Add0~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000110011000100000011011100110011001111111111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(5),
	datab => \inst|ALT_INV_Add0~13_sumout\,
	datac => \inst|ALT_INV_Add0~21_sumout\,
	datad => \inst|ALT_INV_Add0~17_sumout\,
	datae => \inst5|ALT_INV_cursor_column\(6),
	dataf => \inst5|ALT_INV_cursor_column\(7),
	combout => \inst|LessThan0~3_combout\);

-- Location: LABCELL_X41_Y2_N36
\inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = ( \inst5|cursor_column\(6) & ( \inst5|cursor_column\(7) & ( (\inst|Add0~13_sumout\ & (\inst|Add0~17_sumout\ & (!\inst5|cursor_column\(5) $ (\inst|Add0~21_sumout\)))) ) ) ) # ( !\inst5|cursor_column\(6) & ( 
-- \inst5|cursor_column\(7) & ( (\inst|Add0~13_sumout\ & (!\inst|Add0~17_sumout\ & (!\inst5|cursor_column\(5) $ (\inst|Add0~21_sumout\)))) ) ) ) # ( \inst5|cursor_column\(6) & ( !\inst5|cursor_column\(7) & ( (!\inst|Add0~13_sumout\ & (\inst|Add0~17_sumout\ & 
-- (!\inst5|cursor_column\(5) $ (\inst|Add0~21_sumout\)))) ) ) ) # ( !\inst5|cursor_column\(6) & ( !\inst5|cursor_column\(7) & ( (!\inst|Add0~13_sumout\ & (!\inst|Add0~17_sumout\ & (!\inst5|cursor_column\(5) $ (\inst|Add0~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(5),
	datab => \inst|ALT_INV_Add0~13_sumout\,
	datac => \inst|ALT_INV_Add0~21_sumout\,
	datad => \inst|ALT_INV_Add0~17_sumout\,
	datae => \inst5|ALT_INV_cursor_column\(6),
	dataf => \inst5|ALT_INV_cursor_column\(7),
	combout => \inst|LessThan0~2_combout\);

-- Location: LABCELL_X41_Y2_N24
\inst|ball_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~2_combout\ = ( \inst|LessThan0~3_combout\ & ( \inst|LessThan0~2_combout\ & ( (!\inst|Add0~1_sumout\ & ((\inst|ball_on~1_combout\) # (\inst|ball_on~0_combout\))) ) ) ) # ( !\inst|LessThan0~3_combout\ & ( \inst|LessThan0~2_combout\ & ( 
-- (!\inst|Add0~1_sumout\ & (((\inst|ball_on~0_combout\ & \inst|LessThan0~1_combout\)) # (\inst|ball_on~1_combout\))) ) ) ) # ( \inst|LessThan0~3_combout\ & ( !\inst|LessThan0~2_combout\ & ( (!\inst|Add0~1_sumout\ & ((\inst|ball_on~1_combout\) # 
-- (\inst|ball_on~0_combout\))) ) ) ) # ( !\inst|LessThan0~3_combout\ & ( !\inst|LessThan0~2_combout\ & ( (!\inst|Add0~1_sumout\ & \inst|ball_on~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100001111000000010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ball_on~0_combout\,
	datab => \inst|ALT_INV_LessThan0~1_combout\,
	datac => \inst|ALT_INV_Add0~1_sumout\,
	datad => \inst|ALT_INV_ball_on~1_combout\,
	datae => \inst|ALT_INV_LessThan0~3_combout\,
	dataf => \inst|ALT_INV_LessThan0~2_combout\,
	combout => \inst|ball_on~2_combout\);

-- Location: LABCELL_X43_Y5_N3
\inst|box2_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box2_on~0_combout\ = ( \inst2|pixel_column\(2) & ( (\inst2|pixel_column\(4) & (((\inst2|pixel_column\(0)) # (\inst2|pixel_column\(1))) # (\inst2|pixel_column\(3)))) ) ) # ( !\inst2|pixel_column\(2) & ( (\inst2|pixel_column\(3) & 
-- \inst2|pixel_column\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	datab => \inst2|ALT_INV_pixel_column\(1),
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst2|ALT_INV_pixel_column\(0),
	dataf => \inst2|ALT_INV_pixel_column\(2),
	combout => \inst|box2_on~0_combout\);

-- Location: LABCELL_X43_Y5_N9
\inst|box2_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box2_on~1_combout\ = ( \inst2|pixel_column\(8) & ( ((\inst2|pixel_column\(6) & ((\inst|box2_on~0_combout\) # (\inst2|pixel_column\(5))))) # (\inst2|pixel_column\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(5),
	datab => \inst2|ALT_INV_pixel_column\(6),
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst|ALT_INV_box2_on~0_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(8),
	combout => \inst|box2_on~1_combout\);

-- Location: FF_X37_Y5_N44
\inst2|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_v~q\);

-- Location: FF_X40_Y5_N14
\inst2|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|LessThan6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_h~q\);

-- Location: LABCELL_X40_Y5_N21
\inst2|blue_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|blue_out~0_combout\ = ( \inst2|video_on_h~q\ & ( \inst2|video_on_v~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_video_on_v~q\,
	dataf => \inst2|ALT_INV_video_on_h~q\,
	combout => \inst2|blue_out~0_combout\);

-- Location: MLABCELL_X37_Y5_N39
\inst|box2_on~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box2_on~6_combout\ = ( \inst2|pixel_row\(2) & ( (\inst2|pixel_row\(3) & (\inst2|pixel_row\(1) & \inst2|pixel_row\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datab => \inst2|ALT_INV_pixel_row\(1),
	datad => \inst2|ALT_INV_pixel_row\(0),
	dataf => \inst2|ALT_INV_pixel_row\(2),
	combout => \inst|box2_on~6_combout\);

-- Location: MLABCELL_X37_Y4_N33
\inst|box2_on~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box2_on~7_combout\ = ( !\inst2|pixel_row\(7) & ( (!\inst2|pixel_row\(6) & (!\inst2|pixel_row\(5) & !\inst2|pixel_row\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(6),
	datac => \inst2|ALT_INV_pixel_row\(5),
	datad => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst2|ALT_INV_pixel_row\(7),
	combout => \inst|box2_on~7_combout\);

-- Location: MLABCELL_X42_Y2_N18
\inst|box2_on~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box2_on~8_combout\ = ( \inst|box2_on~7_combout\ & ( !\inst2|pixel_column\(9) & ( (!\inst|box2_on~6_combout\) # (!\inst2|pixel_row\(8)) ) ) ) # ( !\inst|box2_on~7_combout\ & ( !\inst2|pixel_column\(9) & ( !\inst2|pixel_row\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_box2_on~6_combout\,
	datac => \inst2|ALT_INV_pixel_row\(8),
	datae => \inst|ALT_INV_box2_on~7_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(9),
	combout => \inst|box2_on~8_combout\);

-- Location: LABCELL_X43_Y2_N30
\inst|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add10~1_sumout\ = SUM(( \inst2|pixel_row\(3) ) + ( \inst2|pixel_row\(2) ) + ( !VCC ))
-- \inst|Add10~2\ = CARRY(( \inst2|pixel_row\(3) ) + ( \inst2|pixel_row\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(3),
	datac => \inst2|ALT_INV_pixel_row\(2),
	cin => GND,
	sumout => \inst|Add10~1_sumout\,
	cout => \inst|Add10~2\);

-- Location: LABCELL_X43_Y2_N33
\inst|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add10~5_sumout\ = SUM(( \inst2|pixel_row\(4) ) + ( VCC ) + ( \inst|Add10~2\ ))
-- \inst|Add10~6\ = CARRY(( \inst2|pixel_row\(4) ) + ( VCC ) + ( \inst|Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(4),
	cin => \inst|Add10~2\,
	sumout => \inst|Add10~5_sumout\,
	cout => \inst|Add10~6\);

-- Location: LABCELL_X43_Y2_N36
\inst|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add10~9_sumout\ = SUM(( \inst2|pixel_row\(5) ) + ( GND ) + ( \inst|Add10~6\ ))
-- \inst|Add10~10\ = CARRY(( \inst2|pixel_row\(5) ) + ( GND ) + ( \inst|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(5),
	cin => \inst|Add10~6\,
	sumout => \inst|Add10~9_sumout\,
	cout => \inst|Add10~10\);

-- Location: LABCELL_X43_Y2_N39
\inst|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add10~13_sumout\ = SUM(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst|Add10~10\ ))
-- \inst|Add10~14\ = CARRY(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(6),
	cin => \inst|Add10~10\,
	sumout => \inst|Add10~13_sumout\,
	cout => \inst|Add10~14\);

-- Location: LABCELL_X43_Y2_N42
\inst|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add10~17_sumout\ = SUM(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst|Add10~14\ ))
-- \inst|Add10~18\ = CARRY(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst|Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(7),
	cin => \inst|Add10~14\,
	sumout => \inst|Add10~17_sumout\,
	cout => \inst|Add10~18\);

-- Location: LABCELL_X43_Y4_N6
\inst|box2_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box2_on~2_combout\ = ( !\inst2|pixel_row\(1) & ( \inst2|pixel_row\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(2),
	dataf => \inst2|ALT_INV_pixel_row\(1),
	combout => \inst|box2_on~2_combout\);

-- Location: LABCELL_X43_Y4_N12
\inst|box2_on~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box2_on~3_combout\ = ( \inst|Add10~9_sumout\ & ( !\inst|box2_on~2_combout\ & ( (\inst|Add10~5_sumout\ & (\inst|Add10~13_sumout\ & (\inst|Add10~17_sumout\ & \inst|Add10~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add10~5_sumout\,
	datab => \inst|ALT_INV_Add10~13_sumout\,
	datac => \inst|ALT_INV_Add10~17_sumout\,
	datad => \inst|ALT_INV_Add10~1_sumout\,
	datae => \inst|ALT_INV_Add10~9_sumout\,
	dataf => \inst|ALT_INV_box2_on~2_combout\,
	combout => \inst|box2_on~3_combout\);

-- Location: LABCELL_X44_Y4_N0
\inst|Add8~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add8~30_cout\ = CARRY(( \inst2|pixel_column\(3) ) + ( \inst2|pixel_column\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	datac => \inst2|ALT_INV_pixel_column\(2),
	cin => GND,
	cout => \inst|Add8~30_cout\);

-- Location: LABCELL_X44_Y4_N3
\inst|Add8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add8~26_cout\ = CARRY(( \inst2|pixel_column\(4) ) + ( VCC ) + ( \inst|Add8~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(4),
	cin => \inst|Add8~30_cout\,
	cout => \inst|Add8~26_cout\);

-- Location: LABCELL_X44_Y4_N6
\inst|Add8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add8~22_cout\ = CARRY(( \inst2|pixel_column\(5) ) + ( GND ) + ( \inst|Add8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(5),
	cin => \inst|Add8~26_cout\,
	cout => \inst|Add8~22_cout\);

-- Location: LABCELL_X44_Y4_N9
\inst|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add8~13_sumout\ = SUM(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst|Add8~22_cout\ ))
-- \inst|Add8~14\ = CARRY(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst|Add8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(6),
	cin => \inst|Add8~22_cout\,
	sumout => \inst|Add8~13_sumout\,
	cout => \inst|Add8~14\);

-- Location: LABCELL_X44_Y4_N12
\inst|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add8~17_sumout\ = SUM(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst|Add8~14\ ))
-- \inst|Add8~18\ = CARRY(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(7),
	cin => \inst|Add8~14\,
	sumout => \inst|Add8~17_sumout\,
	cout => \inst|Add8~18\);

-- Location: LABCELL_X44_Y4_N15
\inst|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add8~9_sumout\ = SUM(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst|Add8~18\ ))
-- \inst|Add8~10\ = CARRY(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(8),
	cin => \inst|Add8~18\,
	sumout => \inst|Add8~9_sumout\,
	cout => \inst|Add8~10\);

-- Location: LABCELL_X44_Y4_N18
\inst|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add8~1_sumout\ = SUM(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst|Add8~10\ ))
-- \inst|Add8~2\ = CARRY(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(9),
	cin => \inst|Add8~10\,
	sumout => \inst|Add8~1_sumout\,
	cout => \inst|Add8~2\);

-- Location: LABCELL_X44_Y4_N21
\inst|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add8~5_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add8~2\,
	sumout => \inst|Add8~5_sumout\);

-- Location: LABCELL_X47_Y4_N12
\inst|box2_on~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box2_on~5_combout\ = ( !\inst|Add8~5_sumout\ & ( \inst|Add8~13_sumout\ & ( (!\inst|Add8~1_sumout\ & !\inst|Add8~9_sumout\) ) ) ) # ( !\inst|Add8~5_sumout\ & ( !\inst|Add8~13_sumout\ & ( (!\inst|Add8~1_sumout\ & ((!\inst|Add8~17_sumout\) # 
-- (!\inst|Add8~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add8~17_sumout\,
	datab => \inst|ALT_INV_Add8~1_sumout\,
	datac => \inst|ALT_INV_Add8~9_sumout\,
	datae => \inst|ALT_INV_Add8~5_sumout\,
	dataf => \inst|ALT_INV_Add8~13_sumout\,
	combout => \inst|box2_on~5_combout\);

-- Location: LABCELL_X43_Y2_N45
\inst|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add10~21_sumout\ = SUM(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst|Add10~18\ ))
-- \inst|Add10~22\ = CARRY(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(8),
	cin => \inst|Add10~18\,
	sumout => \inst|Add10~21_sumout\,
	cout => \inst|Add10~22\);

-- Location: LABCELL_X43_Y2_N48
\inst|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add10~25_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add10~22\,
	sumout => \inst|Add10~25_sumout\);

-- Location: LABCELL_X43_Y4_N9
\inst|box2_on~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|box2_on~4_combout\ = ( !\inst|Add10~21_sumout\ & ( !\inst|Add10~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add10~25_sumout\,
	dataf => \inst|ALT_INV_Add10~21_sumout\,
	combout => \inst|box2_on~4_combout\);

-- Location: MLABCELL_X42_Y2_N0
\inst2|blue_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|blue_out~1_combout\ = ( \inst|box2_on~5_combout\ & ( \inst|box2_on~4_combout\ & ( \inst2|blue_out~0_combout\ ) ) ) # ( !\inst|box2_on~5_combout\ & ( \inst|box2_on~4_combout\ & ( (\inst2|blue_out~0_combout\ & (((!\inst|box2_on~8_combout\) # 
-- (!\inst|box2_on~3_combout\)) # (\inst|box2_on~1_combout\))) ) ) ) # ( \inst|box2_on~5_combout\ & ( !\inst|box2_on~4_combout\ & ( \inst2|blue_out~0_combout\ ) ) ) # ( !\inst|box2_on~5_combout\ & ( !\inst|box2_on~4_combout\ & ( (\inst2|blue_out~0_combout\ & 
-- ((!\inst|box2_on~8_combout\) # (\inst|box2_on~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100110011001100110011001100010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_box2_on~1_combout\,
	datab => \inst2|ALT_INV_blue_out~0_combout\,
	datac => \inst|ALT_INV_box2_on~8_combout\,
	datad => \inst|ALT_INV_box2_on~3_combout\,
	datae => \inst|ALT_INV_box2_on~5_combout\,
	dataf => \inst|ALT_INV_box2_on~4_combout\,
	combout => \inst2|blue_out~1_combout\);

-- Location: LABCELL_X43_Y4_N30
\inst|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~5_sumout\ = SUM(( \inst2|pixel_row\(3) ) + ( \inst2|pixel_row\(2) ) + ( !VCC ))
-- \inst|Add2~6\ = CARRY(( \inst2|pixel_row\(3) ) + ( \inst2|pixel_row\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(2),
	datac => \inst2|ALT_INV_pixel_row\(3),
	cin => GND,
	sumout => \inst|Add2~5_sumout\,
	cout => \inst|Add2~6\);

-- Location: LABCELL_X43_Y4_N33
\inst|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~1_sumout\ = SUM(( \inst2|pixel_row\(4) ) + ( GND ) + ( \inst|Add2~6\ ))
-- \inst|Add2~2\ = CARRY(( \inst2|pixel_row\(4) ) + ( GND ) + ( \inst|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(4),
	cin => \inst|Add2~6\,
	sumout => \inst|Add2~1_sumout\,
	cout => \inst|Add2~2\);

-- Location: LABCELL_X43_Y4_N36
\inst|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~17_sumout\ = SUM(( \inst2|pixel_row\(5) ) + ( GND ) + ( \inst|Add2~2\ ))
-- \inst|Add2~18\ = CARRY(( \inst2|pixel_row\(5) ) + ( GND ) + ( \inst|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(5),
	cin => \inst|Add2~2\,
	sumout => \inst|Add2~17_sumout\,
	cout => \inst|Add2~18\);

-- Location: LABCELL_X43_Y4_N39
\inst|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~13_sumout\ = SUM(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst|Add2~18\ ))
-- \inst|Add2~14\ = CARRY(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	cin => \inst|Add2~18\,
	sumout => \inst|Add2~13_sumout\,
	cout => \inst|Add2~14\);

-- Location: LABCELL_X43_Y4_N42
\inst|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~9_sumout\ = SUM(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst|Add2~14\ ))
-- \inst|Add2~10\ = CARRY(( \inst2|pixel_row\(7) ) + ( GND ) + ( \inst|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(7),
	cin => \inst|Add2~14\,
	sumout => \inst|Add2~9_sumout\,
	cout => \inst|Add2~10\);

-- Location: LABCELL_X43_Y3_N24
\inst|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_combout\ = ( \inst|Add2~17_sumout\ & ( \inst5|cursor_row\(6) & ( (!\inst5|cursor_row\(7) & (!\inst|Add2~13_sumout\ & !\inst|Add2~9_sumout\)) # (\inst5|cursor_row\(7) & ((!\inst|Add2~13_sumout\) # (!\inst|Add2~9_sumout\))) ) ) ) # ( 
-- !\inst|Add2~17_sumout\ & ( \inst5|cursor_row\(6) & ( (!\inst5|cursor_row\(7) & (!\inst|Add2~9_sumout\ & ((!\inst|Add2~13_sumout\) # (\inst5|cursor_row\(5))))) # (\inst5|cursor_row\(7) & (((!\inst|Add2~13_sumout\) # (!\inst|Add2~9_sumout\)) # 
-- (\inst5|cursor_row\(5)))) ) ) ) # ( \inst|Add2~17_sumout\ & ( !\inst5|cursor_row\(6) & ( (\inst5|cursor_row\(7) & !\inst|Add2~9_sumout\) ) ) ) # ( !\inst|Add2~17_sumout\ & ( !\inst5|cursor_row\(6) & ( (!\inst5|cursor_row\(7) & (\inst5|cursor_row\(5) & 
-- (!\inst|Add2~13_sumout\ & !\inst|Add2~9_sumout\))) # (\inst5|cursor_row\(7) & ((!\inst|Add2~9_sumout\) # ((\inst5|cursor_row\(5) & !\inst|Add2~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010100010000010101010000000011110111010100011111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_cursor_row\(5),
	datac => \inst|ALT_INV_Add2~13_sumout\,
	datad => \inst|ALT_INV_Add2~9_sumout\,
	datae => \inst|ALT_INV_Add2~17_sumout\,
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst|LessThan2~3_combout\);

-- Location: MLABCELL_X42_Y2_N30
\inst|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~13_sumout\ = SUM(( \inst5|cursor_row\(3) ) + ( \inst5|cursor_row\(2) ) + ( !VCC ))
-- \inst|Add3~14\ = CARRY(( \inst5|cursor_row\(3) ) + ( \inst5|cursor_row\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(2),
	datad => \inst5|ALT_INV_cursor_row\(3),
	cin => GND,
	sumout => \inst|Add3~13_sumout\,
	cout => \inst|Add3~14\);

-- Location: MLABCELL_X42_Y2_N33
\inst|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~9_sumout\ = SUM(( \inst5|cursor_row\(4) ) + ( GND ) + ( \inst|Add3~14\ ))
-- \inst|Add3~10\ = CARRY(( \inst5|cursor_row\(4) ) + ( GND ) + ( \inst|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_cursor_row\(4),
	cin => \inst|Add3~14\,
	sumout => \inst|Add3~9_sumout\,
	cout => \inst|Add3~10\);

-- Location: MLABCELL_X42_Y2_N36
\inst|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~25_sumout\ = SUM(( \inst5|cursor_row\(5) ) + ( GND ) + ( \inst|Add3~10\ ))
-- \inst|Add3~26\ = CARRY(( \inst5|cursor_row\(5) ) + ( GND ) + ( \inst|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(5),
	cin => \inst|Add3~10\,
	sumout => \inst|Add3~25_sumout\,
	cout => \inst|Add3~26\);

-- Location: MLABCELL_X42_Y2_N39
\inst|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~21_sumout\ = SUM(( \inst5|cursor_row\(6) ) + ( GND ) + ( \inst|Add3~26\ ))
-- \inst|Add3~22\ = CARRY(( \inst5|cursor_row\(6) ) + ( GND ) + ( \inst|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(6),
	cin => \inst|Add3~26\,
	sumout => \inst|Add3~21_sumout\,
	cout => \inst|Add3~22\);

-- Location: MLABCELL_X42_Y2_N42
\inst|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~17_sumout\ = SUM(( \inst5|cursor_row\(7) ) + ( GND ) + ( \inst|Add3~22\ ))
-- \inst|Add3~18\ = CARRY(( \inst5|cursor_row\(7) ) + ( GND ) + ( \inst|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(7),
	cin => \inst|Add3~22\,
	sumout => \inst|Add3~17_sumout\,
	cout => \inst|Add3~18\);

-- Location: MLABCELL_X42_Y2_N45
\inst|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~1_sumout\ = SUM(( \inst5|cursor_row\(8) ) + ( GND ) + ( \inst|Add3~18\ ))
-- \inst|Add3~2\ = CARRY(( \inst5|cursor_row\(8) ) + ( GND ) + ( \inst|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_cursor_row\(8),
	cin => \inst|Add3~18\,
	sumout => \inst|Add3~1_sumout\,
	cout => \inst|Add3~2\);

-- Location: MLABCELL_X42_Y2_N48
\inst|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~5_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add3~2\,
	sumout => \inst|Add3~5_sumout\);

-- Location: LABCELL_X43_Y4_N45
\inst|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~21_sumout\ = SUM(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst|Add2~10\ ))
-- \inst|Add2~22\ = CARRY(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(8),
	cin => \inst|Add2~10\,
	sumout => \inst|Add2~21_sumout\,
	cout => \inst|Add2~22\);

-- Location: LABCELL_X43_Y4_N48
\inst|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~25_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~22\,
	sumout => \inst|Add2~25_sumout\);

-- Location: LABCELL_X43_Y3_N48
\inst|ball_on~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~3_combout\ = ( !\inst|Add3~1_sumout\ & ( \inst|Add2~25_sumout\ & ( (!\inst|Add3~5_sumout\ & \inst2|pixel_row\(8)) ) ) ) # ( \inst|Add3~1_sumout\ & ( !\inst|Add2~25_sumout\ & ( (\inst5|cursor_row\(8) & !\inst|Add2~21_sumout\) ) ) ) # ( 
-- !\inst|Add3~1_sumout\ & ( !\inst|Add2~25_sumout\ & ( (!\inst|Add3~5_sumout\ & (((\inst5|cursor_row\(8) & !\inst|Add2~21_sumout\)) # (\inst2|pixel_row\(8)))) # (\inst|Add3~5_sumout\ & (\inst5|cursor_row\(8) & ((!\inst|Add2~21_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100001010001100110000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add3~5_sumout\,
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst2|ALT_INV_pixel_row\(8),
	datad => \inst|ALT_INV_Add2~21_sumout\,
	datae => \inst|ALT_INV_Add3~1_sumout\,
	dataf => \inst|ALT_INV_Add2~25_sumout\,
	combout => \inst|ball_on~3_combout\);

-- Location: LABCELL_X43_Y3_N39
\inst|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~4_combout\ = ( \inst5|cursor_row\(8) & ( (!\inst|Add2~25_sumout\ & \inst|Add2~21_sumout\) ) ) # ( !\inst5|cursor_row\(8) & ( (!\inst|Add2~25_sumout\ & !\inst|Add2~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add2~25_sumout\,
	datad => \inst|ALT_INV_Add2~21_sumout\,
	dataf => \inst5|ALT_INV_cursor_row\(8),
	combout => \inst|LessThan2~4_combout\);

-- Location: LABCELL_X43_Y3_N6
\inst|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~2_combout\ = ( \inst|Add2~17_sumout\ & ( \inst5|cursor_row\(6) & ( (\inst5|cursor_row\(5) & (\inst|Add2~13_sumout\ & (!\inst5|cursor_row\(7) $ (\inst|Add2~9_sumout\)))) ) ) ) # ( !\inst|Add2~17_sumout\ & ( \inst5|cursor_row\(6) & ( 
-- (!\inst5|cursor_row\(5) & (\inst|Add2~13_sumout\ & (!\inst5|cursor_row\(7) $ (\inst|Add2~9_sumout\)))) ) ) ) # ( \inst|Add2~17_sumout\ & ( !\inst5|cursor_row\(6) & ( (\inst5|cursor_row\(5) & (!\inst|Add2~13_sumout\ & (!\inst5|cursor_row\(7) $ 
-- (\inst|Add2~9_sumout\)))) ) ) ) # ( !\inst|Add2~17_sumout\ & ( !\inst5|cursor_row\(6) & ( (!\inst5|cursor_row\(5) & (!\inst|Add2~13_sumout\ & (!\inst5|cursor_row\(7) $ (\inst|Add2~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_cursor_row\(5),
	datac => \inst|ALT_INV_Add2~13_sumout\,
	datad => \inst|ALT_INV_Add2~9_sumout\,
	datae => \inst|ALT_INV_Add2~17_sumout\,
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst|LessThan2~2_combout\);

-- Location: LABCELL_X43_Y3_N12
\inst|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = ( \inst2|pixel_row\(1) & ( \inst5|cursor_row\(2) & ( ((\inst5|cursor_row\(0) & (\inst5|cursor_row\(1) & !\inst2|pixel_row\(0)))) # (\inst2|pixel_row\(2)) ) ) ) # ( !\inst2|pixel_row\(1) & ( \inst5|cursor_row\(2) & ( 
-- (((\inst5|cursor_row\(0) & !\inst2|pixel_row\(0))) # (\inst2|pixel_row\(2))) # (\inst5|cursor_row\(1)) ) ) ) # ( \inst2|pixel_row\(1) & ( !\inst5|cursor_row\(2) & ( (\inst5|cursor_row\(0) & (\inst5|cursor_row\(1) & (!\inst2|pixel_row\(0) & 
-- \inst2|pixel_row\(2)))) ) ) ) # ( !\inst2|pixel_row\(1) & ( !\inst5|cursor_row\(2) & ( (\inst2|pixel_row\(2) & (((\inst5|cursor_row\(0) & !\inst2|pixel_row\(0))) # (\inst5|cursor_row\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110011000000000001000001110011111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(0),
	datab => \inst5|ALT_INV_cursor_row\(1),
	datac => \inst2|ALT_INV_pixel_row\(0),
	datad => \inst2|ALT_INV_pixel_row\(2),
	datae => \inst2|ALT_INV_pixel_row\(1),
	dataf => \inst5|ALT_INV_cursor_row\(2),
	combout => \inst|LessThan2~0_combout\);

-- Location: LABCELL_X43_Y3_N18
\inst|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = ( \inst|LessThan2~0_combout\ & ( (!\inst5|cursor_row\(4) & (!\inst|Add2~1_sumout\ & ((!\inst|Add2~5_sumout\) # (\inst5|cursor_row\(3))))) # (\inst5|cursor_row\(4) & (((!\inst|Add2~1_sumout\) # (!\inst|Add2~5_sumout\)) # 
-- (\inst5|cursor_row\(3)))) ) ) # ( !\inst|LessThan2~0_combout\ & ( (!\inst5|cursor_row\(4) & (\inst5|cursor_row\(3) & (!\inst|Add2~1_sumout\ & !\inst|Add2~5_sumout\))) # (\inst5|cursor_row\(4) & ((!\inst|Add2~1_sumout\) # ((\inst5|cursor_row\(3) & 
-- !\inst|Add2~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100110000011100010011000011110011011100011111001101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(3),
	datab => \inst5|ALT_INV_cursor_row\(4),
	datac => \inst|ALT_INV_Add2~1_sumout\,
	datad => \inst|ALT_INV_Add2~5_sumout\,
	dataf => \inst|ALT_INV_LessThan2~0_combout\,
	combout => \inst|LessThan2~1_combout\);

-- Location: LABCELL_X43_Y3_N36
\inst|ball_on~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~4_combout\ = ( \inst|LessThan2~1_combout\ & ( (!\inst|ball_on~3_combout\ & ((!\inst|LessThan2~4_combout\) # ((!\inst|LessThan2~3_combout\ & !\inst|LessThan2~2_combout\)))) ) ) # ( !\inst|LessThan2~1_combout\ & ( (!\inst|ball_on~3_combout\ & 
-- ((!\inst|LessThan2~3_combout\) # (!\inst|LessThan2~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100011001000110000001100100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan2~3_combout\,
	datab => \inst|ALT_INV_ball_on~3_combout\,
	datac => \inst|ALT_INV_LessThan2~4_combout\,
	datad => \inst|ALT_INV_LessThan2~2_combout\,
	dataf => \inst|ALT_INV_LessThan2~1_combout\,
	combout => \inst|ball_on~4_combout\);

-- Location: LABCELL_X41_Y6_N0
\inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~5_sumout\ = SUM(( \inst5|cursor_column\(2) ) + ( \inst5|cursor_column\(3) ) + ( !VCC ))
-- \inst|Add1~6\ = CARRY(( \inst5|cursor_column\(2) ) + ( \inst5|cursor_column\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(3),
	datad => \inst5|ALT_INV_cursor_column\(2),
	cin => GND,
	sumout => \inst|Add1~5_sumout\,
	cout => \inst|Add1~6\);

-- Location: LABCELL_X41_Y6_N3
\inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~1_sumout\ = SUM(( \inst5|cursor_column\(4) ) + ( GND ) + ( \inst|Add1~6\ ))
-- \inst|Add1~2\ = CARRY(( \inst5|cursor_column\(4) ) + ( GND ) + ( \inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(4),
	cin => \inst|Add1~6\,
	sumout => \inst|Add1~1_sumout\,
	cout => \inst|Add1~2\);

-- Location: LABCELL_X41_Y6_N6
\inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~17_sumout\ = SUM(( \inst5|cursor_column\(5) ) + ( GND ) + ( \inst|Add1~2\ ))
-- \inst|Add1~18\ = CARRY(( \inst5|cursor_column\(5) ) + ( GND ) + ( \inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(5),
	cin => \inst|Add1~2\,
	sumout => \inst|Add1~17_sumout\,
	cout => \inst|Add1~18\);

-- Location: LABCELL_X41_Y6_N9
\inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~13_sumout\ = SUM(( \inst5|cursor_column\(6) ) + ( GND ) + ( \inst|Add1~18\ ))
-- \inst|Add1~14\ = CARRY(( \inst5|cursor_column\(6) ) + ( GND ) + ( \inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_column\(6),
	cin => \inst|Add1~18\,
	sumout => \inst|Add1~13_sumout\,
	cout => \inst|Add1~14\);

-- Location: LABCELL_X41_Y6_N12
\inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~9_sumout\ = SUM(( \inst5|cursor_column\(7) ) + ( GND ) + ( \inst|Add1~14\ ))
-- \inst|Add1~10\ = CARRY(( \inst5|cursor_column\(7) ) + ( GND ) + ( \inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(7),
	cin => \inst|Add1~14\,
	sumout => \inst|Add1~9_sumout\,
	cout => \inst|Add1~10\);

-- Location: LABCELL_X41_Y6_N45
\inst|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = ( \inst|Add1~17_sumout\ & ( \inst|Add1~9_sumout\ & ( (\inst2|pixel_column\(7) & (\inst2|pixel_column\(5) & (!\inst|Add1~13_sumout\ $ (\inst2|pixel_column\(6))))) ) ) ) # ( !\inst|Add1~17_sumout\ & ( \inst|Add1~9_sumout\ & ( 
-- (\inst2|pixel_column\(7) & (!\inst2|pixel_column\(5) & (!\inst|Add1~13_sumout\ $ (\inst2|pixel_column\(6))))) ) ) ) # ( \inst|Add1~17_sumout\ & ( !\inst|Add1~9_sumout\ & ( (!\inst2|pixel_column\(7) & (\inst2|pixel_column\(5) & (!\inst|Add1~13_sumout\ $ 
-- (\inst2|pixel_column\(6))))) ) ) ) # ( !\inst|Add1~17_sumout\ & ( !\inst|Add1~9_sumout\ & ( (!\inst2|pixel_column\(7) & (!\inst2|pixel_column\(5) & (!\inst|Add1~13_sumout\ $ (\inst2|pixel_column\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	datab => \inst|ALT_INV_Add1~13_sumout\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst2|ALT_INV_pixel_column\(5),
	datae => \inst|ALT_INV_Add1~17_sumout\,
	dataf => \inst|ALT_INV_Add1~9_sumout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LABCELL_X41_Y6_N15
\inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~29_sumout\ = SUM(( \inst5|cursor_column\(8) ) + ( GND ) + ( \inst|Add1~10\ ))
-- \inst|Add1~30\ = CARRY(( \inst5|cursor_column\(8) ) + ( GND ) + ( \inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(8),
	cin => \inst|Add1~10\,
	sumout => \inst|Add1~29_sumout\,
	cout => \inst|Add1~30\);

-- Location: LABCELL_X41_Y6_N18
\inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~21_sumout\ = SUM(( \inst5|cursor_column\(9) ) + ( GND ) + ( \inst|Add1~30\ ))
-- \inst|Add1~22\ = CARRY(( \inst5|cursor_column\(9) ) + ( GND ) + ( \inst|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_cursor_column\(9),
	cin => \inst|Add1~30\,
	sumout => \inst|Add1~21_sumout\,
	cout => \inst|Add1~22\);

-- Location: LABCELL_X41_Y6_N21
\inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~25_sumout\ = SUM(( GND ) + ( GND ) + ( \inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add1~22\,
	sumout => \inst|Add1~25_sumout\);

-- Location: LABCELL_X41_Y6_N54
\inst|ball_on~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~5_combout\ = ( \inst|Add1~29_sumout\ & ( (\inst2|pixel_column\(9) & (!\inst|Add1~21_sumout\ & !\inst|Add1~25_sumout\)) ) ) # ( !\inst|Add1~29_sumout\ & ( (!\inst|Add1~25_sumout\ & ((!\inst2|pixel_column\(9) & (!\inst|Add1~21_sumout\ & 
-- \inst2|pixel_column\(8))) # (\inst2|pixel_column\(9) & ((!\inst|Add1~21_sumout\) # (\inst2|pixel_column\(8)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011010000010000001101000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(9),
	datab => \inst|ALT_INV_Add1~21_sumout\,
	datac => \inst|ALT_INV_Add1~25_sumout\,
	datad => \inst2|ALT_INV_pixel_column\(8),
	dataf => \inst|ALT_INV_Add1~29_sumout\,
	combout => \inst|ball_on~5_combout\);

-- Location: LABCELL_X41_Y6_N57
\inst|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = ( !\inst|Add1~25_sumout\ & ( (!\inst2|pixel_column\(9) & (!\inst|Add1~21_sumout\ & (!\inst2|pixel_column\(8) $ (\inst|Add1~29_sumout\)))) # (\inst2|pixel_column\(9) & (\inst|Add1~21_sumout\ & (!\inst2|pixel_column\(8) $ 
-- (\inst|Add1~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001100100000000100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(9),
	datab => \inst|ALT_INV_Add1~21_sumout\,
	datac => \inst2|ALT_INV_pixel_column\(8),
	datad => \inst|ALT_INV_Add1~29_sumout\,
	dataf => \inst|ALT_INV_Add1~25_sumout\,
	combout => \inst|LessThan1~4_combout\);

-- Location: LABCELL_X41_Y6_N48
\inst|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = ( \inst|Add1~9_sumout\ & ( \inst2|pixel_column\(7) & ( (!\inst|Add1~13_sumout\ & (((!\inst|Add1~17_sumout\ & \inst2|pixel_column\(5))) # (\inst2|pixel_column\(6)))) # (\inst|Add1~13_sumout\ & (!\inst|Add1~17_sumout\ & 
-- (\inst2|pixel_column\(5) & \inst2|pixel_column\(6)))) ) ) ) # ( !\inst|Add1~9_sumout\ & ( \inst2|pixel_column\(7) ) ) # ( !\inst|Add1~9_sumout\ & ( !\inst2|pixel_column\(7) & ( (!\inst|Add1~13_sumout\ & (((!\inst|Add1~17_sumout\ & 
-- \inst2|pixel_column\(5))) # (\inst2|pixel_column\(6)))) # (\inst|Add1~13_sumout\ & (!\inst|Add1~17_sumout\ & (\inst2|pixel_column\(5) & \inst2|pixel_column\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011001110000000000000000011111111111111110000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~17_sumout\,
	datab => \inst|ALT_INV_Add1~13_sumout\,
	datac => \inst2|ALT_INV_pixel_column\(5),
	datad => \inst2|ALT_INV_pixel_column\(6),
	datae => \inst|ALT_INV_Add1~9_sumout\,
	dataf => \inst2|ALT_INV_pixel_column\(7),
	combout => \inst|LessThan1~3_combout\);

-- Location: LABCELL_X40_Y3_N18
\inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = ( \inst5|cursor_column\(0) & ( \inst5|cursor_column\(2) & ( ((!\inst5|cursor_column\(1) & \inst2|pixel_column\(1))) # (\inst2|pixel_column\(2)) ) ) ) # ( !\inst5|cursor_column\(0) & ( \inst5|cursor_column\(2) & ( 
-- ((!\inst2|pixel_column\(0) & (!\inst5|cursor_column\(1) & \inst2|pixel_column\(1))) # (\inst2|pixel_column\(0) & ((!\inst5|cursor_column\(1)) # (\inst2|pixel_column\(1))))) # (\inst2|pixel_column\(2)) ) ) ) # ( \inst5|cursor_column\(0) & ( 
-- !\inst5|cursor_column\(2) & ( (!\inst5|cursor_column\(1) & (\inst2|pixel_column\(2) & \inst2|pixel_column\(1))) ) ) ) # ( !\inst5|cursor_column\(0) & ( !\inst5|cursor_column\(2) & ( (\inst2|pixel_column\(2) & ((!\inst2|pixel_column\(0) & 
-- (!\inst5|cursor_column\(1) & \inst2|pixel_column\(1))) # (\inst2|pixel_column\(0) & ((!\inst5|cursor_column\(1)) # (\inst2|pixel_column\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001101000000000000110001001111110111110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(0),
	datab => \inst5|ALT_INV_cursor_column\(1),
	datac => \inst2|ALT_INV_pixel_column\(2),
	datad => \inst2|ALT_INV_pixel_column\(1),
	datae => \inst5|ALT_INV_cursor_column\(0),
	dataf => \inst5|ALT_INV_cursor_column\(2),
	combout => \inst|LessThan1~0_combout\);

-- Location: LABCELL_X40_Y3_N45
\inst|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = ( \inst|Add1~1_sumout\ & ( (\inst2|pixel_column\(4) & ((!\inst|LessThan1~0_combout\ & (\inst2|pixel_column\(3) & !\inst|Add1~5_sumout\)) # (\inst|LessThan1~0_combout\ & ((!\inst|Add1~5_sumout\) # (\inst2|pixel_column\(3)))))) 
-- ) ) # ( !\inst|Add1~1_sumout\ & ( ((!\inst|LessThan1~0_combout\ & (\inst2|pixel_column\(3) & !\inst|Add1~5_sumout\)) # (\inst|LessThan1~0_combout\ & ((!\inst|Add1~5_sumout\) # (\inst2|pixel_column\(3))))) # (\inst2|pixel_column\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000111111111011100011111111100000000011100010000000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan1~0_combout\,
	datab => \inst2|ALT_INV_pixel_column\(3),
	datac => \inst|ALT_INV_Add1~5_sumout\,
	datad => \inst2|ALT_INV_pixel_column\(4),
	dataf => \inst|ALT_INV_Add1~1_sumout\,
	combout => \inst|LessThan1~1_combout\);

-- Location: LABCELL_X41_Y6_N24
\inst|ball_on~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ball_on~6_combout\ = ( \inst|LessThan1~3_combout\ & ( \inst|LessThan1~1_combout\ & ( (!\inst|ball_on~5_combout\ & !\inst|LessThan1~4_combout\) ) ) ) # ( !\inst|LessThan1~3_combout\ & ( \inst|LessThan1~1_combout\ & ( (!\inst|ball_on~5_combout\ & 
-- ((!\inst|LessThan1~2_combout\) # (!\inst|LessThan1~4_combout\))) ) ) ) # ( \inst|LessThan1~3_combout\ & ( !\inst|LessThan1~1_combout\ & ( (!\inst|ball_on~5_combout\ & !\inst|LessThan1~4_combout\) ) ) ) # ( !\inst|LessThan1~3_combout\ & ( 
-- !\inst|LessThan1~1_combout\ & ( !\inst|ball_on~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000000000011110000110000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_LessThan1~2_combout\,
	datac => \inst|ALT_INV_ball_on~5_combout\,
	datad => \inst|ALT_INV_LessThan1~4_combout\,
	datae => \inst|ALT_INV_LessThan1~3_combout\,
	dataf => \inst|ALT_INV_LessThan1~1_combout\,
	combout => \inst|ball_on~6_combout\);

-- Location: MLABCELL_X42_Y2_N24
\inst|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~2_combout\ = ( \inst|Add3~21_sumout\ & ( \inst|Add3~17_sumout\ & ( (\inst2|pixel_row\(6) & (\inst2|pixel_row\(7) & (!\inst|Add3~25_sumout\ $ (\inst2|pixel_row\(5))))) ) ) ) # ( !\inst|Add3~21_sumout\ & ( \inst|Add3~17_sumout\ & ( 
-- (!\inst2|pixel_row\(6) & (\inst2|pixel_row\(7) & (!\inst|Add3~25_sumout\ $ (\inst2|pixel_row\(5))))) ) ) ) # ( \inst|Add3~21_sumout\ & ( !\inst|Add3~17_sumout\ & ( (\inst2|pixel_row\(6) & (!\inst2|pixel_row\(7) & (!\inst|Add3~25_sumout\ $ 
-- (\inst2|pixel_row\(5))))) ) ) ) # ( !\inst|Add3~21_sumout\ & ( !\inst|Add3~17_sumout\ & ( (!\inst2|pixel_row\(6) & (!\inst2|pixel_row\(7) & (!\inst|Add3~25_sumout\ $ (\inst2|pixel_row\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	datab => \inst|ALT_INV_Add3~25_sumout\,
	datac => \inst2|ALT_INV_pixel_row\(7),
	datad => \inst2|ALT_INV_pixel_row\(5),
	datae => \inst|ALT_INV_Add3~21_sumout\,
	dataf => \inst|ALT_INV_Add3~17_sumout\,
	combout => \inst|LessThan3~2_combout\);

-- Location: LABCELL_X39_Y3_N0
\inst|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = ( \inst2|pixel_row\(1) & ( \inst5|cursor_row\(1) & ( (!\inst5|cursor_row\(2) & (!\inst5|cursor_row\(0) & (\inst2|pixel_row\(2) & \inst2|pixel_row\(0)))) # (\inst5|cursor_row\(2) & (((!\inst5|cursor_row\(0) & 
-- \inst2|pixel_row\(0))) # (\inst2|pixel_row\(2)))) ) ) ) # ( !\inst2|pixel_row\(1) & ( \inst5|cursor_row\(1) & ( (\inst5|cursor_row\(2) & \inst2|pixel_row\(2)) ) ) ) # ( \inst2|pixel_row\(1) & ( !\inst5|cursor_row\(1) & ( (\inst2|pixel_row\(2)) # 
-- (\inst5|cursor_row\(2)) ) ) ) # ( !\inst2|pixel_row\(1) & ( !\inst5|cursor_row\(1) & ( (!\inst5|cursor_row\(2) & (!\inst5|cursor_row\(0) & (\inst2|pixel_row\(2) & \inst2|pixel_row\(0)))) # (\inst5|cursor_row\(2) & (((!\inst5|cursor_row\(0) & 
-- \inst2|pixel_row\(0))) # (\inst2|pixel_row\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101001101010111110101111100000101000001010000010101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(2),
	datab => \inst5|ALT_INV_cursor_row\(0),
	datac => \inst2|ALT_INV_pixel_row\(2),
	datad => \inst2|ALT_INV_pixel_row\(0),
	datae => \inst2|ALT_INV_pixel_row\(1),
	dataf => \inst5|ALT_INV_cursor_row\(1),
	combout => \inst|LessThan3~0_combout\);

-- Location: LABCELL_X39_Y5_N0
\inst|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_combout\ = ( \inst|Add3~9_sumout\ & ( (\inst2|pixel_row\(4) & ((!\inst|Add3~13_sumout\ & ((\inst|LessThan3~0_combout\) # (\inst2|pixel_row\(3)))) # (\inst|Add3~13_sumout\ & (\inst2|pixel_row\(3) & \inst|LessThan3~0_combout\)))) ) ) # ( 
-- !\inst|Add3~9_sumout\ & ( ((!\inst|Add3~13_sumout\ & ((\inst|LessThan3~0_combout\) # (\inst2|pixel_row\(3)))) # (\inst|Add3~13_sumout\ & (\inst2|pixel_row\(3) & \inst|LessThan3~0_combout\))) # (\inst2|pixel_row\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101111111111001010111111111100000000001010110000000000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add3~13_sumout\,
	datab => \inst2|ALT_INV_pixel_row\(3),
	datac => \inst|ALT_INV_LessThan3~0_combout\,
	datad => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst|ALT_INV_Add3~9_sumout\,
	combout => \inst|LessThan3~1_combout\);

-- Location: MLABCELL_X42_Y2_N6
\inst|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_combout\ = ( \inst|Add3~21_sumout\ & ( \inst|Add3~17_sumout\ & ( (\inst2|pixel_row\(7) & (!\inst|Add3~25_sumout\ & (\inst2|pixel_row\(6) & \inst2|pixel_row\(5)))) ) ) ) # ( !\inst|Add3~21_sumout\ & ( \inst|Add3~17_sumout\ & ( 
-- (\inst2|pixel_row\(7) & (((!\inst|Add3~25_sumout\ & \inst2|pixel_row\(5))) # (\inst2|pixel_row\(6)))) ) ) ) # ( \inst|Add3~21_sumout\ & ( !\inst|Add3~17_sumout\ & ( ((!\inst|Add3~25_sumout\ & (\inst2|pixel_row\(6) & \inst2|pixel_row\(5)))) # 
-- (\inst2|pixel_row\(7)) ) ) ) # ( !\inst|Add3~21_sumout\ & ( !\inst|Add3~17_sumout\ & ( (((!\inst|Add3~25_sumout\ & \inst2|pixel_row\(5))) # (\inst2|pixel_row\(6))) # (\inst2|pixel_row\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111011111010101010101110100000101010001010000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(7),
	datab => \inst|ALT_INV_Add3~25_sumout\,
	datac => \inst2|ALT_INV_pixel_row\(6),
	datad => \inst2|ALT_INV_pixel_row\(5),
	datae => \inst|ALT_INV_Add3~21_sumout\,
	dataf => \inst|ALT_INV_Add3~17_sumout\,
	combout => \inst|LessThan3~3_combout\);

-- Location: LABCELL_X41_Y6_N36
\inst|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan3~4_combout\ = ( !\inst|Add3~5_sumout\ & ( \inst|LessThan3~3_combout\ & ( !\inst|Add3~1_sumout\ $ (\inst2|pixel_row\(8)) ) ) ) # ( !\inst|Add3~5_sumout\ & ( !\inst|LessThan3~3_combout\ & ( (\inst|LessThan3~2_combout\ & 
-- (\inst|LessThan3~1_combout\ & (!\inst|Add3~1_sumout\ $ (\inst2|pixel_row\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001000000000000000011110000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan3~2_combout\,
	datab => \inst|ALT_INV_LessThan3~1_combout\,
	datac => \inst|ALT_INV_Add3~1_sumout\,
	datad => \inst2|ALT_INV_pixel_row\(8),
	datae => \inst|ALT_INV_Add3~5_sumout\,
	dataf => \inst|ALT_INV_LessThan3~3_combout\,
	combout => \inst|LessThan3~4_combout\);

-- Location: LABCELL_X41_Y6_N30
\inst2|blue_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|blue_out~3_combout\ = ( \inst|ball_on~6_combout\ & ( \inst|LessThan3~4_combout\ & ( (!\inst2|blue_out~2_combout\ & \inst2|blue_out~1_combout\) ) ) ) # ( !\inst|ball_on~6_combout\ & ( \inst|LessThan3~4_combout\ & ( (!\inst2|blue_out~2_combout\ & 
-- \inst2|blue_out~1_combout\) ) ) ) # ( \inst|ball_on~6_combout\ & ( !\inst|LessThan3~4_combout\ & ( (!\inst2|blue_out~2_combout\ & (\inst2|blue_out~1_combout\ & ((!\inst|ball_on~4_combout\) # (\inst|ball_on~2_combout\)))) ) ) ) # ( 
-- !\inst|ball_on~6_combout\ & ( !\inst|LessThan3~4_combout\ & ( (!\inst2|blue_out~2_combout\ & \inst2|blue_out~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_blue_out~2_combout\,
	datab => \inst|ALT_INV_ball_on~2_combout\,
	datac => \inst2|ALT_INV_blue_out~1_combout\,
	datad => \inst|ALT_INV_ball_on~4_combout\,
	datae => \inst|ALT_INV_ball_on~6_combout\,
	dataf => \inst|ALT_INV_LessThan3~4_combout\,
	combout => \inst2|blue_out~3_combout\);

-- Location: FF_X41_Y6_N25
\inst2|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|blue_out~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|blue_out~q\);

-- Location: FF_X41_Y6_N32
\inst2|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|blue_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|green_out~q\);

-- Location: IOIBUF_X11_Y0_N35
\key[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\key[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\sw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


