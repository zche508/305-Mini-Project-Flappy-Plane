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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "05/07/2024 17:08:05"

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

ENTITY 	toplevel IS
    PORT (
	VGA_VS : OUT std_logic;
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_B : OUT std_logic_vector(3 DOWNTO 3);
	VGA_G : OUT std_logic_vector(3 DOWNTO 3);
	VGA_R : OUT std_logic_vector(3 DOWNTO 3)
	);
END toplevel;

-- Design Ports Information
-- VGA_VS	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_HS	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[3]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[3]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 3);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN0\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \inst2|Add1~33_sumout\ : std_logic;
SIGNAL \inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst2|Add0~22\ : std_logic;
SIGNAL \inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst2|Add0~26\ : std_logic;
SIGNAL \inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst2|Add0~14\ : std_logic;
SIGNAL \inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|Add0~18\ : std_logic;
SIGNAL \inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst2|Add0~6\ : std_logic;
SIGNAL \inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|Add0~2\ : std_logic;
SIGNAL \inst2|Add0~38\ : std_logic;
SIGNAL \inst2|Add0~33_sumout\ : std_logic;
SIGNAL \inst2|h_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add0~34\ : std_logic;
SIGNAL \inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~37_sumout\ : std_logic;
SIGNAL \inst2|h_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~6\ : std_logic;
SIGNAL \inst2|Add1~1_sumout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|h_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|v_count[9]~0_combout\ : std_logic;
SIGNAL \inst2|Add1~2\ : std_logic;
SIGNAL \inst2|Add1~29_sumout\ : std_logic;
SIGNAL \inst2|Add1~30\ : std_logic;
SIGNAL \inst2|Add1~21_sumout\ : std_logic;
SIGNAL \inst2|Add1~22\ : std_logic;
SIGNAL \inst2|Add1~17_sumout\ : std_logic;
SIGNAL \inst2|Add1~18\ : std_logic;
SIGNAL \inst2|Add1~13_sumout\ : std_logic;
SIGNAL \inst2|Add1~14\ : std_logic;
SIGNAL \inst2|Add1~9_sumout\ : std_logic;
SIGNAL \inst2|v_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|v_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst2|h_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~10\ : std_logic;
SIGNAL \inst2|Add1~25_sumout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|process_0~7_combout\ : std_logic;
SIGNAL \inst2|Add1~34\ : std_logic;
SIGNAL \inst2|Add1~37_sumout\ : std_logic;
SIGNAL \inst2|Add1~38\ : std_logic;
SIGNAL \inst2|Add1~5_sumout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|vert_sync~q\ : std_logic;
SIGNAL \inst2|vert_sync_out~q\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|process_0~8_combout\ : std_logic;
SIGNAL \inst2|horiz_sync~q\ : std_logic;
SIGNAL \inst2|horiz_sync_out~q\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|video_on_v~feeder_combout\ : std_logic;
SIGNAL \inst2|video_on_v~q\ : std_logic;
SIGNAL \inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \inst2|video_on_h~q\ : std_logic;
SIGNAL \inst2|red_out~0_combout\ : std_logic;
SIGNAL \inst3|Add5~1_sumout\ : std_logic;
SIGNAL \inst2|pixel_row[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ball_y_motion[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add5~2\ : std_logic;
SIGNAL \inst3|Add5~10\ : std_logic;
SIGNAL \inst3|Add5~5_sumout\ : std_logic;
SIGNAL \inst3|Add5~6\ : std_logic;
SIGNAL \inst3|Add5~21_sumout\ : std_logic;
SIGNAL \inst3|Add5~22\ : std_logic;
SIGNAL \inst3|Add5~17_sumout\ : std_logic;
SIGNAL \inst3|Add5~18\ : std_logic;
SIGNAL \inst3|Add5~29_sumout\ : std_logic;
SIGNAL \inst3|Add5~30\ : std_logic;
SIGNAL \inst3|Add5~25_sumout\ : std_logic;
SIGNAL \inst3|Add5~26\ : std_logic;
SIGNAL \inst3|Add5~13_sumout\ : std_logic;
SIGNAL \inst3|Add5~14\ : std_logic;
SIGNAL \inst3|Add5~33_sumout\ : std_logic;
SIGNAL \inst3|ball_y_pos[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ball_y_pos[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ball_y_motion[2]~0_combout\ : std_logic;
SIGNAL \inst3|ball_y_motion[2]~1_combout\ : std_logic;
SIGNAL \inst3|Add5~9_sumout\ : std_logic;
SIGNAL \inst3|ball_on~5_combout\ : std_logic;
SIGNAL \inst3|ball_y_pos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ball_on~6_combout\ : std_logic;
SIGNAL \inst2|pixel_row[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|pixel_row[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add2~0_combout\ : std_logic;
SIGNAL \inst3|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|Add2~1_combout\ : std_logic;
SIGNAL \inst3|ball_y_pos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ball_on~8_combout\ : std_logic;
SIGNAL \inst3|ball_on~9_combout\ : std_logic;
SIGNAL \inst3|ball_on~3_combout\ : std_logic;
SIGNAL \inst3|ball_on~2_combout\ : std_logic;
SIGNAL \inst3|ball_on~4_combout\ : std_logic;
SIGNAL \inst3|ball_on~7_combout\ : std_logic;
SIGNAL \inst3|ball_on~10_combout\ : std_logic;
SIGNAL \inst3|Add3~6\ : std_logic;
SIGNAL \inst3|Add3~18\ : std_logic;
SIGNAL \inst3|Add3~13_sumout\ : std_logic;
SIGNAL \inst3|Add3~17_sumout\ : std_logic;
SIGNAL \inst3|Add3~14\ : std_logic;
SIGNAL \inst3|Add3~9_sumout\ : std_logic;
SIGNAL \inst3|LessThan3~5_combout\ : std_logic;
SIGNAL \inst3|LessThan3~1_combout\ : std_logic;
SIGNAL \inst3|LessThan3~2_combout\ : std_logic;
SIGNAL \inst3|LessThan3~0_combout\ : std_logic;
SIGNAL \inst3|Add3~5_sumout\ : std_logic;
SIGNAL \inst3|LessThan3~3_combout\ : std_logic;
SIGNAL \inst3|LessThan3~4_combout\ : std_logic;
SIGNAL \inst3|Add3~10\ : std_logic;
SIGNAL \inst3|Add3~1_sumout\ : std_logic;
SIGNAL \inst3|LessThan3~6_combout\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst3|ball_on~0_combout\ : std_logic;
SIGNAL \inst3|Add0~2\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ball_on~1_combout\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~22\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst3|Add3~2\ : std_logic;
SIGNAL \inst3|Add3~21_sumout\ : std_logic;
SIGNAL \inst3|ball_on~11_combout\ : std_logic;
SIGNAL \inst2|green_out~0_combout\ : std_logic;
SIGNAL \inst2|blue_out~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst2|green_out~1_combout\ : std_logic;
SIGNAL \inst2|green_out~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst2|red_out~1_combout\ : std_logic;
SIGNAL \inst2|red_out~q\ : std_logic;
SIGNAL \inst1|pll2_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ball_y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_ball_y_motion[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_row[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_row[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_row[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_v_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_v_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_motion[2]~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_motion\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \inst2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~11_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~10_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~9_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos\ : std_logic_vector(9 DOWNTO 1);
SIGNAL \inst3|ALT_INV_ball_on~8_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~7_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_ball_on~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_red_out~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_video_on_h~q\ : std_logic;
SIGNAL \inst2|ALT_INV_video_on_v~q\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add3~1_sumout\ : std_logic;

BEGIN

VGA_VS <= ww_VGA_VS;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
VGA_HS <= ww_VGA_HS;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
VGA_R <= ww_VGA_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN0\ <= \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(0);

\inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\inst3|ALT_INV_ball_y_motion[2]~DUPLICATE_q\ <= NOT \inst3|ball_y_motion[2]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[9]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[9]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[7]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[7]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[4]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[5]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[5]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_row[7]~DUPLICATE_q\ <= NOT \inst2|pixel_row[7]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_row[2]~DUPLICATE_q\ <= NOT \inst2|pixel_row[2]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_row[8]~DUPLICATE_q\ <= NOT \inst2|pixel_row[8]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[7]~DUPLICATE_q\ <= NOT \inst2|h_count[7]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[9]~DUPLICATE_q\ <= NOT \inst2|h_count[9]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[0]~DUPLICATE_q\ <= NOT \inst2|h_count[0]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[4]~DUPLICATE_q\ <= NOT \inst2|h_count[4]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[3]~DUPLICATE_q\ <= NOT \inst2|h_count[3]~DUPLICATE_q\;
\inst2|ALT_INV_v_count[7]~DUPLICATE_q\ <= NOT \inst2|v_count[7]~DUPLICATE_q\;
\inst2|ALT_INV_v_count[8]~DUPLICATE_q\ <= NOT \inst2|v_count[8]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\inst3|ALT_INV_ball_y_motion[2]~0_combout\ <= NOT \inst3|ball_y_motion[2]~0_combout\;
\inst3|ALT_INV_ball_y_motion\(2) <= NOT \inst3|ball_y_motion\(2);
\inst2|ALT_INV_Equal1~0_combout\ <= NOT \inst2|Equal1~0_combout\;
\inst2|ALT_INV_Equal0~0_combout\ <= NOT \inst2|Equal0~0_combout\;
\inst2|ALT_INV_process_0~6_combout\ <= NOT \inst2|process_0~6_combout\;
\inst2|ALT_INV_process_0~5_combout\ <= NOT \inst2|process_0~5_combout\;
\inst2|ALT_INV_process_0~4_combout\ <= NOT \inst2|process_0~4_combout\;
\inst2|ALT_INV_LessThan1~0_combout\ <= NOT \inst2|LessThan1~0_combout\;
\inst2|ALT_INV_LessThan7~1_combout\ <= NOT \inst2|LessThan7~1_combout\;
\inst2|ALT_INV_process_0~3_combout\ <= NOT \inst2|process_0~3_combout\;
\inst2|ALT_INV_process_0~2_combout\ <= NOT \inst2|process_0~2_combout\;
\inst2|ALT_INV_process_0~0_combout\ <= NOT \inst2|process_0~0_combout\;
\inst2|ALT_INV_LessThan7~0_combout\ <= NOT \inst2|LessThan7~0_combout\;
\inst3|ALT_INV_ball_on~11_combout\ <= NOT \inst3|ball_on~11_combout\;
\inst3|ALT_INV_ball_on~10_combout\ <= NOT \inst3|ball_on~10_combout\;
\inst3|ALT_INV_ball_on~9_combout\ <= NOT \inst3|ball_on~9_combout\;
\inst3|ALT_INV_ball_y_pos\(9) <= NOT \inst3|ball_y_pos\(9);
\inst3|ALT_INV_ball_on~8_combout\ <= NOT \inst3|ball_on~8_combout\;
\inst3|ALT_INV_ball_on~7_combout\ <= NOT \inst3|ball_on~7_combout\;
\inst3|ALT_INV_ball_y_pos\(6) <= NOT \inst3|ball_y_pos\(6);
\inst3|ALT_INV_ball_y_pos\(7) <= NOT \inst3|ball_y_pos\(7);
\inst3|ALT_INV_Add2~1_combout\ <= NOT \inst3|Add2~1_combout\;
\inst3|ALT_INV_ball_on~6_combout\ <= NOT \inst3|ball_on~6_combout\;
\inst3|ALT_INV_ball_on~5_combout\ <= NOT \inst3|ball_on~5_combout\;
\inst3|ALT_INV_ball_y_pos\(4) <= NOT \inst3|ball_y_pos\(4);
\inst3|ALT_INV_ball_y_pos\(5) <= NOT \inst3|ball_y_pos\(5);
\inst3|ALT_INV_LessThan2~0_combout\ <= NOT \inst3|LessThan2~0_combout\;
\inst3|ALT_INV_Add2~0_combout\ <= NOT \inst3|Add2~0_combout\;
\inst3|ALT_INV_ball_y_pos\(8) <= NOT \inst3|ball_y_pos\(8);
\inst3|ALT_INV_ball_on~4_combout\ <= NOT \inst3|ball_on~4_combout\;
\inst3|ALT_INV_ball_on~3_combout\ <= NOT \inst3|ball_on~3_combout\;
\inst2|ALT_INV_pixel_column\(5) <= NOT \inst2|pixel_column\(5);
\inst2|ALT_INV_pixel_column\(7) <= NOT \inst2|pixel_column\(7);
\inst2|ALT_INV_pixel_column\(8) <= NOT \inst2|pixel_column\(8);
\inst3|ALT_INV_ball_on~2_combout\ <= NOT \inst3|ball_on~2_combout\;
\inst2|ALT_INV_pixel_column\(0) <= NOT \inst2|pixel_column\(0);
\inst2|ALT_INV_pixel_column\(4) <= NOT \inst2|pixel_column\(4);
\inst2|ALT_INV_pixel_column\(6) <= NOT \inst2|pixel_column\(6);
\inst2|ALT_INV_pixel_column\(9) <= NOT \inst2|pixel_column\(9);
\inst3|ALT_INV_ball_on~1_combout\ <= NOT \inst3|ball_on~1_combout\;
\inst3|ALT_INV_ball_on~0_combout\ <= NOT \inst3|ball_on~0_combout\;
\inst2|ALT_INV_pixel_column\(2) <= NOT \inst2|pixel_column\(2);
\inst2|ALT_INV_pixel_column\(1) <= NOT \inst2|pixel_column\(1);
\inst2|ALT_INV_pixel_column\(3) <= NOT \inst2|pixel_column\(3);
\inst2|ALT_INV_red_out~0_combout\ <= NOT \inst2|red_out~0_combout\;
\inst2|ALT_INV_video_on_h~q\ <= NOT \inst2|video_on_h~q\;
\inst2|ALT_INV_video_on_v~q\ <= NOT \inst2|video_on_v~q\;
\inst3|ALT_INV_LessThan3~6_combout\ <= NOT \inst3|LessThan3~6_combout\;
\inst3|ALT_INV_LessThan3~5_combout\ <= NOT \inst3|LessThan3~5_combout\;
\inst3|ALT_INV_LessThan3~4_combout\ <= NOT \inst3|LessThan3~4_combout\;
\inst2|ALT_INV_pixel_row\(5) <= NOT \inst2|pixel_row\(5);
\inst2|ALT_INV_pixel_row\(6) <= NOT \inst2|pixel_row\(6);
\inst2|ALT_INV_pixel_row\(7) <= NOT \inst2|pixel_row\(7);
\inst3|ALT_INV_LessThan3~3_combout\ <= NOT \inst3|LessThan3~3_combout\;
\inst3|ALT_INV_LessThan3~2_combout\ <= NOT \inst3|LessThan3~2_combout\;
\inst3|ALT_INV_LessThan3~1_combout\ <= NOT \inst3|LessThan3~1_combout\;
\inst3|ALT_INV_ball_y_pos\(2) <= NOT \inst3|ball_y_pos\(2);
\inst2|ALT_INV_pixel_row\(2) <= NOT \inst2|pixel_row\(2);
\inst3|ALT_INV_ball_y_pos\(3) <= NOT \inst3|ball_y_pos\(3);
\inst2|ALT_INV_pixel_row\(3) <= NOT \inst2|pixel_row\(3);
\inst3|ALT_INV_LessThan3~0_combout\ <= NOT \inst3|LessThan3~0_combout\;
\inst2|ALT_INV_pixel_row\(0) <= NOT \inst2|pixel_row\(0);
\inst3|ALT_INV_ball_y_pos\(1) <= NOT \inst3|ball_y_pos\(1);
\inst2|ALT_INV_pixel_row\(1) <= NOT \inst2|pixel_row\(1);
\inst2|ALT_INV_pixel_row\(4) <= NOT \inst2|pixel_row\(4);
\inst2|ALT_INV_pixel_row\(8) <= NOT \inst2|pixel_row\(8);
\inst2|ALT_INV_h_count\(7) <= NOT \inst2|h_count\(7);
\inst2|ALT_INV_h_count\(8) <= NOT \inst2|h_count\(8);
\inst2|ALT_INV_h_count\(9) <= NOT \inst2|h_count\(9);
\inst2|ALT_INV_h_count\(1) <= NOT \inst2|h_count\(1);
\inst2|ALT_INV_h_count\(0) <= NOT \inst2|h_count\(0);
\inst2|ALT_INV_h_count\(4) <= NOT \inst2|h_count\(4);
\inst2|ALT_INV_h_count\(3) <= NOT \inst2|h_count\(3);
\inst2|ALT_INV_h_count\(2) <= NOT \inst2|h_count\(2);
\inst2|ALT_INV_h_count\(5) <= NOT \inst2|h_count\(5);
\inst2|ALT_INV_h_count\(6) <= NOT \inst2|h_count\(6);
\inst2|ALT_INV_v_count\(1) <= NOT \inst2|v_count\(1);
\inst2|ALT_INV_v_count\(0) <= NOT \inst2|v_count\(0);
\inst2|ALT_INV_v_count\(4) <= NOT \inst2|v_count\(4);
\inst2|ALT_INV_v_count\(9) <= NOT \inst2|v_count\(9);
\inst2|ALT_INV_v_count\(5) <= NOT \inst2|v_count\(5);
\inst2|ALT_INV_v_count\(6) <= NOT \inst2|v_count\(6);
\inst2|ALT_INV_v_count\(7) <= NOT \inst2|v_count\(7);
\inst2|ALT_INV_v_count\(8) <= NOT \inst2|v_count\(8);
\inst2|ALT_INV_v_count\(2) <= NOT \inst2|v_count\(2);
\inst2|ALT_INV_v_count\(3) <= NOT \inst2|v_count\(3);
\inst3|ALT_INV_Add3~21_sumout\ <= NOT \inst3|Add3~21_sumout\;
\inst3|ALT_INV_Add0~25_sumout\ <= NOT \inst3|Add0~25_sumout\;
\inst3|ALT_INV_Add0~21_sumout\ <= NOT \inst3|Add0~21_sumout\;
\inst3|ALT_INV_Add0~17_sumout\ <= NOT \inst3|Add0~17_sumout\;
\inst3|ALT_INV_Add0~13_sumout\ <= NOT \inst3|Add0~13_sumout\;
\inst3|ALT_INV_Add0~9_sumout\ <= NOT \inst3|Add0~9_sumout\;
\inst3|ALT_INV_Add0~5_sumout\ <= NOT \inst3|Add0~5_sumout\;
\inst3|ALT_INV_Add0~1_sumout\ <= NOT \inst3|Add0~1_sumout\;
\inst3|ALT_INV_Add3~17_sumout\ <= NOT \inst3|Add3~17_sumout\;
\inst3|ALT_INV_Add3~13_sumout\ <= NOT \inst3|Add3~13_sumout\;
\inst3|ALT_INV_Add3~9_sumout\ <= NOT \inst3|Add3~9_sumout\;
\inst3|ALT_INV_Add3~5_sumout\ <= NOT \inst3|Add3~5_sumout\;
\inst3|ALT_INV_Add3~1_sumout\ <= NOT \inst3|Add3~1_sumout\;

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
	i => \inst2|red_out~q\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

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
\inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
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
	clkin => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y1_N0
\inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
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
	coreclkfb => \inst1|pll2_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \inst1|pll2_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y5_N0
\inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y0_N1
\inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
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
  output_counter_index => 0)
-- pragma translate_on
PORT MAP (
	nen0 => \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN0\,
	tclk0 => \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \inst1|pll2_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G3
\inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|pll2_inst|altera_pll_i|outclk_wire\(0),
	outclk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X21_Y40_N0
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

-- Location: LABCELL_X20_Y40_N30
\inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_sumout\ = SUM(( \inst2|h_count\(0) ) + ( VCC ) + ( !VCC ))
-- \inst2|Add0~22\ = CARRY(( \inst2|h_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(0),
	cin => GND,
	sumout => \inst2|Add0~21_sumout\,
	cout => \inst2|Add0~22\);

-- Location: FF_X20_Y40_N32
\inst2|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~21_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(0));

-- Location: LABCELL_X20_Y40_N33
\inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~25_sumout\ = SUM(( \inst2|h_count\(1) ) + ( GND ) + ( \inst2|Add0~22\ ))
-- \inst2|Add0~26\ = CARRY(( \inst2|h_count\(1) ) + ( GND ) + ( \inst2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(1),
	cin => \inst2|Add0~22\,
	sumout => \inst2|Add0~25_sumout\,
	cout => \inst2|Add0~26\);

-- Location: FF_X20_Y40_N35
\inst2|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~25_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(1));

-- Location: LABCELL_X20_Y40_N36
\inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_sumout\ = SUM(( \inst2|h_count\(2) ) + ( GND ) + ( \inst2|Add0~26\ ))
-- \inst2|Add0~10\ = CARRY(( \inst2|h_count\(2) ) + ( GND ) + ( \inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(2),
	cin => \inst2|Add0~26\,
	sumout => \inst2|Add0~9_sumout\,
	cout => \inst2|Add0~10\);

-- Location: FF_X20_Y40_N37
\inst2|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~9_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(2));

-- Location: LABCELL_X20_Y40_N39
\inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~13_sumout\ = SUM(( \inst2|h_count\(3) ) + ( GND ) + ( \inst2|Add0~10\ ))
-- \inst2|Add0~14\ = CARRY(( \inst2|h_count\(3) ) + ( GND ) + ( \inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(3),
	cin => \inst2|Add0~10\,
	sumout => \inst2|Add0~13_sumout\,
	cout => \inst2|Add0~14\);

-- Location: FF_X20_Y40_N41
\inst2|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~13_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(3));

-- Location: LABCELL_X20_Y40_N42
\inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_sumout\ = SUM(( \inst2|h_count\(4) ) + ( GND ) + ( \inst2|Add0~14\ ))
-- \inst2|Add0~18\ = CARRY(( \inst2|h_count\(4) ) + ( GND ) + ( \inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(4),
	cin => \inst2|Add0~14\,
	sumout => \inst2|Add0~17_sumout\,
	cout => \inst2|Add0~18\);

-- Location: FF_X20_Y40_N44
\inst2|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~17_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(4));

-- Location: LABCELL_X20_Y40_N45
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

-- Location: FF_X20_Y40_N46
\inst2|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~5_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(5));

-- Location: LABCELL_X20_Y40_N48
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

-- Location: FF_X20_Y40_N50
\inst2|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~1_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(6));

-- Location: LABCELL_X20_Y40_N51
\inst2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~37_sumout\ = SUM(( \inst2|h_count\(7) ) + ( GND ) + ( \inst2|Add0~2\ ))
-- \inst2|Add0~38\ = CARRY(( \inst2|h_count\(7) ) + ( GND ) + ( \inst2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(7),
	cin => \inst2|Add0~2\,
	sumout => \inst2|Add0~37_sumout\,
	cout => \inst2|Add0~38\);

-- Location: LABCELL_X20_Y40_N54
\inst2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~33_sumout\ = SUM(( \inst2|h_count\(8) ) + ( GND ) + ( \inst2|Add0~38\ ))
-- \inst2|Add0~34\ = CARRY(( \inst2|h_count\(8) ) + ( GND ) + ( \inst2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(8),
	cin => \inst2|Add0~38\,
	sumout => \inst2|Add0~33_sumout\,
	cout => \inst2|Add0~34\);

-- Location: FF_X20_Y40_N56
\inst2|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~33_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(8));

-- Location: FF_X20_Y40_N40
\inst2|h_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~13_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count[3]~DUPLICATE_q\);

-- Location: FF_X20_Y40_N43
\inst2|h_count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~17_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count[4]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y40_N57
\inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~29_sumout\ = SUM(( \inst2|h_count\(9) ) + ( GND ) + ( \inst2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_h_count\(9),
	cin => \inst2|Add0~34\,
	sumout => \inst2|Add0~29_sumout\);

-- Location: FF_X20_Y40_N59
\inst2|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~29_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(9));

-- Location: LABCELL_X20_Y40_N6
\inst2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = ( \inst2|h_count\(9) & ( \inst2|h_count\(1) & ( (\inst2|h_count[3]~DUPLICATE_q\ & (\inst2|h_count[4]~DUPLICATE_q\ & (!\inst2|h_count\(6) & \inst2|h_count\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count[3]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_h_count\(6),
	datad => \inst2|ALT_INV_h_count\(0),
	datae => \inst2|ALT_INV_h_count\(9),
	dataf => \inst2|ALT_INV_h_count\(1),
	combout => \inst2|Equal0~0_combout\);

-- Location: LABCELL_X20_Y40_N27
\inst2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = ( \inst2|Equal0~0_combout\ & ( (!\inst2|h_count\(7) & (!\inst2|h_count\(5) & (\inst2|h_count\(8) & \inst2|h_count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(7),
	datab => \inst2|ALT_INV_h_count\(5),
	datac => \inst2|ALT_INV_h_count\(8),
	datad => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_Equal0~0_combout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: FF_X20_Y40_N53
\inst2|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~37_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(7));

-- Location: FF_X20_Y40_N52
\inst2|h_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~37_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count[7]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y40_N6
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

-- Location: LABCELL_X21_Y40_N9
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

-- Location: LABCELL_X20_Y40_N24
\inst2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = ( \inst2|Equal0~0_combout\ & ( (\inst2|h_count\(7) & (\inst2|h_count\(5) & (!\inst2|h_count\(8) & !\inst2|h_count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(7),
	datab => \inst2|ALT_INV_h_count\(5),
	datac => \inst2|ALT_INV_h_count\(8),
	datad => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_Equal0~0_combout\,
	combout => \inst2|Equal1~0_combout\);

-- Location: FF_X20_Y40_N31
\inst2|h_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~21_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y40_N18
\inst2|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = ( \inst2|h_count[0]~DUPLICATE_q\ & ( (!\inst2|h_count\(1) & !\inst2|h_count\(2)) ) ) # ( !\inst2|h_count[0]~DUPLICATE_q\ & ( !\inst2|h_count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_h_count\(1),
	datad => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_h_count[0]~DUPLICATE_q\,
	combout => \inst2|LessThan1~0_combout\);

-- Location: LABCELL_X20_Y40_N21
\inst2|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = ( !\inst2|h_count\(6) & ( (!\inst2|h_count[3]~DUPLICATE_q\) # ((!\inst2|h_count\(5)) # ((!\inst2|h_count[4]~DUPLICATE_q\) # (\inst2|LessThan1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111111111111110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count[3]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_h_count\(5),
	datac => \inst2|ALT_INV_LessThan1~0_combout\,
	datad => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_h_count\(6),
	combout => \inst2|process_0~4_combout\);

-- Location: LABCELL_X21_Y40_N51
\inst2|v_count[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|v_count[9]~0_combout\ = ( \inst2|h_count\(8) & ( (\inst2|Equal1~0_combout\) # (\inst2|process_0~6_combout\) ) ) # ( !\inst2|h_count\(8) & ( ((\inst2|h_count[7]~DUPLICATE_q\ & (\inst2|process_0~6_combout\ & !\inst2|process_0~4_combout\))) # 
-- (\inst2|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111000111110000111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count[7]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_process_0~6_combout\,
	datac => \inst2|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_process_0~4_combout\,
	dataf => \inst2|ALT_INV_h_count\(8),
	combout => \inst2|v_count[9]~0_combout\);

-- Location: FF_X21_Y40_N10
\inst2|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~1_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(3));

-- Location: FF_X21_Y40_N25
\inst2|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~9_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(8));

-- Location: LABCELL_X21_Y40_N12
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

-- Location: FF_X21_Y40_N13
\inst2|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~29_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(4));

-- Location: LABCELL_X21_Y40_N15
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

-- Location: FF_X21_Y40_N17
\inst2|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~21_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(5));

-- Location: LABCELL_X21_Y40_N18
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

-- Location: FF_X21_Y40_N19
\inst2|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~17_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(6));

-- Location: LABCELL_X21_Y40_N21
\inst2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~13_sumout\ = SUM(( \inst2|v_count\(7) ) + ( GND ) + ( \inst2|Add1~18\ ))
-- \inst2|Add1~14\ = CARRY(( \inst2|v_count\(7) ) + ( GND ) + ( \inst2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(7),
	cin => \inst2|Add1~18\,
	sumout => \inst2|Add1~13_sumout\,
	cout => \inst2|Add1~14\);

-- Location: FF_X21_Y40_N23
\inst2|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~13_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(7));

-- Location: LABCELL_X21_Y40_N24
\inst2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~9_sumout\ = SUM(( \inst2|v_count\(8) ) + ( GND ) + ( \inst2|Add1~14\ ))
-- \inst2|Add1~10\ = CARRY(( \inst2|v_count\(8) ) + ( GND ) + ( \inst2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(8),
	cin => \inst2|Add1~14\,
	sumout => \inst2|Add1~9_sumout\,
	cout => \inst2|Add1~10\);

-- Location: FF_X21_Y40_N26
\inst2|v_count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~9_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count[8]~DUPLICATE_q\);

-- Location: FF_X21_Y40_N22
\inst2|v_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~13_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count[7]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y40_N30
\inst2|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = ( !\inst2|v_count\(5) & ( (!\inst2|v_count[8]~DUPLICATE_q\ & (!\inst2|v_count[7]~DUPLICATE_q\ & (!\inst2|v_count\(6) & !\inst2|v_count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count[8]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_v_count[7]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_v_count\(6),
	datad => \inst2|ALT_INV_v_count\(4),
	dataf => \inst2|ALT_INV_v_count\(5),
	combout => \inst2|process_0~5_combout\);

-- Location: FF_X20_Y40_N58
\inst2|h_count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add0~29_sumout\,
	sclr => \inst2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count[9]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y40_N27
\inst2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~25_sumout\ = SUM(( \inst2|v_count\(9) ) + ( GND ) + ( \inst2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(9),
	cin => \inst2|Add1~10\,
	sumout => \inst2|Add1~25_sumout\);

-- Location: FF_X21_Y40_N29
\inst2|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~25_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(9));

-- Location: LABCELL_X21_Y40_N36
\inst2|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = ( \inst2|v_count\(9) & ( (\inst2|h_count[9]~DUPLICATE_q\ & ((!\inst2|process_0~5_combout\) # ((\inst2|v_count\(3) & \inst2|v_count\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100010000000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(3),
	datab => \inst2|ALT_INV_v_count\(2),
	datac => \inst2|ALT_INV_process_0~5_combout\,
	datad => \inst2|ALT_INV_h_count[9]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_v_count\(9),
	combout => \inst2|process_0~6_combout\);

-- Location: LABCELL_X21_Y40_N48
\inst2|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~7_combout\ = ( \inst2|h_count\(8) & ( \inst2|process_0~6_combout\ ) ) # ( !\inst2|h_count\(8) & ( (\inst2|h_count[7]~DUPLICATE_q\ & (\inst2|process_0~6_combout\ & !\inst2|process_0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count[7]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_process_0~6_combout\,
	datac => \inst2|ALT_INV_process_0~4_combout\,
	dataf => \inst2|ALT_INV_h_count\(8),
	combout => \inst2|process_0~7_combout\);

-- Location: FF_X21_Y40_N2
\inst2|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~33_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(0));

-- Location: LABCELL_X21_Y40_N3
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

-- Location: FF_X21_Y40_N5
\inst2|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~37_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(1));

-- Location: FF_X21_Y40_N8
\inst2|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~5_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(2));

-- Location: LABCELL_X21_Y40_N45
\inst2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = ( !\inst2|v_count\(9) & ( (!\inst2|v_count\(4) & (!\inst2|v_count\(1) $ (!\inst2|v_count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(1),
	datac => \inst2|ALT_INV_v_count\(4),
	datad => \inst2|ALT_INV_v_count\(0),
	dataf => \inst2|ALT_INV_v_count\(9),
	combout => \inst2|process_0~0_combout\);

-- Location: LABCELL_X21_Y40_N42
\inst2|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = ( \inst2|v_count\(5) & ( (\inst2|v_count[7]~DUPLICATE_q\ & (\inst2|v_count[8]~DUPLICATE_q\ & \inst2|v_count\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_v_count[7]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_v_count[8]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_v_count\(6),
	dataf => \inst2|ALT_INV_v_count\(5),
	combout => \inst2|LessThan7~0_combout\);

-- Location: LABCELL_X21_Y40_N39
\inst2|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = ( \inst2|LessThan7~0_combout\ & ( (!\inst2|v_count\(2)) # ((!\inst2|process_0~0_combout\) # (!\inst2|v_count\(3))) ) ) # ( !\inst2|LessThan7~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_v_count\(2),
	datac => \inst2|ALT_INV_process_0~0_combout\,
	datad => \inst2|ALT_INV_v_count\(3),
	dataf => \inst2|ALT_INV_LessThan7~0_combout\,
	combout => \inst2|process_0~1_combout\);

-- Location: FF_X25_Y40_N20
\inst2|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|process_0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vert_sync~q\);

-- Location: FF_X25_Y40_N2
\inst2|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vert_sync_out~q\);

-- Location: LABCELL_X20_Y40_N15
\inst2|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = ( \inst2|h_count\(7) & ( (!\inst2|h_count\(9)) # (\inst2|h_count\(8)) ) ) # ( !\inst2|h_count\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_h_count\(9),
	datad => \inst2|ALT_INV_h_count\(8),
	dataf => \inst2|ALT_INV_h_count\(7),
	combout => \inst2|process_0~3_combout\);

-- Location: LABCELL_X20_Y40_N12
\inst2|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = ( \inst2|h_count[0]~DUPLICATE_q\ & ( (!\inst2|h_count\(4)) # ((!\inst2|h_count[3]~DUPLICATE_q\ & (!\inst2|h_count\(1) & !\inst2|h_count\(2)))) ) ) # ( !\inst2|h_count[0]~DUPLICATE_q\ & ( (!\inst2|h_count\(4)) # 
-- ((!\inst2|h_count[3]~DUPLICATE_q\ & !\inst2|h_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011001100111011101100110011101100110011001110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count[3]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_h_count\(4),
	datac => \inst2|ALT_INV_h_count\(1),
	datad => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_h_count[0]~DUPLICATE_q\,
	combout => \inst2|process_0~2_combout\);

-- Location: LABCELL_X20_Y40_N0
\inst2|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~8_combout\ = ( !\inst2|h_count\(5) & ( ((((!\inst2|h_count\(6) & \inst2|process_0~2_combout\)) # (\inst2|process_0~3_combout\))) ) ) # ( \inst2|h_count\(5) & ( ((\inst2|h_count\(6) & (\inst2|h_count\(4) & ((\inst2|h_count\(2)) # 
-- (\inst2|h_count\(3)))))) # (\inst2|process_0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000000000001010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(6),
	datab => \inst2|ALT_INV_h_count\(3),
	datac => \inst2|ALT_INV_h_count\(2),
	datad => \inst2|ALT_INV_h_count\(4),
	datae => \inst2|ALT_INV_h_count\(5),
	dataf => \inst2|ALT_INV_process_0~3_combout\,
	datag => \inst2|ALT_INV_process_0~2_combout\,
	combout => \inst2|process_0~8_combout\);

-- Location: FF_X20_Y40_N2
\inst2|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|horiz_sync~q\);

-- Location: FF_X20_Y40_N10
\inst2|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|horiz_sync_out~q\);

-- Location: LABCELL_X21_Y40_N33
\inst2|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = ( !\inst2|v_count\(9) & ( (!\inst2|v_count[8]~DUPLICATE_q\) # ((!\inst2|v_count[7]~DUPLICATE_q\) # ((!\inst2|v_count\(5)) # (!\inst2|v_count\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count[8]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_v_count[7]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_v_count\(5),
	datad => \inst2|ALT_INV_v_count\(6),
	dataf => \inst2|ALT_INV_v_count\(9),
	combout => \inst2|LessThan7~1_combout\);

-- Location: LABCELL_X19_Y40_N21
\inst2|video_on_v~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|video_on_v~feeder_combout\ = ( \inst2|LessThan7~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_LessThan7~1_combout\,
	combout => \inst2|video_on_v~feeder_combout\);

-- Location: FF_X19_Y40_N23
\inst2|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|video_on_v~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_v~q\);

-- Location: MLABCELL_X23_Y40_N48
\inst2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~0_combout\ = ( \inst2|h_count\(8) & ( !\inst2|h_count\(9) ) ) # ( !\inst2|h_count\(8) & ( (!\inst2|h_count\(9)) # (!\inst2|h_count[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_h_count\(9),
	datad => \inst2|ALT_INV_h_count[7]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_h_count\(8),
	combout => \inst2|LessThan6~0_combout\);

-- Location: FF_X19_Y40_N41
\inst2|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|LessThan6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_h~q\);

-- Location: LABCELL_X19_Y40_N39
\inst2|red_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|red_out~0_combout\ = (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_video_on_v~q\,
	datad => \inst2|ALT_INV_video_on_h~q\,
	combout => \inst2|red_out~0_combout\);

-- Location: FF_X21_Y40_N50
\inst2|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(1),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(1));

-- Location: LABCELL_X25_Y40_N0
\inst3|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~1_sumout\ = SUM(( \inst3|ball_y_pos\(1) ) + ( VCC ) + ( !VCC ))
-- \inst3|Add5~2\ = CARRY(( \inst3|ball_y_pos\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_pos\(1),
	cin => GND,
	sumout => \inst3|Add5~1_sumout\,
	cout => \inst3|Add5~2\);

-- Location: FF_X25_Y40_N11
\inst3|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(1));

-- Location: FF_X21_Y40_N41
\inst2|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(3),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(3));

-- Location: FF_X24_Y40_N22
\inst2|pixel_row[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(2),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row[2]~DUPLICATE_q\);

-- Location: FF_X25_Y40_N49
\inst3|ball_y_motion[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	d => \inst3|ball_y_motion[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_motion[2]~DUPLICATE_q\);

-- Location: FF_X25_Y40_N29
\inst3|ball_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(9));

-- Location: LABCELL_X25_Y40_N3
\inst3|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~9_sumout\ = SUM(( \inst3|ball_y_motion\(2) ) + ( \inst3|ball_y_pos\(2) ) + ( \inst3|Add5~2\ ))
-- \inst3|Add5~10\ = CARRY(( \inst3|ball_y_motion\(2) ) + ( \inst3|ball_y_pos\(2) ) + ( \inst3|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(2),
	datad => \inst3|ALT_INV_ball_y_motion\(2),
	cin => \inst3|Add5~2\,
	sumout => \inst3|Add5~9_sumout\,
	cout => \inst3|Add5~10\);

-- Location: LABCELL_X25_Y40_N6
\inst3|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~5_sumout\ = SUM(( \inst3|ball_y_motion\(2) ) + ( \inst3|ball_y_pos\(3) ) + ( \inst3|Add5~10\ ))
-- \inst3|Add5~6\ = CARRY(( \inst3|ball_y_motion\(2) ) + ( \inst3|ball_y_pos\(3) ) + ( \inst3|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(3),
	datad => \inst3|ALT_INV_ball_y_motion\(2),
	cin => \inst3|Add5~10\,
	sumout => \inst3|Add5~5_sumout\,
	cout => \inst3|Add5~6\);

-- Location: FF_X25_Y40_N35
\inst3|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(3));

-- Location: LABCELL_X25_Y40_N9
\inst3|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~21_sumout\ = SUM(( \inst3|ball_y_motion[2]~DUPLICATE_q\ ) + ( \inst3|ball_y_pos\(4) ) + ( \inst3|Add5~6\ ))
-- \inst3|Add5~22\ = CARRY(( \inst3|ball_y_motion[2]~DUPLICATE_q\ ) + ( \inst3|ball_y_pos\(4) ) + ( \inst3|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_motion[2]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_ball_y_pos\(4),
	cin => \inst3|Add5~6\,
	sumout => \inst3|Add5~21_sumout\,
	cout => \inst3|Add5~22\);

-- Location: FF_X25_Y40_N41
\inst3|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(4));

-- Location: LABCELL_X25_Y40_N12
\inst3|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~17_sumout\ = SUM(( \inst3|ball_y_pos\(5) ) + ( \inst3|ball_y_motion[2]~DUPLICATE_q\ ) + ( \inst3|Add5~22\ ))
-- \inst3|Add5~18\ = CARRY(( \inst3|ball_y_pos\(5) ) + ( \inst3|ball_y_motion[2]~DUPLICATE_q\ ) + ( \inst3|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_motion[2]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_ball_y_pos\(5),
	cin => \inst3|Add5~22\,
	sumout => \inst3|Add5~17_sumout\,
	cout => \inst3|Add5~18\);

-- Location: FF_X25_Y40_N59
\inst3|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(5));

-- Location: LABCELL_X25_Y40_N15
\inst3|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~29_sumout\ = SUM(( \inst3|ball_y_pos\(6) ) + ( \inst3|ball_y_motion[2]~DUPLICATE_q\ ) + ( \inst3|Add5~18\ ))
-- \inst3|Add5~30\ = CARRY(( \inst3|ball_y_pos\(6) ) + ( \inst3|ball_y_motion[2]~DUPLICATE_q\ ) + ( \inst3|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_motion[2]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_ball_y_pos\(6),
	cin => \inst3|Add5~18\,
	sumout => \inst3|Add5~29_sumout\,
	cout => \inst3|Add5~30\);

-- Location: FF_X25_Y40_N56
\inst3|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(6));

-- Location: LABCELL_X25_Y40_N18
\inst3|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~25_sumout\ = SUM(( \inst3|ball_y_motion\(2) ) + ( \inst3|ball_y_pos\(7) ) + ( \inst3|Add5~30\ ))
-- \inst3|Add5~26\ = CARRY(( \inst3|ball_y_motion\(2) ) + ( \inst3|ball_y_pos\(7) ) + ( \inst3|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_motion\(2),
	datac => \inst3|ALT_INV_ball_y_pos\(7),
	cin => \inst3|Add5~30\,
	sumout => \inst3|Add5~25_sumout\,
	cout => \inst3|Add5~26\);

-- Location: FF_X25_Y40_N31
\inst3|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(7));

-- Location: LABCELL_X25_Y40_N21
\inst3|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~13_sumout\ = SUM(( \inst3|ball_y_motion\(2) ) + ( \inst3|ball_y_pos\(8) ) + ( \inst3|Add5~26\ ))
-- \inst3|Add5~14\ = CARRY(( \inst3|ball_y_motion\(2) ) + ( \inst3|ball_y_pos\(8) ) + ( \inst3|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_motion\(2),
	datab => \inst3|ALT_INV_ball_y_pos\(8),
	cin => \inst3|Add5~26\,
	sumout => \inst3|Add5~13_sumout\,
	cout => \inst3|Add5~14\);

-- Location: FF_X25_Y40_N47
\inst3|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(8));

-- Location: LABCELL_X25_Y40_N24
\inst3|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~33_sumout\ = SUM(( \inst3|ball_y_pos\(9) ) + ( \inst3|ball_y_motion[2]~DUPLICATE_q\ ) + ( \inst3|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_motion[2]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_ball_y_pos\(9),
	cin => \inst3|Add5~14\,
	sumout => \inst3|Add5~33_sumout\);

-- Location: FF_X25_Y40_N28
\inst3|ball_y_pos[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[9]~DUPLICATE_q\);

-- Location: FF_X25_Y40_N58
\inst3|ball_y_pos[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[5]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y40_N54
\inst3|ball_y_motion[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_y_motion[2]~0_combout\ = ( \inst3|ball_y_pos\(6) & ( \inst3|ball_y_pos\(7) & ( ((\inst3|ball_y_pos\(8) & ((\inst3|ball_y_pos\(4)) # (\inst3|ball_y_pos[5]~DUPLICATE_q\)))) # (\inst3|ball_y_motion\(2)) ) ) ) # ( !\inst3|ball_y_pos\(6) & ( 
-- \inst3|ball_y_pos\(7) & ( \inst3|ball_y_motion\(2) ) ) ) # ( \inst3|ball_y_pos\(6) & ( !\inst3|ball_y_pos\(7) & ( \inst3|ball_y_motion\(2) ) ) ) # ( !\inst3|ball_y_pos\(6) & ( !\inst3|ball_y_pos\(7) & ( (\inst3|ball_y_motion\(2) & 
-- (((\inst3|ball_y_pos\(8)) # (\inst3|ball_y_pos\(4))) # (\inst3|ball_y_pos[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000011110000111100001111000011110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_ball_y_pos\(4),
	datac => \inst3|ALT_INV_ball_y_motion\(2),
	datad => \inst3|ALT_INV_ball_y_pos\(8),
	datae => \inst3|ALT_INV_ball_y_pos\(6),
	dataf => \inst3|ALT_INV_ball_y_pos\(7),
	combout => \inst3|ball_y_motion[2]~0_combout\);

-- Location: LABCELL_X25_Y40_N48
\inst3|ball_y_motion[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_y_motion[2]~1_combout\ = ( !\inst3|ball_y_motion[2]~0_combout\ & ( ((\inst3|ball_y_motion[2]~DUPLICATE_q\ & (\inst3|ball_y_pos\(3) & ((\inst3|ball_y_pos\(2)) # (\inst3|ball_y_pos\(1)))))) # (\inst3|ball_y_pos[9]~DUPLICATE_q\) ) ) # ( 
-- \inst3|ball_y_motion[2]~0_combout\ & ( ((((\inst3|ball_y_pos\(3)) # (\inst3|ball_y_motion[2]~DUPLICATE_q\)) # (\inst3|ball_y_pos\(5)))) # (\inst3|ball_y_pos[9]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010111111111111101010101011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos[9]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_ball_y_pos\(1),
	datac => \inst3|ALT_INV_ball_y_pos\(5),
	datad => \inst3|ALT_INV_ball_y_motion[2]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_ball_y_motion[2]~0_combout\,
	dataf => \inst3|ALT_INV_ball_y_pos\(3),
	datag => \inst3|ALT_INV_ball_y_pos\(2),
	combout => \inst3|ball_y_motion[2]~1_combout\);

-- Location: FF_X25_Y40_N50
\inst3|ball_y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	d => \inst3|ball_y_motion[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_motion\(2));

-- Location: FF_X25_Y40_N44
\inst3|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(2));

-- Location: LABCELL_X25_Y40_N36
\inst3|ball_on~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~5_combout\ = ( \inst3|ball_y_pos\(2) & ( \inst3|ball_y_pos\(3) & ( ((!\inst2|pixel_row[2]~DUPLICATE_q\) # ((!\inst2|pixel_row\(1) & \inst3|ball_y_pos\(1)))) # (\inst2|pixel_row\(3)) ) ) ) # ( !\inst3|ball_y_pos\(2) & ( \inst3|ball_y_pos\(3) 
-- & ( ((!\inst2|pixel_row\(1) & (\inst3|ball_y_pos\(1) & !\inst2|pixel_row[2]~DUPLICATE_q\))) # (\inst2|pixel_row\(3)) ) ) ) # ( \inst3|ball_y_pos\(2) & ( !\inst3|ball_y_pos\(3) & ( (\inst2|pixel_row\(3) & ((!\inst2|pixel_row[2]~DUPLICATE_q\) # 
-- ((!\inst2|pixel_row\(1) & \inst3|ball_y_pos\(1))))) ) ) ) # ( !\inst3|ball_y_pos\(2) & ( !\inst3|ball_y_pos\(3) & ( (!\inst2|pixel_row\(1) & (\inst3|ball_y_pos\(1) & (\inst2|pixel_row\(3) & !\inst2|pixel_row[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000011110000001000101111000011111111111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(1),
	datab => \inst3|ALT_INV_ball_y_pos\(1),
	datac => \inst2|ALT_INV_pixel_row\(3),
	datad => \inst2|ALT_INV_pixel_row[2]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_ball_y_pos\(2),
	dataf => \inst3|ALT_INV_ball_y_pos\(3),
	combout => \inst3|ball_on~5_combout\);

-- Location: FF_X21_Y40_N59
\inst2|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(5),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(5));

-- Location: FF_X25_Y40_N40
\inst3|ball_y_pos[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[4]~DUPLICATE_q\);

-- Location: FF_X21_Y40_N32
\inst2|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(4),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(4));

-- Location: LABCELL_X25_Y40_N33
\inst3|ball_on~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~6_combout\ = ( \inst3|ball_y_pos[4]~DUPLICATE_q\ & ( \inst2|pixel_row\(4) & ( (!\inst3|ball_on~5_combout\ & ((!\inst2|pixel_row\(5) & (\inst3|ball_y_pos[5]~DUPLICATE_q\)) # (\inst2|pixel_row\(5) & ((\inst2|pixel_row\(3)))))) # 
-- (\inst3|ball_on~5_combout\ & ((!\inst2|pixel_row\(5) $ (\inst2|pixel_row\(3))) # (\inst3|ball_y_pos[5]~DUPLICATE_q\))) ) ) ) # ( !\inst3|ball_y_pos[4]~DUPLICATE_q\ & ( \inst2|pixel_row\(4) & ( (!\inst3|ball_on~5_combout\ & 
-- (\inst3|ball_y_pos[5]~DUPLICATE_q\ & (!\inst2|pixel_row\(5) $ (\inst2|pixel_row\(3))))) # (\inst3|ball_on~5_combout\ & ((!\inst2|pixel_row\(5) & (\inst3|ball_y_pos[5]~DUPLICATE_q\)) # (\inst2|pixel_row\(5) & ((\inst2|pixel_row\(3)))))) ) ) ) # ( 
-- \inst3|ball_y_pos[4]~DUPLICATE_q\ & ( !\inst2|pixel_row\(4) & ( (!\inst2|pixel_row\(5) & (((!\inst2|pixel_row\(3)) # (\inst3|ball_y_pos[5]~DUPLICATE_q\)) # (\inst3|ball_on~5_combout\))) # (\inst2|pixel_row\(5) & (\inst3|ball_y_pos[5]~DUPLICATE_q\ & 
-- ((!\inst2|pixel_row\(3)) # (\inst3|ball_on~5_combout\)))) ) ) ) # ( !\inst3|ball_y_pos[4]~DUPLICATE_q\ & ( !\inst2|pixel_row\(4) & ( (!\inst2|pixel_row\(5) & (((\inst3|ball_on~5_combout\ & !\inst2|pixel_row\(3))) # (\inst3|ball_y_pos[5]~DUPLICATE_q\))) # 
-- (\inst2|pixel_row\(5) & (\inst3|ball_on~5_combout\ & (\inst3|ball_y_pos[5]~DUPLICATE_q\ & !\inst2|pixel_row\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100001100110011110100110100001100000101110100110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_on~5_combout\,
	datab => \inst2|ALT_INV_pixel_row\(5),
	datac => \inst3|ALT_INV_ball_y_pos[5]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_row\(3),
	datae => \inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_pixel_row\(4),
	combout => \inst3|ball_on~6_combout\);

-- Location: FF_X24_Y40_N53
\inst2|pixel_row[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(8),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row[8]~DUPLICATE_q\);

-- Location: FF_X21_Y40_N35
\inst2|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(6),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(6));

-- Location: FF_X24_Y40_N13
\inst2|pixel_row[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(7),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row[7]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y40_N57
\inst3|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~0_combout\ = ( \inst2|pixel_row[7]~DUPLICATE_q\ & ( (\inst2|pixel_row\(6) & (\inst2|pixel_row\(4) & (\inst2|pixel_row\(3) & \inst2|pixel_row\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	datab => \inst2|ALT_INV_pixel_row\(4),
	datac => \inst2|ALT_INV_pixel_row\(3),
	datad => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst2|ALT_INV_pixel_row[7]~DUPLICATE_q\,
	combout => \inst3|Add2~0_combout\);

-- Location: LABCELL_X24_Y40_N3
\inst3|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~0_combout\ = ( \inst3|ball_y_pos\(8) & ( !\inst2|pixel_row[8]~DUPLICATE_q\ $ (\inst3|Add2~0_combout\) ) ) # ( !\inst3|ball_y_pos\(8) & ( !\inst2|pixel_row[8]~DUPLICATE_q\ $ (!\inst3|Add2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row[8]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Add2~0_combout\,
	dataf => \inst3|ALT_INV_ball_y_pos\(8),
	combout => \inst3|LessThan2~0_combout\);

-- Location: FF_X24_Y40_N14
\inst2|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(7),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(7));

-- Location: LABCELL_X24_Y40_N27
\inst3|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~1_combout\ = ( \inst2|pixel_row\(4) & ( (\inst2|pixel_row\(3) & \inst2|pixel_row\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(3),
	datad => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst2|ALT_INV_pixel_row\(4),
	combout => \inst3|Add2~1_combout\);

-- Location: FF_X25_Y40_N32
\inst3|ball_y_pos[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add5~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[7]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y40_N57
\inst3|ball_on~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~8_combout\ = ( \inst3|ball_y_pos[7]~DUPLICATE_q\ & ( (!\inst3|ball_y_pos\(6) & (!\inst2|pixel_row\(7) $ (((\inst2|pixel_row\(6) & \inst3|Add2~1_combout\))))) # (\inst3|ball_y_pos\(6) & ((!\inst2|pixel_row\(7)) # (!\inst2|pixel_row\(6) $ 
-- (\inst3|Add2~1_combout\)))) ) ) # ( !\inst3|ball_y_pos[7]~DUPLICATE_q\ & ( (\inst3|ball_y_pos\(6) & ((!\inst2|pixel_row\(6) & (!\inst2|pixel_row\(7) & !\inst3|Add2~1_combout\)) # (\inst2|pixel_row\(6) & (\inst2|pixel_row\(7) & \inst3|Add2~1_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000001001000000000000111110010101101011111001010110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	datab => \inst3|ALT_INV_ball_y_pos\(6),
	datac => \inst2|ALT_INV_pixel_row\(7),
	datad => \inst3|ALT_INV_Add2~1_combout\,
	dataf => \inst3|ALT_INV_ball_y_pos[7]~DUPLICATE_q\,
	combout => \inst3|ball_on~8_combout\);

-- Location: LABCELL_X24_Y40_N6
\inst3|ball_on~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~9_combout\ = ( !\inst3|ball_y_pos[9]~DUPLICATE_q\ & ( (!\inst3|ball_y_pos\(8)) # (!\inst2|pixel_row[8]~DUPLICATE_q\ $ (!\inst3|Add2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111010101011111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(8),
	datac => \inst2|ALT_INV_pixel_row[8]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Add2~0_combout\,
	dataf => \inst3|ALT_INV_ball_y_pos[9]~DUPLICATE_q\,
	combout => \inst3|ball_on~9_combout\);

-- Location: FF_X23_Y40_N59
\inst2|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(6),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(6));

-- Location: FF_X23_Y40_N13
\inst2|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(8),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(8));

-- Location: FF_X23_Y40_N25
\inst2|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(7));

-- Location: FF_X23_Y40_N4
\inst2|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(5),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(5));

-- Location: MLABCELL_X23_Y40_N24
\inst3|ball_on~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~3_combout\ = ( \inst2|pixel_column\(5) & ( (!\inst2|pixel_column\(6) & (!\inst2|pixel_column\(8) & !\inst2|pixel_column\(7))) ) ) # ( !\inst2|pixel_column\(5) & ( (!\inst2|pixel_column\(8) & !\inst2|pixel_column\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(6),
	datac => \inst2|ALT_INV_pixel_column\(8),
	datad => \inst2|ALT_INV_pixel_column\(7),
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst3|ball_on~3_combout\);

-- Location: FF_X23_Y40_N2
\inst2|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(2),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(2));

-- Location: FF_X23_Y40_N38
\inst2|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(0));

-- Location: FF_X23_Y40_N28
\inst2|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(1),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(1));

-- Location: MLABCELL_X23_Y40_N36
\inst3|ball_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~2_combout\ = ( \inst2|pixel_column\(1) & ( (\inst2|pixel_column\(2) & \inst2|pixel_column\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(2),
	datad => \inst2|ALT_INV_pixel_column\(0),
	dataf => \inst2|ALT_INV_pixel_column\(1),
	combout => \inst3|ball_on~2_combout\);

-- Location: FF_X23_Y40_N17
\inst2|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(9),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(9));

-- Location: FF_X23_Y40_N32
\inst2|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(4),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(4));

-- Location: FF_X23_Y40_N35
\inst2|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(3));

-- Location: MLABCELL_X23_Y40_N30
\inst3|ball_on~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~4_combout\ = ( \inst2|pixel_column\(4) & ( \inst2|pixel_column\(3) & ( (\inst2|pixel_column\(9) & ((!\inst3|ball_on~3_combout\) # (\inst2|pixel_column\(6)))) ) ) ) # ( !\inst2|pixel_column\(4) & ( \inst2|pixel_column\(3) & ( 
-- (!\inst3|ball_on~3_combout\ & \inst2|pixel_column\(9)) ) ) ) # ( \inst2|pixel_column\(4) & ( !\inst2|pixel_column\(3) & ( (\inst2|pixel_column\(9) & ((!\inst3|ball_on~3_combout\) # ((\inst2|pixel_column\(6) & \inst3|ball_on~2_combout\)))) ) ) ) # ( 
-- !\inst2|pixel_column\(4) & ( !\inst2|pixel_column\(3) & ( (!\inst3|ball_on~3_combout\ & \inst2|pixel_column\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101100000000101010100000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_on~3_combout\,
	datab => \inst2|ALT_INV_pixel_column\(6),
	datac => \inst3|ALT_INV_ball_on~2_combout\,
	datad => \inst2|ALT_INV_pixel_column\(9),
	datae => \inst2|ALT_INV_pixel_column\(4),
	dataf => \inst2|ALT_INV_pixel_column\(3),
	combout => \inst3|ball_on~4_combout\);

-- Location: LABCELL_X24_Y40_N54
\inst3|ball_on~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~7_combout\ = ( \inst3|ball_y_pos[7]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(6) & (\inst2|pixel_row\(7) & (!\inst3|ball_y_pos\(6) $ (\inst3|Add2~1_combout\)))) # (\inst2|pixel_row\(6) & ((!\inst3|ball_y_pos\(6) & (\inst3|Add2~1_combout\ & 
-- !\inst2|pixel_row\(7))) # (\inst3|ball_y_pos\(6) & (!\inst3|Add2~1_combout\ & \inst2|pixel_row\(7))))) ) ) # ( !\inst3|ball_y_pos[7]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(6) & (!\inst2|pixel_row\(7) & (!\inst3|ball_y_pos\(6) $ (\inst3|Add2~1_combout\)))) # 
-- (\inst2|pixel_row\(6) & ((!\inst3|ball_y_pos\(6) & (\inst3|Add2~1_combout\ & \inst2|pixel_row\(7))) # (\inst3|ball_y_pos\(6) & (!\inst3|Add2~1_combout\ & !\inst2|pixel_row\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001000000100100100100000010000000100100100100000010010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	datab => \inst3|ALT_INV_ball_y_pos\(6),
	datac => \inst3|ALT_INV_Add2~1_combout\,
	datad => \inst2|ALT_INV_pixel_row\(7),
	dataf => \inst3|ALT_INV_ball_y_pos[7]~DUPLICATE_q\,
	combout => \inst3|ball_on~7_combout\);

-- Location: LABCELL_X25_Y40_N45
\inst3|ball_on~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~10_combout\ = ( !\inst3|ball_on~4_combout\ & ( \inst3|ball_on~7_combout\ & ( (\inst3|ball_on~9_combout\ & (((!\inst3|ball_on~6_combout\ & !\inst3|ball_on~8_combout\)) # (\inst3|LessThan2~0_combout\))) ) ) ) # ( !\inst3|ball_on~4_combout\ & 
-- ( !\inst3|ball_on~7_combout\ & ( (\inst3|ball_on~9_combout\ & ((!\inst3|ball_on~8_combout\) # (\inst3|LessThan2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000000000000000000000101100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_on~6_combout\,
	datab => \inst3|ALT_INV_LessThan2~0_combout\,
	datac => \inst3|ALT_INV_ball_on~8_combout\,
	datad => \inst3|ALT_INV_ball_on~9_combout\,
	datae => \inst3|ALT_INV_ball_on~4_combout\,
	dataf => \inst3|ALT_INV_ball_on~7_combout\,
	combout => \inst3|ball_on~10_combout\);

-- Location: LABCELL_X24_Y40_N30
\inst3|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~5_sumout\ = SUM(( \inst3|ball_y_pos[4]~DUPLICATE_q\ ) + ( \inst3|ball_y_pos\(3) ) + ( !VCC ))
-- \inst3|Add3~6\ = CARRY(( \inst3|ball_y_pos[4]~DUPLICATE_q\ ) + ( \inst3|ball_y_pos\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(3),
	datad => \inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst3|Add3~5_sumout\,
	cout => \inst3|Add3~6\);

-- Location: LABCELL_X24_Y40_N33
\inst3|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~17_sumout\ = SUM(( \inst3|ball_y_pos[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add3~6\ ))
-- \inst3|Add3~18\ = CARRY(( \inst3|ball_y_pos[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos[5]~DUPLICATE_q\,
	cin => \inst3|Add3~6\,
	sumout => \inst3|Add3~17_sumout\,
	cout => \inst3|Add3~18\);

-- Location: LABCELL_X24_Y40_N36
\inst3|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~13_sumout\ = SUM(( \inst3|ball_y_pos\(6) ) + ( GND ) + ( \inst3|Add3~18\ ))
-- \inst3|Add3~14\ = CARRY(( \inst3|ball_y_pos\(6) ) + ( GND ) + ( \inst3|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_ball_y_pos\(6),
	cin => \inst3|Add3~18\,
	sumout => \inst3|Add3~13_sumout\,
	cout => \inst3|Add3~14\);

-- Location: LABCELL_X24_Y40_N39
\inst3|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~9_sumout\ = SUM(( \inst3|ball_y_pos[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add3~14\ ))
-- \inst3|Add3~10\ = CARRY(( \inst3|ball_y_pos[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_ball_y_pos[7]~DUPLICATE_q\,
	cin => \inst3|Add3~14\,
	sumout => \inst3|Add3~9_sumout\,
	cout => \inst3|Add3~10\);

-- Location: LABCELL_X24_Y40_N48
\inst3|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~5_combout\ = ( \inst2|pixel_row\(5) & ( \inst3|Add3~9_sumout\ & ( (\inst2|pixel_row\(7) & ((!\inst3|Add3~13_sumout\ & ((!\inst3|Add3~17_sumout\) # (\inst2|pixel_row\(6)))) # (\inst3|Add3~13_sumout\ & (!\inst3|Add3~17_sumout\ & 
-- \inst2|pixel_row\(6))))) ) ) ) # ( !\inst2|pixel_row\(5) & ( \inst3|Add3~9_sumout\ & ( (!\inst3|Add3~13_sumout\ & (\inst2|pixel_row\(6) & \inst2|pixel_row\(7))) ) ) ) # ( \inst2|pixel_row\(5) & ( !\inst3|Add3~9_sumout\ & ( ((!\inst3|Add3~13_sumout\ & 
-- ((!\inst3|Add3~17_sumout\) # (\inst2|pixel_row\(6)))) # (\inst3|Add3~13_sumout\ & (!\inst3|Add3~17_sumout\ & \inst2|pixel_row\(6)))) # (\inst2|pixel_row\(7)) ) ) ) # ( !\inst2|pixel_row\(5) & ( !\inst3|Add3~9_sumout\ & ( ((!\inst3|Add3~13_sumout\ & 
-- \inst2|pixel_row\(6))) # (\inst2|pixel_row\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111100011101111111100000000000010100000000010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add3~13_sumout\,
	datab => \inst3|ALT_INV_Add3~17_sumout\,
	datac => \inst2|ALT_INV_pixel_row\(6),
	datad => \inst2|ALT_INV_pixel_row\(7),
	datae => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst3|ALT_INV_Add3~9_sumout\,
	combout => \inst3|LessThan3~5_combout\);

-- Location: FF_X24_Y40_N23
\inst2|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(2),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(2));

-- Location: LABCELL_X24_Y40_N0
\inst3|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~1_combout\ = ( \inst2|pixel_row\(3) & ( (!\inst3|ball_y_pos\(3) & (!\inst2|pixel_row\(2) $ (\inst3|ball_y_pos\(2)))) ) ) # ( !\inst2|pixel_row\(3) & ( (\inst3|ball_y_pos\(3) & (!\inst2|pixel_row\(2) $ (\inst3|ball_y_pos\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_pos\(3),
	datac => \inst2|ALT_INV_pixel_row\(2),
	datad => \inst3|ALT_INV_ball_y_pos\(2),
	dataf => \inst2|ALT_INV_pixel_row\(3),
	combout => \inst3|LessThan3~1_combout\);

-- Location: LABCELL_X24_Y40_N9
\inst3|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~2_combout\ = ( \inst2|pixel_row[2]~DUPLICATE_q\ & ( (!\inst3|ball_y_pos\(3) & (\inst2|pixel_row\(3) & !\inst3|ball_y_pos\(2))) # (\inst3|ball_y_pos\(3) & ((!\inst3|ball_y_pos\(2)) # (\inst2|pixel_row\(3)))) ) ) # ( 
-- !\inst2|pixel_row[2]~DUPLICATE_q\ & ( (\inst3|ball_y_pos\(3) & \inst2|pixel_row\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_pos\(3),
	datac => \inst2|ALT_INV_pixel_row\(3),
	datad => \inst3|ALT_INV_ball_y_pos\(2),
	dataf => \inst2|ALT_INV_pixel_row[2]~DUPLICATE_q\,
	combout => \inst3|LessThan3~2_combout\);

-- Location: FF_X21_Y40_N56
\inst2|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(0),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(0));

-- Location: LABCELL_X21_Y40_N54
\inst3|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~0_combout\ = ( \inst3|ball_y_pos\(1) & ( (\inst2|pixel_row\(1) & \inst2|pixel_row\(0)) ) ) # ( !\inst3|ball_y_pos\(1) & ( (\inst2|pixel_row\(0)) # (\inst2|pixel_row\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(1),
	datad => \inst2|ALT_INV_pixel_row\(0),
	dataf => \inst3|ALT_INV_ball_y_pos\(1),
	combout => \inst3|LessThan3~0_combout\);

-- Location: LABCELL_X24_Y40_N24
\inst3|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~3_combout\ = ( \inst3|Add3~5_sumout\ & ( (!\inst2|pixel_row\(4)) # ((!\inst3|LessThan3~2_combout\ & ((!\inst3|LessThan3~1_combout\) # (!\inst3|LessThan3~0_combout\)))) ) ) # ( !\inst3|Add3~5_sumout\ & ( (!\inst2|pixel_row\(4) & 
-- (!\inst3|LessThan3~2_combout\ & ((!\inst3|LessThan3~1_combout\) # (!\inst3|LessThan3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000011111010111010101111101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(4),
	datab => \inst3|ALT_INV_LessThan3~1_combout\,
	datac => \inst3|ALT_INV_LessThan3~2_combout\,
	datad => \inst3|ALT_INV_LessThan3~0_combout\,
	dataf => \inst3|ALT_INV_Add3~5_sumout\,
	combout => \inst3|LessThan3~3_combout\);

-- Location: LABCELL_X24_Y40_N15
\inst3|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~4_combout\ = ( \inst2|pixel_row\(5) & ( \inst3|Add3~9_sumout\ & ( (\inst3|Add3~17_sumout\ & (\inst2|pixel_row\(7) & (!\inst3|Add3~13_sumout\ $ (\inst2|pixel_row\(6))))) ) ) ) # ( !\inst2|pixel_row\(5) & ( \inst3|Add3~9_sumout\ & ( 
-- (!\inst3|Add3~17_sumout\ & (\inst2|pixel_row\(7) & (!\inst3|Add3~13_sumout\ $ (\inst2|pixel_row\(6))))) ) ) ) # ( \inst2|pixel_row\(5) & ( !\inst3|Add3~9_sumout\ & ( (\inst3|Add3~17_sumout\ & (!\inst2|pixel_row\(7) & (!\inst3|Add3~13_sumout\ $ 
-- (\inst2|pixel_row\(6))))) ) ) ) # ( !\inst2|pixel_row\(5) & ( !\inst3|Add3~9_sumout\ & ( (!\inst3|Add3~17_sumout\ & (!\inst2|pixel_row\(7) & (!\inst3|Add3~13_sumout\ $ (\inst2|pixel_row\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add3~13_sumout\,
	datab => \inst3|ALT_INV_Add3~17_sumout\,
	datac => \inst2|ALT_INV_pixel_row\(7),
	datad => \inst2|ALT_INV_pixel_row\(6),
	datae => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst3|ALT_INV_Add3~9_sumout\,
	combout => \inst3|LessThan3~4_combout\);

-- Location: FF_X24_Y40_N52
\inst2|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count\(8),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(8));

-- Location: LABCELL_X24_Y40_N42
\inst3|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~1_sumout\ = SUM(( \inst3|ball_y_pos\(8) ) + ( GND ) + ( \inst3|Add3~10\ ))
-- \inst3|Add3~2\ = CARRY(( \inst3|ball_y_pos\(8) ) + ( GND ) + ( \inst3|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_ball_y_pos\(8),
	cin => \inst3|Add3~10\,
	sumout => \inst3|Add3~1_sumout\,
	cout => \inst3|Add3~2\);

-- Location: MLABCELL_X23_Y40_N39
\inst3|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~6_combout\ = ( \inst3|Add3~1_sumout\ & ( (\inst2|pixel_row\(8) & (((!\inst3|LessThan3~3_combout\ & \inst3|LessThan3~4_combout\)) # (\inst3|LessThan3~5_combout\))) ) ) # ( !\inst3|Add3~1_sumout\ & ( (!\inst2|pixel_row\(8) & 
-- (((!\inst3|LessThan3~3_combout\ & \inst3|LessThan3~4_combout\)) # (\inst3|LessThan3~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000000010111010000000000000000010111010000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan3~5_combout\,
	datab => \inst3|ALT_INV_LessThan3~3_combout\,
	datac => \inst3|ALT_INV_LessThan3~4_combout\,
	datad => \inst2|ALT_INV_pixel_row\(8),
	dataf => \inst3|ALT_INV_Add3~1_sumout\,
	combout => \inst3|LessThan3~6_combout\);

-- Location: MLABCELL_X23_Y40_N0
\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( \inst2|pixel_column\(4) ) + ( \inst2|pixel_column\(3) ) + ( !VCC ))
-- \inst3|Add0~14\ = CARRY(( \inst2|pixel_column\(4) ) + ( \inst2|pixel_column\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(4),
	datac => \inst2|ALT_INV_pixel_column\(3),
	cin => GND,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

-- Location: MLABCELL_X23_Y40_N3
\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( \inst2|pixel_column\(5) ) + ( GND ) + ( \inst3|Add0~14\ ))
-- \inst3|Add0~18\ = CARRY(( \inst2|pixel_column\(5) ) + ( GND ) + ( \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(5),
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

-- Location: MLABCELL_X23_Y40_N6
\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst3|Add0~18\ ))
-- \inst3|Add0~10\ = CARRY(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(6),
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

-- Location: MLABCELL_X23_Y40_N9
\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst3|Add0~10\ ))
-- \inst3|Add0~2\ = CARRY(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~1_sumout\,
	cout => \inst3|Add0~2\);

-- Location: MLABCELL_X23_Y40_N27
\inst3|ball_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~0_combout\ = ( !\inst2|pixel_column\(3) & ( (\inst2|pixel_column\(2) & \inst2|pixel_column\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(2),
	datad => \inst2|ALT_INV_pixel_column\(1),
	dataf => \inst2|ALT_INV_pixel_column\(3),
	combout => \inst3|ball_on~0_combout\);

-- Location: MLABCELL_X23_Y40_N12
\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst3|Add0~2\ ))
-- \inst3|Add0~6\ = CARRY(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(8),
	cin => \inst3|Add0~2\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

-- Location: MLABCELL_X23_Y40_N54
\inst3|ball_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~1_combout\ = ( \inst3|ball_on~0_combout\ & ( !\inst3|Add0~5_sumout\ & ( (!\inst3|Add0~9_sumout\ & !\inst3|Add0~1_sumout\) ) ) ) # ( !\inst3|ball_on~0_combout\ & ( !\inst3|Add0~5_sumout\ & ( (!\inst3|Add0~1_sumout\ & 
-- ((!\inst3|Add0~9_sumout\) # ((!\inst3|Add0~13_sumout\ & !\inst3|Add0~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add0~13_sumout\,
	datab => \inst3|ALT_INV_Add0~9_sumout\,
	datac => \inst3|ALT_INV_Add0~17_sumout\,
	datad => \inst3|ALT_INV_Add0~1_sumout\,
	datae => \inst3|ALT_INV_ball_on~0_combout\,
	dataf => \inst3|ALT_INV_Add0~5_sumout\,
	combout => \inst3|ball_on~1_combout\);

-- Location: MLABCELL_X23_Y40_N15
\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst3|Add0~6\ ))
-- \inst3|Add0~22\ = CARRY(( \inst2|pixel_column\(9) ) + ( GND ) + ( \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column\(9),
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~21_sumout\,
	cout => \inst3|Add0~22\);

-- Location: MLABCELL_X23_Y40_N18
\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( GND ) + ( GND ) + ( \inst3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Add0~22\,
	sumout => \inst3|Add0~25_sumout\);

-- Location: LABCELL_X24_Y40_N45
\inst3|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~21_sumout\ = SUM(( \inst3|ball_y_pos[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_ball_y_pos[9]~DUPLICATE_q\,
	cin => \inst3|Add3~2\,
	sumout => \inst3|Add3~21_sumout\);

-- Location: LABCELL_X24_Y40_N18
\inst3|ball_on~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~11_combout\ = ( \inst3|Add2~0_combout\ & ( !\inst3|Add3~21_sumout\ & ( (!\inst2|pixel_row[8]~DUPLICATE_q\ & (!\inst3|Add0~25_sumout\ & \inst3|Add0~21_sumout\)) ) ) ) # ( !\inst3|Add2~0_combout\ & ( !\inst3|Add3~21_sumout\ & ( 
-- (!\inst3|Add0~25_sumout\ & (\inst3|Add0~21_sumout\ & ((!\inst2|pixel_row[8]~DUPLICATE_q\) # (\inst3|Add3~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row[8]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Add3~1_sumout\,
	datac => \inst3|ALT_INV_Add0~25_sumout\,
	datad => \inst3|ALT_INV_Add0~21_sumout\,
	datae => \inst3|ALT_INV_Add2~0_combout\,
	dataf => \inst3|ALT_INV_Add3~21_sumout\,
	combout => \inst3|ball_on~11_combout\);

-- Location: MLABCELL_X23_Y40_N51
\inst2|green_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|green_out~0_combout\ = ( \inst3|ball_on~11_combout\ & ( (\inst2|red_out~0_combout\ & ((!\inst3|ball_on~10_combout\) # ((\inst3|ball_on~1_combout\) # (\inst3|LessThan3~6_combout\)))) ) ) # ( !\inst3|ball_on~11_combout\ & ( \inst2|red_out~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101000101010101010100010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_red_out~0_combout\,
	datab => \inst3|ALT_INV_ball_on~10_combout\,
	datac => \inst3|ALT_INV_LessThan3~6_combout\,
	datad => \inst3|ALT_INV_ball_on~1_combout\,
	dataf => \inst3|ALT_INV_ball_on~11_combout\,
	combout => \inst2|green_out~0_combout\);

-- Location: FF_X23_Y40_N52
\inst2|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|green_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|blue_out~q\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: MLABCELL_X23_Y40_N42
\inst2|green_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|green_out~1_combout\ = ( \inst3|LessThan3~6_combout\ & ( \inst3|ball_on~11_combout\ & ( (!\KEY[1]~input_o\ & \inst2|red_out~0_combout\) ) ) ) # ( !\inst3|LessThan3~6_combout\ & ( \inst3|ball_on~11_combout\ & ( (!\KEY[1]~input_o\ & 
-- (\inst2|red_out~0_combout\ & ((!\inst3|ball_on~10_combout\) # (\inst3|ball_on~1_combout\)))) ) ) ) # ( \inst3|LessThan3~6_combout\ & ( !\inst3|ball_on~11_combout\ & ( (!\KEY[1]~input_o\ & \inst2|red_out~0_combout\) ) ) ) # ( !\inst3|LessThan3~6_combout\ & 
-- ( !\inst3|ball_on~11_combout\ & ( (!\KEY[1]~input_o\ & \inst2|red_out~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000110100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_on~1_combout\,
	datab => \inst3|ALT_INV_ball_on~10_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \inst2|ALT_INV_red_out~0_combout\,
	datae => \inst3|ALT_INV_LessThan3~6_combout\,
	dataf => \inst3|ALT_INV_ball_on~11_combout\,
	combout => \inst2|green_out~1_combout\);

-- Location: FF_X23_Y40_N44
\inst2|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|green_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|green_out~q\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X19_Y40_N36
\inst2|red_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|red_out~1_combout\ = ( \inst2|video_on_h~q\ & ( (\inst2|video_on_v~q\ & \KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_video_on_v~q\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \inst2|ALT_INV_video_on_h~q\,
	combout => \inst2|red_out~1_combout\);

-- Location: FF_X19_Y40_N37
\inst2|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|red_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|red_out~q\);

-- Location: LABCELL_X24_Y27_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


