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

-- DATE "05/14/2024 10:26:05"

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
	key : IN std_logic_vector(1 DOWNTO 0);
	PS2_DAT : INOUT std_logic;
	PS2_CLK : INOUT std_logic;
	sw : IN std_logic_vector(9 DOWNTO 0);
	VGA_HS : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 3);
	VGA_G : OUT std_logic_vector(3 DOWNTO 3);
	VGA_R : OUT std_logic_vector(3 DOWNTO 3)
	);
END toplevel;

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
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[3]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[3]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PS2_DAT	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PS2_CLK	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- key[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 3);
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \inst5|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst5|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|Equal2~0_combout\ : std_logic;
SIGNAL \inst5|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst5|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst5|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst5|inhibit_wait_count[0]~0_combout\ : std_logic;
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
SIGNAL \inst5|Add0~6\ : std_logic;
SIGNAL \inst5|Add0~1_sumout\ : std_logic;
SIGNAL \inst5|Selector0~0_combout\ : std_logic;
SIGNAL \inst5|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst5|Selector1~0_combout\ : std_logic;
SIGNAL \inst5|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst5|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst5|INCNT~3_combout\ : std_logic;
SIGNAL \inst5|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst5|OUTCNT[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|send_char~0_combout\ : std_logic;
SIGNAL \inst5|send_char~feeder_combout\ : std_logic;
SIGNAL \inst5|send_char~q\ : std_logic;
SIGNAL \inst5|output_ready~0_combout\ : std_logic;
SIGNAL \inst5|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst5|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst5|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|output_ready~q\ : std_logic;
SIGNAL \inst5|Selector3~0_combout\ : std_logic;
SIGNAL \inst5|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst5|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst5|INCNT~0_combout\ : std_logic;
SIGNAL \inst5|INCNT~2_combout\ : std_logic;
SIGNAL \inst5|INCNT~4_combout\ : std_logic;
SIGNAL \PS2_DAT~input_o\ : std_logic;
SIGNAL \inst5|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst5|READ_CHAR~q\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|iready_set~0_combout\ : std_logic;
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
SIGNAL \inst2|Add0~38\ : std_logic;
SIGNAL \inst2|Add0~33_sumout\ : std_logic;
SIGNAL \inst2|Add0~34\ : std_logic;
SIGNAL \inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
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
SIGNAL \inst2|Add0~37_sumout\ : std_logic;
SIGNAL \inst2|h_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|h_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~6\ : std_logic;
SIGNAL \inst2|Add1~25_sumout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|v_count[5]~0_combout\ : std_logic;
SIGNAL \inst2|Add1~26\ : std_logic;
SIGNAL \inst2|Add1~9_sumout\ : std_logic;
SIGNAL \inst2|Add1~10\ : std_logic;
SIGNAL \inst2|Add1~13_sumout\ : std_logic;
SIGNAL \inst2|Add1~14\ : std_logic;
SIGNAL \inst2|Add1~21_sumout\ : std_logic;
SIGNAL \inst2|Add1~22\ : std_logic;
SIGNAL \inst2|Add1~17_sumout\ : std_logic;
SIGNAL \inst2|Add1~18\ : std_logic;
SIGNAL \inst2|Add1~29_sumout\ : std_logic;
SIGNAL \inst2|v_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|process_0~7_combout\ : std_logic;
SIGNAL \inst2|Add1~34\ : std_logic;
SIGNAL \inst2|Add1~37_sumout\ : std_logic;
SIGNAL \inst2|Add1~38\ : std_logic;
SIGNAL \inst2|Add1~1_sumout\ : std_logic;
SIGNAL \inst2|Add1~2\ : std_logic;
SIGNAL \inst2|Add1~5_sumout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|vert_sync~q\ : std_logic;
SIGNAL \inst2|vert_sync_out~q\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|process_0~8_combout\ : std_logic;
SIGNAL \inst2|horiz_sync~q\ : std_logic;
SIGNAL \inst2|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst2|horiz_sync_out~q\ : std_logic;
SIGNAL \inst5|PACKET_COUNT~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \inst5|new_cursor_column[3]~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[1]~0_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst5|Equal4~0_combout\ : std_logic;
SIGNAL \inst5|right_button~0_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR3[5]~feeder_combout\ : std_logic;
SIGNAL \inst5|Equal3~0_combout\ : std_logic;
SIGNAL \inst5|Add4~29_sumout\ : std_logic;
SIGNAL \inst5|new_cursor_row[9]~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR3[3]~feeder_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add4~9_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst5|cursor_row~6_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR1[1]~0_combout\ : std_logic;
SIGNAL \inst5|Add4~10\ : std_logic;
SIGNAL \inst5|Add4~11\ : std_logic;
SIGNAL \inst5|Add4~25_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~11_combout\ : std_logic;
SIGNAL \inst5|Add4~26\ : std_logic;
SIGNAL \inst5|Add4~27\ : std_logic;
SIGNAL \inst5|Add4~21_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~10_combout\ : std_logic;
SIGNAL \inst5|Add4~22\ : std_logic;
SIGNAL \inst5|Add4~23\ : std_logic;
SIGNAL \inst5|Add4~19\ : std_logic;
SIGNAL \inst5|Add4~15\ : std_logic;
SIGNAL \inst5|Add4~39\ : std_logic;
SIGNAL \inst5|Add4~33_sumout\ : std_logic;
SIGNAL \inst5|LessThan5~1_combout\ : std_logic;
SIGNAL \inst5|Add4~17_sumout\ : std_logic;
SIGNAL \inst5|LessThan5~0_combout\ : std_logic;
SIGNAL \inst5|LessThan5~2_combout\ : std_logic;
SIGNAL \inst5|cursor_row~9_combout\ : std_logic;
SIGNAL \inst5|Add4~18\ : std_logic;
SIGNAL \inst5|Add4~13_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~7_combout\ : std_logic;
SIGNAL \inst5|cursor_row~8_combout\ : std_logic;
SIGNAL \inst5|Add4~14\ : std_logic;
SIGNAL \inst5|Add4~37_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~12_combout\ : std_logic;
SIGNAL \inst5|cursor_row~13_combout\ : std_logic;
SIGNAL \inst5|Add4~38\ : std_logic;
SIGNAL \inst5|Add4~35\ : std_logic;
SIGNAL \inst5|Add4~31\ : std_logic;
SIGNAL \inst5|Add4~5_sumout\ : std_logic;
SIGNAL \inst5|RECV_UART~1_combout\ : std_logic;
SIGNAL \inst5|RECV_UART~0_combout\ : std_logic;
SIGNAL \inst5|RECV_UART~2_combout\ : std_logic;
SIGNAL \inst5|cursor_row~4_combout\ : std_logic;
SIGNAL \inst5|cursor_row~5_combout\ : std_logic;
SIGNAL \inst5|Add4~34\ : std_logic;
SIGNAL \inst5|Add4~30\ : std_logic;
SIGNAL \inst5|Add4~6\ : std_logic;
SIGNAL \inst5|Add4~7\ : std_logic;
SIGNAL \inst5|Add4~1_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~0_combout\ : std_logic;
SIGNAL \inst5|cursor_row~1_combout\ : std_logic;
SIGNAL \inst5|cursor_row~2_combout\ : std_logic;
SIGNAL \inst5|cursor_row~3_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out~0_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[5]~1_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[4]~2_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[3]~3_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[2]~4_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[1]~5_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[3]~6_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \inst5|cursor_column~4_combout\ : std_logic;
SIGNAL \inst5|cursor_column~9_combout\ : std_logic;
SIGNAL \inst5|Add5~18\ : std_logic;
SIGNAL \inst5|Add5~37_sumout\ : std_logic;
SIGNAL \inst5|Add5~38\ : std_logic;
SIGNAL \inst5|Add5~33_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~8_combout\ : std_logic;
SIGNAL \inst5|Add5~34\ : std_logic;
SIGNAL \inst5|Add5~29_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~7_combout\ : std_logic;
SIGNAL \inst5|Add5~30\ : std_logic;
SIGNAL \inst5|Add5~25_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~6_combout\ : std_logic;
SIGNAL \inst5|Add5~26\ : std_logic;
SIGNAL \inst5|Add5~21_sumout\ : std_logic;
SIGNAL \inst5|RECV_UART~3_combout\ : std_logic;
SIGNAL \inst5|RECV_UART~4_combout\ : std_logic;
SIGNAL \inst5|cursor_column[0]~1_combout\ : std_logic;
SIGNAL \inst5|Add5~17_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~5_combout\ : std_logic;
SIGNAL \inst5|Add5~22\ : std_logic;
SIGNAL \inst5|Add5~1_sumout\ : std_logic;
SIGNAL \inst5|LessThan9~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|cursor_column~0_combout\ : std_logic;
SIGNAL \inst5|Add5~2\ : std_logic;
SIGNAL \inst5|Add5~9_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~3_combout\ : std_logic;
SIGNAL \inst5|Add5~10\ : std_logic;
SIGNAL \inst5|Add5~5_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~2_combout\ : std_logic;
SIGNAL \inst5|Add5~6\ : std_logic;
SIGNAL \inst5|Add5~13_sumout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[6]~0_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[5]~6_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[4]~1_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[3]~5_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[2]~4_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[1]~3_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[0]~2_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR1[1]~1_combout\ : std_logic;
SIGNAL \inst5|right_button~q\ : std_logic;
SIGNAL \inst5|left_button~q\ : std_logic;
SIGNAL \inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \inst2|video_on_h~q\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|video_on_v~q\ : std_logic;
SIGNAL \inst2|green_out~0_combout\ : std_logic;
SIGNAL \inst3|bottom_cloud_x_pos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|top_cloud_x_pos[1]~0_combout\ : std_logic;
SIGNAL \inst3|Add16~38_cout\ : std_logic;
SIGNAL \inst3|Add16~9_sumout\ : std_logic;
SIGNAL \inst3|Add16~10\ : std_logic;
SIGNAL \inst3|Add16~17_sumout\ : std_logic;
SIGNAL \inst3|Add16~18\ : std_logic;
SIGNAL \inst3|Add16~13_sumout\ : std_logic;
SIGNAL \inst3|Add16~14\ : std_logic;
SIGNAL \inst3|Add16~5_sumout\ : std_logic;
SIGNAL \inst3|Add16~6\ : std_logic;
SIGNAL \inst3|Add16~29_sumout\ : std_logic;
SIGNAL \inst3|bottom_cloud_x_pos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add16~30\ : std_logic;
SIGNAL \inst3|Add16~25_sumout\ : std_logic;
SIGNAL \inst3|Add16~26\ : std_logic;
SIGNAL \inst3|Add16~21_sumout\ : std_logic;
SIGNAL \inst3|Add4~6\ : std_logic;
SIGNAL \inst3|Add4~18\ : std_logic;
SIGNAL \inst3|Add4~13_sumout\ : std_logic;
SIGNAL \inst3|Add4~14\ : std_logic;
SIGNAL \inst3|Add4~9_sumout\ : std_logic;
SIGNAL \inst3|Add4~17_sumout\ : std_logic;
SIGNAL \inst3|LessThan8~5_combout\ : std_logic;
SIGNAL \inst3|LessThan9~2_combout\ : std_logic;
SIGNAL \inst3|LessThan9~3_combout\ : std_logic;
SIGNAL \inst2|pixel_column[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|LessThan9~0_combout\ : std_logic;
SIGNAL \inst3|LessThan9~1_combout\ : std_logic;
SIGNAL \inst3|Add16~22\ : std_logic;
SIGNAL \inst3|Add16~1_sumout\ : std_logic;
SIGNAL \inst3|Add7~0_combout\ : std_logic;
SIGNAL \inst3|LessThan9~6_combout\ : std_logic;
SIGNAL \inst2|pixel_row[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|LessThan11~0_combout\ : std_logic;
SIGNAL \inst3|Add16~2\ : std_logic;
SIGNAL \inst3|Add16~33_sumout\ : std_logic;
SIGNAL \inst3|bottom_cloud_on~0_combout\ : std_logic;
SIGNAL \inst3|LessThan9~7_combout\ : std_logic;
SIGNAL \inst2|pixel_row[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|bottom_cloud_on~1_combout\ : std_logic;
SIGNAL \inst2|pixel_column[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add7~1_combout\ : std_logic;
SIGNAL \inst3|bottom_cloud_on~2_combout\ : std_logic;
SIGNAL \inst3|LessThan9~4_combout\ : std_logic;
SIGNAL \inst3|LessThan9~5_combout\ : std_logic;
SIGNAL \inst3|bottom_cloud_on~3_combout\ : std_logic;
SIGNAL \inst3|Add4~10\ : std_logic;
SIGNAL \inst3|Add4~1_sumout\ : std_logic;
SIGNAL \inst3|Add4~2\ : std_logic;
SIGNAL \inst3|Add4~21_sumout\ : std_logic;
SIGNAL \inst3|bottom_cloud_on~4_combout\ : std_logic;
SIGNAL \inst3|LessThan8~6_combout\ : std_logic;
SIGNAL \inst3|LessThan8~0_combout\ : std_logic;
SIGNAL \inst3|LessThan8~2_combout\ : std_logic;
SIGNAL \inst3|LessThan8~3_combout\ : std_logic;
SIGNAL \inst3|Add4~5_sumout\ : std_logic;
SIGNAL \inst3|LessThan8~1_combout\ : std_logic;
SIGNAL \inst3|LessThan8~4_combout\ : std_logic;
SIGNAL \inst3|bottom_cloud_on~combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|ball_on~0_combout\ : std_logic;
SIGNAL \inst3|LessThan12~1_combout\ : std_logic;
SIGNAL \inst3|Add14~34\ : std_logic;
SIGNAL \inst3|Add14~29_sumout\ : std_logic;
SIGNAL \inst3|Add14~30\ : std_logic;
SIGNAL \inst3|Add14~25_sumout\ : std_logic;
SIGNAL \inst3|ball_y_pos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|LessThan12~0_combout\ : std_logic;
SIGNAL \inst3|LessThan13~1_combout\ : std_logic;
SIGNAL \inst3|ball_y_motion~2_combout\ : std_logic;
SIGNAL \inst3|Add14~33_sumout\ : std_logic;
SIGNAL \inst3|ball_y_pos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|LessThan13~0_combout\ : std_logic;
SIGNAL \inst3|ball_y_motion~1_combout\ : std_logic;
SIGNAL \inst3|Add14~26\ : std_logic;
SIGNAL \inst3|Add14~21_sumout\ : std_logic;
SIGNAL \inst3|Add14~22\ : std_logic;
SIGNAL \inst3|Add14~5_sumout\ : std_logic;
SIGNAL \inst3|ball_y_pos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add14~6\ : std_logic;
SIGNAL \inst3|Add14~18\ : std_logic;
SIGNAL \inst3|Add14~13_sumout\ : std_logic;
SIGNAL \inst3|Add14~14\ : std_logic;
SIGNAL \inst3|Add14~9_sumout\ : std_logic;
SIGNAL \inst3|Add14~10\ : std_logic;
SIGNAL \inst3|Add14~1_sumout\ : std_logic;
SIGNAL \inst3|Add14~2\ : std_logic;
SIGNAL \inst3|Add14~37_sumout\ : std_logic;
SIGNAL \inst3|ball_y_motion~0_combout\ : std_logic;
SIGNAL \inst3|Add14~17_sumout\ : std_logic;
SIGNAL \inst3|Add3~0_combout\ : std_logic;
SIGNAL \inst3|ball_on~1_combout\ : std_logic;
SIGNAL \inst3|Add2~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|ball_on~2_combout\ : std_logic;
SIGNAL \inst3|ball_on~3_combout\ : std_logic;
SIGNAL \inst3|LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|Add2~3_combout\ : std_logic;
SIGNAL \inst3|Add2~2_combout\ : std_logic;
SIGNAL \inst3|Add2~1_combout\ : std_logic;
SIGNAL \inst3|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|LessThan2~3_combout\ : std_logic;
SIGNAL \inst3|LessThan2~4_combout\ : std_logic;
SIGNAL \inst3|LessThan3~0_combout\ : std_logic;
SIGNAL \inst3|LessThan3~1_combout\ : std_logic;
SIGNAL \inst3|LessThan3~2_combout\ : std_logic;
SIGNAL \inst3|LessThan3~3_combout\ : std_logic;
SIGNAL \inst3|LessThan3~4_combout\ : std_logic;
SIGNAL \inst3|LessThan3~5_combout\ : std_logic;
SIGNAL \inst3|LessThan3~6_combout\ : std_logic;
SIGNAL \inst3|ball_on~combout\ : std_logic;
SIGNAL \inst10|LessThan9~0_combout\ : std_logic;
SIGNAL \inst10|char_address~0_combout\ : std_logic;
SIGNAL \inst3|LessThan11~1_combout\ : std_logic;
SIGNAL \inst10|text_col[2]~0_combout\ : std_logic;
SIGNAL \inst10|text_col[0]~2_combout\ : std_logic;
SIGNAL \inst10|LessThan19~0_combout\ : std_logic;
SIGNAL \inst10|text_row~0_combout\ : std_logic;
SIGNAL \inst10|text_row[0]~1_combout\ : std_logic;
SIGNAL \inst10|text_row[1]~2_combout\ : std_logic;
SIGNAL \inst10|text_row[2]~3_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \inst10|Equal0~1_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \inst10|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|char_address~1_combout\ : std_logic;
SIGNAL \inst10|char_address~3_combout\ : std_logic;
SIGNAL \inst10|char_address~20_combout\ : std_logic;
SIGNAL \inst10|char_address~32_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \inst10|Equal1~0_combout\ : std_logic;
SIGNAL \inst10|char_address~16_combout\ : std_logic;
SIGNAL \inst10|LessThan4~1_combout\ : std_logic;
SIGNAL \inst10|char_address~14_combout\ : std_logic;
SIGNAL \inst10|char_address~39_combout\ : std_logic;
SIGNAL \inst10|char_address[0]~40_combout\ : std_logic;
SIGNAL \inst10|char_address~21_combout\ : std_logic;
SIGNAL \inst10|char_address~6_combout\ : std_logic;
SIGNAL \inst10|char_address~24_combout\ : std_logic;
SIGNAL \inst10|char_address~22_combout\ : std_logic;
SIGNAL \inst10|char_address~23_combout\ : std_logic;
SIGNAL \inst10|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|Equal0~3_combout\ : std_logic;
SIGNAL \inst10|LessThan10~0_combout\ : std_logic;
SIGNAL \inst10|LessThan9~1_combout\ : std_logic;
SIGNAL \inst10|char_address~17_combout\ : std_logic;
SIGNAL \inst10|char_address[0]~37_combout\ : std_logic;
SIGNAL \inst10|char_address[0]~38_combout\ : std_logic;
SIGNAL \inst10|char_address~11_combout\ : std_logic;
SIGNAL \inst10|char_address~12_combout\ : std_logic;
SIGNAL \inst10|char_address~33_combout\ : std_logic;
SIGNAL \inst10|char_address[0]~34_combout\ : std_logic;
SIGNAL \inst10|char_address[4]~36_combout\ : std_logic;
SIGNAL \inst10|Equal1~1_combout\ : std_logic;
SIGNAL \inst10|char_address[0]~35_combout\ : std_logic;
SIGNAL \inst10|char_address[0]~41_combout\ : std_logic;
SIGNAL \inst10|char_address~7_combout\ : std_logic;
SIGNAL \inst10|char_address~30_combout\ : std_logic;
SIGNAL \inst10|LessThan4~0_combout\ : std_logic;
SIGNAL \inst10|char_address[5]~31_combout\ : std_logic;
SIGNAL \inst10|char_address~8_combout\ : std_logic;
SIGNAL \inst10|char_address~9_combout\ : std_logic;
SIGNAL \inst10|char_address~10_combout\ : std_logic;
SIGNAL \inst10|char_address~4_combout\ : std_logic;
SIGNAL \inst10|char_address~2_combout\ : std_logic;
SIGNAL \inst10|char_address~5_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~18_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~19_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~25_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~27_combout\ : std_logic;
SIGNAL \inst10|char_address[5]~28_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~26_combout\ : std_logic;
SIGNAL \inst10|char_address~13_combout\ : std_logic;
SIGNAL \inst10|char_address~15_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~29_combout\ : std_logic;
SIGNAL \inst10|char_address[0]~42_combout\ : std_logic;
SIGNAL \inst10|char_address~43_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~45_combout\ : std_logic;
SIGNAL \inst10|char_address~44_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~46_combout\ : std_logic;
SIGNAL \inst10|char_address[4]~47_combout\ : std_logic;
SIGNAL \inst10|char_address[1]~50_combout\ : std_logic;
SIGNAL \inst10|char_address[1]~51_combout\ : std_logic;
SIGNAL \inst10|char_address~48_combout\ : std_logic;
SIGNAL \inst10|char_address[1]~49_combout\ : std_logic;
SIGNAL \inst10|char_address[1]~52_combout\ : std_logic;
SIGNAL \inst10|char_address[1]~53_combout\ : std_logic;
SIGNAL \inst10|char_address~55_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~62_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~63_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~65_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~60_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~61_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~64_combout\ : std_logic;
SIGNAL \inst10|char_address~56_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~57_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~58_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~59_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~66_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~54_combout\ : std_logic;
SIGNAL \inst10|char_address[2]~67_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~70_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~73_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~74_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~72_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~75_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~68_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~69_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~71_combout\ : std_logic;
SIGNAL \inst10|char_address[3]~76_combout\ : std_logic;
SIGNAL \inst10|char_address[4]~82_combout\ : std_logic;
SIGNAL \inst10|char_address[4]~78_combout\ : std_logic;
SIGNAL \inst10|char_address[4]~79_combout\ : std_logic;
SIGNAL \inst10|char_address[4]~80_combout\ : std_logic;
SIGNAL \inst10|char_address[4]~81_combout\ : std_logic;
SIGNAL \inst10|char_address~77_combout\ : std_logic;
SIGNAL \inst10|char_address[4]~83_combout\ : std_logic;
SIGNAL \inst10|char_address~84_combout\ : std_logic;
SIGNAL \inst10|char_address[5]~85_combout\ : std_logic;
SIGNAL \inst10|text_col[1]~1_combout\ : std_logic;
SIGNAL \inst9|Mux0~4_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Add15~38_cout\ : std_logic;
SIGNAL \inst3|Add15~9_sumout\ : std_logic;
SIGNAL \inst3|Add15~10\ : std_logic;
SIGNAL \inst3|Add15~17_sumout\ : std_logic;
SIGNAL \inst3|Add15~18\ : std_logic;
SIGNAL \inst3|Add15~13_sumout\ : std_logic;
SIGNAL \inst3|Add15~14\ : std_logic;
SIGNAL \inst3|Add15~5_sumout\ : std_logic;
SIGNAL \inst3|Add15~6\ : std_logic;
SIGNAL \inst3|Add15~29_sumout\ : std_logic;
SIGNAL \inst3|Add15~30\ : std_logic;
SIGNAL \inst3|Add15~25_sumout\ : std_logic;
SIGNAL \inst3|top_cloud_x_pos[7]~2_combout\ : std_logic;
SIGNAL \inst3|Add15~26\ : std_logic;
SIGNAL \inst3|Add15~21_sumout\ : std_logic;
SIGNAL \inst3|Add5~1_combout\ : std_logic;
SIGNAL \inst3|Add15~22\ : std_logic;
SIGNAL \inst3|Add15~1_sumout\ : std_logic;
SIGNAL \inst3|top_cloud_x_pos[9]~1_combout\ : std_logic;
SIGNAL \inst3|Add15~2\ : std_logic;
SIGNAL \inst3|Add15~33_sumout\ : std_logic;
SIGNAL \inst3|top_cloud_on~0_combout\ : std_logic;
SIGNAL \inst3|top_cloud_on~1_combout\ : std_logic;
SIGNAL \inst3|top_cloud_x_pos[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|LessThan5~6_combout\ : std_logic;
SIGNAL \inst3|top_cloud_on~2_combout\ : std_logic;
SIGNAL \inst3|LessThan5~1_combout\ : std_logic;
SIGNAL \inst3|LessThan5~2_combout\ : std_logic;
SIGNAL \inst3|Add5~0_combout\ : std_logic;
SIGNAL \inst3|LessThan5~5_combout\ : std_logic;
SIGNAL \inst3|LessThan5~0_combout\ : std_logic;
SIGNAL \inst3|LessThan5~3_combout\ : std_logic;
SIGNAL \inst3|LessThan5~4_combout\ : std_logic;
SIGNAL \inst3|top_cloud_on~3_combout\ : std_logic;
SIGNAL \inst3|top_cloud_x_pos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|LessThan4~5_combout\ : std_logic;
SIGNAL \inst3|LessThan4~6_combout\ : std_logic;
SIGNAL \inst3|LessThan4~1_combout\ : std_logic;
SIGNAL \inst3|LessThan4~3_combout\ : std_logic;
SIGNAL \inst3|LessThan4~2_combout\ : std_logic;
SIGNAL \inst3|LessThan4~4_combout\ : std_logic;
SIGNAL \inst3|LessThan4~0_combout\ : std_logic;
SIGNAL \inst3|Add6~34_cout\ : std_logic;
SIGNAL \inst3|Add6~30_cout\ : std_logic;
SIGNAL \inst3|Add6~26_cout\ : std_logic;
SIGNAL \inst3|Add6~22_cout\ : std_logic;
SIGNAL \inst3|Add6~18_cout\ : std_logic;
SIGNAL \inst3|Add6~14_cout\ : std_logic;
SIGNAL \inst3|Add6~10_cout\ : std_logic;
SIGNAL \inst3|Add6~6_cout\ : std_logic;
SIGNAL \inst3|Add6~1_sumout\ : std_logic;
SIGNAL \inst3|top_cloud_on~4_combout\ : std_logic;
SIGNAL \inst3|top_cloud_on~combout\ : std_logic;
SIGNAL \inst2|blue_out~0_combout\ : std_logic;
SIGNAL \inst2|blue_out~q\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst2|green_out~1_combout\ : std_logic;
SIGNAL \inst2|green_out~q\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \inst2|red_out~0_combout\ : std_logic;
SIGNAL \inst2|red_out~q\ : std_logic;
SIGNAL \inst5|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|bottom_cloud_x_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|top_cloud_x_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst5|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|ball_y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst5|inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|pll2_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|ALT_INV_top_cloud_x_pos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_top_cloud_x_pos[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_row[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_row[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_bottom_cloud_x_pos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_bottom_cloud_x_pos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_v_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_PS2_DAT~input_o\ : std_logic;
SIGNAL \inst7|ALT_INV_SevenSeg_out[1]~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst5|ALT_INV_SHIFTOUT\ : std_logic_vector(9 DOWNTO 3);
SIGNAL \inst5|ALT_INV_mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst5|ALT_INV_iready_set~q\ : std_logic;
SIGNAL \inst5|ALT_INV_OUTCNT~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_SHIFTIN\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \inst3|ALT_INV_LessThan13~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan13~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan12~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan12~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_send_char~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst5|ALT_INV_OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|ALT_INV_cursor_row~12_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_row~7_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_motion\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|ALT_INV_text_col[0]~2_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~84_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[4]~82_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[4]~81_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[4]~80_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[4]~79_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[4]~78_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~77_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[3]~75_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[3]~74_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[3]~73_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[3]~72_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[3]~71_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[3]~70_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[3]~69_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[3]~68_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~66_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~65_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~64_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~63_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~62_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~61_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~60_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~59_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~58_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~57_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~56_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~55_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~54_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[1]~52_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[1]~51_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[1]~50_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[1]~49_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~48_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[4]~47_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~46_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~45_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~44_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~43_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[0]~41_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[0]~40_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~39_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[0]~38_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[0]~37_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[4]~36_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[0]~35_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[0]~34_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~33_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~32_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[5]~31_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~30_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~29_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[5]~28_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[3]~27_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~26_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~25_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~24_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~23_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~22_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~21_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~20_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~19_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address[2]~18_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~17_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~16_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~15_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~14_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~13_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~12_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~11_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~10_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~9_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~8_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~7_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~6_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~5_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~4_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~3_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~2_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_text_row~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_LessThan19~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|ALT_INV_send_char~q\ : std_logic;
SIGNAL \inst5|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst5|ALT_INV_PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|ALT_INV_cursor_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst10|ALT_INV_text_col[1]~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_text_col[2]~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_char_address~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_output_ready~q\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|ALT_INV_new_cursor_column[3]~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_top_cloud_on~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_top_cloud_on~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_top_cloud_on~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_top_cloud_on~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_top_cloud_on~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_top_cloud_on~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_top_cloud_x_pos\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \inst3|ALT_INV_LessThan5~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add5~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan5~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan5~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan4~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan4~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan4~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_bottom_cloud_on~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_bottom_cloud_on~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_bottom_cloud_on~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_bottom_cloud_on~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_bottom_cloud_on~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|ALT_INV_bottom_cloud_on~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_bottom_cloud_x_pos\ : std_logic_vector(10 DOWNTO 2);
SIGNAL \inst3|ALT_INV_LessThan9~7_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add7~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan9~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add7~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_LessThan9~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan9~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan8~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan8~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan8~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan8~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan8~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_green_out~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_video_on_h~q\ : std_logic;
SIGNAL \inst2|ALT_INV_video_on_v~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_RECV_UART~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_RECV_UART~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Equal0~0_combout\ : std_logic;
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
SIGNAL \inst5|ALT_INV_left_button~q\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|ALT_INV_SevenSeg_out[1]~5_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_SevenSeg_out~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add15~25_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add15~1_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|ALT_INV_h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|ALT_INV_new_cursor_row\ : std_logic_vector(9 DOWNTO 0);

BEGIN

VGA_VS <= ww_VGA_VS;
ww_CLOCK_50 <= CLOCK_50;
ww_key <= key;
ww_sw <= sw;
VGA_HS <= ww_VGA_HS;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
VGA_R <= ww_VGA_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst10|char_address[5]~85_combout\ & \inst10|char_address[4]~83_combout\ & \inst10|char_address[3]~76_combout\ & \inst10|char_address[2]~67_combout\ & 
\inst10|char_address[1]~53_combout\ & \inst10|char_address[0]~42_combout\ & \inst10|text_row[2]~3_combout\ & \inst10|text_row[1]~2_combout\ & \inst10|text_row[0]~1_combout\);

\inst9|altsyncram_component|auto_generated|q_a\(0) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst9|altsyncram_component|auto_generated|q_a\(1) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst9|altsyncram_component|auto_generated|q_a\(2) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst9|altsyncram_component|auto_generated|q_a\(3) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst9|altsyncram_component|auto_generated|q_a\(4) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst9|altsyncram_component|auto_generated|q_a\(5) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst9|altsyncram_component|auto_generated|q_a\(6) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst9|altsyncram_component|auto_generated|q_a\(7) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

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
\inst3|ALT_INV_top_cloud_x_pos[7]~DUPLICATE_q\ <= NOT \inst3|top_cloud_x_pos[7]~DUPLICATE_q\;
\inst3|ALT_INV_top_cloud_x_pos[9]~DUPLICATE_q\ <= NOT \inst3|top_cloud_x_pos[9]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[2]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[2]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[3]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[4]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_row[3]~DUPLICATE_q\ <= NOT \inst2|pixel_row[3]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\ <= NOT \inst2|pixel_column[9]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\ <= NOT \inst2|pixel_column[0]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_row[0]~DUPLICATE_q\ <= NOT \inst2|pixel_row[0]~DUPLICATE_q\;
\inst3|ALT_INV_bottom_cloud_x_pos[6]~DUPLICATE_q\ <= NOT \inst3|bottom_cloud_x_pos[6]~DUPLICATE_q\;
\inst3|ALT_INV_bottom_cloud_x_pos[7]~DUPLICATE_q\ <= NOT \inst3|bottom_cloud_x_pos[7]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[8]~DUPLICATE_q\ <= NOT \inst2|h_count[8]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[9]~DUPLICATE_q\ <= NOT \inst2|h_count[9]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[4]~DUPLICATE_q\ <= NOT \inst2|h_count[4]~DUPLICATE_q\;
\inst2|ALT_INV_v_count[6]~DUPLICATE_q\ <= NOT \inst2|v_count[6]~DUPLICATE_q\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[8]~input_o\ <= NOT \sw[8]~input_o\;
\ALT_INV_sw[9]~input_o\ <= NOT \sw[9]~input_o\;
\ALT_INV_key[0]~input_o\ <= NOT \key[0]~input_o\;
\ALT_INV_key[1]~input_o\ <= NOT \key[1]~input_o\;
\ALT_INV_PS2_DAT~input_o\ <= NOT \PS2_DAT~input_o\;
\inst7|ALT_INV_SevenSeg_out[1]~3_combout\ <= NOT \inst7|SevenSeg_out[1]~3_combout\;
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
\inst5|ALT_INV_SHIFTOUT\(3) <= NOT \inst5|SHIFTOUT\(3);
\inst5|ALT_INV_mouse_state.WAIT_CMD_ACK~q\ <= NOT \inst5|mouse_state.WAIT_CMD_ACK~q\;
\inst5|ALT_INV_iready_set~q\ <= NOT \inst5|iready_set~q\;
\inst5|ALT_INV_OUTCNT~3_combout\ <= NOT \inst5|OUTCNT~3_combout\;
\inst5|ALT_INV_SHIFTIN\(8) <= NOT \inst5|SHIFTIN\(8);
\inst3|ALT_INV_LessThan13~1_combout\ <= NOT \inst3|LessThan13~1_combout\;
\inst3|ALT_INV_LessThan13~0_combout\ <= NOT \inst3|LessThan13~0_combout\;
\inst3|ALT_INV_LessThan12~1_combout\ <= NOT \inst3|LessThan12~1_combout\;
\inst3|ALT_INV_LessThan12~0_combout\ <= NOT \inst3|LessThan12~0_combout\;
\inst5|ALT_INV_send_char~0_combout\ <= NOT \inst5|send_char~0_combout\;
\inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\ <= NOT \inst5|mouse_state.INPUT_PACKETS~q\;
\inst5|ALT_INV_OUTCNT\(0) <= NOT \inst5|OUTCNT\(0);
\inst5|ALT_INV_SHIFTIN\(5) <= NOT \inst5|SHIFTIN\(5);
\inst5|ALT_INV_cursor_row~12_combout\ <= NOT \inst5|cursor_row~12_combout\;
\inst5|ALT_INV_SHIFTIN\(6) <= NOT \inst5|SHIFTIN\(6);
\inst5|ALT_INV_SHIFTIN\(3) <= NOT \inst5|SHIFTIN\(3);
\inst5|ALT_INV_cursor_row~7_combout\ <= NOT \inst5|cursor_row~7_combout\;
\inst5|ALT_INV_LessThan5~2_combout\ <= NOT \inst5|LessThan5~2_combout\;
\inst5|ALT_INV_LessThan5~1_combout\ <= NOT \inst5|LessThan5~1_combout\;
\inst5|ALT_INV_LessThan5~0_combout\ <= NOT \inst5|LessThan5~0_combout\;
\inst5|ALT_INV_SHIFTIN\(7) <= NOT \inst5|SHIFTIN\(7);
\inst5|ALT_INV_inhibit_wait_count\(10) <= NOT \inst5|inhibit_wait_count\(10);
\inst5|ALT_INV_inhibit_wait_count\(11) <= NOT \inst5|inhibit_wait_count\(11);
\inst3|ALT_INV_ball_y_motion\(0) <= NOT \inst3|ball_y_motion\(0);
\inst3|ALT_INV_ball_y_motion\(1) <= NOT \inst3|ball_y_motion\(1);
\inst3|ALT_INV_ball_y_motion\(3) <= NOT \inst3|ball_y_motion\(3);
\inst10|ALT_INV_text_col[0]~2_combout\ <= NOT \inst10|text_col[0]~2_combout\;
\inst10|ALT_INV_char_address~84_combout\ <= NOT \inst10|char_address~84_combout\;
\inst10|ALT_INV_char_address[4]~82_combout\ <= NOT \inst10|char_address[4]~82_combout\;
\inst10|ALT_INV_char_address[4]~81_combout\ <= NOT \inst10|char_address[4]~81_combout\;
\inst10|ALT_INV_char_address[4]~80_combout\ <= NOT \inst10|char_address[4]~80_combout\;
\inst10|ALT_INV_char_address[4]~79_combout\ <= NOT \inst10|char_address[4]~79_combout\;
\inst10|ALT_INV_char_address[4]~78_combout\ <= NOT \inst10|char_address[4]~78_combout\;
\inst10|ALT_INV_char_address~77_combout\ <= NOT \inst10|char_address~77_combout\;
\inst10|ALT_INV_char_address[3]~75_combout\ <= NOT \inst10|char_address[3]~75_combout\;
\inst10|ALT_INV_char_address[3]~74_combout\ <= NOT \inst10|char_address[3]~74_combout\;
\inst10|ALT_INV_char_address[3]~73_combout\ <= NOT \inst10|char_address[3]~73_combout\;
\inst10|ALT_INV_char_address[3]~72_combout\ <= NOT \inst10|char_address[3]~72_combout\;
\inst10|ALT_INV_char_address[3]~71_combout\ <= NOT \inst10|char_address[3]~71_combout\;
\inst10|ALT_INV_char_address[3]~70_combout\ <= NOT \inst10|char_address[3]~70_combout\;
\inst10|ALT_INV_char_address[3]~69_combout\ <= NOT \inst10|char_address[3]~69_combout\;
\inst10|ALT_INV_char_address[3]~68_combout\ <= NOT \inst10|char_address[3]~68_combout\;
\inst10|ALT_INV_char_address[2]~66_combout\ <= NOT \inst10|char_address[2]~66_combout\;
\inst10|ALT_INV_char_address[2]~65_combout\ <= NOT \inst10|char_address[2]~65_combout\;
\inst10|ALT_INV_char_address[2]~64_combout\ <= NOT \inst10|char_address[2]~64_combout\;
\inst10|ALT_INV_char_address[2]~63_combout\ <= NOT \inst10|char_address[2]~63_combout\;
\inst10|ALT_INV_char_address[2]~62_combout\ <= NOT \inst10|char_address[2]~62_combout\;
\inst10|ALT_INV_char_address[2]~61_combout\ <= NOT \inst10|char_address[2]~61_combout\;
\inst10|ALT_INV_char_address[2]~60_combout\ <= NOT \inst10|char_address[2]~60_combout\;
\inst10|ALT_INV_char_address[2]~59_combout\ <= NOT \inst10|char_address[2]~59_combout\;
\inst10|ALT_INV_char_address[2]~58_combout\ <= NOT \inst10|char_address[2]~58_combout\;
\inst10|ALT_INV_char_address[2]~57_combout\ <= NOT \inst10|char_address[2]~57_combout\;
\inst10|ALT_INV_char_address~56_combout\ <= NOT \inst10|char_address~56_combout\;
\inst10|ALT_INV_char_address~55_combout\ <= NOT \inst10|char_address~55_combout\;
\inst10|ALT_INV_char_address[2]~54_combout\ <= NOT \inst10|char_address[2]~54_combout\;
\inst10|ALT_INV_char_address[1]~52_combout\ <= NOT \inst10|char_address[1]~52_combout\;
\inst10|ALT_INV_char_address[1]~51_combout\ <= NOT \inst10|char_address[1]~51_combout\;
\inst10|ALT_INV_char_address[1]~50_combout\ <= NOT \inst10|char_address[1]~50_combout\;
\inst10|ALT_INV_char_address[1]~49_combout\ <= NOT \inst10|char_address[1]~49_combout\;
\inst10|ALT_INV_char_address~48_combout\ <= NOT \inst10|char_address~48_combout\;
\inst10|ALT_INV_char_address[4]~47_combout\ <= NOT \inst10|char_address[4]~47_combout\;
\inst10|ALT_INV_char_address[2]~46_combout\ <= NOT \inst10|char_address[2]~46_combout\;
\inst10|ALT_INV_char_address[2]~45_combout\ <= NOT \inst10|char_address[2]~45_combout\;
\inst10|ALT_INV_char_address~44_combout\ <= NOT \inst10|char_address~44_combout\;
\inst10|ALT_INV_char_address~43_combout\ <= NOT \inst10|char_address~43_combout\;
\inst10|ALT_INV_char_address[0]~41_combout\ <= NOT \inst10|char_address[0]~41_combout\;
\inst10|ALT_INV_char_address[0]~40_combout\ <= NOT \inst10|char_address[0]~40_combout\;
\inst10|ALT_INV_char_address~39_combout\ <= NOT \inst10|char_address~39_combout\;
\inst10|ALT_INV_char_address[0]~38_combout\ <= NOT \inst10|char_address[0]~38_combout\;
\inst10|ALT_INV_char_address[0]~37_combout\ <= NOT \inst10|char_address[0]~37_combout\;
\inst10|ALT_INV_Equal0~3_combout\ <= NOT \inst10|Equal0~3_combout\;
\inst10|ALT_INV_char_address[4]~36_combout\ <= NOT \inst10|char_address[4]~36_combout\;
\inst10|ALT_INV_char_address[0]~35_combout\ <= NOT \inst10|char_address[0]~35_combout\;
\inst10|ALT_INV_Equal1~1_combout\ <= NOT \inst10|Equal1~1_combout\;
\inst10|ALT_INV_char_address[0]~34_combout\ <= NOT \inst10|char_address[0]~34_combout\;
\inst10|ALT_INV_char_address~33_combout\ <= NOT \inst10|char_address~33_combout\;
\inst10|ALT_INV_char_address~32_combout\ <= NOT \inst10|char_address~32_combout\;
\inst10|ALT_INV_char_address[5]~31_combout\ <= NOT \inst10|char_address[5]~31_combout\;
\inst10|ALT_INV_char_address~30_combout\ <= NOT \inst10|char_address~30_combout\;
\inst10|ALT_INV_char_address[2]~29_combout\ <= NOT \inst10|char_address[2]~29_combout\;
\inst10|ALT_INV_char_address[5]~28_combout\ <= NOT \inst10|char_address[5]~28_combout\;
\inst10|ALT_INV_char_address[3]~27_combout\ <= NOT \inst10|char_address[3]~27_combout\;
\inst10|ALT_INV_char_address[2]~26_combout\ <= NOT \inst10|char_address[2]~26_combout\;
\inst10|ALT_INV_char_address[2]~25_combout\ <= NOT \inst10|char_address[2]~25_combout\;
\inst10|ALT_INV_char_address~24_combout\ <= NOT \inst10|char_address~24_combout\;
\inst10|ALT_INV_char_address~23_combout\ <= NOT \inst10|char_address~23_combout\;
\inst10|ALT_INV_char_address~22_combout\ <= NOT \inst10|char_address~22_combout\;
\inst10|ALT_INV_char_address~21_combout\ <= NOT \inst10|char_address~21_combout\;
\inst10|ALT_INV_char_address~20_combout\ <= NOT \inst10|char_address~20_combout\;
\inst10|ALT_INV_char_address[2]~19_combout\ <= NOT \inst10|char_address[2]~19_combout\;
\inst10|ALT_INV_char_address[2]~18_combout\ <= NOT \inst10|char_address[2]~18_combout\;
\inst10|ALT_INV_char_address~17_combout\ <= NOT \inst10|char_address~17_combout\;
\inst10|ALT_INV_LessThan10~0_combout\ <= NOT \inst10|LessThan10~0_combout\;
\inst10|ALT_INV_char_address~16_combout\ <= NOT \inst10|char_address~16_combout\;
\inst10|ALT_INV_char_address~15_combout\ <= NOT \inst10|char_address~15_combout\;
\inst10|ALT_INV_char_address~14_combout\ <= NOT \inst10|char_address~14_combout\;
\inst10|ALT_INV_char_address~13_combout\ <= NOT \inst10|char_address~13_combout\;
\inst10|ALT_INV_char_address~12_combout\ <= NOT \inst10|char_address~12_combout\;
\inst10|ALT_INV_Equal1~0_combout\ <= NOT \inst10|Equal1~0_combout\;
\inst10|ALT_INV_char_address~11_combout\ <= NOT \inst10|char_address~11_combout\;
\inst10|ALT_INV_char_address~10_combout\ <= NOT \inst10|char_address~10_combout\;
\inst10|ALT_INV_char_address~9_combout\ <= NOT \inst10|char_address~9_combout\;
\inst10|ALT_INV_LessThan4~1_combout\ <= NOT \inst10|LessThan4~1_combout\;
\inst10|ALT_INV_char_address~8_combout\ <= NOT \inst10|char_address~8_combout\;
\inst10|ALT_INV_char_address~7_combout\ <= NOT \inst10|char_address~7_combout\;
\inst10|ALT_INV_char_address~6_combout\ <= NOT \inst10|char_address~6_combout\;
\inst10|ALT_INV_LessThan4~0_combout\ <= NOT \inst10|LessThan4~0_combout\;
\inst10|ALT_INV_char_address~5_combout\ <= NOT \inst10|char_address~5_combout\;
\inst10|ALT_INV_Equal0~2_combout\ <= NOT \inst10|Equal0~2_combout\;
\inst10|ALT_INV_Equal0~1_combout\ <= NOT \inst10|Equal0~1_combout\;
\inst10|ALT_INV_Equal0~0_combout\ <= NOT \inst10|Equal0~0_combout\;
\inst10|ALT_INV_char_address~4_combout\ <= NOT \inst10|char_address~4_combout\;
\inst10|ALT_INV_char_address~3_combout\ <= NOT \inst10|char_address~3_combout\;
\inst10|ALT_INV_LessThan9~1_combout\ <= NOT \inst10|LessThan9~1_combout\;
\inst10|ALT_INV_char_address~2_combout\ <= NOT \inst10|char_address~2_combout\;
\inst10|ALT_INV_char_address~1_combout\ <= NOT \inst10|char_address~1_combout\;
\inst10|ALT_INV_text_row~0_combout\ <= NOT \inst10|text_row~0_combout\;
\inst10|ALT_INV_LessThan19~0_combout\ <= NOT \inst10|LessThan19~0_combout\;
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
\inst5|ALT_INV_cursor_row\(5) <= NOT \inst5|cursor_row\(5);
\inst5|ALT_INV_PACKET_CHAR3\(6) <= NOT \inst5|PACKET_CHAR3\(6);
\inst5|ALT_INV_PACKET_CHAR3\(1) <= NOT \inst5|PACKET_CHAR3\(1);
\inst5|ALT_INV_cursor_row\(1) <= NOT \inst5|cursor_row\(1);
\inst5|ALT_INV_PACKET_CHAR3\(2) <= NOT \inst5|PACKET_CHAR3\(2);
\inst5|ALT_INV_cursor_row\(2) <= NOT \inst5|cursor_row\(2);
\inst5|ALT_INV_PACKET_CHAR3\(3) <= NOT \inst5|PACKET_CHAR3\(3);
\inst5|ALT_INV_cursor_row\(3) <= NOT \inst5|cursor_row\(3);
\inst5|ALT_INV_PACKET_CHAR3\(4) <= NOT \inst5|PACKET_CHAR3\(4);
\inst5|ALT_INV_cursor_row\(4) <= NOT \inst5|cursor_row\(4);
\inst5|ALT_INV_PACKET_CHAR3\(0) <= NOT \inst5|PACKET_CHAR3\(0);
\inst5|ALT_INV_cursor_row\(0) <= NOT \inst5|cursor_row\(0);
\inst5|ALT_INV_PACKET_CHAR3\(7) <= NOT \inst5|PACKET_CHAR3\(7);
\inst2|ALT_INV_Equal1~0_combout\ <= NOT \inst2|Equal1~0_combout\;
\inst2|ALT_INV_Equal0~0_combout\ <= NOT \inst2|Equal0~0_combout\;
\inst2|ALT_INV_process_0~6_combout\ <= NOT \inst2|process_0~6_combout\;
\inst2|ALT_INV_process_0~5_combout\ <= NOT \inst2|process_0~5_combout\;
\inst2|ALT_INV_process_0~4_combout\ <= NOT \inst2|process_0~4_combout\;
\inst2|ALT_INV_LessThan1~0_combout\ <= NOT \inst2|LessThan1~0_combout\;
\inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\ <= NOT \inst5|mouse_state.LOAD_COMMAND~q\;
\inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst5|mouse_state.INHIBIT_TRANS~q\;
\inst10|ALT_INV_text_col[1]~1_combout\ <= NOT \inst10|text_col[1]~1_combout\;
\inst10|ALT_INV_text_col[2]~0_combout\ <= NOT \inst10|text_col[2]~0_combout\;
\inst10|ALT_INV_char_address~0_combout\ <= NOT \inst10|char_address~0_combout\;
\inst3|ALT_INV_LessThan11~1_combout\ <= NOT \inst3|LessThan11~1_combout\;
\inst10|ALT_INV_LessThan9~0_combout\ <= NOT \inst10|LessThan9~0_combout\;
\inst5|ALT_INV_SHIFTIN\(1) <= NOT \inst5|SHIFTIN\(1);
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
\inst5|ALT_INV_new_cursor_column[3]~0_combout\ <= NOT \inst5|new_cursor_column[3]~0_combout\;
\inst2|ALT_INV_process_0~3_combout\ <= NOT \inst2|process_0~3_combout\;
\inst2|ALT_INV_process_0~2_combout\ <= NOT \inst2|process_0~2_combout\;
\inst2|ALT_INV_process_0~0_combout\ <= NOT \inst2|process_0~0_combout\;
\inst2|ALT_INV_LessThan7~0_combout\ <= NOT \inst2|LessThan7~0_combout\;
\inst3|ALT_INV_top_cloud_on~combout\ <= NOT \inst3|top_cloud_on~combout\;
\inst3|ALT_INV_top_cloud_on~4_combout\ <= NOT \inst3|top_cloud_on~4_combout\;
\inst3|ALT_INV_top_cloud_on~3_combout\ <= NOT \inst3|top_cloud_on~3_combout\;
\inst3|ALT_INV_top_cloud_on~2_combout\ <= NOT \inst3|top_cloud_on~2_combout\;
\inst3|ALT_INV_top_cloud_on~1_combout\ <= NOT \inst3|top_cloud_on~1_combout\;
\inst3|ALT_INV_top_cloud_on~0_combout\ <= NOT \inst3|top_cloud_on~0_combout\;
\inst3|ALT_INV_top_cloud_x_pos\(10) <= NOT \inst3|top_cloud_x_pos\(10);
\inst3|ALT_INV_LessThan5~6_combout\ <= NOT \inst3|LessThan5~6_combout\;
\inst3|ALT_INV_Add5~1_combout\ <= NOT \inst3|Add5~1_combout\;
\inst3|ALT_INV_LessThan5~5_combout\ <= NOT \inst3|LessThan5~5_combout\;
\inst3|ALT_INV_Add5~0_combout\ <= NOT \inst3|Add5~0_combout\;
\inst3|ALT_INV_LessThan5~4_combout\ <= NOT \inst3|LessThan5~4_combout\;
\inst3|ALT_INV_LessThan5~3_combout\ <= NOT \inst3|LessThan5~3_combout\;
\inst3|ALT_INV_LessThan5~2_combout\ <= NOT \inst3|LessThan5~2_combout\;
\inst3|ALT_INV_LessThan5~1_combout\ <= NOT \inst3|LessThan5~1_combout\;
\inst3|ALT_INV_LessThan5~0_combout\ <= NOT \inst3|LessThan5~0_combout\;
\inst3|ALT_INV_LessThan4~6_combout\ <= NOT \inst3|LessThan4~6_combout\;
\inst3|ALT_INV_LessThan4~5_combout\ <= NOT \inst3|LessThan4~5_combout\;
\inst3|ALT_INV_top_cloud_x_pos\(6) <= NOT \inst3|top_cloud_x_pos\(6);
\inst3|ALT_INV_top_cloud_x_pos\(7) <= NOT \inst3|top_cloud_x_pos\(7);
\inst3|ALT_INV_top_cloud_x_pos\(8) <= NOT \inst3|top_cloud_x_pos\(8);
\inst3|ALT_INV_LessThan4~4_combout\ <= NOT \inst3|LessThan4~4_combout\;
\inst3|ALT_INV_LessThan4~3_combout\ <= NOT \inst3|LessThan4~3_combout\;
\inst3|ALT_INV_LessThan4~2_combout\ <= NOT \inst3|LessThan4~2_combout\;
\inst3|ALT_INV_top_cloud_x_pos\(3) <= NOT \inst3|top_cloud_x_pos\(3);
\inst3|ALT_INV_top_cloud_x_pos\(4) <= NOT \inst3|top_cloud_x_pos\(4);
\inst3|ALT_INV_LessThan4~1_combout\ <= NOT \inst3|LessThan4~1_combout\;
\inst3|ALT_INV_top_cloud_x_pos\(2) <= NOT \inst3|top_cloud_x_pos\(2);
\inst3|ALT_INV_top_cloud_x_pos\(5) <= NOT \inst3|top_cloud_x_pos\(5);
\inst3|ALT_INV_LessThan4~0_combout\ <= NOT \inst3|LessThan4~0_combout\;
\inst3|ALT_INV_top_cloud_x_pos\(9) <= NOT \inst3|top_cloud_x_pos\(9);
\inst3|ALT_INV_ball_on~combout\ <= NOT \inst3|ball_on~combout\;
\inst3|ALT_INV_ball_on~3_combout\ <= NOT \inst3|ball_on~3_combout\;
\inst3|ALT_INV_ball_on~2_combout\ <= NOT \inst3|ball_on~2_combout\;
\inst3|ALT_INV_ball_on~1_combout\ <= NOT \inst3|ball_on~1_combout\;
\inst3|ALT_INV_ball_y_pos\(9) <= NOT \inst3|ball_y_pos\(9);
\inst3|ALT_INV_LessThan0~1_combout\ <= NOT \inst3|LessThan0~1_combout\;
\inst3|ALT_INV_LessThan1~0_combout\ <= NOT \inst3|LessThan1~0_combout\;
\inst3|ALT_INV_ball_on~0_combout\ <= NOT \inst3|ball_on~0_combout\;
\inst3|ALT_INV_LessThan0~0_combout\ <= NOT \inst3|LessThan0~0_combout\;
\inst3|ALT_INV_LessThan3~6_combout\ <= NOT \inst3|LessThan3~6_combout\;
\inst3|ALT_INV_LessThan3~5_combout\ <= NOT \inst3|LessThan3~5_combout\;
\inst3|ALT_INV_LessThan3~4_combout\ <= NOT \inst3|LessThan3~4_combout\;
\inst3|ALT_INV_LessThan3~3_combout\ <= NOT \inst3|LessThan3~3_combout\;
\inst3|ALT_INV_LessThan3~2_combout\ <= NOT \inst3|LessThan3~2_combout\;
\inst3|ALT_INV_LessThan3~1_combout\ <= NOT \inst3|LessThan3~1_combout\;
\inst3|ALT_INV_LessThan3~0_combout\ <= NOT \inst3|LessThan3~0_combout\;
\inst3|ALT_INV_Add3~0_combout\ <= NOT \inst3|Add3~0_combout\;
\inst3|ALT_INV_LessThan2~4_combout\ <= NOT \inst3|LessThan2~4_combout\;
\inst3|ALT_INV_LessThan2~3_combout\ <= NOT \inst3|LessThan2~3_combout\;
\inst3|ALT_INV_LessThan2~2_combout\ <= NOT \inst3|LessThan2~2_combout\;
\inst3|ALT_INV_LessThan2~1_combout\ <= NOT \inst3|LessThan2~1_combout\;
\inst3|ALT_INV_ball_y_pos\(0) <= NOT \inst3|ball_y_pos\(0);
\inst3|ALT_INV_ball_y_pos\(1) <= NOT \inst3|ball_y_pos\(1);
\inst3|ALT_INV_ball_y_pos\(2) <= NOT \inst3|ball_y_pos\(2);
\inst3|ALT_INV_ball_y_pos\(3) <= NOT \inst3|ball_y_pos\(3);
\inst3|ALT_INV_LessThan2~0_combout\ <= NOT \inst3|LessThan2~0_combout\;
\inst3|ALT_INV_Add2~3_combout\ <= NOT \inst3|Add2~3_combout\;
\inst3|ALT_INV_Add2~2_combout\ <= NOT \inst3|Add2~2_combout\;
\inst3|ALT_INV_Add2~1_combout\ <= NOT \inst3|Add2~1_combout\;
\inst3|ALT_INV_ball_y_pos\(5) <= NOT \inst3|ball_y_pos\(5);
\inst3|ALT_INV_ball_y_pos\(6) <= NOT \inst3|ball_y_pos\(6);
\inst3|ALT_INV_ball_y_pos\(7) <= NOT \inst3|ball_y_pos\(7);
\inst3|ALT_INV_ball_y_pos\(4) <= NOT \inst3|ball_y_pos\(4);
\inst3|ALT_INV_ball_y_pos\(8) <= NOT \inst3|ball_y_pos\(8);
\inst3|ALT_INV_Add2~0_combout\ <= NOT \inst3|Add2~0_combout\;
\inst3|ALT_INV_bottom_cloud_on~combout\ <= NOT \inst3|bottom_cloud_on~combout\;
\inst3|ALT_INV_bottom_cloud_on~4_combout\ <= NOT \inst3|bottom_cloud_on~4_combout\;
\inst3|ALT_INV_bottom_cloud_on~3_combout\ <= NOT \inst3|bottom_cloud_on~3_combout\;
\inst3|ALT_INV_bottom_cloud_on~2_combout\ <= NOT \inst3|bottom_cloud_on~2_combout\;
\inst3|ALT_INV_bottom_cloud_on~1_combout\ <= NOT \inst3|bottom_cloud_on~1_combout\;
\inst2|ALT_INV_pixel_row\(2) <= NOT \inst2|pixel_row\(2);
\inst2|ALT_INV_pixel_row\(3) <= NOT \inst2|pixel_row\(3);
\inst3|ALT_INV_bottom_cloud_on~0_combout\ <= NOT \inst3|bottom_cloud_on~0_combout\;
\inst3|ALT_INV_bottom_cloud_x_pos\(10) <= NOT \inst3|bottom_cloud_x_pos\(10);
\inst2|ALT_INV_pixel_row\(4) <= NOT \inst2|pixel_row\(4);
\inst2|ALT_INV_pixel_row\(6) <= NOT \inst2|pixel_row\(6);
\inst2|ALT_INV_pixel_row\(8) <= NOT \inst2|pixel_row\(8);
\inst3|ALT_INV_LessThan9~7_combout\ <= NOT \inst3|LessThan9~7_combout\;
\inst3|ALT_INV_Add7~1_combout\ <= NOT \inst3|Add7~1_combout\;
\inst3|ALT_INV_LessThan9~6_combout\ <= NOT \inst3|LessThan9~6_combout\;
\inst3|ALT_INV_Add7~0_combout\ <= NOT \inst3|Add7~0_combout\;
\inst2|ALT_INV_pixel_column\(9) <= NOT \inst2|pixel_column\(9);
\inst2|ALT_INV_pixel_column\(8) <= NOT \inst2|pixel_column\(8);
\inst3|ALT_INV_LessThan9~5_combout\ <= NOT \inst3|LessThan9~5_combout\;
\inst3|ALT_INV_LessThan9~4_combout\ <= NOT \inst3|LessThan9~4_combout\;
\inst3|ALT_INV_LessThan9~3_combout\ <= NOT \inst3|LessThan9~3_combout\;
\inst3|ALT_INV_LessThan9~2_combout\ <= NOT \inst3|LessThan9~2_combout\;
\inst2|ALT_INV_pixel_column\(7) <= NOT \inst2|pixel_column\(7);
\inst2|ALT_INV_pixel_column\(6) <= NOT \inst2|pixel_column\(6);
\inst2|ALT_INV_pixel_column\(5) <= NOT \inst2|pixel_column\(5);
\inst3|ALT_INV_LessThan9~1_combout\ <= NOT \inst3|LessThan9~1_combout\;
\inst3|ALT_INV_LessThan9~0_combout\ <= NOT \inst3|LessThan9~0_combout\;
\inst2|ALT_INV_pixel_column\(0) <= NOT \inst2|pixel_column\(0);
\inst3|ALT_INV_LessThan11~0_combout\ <= NOT \inst3|LessThan11~0_combout\;
\inst2|ALT_INV_pixel_row\(0) <= NOT \inst2|pixel_row\(0);
\inst2|ALT_INV_pixel_row\(1) <= NOT \inst2|pixel_row\(1);
\inst2|ALT_INV_pixel_row\(5) <= NOT \inst2|pixel_row\(5);
\inst2|ALT_INV_pixel_row\(7) <= NOT \inst2|pixel_row\(7);
\inst3|ALT_INV_LessThan8~6_combout\ <= NOT \inst3|LessThan8~6_combout\;
\inst3|ALT_INV_LessThan8~5_combout\ <= NOT \inst3|LessThan8~5_combout\;
\inst3|ALT_INV_bottom_cloud_x_pos\(6) <= NOT \inst3|bottom_cloud_x_pos\(6);
\inst3|ALT_INV_bottom_cloud_x_pos\(7) <= NOT \inst3|bottom_cloud_x_pos\(7);
\inst3|ALT_INV_bottom_cloud_x_pos\(8) <= NOT \inst3|bottom_cloud_x_pos\(8);
\inst3|ALT_INV_LessThan8~4_combout\ <= NOT \inst3|LessThan8~4_combout\;
\inst3|ALT_INV_LessThan8~3_combout\ <= NOT \inst3|LessThan8~3_combout\;
\inst3|ALT_INV_LessThan8~2_combout\ <= NOT \inst3|LessThan8~2_combout\;
\inst3|ALT_INV_bottom_cloud_x_pos\(3) <= NOT \inst3|bottom_cloud_x_pos\(3);
\inst3|ALT_INV_bottom_cloud_x_pos\(4) <= NOT \inst3|bottom_cloud_x_pos\(4);
\inst2|ALT_INV_pixel_column\(3) <= NOT \inst2|pixel_column\(3);
\inst2|ALT_INV_pixel_column\(4) <= NOT \inst2|pixel_column\(4);
\inst3|ALT_INV_LessThan8~1_combout\ <= NOT \inst3|LessThan8~1_combout\;
\inst3|ALT_INV_bottom_cloud_x_pos\(2) <= NOT \inst3|bottom_cloud_x_pos\(2);
\inst3|ALT_INV_top_cloud_x_pos\(1) <= NOT \inst3|top_cloud_x_pos\(1);
\inst2|ALT_INV_pixel_column\(2) <= NOT \inst2|pixel_column\(2);
\inst2|ALT_INV_pixel_column\(1) <= NOT \inst2|pixel_column\(1);
\inst3|ALT_INV_bottom_cloud_x_pos\(5) <= NOT \inst3|bottom_cloud_x_pos\(5);
\inst3|ALT_INV_LessThan8~0_combout\ <= NOT \inst3|LessThan8~0_combout\;
\inst3|ALT_INV_bottom_cloud_x_pos\(9) <= NOT \inst3|bottom_cloud_x_pos\(9);
\inst2|ALT_INV_green_out~0_combout\ <= NOT \inst2|green_out~0_combout\;
\inst2|ALT_INV_video_on_h~q\ <= NOT \inst2|video_on_h~q\;
\inst2|ALT_INV_video_on_v~q\ <= NOT \inst2|video_on_v~q\;
\inst5|ALT_INV_Equal4~0_combout\ <= NOT \inst5|Equal4~0_combout\;
\inst5|ALT_INV_LessThan9~0_combout\ <= NOT \inst5|LessThan9~0_combout\;
\inst5|ALT_INV_RECV_UART~4_combout\ <= NOT \inst5|RECV_UART~4_combout\;
\inst5|ALT_INV_RECV_UART~3_combout\ <= NOT \inst5|RECV_UART~3_combout\;
\inst5|ALT_INV_Equal3~0_combout\ <= NOT \inst5|Equal3~0_combout\;
\inst7|ALT_INV_Equal0~0_combout\ <= NOT \inst7|Equal0~0_combout\;
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
\inst5|ALT_INV_left_button~q\ <= NOT \inst5|left_button~q\;
\inst5|ALT_INV_cursor_column\(8) <= NOT \inst5|cursor_column\(8);
\inst5|ALT_INV_cursor_column\(6) <= NOT \inst5|cursor_column\(6);
\inst6|ALT_INV_SevenSeg_out[1]~5_combout\ <= NOT \inst6|SevenSeg_out[1]~5_combout\;
\inst6|ALT_INV_SevenSeg_out~0_combout\ <= NOT \inst6|SevenSeg_out~0_combout\;
\inst5|ALT_INV_cursor_row\(6) <= NOT \inst5|cursor_row\(6);
\inst5|ALT_INV_cursor_row\(7) <= NOT \inst5|cursor_row\(7);
\inst5|ALT_INV_cursor_row\(8) <= NOT \inst5|cursor_row\(8);
\inst5|ALT_INV_cursor_column\(1) <= NOT \inst5|cursor_column\(1);
\inst5|ALT_INV_cursor_column\(2) <= NOT \inst5|cursor_column\(2);
\inst5|ALT_INV_cursor_column\(3) <= NOT \inst5|cursor_column\(3);
\inst5|ALT_INV_cursor_column\(4) <= NOT \inst5|cursor_column\(4);
\inst5|ALT_INV_cursor_column\(5) <= NOT \inst5|cursor_column\(5);
\inst5|ALT_INV_cursor_column\(0) <= NOT \inst5|cursor_column\(0);
\inst3|ALT_INV_Add15~25_sumout\ <= NOT \inst3|Add15~25_sumout\;
\inst3|ALT_INV_Add15~1_sumout\ <= NOT \inst3|Add15~1_sumout\;
\inst9|ALT_INV_Mux0~4_combout\ <= NOT \inst9|Mux0~4_combout\;
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(1);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(2);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(3);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(4);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(5);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(6);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(7);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(0);
\inst2|ALT_INV_h_count\(7) <= NOT \inst2|h_count\(7);
\inst2|ALT_INV_h_count\(8) <= NOT \inst2|h_count\(8);
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
\inst2|ALT_INV_v_count\(9) <= NOT \inst2|v_count\(9);
\inst2|ALT_INV_v_count\(4) <= NOT \inst2|v_count\(4);
\inst2|ALT_INV_v_count\(7) <= NOT \inst2|v_count\(7);
\inst2|ALT_INV_v_count\(8) <= NOT \inst2|v_count\(8);
\inst2|ALT_INV_v_count\(6) <= NOT \inst2|v_count\(6);
\inst2|ALT_INV_v_count\(5) <= NOT \inst2|v_count\(5);
\inst2|ALT_INV_v_count\(3) <= NOT \inst2|v_count\(3);
\inst2|ALT_INV_v_count\(2) <= NOT \inst2|v_count\(2);
\inst3|ALT_INV_Add6~1_sumout\ <= NOT \inst3|Add6~1_sumout\;
\inst3|ALT_INV_Add4~21_sumout\ <= NOT \inst3|Add4~21_sumout\;
\inst3|ALT_INV_Add4~17_sumout\ <= NOT \inst3|Add4~17_sumout\;
\inst3|ALT_INV_Add4~13_sumout\ <= NOT \inst3|Add4~13_sumout\;
\inst3|ALT_INV_Add4~9_sumout\ <= NOT \inst3|Add4~9_sumout\;
\inst3|ALT_INV_Add4~5_sumout\ <= NOT \inst3|Add4~5_sumout\;
\inst3|ALT_INV_Add4~1_sumout\ <= NOT \inst3|Add4~1_sumout\;
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
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
\inst5|ALT_INV_cursor_column\(7) <= NOT \inst5|cursor_column\(7);
\inst5|ALT_INV_cursor_column\(9) <= NOT \inst5|cursor_column\(9);

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
	i => \inst6|ALT_INV_SevenSeg_out~0_combout\,
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
	i => \inst6|SevenSeg_out[5]~1_combout\,
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
	i => \inst6|SevenSeg_out[4]~2_combout\,
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
	i => \inst6|SevenSeg_out[3]~3_combout\,
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
	i => \inst6|SevenSeg_out[2]~4_combout\,
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
	i => \inst6|ALT_INV_SevenSeg_out[1]~5_combout\,
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
	i => \inst6|SevenSeg_out[3]~6_combout\,
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
	i => \inst7|SevenSeg_out[6]~0_combout\,
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
	i => \inst7|SevenSeg_out[5]~6_combout\,
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
	i => \inst7|SevenSeg_out[4]~1_combout\,
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
	i => \inst7|SevenSeg_out[3]~5_combout\,
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
	i => \inst7|SevenSeg_out[2]~4_combout\,
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
	i => \inst7|ALT_INV_SevenSeg_out[1]~3_combout\,
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
	i => \inst7|SevenSeg_out[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|right_button~q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|left_button~q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

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

-- Location: FF_X34_Y6_N56
\inst5|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \PS2_CLK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(0));

-- Location: FF_X34_Y6_N59
\inst5|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(1));

-- Location: FF_X34_Y6_N37
\inst5|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(2));

-- Location: MLABCELL_X34_Y6_N39
\inst5|filter[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|filter[3]~feeder_combout\ = \inst5|filter\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_filter\(2),
	combout => \inst5|filter[3]~feeder_combout\);

-- Location: FF_X34_Y6_N41
\inst5|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(3));

-- Location: MLABCELL_X34_Y6_N36
\inst5|filter[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|filter[4]~feeder_combout\ = \inst5|filter\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_filter\(3),
	combout => \inst5|filter[4]~feeder_combout\);

-- Location: FF_X34_Y6_N38
\inst5|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(4));

-- Location: MLABCELL_X34_Y6_N57
\inst5|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal2~0_combout\ = ( !\inst5|filter\(0) & ( !\inst5|filter\(3) & ( (!\inst5|filter\(4) & (!\inst5|filter\(1) & !\inst5|filter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_filter\(4),
	datab => \inst5|ALT_INV_filter\(1),
	datac => \inst5|ALT_INV_filter\(2),
	datae => \inst5|ALT_INV_filter\(0),
	dataf => \inst5|ALT_INV_filter\(3),
	combout => \inst5|Equal2~0_combout\);

-- Location: MLABCELL_X34_Y6_N51
\inst5|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal1~0_combout\ = ( \inst5|filter\(3) & ( (\inst5|filter\(0) & (\inst5|filter\(1) & (\inst5|filter\(2) & \inst5|filter\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_filter\(0),
	datab => \inst5|ALT_INV_filter\(1),
	datac => \inst5|ALT_INV_filter\(2),
	datad => \inst5|ALT_INV_filter\(4),
	dataf => \inst5|ALT_INV_filter\(3),
	combout => \inst5|Equal1~0_combout\);

-- Location: FF_X34_Y6_N40
\inst5|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(5));

-- Location: FF_X36_Y5_N32
\inst5|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(6));

-- Location: FF_X36_Y5_N20
\inst5|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(7));

-- Location: LABCELL_X36_Y5_N30
\inst5|MOUSE_CLK_FILTER~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|MOUSE_CLK_FILTER~0_combout\ = ( \inst5|filter\(5) & ( \inst5|MOUSE_CLK_FILTER~q\ ) ) # ( !\inst5|filter\(5) & ( \inst5|MOUSE_CLK_FILTER~q\ & ( (!\inst5|Equal2~0_combout\) # ((\inst5|filter\(6)) # (\inst5|filter\(7))) ) ) ) # ( \inst5|filter\(5) & ( 
-- !\inst5|MOUSE_CLK_FILTER~q\ & ( (\inst5|Equal1~0_combout\ & (\inst5|filter\(7) & \inst5|filter\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001110101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Equal2~0_combout\,
	datab => \inst5|ALT_INV_Equal1~0_combout\,
	datac => \inst5|ALT_INV_filter\(7),
	datad => \inst5|ALT_INV_filter\(6),
	datae => \inst5|ALT_INV_filter\(5),
	dataf => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	combout => \inst5|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X36_Y5_N31
\inst5|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|MOUSE_CLK_FILTER~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|MOUSE_CLK_FILTER~q\);

-- Location: MLABCELL_X37_Y6_N39
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

-- Location: MLABCELL_X34_Y6_N48
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

-- Location: FF_X34_Y6_N49
\inst5|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|inhibit_wait_count[0]~0_combout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(0));

-- Location: MLABCELL_X34_Y6_N0
\inst5|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~41_sumout\ = SUM(( \inst5|inhibit_wait_count\(0) ) + ( \inst5|inhibit_wait_count\(1) ) + ( !VCC ))
-- \inst5|Add0~42\ = CARRY(( \inst5|inhibit_wait_count\(0) ) + ( \inst5|inhibit_wait_count\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_inhibit_wait_count\(0),
	datac => \inst5|ALT_INV_inhibit_wait_count\(1),
	cin => GND,
	sumout => \inst5|Add0~41_sumout\,
	cout => \inst5|Add0~42\);

-- Location: FF_X34_Y6_N2
\inst5|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~41_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(1));

-- Location: MLABCELL_X34_Y6_N3
\inst5|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~37_sumout\ = SUM(( \inst5|inhibit_wait_count\(2) ) + ( GND ) + ( \inst5|Add0~42\ ))
-- \inst5|Add0~38\ = CARRY(( \inst5|inhibit_wait_count\(2) ) + ( GND ) + ( \inst5|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_inhibit_wait_count\(2),
	cin => \inst5|Add0~42\,
	sumout => \inst5|Add0~37_sumout\,
	cout => \inst5|Add0~38\);

-- Location: FF_X34_Y6_N5
\inst5|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~37_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(2));

-- Location: MLABCELL_X34_Y6_N6
\inst5|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~33_sumout\ = SUM(( \inst5|inhibit_wait_count\(3) ) + ( GND ) + ( \inst5|Add0~38\ ))
-- \inst5|Add0~34\ = CARRY(( \inst5|inhibit_wait_count\(3) ) + ( GND ) + ( \inst5|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_inhibit_wait_count\(3),
	cin => \inst5|Add0~38\,
	sumout => \inst5|Add0~33_sumout\,
	cout => \inst5|Add0~34\);

-- Location: FF_X34_Y6_N8
\inst5|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~33_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(3));

-- Location: MLABCELL_X34_Y6_N9
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

-- Location: FF_X34_Y6_N11
\inst5|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~29_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(4));

-- Location: MLABCELL_X34_Y6_N12
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

-- Location: FF_X34_Y6_N14
\inst5|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~25_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(5));

-- Location: MLABCELL_X34_Y6_N15
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

-- Location: FF_X34_Y6_N16
\inst5|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~21_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(6));

-- Location: MLABCELL_X34_Y6_N18
\inst5|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~17_sumout\ = SUM(( \inst5|inhibit_wait_count\(7) ) + ( GND ) + ( \inst5|Add0~22\ ))
-- \inst5|Add0~18\ = CARRY(( \inst5|inhibit_wait_count\(7) ) + ( GND ) + ( \inst5|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_inhibit_wait_count\(7),
	cin => \inst5|Add0~22\,
	sumout => \inst5|Add0~17_sumout\,
	cout => \inst5|Add0~18\);

-- Location: FF_X34_Y6_N20
\inst5|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~17_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(7));

-- Location: MLABCELL_X34_Y6_N21
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

-- Location: FF_X34_Y6_N23
\inst5|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~13_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(8));

-- Location: MLABCELL_X34_Y6_N24
\inst5|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~9_sumout\ = SUM(( \inst5|inhibit_wait_count\(9) ) + ( GND ) + ( \inst5|Add0~14\ ))
-- \inst5|Add0~10\ = CARRY(( \inst5|inhibit_wait_count\(9) ) + ( GND ) + ( \inst5|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_inhibit_wait_count\(9),
	cin => \inst5|Add0~14\,
	sumout => \inst5|Add0~9_sumout\,
	cout => \inst5|Add0~10\);

-- Location: FF_X34_Y6_N25
\inst5|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~9_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(9));

-- Location: MLABCELL_X34_Y6_N27
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

-- Location: FF_X34_Y6_N29
\inst5|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~5_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(10));

-- Location: MLABCELL_X34_Y6_N30
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

-- Location: FF_X34_Y6_N31
\inst5|inhibit_wait_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Add0~1_sumout\,
	ena => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inhibit_wait_count\(11));

-- Location: MLABCELL_X34_Y6_N42
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

-- Location: FF_X34_Y6_N44
\inst5|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.INHIBIT_TRANS~q\);

-- Location: MLABCELL_X34_Y6_N45
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

-- Location: FF_X34_Y6_N46
\inst5|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X37_Y6_N43
\inst5|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.LOAD_COMMAND2~q\);

-- Location: LABCELL_X35_Y5_N33
\inst5|INCNT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~3_combout\ = (!\inst5|INCNT\(3) & (!\inst5|INCNT\(1) $ (!\inst5|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(3),
	datac => \inst5|ALT_INV_INCNT\(1),
	datad => \inst5|ALT_INV_INCNT\(0),
	combout => \inst5|INCNT~3_combout\);

-- Location: MLABCELL_X37_Y6_N9
\inst5|OUTCNT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~3_combout\ = ( \inst5|OUTCNT\(2) & ( (!\inst5|OUTCNT\(3) & !\inst5|OUTCNT\(0)) ) ) # ( !\inst5|OUTCNT\(2) & ( (!\inst5|OUTCNT\(0) & ((!\inst5|OUTCNT\(3)) # (!\inst5|OUTCNT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(3),
	datab => \inst5|ALT_INV_OUTCNT\(0),
	datac => \inst5|ALT_INV_OUTCNT\(1),
	dataf => \inst5|ALT_INV_OUTCNT\(2),
	combout => \inst5|OUTCNT~3_combout\);

-- Location: MLABCELL_X37_Y6_N15
\inst5|OUTCNT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT[0]~feeder_combout\ = \inst5|OUTCNT~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_OUTCNT~3_combout\,
	combout => \inst5|OUTCNT[0]~feeder_combout\);

-- Location: MLABCELL_X37_Y6_N48
\inst5|send_char~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|send_char~0_combout\ = ( \inst5|OUTCNT\(3) & ( \inst5|send_char~q\ ) ) # ( !\inst5|OUTCNT\(3) & ( \inst5|send_char~q\ ) ) # ( \inst5|OUTCNT\(3) & ( !\inst5|send_char~q\ & ( (\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst5|OUTCNT\(1)) # 
-- (\inst5|OUTCNT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_OUTCNT\(2),
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst5|ALT_INV_OUTCNT\(1),
	datae => \inst5|ALT_INV_OUTCNT\(3),
	dataf => \inst5|ALT_INV_send_char~q\,
	combout => \inst5|send_char~0_combout\);

-- Location: LABCELL_X36_Y6_N18
\inst5|send_char~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|send_char~feeder_combout\ = ( \inst5|send_char~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_send_char~0_combout\,
	combout => \inst5|send_char~feeder_combout\);

-- Location: FF_X36_Y6_N20
\inst5|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|send_char~feeder_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|send_char~q\);

-- Location: MLABCELL_X37_Y6_N30
\inst5|output_ready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|output_ready~0_combout\ = ( !\inst5|send_char~q\ & ( \inst5|mouse_state.WAIT_OUTPUT_READY~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	dataf => \inst5|ALT_INV_send_char~q\,
	combout => \inst5|output_ready~0_combout\);

-- Location: FF_X37_Y6_N17
\inst5|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|OUTCNT[0]~feeder_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	ena => \inst5|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|OUTCNT\(0));

-- Location: MLABCELL_X37_Y6_N54
\inst5|OUTCNT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~1_combout\ = ( \inst5|OUTCNT\(0) & ( (!\inst5|OUTCNT\(3) & (!\inst5|OUTCNT\(1) $ (!\inst5|OUTCNT\(2)))) ) ) # ( !\inst5|OUTCNT\(0) & ( (!\inst5|OUTCNT\(3) & \inst5|OUTCNT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(3),
	datab => \inst5|ALT_INV_OUTCNT\(1),
	datac => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(0),
	combout => \inst5|OUTCNT~1_combout\);

-- Location: FF_X37_Y6_N59
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

-- Location: MLABCELL_X37_Y6_N36
\inst5|OUTCNT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~2_combout\ = ( \inst5|OUTCNT\(0) & ( (!\inst5|OUTCNT\(1) & ((!\inst5|OUTCNT\(3)) # (!\inst5|OUTCNT\(2)))) ) ) # ( !\inst5|OUTCNT\(0) & ( (!\inst5|OUTCNT\(3) & \inst5|OUTCNT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(3),
	datac => \inst5|ALT_INV_OUTCNT\(1),
	datad => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(0),
	combout => \inst5|OUTCNT~2_combout\);

-- Location: FF_X37_Y6_N14
\inst5|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|OUTCNT~2_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|OUTCNT\(1));

-- Location: MLABCELL_X37_Y6_N3
\inst5|OUTCNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~0_combout\ = ( \inst5|OUTCNT\(0) & ( (!\inst5|OUTCNT\(3) & (\inst5|OUTCNT\(1) & \inst5|OUTCNT\(2))) # (\inst5|OUTCNT\(3) & (!\inst5|OUTCNT\(1) & !\inst5|OUTCNT\(2))) ) ) # ( !\inst5|OUTCNT\(0) & ( (\inst5|OUTCNT\(3) & (!\inst5|OUTCNT\(1) & 
-- !\inst5|OUTCNT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(3),
	datab => \inst5|ALT_INV_OUTCNT\(1),
	datac => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(0),
	combout => \inst5|OUTCNT~0_combout\);

-- Location: FF_X37_Y6_N26
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

-- Location: MLABCELL_X37_Y6_N57
\inst5|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = ( \inst5|OUTCNT\(1) & ( \inst5|OUTCNT\(3) ) ) # ( !\inst5|OUTCNT\(1) & ( (\inst5|OUTCNT\(3) & \inst5|OUTCNT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(3),
	datad => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(1),
	combout => \inst5|LessThan0~0_combout\);

-- Location: FF_X37_Y6_N56
\inst5|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|LessThan0~0_combout\,
	clrn => \inst5|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst5|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|output_ready~q\);

-- Location: LABCELL_X36_Y6_N48
\inst5|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector3~0_combout\ = ( \inst5|output_ready~q\ & ( \inst5|mouse_state.LOAD_COMMAND2~q\ ) ) # ( !\inst5|output_ready~q\ & ( (\inst5|mouse_state.LOAD_COMMAND2~q\) # (\inst5|mouse_state.WAIT_OUTPUT_READY~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\,
	dataf => \inst5|ALT_INV_output_ready~q\,
	combout => \inst5|Selector3~0_combout\);

-- Location: FF_X36_Y5_N14
\inst5|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|Selector3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LABCELL_X35_Y5_N0
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

-- Location: FF_X35_Y5_N38
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

-- Location: LABCELL_X35_Y5_N15
\inst5|INCNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~0_combout\ = ( \inst5|INCNT\(1) & ( (\inst5|INCNT\(0) & (!\inst5|INCNT\(3) & \inst5|INCNT\(2))) ) ) # ( !\inst5|INCNT\(1) & ( (!\inst5|INCNT\(0) & (\inst5|INCNT\(3) & !\inst5|INCNT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(0),
	datac => \inst5|ALT_INV_INCNT\(3),
	datad => \inst5|ALT_INV_INCNT\(2),
	dataf => \inst5|ALT_INV_INCNT\(1),
	combout => \inst5|INCNT~0_combout\);

-- Location: FF_X35_Y5_N44
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

-- Location: LABCELL_X35_Y5_N42
\inst5|INCNT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~2_combout\ = ( \inst5|INCNT\(1) & ( (!\inst5|INCNT\(3) & (!\inst5|INCNT\(2) $ (!\inst5|INCNT\(0)))) ) ) # ( !\inst5|INCNT\(1) & ( (\inst5|INCNT\(2) & !\inst5|INCNT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_INCNT\(2),
	datac => \inst5|ALT_INV_INCNT\(0),
	datad => \inst5|ALT_INV_INCNT\(3),
	dataf => \inst5|ALT_INV_INCNT\(1),
	combout => \inst5|INCNT~2_combout\);

-- Location: FF_X35_Y5_N17
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

-- Location: LABCELL_X35_Y5_N45
\inst5|INCNT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~4_combout\ = ( \inst5|INCNT\(3) & ( (!\inst5|INCNT\(0) & (!\inst5|INCNT\(2) & !\inst5|INCNT\(1))) ) ) # ( !\inst5|INCNT\(3) & ( !\inst5|INCNT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(0),
	datac => \inst5|ALT_INV_INCNT\(2),
	datad => \inst5|ALT_INV_INCNT\(1),
	dataf => \inst5|ALT_INV_INCNT\(3),
	combout => \inst5|INCNT~4_combout\);

-- Location: FF_X35_Y5_N5
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

-- Location: LABCELL_X35_Y5_N54
\inst5|READ_CHAR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|READ_CHAR~0_combout\ = ( \PS2_DAT~input_o\ & ( \inst5|INCNT\(3) & ( (!\inst5|INCNT\(0) & (!\inst5|INCNT\(2) & (!\inst5|INCNT\(1) & \inst5|READ_CHAR~q\))) ) ) ) # ( !\PS2_DAT~input_o\ & ( \inst5|INCNT\(3) & ( (!\inst5|READ_CHAR~q\) # 
-- ((!\inst5|INCNT\(0) & (!\inst5|INCNT\(2) & !\inst5|INCNT\(1)))) ) ) ) # ( \PS2_DAT~input_o\ & ( !\inst5|INCNT\(3) & ( \inst5|READ_CHAR~q\ ) ) ) # ( !\PS2_DAT~input_o\ & ( !\inst5|INCNT\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111111111111100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(0),
	datab => \inst5|ALT_INV_INCNT\(2),
	datac => \inst5|ALT_INV_INCNT\(1),
	datad => \inst5|ALT_INV_READ_CHAR~q\,
	datae => \ALT_INV_PS2_DAT~input_o\,
	dataf => \inst5|ALT_INV_INCNT\(3),
	combout => \inst5|READ_CHAR~0_combout\);

-- Location: FF_X36_Y5_N56
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

-- Location: LABCELL_X35_Y5_N21
\inst5|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = ( \inst5|INCNT\(0) & ( \inst5|INCNT\(2) & ( \inst5|INCNT\(3) ) ) ) # ( !\inst5|INCNT\(0) & ( \inst5|INCNT\(2) & ( \inst5|INCNT\(3) ) ) ) # ( \inst5|INCNT\(0) & ( !\inst5|INCNT\(2) & ( \inst5|INCNT\(3) ) ) ) # ( 
-- !\inst5|INCNT\(0) & ( !\inst5|INCNT\(2) & ( (\inst5|INCNT\(3) & \inst5|INCNT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_INCNT\(3),
	datad => \inst5|ALT_INV_INCNT\(1),
	datae => \inst5|ALT_INV_INCNT\(0),
	dataf => \inst5|ALT_INV_INCNT\(2),
	combout => \inst5|LessThan1~0_combout\);

-- Location: LABCELL_X35_Y5_N12
\inst5|iready_set~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|iready_set~0_combout\ = ( \inst5|LessThan1~0_combout\ & ( ((\inst5|iready_set~q\ & \PS2_DAT~input_o\)) # (\inst5|READ_CHAR~q\) ) ) # ( !\inst5|LessThan1~0_combout\ & ( (!\inst5|READ_CHAR~q\ & (\inst5|iready_set~q\ & \PS2_DAT~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_iready_set~q\,
	datad => \ALT_INV_PS2_DAT~input_o\,
	dataf => \inst5|ALT_INV_LessThan1~0_combout\,
	combout => \inst5|iready_set~0_combout\);

-- Location: FF_X36_Y5_N29
\inst5|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|iready_set~0_combout\,
	sload => VCC,
	ena => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|iready_set~q\);

-- Location: LABCELL_X36_Y6_N42
\inst5|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector4~0_combout\ = ( \inst5|output_ready~q\ & ( ((!\inst5|iready_set~q\ & \inst5|mouse_state.WAIT_CMD_ACK~q\)) # (\inst5|mouse_state.WAIT_OUTPUT_READY~q\) ) ) # ( !\inst5|output_ready~q\ & ( (!\inst5|iready_set~q\ & 
-- \inst5|mouse_state.WAIT_CMD_ACK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_iready_set~q\,
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst5|ALT_INV_mouse_state.WAIT_CMD_ACK~q\,
	dataf => \inst5|ALT_INV_output_ready~q\,
	combout => \inst5|Selector4~0_combout\);

-- Location: FF_X36_Y6_N44
\inst5|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LABCELL_X36_Y6_N45
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

-- Location: FF_X36_Y6_N46
\inst5|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mouse_state.INPUT_PACKETS~q\);

-- Location: MLABCELL_X37_Y6_N24
\inst5|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector6~0_combout\ = ( \inst5|send_data~q\ & ( (!\inst5|mouse_state.INHIBIT_TRANS~q\) # (((\inst5|mouse_state.LOAD_COMMAND~q\) # (\inst5|mouse_state.INPUT_PACKETS~q\)) # (\inst5|mouse_state.LOAD_COMMAND2~q\)) ) ) # ( !\inst5|send_data~q\ & ( 
-- (\inst5|mouse_state.LOAD_COMMAND~q\) # (\inst5|mouse_state.LOAD_COMMAND2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111110111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	datab => \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\,
	datac => \inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\,
	datad => \inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\,
	dataf => \inst5|ALT_INV_send_data~q\,
	combout => \inst5|Selector6~0_combout\);

-- Location: FF_X37_Y6_N8
\inst5|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|Selector6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|send_data~q\);

-- Location: MLABCELL_X37_Y6_N45
\inst5|MOUSE_DATA_BUF~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|MOUSE_DATA_BUF~0_combout\ = ( \inst5|OUTCNT\(2) & ( !\inst5|send_char~q\ & ( (!\inst5|OUTCNT\(3) & \inst5|mouse_state.WAIT_OUTPUT_READY~q\) ) ) ) # ( !\inst5|OUTCNT\(2) & ( !\inst5|send_char~q\ & ( (\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & 
-- ((!\inst5|OUTCNT\(3)) # (!\inst5|OUTCNT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(3),
	datab => \inst5|ALT_INV_OUTCNT\(1),
	datad => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datae => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_send_char~q\,
	combout => \inst5|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X37_Y6_N41
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

-- Location: MLABCELL_X37_Y6_N0
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

-- Location: FF_X37_Y6_N1
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

-- Location: FF_X37_Y6_N53
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

-- Location: FF_X37_Y6_N50
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

-- Location: FF_X37_Y6_N37
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

-- Location: MLABCELL_X37_Y6_N21
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

-- Location: FF_X37_Y6_N22
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

-- Location: MLABCELL_X37_Y6_N18
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

-- Location: FF_X37_Y6_N19
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

-- Location: MLABCELL_X37_Y6_N33
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

-- Location: FF_X37_Y6_N34
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

-- Location: FF_X37_Y6_N32
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

-- Location: FF_X37_Y6_N5
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

-- Location: MLABCELL_X37_Y6_N27
\inst5|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|WideOr4~combout\ = (!\inst5|mouse_state.INHIBIT_TRANS~q\) # ((\inst5|mouse_state.LOAD_COMMAND~q\) # (\inst5|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	datac => \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\,
	datad => \inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\,
	combout => \inst5|WideOr4~combout\);

-- Location: LABCELL_X32_Y6_N30
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

-- Location: LABCELL_X31_Y6_N0
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

-- Location: LABCELL_X31_Y6_N21
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

-- Location: LABCELL_X31_Y6_N24
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

-- Location: FF_X31_Y6_N26
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

-- Location: LABCELL_X31_Y6_N27
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

-- Location: FF_X31_Y6_N29
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

-- Location: MLABCELL_X28_Y6_N3
\inst2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = ( \inst2|h_count\(4) & ( \inst2|h_count\(0) & ( (!\inst2|h_count\(6) & (\inst2|h_count\(9) & (\inst2|h_count\(1) & \inst2|h_count\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(6),
	datab => \inst2|ALT_INV_h_count\(9),
	datac => \inst2|ALT_INV_h_count\(1),
	datad => \inst2|ALT_INV_h_count\(3),
	datae => \inst2|ALT_INV_h_count\(4),
	dataf => \inst2|ALT_INV_h_count\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: MLABCELL_X28_Y6_N42
\inst2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = ( \inst2|h_count\(2) & ( !\inst2|h_count\(7) & ( (!\inst2|h_count\(5) & (\inst2|h_count\(8) & \inst2|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(5),
	datab => \inst2|ALT_INV_h_count\(8),
	datac => \inst2|ALT_INV_Equal0~0_combout\,
	datae => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_h_count\(7),
	combout => \inst2|Equal0~1_combout\);

-- Location: FF_X31_Y6_N2
\inst2|h_count[0]\ : dffeas
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
	q => \inst2|h_count\(0));

-- Location: LABCELL_X31_Y6_N3
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

-- Location: FF_X31_Y6_N4
\inst2|h_count[1]\ : dffeas
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
	q => \inst2|h_count\(1));

-- Location: LABCELL_X31_Y6_N6
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

-- Location: FF_X31_Y6_N8
\inst2|h_count[2]\ : dffeas
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
	q => \inst2|h_count\(2));

-- Location: LABCELL_X31_Y6_N9
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

-- Location: FF_X31_Y6_N10
\inst2|h_count[3]\ : dffeas
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
	q => \inst2|h_count\(3));

-- Location: LABCELL_X31_Y6_N12
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

-- Location: FF_X31_Y6_N13
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

-- Location: LABCELL_X31_Y6_N15
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

-- Location: FF_X31_Y6_N16
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

-- Location: LABCELL_X31_Y6_N18
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

-- Location: FF_X31_Y6_N20
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

-- Location: FF_X31_Y6_N22
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

-- Location: FF_X31_Y6_N25
\inst2|h_count[8]~DUPLICATE\ : dffeas
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
	q => \inst2|h_count[8]~DUPLICATE_q\);

-- Location: FF_X31_Y6_N14
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

-- Location: LABCELL_X31_Y6_N39
\inst2|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = ( !\inst2|h_count\(2) & ( (!\inst2|h_count\(1)) # (!\inst2|h_count\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_h_count\(1),
	datad => \inst2|ALT_INV_h_count\(0),
	dataf => \inst2|ALT_INV_h_count\(2),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LABCELL_X31_Y6_N36
\inst2|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = ( \inst2|h_count\(5) & ( (!\inst2|h_count\(6) & ((!\inst2|h_count\(3)) # ((!\inst2|h_count[4]~DUPLICATE_q\) # (\inst2|LessThan1~0_combout\)))) ) ) # ( !\inst2|h_count\(5) & ( !\inst2|h_count\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000111100001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(3),
	datab => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_h_count\(6),
	datad => \inst2|ALT_INV_LessThan1~0_combout\,
	dataf => \inst2|ALT_INV_h_count\(5),
	combout => \inst2|process_0~4_combout\);

-- Location: FF_X31_Y6_N28
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

-- Location: LABCELL_X32_Y6_N39
\inst2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~5_sumout\ = SUM(( \inst2|v_count\(3) ) + ( GND ) + ( \inst2|Add1~2\ ))
-- \inst2|Add1~6\ = CARRY(( \inst2|v_count\(3) ) + ( GND ) + ( \inst2|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(3),
	cin => \inst2|Add1~2\,
	sumout => \inst2|Add1~5_sumout\,
	cout => \inst2|Add1~6\);

-- Location: LABCELL_X32_Y6_N42
\inst2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~25_sumout\ = SUM(( \inst2|v_count\(4) ) + ( GND ) + ( \inst2|Add1~6\ ))
-- \inst2|Add1~26\ = CARRY(( \inst2|v_count\(4) ) + ( GND ) + ( \inst2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(4),
	cin => \inst2|Add1~6\,
	sumout => \inst2|Add1~25_sumout\,
	cout => \inst2|Add1~26\);

-- Location: LABCELL_X31_Y6_N42
\inst2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = ( !\inst2|h_count\(2) & ( (\inst2|h_count\(7) & (!\inst2|h_count[8]~DUPLICATE_q\ & (\inst2|Equal0~0_combout\ & \inst2|h_count\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(7),
	datab => \inst2|ALT_INV_h_count[8]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_Equal0~0_combout\,
	datad => \inst2|ALT_INV_h_count\(5),
	dataf => \inst2|ALT_INV_h_count\(2),
	combout => \inst2|Equal1~0_combout\);

-- Location: LABCELL_X31_Y6_N45
\inst2|v_count[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|v_count[5]~0_combout\ = ( \inst2|Equal1~0_combout\ ) # ( !\inst2|Equal1~0_combout\ & ( (\inst2|process_0~6_combout\ & (((\inst2|h_count\(7) & !\inst2|process_0~4_combout\)) # (\inst2|h_count[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000011000001110000001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(7),
	datab => \inst2|ALT_INV_h_count[8]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_process_0~6_combout\,
	datad => \inst2|ALT_INV_process_0~4_combout\,
	dataf => \inst2|ALT_INV_Equal1~0_combout\,
	combout => \inst2|v_count[5]~0_combout\);

-- Location: FF_X32_Y6_N43
\inst2|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~25_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(4));

-- Location: LABCELL_X32_Y6_N45
\inst2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~9_sumout\ = SUM(( \inst2|v_count\(5) ) + ( GND ) + ( \inst2|Add1~26\ ))
-- \inst2|Add1~10\ = CARRY(( \inst2|v_count\(5) ) + ( GND ) + ( \inst2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(5),
	cin => \inst2|Add1~26\,
	sumout => \inst2|Add1~9_sumout\,
	cout => \inst2|Add1~10\);

-- Location: FF_X32_Y6_N47
\inst2|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~9_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(5));

-- Location: LABCELL_X32_Y6_N48
\inst2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~13_sumout\ = SUM(( \inst2|v_count\(6) ) + ( GND ) + ( \inst2|Add1~10\ ))
-- \inst2|Add1~14\ = CARRY(( \inst2|v_count\(6) ) + ( GND ) + ( \inst2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(6),
	cin => \inst2|Add1~10\,
	sumout => \inst2|Add1~13_sumout\,
	cout => \inst2|Add1~14\);

-- Location: FF_X32_Y6_N49
\inst2|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~13_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(6));

-- Location: LABCELL_X32_Y6_N51
\inst2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~21_sumout\ = SUM(( \inst2|v_count\(7) ) + ( GND ) + ( \inst2|Add1~14\ ))
-- \inst2|Add1~22\ = CARRY(( \inst2|v_count\(7) ) + ( GND ) + ( \inst2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(7),
	cin => \inst2|Add1~14\,
	sumout => \inst2|Add1~21_sumout\,
	cout => \inst2|Add1~22\);

-- Location: FF_X32_Y6_N53
\inst2|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~21_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(7));

-- Location: LABCELL_X32_Y6_N54
\inst2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~17_sumout\ = SUM(( \inst2|v_count\(8) ) + ( GND ) + ( \inst2|Add1~22\ ))
-- \inst2|Add1~18\ = CARRY(( \inst2|v_count\(8) ) + ( GND ) + ( \inst2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(8),
	cin => \inst2|Add1~22\,
	sumout => \inst2|Add1~17_sumout\,
	cout => \inst2|Add1~18\);

-- Location: FF_X32_Y6_N55
\inst2|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~17_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(8));

-- Location: LABCELL_X32_Y6_N57
\inst2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~29_sumout\ = SUM(( \inst2|v_count\(9) ) + ( GND ) + ( \inst2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(9),
	cin => \inst2|Add1~18\,
	sumout => \inst2|Add1~29_sumout\);

-- Location: FF_X32_Y6_N58
\inst2|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~29_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(9));

-- Location: FF_X32_Y6_N50
\inst2|v_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~13_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count[6]~DUPLICATE_q\);

-- Location: LABCELL_X32_Y6_N24
\inst2|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = ( !\inst2|v_count\(8) & ( (!\inst2|v_count\(7) & (!\inst2|v_count\(5) & (!\inst2|v_count[6]~DUPLICATE_q\ & !\inst2|v_count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(7),
	datab => \inst2|ALT_INV_v_count\(5),
	datac => \inst2|ALT_INV_v_count[6]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_v_count\(4),
	dataf => \inst2|ALT_INV_v_count\(8),
	combout => \inst2|process_0~5_combout\);

-- Location: LABCELL_X32_Y6_N18
\inst2|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = ( \inst2|process_0~5_combout\ & ( (\inst2|h_count[9]~DUPLICATE_q\ & (\inst2|v_count\(3) & (\inst2|v_count\(9) & \inst2|v_count\(2)))) ) ) # ( !\inst2|process_0~5_combout\ & ( (\inst2|h_count[9]~DUPLICATE_q\ & 
-- \inst2|v_count\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count[9]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_v_count\(3),
	datac => \inst2|ALT_INV_v_count\(9),
	datad => \inst2|ALT_INV_v_count\(2),
	dataf => \inst2|ALT_INV_process_0~5_combout\,
	combout => \inst2|process_0~6_combout\);

-- Location: LABCELL_X31_Y6_N54
\inst2|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~7_combout\ = ( \inst2|process_0~6_combout\ & ( ((\inst2|h_count\(7) & !\inst2|process_0~4_combout\)) # (\inst2|h_count[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(7),
	datab => \inst2|ALT_INV_h_count[8]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_process_0~4_combout\,
	dataf => \inst2|ALT_INV_process_0~6_combout\,
	combout => \inst2|process_0~7_combout\);

-- Location: FF_X32_Y6_N31
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
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(0));

-- Location: LABCELL_X32_Y6_N33
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

-- Location: FF_X32_Y6_N35
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
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(1));

-- Location: LABCELL_X32_Y6_N36
\inst2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~1_sumout\ = SUM(( \inst2|v_count\(2) ) + ( GND ) + ( \inst2|Add1~38\ ))
-- \inst2|Add1~2\ = CARRY(( \inst2|v_count\(2) ) + ( GND ) + ( \inst2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(2),
	cin => \inst2|Add1~38\,
	sumout => \inst2|Add1~1_sumout\,
	cout => \inst2|Add1~2\);

-- Location: FF_X32_Y6_N38
\inst2|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~1_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(2));

-- Location: FF_X32_Y6_N40
\inst2|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~5_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(3));

-- Location: LABCELL_X32_Y6_N12
\inst2|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = ( \inst2|v_count\(7) & ( (\inst2|v_count\(5) & (\inst2|v_count[6]~DUPLICATE_q\ & \inst2|v_count\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_v_count\(5),
	datac => \inst2|ALT_INV_v_count[6]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_v_count\(8),
	dataf => \inst2|ALT_INV_v_count\(7),
	combout => \inst2|LessThan7~0_combout\);

-- Location: LABCELL_X32_Y6_N15
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

-- Location: LABCELL_X32_Y6_N21
\inst2|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = ( \inst2|process_0~0_combout\ & ( (!\inst2|v_count\(3)) # ((!\inst2|LessThan7~0_combout\) # (!\inst2|v_count\(2))) ) ) # ( !\inst2|process_0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_v_count\(3),
	datac => \inst2|ALT_INV_LessThan7~0_combout\,
	datad => \inst2|ALT_INV_v_count\(2),
	dataf => \inst2|ALT_INV_process_0~0_combout\,
	combout => \inst2|process_0~1_combout\);

-- Location: FF_X29_Y5_N35
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

-- Location: FF_X29_Y5_N20
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

-- Location: LABCELL_X31_Y6_N57
\inst2|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = ( \inst2|h_count[9]~DUPLICATE_q\ & ( (!\inst2|h_count\(7)) # (\inst2|h_count[8]~DUPLICATE_q\) ) ) # ( !\inst2|h_count[9]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(7),
	datab => \inst2|ALT_INV_h_count[8]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_h_count[9]~DUPLICATE_q\,
	combout => \inst2|process_0~3_combout\);

-- Location: LABCELL_X31_Y6_N51
\inst2|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = ( \inst2|h_count\(3) & ( !\inst2|h_count[4]~DUPLICATE_q\ ) ) # ( !\inst2|h_count\(3) & ( (!\inst2|h_count[4]~DUPLICATE_q\) # ((!\inst2|h_count\(2) & ((!\inst2|h_count\(0)) # (!\inst2|h_count\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111000111100001111000011111100111110001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(0),
	datab => \inst2|ALT_INV_h_count\(2),
	datac => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_h_count\(1),
	datae => \inst2|ALT_INV_h_count\(3),
	combout => \inst2|process_0~2_combout\);

-- Location: LABCELL_X31_Y6_N30
\inst2|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~8_combout\ = ( !\inst2|h_count\(5) & ( ((((!\inst2|h_count\(6) & \inst2|process_0~2_combout\)) # (\inst2|process_0~3_combout\))) ) ) # ( \inst2|h_count\(5) & ( ((\inst2|h_count\(6) & (\inst2|h_count[4]~DUPLICATE_q\ & ((\inst2|h_count\(3)) 
-- # (\inst2|h_count\(2)))))) # (\inst2|process_0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000000000001010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(6),
	datab => \inst2|ALT_INV_h_count\(2),
	datac => \inst2|ALT_INV_h_count\(3),
	datad => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_h_count\(5),
	dataf => \inst2|ALT_INV_process_0~3_combout\,
	datag => \inst2|ALT_INV_process_0~2_combout\,
	combout => \inst2|process_0~8_combout\);

-- Location: FF_X31_Y6_N32
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

-- Location: LABCELL_X25_Y37_N12
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

-- Location: FF_X25_Y37_N13
\inst2|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|horiz_sync_out~q\);

-- Location: LABCELL_X36_Y5_N6
\inst5|PACKET_COUNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_COUNT~0_combout\ = ( \inst5|PACKET_COUNT\(1) ) # ( !\inst5|PACKET_COUNT\(1) & ( !\inst5|PACKET_COUNT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_COUNT\(0),
	dataf => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|PACKET_COUNT~0_combout\);

-- Location: LABCELL_X35_Y5_N27
\inst5|PACKET_CHAR2[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[7]~0_combout\ = ( \inst5|INCNT\(2) & ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|INCNT\(3) & \inst5|READ_CHAR~q\) ) ) ) # ( !\inst5|INCNT\(2) & ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|INCNT\(3) & 
-- (\inst5|READ_CHAR~q\ & ((\inst5|INCNT\(1)) # (\inst5|INCNT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(0),
	datab => \inst5|ALT_INV_INCNT\(3),
	datac => \inst5|ALT_INV_READ_CHAR~q\,
	datad => \inst5|ALT_INV_INCNT\(1),
	datae => \inst5|ALT_INV_INCNT\(2),
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|PACKET_CHAR2[7]~0_combout\);

-- Location: FF_X36_Y5_N41
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

-- Location: LABCELL_X36_Y5_N42
\inst5|new_cursor_column[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|new_cursor_column[3]~0_combout\ = ( \inst5|PACKET_COUNT\(1) & ( !\inst5|PACKET_COUNT\(0) ) ) # ( !\inst5|PACKET_COUNT\(1) & ( \inst5|PACKET_COUNT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_PACKET_COUNT\(0),
	dataf => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|new_cursor_column[3]~0_combout\);

-- Location: LABCELL_X36_Y5_N48
\inst5|PACKET_COUNT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_COUNT[1]~feeder_combout\ = \inst5|new_cursor_column[3]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_new_cursor_column[3]~0_combout\,
	combout => \inst5|PACKET_COUNT[1]~feeder_combout\);

-- Location: FF_X36_Y5_N50
\inst5|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_COUNT[1]~feeder_combout\,
	ena => \inst5|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_COUNT\(1));

-- Location: LABCELL_X35_Y5_N9
\inst5|SHIFTIN[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[1]~0_combout\ = ( \inst5|INCNT\(1) & ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & !\inst5|INCNT\(3)) ) ) ) # ( !\inst5|INCNT\(1) & ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & 
-- ((!\inst5|INCNT\(3)) # ((!\inst5|INCNT\(0) & !\inst5|INCNT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(0),
	datab => \inst5|ALT_INV_INCNT\(2),
	datac => \inst5|ALT_INV_READ_CHAR~q\,
	datad => \inst5|ALT_INV_INCNT\(3),
	datae => \inst5|ALT_INV_INCNT\(1),
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|SHIFTIN[1]~0_combout\);

-- Location: FF_X35_Y5_N55
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
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(8));

-- Location: LABCELL_X36_Y4_N15
\inst5|SHIFTIN[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[7]~feeder_combout\ = \inst5|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_SHIFTIN\(8),
	combout => \inst5|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X36_Y4_N17
\inst5|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTIN[7]~feeder_combout\,
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(7));

-- Location: LABCELL_X36_Y5_N21
\inst5|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal4~0_combout\ = ( \inst5|PACKET_COUNT\(1) & ( !\inst5|PACKET_COUNT\(0) ) ) # ( !\inst5|PACKET_COUNT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_COUNT\(0),
	dataf => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|Equal4~0_combout\);

-- Location: MLABCELL_X34_Y5_N51
\inst5|right_button~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|right_button~0_combout\ = ( \inst5|LessThan1~0_combout\ & ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & !\inst5|Equal4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_Equal4~0_combout\,
	datae => \inst5|ALT_INV_LessThan1~0_combout\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|right_button~0_combout\);

-- Location: FF_X34_Y5_N56
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
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(7));

-- Location: LABCELL_X36_Y4_N3
\inst5|SHIFTIN[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[6]~feeder_combout\ = ( \inst5|SHIFTIN\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_SHIFTIN\(7),
	combout => \inst5|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X36_Y4_N5
\inst5|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTIN[6]~feeder_combout\,
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(6));

-- Location: MLABCELL_X34_Y5_N36
\inst5|PACKET_CHAR3[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR3[6]~feeder_combout\ = \inst5|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_SHIFTIN\(6),
	combout => \inst5|PACKET_CHAR3[6]~feeder_combout\);

-- Location: FF_X34_Y5_N37
\inst5|PACKET_CHAR3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR3[6]~feeder_combout\,
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(6));

-- Location: FF_X36_Y4_N56
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
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(5));

-- Location: MLABCELL_X34_Y5_N12
\inst5|PACKET_CHAR3[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR3[5]~feeder_combout\ = \inst5|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_SHIFTIN\(5),
	combout => \inst5|PACKET_CHAR3[5]~feeder_combout\);

-- Location: FF_X34_Y5_N13
\inst5|PACKET_CHAR3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR3[5]~feeder_combout\,
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(5));

-- Location: FF_X36_Y4_N35
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
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(4));

-- Location: FF_X34_Y5_N35
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
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(4));

-- Location: LABCELL_X35_Y5_N3
\inst5|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal3~0_combout\ = (!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|Equal3~0_combout\);

-- Location: LABCELL_X35_Y4_N21
\inst5|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~29_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(7) $ (\inst5|cursor_row\(7)) ) + ( \inst5|Add4~35\ ) + ( \inst5|Add4~34\ ))
-- \inst5|Add4~30\ = CARRY(( !\inst5|PACKET_CHAR3\(7) $ (\inst5|cursor_row\(7)) ) + ( \inst5|Add4~35\ ) + ( \inst5|Add4~34\ ))
-- \inst5|Add4~31\ = SHARE((!\inst5|PACKET_CHAR3\(7) & \inst5|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR3\(7),
	datad => \inst5|ALT_INV_cursor_row\(7),
	cin => \inst5|Add4~34\,
	sharein => \inst5|Add4~35\,
	sumout => \inst5|Add4~29_sumout\,
	cout => \inst5|Add4~30\,
	shareout => \inst5|Add4~31\);

-- Location: LABCELL_X36_Y5_N9
\inst5|new_cursor_row[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|new_cursor_row[9]~0_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & (!\inst5|new_cursor_column[3]~0_combout\ & \inst5|LessThan1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_new_cursor_column[3]~0_combout\,
	datad => \inst5|ALT_INV_LessThan1~0_combout\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|new_cursor_row[9]~0_combout\);

-- Location: FF_X35_Y4_N23
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(7));

-- Location: FF_X35_Y5_N20
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
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(3));

-- Location: MLABCELL_X34_Y5_N21
\inst5|PACKET_CHAR3[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR3[3]~feeder_combout\ = \inst5|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_SHIFTIN\(3),
	combout => \inst5|PACKET_CHAR3[3]~feeder_combout\);

-- Location: FF_X34_Y5_N22
\inst5|PACKET_CHAR3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR3[3]~feeder_combout\,
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(3));

-- Location: FF_X35_Y5_N50
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
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(2));

-- Location: FF_X34_Y5_N31
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
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(2));

-- Location: FF_X35_Y5_N53
\inst5|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(2),
	sload => VCC,
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(1));

-- Location: MLABCELL_X34_Y5_N15
\inst5|PACKET_CHAR3[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR3[1]~feeder_combout\ = \inst5|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_SHIFTIN\(1),
	combout => \inst5|PACKET_CHAR3[1]~feeder_combout\);

-- Location: FF_X34_Y5_N16
\inst5|PACKET_CHAR3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR3[1]~feeder_combout\,
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(1));

-- Location: FF_X35_Y5_N59
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
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(0));

-- Location: FF_X34_Y5_N40
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
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(0));

-- Location: LABCELL_X35_Y4_N0
\inst5|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~9_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(0) $ (!\inst5|cursor_row\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst5|Add4~10\ = CARRY(( !\inst5|PACKET_CHAR3\(0) $ (!\inst5|cursor_row\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst5|Add4~11\ = SHARE((!\inst5|PACKET_CHAR3\(0)) # (\inst5|cursor_row\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111111100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR3\(0),
	datad => \inst5|ALT_INV_cursor_row\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst5|Add4~9_sumout\,
	cout => \inst5|Add4~10\,
	shareout => \inst5|Add4~11\);

-- Location: LABCELL_X36_Y5_N0
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

-- Location: FF_X35_Y4_N2
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(0));

-- Location: LABCELL_X35_Y4_N39
\inst5|cursor_row~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~6_combout\ = ( \inst5|new_cursor_row\(0) & ( \inst5|LessThan5~2_combout\ & ( (!\inst5|Equal3~0_combout\ & (((\inst5|RECV_UART~2_combout\) # (\inst5|cursor_row\(8))) # (\inst5|cursor_row\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_Equal3~0_combout\,
	datad => \inst5|ALT_INV_RECV_UART~2_combout\,
	datae => \inst5|ALT_INV_new_cursor_row\(0),
	dataf => \inst5|ALT_INV_LessThan5~2_combout\,
	combout => \inst5|cursor_row~6_combout\);

-- Location: LABCELL_X35_Y5_N30
\inst5|PACKET_CHAR1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR1[1]~0_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (!\inst5|PACKET_COUNT\(1) & (\inst5|READ_CHAR~q\ & \inst5|LessThan1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_COUNT\(1),
	datac => \inst5|ALT_INV_READ_CHAR~q\,
	datad => \inst5|ALT_INV_LessThan1~0_combout\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|PACKET_CHAR1[1]~0_combout\);

-- Location: FF_X35_Y4_N40
\inst5|cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~6_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(0));

-- Location: LABCELL_X35_Y4_N3
\inst5|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~25_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(1) $ (\inst5|cursor_row\(1)) ) + ( \inst5|Add4~11\ ) + ( \inst5|Add4~10\ ))
-- \inst5|Add4~26\ = CARRY(( !\inst5|PACKET_CHAR3\(1) $ (\inst5|cursor_row\(1)) ) + ( \inst5|Add4~11\ ) + ( \inst5|Add4~10\ ))
-- \inst5|Add4~27\ = SHARE((!\inst5|PACKET_CHAR3\(1) & \inst5|cursor_row\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_CHAR3\(1),
	datac => \inst5|ALT_INV_cursor_row\(1),
	cin => \inst5|Add4~10\,
	sharein => \inst5|Add4~11\,
	sumout => \inst5|Add4~25_sumout\,
	cout => \inst5|Add4~26\,
	shareout => \inst5|Add4~27\);

-- Location: FF_X35_Y4_N5
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(1));

-- Location: LABCELL_X35_Y4_N45
\inst5|cursor_row~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~11_combout\ = ( \inst5|LessThan5~2_combout\ & ( \inst5|new_cursor_row\(1) & ( (!\inst5|Equal3~0_combout\ & (((\inst5|RECV_UART~2_combout\) # (\inst5|cursor_row\(8))) # (\inst5|cursor_row\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_Equal3~0_combout\,
	datad => \inst5|ALT_INV_RECV_UART~2_combout\,
	datae => \inst5|ALT_INV_LessThan5~2_combout\,
	dataf => \inst5|ALT_INV_new_cursor_row\(1),
	combout => \inst5|cursor_row~11_combout\);

-- Location: FF_X35_Y4_N46
\inst5|cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~11_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(1));

-- Location: LABCELL_X35_Y4_N6
\inst5|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~21_sumout\ = SUM(( !\inst5|cursor_row\(2) $ (\inst5|PACKET_CHAR3\(2)) ) + ( \inst5|Add4~27\ ) + ( \inst5|Add4~26\ ))
-- \inst5|Add4~22\ = CARRY(( !\inst5|cursor_row\(2) $ (\inst5|PACKET_CHAR3\(2)) ) + ( \inst5|Add4~27\ ) + ( \inst5|Add4~26\ ))
-- \inst5|Add4~23\ = SHARE((\inst5|cursor_row\(2) & !\inst5|PACKET_CHAR3\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(2),
	datac => \inst5|ALT_INV_PACKET_CHAR3\(2),
	cin => \inst5|Add4~26\,
	sharein => \inst5|Add4~27\,
	sumout => \inst5|Add4~21_sumout\,
	cout => \inst5|Add4~22\,
	shareout => \inst5|Add4~23\);

-- Location: FF_X35_Y4_N8
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(2));

-- Location: LABCELL_X35_Y4_N42
\inst5|cursor_row~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~10_combout\ = ( \inst5|LessThan5~2_combout\ & ( \inst5|new_cursor_row\(2) & ( (!\inst5|Equal3~0_combout\ & (((\inst5|RECV_UART~2_combout\) # (\inst5|cursor_row\(8))) # (\inst5|cursor_row\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_RECV_UART~2_combout\,
	datad => \inst5|ALT_INV_Equal3~0_combout\,
	datae => \inst5|ALT_INV_LessThan5~2_combout\,
	dataf => \inst5|ALT_INV_new_cursor_row\(2),
	combout => \inst5|cursor_row~10_combout\);

-- Location: FF_X35_Y4_N44
\inst5|cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~10_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(2));

-- Location: LABCELL_X35_Y4_N9
\inst5|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~17_sumout\ = SUM(( !\inst5|cursor_row\(3) $ (\inst5|PACKET_CHAR3\(3)) ) + ( \inst5|Add4~23\ ) + ( \inst5|Add4~22\ ))
-- \inst5|Add4~18\ = CARRY(( !\inst5|cursor_row\(3) $ (\inst5|PACKET_CHAR3\(3)) ) + ( \inst5|Add4~23\ ) + ( \inst5|Add4~22\ ))
-- \inst5|Add4~19\ = SHARE((\inst5|cursor_row\(3) & !\inst5|PACKET_CHAR3\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(3),
	datad => \inst5|ALT_INV_PACKET_CHAR3\(3),
	cin => \inst5|Add4~22\,
	sharein => \inst5|Add4~23\,
	sumout => \inst5|Add4~17_sumout\,
	cout => \inst5|Add4~18\,
	shareout => \inst5|Add4~19\);

-- Location: LABCELL_X35_Y4_N12
\inst5|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~13_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(4) $ (\inst5|cursor_row\(4)) ) + ( \inst5|Add4~19\ ) + ( \inst5|Add4~18\ ))
-- \inst5|Add4~14\ = CARRY(( !\inst5|PACKET_CHAR3\(4) $ (\inst5|cursor_row\(4)) ) + ( \inst5|Add4~19\ ) + ( \inst5|Add4~18\ ))
-- \inst5|Add4~15\ = SHARE((!\inst5|PACKET_CHAR3\(4) & \inst5|cursor_row\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_CHAR3\(4),
	datad => \inst5|ALT_INV_cursor_row\(4),
	cin => \inst5|Add4~18\,
	sharein => \inst5|Add4~19\,
	sumout => \inst5|Add4~13_sumout\,
	cout => \inst5|Add4~14\,
	shareout => \inst5|Add4~15\);

-- Location: LABCELL_X35_Y4_N15
\inst5|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~37_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(5) $ (\inst5|cursor_row\(5)) ) + ( \inst5|Add4~15\ ) + ( \inst5|Add4~14\ ))
-- \inst5|Add4~38\ = CARRY(( !\inst5|PACKET_CHAR3\(5) $ (\inst5|cursor_row\(5)) ) + ( \inst5|Add4~15\ ) + ( \inst5|Add4~14\ ))
-- \inst5|Add4~39\ = SHARE((!\inst5|PACKET_CHAR3\(5) & \inst5|cursor_row\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR3\(5),
	datac => \inst5|ALT_INV_cursor_row\(5),
	cin => \inst5|Add4~14\,
	sharein => \inst5|Add4~15\,
	sumout => \inst5|Add4~37_sumout\,
	cout => \inst5|Add4~38\,
	shareout => \inst5|Add4~39\);

-- Location: LABCELL_X35_Y4_N18
\inst5|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~33_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(6) $ (\inst5|cursor_row\(6)) ) + ( \inst5|Add4~39\ ) + ( \inst5|Add4~38\ ))
-- \inst5|Add4~34\ = CARRY(( !\inst5|PACKET_CHAR3\(6) $ (\inst5|cursor_row\(6)) ) + ( \inst5|Add4~39\ ) + ( \inst5|Add4~38\ ))
-- \inst5|Add4~35\ = SHARE((!\inst5|PACKET_CHAR3\(6) & \inst5|cursor_row\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_CHAR3\(6),
	datad => \inst5|ALT_INV_cursor_row\(6),
	cin => \inst5|Add4~38\,
	sharein => \inst5|Add4~39\,
	sumout => \inst5|Add4~33_sumout\,
	cout => \inst5|Add4~34\,
	shareout => \inst5|Add4~35\);

-- Location: FF_X35_Y4_N20
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(6));

-- Location: MLABCELL_X34_Y4_N57
\inst5|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~1_combout\ = ( \inst5|new_cursor_row\(5) & ( \inst5|new_cursor_row\(6) & ( \inst5|new_cursor_row\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_new_cursor_row\(7),
	datae => \inst5|ALT_INV_new_cursor_row\(5),
	dataf => \inst5|ALT_INV_new_cursor_row\(6),
	combout => \inst5|LessThan5~1_combout\);

-- Location: FF_X35_Y4_N11
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(3));

-- Location: MLABCELL_X34_Y4_N39
\inst5|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~0_combout\ = ( !\inst5|new_cursor_row\(2) & ( !\inst5|new_cursor_row\(4) & ( (!\inst5|new_cursor_row\(0) & (!\inst5|new_cursor_row\(1) & !\inst5|new_cursor_row\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(0),
	datac => \inst5|ALT_INV_new_cursor_row\(1),
	datad => \inst5|ALT_INV_new_cursor_row\(3),
	datae => \inst5|ALT_INV_new_cursor_row\(2),
	dataf => \inst5|ALT_INV_new_cursor_row\(4),
	combout => \inst5|LessThan5~0_combout\);

-- Location: MLABCELL_X34_Y4_N27
\inst5|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~2_combout\ = ( \inst5|LessThan5~1_combout\ & ( \inst5|LessThan5~0_combout\ & ( !\inst5|new_cursor_row\(9) ) ) ) # ( !\inst5|LessThan5~1_combout\ & ( \inst5|LessThan5~0_combout\ & ( !\inst5|new_cursor_row\(9) ) ) ) # ( 
-- \inst5|LessThan5~1_combout\ & ( !\inst5|LessThan5~0_combout\ & ( (!\inst5|new_cursor_row\(9) & !\inst5|new_cursor_row\(8)) ) ) ) # ( !\inst5|LessThan5~1_combout\ & ( !\inst5|LessThan5~0_combout\ & ( !\inst5|new_cursor_row\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010100000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(9),
	datad => \inst5|ALT_INV_new_cursor_row\(8),
	datae => \inst5|ALT_INV_LessThan5~1_combout\,
	dataf => \inst5|ALT_INV_LessThan5~0_combout\,
	combout => \inst5|LessThan5~2_combout\);

-- Location: LABCELL_X35_Y4_N36
\inst5|cursor_row~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~9_combout\ = ( \inst5|LessThan5~2_combout\ & ( \inst5|new_cursor_row\(3) & ( (!\inst5|Equal3~0_combout\ & (((\inst5|RECV_UART~2_combout\) # (\inst5|cursor_row\(8))) # (\inst5|cursor_row\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_RECV_UART~2_combout\,
	datad => \inst5|ALT_INV_Equal3~0_combout\,
	datae => \inst5|ALT_INV_LessThan5~2_combout\,
	dataf => \inst5|ALT_INV_new_cursor_row\(3),
	combout => \inst5|cursor_row~9_combout\);

-- Location: FF_X35_Y4_N37
\inst5|cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~9_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(3));

-- Location: FF_X35_Y4_N14
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(4));

-- Location: MLABCELL_X34_Y4_N48
\inst5|cursor_row~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~7_combout\ = ( \inst5|LessThan5~0_combout\ & ( (!\inst5|new_cursor_row\(9) & \inst5|new_cursor_row\(4)) ) ) # ( !\inst5|LessThan5~0_combout\ & ( (!\inst5|new_cursor_row\(9) & (\inst5|new_cursor_row\(4) & ((!\inst5|new_cursor_row\(8)) # 
-- (!\inst5|LessThan5~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100000001000100010000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(9),
	datab => \inst5|ALT_INV_new_cursor_row\(4),
	datac => \inst5|ALT_INV_new_cursor_row\(8),
	datad => \inst5|ALT_INV_LessThan5~1_combout\,
	dataf => \inst5|ALT_INV_LessThan5~0_combout\,
	combout => \inst5|cursor_row~7_combout\);

-- Location: MLABCELL_X34_Y4_N21
\inst5|cursor_row~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~8_combout\ = ( \inst5|PACKET_COUNT\(0) & ( \inst5|RECV_UART~2_combout\ & ( \inst5|cursor_row~7_combout\ ) ) ) # ( !\inst5|PACKET_COUNT\(0) & ( \inst5|RECV_UART~2_combout\ & ( (!\inst5|PACKET_COUNT\(1)) # (\inst5|cursor_row~7_combout\) ) 
-- ) ) # ( \inst5|PACKET_COUNT\(0) & ( !\inst5|RECV_UART~2_combout\ & ( (\inst5|cursor_row~7_combout\ & ((\inst5|cursor_row\(7)) # (\inst5|cursor_row\(8)))) ) ) ) # ( !\inst5|PACKET_COUNT\(0) & ( !\inst5|RECV_UART~2_combout\ & ( (!\inst5|PACKET_COUNT\(1)) # 
-- ((\inst5|cursor_row~7_combout\ & ((\inst5|cursor_row\(7)) # (\inst5|cursor_row\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110111000000000111011111110000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(8),
	datab => \inst5|ALT_INV_cursor_row\(7),
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	datad => \inst5|ALT_INV_cursor_row~7_combout\,
	datae => \inst5|ALT_INV_PACKET_COUNT\(0),
	dataf => \inst5|ALT_INV_RECV_UART~2_combout\,
	combout => \inst5|cursor_row~8_combout\);

-- Location: FF_X34_Y4_N23
\inst5|cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~8_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(4));

-- Location: FF_X35_Y4_N17
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(5));

-- Location: MLABCELL_X34_Y4_N33
\inst5|cursor_row~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~12_combout\ = (!\inst5|new_cursor_row\(5) & !\inst5|new_cursor_row\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(5),
	datac => \inst5|ALT_INV_new_cursor_row\(9),
	combout => \inst5|cursor_row~12_combout\);

-- Location: LABCELL_X35_Y4_N57
\inst5|cursor_row~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~13_combout\ = ( \inst5|RECV_UART~2_combout\ & ( \inst5|cursor_row~12_combout\ & ( (!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1)) ) ) ) # ( !\inst5|RECV_UART~2_combout\ & ( \inst5|cursor_row~12_combout\ & ( 
-- (!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1)) ) ) ) # ( \inst5|RECV_UART~2_combout\ & ( !\inst5|cursor_row~12_combout\ ) ) # ( !\inst5|RECV_UART~2_combout\ & ( !\inst5|cursor_row~12_combout\ & ( (((!\inst5|PACKET_COUNT\(0) & 
-- !\inst5|PACKET_COUNT\(1))) # (\inst5|cursor_row\(7))) # (\inst5|cursor_row\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111111111111111111111111110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	datad => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_RECV_UART~2_combout\,
	dataf => \inst5|ALT_INV_cursor_row~12_combout\,
	combout => \inst5|cursor_row~13_combout\);

-- Location: FF_X35_Y4_N58
\inst5|cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~13_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(5));

-- Location: LABCELL_X35_Y4_N24
\inst5|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~5_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(7) $ (\inst5|cursor_row\(8)) ) + ( \inst5|Add4~31\ ) + ( \inst5|Add4~30\ ))
-- \inst5|Add4~6\ = CARRY(( !\inst5|PACKET_CHAR3\(7) $ (\inst5|cursor_row\(8)) ) + ( \inst5|Add4~31\ ) + ( \inst5|Add4~30\ ))
-- \inst5|Add4~7\ = SHARE((!\inst5|PACKET_CHAR3\(7) & \inst5|cursor_row\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_CHAR3\(7),
	datab => \inst5|ALT_INV_cursor_row\(8),
	cin => \inst5|Add4~30\,
	sharein => \inst5|Add4~31\,
	sumout => \inst5|Add4~5_sumout\,
	cout => \inst5|Add4~6\,
	shareout => \inst5|Add4~7\);

-- Location: FF_X35_Y4_N26
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(8));

-- Location: LABCELL_X35_Y4_N33
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

-- Location: LABCELL_X35_Y4_N30
\inst5|RECV_UART~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~0_combout\ = ( !\inst5|new_cursor_row\(2) & ( (!\inst5|new_cursor_row\(3) & (!\inst5|new_cursor_row\(1) & !\inst5|new_cursor_row\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_new_cursor_row\(3),
	datac => \inst5|ALT_INV_new_cursor_row\(1),
	datad => \inst5|ALT_INV_new_cursor_row\(4),
	dataf => \inst5|ALT_INV_new_cursor_row\(2),
	combout => \inst5|RECV_UART~0_combout\);

-- Location: LABCELL_X35_Y4_N48
\inst5|RECV_UART~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~2_combout\ = ( \inst5|RECV_UART~0_combout\ & ( (!\inst5|new_cursor_row\(9) & ((!\inst5|new_cursor_row\(8) & (!\inst5|RECV_UART~1_combout\)) # (\inst5|new_cursor_row\(8) & (\inst5|RECV_UART~1_combout\ & !\inst5|new_cursor_row\(0))))) ) ) # 
-- ( !\inst5|RECV_UART~0_combout\ & ( (!\inst5|new_cursor_row\(8) & !\inst5|new_cursor_row\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010000100100000001000010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(8),
	datab => \inst5|ALT_INV_new_cursor_row\(9),
	datac => \inst5|ALT_INV_RECV_UART~1_combout\,
	datad => \inst5|ALT_INV_new_cursor_row\(0),
	dataf => \inst5|ALT_INV_RECV_UART~0_combout\,
	combout => \inst5|RECV_UART~2_combout\);

-- Location: MLABCELL_X34_Y4_N51
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

-- Location: LABCELL_X35_Y4_N54
\inst5|cursor_row~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~5_combout\ = ( \inst5|RECV_UART~2_combout\ & ( \inst5|cursor_row~4_combout\ & ( (!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1)) ) ) ) # ( !\inst5|RECV_UART~2_combout\ & ( \inst5|cursor_row~4_combout\ & ( (!\inst5|PACKET_COUNT\(0) & 
-- !\inst5|PACKET_COUNT\(1)) ) ) ) # ( \inst5|RECV_UART~2_combout\ & ( !\inst5|cursor_row~4_combout\ ) ) # ( !\inst5|RECV_UART~2_combout\ & ( !\inst5|cursor_row~4_combout\ & ( (((!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1))) # 
-- (\inst5|cursor_row\(7))) # (\inst5|cursor_row\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100111111111111111111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datab => \inst5|ALT_INV_cursor_row\(8),
	datac => \inst5|ALT_INV_cursor_row\(7),
	datad => \inst5|ALT_INV_PACKET_COUNT\(1),
	datae => \inst5|ALT_INV_RECV_UART~2_combout\,
	dataf => \inst5|ALT_INV_cursor_row~4_combout\,
	combout => \inst5|cursor_row~5_combout\);

-- Location: FF_X35_Y4_N56
\inst5|cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_row~5_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(6));

-- Location: LABCELL_X35_Y4_N27
\inst5|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~1_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(7) ) + ( \inst5|Add4~7\ ) + ( \inst5|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_CHAR3\(7),
	cin => \inst5|Add4~6\,
	sharein => \inst5|Add4~7\,
	sumout => \inst5|Add4~1_sumout\);

-- Location: FF_X35_Y4_N29
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_row\(9));

-- Location: LABCELL_X35_Y4_N51
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

-- Location: MLABCELL_X34_Y5_N45
\inst5|cursor_row~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~1_combout\ = ( !\inst5|cursor_row~0_combout\ & ( \inst5|RECV_UART~2_combout\ & ( (\inst5|PACKET_COUNT\(0)) # (\inst5|PACKET_COUNT\(1)) ) ) ) # ( !\inst5|cursor_row~0_combout\ & ( !\inst5|RECV_UART~2_combout\ & ( (!\inst5|cursor_row\(7) & 
-- (\inst5|cursor_row\(8) & ((\inst5|PACKET_COUNT\(0)) # (\inst5|PACKET_COUNT\(1))))) # (\inst5|cursor_row\(7) & (((\inst5|PACKET_COUNT\(0))) # (\inst5|PACKET_COUNT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100111111000000000000000000111111001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_PACKET_COUNT\(1),
	datac => \inst5|ALT_INV_PACKET_COUNT\(0),
	datad => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_cursor_row~0_combout\,
	dataf => \inst5|ALT_INV_RECV_UART~2_combout\,
	combout => \inst5|cursor_row~1_combout\);

-- Location: FF_X34_Y5_N26
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
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(8));

-- Location: MLABCELL_X34_Y5_N57
\inst5|cursor_row~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~2_combout\ = ( !\inst5|new_cursor_row\(7) & ( !\inst5|new_cursor_row\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst5|ALT_INV_new_cursor_row\(7),
	dataf => \inst5|ALT_INV_new_cursor_row\(9),
	combout => \inst5|cursor_row~2_combout\);

-- Location: MLABCELL_X34_Y5_N27
\inst5|cursor_row~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~3_combout\ = ( \inst5|cursor_row~2_combout\ & ( \inst5|RECV_UART~2_combout\ & ( (!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1)) ) ) ) # ( !\inst5|cursor_row~2_combout\ & ( \inst5|RECV_UART~2_combout\ ) ) # ( 
-- \inst5|cursor_row~2_combout\ & ( !\inst5|RECV_UART~2_combout\ & ( (!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1)) ) ) ) # ( !\inst5|cursor_row~2_combout\ & ( !\inst5|RECV_UART~2_combout\ & ( (((!\inst5|PACKET_COUNT\(0) & !\inst5|PACKET_COUNT\(1))) # 
-- (\inst5|cursor_row\(7))) # (\inst5|cursor_row\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111111111110000001100000011111111111111111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(8),
	datab => \inst5|ALT_INV_PACKET_COUNT\(0),
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	datad => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row~2_combout\,
	dataf => \inst5|ALT_INV_RECV_UART~2_combout\,
	combout => \inst5|cursor_row~3_combout\);

-- Location: FF_X34_Y5_N50
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
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_row\(7));

-- Location: LABCELL_X40_Y4_N51
\inst6|SevenSeg_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out~0_combout\ = ( \inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) ) ) # ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) ) # ( \inst5|cursor_row\(8) & ( !\inst5|cursor_row\(6) ) 
-- ) # ( !\inst5|cursor_row\(8) & ( !\inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst6|SevenSeg_out~0_combout\);

-- Location: LABCELL_X40_Y4_N33
\inst6|SevenSeg_out[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[5]~1_combout\ = ( \inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) ) # ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) ) ) # ( !\inst5|cursor_row\(8) & ( !\inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000011111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst6|SevenSeg_out[5]~1_combout\);

-- Location: LABCELL_X40_Y4_N36
\inst6|SevenSeg_out[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[4]~2_combout\ = ( \inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) ) ) # ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) ) ) # ( \inst5|cursor_row\(8) & ( !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst6|SevenSeg_out[4]~2_combout\);

-- Location: LABCELL_X40_Y4_N54
\inst6|SevenSeg_out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[3]~3_combout\ = ( \inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) ) # ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) ) ) # ( \inst5|cursor_row\(8) & ( 
-- !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst6|SevenSeg_out[3]~3_combout\);

-- Location: LABCELL_X40_Y4_N12
\inst6|SevenSeg_out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[2]~4_combout\ = ( !\inst5|cursor_row\(8) & ( !\inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst6|SevenSeg_out[2]~4_combout\);

-- Location: LABCELL_X39_Y4_N24
\inst6|SevenSeg_out[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[1]~5_combout\ = ( \inst5|cursor_row\(7) & ( (!\inst5|cursor_row\(8)) # (\inst5|cursor_row\(6)) ) ) # ( !\inst5|cursor_row\(7) & ( (!\inst5|cursor_row\(6)) # (!\inst5|cursor_row\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(6),
	datac => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst6|SevenSeg_out[1]~5_combout\);

-- Location: LABCELL_X40_Y4_N6
\inst6|SevenSeg_out[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[3]~6_combout\ = ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) ) ) # ( \inst5|cursor_row\(8) & ( !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(6),
	combout => \inst6|SevenSeg_out[3]~6_combout\);

-- Location: LABCELL_X36_Y5_N24
\inst5|PACKET_CHAR2[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[7]~1_combout\ = ( \inst5|LessThan1~0_combout\ & ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & (\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	datad => \inst5|ALT_INV_PACKET_COUNT\(0),
	datae => \inst5|ALT_INV_LessThan1~0_combout\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|PACKET_CHAR2[7]~1_combout\);

-- Location: FF_X37_Y5_N35
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

-- Location: FF_X37_Y5_N40
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

-- Location: LABCELL_X36_Y6_N51
\inst5|cursor_column~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~4_combout\ = ( \inst5|new_cursor_column\(9) & ( (!\inst5|new_cursor_column\(8) & (\inst5|new_cursor_column\(0) & !\inst5|new_cursor_column\(7))) ) ) # ( !\inst5|new_cursor_column\(9) & ( \inst5|new_cursor_column\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_new_cursor_column\(0),
	datac => \inst5|ALT_INV_new_cursor_column\(7),
	dataf => \inst5|ALT_INV_new_cursor_column\(9),
	combout => \inst5|cursor_column~4_combout\);

-- Location: LABCELL_X36_Y6_N12
\inst5|cursor_column~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~9_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(9) & ( (!\inst5|new_cursor_column\(8) & (\inst5|new_cursor_column\(1) & ((!\inst5|new_cursor_column\(0)) # (!\inst5|new_cursor_column\(7))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(9) & ( (!\inst5|new_cursor_column\(8) & (!\inst5|new_cursor_column\(7) & \inst5|new_cursor_column\(1))) ) ) ) # ( \inst5|RECV_UART~3_combout\ & ( !\inst5|new_cursor_column\(9) & ( 
-- \inst5|new_cursor_column\(1) ) ) ) # ( !\inst5|RECV_UART~3_combout\ & ( !\inst5|new_cursor_column\(9) & ( \inst5|new_cursor_column\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000101000000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_new_cursor_column\(0),
	datac => \inst5|ALT_INV_new_cursor_column\(7),
	datad => \inst5|ALT_INV_new_cursor_column\(1),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(9),
	combout => \inst5|cursor_column~9_combout\);

-- Location: FF_X36_Y6_N13
\inst5|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~9_combout\,
	sclr => \inst5|cursor_column[0]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(1));

-- Location: FF_X37_Y5_N43
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

-- Location: FF_X37_Y5_N49
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

-- Location: MLABCELL_X37_Y5_N0
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

-- Location: MLABCELL_X37_Y5_N3
\inst5|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~37_sumout\ = SUM(( \inst5|cursor_column\(1) ) + ( \inst5|PACKET_CHAR2\(1) ) + ( \inst5|Add5~18\ ))
-- \inst5|Add5~38\ = CARRY(( \inst5|cursor_column\(1) ) + ( \inst5|PACKET_CHAR2\(1) ) + ( \inst5|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(1),
	datac => \inst5|ALT_INV_PACKET_CHAR2\(1),
	cin => \inst5|Add5~18\,
	sumout => \inst5|Add5~37_sumout\,
	cout => \inst5|Add5~38\);

-- Location: FF_X37_Y5_N5
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(1));

-- Location: FF_X37_Y5_N37
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

-- Location: FF_X37_Y5_N56
\inst5|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(4),
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(4));

-- Location: FF_X37_Y5_N47
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

-- Location: FF_X37_Y5_N58
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

-- Location: MLABCELL_X37_Y5_N6
\inst5|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~33_sumout\ = SUM(( \inst5|PACKET_CHAR2\(2) ) + ( \inst5|cursor_column\(2) ) + ( \inst5|Add5~38\ ))
-- \inst5|Add5~34\ = CARRY(( \inst5|PACKET_CHAR2\(2) ) + ( \inst5|cursor_column\(2) ) + ( \inst5|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(2),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(2),
	cin => \inst5|Add5~38\,
	sumout => \inst5|Add5~33_sumout\,
	cout => \inst5|Add5~34\);

-- Location: FF_X37_Y5_N8
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(2));

-- Location: LABCELL_X36_Y6_N0
\inst5|cursor_column~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~8_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(2) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & ((!\inst5|new_cursor_column\(0)) # (!\inst5|new_cursor_column\(7))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(2) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & !\inst5|new_cursor_column\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101000001111111110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_new_cursor_column\(0),
	datac => \inst5|ALT_INV_new_cursor_column\(7),
	datad => \inst5|ALT_INV_new_cursor_column\(9),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(2),
	combout => \inst5|cursor_column~8_combout\);

-- Location: FF_X36_Y6_N1
\inst5|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~8_combout\,
	sclr => \inst5|cursor_column[0]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(2));

-- Location: MLABCELL_X37_Y5_N9
\inst5|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~29_sumout\ = SUM(( \inst5|PACKET_CHAR2\(3) ) + ( \inst5|cursor_column\(3) ) + ( \inst5|Add5~34\ ))
-- \inst5|Add5~30\ = CARRY(( \inst5|PACKET_CHAR2\(3) ) + ( \inst5|cursor_column\(3) ) + ( \inst5|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_column\(3),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(3),
	cin => \inst5|Add5~34\,
	sumout => \inst5|Add5~29_sumout\,
	cout => \inst5|Add5~30\);

-- Location: FF_X37_Y5_N11
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(3));

-- Location: LABCELL_X36_Y6_N27
\inst5|cursor_column~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~7_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(3) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & ((!\inst5|new_cursor_column\(0)) # (!\inst5|new_cursor_column\(7))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(3) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & !\inst5|new_cursor_column\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111100001111101011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_new_cursor_column\(0),
	datac => \inst5|ALT_INV_new_cursor_column\(9),
	datad => \inst5|ALT_INV_new_cursor_column\(7),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(3),
	combout => \inst5|cursor_column~7_combout\);

-- Location: FF_X36_Y6_N29
\inst5|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~7_combout\,
	sclr => \inst5|cursor_column[0]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(3));

-- Location: MLABCELL_X37_Y5_N12
\inst5|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~25_sumout\ = SUM(( \inst5|PACKET_CHAR2\(4) ) + ( \inst5|cursor_column\(4) ) + ( \inst5|Add5~30\ ))
-- \inst5|Add5~26\ = CARRY(( \inst5|PACKET_CHAR2\(4) ) + ( \inst5|cursor_column\(4) ) + ( \inst5|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(4),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(4),
	cin => \inst5|Add5~30\,
	sumout => \inst5|Add5~25_sumout\,
	cout => \inst5|Add5~26\);

-- Location: FF_X37_Y5_N14
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(4));

-- Location: LABCELL_X36_Y6_N3
\inst5|cursor_column~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~6_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(4) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & ((!\inst5|new_cursor_column\(0)) # (!\inst5|new_cursor_column\(7))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(4) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & !\inst5|new_cursor_column\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111100001111101011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_new_cursor_column\(0),
	datac => \inst5|ALT_INV_new_cursor_column\(9),
	datad => \inst5|ALT_INV_new_cursor_column\(7),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(4),
	combout => \inst5|cursor_column~6_combout\);

-- Location: FF_X36_Y6_N5
\inst5|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~6_combout\,
	sclr => \inst5|cursor_column[0]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(4));

-- Location: MLABCELL_X37_Y5_N15
\inst5|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~21_sumout\ = SUM(( \inst5|PACKET_CHAR2\(5) ) + ( \inst5|cursor_column\(5) ) + ( \inst5|Add5~26\ ))
-- \inst5|Add5~22\ = CARRY(( \inst5|PACKET_CHAR2\(5) ) + ( \inst5|cursor_column\(5) ) + ( \inst5|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_column\(5),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(5),
	cin => \inst5|Add5~26\,
	sumout => \inst5|Add5~21_sumout\,
	cout => \inst5|Add5~22\);

-- Location: FF_X37_Y5_N17
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(5));

-- Location: MLABCELL_X37_Y5_N39
\inst5|RECV_UART~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~3_combout\ = ( !\inst5|new_cursor_column\(2) & ( !\inst5|new_cursor_column\(4) & ( (!\inst5|new_cursor_column\(1) & (!\inst5|new_cursor_column\(5) & (!\inst5|new_cursor_column\(3) & !\inst5|new_cursor_column\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(1),
	datab => \inst5|ALT_INV_new_cursor_column\(5),
	datac => \inst5|ALT_INV_new_cursor_column\(3),
	datad => \inst5|ALT_INV_new_cursor_column\(6),
	datae => \inst5|ALT_INV_new_cursor_column\(2),
	dataf => \inst5|ALT_INV_new_cursor_column\(4),
	combout => \inst5|RECV_UART~3_combout\);

-- Location: MLABCELL_X37_Y5_N30
\inst5|RECV_UART~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~4_combout\ = ( !\inst5|new_cursor_column\(9) & ( \inst5|RECV_UART~3_combout\ & ( (!\inst5|new_cursor_column\(8) & ((\inst5|new_cursor_column\(7)))) # (\inst5|new_cursor_column\(8) & (!\inst5|new_cursor_column\(0) & 
-- !\inst5|new_cursor_column\(7))) ) ) ) # ( !\inst5|new_cursor_column\(9) & ( !\inst5|RECV_UART~3_combout\ & ( !\inst5|new_cursor_column\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000001010111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(0),
	datac => \inst5|ALT_INV_new_cursor_column\(8),
	datad => \inst5|ALT_INV_new_cursor_column\(7),
	datae => \inst5|ALT_INV_new_cursor_column\(9),
	dataf => \inst5|ALT_INV_RECV_UART~3_combout\,
	combout => \inst5|RECV_UART~4_combout\);

-- Location: LABCELL_X36_Y6_N9
\inst5|cursor_column[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column[0]~1_combout\ = ( !\inst5|PACKET_COUNT\(1) & ( \inst5|RECV_UART~4_combout\ & ( !\inst5|PACKET_COUNT\(0) ) ) ) # ( \inst5|PACKET_COUNT\(1) & ( !\inst5|RECV_UART~4_combout\ & ( (!\inst5|cursor_column\(8) & (!\inst5|cursor_column\(9) & 
-- !\inst5|cursor_column\(7))) ) ) ) # ( !\inst5|PACKET_COUNT\(1) & ( !\inst5|RECV_UART~4_combout\ & ( (!\inst5|PACKET_COUNT\(0)) # ((!\inst5|cursor_column\(8) & (!\inst5|cursor_column\(9) & !\inst5|cursor_column\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010110000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datab => \inst5|ALT_INV_cursor_column\(8),
	datac => \inst5|ALT_INV_cursor_column\(9),
	datad => \inst5|ALT_INV_cursor_column\(7),
	datae => \inst5|ALT_INV_PACKET_COUNT\(1),
	dataf => \inst5|ALT_INV_RECV_UART~4_combout\,
	combout => \inst5|cursor_column[0]~1_combout\);

-- Location: FF_X36_Y6_N53
\inst5|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~4_combout\,
	sclr => \inst5|cursor_column[0]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(0));

-- Location: FF_X37_Y5_N2
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(0));

-- Location: LABCELL_X36_Y6_N24
\inst5|cursor_column~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~5_combout\ = ( \inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(5) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & ((!\inst5|new_cursor_column\(0)) # (!\inst5|new_cursor_column\(7))))) ) ) ) # ( 
-- !\inst5|RECV_UART~3_combout\ & ( \inst5|new_cursor_column\(5) & ( (!\inst5|new_cursor_column\(9)) # ((!\inst5|new_cursor_column\(8) & !\inst5|new_cursor_column\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101000001111111110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_new_cursor_column\(0),
	datac => \inst5|ALT_INV_new_cursor_column\(7),
	datad => \inst5|ALT_INV_new_cursor_column\(9),
	datae => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(5),
	combout => \inst5|cursor_column~5_combout\);

-- Location: FF_X36_Y6_N26
\inst5|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~5_combout\,
	sclr => \inst5|cursor_column[0]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(5));

-- Location: MLABCELL_X37_Y5_N18
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

-- Location: FF_X37_Y5_N20
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(6));

-- Location: LABCELL_X36_Y6_N30
\inst5|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan9~0_combout\ = ( \inst5|new_cursor_column\(9) & ( ((\inst5|new_cursor_column\(7) & ((!\inst5|RECV_UART~3_combout\) # (\inst5|new_cursor_column\(0))))) # (\inst5|new_cursor_column\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010101110101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_new_cursor_column\(0),
	datac => \inst5|ALT_INV_new_cursor_column\(7),
	datad => \inst5|ALT_INV_RECV_UART~3_combout\,
	dataf => \inst5|ALT_INV_new_cursor_column\(9),
	combout => \inst5|LessThan9~0_combout\);

-- Location: LABCELL_X36_Y6_N33
\inst7|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = ( !\inst5|cursor_column\(9) & ( (!\inst5|cursor_column\(7) & !\inst5|cursor_column\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(7),
	datad => \inst5|ALT_INV_cursor_column\(8),
	dataf => \inst5|ALT_INV_cursor_column\(9),
	combout => \inst7|Equal0~0_combout\);

-- Location: LABCELL_X36_Y6_N39
\inst5|cursor_column~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~0_combout\ = ( \inst5|Equal3~0_combout\ & ( \inst7|Equal0~0_combout\ ) ) # ( !\inst5|Equal3~0_combout\ & ( \inst7|Equal0~0_combout\ & ( (\inst5|new_cursor_column\(6) & (\inst5|RECV_UART~4_combout\ & !\inst5|LessThan9~0_combout\)) ) ) 
-- ) # ( \inst5|Equal3~0_combout\ & ( !\inst7|Equal0~0_combout\ ) ) # ( !\inst5|Equal3~0_combout\ & ( !\inst7|Equal0~0_combout\ & ( (\inst5|new_cursor_column\(6) & !\inst5|LessThan9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111100010000000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(6),
	datab => \inst5|ALT_INV_RECV_UART~4_combout\,
	datac => \inst5|ALT_INV_LessThan9~0_combout\,
	datae => \inst5|ALT_INV_Equal3~0_combout\,
	dataf => \inst7|ALT_INV_Equal0~0_combout\,
	combout => \inst5|cursor_column~0_combout\);

-- Location: FF_X36_Y6_N41
\inst5|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~0_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(6));

-- Location: MLABCELL_X37_Y5_N21
\inst5|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~9_sumout\ = SUM(( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|cursor_column\(7) ) + ( \inst5|Add5~2\ ))
-- \inst5|Add5~10\ = CARRY(( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|cursor_column\(7) ) + ( \inst5|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(7),
	cin => \inst5|Add5~2\,
	sumout => \inst5|Add5~9_sumout\,
	cout => \inst5|Add5~10\);

-- Location: FF_X37_Y5_N23
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(7));

-- Location: LABCELL_X36_Y6_N54
\inst5|cursor_column~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~3_combout\ = ( \inst5|new_cursor_column\(9) & ( (\inst5|new_cursor_column\(7)) # (\inst5|new_cursor_column\(8)) ) ) # ( !\inst5|new_cursor_column\(9) & ( \inst5|new_cursor_column\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datac => \inst5|ALT_INV_new_cursor_column\(7),
	dataf => \inst5|ALT_INV_new_cursor_column\(9),
	combout => \inst5|cursor_column~3_combout\);

-- Location: FF_X36_Y6_N56
\inst5|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~3_combout\,
	sclr => \inst5|cursor_column[0]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(7));

-- Location: MLABCELL_X37_Y5_N24
\inst5|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~5_sumout\ = SUM(( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|cursor_column\(8) ) + ( \inst5|Add5~10\ ))
-- \inst5|Add5~6\ = CARRY(( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|cursor_column\(8) ) + ( \inst5|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(8),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(7),
	cin => \inst5|Add5~10\,
	sumout => \inst5|Add5~5_sumout\,
	cout => \inst5|Add5~6\);

-- Location: FF_X37_Y5_N26
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(8));

-- Location: LABCELL_X36_Y6_N57
\inst5|cursor_column~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~2_combout\ = ( \inst7|Equal0~0_combout\ & ( ((\inst5|new_cursor_column\(8) & (\inst5|RECV_UART~4_combout\ & !\inst5|LessThan9~0_combout\))) # (\inst5|Equal3~0_combout\) ) ) # ( !\inst7|Equal0~0_combout\ & ( 
-- ((\inst5|new_cursor_column\(8) & !\inst5|LessThan9~0_combout\)) # (\inst5|Equal3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111100010000111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(8),
	datab => \inst5|ALT_INV_RECV_UART~4_combout\,
	datac => \inst5|ALT_INV_LessThan9~0_combout\,
	datad => \inst5|ALT_INV_Equal3~0_combout\,
	dataf => \inst7|ALT_INV_Equal0~0_combout\,
	combout => \inst5|cursor_column~2_combout\);

-- Location: FF_X36_Y6_N59
\inst5|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~2_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(8));

-- Location: MLABCELL_X37_Y5_N27
\inst5|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~13_sumout\ = SUM(( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|cursor_column\(9) ) + ( \inst5|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(9),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(7),
	cin => \inst5|Add5~6\,
	sumout => \inst5|Add5~13_sumout\);

-- Location: FF_X37_Y5_N29
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
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(9));

-- Location: FF_X36_Y6_N8
\inst5|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|new_cursor_column\(9),
	sclr => \inst5|cursor_column[0]~1_combout\,
	sload => VCC,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(9));

-- Location: LABCELL_X36_Y5_N39
\inst7|SevenSeg_out[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[6]~0_combout\ = ( \inst5|cursor_column\(8) & ( ((\inst5|cursor_column\(6) & \inst5|cursor_column\(7))) # (\inst5|cursor_column\(9)) ) ) # ( !\inst5|cursor_column\(8) & ( !\inst5|cursor_column\(9) $ (\inst5|cursor_column\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(9),
	datac => \inst5|ALT_INV_cursor_column\(6),
	datad => \inst5|ALT_INV_cursor_column\(7),
	dataf => \inst5|ALT_INV_cursor_column\(8),
	combout => \inst7|SevenSeg_out[6]~0_combout\);

-- Location: MLABCELL_X37_Y5_N54
\inst7|SevenSeg_out[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[5]~6_combout\ = ( \inst5|cursor_column\(9) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) # ( !\inst5|cursor_column\(9) & ( (!\inst5|cursor_column\(7) & (\inst5|cursor_column\(6) & !\inst5|cursor_column\(8))) # 
-- (\inst5|cursor_column\(7) & ((!\inst5|cursor_column\(8)) # (\inst5|cursor_column\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datab => \inst5|ALT_INV_cursor_column\(6),
	datac => \inst5|ALT_INV_cursor_column\(8),
	dataf => \inst5|ALT_INV_cursor_column\(9),
	combout => \inst7|SevenSeg_out[5]~6_combout\);

-- Location: MLABCELL_X37_Y5_N45
\inst7|SevenSeg_out[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[4]~1_combout\ = ((!\inst5|cursor_column\(7) & ((\inst5|cursor_column\(8)))) # (\inst5|cursor_column\(7) & (\inst5|cursor_column\(9)))) # (\inst5|cursor_column\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101111111111000110111111111100011011111111110001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datab => \inst5|ALT_INV_cursor_column\(9),
	datac => \inst5|ALT_INV_cursor_column\(8),
	datad => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst7|SevenSeg_out[4]~1_combout\);

-- Location: MLABCELL_X37_Y5_N42
\inst7|SevenSeg_out[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[3]~5_combout\ = (!\inst5|cursor_column\(7) & (!\inst5|cursor_column\(8) $ (((!\inst5|cursor_column\(6)) # (\inst5|cursor_column\(9)))))) # (\inst5|cursor_column\(7) & (((\inst5|cursor_column\(8) & \inst5|cursor_column\(6))) # 
-- (\inst5|cursor_column\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110010111000110111001011100011011100101110001101110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datab => \inst5|ALT_INV_cursor_column\(9),
	datac => \inst5|ALT_INV_cursor_column\(8),
	datad => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst7|SevenSeg_out[3]~5_combout\);

-- Location: MLABCELL_X37_Y5_N57
\inst7|SevenSeg_out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[2]~4_combout\ = ( \inst5|cursor_column\(9) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) # ( !\inst5|cursor_column\(9) & ( (\inst5|cursor_column\(7) & (!\inst5|cursor_column\(6) & !\inst5|cursor_column\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datab => \inst5|ALT_INV_cursor_column\(6),
	datac => \inst5|ALT_INV_cursor_column\(8),
	dataf => \inst5|ALT_INV_cursor_column\(9),
	combout => \inst7|SevenSeg_out[2]~4_combout\);

-- Location: MLABCELL_X37_Y5_N51
\inst7|SevenSeg_out[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[1]~3_combout\ = (!\inst5|cursor_column\(9) & ((!\inst5|cursor_column\(8)) # (!\inst5|cursor_column\(6) $ (\inst5|cursor_column\(7))))) # (\inst5|cursor_column\(9) & (((!\inst5|cursor_column\(8) & !\inst5|cursor_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011000100111110001100010011111000110001001111100011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(6),
	datab => \inst5|ALT_INV_cursor_column\(9),
	datac => \inst5|ALT_INV_cursor_column\(8),
	datad => \inst5|ALT_INV_cursor_column\(7),
	combout => \inst7|SevenSeg_out[1]~3_combout\);

-- Location: MLABCELL_X37_Y5_N48
\inst7|SevenSeg_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[0]~2_combout\ = ( \inst5|cursor_column\(8) & ( ((!\inst5|cursor_column\(7) & !\inst5|cursor_column\(6))) # (\inst5|cursor_column\(9)) ) ) # ( !\inst5|cursor_column\(8) & ( (!\inst5|cursor_column\(9) & (!\inst5|cursor_column\(7) & 
-- \inst5|cursor_column\(6))) # (\inst5|cursor_column\(9) & (\inst5|cursor_column\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_column\(9),
	datac => \inst5|ALT_INV_cursor_column\(7),
	datad => \inst5|ALT_INV_cursor_column\(6),
	dataf => \inst5|ALT_INV_cursor_column\(8),
	combout => \inst7|SevenSeg_out[0]~2_combout\);

-- Location: LABCELL_X35_Y5_N48
\inst5|PACKET_CHAR1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR1[1]~1_combout\ = ( \inst5|READ_CHAR~q\ & ( \inst5|LessThan1~0_combout\ & ( (\inst5|PACKET_COUNT\(0) & (!\inst5|PACKET_COUNT\(1) & !\inst5|mouse_state.WAIT_OUTPUT_READY~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datab => \inst5|ALT_INV_PACKET_COUNT\(1),
	datad => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datae => \inst5|ALT_INV_READ_CHAR~q\,
	dataf => \inst5|ALT_INV_LessThan1~0_combout\,
	combout => \inst5|PACKET_CHAR1[1]~1_combout\);

-- Location: FF_X35_Y5_N32
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
	ena => \inst5|PACKET_CHAR1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR1\(1));

-- Location: FF_X34_Y5_N59
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
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|right_button~q\);

-- Location: FF_X35_Y5_N25
\inst5|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|SHIFTIN\(0),
	sload => VCC,
	ena => \inst5|PACKET_CHAR1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR1\(0));

-- Location: FF_X34_Y5_N20
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
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|left_button~q\);

-- Location: MLABCELL_X28_Y6_N18
\inst2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~0_combout\ = ( \inst2|h_count\(7) & ( !\inst2|h_count\(9) ) ) # ( !\inst2|h_count\(7) & ( (!\inst2|h_count\(8)) # (!\inst2|h_count\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_h_count\(8),
	datad => \inst2|ALT_INV_h_count\(9),
	dataf => \inst2|ALT_INV_h_count\(7),
	combout => \inst2|LessThan6~0_combout\);

-- Location: FF_X28_Y6_N1
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

-- Location: LABCELL_X32_Y6_N27
\inst2|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = ( !\inst2|v_count\(9) & ( (!\inst2|v_count\(7)) # ((!\inst2|v_count\(5)) # ((!\inst2|v_count\(6)) # (!\inst2|v_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(7),
	datab => \inst2|ALT_INV_v_count\(5),
	datac => \inst2|ALT_INV_v_count\(6),
	datad => \inst2|ALT_INV_v_count\(8),
	dataf => \inst2|ALT_INV_v_count\(9),
	combout => \inst2|LessThan7~1_combout\);

-- Location: FF_X26_Y6_N43
\inst2|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_v~q\);

-- Location: LABCELL_X26_Y6_N42
\inst2|green_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|green_out~0_combout\ = (\inst2|video_on_h~q\ & \inst2|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_video_on_h~q\,
	datad => \inst2|ALT_INV_video_on_v~q\,
	combout => \inst2|green_out~0_combout\);

-- Location: FF_X29_Y5_N25
\inst3|bottom_cloud_x_pos[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos[7]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y5_N21
\inst3|top_cloud_x_pos[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|top_cloud_x_pos[1]~0_combout\ = ( !\inst3|top_cloud_x_pos\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(1),
	combout => \inst3|top_cloud_x_pos[1]~0_combout\);

-- Location: FF_X28_Y5_N14
\inst3|top_cloud_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|top_cloud_x_pos[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(1));

-- Location: LABCELL_X29_Y5_N30
\inst3|Add16~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~38_cout\ = CARRY(( \inst3|top_cloud_x_pos\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_top_cloud_x_pos\(1),
	cin => GND,
	cout => \inst3|Add16~38_cout\);

-- Location: LABCELL_X29_Y5_N33
\inst3|Add16~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~9_sumout\ = SUM(( \inst3|bottom_cloud_x_pos\(2) ) + ( VCC ) + ( \inst3|Add16~38_cout\ ))
-- \inst3|Add16~10\ = CARRY(( \inst3|bottom_cloud_x_pos\(2) ) + ( VCC ) + ( \inst3|Add16~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(2),
	cin => \inst3|Add16~38_cout\,
	sumout => \inst3|Add16~9_sumout\,
	cout => \inst3|Add16~10\);

-- Location: FF_X29_Y5_N11
\inst3|bottom_cloud_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos\(2));

-- Location: LABCELL_X29_Y5_N36
\inst3|Add16~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~17_sumout\ = SUM(( \inst3|bottom_cloud_x_pos\(3) ) + ( GND ) + ( \inst3|Add16~10\ ))
-- \inst3|Add16~18\ = CARRY(( \inst3|bottom_cloud_x_pos\(3) ) + ( GND ) + ( \inst3|Add16~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(3),
	cin => \inst3|Add16~10\,
	sumout => \inst3|Add16~17_sumout\,
	cout => \inst3|Add16~18\);

-- Location: FF_X29_Y5_N17
\inst3|bottom_cloud_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos\(3));

-- Location: LABCELL_X29_Y5_N39
\inst3|Add16~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~13_sumout\ = SUM(( \inst3|bottom_cloud_x_pos\(4) ) + ( VCC ) + ( \inst3|Add16~18\ ))
-- \inst3|Add16~14\ = CARRY(( \inst3|bottom_cloud_x_pos\(4) ) + ( VCC ) + ( \inst3|Add16~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_x_pos\(4),
	cin => \inst3|Add16~18\,
	sumout => \inst3|Add16~13_sumout\,
	cout => \inst3|Add16~14\);

-- Location: FF_X29_Y5_N29
\inst3|bottom_cloud_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos\(4));

-- Location: LABCELL_X29_Y5_N42
\inst3|Add16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~5_sumout\ = SUM(( \inst3|bottom_cloud_x_pos\(5) ) + ( VCC ) + ( \inst3|Add16~14\ ))
-- \inst3|Add16~6\ = CARRY(( \inst3|bottom_cloud_x_pos\(5) ) + ( VCC ) + ( \inst3|Add16~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_x_pos\(5),
	cin => \inst3|Add16~14\,
	sumout => \inst3|Add16~5_sumout\,
	cout => \inst3|Add16~6\);

-- Location: FF_X29_Y5_N5
\inst3|bottom_cloud_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos\(5));

-- Location: LABCELL_X29_Y5_N45
\inst3|Add16~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~29_sumout\ = SUM(( \inst3|bottom_cloud_x_pos[6]~DUPLICATE_q\ ) + ( VCC ) + ( \inst3|Add16~6\ ))
-- \inst3|Add16~30\ = CARRY(( \inst3|bottom_cloud_x_pos[6]~DUPLICATE_q\ ) + ( VCC ) + ( \inst3|Add16~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_bottom_cloud_x_pos[6]~DUPLICATE_q\,
	cin => \inst3|Add16~6\,
	sumout => \inst3|Add16~29_sumout\,
	cout => \inst3|Add16~30\);

-- Location: FF_X29_Y5_N13
\inst3|bottom_cloud_x_pos[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos[6]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y5_N48
\inst3|Add16~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~25_sumout\ = SUM(( \inst3|bottom_cloud_x_pos[7]~DUPLICATE_q\ ) + ( VCC ) + ( \inst3|Add16~30\ ))
-- \inst3|Add16~26\ = CARRY(( \inst3|bottom_cloud_x_pos[7]~DUPLICATE_q\ ) + ( VCC ) + ( \inst3|Add16~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_bottom_cloud_x_pos[7]~DUPLICATE_q\,
	cin => \inst3|Add16~30\,
	sumout => \inst3|Add16~25_sumout\,
	cout => \inst3|Add16~26\);

-- Location: FF_X29_Y5_N26
\inst3|bottom_cloud_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos\(7));

-- Location: LABCELL_X29_Y5_N51
\inst3|Add16~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~21_sumout\ = SUM(( \inst3|bottom_cloud_x_pos\(8) ) + ( VCC ) + ( \inst3|Add16~26\ ))
-- \inst3|Add16~22\ = CARRY(( \inst3|bottom_cloud_x_pos\(8) ) + ( VCC ) + ( \inst3|Add16~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_bottom_cloud_x_pos\(8),
	cin => \inst3|Add16~26\,
	sumout => \inst3|Add16~21_sumout\,
	cout => \inst3|Add16~22\);

-- Location: FF_X29_Y5_N8
\inst3|bottom_cloud_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos\(8));

-- Location: FF_X28_Y6_N44
\inst2|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(7),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(7));

-- Location: FF_X29_Y6_N41
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

-- Location: FF_X29_Y6_N20
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

-- Location: LABCELL_X29_Y6_N0
\inst3|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~5_sumout\ = SUM(( \inst2|pixel_column\(5) ) + ( VCC ) + ( !VCC ))
-- \inst3|Add4~6\ = CARRY(( \inst2|pixel_column\(5) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(5),
	cin => GND,
	sumout => \inst3|Add4~5_sumout\,
	cout => \inst3|Add4~6\);

-- Location: LABCELL_X29_Y6_N3
\inst3|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~17_sumout\ = SUM(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst3|Add4~6\ ))
-- \inst3|Add4~18\ = CARRY(( \inst2|pixel_column\(6) ) + ( GND ) + ( \inst3|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(6),
	cin => \inst3|Add4~6\,
	sumout => \inst3|Add4~17_sumout\,
	cout => \inst3|Add4~18\);

-- Location: LABCELL_X29_Y6_N6
\inst3|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~13_sumout\ = SUM(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst3|Add4~18\ ))
-- \inst3|Add4~14\ = CARRY(( \inst2|pixel_column\(7) ) + ( GND ) + ( \inst3|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(7),
	cin => \inst3|Add4~18\,
	sumout => \inst3|Add4~13_sumout\,
	cout => \inst3|Add4~14\);

-- Location: FF_X28_Y6_N14
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

-- Location: LABCELL_X29_Y6_N9
\inst3|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~9_sumout\ = SUM(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst3|Add4~14\ ))
-- \inst3|Add4~10\ = CARRY(( \inst2|pixel_column\(8) ) + ( GND ) + ( \inst3|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	cin => \inst3|Add4~14\,
	sumout => \inst3|Add4~9_sumout\,
	cout => \inst3|Add4~10\);

-- Location: FF_X29_Y5_N14
\inst3|bottom_cloud_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos\(6));

-- Location: MLABCELL_X28_Y4_N24
\inst3|LessThan8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan8~5_combout\ = ( \inst3|Add4~17_sumout\ & ( \inst3|bottom_cloud_x_pos\(6) & ( (!\inst3|bottom_cloud_x_pos\(7) & (!\inst3|Add4~13_sumout\ & (!\inst3|bottom_cloud_x_pos\(8) $ (\inst3|Add4~9_sumout\)))) # (\inst3|bottom_cloud_x_pos\(7) & 
-- (\inst3|Add4~13_sumout\ & (!\inst3|bottom_cloud_x_pos\(8) $ (\inst3|Add4~9_sumout\)))) ) ) ) # ( !\inst3|Add4~17_sumout\ & ( !\inst3|bottom_cloud_x_pos\(6) & ( (!\inst3|bottom_cloud_x_pos\(7) & (!\inst3|Add4~13_sumout\ & (!\inst3|bottom_cloud_x_pos\(8) $ 
-- (\inst3|Add4~9_sumout\)))) # (\inst3|bottom_cloud_x_pos\(7) & (\inst3|Add4~13_sumout\ & (!\inst3|bottom_cloud_x_pos\(8) $ (\inst3|Add4~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_x_pos\(7),
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(8),
	datac => \inst3|ALT_INV_Add4~13_sumout\,
	datad => \inst3|ALT_INV_Add4~9_sumout\,
	datae => \inst3|ALT_INV_Add4~17_sumout\,
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(6),
	combout => \inst3|LessThan8~5_combout\);

-- Location: MLABCELL_X28_Y7_N3
\inst3|LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan9~2_combout\ = ( \inst3|bottom_cloud_x_pos\(7) & ( (!\inst2|pixel_column\(7) & (\inst3|bottom_cloud_x_pos\(6) & (\inst3|bottom_cloud_x_pos\(5) & !\inst2|pixel_column\(6)))) # (\inst2|pixel_column\(7) & ((!\inst3|bottom_cloud_x_pos\(6) & 
-- (!\inst3|bottom_cloud_x_pos\(5) $ (\inst2|pixel_column\(6)))) # (\inst3|bottom_cloud_x_pos\(6) & (!\inst3|bottom_cloud_x_pos\(5) & \inst2|pixel_column\(6))))) ) ) # ( !\inst3|bottom_cloud_x_pos\(7) & ( (!\inst2|pixel_column\(7) & 
-- ((!\inst3|bottom_cloud_x_pos\(6) & (!\inst3|bottom_cloud_x_pos\(5) $ (\inst2|pixel_column\(6)))) # (\inst3|bottom_cloud_x_pos\(6) & (!\inst3|bottom_cloud_x_pos\(5) & \inst2|pixel_column\(6))))) # (\inst2|pixel_column\(7) & (\inst3|bottom_cloud_x_pos\(6) & 
-- (\inst3|bottom_cloud_x_pos\(5) & !\inst2|pixel_column\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100101000100000010010100001000010000101000100001000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(6),
	datac => \inst3|ALT_INV_bottom_cloud_x_pos\(5),
	datad => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(7),
	combout => \inst3|LessThan9~2_combout\);

-- Location: FF_X28_Y6_N35
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

-- Location: MLABCELL_X28_Y7_N18
\inst3|LessThan9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan9~3_combout\ = ( \inst2|pixel_column\(5) & ( \inst3|bottom_cloud_x_pos\(4) & ( (!\inst3|bottom_cloud_x_pos\(5) & (\inst3|LessThan9~2_combout\ & \inst2|pixel_column\(4))) ) ) ) # ( !\inst2|pixel_column\(5) & ( \inst3|bottom_cloud_x_pos\(4) & 
-- ( (\inst3|bottom_cloud_x_pos\(5) & (\inst3|LessThan9~2_combout\ & \inst2|pixel_column\(4))) ) ) ) # ( \inst2|pixel_column\(5) & ( !\inst3|bottom_cloud_x_pos\(4) & ( (!\inst3|bottom_cloud_x_pos\(5) & (\inst3|LessThan9~2_combout\ & 
-- !\inst2|pixel_column\(4))) ) ) ) # ( !\inst2|pixel_column\(5) & ( !\inst3|bottom_cloud_x_pos\(4) & ( (\inst3|bottom_cloud_x_pos\(5) & (\inst3|LessThan9~2_combout\ & !\inst2|pixel_column\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000001000000010000000000001000000010000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_x_pos\(5),
	datab => \inst3|ALT_INV_LessThan9~2_combout\,
	datac => \inst2|ALT_INV_pixel_column\(4),
	datae => \inst2|ALT_INV_pixel_column\(5),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(4),
	combout => \inst3|LessThan9~3_combout\);

-- Location: FF_X28_Y6_N52
\inst2|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(3),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(3));

-- Location: FF_X28_Y6_N38
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

-- Location: FF_X28_Y6_N8
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

-- Location: FF_X28_Y6_N46
\inst2|pixel_column[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(0),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column[0]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y6_N36
\inst3|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan9~0_combout\ = ( \inst3|top_cloud_x_pos\(1) & ( (\inst2|pixel_column\(1) & \inst2|pixel_column[0]~DUPLICATE_q\) ) ) # ( !\inst3|top_cloud_x_pos\(1) & ( (\inst2|pixel_column[0]~DUPLICATE_q\) # (\inst2|pixel_column\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(1),
	datac => \inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(1),
	combout => \inst3|LessThan9~0_combout\);

-- Location: MLABCELL_X28_Y7_N6
\inst3|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan9~1_combout\ = ( \inst3|bottom_cloud_x_pos\(2) & ( \inst3|LessThan9~0_combout\ & ( (!\inst3|bottom_cloud_x_pos\(3) & ((\inst2|pixel_column\(2)) # (\inst2|pixel_column\(3)))) # (\inst3|bottom_cloud_x_pos\(3) & (\inst2|pixel_column\(3) & 
-- \inst2|pixel_column\(2))) ) ) ) # ( !\inst3|bottom_cloud_x_pos\(2) & ( \inst3|LessThan9~0_combout\ & ( (!\inst3|bottom_cloud_x_pos\(3)) # (\inst2|pixel_column\(3)) ) ) ) # ( \inst3|bottom_cloud_x_pos\(2) & ( !\inst3|LessThan9~0_combout\ & ( 
-- (!\inst3|bottom_cloud_x_pos\(3) & \inst2|pixel_column\(3)) ) ) ) # ( !\inst3|bottom_cloud_x_pos\(2) & ( !\inst3|LessThan9~0_combout\ & ( (!\inst3|bottom_cloud_x_pos\(3) & ((\inst2|pixel_column\(2)) # (\inst2|pixel_column\(3)))) # 
-- (\inst3|bottom_cloud_x_pos\(3) & (\inst2|pixel_column\(3) & \inst2|pixel_column\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011000000110011001111110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(3),
	datac => \inst2|ALT_INV_pixel_column\(3),
	datad => \inst2|ALT_INV_pixel_column\(2),
	datae => \inst3|ALT_INV_bottom_cloud_x_pos\(2),
	dataf => \inst3|ALT_INV_LessThan9~0_combout\,
	combout => \inst3|LessThan9~1_combout\);

-- Location: FF_X28_Y6_N11
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

-- Location: LABCELL_X29_Y5_N54
\inst3|Add16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~1_sumout\ = SUM(( \inst3|bottom_cloud_x_pos\(9) ) + ( VCC ) + ( \inst3|Add16~22\ ))
-- \inst3|Add16~2\ = CARRY(( \inst3|bottom_cloud_x_pos\(9) ) + ( VCC ) + ( \inst3|Add16~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_bottom_cloud_x_pos\(9),
	cin => \inst3|Add16~22\,
	sumout => \inst3|Add16~1_sumout\,
	cout => \inst3|Add16~2\);

-- Location: FF_X29_Y5_N59
\inst3|bottom_cloud_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos\(9));

-- Location: MLABCELL_X28_Y6_N54
\inst3|Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~0_combout\ = ( \inst3|bottom_cloud_x_pos\(7) & ( (\inst3|bottom_cloud_x_pos[6]~DUPLICATE_q\ & \inst3|bottom_cloud_x_pos\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_bottom_cloud_x_pos[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_bottom_cloud_x_pos\(5),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(7),
	combout => \inst3|Add7~0_combout\);

-- Location: MLABCELL_X28_Y6_N27
\inst3|LessThan9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan9~6_combout\ = ( \inst3|Add7~0_combout\ & ( (!\inst2|pixel_column\(8) & (\inst2|pixel_column\(9) & (\inst3|bottom_cloud_x_pos\(8) & !\inst3|bottom_cloud_x_pos\(9)))) # (\inst2|pixel_column\(8) & (!\inst3|bottom_cloud_x_pos\(8) & 
-- (!\inst2|pixel_column\(9) $ (\inst3|bottom_cloud_x_pos\(9))))) ) ) # ( !\inst3|Add7~0_combout\ & ( (!\inst2|pixel_column\(8) & (!\inst3|bottom_cloud_x_pos\(8) & (!\inst2|pixel_column\(9) $ (\inst3|bottom_cloud_x_pos\(9))))) # (\inst2|pixel_column\(8) & 
-- (\inst3|bottom_cloud_x_pos\(8) & (!\inst2|pixel_column\(9) $ (\inst3|bottom_cloud_x_pos\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000101000010000100000100001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	datab => \inst2|ALT_INV_pixel_column\(9),
	datac => \inst3|ALT_INV_bottom_cloud_x_pos\(8),
	datad => \inst3|ALT_INV_bottom_cloud_x_pos\(9),
	dataf => \inst3|ALT_INV_Add7~0_combout\,
	combout => \inst3|LessThan9~6_combout\);

-- Location: FF_X32_Y6_N8
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

-- Location: FF_X32_Y6_N10
\inst2|pixel_row[0]~DUPLICATE\ : dffeas
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
	q => \inst2|pixel_row[0]~DUPLICATE_q\);

-- Location: FF_X32_Y6_N2
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

-- Location: FF_X31_Y6_N49
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

-- Location: LABCELL_X29_Y7_N12
\inst3|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan11~0_combout\ = ( !\inst2|pixel_row\(5) & ( (!\inst2|pixel_row\(1) & (!\inst2|pixel_row[0]~DUPLICATE_q\ & !\inst2|pixel_row\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(1),
	datac => \inst2|ALT_INV_pixel_row[0]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_row\(7),
	dataf => \inst2|ALT_INV_pixel_row\(5),
	combout => \inst3|LessThan11~0_combout\);

-- Location: LABCELL_X29_Y5_N57
\inst3|Add16~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add16~33_sumout\ = SUM(( \inst3|bottom_cloud_x_pos\(10) ) + ( VCC ) + ( \inst3|Add16~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_x_pos\(10),
	cin => \inst3|Add16~2\,
	sumout => \inst3|Add16~33_sumout\);

-- Location: FF_X29_Y5_N38
\inst3|bottom_cloud_x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add16~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|bottom_cloud_x_pos\(10));

-- Location: FF_X32_Y6_N26
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

-- Location: FF_X32_Y6_N29
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

-- Location: FF_X31_Y6_N56
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

-- Location: LABCELL_X29_Y5_N15
\inst3|bottom_cloud_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|bottom_cloud_on~0_combout\ = ( \inst2|pixel_row\(7) & ( \inst2|pixel_row\(6) & ( (!\inst3|bottom_cloud_x_pos\(10) & \inst2|pixel_row\(8)) ) ) ) # ( !\inst2|pixel_row\(7) & ( \inst2|pixel_row\(6) & ( (!\inst3|bottom_cloud_x_pos\(10) & 
-- (\inst2|pixel_row\(8) & ((\inst2|pixel_row\(4)) # (\inst2|pixel_row\(5))))) ) ) ) # ( \inst2|pixel_row\(7) & ( !\inst2|pixel_row\(6) & ( (!\inst3|bottom_cloud_x_pos\(10) & \inst2|pixel_row\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000010011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(5),
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(10),
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst2|ALT_INV_pixel_row\(8),
	datae => \inst2|ALT_INV_pixel_row\(7),
	dataf => \inst2|ALT_INV_pixel_row\(6),
	combout => \inst3|bottom_cloud_on~0_combout\);

-- Location: LABCELL_X29_Y5_N0
\inst3|LessThan9~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan9~7_combout\ = ( \inst3|bottom_cloud_x_pos\(8) & ( (\inst2|pixel_column\(8) & (\inst3|bottom_cloud_x_pos[7]~DUPLICATE_q\ & (\inst3|bottom_cloud_x_pos\(5) & \inst3|bottom_cloud_x_pos\(6)))) ) ) # ( !\inst3|bottom_cloud_x_pos\(8) & ( 
-- (\inst2|pixel_column\(8) & ((!\inst3|bottom_cloud_x_pos[7]~DUPLICATE_q\) # ((!\inst3|bottom_cloud_x_pos\(5)) # (!\inst3|bottom_cloud_x_pos\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	datab => \inst3|ALT_INV_bottom_cloud_x_pos[7]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_bottom_cloud_x_pos\(5),
	datad => \inst3|ALT_INV_bottom_cloud_x_pos\(6),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(8),
	combout => \inst3|LessThan9~7_combout\);

-- Location: FF_X32_Y6_N4
\inst2|pixel_row[3]~DUPLICATE\ : dffeas
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
	q => \inst2|pixel_row[3]~DUPLICATE_q\);

-- Location: FF_X32_Y6_N20
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

-- Location: LABCELL_X29_Y5_N6
\inst3|bottom_cloud_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|bottom_cloud_on~1_combout\ = ( !\inst2|pixel_row\(5) & ( \inst2|pixel_row\(6) & ( (!\inst2|pixel_row\(7) & ((!\inst2|pixel_row[3]~DUPLICATE_q\) # (!\inst2|pixel_row\(2)))) ) ) ) # ( \inst2|pixel_row\(5) & ( !\inst2|pixel_row\(6) & ( 
-- (!\inst2|pixel_row\(7) & ((!\inst2|pixel_row[3]~DUPLICATE_q\) # (!\inst2|pixel_row\(4)))) ) ) ) # ( !\inst2|pixel_row\(5) & ( !\inst2|pixel_row\(6) & ( (!\inst2|pixel_row\(7) & ((!\inst2|pixel_row[3]~DUPLICATE_q\) # ((!\inst2|pixel_row\(2)) # 
-- (\inst2|pixel_row\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010110000111000001110000011110000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row[3]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_pixel_row\(4),
	datac => \inst2|ALT_INV_pixel_row\(7),
	datad => \inst2|ALT_INV_pixel_row\(2),
	datae => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst2|ALT_INV_pixel_row\(6),
	combout => \inst3|bottom_cloud_on~1_combout\);

-- Location: FF_X28_Y6_N10
\inst2|pixel_column[9]~DUPLICATE\ : dffeas
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
	q => \inst2|pixel_column[9]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y5_N18
\inst3|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~1_combout\ = ( \inst3|bottom_cloud_x_pos\(8) & ( (\inst3|bottom_cloud_x_pos\(5) & (\inst3|bottom_cloud_x_pos\(6) & \inst3|bottom_cloud_x_pos\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_x_pos\(5),
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(6),
	datac => \inst3|ALT_INV_bottom_cloud_x_pos\(7),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(8),
	combout => \inst3|Add7~1_combout\);

-- Location: LABCELL_X29_Y5_N21
\inst3|bottom_cloud_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|bottom_cloud_on~2_combout\ = ( \inst3|Add7~1_combout\ & ( \inst3|bottom_cloud_x_pos\(9) & ( (\inst3|bottom_cloud_on~0_combout\ & !\inst3|bottom_cloud_on~1_combout\) ) ) ) # ( !\inst3|Add7~1_combout\ & ( \inst3|bottom_cloud_x_pos\(9) & ( 
-- (\inst3|bottom_cloud_on~0_combout\ & (!\inst3|bottom_cloud_on~1_combout\ & ((!\inst3|LessThan9~7_combout\) # (!\inst2|pixel_column[9]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Add7~1_combout\ & ( !\inst3|bottom_cloud_x_pos\(9) & ( 
-- (\inst3|bottom_cloud_on~0_combout\ & (!\inst3|bottom_cloud_on~1_combout\ & ((!\inst3|LessThan9~7_combout\) # (!\inst2|pixel_column[9]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Add7~1_combout\ & ( !\inst3|bottom_cloud_x_pos\(9) & ( 
-- (\inst3|bottom_cloud_on~0_combout\ & (!\inst3|LessThan9~7_combout\ & (!\inst3|bottom_cloud_on~1_combout\ & !\inst2|pixel_column[9]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010100000100000001010000010000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_on~0_combout\,
	datab => \inst3|ALT_INV_LessThan9~7_combout\,
	datac => \inst3|ALT_INV_bottom_cloud_on~1_combout\,
	datad => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Add7~1_combout\,
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(9),
	combout => \inst3|bottom_cloud_on~2_combout\);

-- Location: MLABCELL_X28_Y7_N0
\inst3|LessThan9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan9~4_combout\ = ( \inst3|bottom_cloud_x_pos\(7) & ( (!\inst3|bottom_cloud_x_pos\(6) & (\inst2|pixel_column\(7) & (!\inst3|bottom_cloud_x_pos\(5) & \inst2|pixel_column\(6)))) # (\inst3|bottom_cloud_x_pos\(6) & (\inst3|bottom_cloud_x_pos\(5) & 
-- ((\inst2|pixel_column\(6)) # (\inst2|pixel_column\(7))))) ) ) # ( !\inst3|bottom_cloud_x_pos\(7) & ( (!\inst2|pixel_column\(7) & (!\inst3|bottom_cloud_x_pos\(6) & (!\inst3|bottom_cloud_x_pos\(5) & \inst2|pixel_column\(6)))) # (\inst2|pixel_column\(7) & 
-- ((!\inst3|bottom_cloud_x_pos\(6)) # ((!\inst3|bottom_cloud_x_pos\(5)) # (\inst2|pixel_column\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010011010101010101001101010100000001010000110000000101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(6),
	datac => \inst3|ALT_INV_bottom_cloud_x_pos\(5),
	datad => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(7),
	combout => \inst3|LessThan9~4_combout\);

-- Location: MLABCELL_X28_Y7_N48
\inst3|LessThan9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan9~5_combout\ = ( \inst2|pixel_column\(5) & ( \inst3|bottom_cloud_x_pos\(4) & ( (!\inst3|LessThan9~4_combout\ & ((!\inst3|bottom_cloud_x_pos\(5)) # (!\inst3|LessThan9~2_combout\))) ) ) ) # ( !\inst2|pixel_column\(5) & ( 
-- \inst3|bottom_cloud_x_pos\(4) & ( !\inst3|LessThan9~4_combout\ ) ) ) # ( \inst2|pixel_column\(5) & ( !\inst3|bottom_cloud_x_pos\(4) & ( (!\inst3|LessThan9~4_combout\ & ((!\inst3|LessThan9~2_combout\) # ((!\inst3|bottom_cloud_x_pos\(5) & 
-- !\inst2|pixel_column\(4))))) ) ) ) # ( !\inst2|pixel_column\(5) & ( !\inst3|bottom_cloud_x_pos\(4) & ( (!\inst3|LessThan9~4_combout\ & ((!\inst3|bottom_cloud_x_pos\(5)) # ((!\inst3|LessThan9~2_combout\) # (!\inst2|pixel_column\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111011000000000011111111000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_x_pos\(5),
	datab => \inst3|ALT_INV_LessThan9~2_combout\,
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst3|ALT_INV_LessThan9~4_combout\,
	datae => \inst2|ALT_INV_pixel_column\(5),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(4),
	combout => \inst3|LessThan9~5_combout\);

-- Location: LABCELL_X29_Y7_N18
\inst3|bottom_cloud_on~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|bottom_cloud_on~3_combout\ = ( \inst3|bottom_cloud_on~2_combout\ & ( \inst3|LessThan9~5_combout\ & ( (!\inst3|LessThan11~0_combout\ & ((!\inst3|LessThan9~3_combout\) # ((!\inst3|LessThan9~1_combout\) # (!\inst3|LessThan9~6_combout\)))) ) ) ) # ( 
-- \inst3|bottom_cloud_on~2_combout\ & ( !\inst3|LessThan9~5_combout\ & ( (!\inst3|LessThan9~6_combout\ & !\inst3|LessThan11~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan9~3_combout\,
	datab => \inst3|ALT_INV_LessThan9~1_combout\,
	datac => \inst3|ALT_INV_LessThan9~6_combout\,
	datad => \inst3|ALT_INV_LessThan11~0_combout\,
	datae => \inst3|ALT_INV_bottom_cloud_on~2_combout\,
	dataf => \inst3|ALT_INV_LessThan9~5_combout\,
	combout => \inst3|bottom_cloud_on~3_combout\);

-- Location: LABCELL_X29_Y6_N12
\inst3|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~1_sumout\ = SUM(( \inst2|pixel_column[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add4~10\ ))
-- \inst3|Add4~2\ = CARRY(( \inst2|pixel_column[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	cin => \inst3|Add4~10\,
	sumout => \inst3|Add4~1_sumout\,
	cout => \inst3|Add4~2\);

-- Location: LABCELL_X29_Y6_N15
\inst3|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add4~21_sumout\ = SUM(( GND ) + ( GND ) + ( \inst3|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Add4~2\,
	sumout => \inst3|Add4~21_sumout\);

-- Location: LABCELL_X29_Y7_N24
\inst3|bottom_cloud_on~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|bottom_cloud_on~4_combout\ = ( !\inst3|Add4~21_sumout\ & ( (!\inst3|bottom_cloud_x_pos\(9)) # (\inst3|Add4~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_bottom_cloud_x_pos\(9),
	datad => \inst3|ALT_INV_Add4~1_sumout\,
	dataf => \inst3|ALT_INV_Add4~21_sumout\,
	combout => \inst3|bottom_cloud_on~4_combout\);

-- Location: MLABCELL_X28_Y4_N18
\inst3|LessThan8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan8~6_combout\ = ( \inst3|Add4~17_sumout\ & ( \inst3|bottom_cloud_x_pos\(6) & ( (!\inst3|bottom_cloud_x_pos\(8) & (\inst3|bottom_cloud_x_pos\(7) & (!\inst3|Add4~13_sumout\ & !\inst3|Add4~9_sumout\))) # (\inst3|bottom_cloud_x_pos\(8) & 
-- ((!\inst3|Add4~9_sumout\) # ((\inst3|bottom_cloud_x_pos\(7) & !\inst3|Add4~13_sumout\)))) ) ) ) # ( !\inst3|Add4~17_sumout\ & ( \inst3|bottom_cloud_x_pos\(6) & ( (!\inst3|bottom_cloud_x_pos\(8) & (!\inst3|Add4~9_sumout\ & ((!\inst3|Add4~13_sumout\) # 
-- (\inst3|bottom_cloud_x_pos\(7))))) # (\inst3|bottom_cloud_x_pos\(8) & (((!\inst3|Add4~13_sumout\) # (!\inst3|Add4~9_sumout\)) # (\inst3|bottom_cloud_x_pos\(7)))) ) ) ) # ( \inst3|Add4~17_sumout\ & ( !\inst3|bottom_cloud_x_pos\(6) & ( 
-- (!\inst3|bottom_cloud_x_pos\(8) & (\inst3|bottom_cloud_x_pos\(7) & (!\inst3|Add4~13_sumout\ & !\inst3|Add4~9_sumout\))) # (\inst3|bottom_cloud_x_pos\(8) & ((!\inst3|Add4~9_sumout\) # ((\inst3|bottom_cloud_x_pos\(7) & !\inst3|Add4~13_sumout\)))) ) ) ) # ( 
-- !\inst3|Add4~17_sumout\ & ( !\inst3|bottom_cloud_x_pos\(6) & ( (!\inst3|bottom_cloud_x_pos\(8) & (\inst3|bottom_cloud_x_pos\(7) & (!\inst3|Add4~13_sumout\ & !\inst3|Add4~9_sumout\))) # (\inst3|bottom_cloud_x_pos\(8) & ((!\inst3|Add4~9_sumout\) # 
-- ((\inst3|bottom_cloud_x_pos\(7) & !\inst3|Add4~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100010000011100110001000011110111001100010111001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_x_pos\(7),
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(8),
	datac => \inst3|ALT_INV_Add4~13_sumout\,
	datad => \inst3|ALT_INV_Add4~9_sumout\,
	datae => \inst3|ALT_INV_Add4~17_sumout\,
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(6),
	combout => \inst3|LessThan8~6_combout\);

-- Location: LABCELL_X29_Y7_N15
\inst3|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan8~0_combout\ = !\inst3|bottom_cloud_x_pos\(9) $ (!\inst3|Add4~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_bottom_cloud_x_pos\(9),
	datad => \inst3|ALT_INV_Add4~1_sumout\,
	combout => \inst3|LessThan8~0_combout\);

-- Location: MLABCELL_X28_Y7_N54
\inst3|LessThan8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan8~2_combout\ = ( \inst3|bottom_cloud_x_pos\(3) & ( (\inst2|pixel_column\(3) & (!\inst3|bottom_cloud_x_pos\(4) $ (\inst2|pixel_column\(4)))) ) ) # ( !\inst3|bottom_cloud_x_pos\(3) & ( (!\inst2|pixel_column\(3) & 
-- (!\inst3|bottom_cloud_x_pos\(4) $ (\inst2|pixel_column\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(4),
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst2|ALT_INV_pixel_column\(3),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(3),
	combout => \inst3|LessThan8~2_combout\);

-- Location: MLABCELL_X28_Y7_N57
\inst3|LessThan8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan8~3_combout\ = ( \inst3|bottom_cloud_x_pos\(3) & ( (!\inst2|pixel_column\(4) & ((!\inst2|pixel_column\(3)) # (\inst3|bottom_cloud_x_pos\(4)))) # (\inst2|pixel_column\(4) & (\inst3|bottom_cloud_x_pos\(4) & !\inst2|pixel_column\(3))) ) ) # ( 
-- !\inst3|bottom_cloud_x_pos\(3) & ( (!\inst2|pixel_column\(4) & \inst3|bottom_cloud_x_pos\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010110010101100101011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(4),
	datab => \inst3|ALT_INV_bottom_cloud_x_pos\(4),
	datac => \inst2|ALT_INV_pixel_column\(3),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(3),
	combout => \inst3|LessThan8~3_combout\);

-- Location: MLABCELL_X28_Y7_N15
\inst3|LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan8~1_combout\ = ( \inst3|bottom_cloud_x_pos\(2) & ( (!\inst2|pixel_column\(2)) # ((!\inst2|pixel_column\(1) & \inst3|top_cloud_x_pos\(1))) ) ) # ( !\inst3|bottom_cloud_x_pos\(2) & ( (!\inst2|pixel_column\(1) & (!\inst2|pixel_column\(2) & 
-- \inst3|top_cloud_x_pos\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011001110110011101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(1),
	datab => \inst2|ALT_INV_pixel_column\(2),
	datac => \inst3|ALT_INV_top_cloud_x_pos\(1),
	dataf => \inst3|ALT_INV_bottom_cloud_x_pos\(2),
	combout => \inst3|LessThan8~1_combout\);

-- Location: MLABCELL_X28_Y7_N24
\inst3|LessThan8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan8~4_combout\ = ( \inst3|bottom_cloud_x_pos\(5) & ( \inst3|LessThan8~1_combout\ & ( (!\inst3|LessThan8~2_combout\ & (!\inst3|LessThan8~3_combout\ & \inst3|Add4~5_sumout\)) ) ) ) # ( !\inst3|bottom_cloud_x_pos\(5) & ( 
-- \inst3|LessThan8~1_combout\ & ( ((!\inst3|LessThan8~2_combout\ & !\inst3|LessThan8~3_combout\)) # (\inst3|Add4~5_sumout\) ) ) ) # ( \inst3|bottom_cloud_x_pos\(5) & ( !\inst3|LessThan8~1_combout\ & ( (!\inst3|LessThan8~3_combout\ & \inst3|Add4~5_sumout\) ) 
-- ) ) # ( !\inst3|bottom_cloud_x_pos\(5) & ( !\inst3|LessThan8~1_combout\ & ( (!\inst3|LessThan8~3_combout\) # (\inst3|Add4~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000011000000110010001111100011110000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan8~2_combout\,
	datab => \inst3|ALT_INV_LessThan8~3_combout\,
	datac => \inst3|ALT_INV_Add4~5_sumout\,
	datae => \inst3|ALT_INV_bottom_cloud_x_pos\(5),
	dataf => \inst3|ALT_INV_LessThan8~1_combout\,
	combout => \inst3|LessThan8~4_combout\);

-- Location: LABCELL_X29_Y7_N0
\inst3|bottom_cloud_on\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|bottom_cloud_on~combout\ = ( \inst3|LessThan8~0_combout\ & ( \inst3|LessThan8~4_combout\ & ( (\inst3|bottom_cloud_on~3_combout\ & \inst3|bottom_cloud_on~4_combout\) ) ) ) # ( !\inst3|LessThan8~0_combout\ & ( \inst3|LessThan8~4_combout\ & ( 
-- (\inst3|bottom_cloud_on~3_combout\ & (\inst3|bottom_cloud_on~4_combout\ & !\inst3|LessThan8~6_combout\)) ) ) ) # ( \inst3|LessThan8~0_combout\ & ( !\inst3|LessThan8~4_combout\ & ( (\inst3|bottom_cloud_on~3_combout\ & \inst3|bottom_cloud_on~4_combout\) ) ) 
-- ) # ( !\inst3|LessThan8~0_combout\ & ( !\inst3|LessThan8~4_combout\ & ( (!\inst3|LessThan8~5_combout\ & (\inst3|bottom_cloud_on~3_combout\ & (\inst3|bottom_cloud_on~4_combout\ & !\inst3|LessThan8~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000110000001100000011000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan8~5_combout\,
	datab => \inst3|ALT_INV_bottom_cloud_on~3_combout\,
	datac => \inst3|ALT_INV_bottom_cloud_on~4_combout\,
	datad => \inst3|ALT_INV_LessThan8~6_combout\,
	datae => \inst3|ALT_INV_LessThan8~0_combout\,
	dataf => \inst3|ALT_INV_LessThan8~4_combout\,
	combout => \inst3|bottom_cloud_on~combout\);

-- Location: MLABCELL_X28_Y7_N42
\inst3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = ( \inst2|pixel_column\(6) & ( \inst2|pixel_column\(1) & ( (\inst2|pixel_column\(4) & \inst2|pixel_column\(5)) ) ) ) # ( !\inst2|pixel_column\(6) & ( \inst2|pixel_column\(1) & ( (!\inst2|pixel_column\(3) & 
-- (!\inst2|pixel_column\(2) & (!\inst2|pixel_column\(4) & !\inst2|pixel_column\(5)))) ) ) ) # ( \inst2|pixel_column\(6) & ( !\inst2|pixel_column\(1) & ( (\inst2|pixel_column\(4) & \inst2|pixel_column\(5)) ) ) ) # ( !\inst2|pixel_column\(6) & ( 
-- !\inst2|pixel_column\(1) & ( (!\inst2|pixel_column\(3) & (!\inst2|pixel_column\(4) & !\inst2|pixel_column\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000111110000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	datab => \inst2|ALT_INV_pixel_column\(2),
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst2|ALT_INV_pixel_column\(5),
	datae => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst2|ALT_INV_pixel_column\(1),
	combout => \inst3|LessThan0~0_combout\);

-- Location: MLABCELL_X28_Y7_N12
\inst3|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~0_combout\ = ( \inst2|pixel_column[0]~DUPLICATE_q\ & ( (\inst2|pixel_column\(1) & (\inst2|pixel_column\(2) & (\inst2|pixel_column\(7) & \inst2|pixel_column\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(1),
	datab => \inst2|ALT_INV_pixel_column\(2),
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst2|ALT_INV_pixel_column\(5),
	dataf => \inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\,
	combout => \inst3|LessThan1~0_combout\);

-- Location: LABCELL_X31_Y7_N51
\inst3|ball_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~0_combout\ = ( !\inst2|pixel_column\(8) & ( !\inst2|pixel_column[9]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_pixel_column\(8),
	combout => \inst3|ball_on~0_combout\);

-- Location: LABCELL_X31_Y5_N30
\inst3|LessThan12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan12~1_combout\ = ( !\inst3|ball_y_pos\(7) & ( !\inst3|ball_y_pos\(6) & ( (!\inst3|ball_y_pos\(8) & !\inst3|ball_y_pos\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(8),
	datad => \inst3|ALT_INV_ball_y_pos\(5),
	datae => \inst3|ALT_INV_ball_y_pos\(7),
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|LessThan12~1_combout\);

-- Location: LABCELL_X31_Y5_N0
\inst3|Add14~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~33_sumout\ = SUM(( \inst3|ball_y_motion\(0) ) + ( \inst3|ball_y_pos\(0) ) + ( !VCC ))
-- \inst3|Add14~34\ = CARRY(( \inst3|ball_y_motion\(0) ) + ( \inst3|ball_y_pos\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(0),
	datad => \inst3|ALT_INV_ball_y_motion\(0),
	cin => GND,
	sumout => \inst3|Add14~33_sumout\,
	cout => \inst3|Add14~34\);

-- Location: LABCELL_X31_Y5_N3
\inst3|Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~29_sumout\ = SUM(( \inst3|ball_y_motion\(1) ) + ( \inst3|ball_y_pos\(1) ) + ( \inst3|Add14~34\ ))
-- \inst3|Add14~30\ = CARRY(( \inst3|ball_y_motion\(1) ) + ( \inst3|ball_y_pos\(1) ) + ( \inst3|Add14~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(1),
	datad => \inst3|ALT_INV_ball_y_motion\(1),
	cin => \inst3|Add14~34\,
	sumout => \inst3|Add14~29_sumout\,
	cout => \inst3|Add14~30\);

-- Location: FF_X31_Y5_N44
\inst3|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(1));

-- Location: LABCELL_X31_Y5_N6
\inst3|Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~25_sumout\ = SUM(( \inst3|ball_y_pos[2]~DUPLICATE_q\ ) + ( \inst3|ball_y_motion\(1) ) + ( \inst3|Add14~30\ ))
-- \inst3|Add14~26\ = CARRY(( \inst3|ball_y_pos[2]~DUPLICATE_q\ ) + ( \inst3|ball_y_motion\(1) ) + ( \inst3|Add14~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_motion\(1),
	datad => \inst3|ALT_INV_ball_y_pos[2]~DUPLICATE_q\,
	cin => \inst3|Add14~30\,
	sumout => \inst3|Add14~25_sumout\,
	cout => \inst3|Add14~26\);

-- Location: FF_X31_Y5_N59
\inst3|ball_y_pos[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[2]~DUPLICATE_q\);

-- Location: FF_X31_Y5_N49
\inst3|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(4));

-- Location: LABCELL_X31_Y5_N42
\inst3|LessThan12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan12~0_combout\ = ( \inst3|ball_y_pos\(4) & ( (\inst3|ball_y_pos\(3) & (((\inst3|ball_y_pos\(1)) # (\inst3|ball_y_pos\(0))) # (\inst3|ball_y_pos[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(3),
	datab => \inst3|ALT_INV_ball_y_pos[2]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_ball_y_pos\(0),
	datad => \inst3|ALT_INV_ball_y_pos\(1),
	dataf => \inst3|ALT_INV_ball_y_pos\(4),
	combout => \inst3|LessThan12~0_combout\);

-- Location: LABCELL_X31_Y5_N51
\inst3|LessThan13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan13~1_combout\ = ( \inst3|ball_y_pos\(6) & ( \inst3|ball_y_pos\(8) & ( \inst3|ball_y_pos\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(7),
	datae => \inst3|ALT_INV_ball_y_pos\(6),
	dataf => \inst3|ALT_INV_ball_y_pos\(8),
	combout => \inst3|LessThan13~1_combout\);

-- Location: MLABCELL_X34_Y5_N0
\inst3|ball_y_motion~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_y_motion~2_combout\ = ( \inst3|LessThan12~0_combout\ & ( \inst3|LessThan13~1_combout\ & ( (!\inst3|ball_y_pos\(9) & ((\inst5|left_button~q\) # (\inst3|LessThan13~0_combout\))) ) ) ) # ( !\inst3|LessThan12~0_combout\ & ( 
-- \inst3|LessThan13~1_combout\ & ( (!\inst3|ball_y_pos\(9) & ((!\inst5|left_button~q\ & (\inst3|LessThan13~0_combout\)) # (\inst5|left_button~q\ & ((!\inst3|LessThan12~1_combout\))))) ) ) ) # ( \inst3|LessThan12~0_combout\ & ( !\inst3|LessThan13~1_combout\ 
-- & ( !\inst3|ball_y_pos\(9) ) ) ) # ( !\inst3|LessThan12~0_combout\ & ( !\inst3|LessThan13~1_combout\ & ( (!\inst3|ball_y_pos\(9) & ((!\inst5|left_button~q\) # (!\inst3|LessThan12~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111110000000001110100000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan13~0_combout\,
	datab => \inst5|ALT_INV_left_button~q\,
	datac => \inst3|ALT_INV_LessThan12~1_combout\,
	datad => \inst3|ALT_INV_ball_y_pos\(9),
	datae => \inst3|ALT_INV_LessThan12~0_combout\,
	dataf => \inst3|ALT_INV_LessThan13~1_combout\,
	combout => \inst3|ball_y_motion~2_combout\);

-- Location: FF_X34_Y5_N1
\inst3|ball_y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	d => \inst3|ball_y_motion~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_motion\(0));

-- Location: FF_X31_Y5_N38
\inst3|ball_y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(0));

-- Location: FF_X31_Y5_N34
\inst3|ball_y_pos[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[3]~DUPLICATE_q\);

-- Location: FF_X31_Y5_N58
\inst3|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(2));

-- Location: LABCELL_X32_Y5_N21
\inst3|LessThan13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan13~0_combout\ = ( !\inst3|ball_y_pos[3]~DUPLICATE_q\ & ( \inst3|ball_y_pos\(2) & ( (!\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(5) & ((!\inst3|ball_y_pos\(0)) # (!\inst3|ball_y_pos\(1))))) ) ) ) # ( !\inst3|ball_y_pos[3]~DUPLICATE_q\ & ( 
-- !\inst3|ball_y_pos\(2) & ( (!\inst3|ball_y_pos\(4) & !\inst3|ball_y_pos\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000011000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(0),
	datab => \inst3|ALT_INV_ball_y_pos\(4),
	datac => \inst3|ALT_INV_ball_y_pos\(5),
	datad => \inst3|ALT_INV_ball_y_pos\(1),
	datae => \inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_ball_y_pos\(2),
	combout => \inst3|LessThan13~0_combout\);

-- Location: MLABCELL_X34_Y5_N9
\inst3|ball_y_motion~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_y_motion~1_combout\ = ( \inst3|LessThan13~1_combout\ & ( (!\inst3|ball_y_pos\(9) & (!\inst5|left_button~q\ & \inst3|LessThan13~0_combout\)) ) ) # ( !\inst3|LessThan13~1_combout\ & ( (!\inst3|ball_y_pos\(9) & !\inst5|left_button~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(9),
	datab => \inst5|ALT_INV_left_button~q\,
	datac => \inst3|ALT_INV_LessThan13~0_combout\,
	dataf => \inst3|ALT_INV_LessThan13~1_combout\,
	combout => \inst3|ball_y_motion~1_combout\);

-- Location: FF_X34_Y5_N11
\inst3|ball_y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	d => \inst3|ball_y_motion~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_motion\(1));

-- Location: LABCELL_X31_Y5_N9
\inst3|Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~21_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(3) ) + ( \inst3|Add14~26\ ))
-- \inst3|Add14~22\ = CARRY(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(3) ) + ( \inst3|Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(3),
	datad => \inst3|ALT_INV_ball_y_motion\(3),
	cin => \inst3|Add14~26\,
	sumout => \inst3|Add14~21_sumout\,
	cout => \inst3|Add14~22\);

-- Location: FF_X31_Y5_N35
\inst3|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(3));

-- Location: LABCELL_X31_Y5_N12
\inst3|Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~5_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos[4]~DUPLICATE_q\ ) + ( \inst3|Add14~22\ ))
-- \inst3|Add14~6\ = CARRY(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos[4]~DUPLICATE_q\ ) + ( \inst3|Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_motion\(3),
	datac => \inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\,
	cin => \inst3|Add14~22\,
	sumout => \inst3|Add14~5_sumout\,
	cout => \inst3|Add14~6\);

-- Location: FF_X31_Y5_N50
\inst3|ball_y_pos[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[4]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y5_N15
\inst3|Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~17_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(5) ) + ( \inst3|Add14~6\ ))
-- \inst3|Add14~18\ = CARRY(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(5) ) + ( \inst3|Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(5),
	datad => \inst3|ALT_INV_ball_y_motion\(3),
	cin => \inst3|Add14~6\,
	sumout => \inst3|Add14~17_sumout\,
	cout => \inst3|Add14~18\);

-- Location: LABCELL_X31_Y5_N18
\inst3|Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~13_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(6) ) + ( \inst3|Add14~18\ ))
-- \inst3|Add14~14\ = CARRY(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(6) ) + ( \inst3|Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_motion\(3),
	datac => \inst3|ALT_INV_ball_y_pos\(6),
	cin => \inst3|Add14~18\,
	sumout => \inst3|Add14~13_sumout\,
	cout => \inst3|Add14~14\);

-- Location: FF_X31_Y5_N53
\inst3|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(6));

-- Location: LABCELL_X31_Y5_N21
\inst3|Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~9_sumout\ = SUM(( \inst3|ball_y_pos\(7) ) + ( \inst3|ball_y_motion\(3) ) + ( \inst3|Add14~14\ ))
-- \inst3|Add14~10\ = CARRY(( \inst3|ball_y_pos\(7) ) + ( \inst3|ball_y_motion\(3) ) + ( \inst3|Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_motion\(3),
	datad => \inst3|ALT_INV_ball_y_pos\(7),
	cin => \inst3|Add14~14\,
	sumout => \inst3|Add14~9_sumout\,
	cout => \inst3|Add14~10\);

-- Location: FF_X31_Y5_N32
\inst3|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(7));

-- Location: LABCELL_X31_Y5_N24
\inst3|Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~1_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(8) ) + ( \inst3|Add14~10\ ))
-- \inst3|Add14~2\ = CARRY(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(8) ) + ( \inst3|Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(8),
	datad => \inst3|ALT_INV_ball_y_motion\(3),
	cin => \inst3|Add14~10\,
	sumout => \inst3|Add14~1_sumout\,
	cout => \inst3|Add14~2\);

-- Location: FF_X31_Y5_N56
\inst3|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(8));

-- Location: LABCELL_X31_Y5_N27
\inst3|Add14~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add14~37_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(9) ) + ( \inst3|Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(9),
	datad => \inst3|ALT_INV_ball_y_motion\(3),
	cin => \inst3|Add14~2\,
	sumout => \inst3|Add14~37_sumout\);

-- Location: FF_X31_Y5_N14
\inst3|ball_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~37_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(9));

-- Location: MLABCELL_X34_Y5_N6
\inst3|ball_y_motion~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_y_motion~0_combout\ = (!\inst3|ball_y_pos\(9) & (\inst5|left_button~q\ & ((!\inst3|LessThan12~1_combout\) # (\inst3|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001000000010001000100000001000100010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(9),
	datab => \inst5|ALT_INV_left_button~q\,
	datac => \inst3|ALT_INV_LessThan12~1_combout\,
	datad => \inst3|ALT_INV_LessThan12~0_combout\,
	combout => \inst3|ball_y_motion~0_combout\);

-- Location: FF_X34_Y5_N8
\inst3|ball_y_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	d => \inst3|ball_y_motion~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_motion\(3));

-- Location: FF_X31_Y5_N41
\inst3|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add14~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(5));

-- Location: LABCELL_X31_Y7_N9
\inst3|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~0_combout\ = ( \inst3|ball_y_pos[4]~DUPLICATE_q\ & ( \inst3|ball_y_pos\(6) & ( (\inst3|ball_y_pos\(5) & \inst3|ball_y_pos\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(5),
	datab => \inst3|ALT_INV_ball_y_pos\(7),
	datae => \inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|Add3~0_combout\);

-- Location: LABCELL_X31_Y5_N36
\inst3|ball_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~1_combout\ = ( \inst2|pixel_column\(3) & ( \inst2|pixel_column\(7) & ( (!\inst3|ball_y_pos\(9) & (!\inst2|pixel_column\(6) & !\inst2|pixel_column\(5))) ) ) ) # ( !\inst2|pixel_column\(3) & ( \inst2|pixel_column\(7) & ( 
-- (!\inst3|ball_y_pos\(9) & (!\inst2|pixel_column\(6) & ((!\inst2|pixel_column\(5)) # (!\inst2|pixel_column\(4))))) ) ) ) # ( \inst2|pixel_column\(3) & ( !\inst2|pixel_column\(7) & ( (!\inst3|ball_y_pos\(9) & (\inst2|pixel_column\(6) & 
-- (\inst2|pixel_column\(5) & \inst2|pixel_column\(4)))) ) ) ) # ( !\inst2|pixel_column\(3) & ( !\inst2|pixel_column\(7) & ( (!\inst3|ball_y_pos\(9) & (\inst2|pixel_column\(6) & (\inst2|pixel_column\(5) & \inst2|pixel_column\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001010001000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(9),
	datab => \inst2|ALT_INV_pixel_column\(6),
	datac => \inst2|ALT_INV_pixel_column\(5),
	datad => \inst2|ALT_INV_pixel_column\(4),
	datae => \inst2|ALT_INV_pixel_column\(3),
	dataf => \inst2|ALT_INV_pixel_column\(7),
	combout => \inst3|ball_on~1_combout\);

-- Location: LABCELL_X31_Y7_N3
\inst3|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~0_combout\ = ( \inst2|pixel_row\(7) & ( (\inst2|pixel_row\(5) & (\inst2|pixel_row\(4) & \inst2|pixel_row\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(5),
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst2|ALT_INV_pixel_row\(7),
	combout => \inst3|Add2~0_combout\);

-- Location: MLABCELL_X28_Y7_N36
\inst3|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = ( !\inst2|pixel_column\(6) & ( \inst2|pixel_column\(1) & ( (!\inst2|pixel_column\(3) & (!\inst2|pixel_column\(2) & (!\inst2|pixel_column\(4) & !\inst2|pixel_column\(5)))) ) ) ) # ( !\inst2|pixel_column\(6) & ( 
-- !\inst2|pixel_column\(1) & ( (!\inst2|pixel_column\(3) & (!\inst2|pixel_column\(4) & !\inst2|pixel_column\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	datab => \inst2|ALT_INV_pixel_column\(2),
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst2|ALT_INV_pixel_column\(5),
	datae => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst2|ALT_INV_pixel_column\(1),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LABCELL_X31_Y7_N54
\inst3|ball_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~2_combout\ = ( \inst2|pixel_row\(8) & ( \inst3|ball_y_pos\(8) & ( (!\inst3|Add3~0_combout\ & (\inst3|ball_on~1_combout\ & (!\inst3|Add2~0_combout\ & !\inst3|LessThan0~1_combout\))) ) ) ) # ( !\inst2|pixel_row\(8) & ( \inst3|ball_y_pos\(8) & 
-- ( (!\inst3|Add3~0_combout\ & (\inst3|ball_on~1_combout\ & (\inst3|Add2~0_combout\ & !\inst3|LessThan0~1_combout\))) ) ) ) # ( \inst2|pixel_row\(8) & ( !\inst3|ball_y_pos\(8) & ( (\inst3|Add3~0_combout\ & (\inst3|ball_on~1_combout\ & 
-- (!\inst3|Add2~0_combout\ & !\inst3|LessThan0~1_combout\))) ) ) ) # ( !\inst2|pixel_row\(8) & ( !\inst3|ball_y_pos\(8) & ( (\inst3|ball_on~1_combout\ & !\inst3|LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000100000000000000000010000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add3~0_combout\,
	datab => \inst3|ALT_INV_ball_on~1_combout\,
	datac => \inst3|ALT_INV_Add2~0_combout\,
	datad => \inst3|ALT_INV_LessThan0~1_combout\,
	datae => \inst2|ALT_INV_pixel_row\(8),
	dataf => \inst3|ALT_INV_ball_y_pos\(8),
	combout => \inst3|ball_on~2_combout\);

-- Location: LABCELL_X31_Y7_N48
\inst3|ball_on~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~3_combout\ = ( \inst3|ball_on~2_combout\ & ( (!\inst3|LessThan1~0_combout\ & (\inst3|ball_on~0_combout\ & ((!\inst3|LessThan0~0_combout\) # (\inst2|pixel_column\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000011000000100000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan0~0_combout\,
	datab => \inst3|ALT_INV_LessThan1~0_combout\,
	datac => \inst3|ALT_INV_ball_on~0_combout\,
	datad => \inst2|ALT_INV_pixel_column\(7),
	dataf => \inst3|ALT_INV_ball_on~2_combout\,
	combout => \inst3|ball_on~3_combout\);

-- Location: LABCELL_X32_Y5_N54
\inst3|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~1_combout\ = ( \inst2|pixel_row[0]~DUPLICATE_q\ & ( \inst3|ball_y_pos\(0) & ( (!\inst2|pixel_row\(1) & \inst3|ball_y_pos\(1)) ) ) ) # ( !\inst2|pixel_row[0]~DUPLICATE_q\ & ( \inst3|ball_y_pos\(0) & ( (!\inst2|pixel_row\(1)) # 
-- (\inst3|ball_y_pos\(1)) ) ) ) # ( \inst2|pixel_row[0]~DUPLICATE_q\ & ( !\inst3|ball_y_pos\(0) & ( (!\inst2|pixel_row\(1) & \inst3|ball_y_pos\(1)) ) ) ) # ( !\inst2|pixel_row[0]~DUPLICATE_q\ & ( !\inst3|ball_y_pos\(0) & ( (!\inst2|pixel_row\(1) & 
-- \inst3|ball_y_pos\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111111110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(1),
	datad => \inst3|ALT_INV_ball_y_pos\(1),
	datae => \inst2|ALT_INV_pixel_row[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_ball_y_pos\(0),
	combout => \inst3|LessThan2~1_combout\);

-- Location: LABCELL_X32_Y5_N39
\inst3|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~2_combout\ = ( \inst3|ball_y_pos[3]~DUPLICATE_q\ & ( (!\inst2|pixel_row[3]~DUPLICATE_q\) # ((!\inst3|ball_y_pos\(2) & (\inst3|LessThan2~1_combout\ & !\inst2|pixel_row\(2))) # (\inst3|ball_y_pos\(2) & ((!\inst2|pixel_row\(2)) # 
-- (\inst3|LessThan2~1_combout\)))) ) ) # ( !\inst3|ball_y_pos[3]~DUPLICATE_q\ & ( (!\inst2|pixel_row[3]~DUPLICATE_q\ & ((!\inst3|ball_y_pos\(2) & (\inst3|LessThan2~1_combout\ & !\inst2|pixel_row\(2))) # (\inst3|ball_y_pos\(2) & ((!\inst2|pixel_row\(2)) # 
-- (\inst3|LessThan2~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000100010011000000010011011111110011011101111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(2),
	datab => \inst2|ALT_INV_pixel_row[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_LessThan2~1_combout\,
	datad => \inst2|ALT_INV_pixel_row\(2),
	dataf => \inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\,
	combout => \inst3|LessThan2~2_combout\);

-- Location: LABCELL_X29_Y5_N3
\inst3|Add2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~3_combout\ = ( \inst2|pixel_row\(4) & ( !\inst2|pixel_row\(5) ) ) # ( !\inst2|pixel_row\(4) & ( \inst2|pixel_row\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst2|ALT_INV_pixel_row\(4),
	combout => \inst3|Add2~3_combout\);

-- Location: LABCELL_X31_Y5_N45
\inst3|Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~2_combout\ = ( \inst2|pixel_row\(5) & ( !\inst2|pixel_row\(6) $ (!\inst2|pixel_row\(4)) ) ) # ( !\inst2|pixel_row\(5) & ( \inst2|pixel_row\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(6),
	datad => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst2|ALT_INV_pixel_row\(5),
	combout => \inst3|Add2~2_combout\);

-- Location: LABCELL_X31_Y5_N54
\inst3|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~1_combout\ = ( \inst2|pixel_row\(4) & ( !\inst2|pixel_row\(7) $ (((!\inst2|pixel_row\(6)) # (!\inst2|pixel_row\(5)))) ) ) # ( !\inst2|pixel_row\(4) & ( \inst2|pixel_row\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010110011001010101010101010101010101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(7),
	datab => \inst2|ALT_INV_pixel_row\(6),
	datad => \inst2|ALT_INV_pixel_row\(5),
	datae => \inst2|ALT_INV_pixel_row\(4),
	combout => \inst3|Add2~1_combout\);

-- Location: LABCELL_X32_Y5_N0
\inst3|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~0_combout\ = ( \inst3|ball_y_pos\(7) & ( \inst3|ball_y_pos\(5) & ( (\inst3|Add2~3_combout\ & (\inst3|Add2~1_combout\ & (!\inst3|ball_y_pos\(6) $ (\inst3|Add2~2_combout\)))) ) ) ) # ( !\inst3|ball_y_pos\(7) & ( \inst3|ball_y_pos\(5) & ( 
-- (\inst3|Add2~3_combout\ & (!\inst3|Add2~1_combout\ & (!\inst3|ball_y_pos\(6) $ (\inst3|Add2~2_combout\)))) ) ) ) # ( \inst3|ball_y_pos\(7) & ( !\inst3|ball_y_pos\(5) & ( (!\inst3|Add2~3_combout\ & (\inst3|Add2~1_combout\ & (!\inst3|ball_y_pos\(6) $ 
-- (\inst3|Add2~2_combout\)))) ) ) ) # ( !\inst3|ball_y_pos\(7) & ( !\inst3|ball_y_pos\(5) & ( (!\inst3|Add2~3_combout\ & (!\inst3|Add2~1_combout\ & (!\inst3|ball_y_pos\(6) $ (\inst3|Add2~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(6),
	datab => \inst3|ALT_INV_Add2~3_combout\,
	datac => \inst3|ALT_INV_Add2~2_combout\,
	datad => \inst3|ALT_INV_Add2~1_combout\,
	datae => \inst3|ALT_INV_ball_y_pos\(7),
	dataf => \inst3|ALT_INV_ball_y_pos\(5),
	combout => \inst3|LessThan2~0_combout\);

-- Location: LABCELL_X32_Y5_N6
\inst3|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~3_combout\ = ( \inst3|ball_y_pos\(7) & ( \inst3|ball_y_pos\(5) & ( (!\inst3|Add2~1_combout\) # ((!\inst3|ball_y_pos\(6) & (!\inst3|Add2~3_combout\ & !\inst3|Add2~2_combout\)) # (\inst3|ball_y_pos\(6) & ((!\inst3|Add2~3_combout\) # 
-- (!\inst3|Add2~2_combout\)))) ) ) ) # ( !\inst3|ball_y_pos\(7) & ( \inst3|ball_y_pos\(5) & ( (!\inst3|Add2~1_combout\ & ((!\inst3|ball_y_pos\(6) & (!\inst3|Add2~3_combout\ & !\inst3|Add2~2_combout\)) # (\inst3|ball_y_pos\(6) & ((!\inst3|Add2~3_combout\) # 
-- (!\inst3|Add2~2_combout\))))) ) ) ) # ( \inst3|ball_y_pos\(7) & ( !\inst3|ball_y_pos\(5) & ( (!\inst3|Add2~1_combout\) # ((\inst3|ball_y_pos\(6) & !\inst3|Add2~2_combout\)) ) ) ) # ( !\inst3|ball_y_pos\(7) & ( !\inst3|ball_y_pos\(5) & ( 
-- (\inst3|ball_y_pos\(6) & (!\inst3|Add2~2_combout\ & !\inst3|Add2~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000111111110101000011010100000000001111111111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(6),
	datab => \inst3|ALT_INV_Add2~3_combout\,
	datac => \inst3|ALT_INV_Add2~2_combout\,
	datad => \inst3|ALT_INV_Add2~1_combout\,
	datae => \inst3|ALT_INV_ball_y_pos\(7),
	dataf => \inst3|ALT_INV_ball_y_pos\(5),
	combout => \inst3|LessThan2~3_combout\);

-- Location: LABCELL_X32_Y5_N48
\inst3|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~4_combout\ = ( !\inst3|LessThan2~3_combout\ & ( (!\inst3|LessThan2~0_combout\) # ((!\inst3|LessThan2~2_combout\ & ((!\inst3|ball_y_pos[4]~DUPLICATE_q\) # (!\inst2|pixel_row\(4)))) # (\inst3|LessThan2~2_combout\ & 
-- (!\inst3|ball_y_pos[4]~DUPLICATE_q\ & !\inst2|pixel_row\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100111111101110110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan2~2_combout\,
	datab => \inst3|ALT_INV_LessThan2~0_combout\,
	datac => \inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst3|ALT_INV_LessThan2~3_combout\,
	combout => \inst3|LessThan2~4_combout\);

-- Location: LABCELL_X32_Y5_N42
\inst3|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~0_combout\ = ( \inst3|ball_y_pos\(0) & ( (\inst2|pixel_row\(1) & !\inst3|ball_y_pos\(1)) ) ) # ( !\inst3|ball_y_pos\(0) & ( (!\inst2|pixel_row\(1) & (\inst2|pixel_row[0]~DUPLICATE_q\ & !\inst3|ball_y_pos\(1))) # (\inst2|pixel_row\(1) & 
-- ((!\inst3|ball_y_pos\(1)) # (\inst2|pixel_row[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(1),
	datab => \inst2|ALT_INV_pixel_row[0]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_ball_y_pos\(1),
	dataf => \inst3|ALT_INV_ball_y_pos\(0),
	combout => \inst3|LessThan3~0_combout\);

-- Location: LABCELL_X32_Y5_N24
\inst3|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~1_combout\ = ( \inst3|ball_y_pos[3]~DUPLICATE_q\ & ( (\inst2|pixel_row[3]~DUPLICATE_q\ & ((!\inst3|ball_y_pos\(2) & ((\inst2|pixel_row\(2)) # (\inst3|LessThan3~0_combout\))) # (\inst3|ball_y_pos\(2) & (\inst3|LessThan3~0_combout\ & 
-- \inst2|pixel_row\(2))))) ) ) # ( !\inst3|ball_y_pos[3]~DUPLICATE_q\ & ( ((!\inst3|ball_y_pos\(2) & ((\inst2|pixel_row\(2)) # (\inst3|LessThan3~0_combout\))) # (\inst3|ball_y_pos\(2) & (\inst3|LessThan3~0_combout\ & \inst2|pixel_row\(2)))) # 
-- (\inst2|pixel_row[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101110111111001110111011111100000010001000110000001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(2),
	datab => \inst2|ALT_INV_pixel_row[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_LessThan3~0_combout\,
	datad => \inst2|ALT_INV_pixel_row\(2),
	dataf => \inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\,
	combout => \inst3|LessThan3~1_combout\);

-- Location: LABCELL_X31_Y7_N15
\inst3|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~2_combout\ = ( \inst3|ball_y_pos\(5) & ( \inst3|ball_y_pos\(6) & ( (!\inst2|pixel_row\(6) & (\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(7) $ (!\inst2|pixel_row\(7))))) # (\inst2|pixel_row\(6) & (!\inst3|ball_y_pos\(4) & 
-- (!\inst3|ball_y_pos\(7) $ (\inst2|pixel_row\(7))))) ) ) ) # ( !\inst3|ball_y_pos\(5) & ( \inst3|ball_y_pos\(6) & ( (\inst2|pixel_row\(6) & (!\inst3|ball_y_pos\(7) $ (\inst2|pixel_row\(7)))) ) ) ) # ( \inst3|ball_y_pos\(5) & ( !\inst3|ball_y_pos\(6) & ( 
-- (!\inst2|pixel_row\(6) & (!\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(7) $ (\inst2|pixel_row\(7))))) # (\inst2|pixel_row\(6) & (\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(7) $ (\inst2|pixel_row\(7))))) ) ) ) # ( !\inst3|ball_y_pos\(5) & ( 
-- !\inst3|ball_y_pos\(6) & ( (!\inst2|pixel_row\(6) & (!\inst3|ball_y_pos\(7) $ (\inst2|pixel_row\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010100100000000100101010000000001010100001000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	datab => \inst3|ALT_INV_ball_y_pos\(4),
	datac => \inst3|ALT_INV_ball_y_pos\(7),
	datad => \inst2|ALT_INV_pixel_row\(7),
	datae => \inst3|ALT_INV_ball_y_pos\(5),
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|LessThan3~2_combout\);

-- Location: LABCELL_X31_Y7_N0
\inst3|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~3_combout\ = ( \inst3|ball_y_pos[4]~DUPLICATE_q\ & ( (\inst3|LessThan3~2_combout\ & (!\inst2|pixel_row\(4) & (!\inst2|pixel_row\(5) $ (!\inst3|ball_y_pos\(5))))) ) ) # ( !\inst3|ball_y_pos[4]~DUPLICATE_q\ & ( (\inst3|LessThan3~2_combout\ 
-- & (\inst2|pixel_row\(4) & (!\inst2|pixel_row\(5) $ (\inst3|ball_y_pos\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001000000000010000100010010000000000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(5),
	datab => \inst3|ALT_INV_LessThan3~2_combout\,
	datac => \inst3|ALT_INV_ball_y_pos\(5),
	datad => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\,
	combout => \inst3|LessThan3~3_combout\);

-- Location: LABCELL_X31_Y7_N33
\inst3|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~4_combout\ = ( \inst2|pixel_row\(6) & ( \inst3|ball_y_pos\(6) & ( (!\inst3|ball_y_pos\(7) & (((\inst2|pixel_row\(7))))) # (\inst3|ball_y_pos\(7) & (\inst3|ball_y_pos\(5) & (\inst3|ball_y_pos\(4)))) ) ) ) # ( !\inst2|pixel_row\(6) & ( 
-- \inst3|ball_y_pos\(6) & ( (\inst2|pixel_row\(7) & (!\inst3|ball_y_pos\(7) $ (((\inst3|ball_y_pos\(5) & \inst3|ball_y_pos\(4)))))) ) ) ) # ( \inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( (!\inst3|ball_y_pos\(7) & ((!\inst3|ball_y_pos\(5)) # 
-- ((!\inst3|ball_y_pos\(4)) # (\inst2|pixel_row\(7))))) # (\inst3|ball_y_pos\(7) & (\inst2|pixel_row\(7) & ((!\inst3|ball_y_pos\(5)) # (!\inst3|ball_y_pos\(4))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( (!\inst3|ball_y_pos\(7) & 
-- \inst2|pixel_row\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111000001111111000000000111000010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(5),
	datab => \inst3|ALT_INV_ball_y_pos\(4),
	datac => \inst3|ALT_INV_ball_y_pos\(7),
	datad => \inst2|ALT_INV_pixel_row\(7),
	datae => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|LessThan3~4_combout\);

-- Location: LABCELL_X31_Y7_N24
\inst3|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~5_combout\ = ( \inst2|pixel_row\(4) & ( \inst2|pixel_row\(5) & ( (!\inst3|LessThan3~4_combout\ & ((!\inst3|LessThan3~2_combout\) # ((\inst3|ball_y_pos\(5) & !\inst3|ball_y_pos[4]~DUPLICATE_q\)))) ) ) ) # ( !\inst2|pixel_row\(4) & ( 
-- \inst2|pixel_row\(5) & ( (!\inst3|LessThan3~4_combout\ & ((!\inst3|LessThan3~2_combout\) # (!\inst3|ball_y_pos\(5) $ (!\inst3|ball_y_pos[4]~DUPLICATE_q\)))) ) ) ) # ( \inst2|pixel_row\(4) & ( !\inst2|pixel_row\(5) & ( (!\inst3|LessThan3~4_combout\ & 
-- ((!\inst3|LessThan3~2_combout\) # ((!\inst3|ball_y_pos\(5)) # (!\inst3|ball_y_pos[4]~DUPLICATE_q\)))) ) ) ) # ( !\inst2|pixel_row\(4) & ( !\inst2|pixel_row\(5) & ( !\inst3|LessThan3~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010100010001010101010001000101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan3~4_combout\,
	datab => \inst3|ALT_INV_LessThan3~2_combout\,
	datac => \inst3|ALT_INV_ball_y_pos\(5),
	datad => \inst3|ALT_INV_ball_y_pos[4]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst2|ALT_INV_pixel_row\(5),
	combout => \inst3|LessThan3~5_combout\);

-- Location: LABCELL_X31_Y7_N21
\inst3|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~6_combout\ = ( \inst3|LessThan3~5_combout\ & ( \inst3|Add3~0_combout\ & ( (\inst3|LessThan3~1_combout\ & (\inst3|LessThan3~3_combout\ & (!\inst3|ball_y_pos\(8) $ (!\inst2|pixel_row\(8))))) ) ) ) # ( !\inst3|LessThan3~5_combout\ & ( 
-- \inst3|Add3~0_combout\ & ( !\inst3|ball_y_pos\(8) $ (!\inst2|pixel_row\(8)) ) ) ) # ( \inst3|LessThan3~5_combout\ & ( !\inst3|Add3~0_combout\ & ( (\inst3|LessThan3~1_combout\ & (\inst3|LessThan3~3_combout\ & (!\inst3|ball_y_pos\(8) $ 
-- (\inst2|pixel_row\(8))))) ) ) ) # ( !\inst3|LessThan3~5_combout\ & ( !\inst3|Add3~0_combout\ & ( !\inst3|ball_y_pos\(8) $ (\inst2|pixel_row\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000100000000000100001111111100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan3~1_combout\,
	datab => \inst3|ALT_INV_LessThan3~3_combout\,
	datac => \inst3|ALT_INV_ball_y_pos\(8),
	datad => \inst2|ALT_INV_pixel_row\(8),
	datae => \inst3|ALT_INV_LessThan3~5_combout\,
	dataf => \inst3|ALT_INV_Add3~0_combout\,
	combout => \inst3|LessThan3~6_combout\);

-- Location: LABCELL_X31_Y7_N39
\inst3|ball_on\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~combout\ = ( \inst2|pixel_row\(8) & ( !\inst3|LessThan3~6_combout\ & ( (\inst3|ball_on~3_combout\ & ((!\inst3|ball_y_pos\(8) $ (\inst3|Add2~0_combout\)) # (\inst3|LessThan2~4_combout\))) ) ) ) # ( !\inst2|pixel_row\(8) & ( 
-- !\inst3|LessThan3~6_combout\ & ( (\inst3|ball_on~3_combout\ & ((!\inst3|ball_y_pos\(8) $ (!\inst3|Add2~0_combout\)) # (\inst3|LessThan2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010001010100010001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_on~3_combout\,
	datab => \inst3|ALT_INV_LessThan2~4_combout\,
	datac => \inst3|ALT_INV_ball_y_pos\(8),
	datad => \inst3|ALT_INV_Add2~0_combout\,
	datae => \inst2|ALT_INV_pixel_row\(8),
	dataf => \inst3|ALT_INV_LessThan3~6_combout\,
	combout => \inst3|ball_on~combout\);

-- Location: MLABCELL_X28_Y6_N57
\inst10|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|LessThan9~0_combout\ = ( !\inst2|pixel_column\(9) & ( (\inst2|pixel_column\(8) & ((\inst2|pixel_column\(6)) # (\inst2|pixel_column\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst2|ALT_INV_pixel_column\(9),
	combout => \inst10|LessThan9~0_combout\);

-- Location: LABCELL_X31_Y7_N42
\inst10|char_address~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~0_combout\ = ( !\inst2|pixel_row\(8) & ( !\inst2|pixel_row\(5) & ( (!\inst2|pixel_row\(6) & !\inst2|pixel_row\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	datac => \inst2|ALT_INV_pixel_row\(7),
	datae => \inst2|ALT_INV_pixel_row\(8),
	dataf => \inst2|ALT_INV_pixel_row\(5),
	combout => \inst10|char_address~0_combout\);

-- Location: LABCELL_X32_Y5_N45
\inst3|LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan11~1_combout\ = ( !\inst2|pixel_row\(2) & ( (!\inst2|pixel_row\(1) & (!\inst2|pixel_row[0]~DUPLICATE_q\ & (!\inst2|pixel_row[3]~DUPLICATE_q\ & !\inst2|pixel_row\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(1),
	datab => \inst2|ALT_INV_pixel_row[0]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_row[3]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst2|ALT_INV_pixel_row\(2),
	combout => \inst3|LessThan11~1_combout\);

-- Location: LABCELL_X26_Y6_N3
\inst10|text_col[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|text_col[2]~0_combout\ = ( \inst2|pixel_column\(4) & ( (((!\inst10|char_address~0_combout\) # (\inst3|LessThan11~1_combout\)) # (\inst10|LessThan9~0_combout\)) # (\inst2|pixel_column\(3)) ) ) # ( !\inst2|pixel_column\(4) & ( 
-- (\inst2|pixel_column\(3) & (!\inst10|LessThan9~0_combout\ & (\inst10|char_address~0_combout\ & !\inst3|LessThan11~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000011110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	datab => \inst10|ALT_INV_LessThan9~0_combout\,
	datac => \inst10|ALT_INV_char_address~0_combout\,
	datad => \inst3|ALT_INV_LessThan11~1_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(4),
	combout => \inst10|text_col[2]~0_combout\);

-- Location: LABCELL_X26_Y6_N15
\inst10|text_col[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|text_col[0]~2_combout\ = ( \inst10|LessThan9~0_combout\ & ( \inst2|pixel_column\(2) ) ) # ( !\inst10|LessThan9~0_combout\ & ( (!\inst3|LessThan11~1_combout\ & ((!\inst10|char_address~0_combout\ & ((\inst2|pixel_column\(2)))) # 
-- (\inst10|char_address~0_combout\ & (\inst2|pixel_column\(1))))) # (\inst3|LessThan11~1_combout\ & (((\inst2|pixel_column\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100111000011110010011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan11~1_combout\,
	datab => \inst2|ALT_INV_pixel_column\(1),
	datac => \inst2|ALT_INV_pixel_column\(2),
	datad => \inst10|ALT_INV_char_address~0_combout\,
	dataf => \inst10|ALT_INV_LessThan9~0_combout\,
	combout => \inst10|text_col[0]~2_combout\);

-- Location: LABCELL_X26_Y6_N45
\inst10|LessThan19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|LessThan19~0_combout\ = (!\inst2|pixel_column\(5) & !\inst2|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(5),
	datad => \inst2|ALT_INV_pixel_column\(6),
	combout => \inst10|LessThan19~0_combout\);

-- Location: LABCELL_X32_Y5_N30
\inst10|text_row~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|text_row~0_combout\ = ( \inst10|char_address~0_combout\ & ( \inst2|pixel_column\(7) & ( (!\inst3|LessThan11~1_combout\ & (((!\inst2|pixel_column\(8) & \inst10|LessThan19~0_combout\)) # (\inst2|pixel_column[9]~DUPLICATE_q\))) ) ) ) # ( 
-- \inst10|char_address~0_combout\ & ( !\inst2|pixel_column\(7) & ( (!\inst3|LessThan11~1_combout\ & ((!\inst2|pixel_column\(8)) # (\inst2|pixel_column[9]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001100110000000000000000000000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	datab => \inst3|ALT_INV_LessThan11~1_combout\,
	datac => \inst10|ALT_INV_LessThan19~0_combout\,
	datad => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	datae => \inst10|ALT_INV_char_address~0_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(7),
	combout => \inst10|text_row~0_combout\);

-- Location: LABCELL_X32_Y5_N51
\inst10|text_row[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|text_row[0]~1_combout\ = ( \inst2|pixel_row\(1) & ( (\inst2|pixel_row\(2)) # (\inst10|text_row~0_combout\) ) ) # ( !\inst2|pixel_row\(1) & ( (!\inst10|text_row~0_combout\ & \inst2|pixel_row\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_text_row~0_combout\,
	datad => \inst2|ALT_INV_pixel_row\(2),
	dataf => \inst2|ALT_INV_pixel_row\(1),
	combout => \inst10|text_row[0]~1_combout\);

-- Location: LABCELL_X32_Y5_N27
\inst10|text_row[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|text_row[1]~2_combout\ = ( \inst10|text_row~0_combout\ & ( \inst2|pixel_row\(2) ) ) # ( !\inst10|text_row~0_combout\ & ( \inst2|pixel_row[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(2),
	datad => \inst2|ALT_INV_pixel_row[3]~DUPLICATE_q\,
	dataf => \inst10|ALT_INV_text_row~0_combout\,
	combout => \inst10|text_row[1]~2_combout\);

-- Location: LABCELL_X32_Y5_N36
\inst10|text_row[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|text_row[2]~3_combout\ = ( \inst10|text_row~0_combout\ & ( \inst2|pixel_row[3]~DUPLICATE_q\ ) ) # ( !\inst10|text_row~0_combout\ & ( \inst2|pixel_row\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row[3]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst10|ALT_INV_text_row~0_combout\,
	combout => \inst10|text_row[2]~3_combout\);

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

-- Location: LABCELL_X32_Y2_N51
\inst10|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Equal0~1_combout\ = ( !\sw[2]~input_o\ & ( !\sw[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[3]~input_o\,
	dataf => \ALT_INV_sw[2]~input_o\,
	combout => \inst10|Equal0~1_combout\);

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

-- Location: LABCELL_X32_Y1_N12
\inst10|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Equal0~0_combout\ = ( !\sw[8]~input_o\ & ( !\sw[5]~input_o\ & ( (!\sw[6]~input_o\ & (!\sw[4]~input_o\ & (!\sw[7]~input_o\ & !\sw[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[7]~input_o\,
	datad => \ALT_INV_sw[9]~input_o\,
	datae => \ALT_INV_sw[8]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \inst10|Equal0~0_combout\);

-- Location: FF_X28_Y6_N47
\inst2|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count\(0),
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(0));

-- Location: LABCELL_X26_Y6_N57
\inst10|char_address~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~1_combout\ = ( \inst2|pixel_column\(5) & ( \inst2|pixel_column\(0) ) ) # ( \inst2|pixel_column\(5) & ( !\inst2|pixel_column\(0) & ( (((\inst2|pixel_column\(4)) # (\inst2|pixel_column\(2))) # (\inst2|pixel_column\(1))) # 
-- (\inst2|pixel_column\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	datab => \inst2|ALT_INV_pixel_column\(1),
	datac => \inst2|ALT_INV_pixel_column\(2),
	datad => \inst2|ALT_INV_pixel_column\(4),
	datae => \inst2|ALT_INV_pixel_column\(5),
	dataf => \inst2|ALT_INV_pixel_column\(0),
	combout => \inst10|char_address~1_combout\);

-- Location: LABCELL_X29_Y5_N27
\inst10|char_address~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~3_combout\ = ( \inst2|pixel_row\(5) & ( !\inst2|pixel_row\(7) & ( (!\inst2|pixel_row\(8) & !\inst2|pixel_row\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(8),
	datab => \inst2|ALT_INV_pixel_row\(6),
	datae => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst2|ALT_INV_pixel_row\(7),
	combout => \inst10|char_address~3_combout\);

-- Location: LABCELL_X26_Y6_N24
\inst10|char_address~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~20_combout\ = ( \inst10|char_address~1_combout\ & ( \inst10|char_address~3_combout\ & ( (!\inst2|pixel_column\(7) & (!\inst3|LessThan11~1_combout\ & (\inst2|pixel_column\(6) & \inst3|ball_on~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	datab => \inst3|ALT_INV_LessThan11~1_combout\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst3|ALT_INV_ball_on~0_combout\,
	datae => \inst10|ALT_INV_char_address~1_combout\,
	dataf => \inst10|ALT_INV_char_address~3_combout\,
	combout => \inst10|char_address~20_combout\);

-- Location: LABCELL_X26_Y6_N21
\inst10|char_address~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~32_combout\ = ( !\inst2|pixel_column\(6) & ( \inst10|char_address~1_combout\ & ( (\inst10|char_address~3_combout\ & (!\inst3|LessThan11~1_combout\ & (\inst3|ball_on~0_combout\ & \inst2|pixel_column\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~3_combout\,
	datab => \inst3|ALT_INV_LessThan11~1_combout\,
	datac => \inst3|ALT_INV_ball_on~0_combout\,
	datad => \inst2|ALT_INV_pixel_column\(7),
	datae => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst10|ALT_INV_char_address~1_combout\,
	combout => \inst10|char_address~32_combout\);

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

-- Location: LABCELL_X36_Y4_N18
\inst10|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Equal1~0_combout\ = ( !\sw[1]~input_o\ & ( \sw[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[0]~input_o\,
	dataf => \ALT_INV_sw[1]~input_o\,
	combout => \inst10|Equal1~0_combout\);

-- Location: LABCELL_X32_Y4_N54
\inst10|char_address~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~16_combout\ = ( !\inst3|LessThan11~1_combout\ & ( (\inst2|pixel_column\(7) & (\inst3|ball_on~0_combout\ & \inst10|char_address~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	datac => \inst3|ALT_INV_ball_on~0_combout\,
	datad => \inst10|ALT_INV_char_address~3_combout\,
	dataf => \inst3|ALT_INV_LessThan11~1_combout\,
	combout => \inst10|char_address~16_combout\);

-- Location: MLABCELL_X28_Y7_N33
\inst10|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|LessThan4~1_combout\ = ( !\inst2|pixel_column\(4) & ( (!\inst2|pixel_column\(1) & (!\inst2|pixel_column[0]~DUPLICATE_q\ & (!\inst2|pixel_column\(2) & !\inst2|pixel_column\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(1),
	datab => \inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_column\(2),
	datad => \inst2|ALT_INV_pixel_column\(3),
	dataf => \inst2|ALT_INV_pixel_column\(4),
	combout => \inst10|LessThan4~1_combout\);

-- Location: LABCELL_X32_Y4_N12
\inst10|char_address~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~14_combout\ = ( !\inst2|pixel_column\(5) & ( (!\inst10|LessThan4~1_combout\ & \inst2|pixel_column\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_LessThan4~1_combout\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst10|char_address~14_combout\);

-- Location: LABCELL_X31_Y4_N45
\inst10|char_address~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~39_combout\ = ( \inst10|char_address~14_combout\ & ( \inst10|char_address~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_char_address~16_combout\,
	dataf => \inst10|ALT_INV_char_address~14_combout\,
	combout => \inst10|char_address~39_combout\);

-- Location: LABCELL_X26_Y4_N54
\inst10|char_address[0]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[0]~40_combout\ = ( \inst10|Equal1~0_combout\ & ( \inst10|char_address~39_combout\ & ( (\inst10|Equal0~1_combout\ & (\inst10|Equal0~0_combout\ & ((!\inst10|char_address~32_combout\) # (\inst10|char_address~20_combout\)))) ) ) ) # ( 
-- \inst10|Equal1~0_combout\ & ( !\inst10|char_address~39_combout\ & ( (\inst10|Equal0~1_combout\ & (\inst10|Equal0~0_combout\ & \inst10|char_address~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal0~1_combout\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_char_address~20_combout\,
	datad => \inst10|ALT_INV_char_address~32_combout\,
	datae => \inst10|ALT_INV_Equal1~0_combout\,
	dataf => \inst10|ALT_INV_char_address~39_combout\,
	combout => \inst10|char_address[0]~40_combout\);

-- Location: LABCELL_X26_Y6_N18
\inst10|char_address~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~21_combout\ = ( !\inst10|LessThan4~1_combout\ & ( \inst10|LessThan19~0_combout\ & ( (\inst10|char_address~3_combout\ & (!\inst3|LessThan11~1_combout\ & (\inst2|pixel_column\(7) & \inst3|ball_on~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~3_combout\,
	datab => \inst3|ALT_INV_LessThan11~1_combout\,
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst3|ALT_INV_ball_on~0_combout\,
	datae => \inst10|ALT_INV_LessThan4~1_combout\,
	dataf => \inst10|ALT_INV_LessThan19~0_combout\,
	combout => \inst10|char_address~21_combout\);

-- Location: MLABCELL_X28_Y6_N30
\inst10|char_address~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~6_combout\ = ( !\inst2|pixel_column\(9) & ( (!\inst2|pixel_column\(8) & (!\inst2|pixel_column\(7) & !\inst2|pixel_column\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(8),
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst2|ALT_INV_pixel_column\(9),
	combout => \inst10|char_address~6_combout\);

-- Location: MLABCELL_X28_Y4_N0
\inst10|char_address~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~24_combout\ = ( \inst10|char_address~6_combout\ & ( (\inst10|char_address~1_combout\ & (!\inst3|LessThan11~1_combout\ & \inst10|char_address~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~1_combout\,
	datab => \inst3|ALT_INV_LessThan11~1_combout\,
	datad => \inst10|ALT_INV_char_address~3_combout\,
	dataf => \inst10|ALT_INV_char_address~6_combout\,
	combout => \inst10|char_address~24_combout\);

-- Location: MLABCELL_X28_Y6_N12
\inst10|char_address~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~22_combout\ = ( !\inst2|pixel_column\(9) & ( (!\inst2|pixel_column\(7) & !\inst2|pixel_column\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst2|ALT_INV_pixel_column\(8),
	dataf => \inst2|ALT_INV_pixel_column\(9),
	combout => \inst10|char_address~22_combout\);

-- Location: LABCELL_X26_Y6_N48
\inst10|char_address~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~23_combout\ = ( !\inst2|pixel_column\(5) & ( !\inst3|LessThan11~1_combout\ & ( (\inst2|pixel_column\(6) & (\inst10|char_address~3_combout\ & (\inst10|char_address~22_combout\ & !\inst10|LessThan4~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(6),
	datab => \inst10|ALT_INV_char_address~3_combout\,
	datac => \inst10|ALT_INV_char_address~22_combout\,
	datad => \inst10|ALT_INV_LessThan4~1_combout\,
	datae => \inst2|ALT_INV_pixel_column\(5),
	dataf => \inst3|ALT_INV_LessThan11~1_combout\,
	combout => \inst10|char_address~23_combout\);

-- Location: LABCELL_X36_Y4_N51
\inst10|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Equal0~2_combout\ = ( \sw[1]~input_o\ & ( !\sw[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	dataf => \ALT_INV_sw[1]~input_o\,
	combout => \inst10|Equal0~2_combout\);

-- Location: LABCELL_X29_Y4_N54
\inst10|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Equal0~3_combout\ = (\inst10|Equal0~0_combout\ & (\inst10|Equal0~2_combout\ & \inst10|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_Equal0~2_combout\,
	datad => \inst10|ALT_INV_Equal0~1_combout\,
	combout => \inst10|Equal0~3_combout\);

-- Location: LABCELL_X32_Y4_N57
\inst10|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|LessThan10~0_combout\ = ( !\inst2|pixel_column\(6) & ( (!\inst2|pixel_column\(7) & !\inst2|pixel_column\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	datac => \inst2|ALT_INV_pixel_column\(5),
	dataf => \inst2|ALT_INV_pixel_column\(6),
	combout => \inst10|LessThan10~0_combout\);

-- Location: LABCELL_X32_Y7_N36
\inst10|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|LessThan9~1_combout\ = ( \inst2|pixel_column\(8) & ( !\inst2|pixel_column[9]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst2|ALT_INV_pixel_column\(8),
	dataf => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	combout => \inst10|LessThan9~1_combout\);

-- Location: LABCELL_X32_Y4_N15
\inst10|char_address~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~17_combout\ = ( !\inst3|LessThan11~1_combout\ & ( (!\inst10|LessThan4~1_combout\ & (\inst10|LessThan10~0_combout\ & (\inst10|LessThan9~1_combout\ & \inst10|char_address~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_LessThan4~1_combout\,
	datab => \inst10|ALT_INV_LessThan10~0_combout\,
	datac => \inst10|ALT_INV_LessThan9~1_combout\,
	datad => \inst10|ALT_INV_char_address~3_combout\,
	dataf => \inst3|ALT_INV_LessThan11~1_combout\,
	combout => \inst10|char_address~17_combout\);

-- Location: LABCELL_X32_Y4_N24
\inst10|char_address[0]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[0]~37_combout\ = ( \inst2|pixel_column\(5) & ( (!\inst10|char_address~17_combout\ & ((!\inst10|char_address~16_combout\) # (\inst10|LessThan4~1_combout\))) ) ) # ( !\inst2|pixel_column\(5) & ( (!\inst10|char_address~17_combout\) # 
-- ((!\inst10|LessThan4~1_combout\ & (\inst2|pixel_column\(6) & \inst10|char_address~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001110110011001100111011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_LessThan4~1_combout\,
	datab => \inst10|ALT_INV_char_address~17_combout\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst10|ALT_INV_char_address~16_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst10|char_address[0]~37_combout\);

-- Location: LABCELL_X26_Y4_N12
\inst10|char_address[0]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[0]~38_combout\ = ( \inst10|Equal0~3_combout\ & ( \inst10|char_address[0]~37_combout\ & ( (!\inst10|char_address~24_combout\ & (!\inst10|char_address~23_combout\ & \inst10|char_address~20_combout\)) ) ) ) # ( \inst10|Equal0~3_combout\ 
-- & ( !\inst10|char_address[0]~37_combout\ & ( (!\inst10|char_address~24_combout\ & (!\inst10|char_address~23_combout\ & ((!\inst10|char_address~21_combout\) # (\inst10|char_address~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001100000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~21_combout\,
	datab => \inst10|ALT_INV_char_address~24_combout\,
	datac => \inst10|ALT_INV_char_address~23_combout\,
	datad => \inst10|ALT_INV_char_address~20_combout\,
	datae => \inst10|ALT_INV_Equal0~3_combout\,
	dataf => \inst10|ALT_INV_char_address[0]~37_combout\,
	combout => \inst10|char_address[0]~38_combout\);

-- Location: LABCELL_X32_Y5_N12
\inst10|char_address~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~11_combout\ = ( \inst10|char_address~3_combout\ & ( \inst10|LessThan9~1_combout\ & ( (!\inst2|pixel_column\(6) & (!\inst3|LessThan11~1_combout\ & (!\inst2|pixel_column\(7) & \inst10|char_address~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(6),
	datab => \inst3|ALT_INV_LessThan11~1_combout\,
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst10|ALT_INV_char_address~1_combout\,
	datae => \inst10|ALT_INV_char_address~3_combout\,
	dataf => \inst10|ALT_INV_LessThan9~1_combout\,
	combout => \inst10|char_address~11_combout\);

-- Location: LABCELL_X29_Y4_N51
\inst10|char_address~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~12_combout\ = ( \inst10|Equal1~0_combout\ & ( (\inst10|char_address~11_combout\ & (\inst10|Equal0~0_combout\ & \inst10|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_char_address~11_combout\,
	datac => \inst10|ALT_INV_Equal0~0_combout\,
	datad => \inst10|ALT_INV_Equal0~1_combout\,
	dataf => \inst10|ALT_INV_Equal1~0_combout\,
	combout => \inst10|char_address~12_combout\);

-- Location: LABCELL_X26_Y6_N30
\inst10|char_address~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~33_combout\ = ( \inst10|char_address~1_combout\ & ( \inst10|char_address~3_combout\ & ( (\inst2|pixel_column\(7) & (!\inst3|LessThan11~1_combout\ & (\inst2|pixel_column\(6) & \inst3|ball_on~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	datab => \inst3|ALT_INV_LessThan11~1_combout\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst3|ALT_INV_ball_on~0_combout\,
	datae => \inst10|ALT_INV_char_address~1_combout\,
	dataf => \inst10|ALT_INV_char_address~3_combout\,
	combout => \inst10|char_address~33_combout\);

-- Location: LABCELL_X26_Y4_N39
\inst10|char_address[0]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[0]~34_combout\ = ( \inst10|char_address~32_combout\ & ( (\inst10|Equal1~0_combout\ & (\inst10|Equal0~0_combout\ & \inst10|Equal0~1_combout\)) ) ) # ( !\inst10|char_address~32_combout\ & ( (\inst10|Equal1~0_combout\ & 
-- (\inst10|Equal0~0_combout\ & (\inst10|char_address~33_combout\ & \inst10|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal1~0_combout\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_char_address~33_combout\,
	datad => \inst10|ALT_INV_Equal0~1_combout\,
	dataf => \inst10|ALT_INV_char_address~32_combout\,
	combout => \inst10|char_address[0]~34_combout\);

-- Location: LABCELL_X26_Y4_N36
\inst10|char_address[4]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[4]~36_combout\ = ( \inst10|char_address~24_combout\ & ( (\inst10|Equal1~0_combout\ & (\inst10|Equal0~0_combout\ & \inst10|Equal0~1_combout\)) ) ) # ( !\inst10|char_address~24_combout\ & ( (\inst10|Equal1~0_combout\ & 
-- (\inst10|Equal0~0_combout\ & (\inst10|Equal0~1_combout\ & \inst10|char_address~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal1~0_combout\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_Equal0~1_combout\,
	datad => \inst10|ALT_INV_char_address~23_combout\,
	dataf => \inst10|ALT_INV_char_address~24_combout\,
	combout => \inst10|char_address[4]~36_combout\);

-- Location: MLABCELL_X28_Y3_N36
\inst10|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|Equal1~1_combout\ = ( \inst10|Equal1~0_combout\ & ( (\inst10|Equal0~1_combout\ & \inst10|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_Equal0~1_combout\,
	datac => \inst10|ALT_INV_Equal0~0_combout\,
	dataf => \inst10|ALT_INV_Equal1~0_combout\,
	combout => \inst10|Equal1~1_combout\);

-- Location: LABCELL_X26_Y4_N30
\inst10|char_address[0]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[0]~35_combout\ = ( \inst10|char_address~17_combout\ & ( (\inst10|Equal1~1_combout\ & (((!\inst10|char_address~32_combout\ & !\inst10|char_address~33_combout\)) # (\inst10|char_address~21_combout\))) ) ) # ( 
-- !\inst10|char_address~17_combout\ & ( (\inst10|Equal1~1_combout\ & \inst10|char_address~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101000101000001010100010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal1~1_combout\,
	datab => \inst10|ALT_INV_char_address~32_combout\,
	datac => \inst10|ALT_INV_char_address~21_combout\,
	datad => \inst10|ALT_INV_char_address~33_combout\,
	dataf => \inst10|ALT_INV_char_address~17_combout\,
	combout => \inst10|char_address[0]~35_combout\);

-- Location: LABCELL_X26_Y4_N0
\inst10|char_address[0]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[0]~41_combout\ = ( !\inst10|char_address[4]~36_combout\ & ( \inst10|char_address[0]~35_combout\ ) ) # ( !\inst10|char_address[4]~36_combout\ & ( !\inst10|char_address[0]~35_combout\ & ( ((!\inst10|char_address[0]~38_combout\ & 
-- (!\inst10|char_address~12_combout\ & !\inst10|char_address[0]~34_combout\))) # (\inst10|char_address[0]~40_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101010101000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[0]~40_combout\,
	datab => \inst10|ALT_INV_char_address[0]~38_combout\,
	datac => \inst10|ALT_INV_char_address~12_combout\,
	datad => \inst10|ALT_INV_char_address[0]~34_combout\,
	datae => \inst10|ALT_INV_char_address[4]~36_combout\,
	dataf => \inst10|ALT_INV_char_address[0]~35_combout\,
	combout => \inst10|char_address[0]~41_combout\);

-- Location: FF_X32_Y6_N5
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

-- Location: LABCELL_X32_Y6_N0
\inst10|char_address~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~7_combout\ = ( \inst2|pixel_row\(3) & ( \inst2|pixel_row\(2) & ( (!\inst2|pixel_row\(4) & ((!\inst2|pixel_row[0]~DUPLICATE_q\) # (!\inst2|pixel_row\(1)))) ) ) ) # ( !\inst2|pixel_row\(3) & ( \inst2|pixel_row\(2) & ( 
-- !\inst2|pixel_row\(4) ) ) ) # ( \inst2|pixel_row\(3) & ( !\inst2|pixel_row\(2) & ( !\inst2|pixel_row\(4) ) ) ) # ( !\inst2|pixel_row\(3) & ( !\inst2|pixel_row\(2) & ( !\inst2|pixel_row\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row[0]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_pixel_row\(1),
	datac => \inst2|ALT_INV_pixel_row\(4),
	datae => \inst2|ALT_INV_pixel_row\(3),
	dataf => \inst2|ALT_INV_pixel_row\(2),
	combout => \inst10|char_address~7_combout\);

-- Location: MLABCELL_X28_Y4_N42
\inst10|char_address~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~30_combout\ = ( \inst10|char_address~0_combout\ & ( (\inst10|char_address~6_combout\ & !\inst10|char_address~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_char_address~6_combout\,
	datad => \inst10|ALT_INV_char_address~7_combout\,
	dataf => \inst10|ALT_INV_char_address~0_combout\,
	combout => \inst10|char_address~30_combout\);

-- Location: MLABCELL_X28_Y7_N30
\inst10|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|LessThan4~0_combout\ = ( !\inst2|pixel_column\(2) & ( (!\inst2|pixel_column\(1) & (!\inst2|pixel_column[0]~DUPLICATE_q\ & !\inst2|pixel_column\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(1),
	datab => \inst2|ALT_INV_pixel_column[0]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_column\(3),
	dataf => \inst2|ALT_INV_pixel_column\(2),
	combout => \inst10|LessThan4~0_combout\);

-- Location: MLABCELL_X28_Y4_N36
\inst10|char_address[5]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[5]~31_combout\ = ( \inst2|pixel_column\(5) & ( (\inst10|char_address~30_combout\ & (!\inst2|pixel_column\(4) & !\inst10|LessThan4~0_combout\)) ) ) # ( !\inst2|pixel_column\(5) & ( (\inst10|char_address~30_combout\ & 
-- ((!\inst10|LessThan4~0_combout\) # ((!\inst10|LessThan10~0_combout\ & !\inst2|pixel_column\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000001100110010000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_LessThan10~0_combout\,
	datab => \inst10|ALT_INV_char_address~30_combout\,
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst10|ALT_INV_LessThan4~0_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst10|char_address[5]~31_combout\);

-- Location: MLABCELL_X28_Y4_N51
\inst10|char_address~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~8_combout\ = ( !\inst10|char_address~7_combout\ & ( \inst2|pixel_column\(5) & ( (\inst2|pixel_column\(4) & (!\inst10|LessThan4~0_combout\ & (\inst10|char_address~0_combout\ & \inst10|char_address~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(4),
	datab => \inst10|ALT_INV_LessThan4~0_combout\,
	datac => \inst10|ALT_INV_char_address~0_combout\,
	datad => \inst10|ALT_INV_char_address~6_combout\,
	datae => \inst10|ALT_INV_char_address~7_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst10|char_address~8_combout\);

-- Location: MLABCELL_X28_Y6_N24
\inst10|char_address~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~9_combout\ = ( !\inst2|pixel_column\(7) & ( (!\inst2|pixel_column\(8) & (!\inst2|pixel_column\(9) & (!\inst2|pixel_column\(5) & !\inst2|pixel_column\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	datab => \inst2|ALT_INV_pixel_column\(9),
	datac => \inst2|ALT_INV_pixel_column\(5),
	datad => \inst2|ALT_INV_pixel_column\(4),
	dataf => \inst2|ALT_INV_pixel_column\(7),
	combout => \inst10|char_address~9_combout\);

-- Location: MLABCELL_X28_Y4_N6
\inst10|char_address~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~10_combout\ = ( !\inst10|char_address~7_combout\ & ( \inst2|pixel_column\(5) & ( (\inst10|char_address~9_combout\ & (\inst10|char_address~0_combout\ & \inst2|pixel_column\(6))) ) ) ) # ( !\inst10|char_address~7_combout\ & ( 
-- !\inst2|pixel_column\(5) & ( (\inst10|char_address~9_combout\ & (\inst10|char_address~0_combout\ & (\inst2|pixel_column\(6) & !\inst10|LessThan4~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~9_combout\,
	datab => \inst10|ALT_INV_char_address~0_combout\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst10|ALT_INV_LessThan4~1_combout\,
	datae => \inst10|ALT_INV_char_address~7_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst10|char_address~10_combout\);

-- Location: LABCELL_X32_Y4_N30
\inst10|char_address~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~4_combout\ = (\inst10|LessThan9~1_combout\ & (!\inst3|LessThan11~1_combout\ & \inst10|char_address~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_LessThan9~1_combout\,
	datac => \inst3|ALT_INV_LessThan11~1_combout\,
	datad => \inst10|ALT_INV_char_address~3_combout\,
	combout => \inst10|char_address~4_combout\);

-- Location: LABCELL_X32_Y4_N48
\inst10|char_address~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~2_combout\ = ( \inst10|char_address~1_combout\ & ( \inst2|pixel_column\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst10|ALT_INV_char_address~1_combout\,
	combout => \inst10|char_address~2_combout\);

-- Location: LABCELL_X31_Y4_N3
\inst10|char_address~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~5_combout\ = ( \inst10|char_address~2_combout\ & ( \inst10|Equal0~2_combout\ & ( (\inst10|char_address~4_combout\ & (\inst10|Equal0~1_combout\ & (\inst10|Equal0~0_combout\ & !\inst2|pixel_column\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~4_combout\,
	datab => \inst10|ALT_INV_Equal0~1_combout\,
	datac => \inst10|ALT_INV_Equal0~0_combout\,
	datad => \inst2|ALT_INV_pixel_column\(7),
	datae => \inst10|ALT_INV_char_address~2_combout\,
	dataf => \inst10|ALT_INV_Equal0~2_combout\,
	combout => \inst10|char_address~5_combout\);

-- Location: LABCELL_X32_Y4_N27
\inst10|char_address[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~18_combout\ = ( \inst2|pixel_column\(6) & ( (!\inst10|char_address~17_combout\ & ((!\inst10|char_address~16_combout\) # (\inst10|LessThan4~1_combout\))) ) ) # ( !\inst2|pixel_column\(6) & ( (!\inst10|char_address~17_combout\ & 
-- (((!\inst2|pixel_column\(5)) # (!\inst10|char_address~16_combout\)) # (\inst10|LessThan4~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000100110011001100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_LessThan4~1_combout\,
	datab => \inst10|ALT_INV_char_address~17_combout\,
	datac => \inst2|ALT_INV_pixel_column\(5),
	datad => \inst10|ALT_INV_char_address~16_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(6),
	combout => \inst10|char_address[2]~18_combout\);

-- Location: LABCELL_X29_Y4_N15
\inst10|char_address[2]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~19_combout\ = ( \inst10|Equal0~2_combout\ & ( (!\inst10|char_address[2]~18_combout\ & (\inst10|Equal0~0_combout\ & \inst10|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[2]~18_combout\,
	datac => \inst10|ALT_INV_Equal0~0_combout\,
	datad => \inst10|ALT_INV_Equal0~1_combout\,
	dataf => \inst10|ALT_INV_Equal0~2_combout\,
	combout => \inst10|char_address[2]~19_combout\);

-- Location: LABCELL_X32_Y4_N9
\inst10|char_address[2]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~25_combout\ = ( !\inst10|char_address~24_combout\ & ( (!\inst10|char_address~23_combout\ & (!\inst10|char_address~21_combout\ & !\inst10|char_address~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~23_combout\,
	datac => \inst10|ALT_INV_char_address~21_combout\,
	datad => \inst10|ALT_INV_char_address~20_combout\,
	dataf => \inst10|ALT_INV_char_address~24_combout\,
	combout => \inst10|char_address[2]~25_combout\);

-- Location: MLABCELL_X28_Y4_N3
\inst10|char_address[3]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~27_combout\ = ( !\inst10|char_address~8_combout\ & ( !\inst10|char_address~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_char_address~10_combout\,
	dataf => \inst10|ALT_INV_char_address~8_combout\,
	combout => \inst10|char_address[3]~27_combout\);

-- Location: LABCELL_X29_Y4_N36
\inst10|char_address[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[5]~28_combout\ = ( \inst10|char_address[2]~25_combout\ & ( \inst10|char_address[3]~27_combout\ & ( (!\inst10|Equal0~1_combout\) # ((!\inst10|Equal0~0_combout\) # ((!\inst10|Equal1~0_combout\) # (\inst10|char_address[2]~18_combout\))) 
-- ) ) ) # ( !\inst10|char_address[2]~25_combout\ & ( \inst10|char_address[3]~27_combout\ & ( (!\inst10|Equal0~1_combout\) # ((!\inst10|Equal0~0_combout\) # (!\inst10|Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111101111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal0~1_combout\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_Equal1~0_combout\,
	datad => \inst10|ALT_INV_char_address[2]~18_combout\,
	datae => \inst10|ALT_INV_char_address[2]~25_combout\,
	dataf => \inst10|ALT_INV_char_address[3]~27_combout\,
	combout => \inst10|char_address[5]~28_combout\);

-- Location: LABCELL_X29_Y4_N42
\inst10|char_address[2]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~26_combout\ = ( !\inst10|char_address[2]~25_combout\ & ( (\inst10|Equal0~1_combout\ & (\inst10|Equal0~0_combout\ & \inst10|Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal0~1_combout\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_Equal0~2_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~25_combout\,
	combout => \inst10|char_address[2]~26_combout\);

-- Location: LABCELL_X29_Y4_N57
\inst10|char_address~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~13_combout\ = (\inst10|Equal0~2_combout\ & (\inst10|Equal0~0_combout\ & (\inst10|char_address~11_combout\ & \inst10|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal0~2_combout\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_char_address~11_combout\,
	datad => \inst10|ALT_INV_Equal0~1_combout\,
	combout => \inst10|char_address~13_combout\);

-- Location: LABCELL_X31_Y4_N0
\inst10|char_address~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~15_combout\ = ( \inst10|char_address~14_combout\ & ( \inst10|Equal0~2_combout\ & ( (\inst10|char_address~4_combout\ & (\inst10|Equal0~1_combout\ & (!\inst2|pixel_column\(7) & \inst10|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~4_combout\,
	datab => \inst10|ALT_INV_Equal0~1_combout\,
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst10|ALT_INV_Equal0~0_combout\,
	datae => \inst10|ALT_INV_char_address~14_combout\,
	dataf => \inst10|ALT_INV_Equal0~2_combout\,
	combout => \inst10|char_address~15_combout\);

-- Location: LABCELL_X29_Y4_N30
\inst10|char_address[2]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~29_combout\ = ( !\inst10|char_address~13_combout\ & ( !\inst10|char_address~15_combout\ & ( (!\inst10|char_address~12_combout\ & (!\inst10|char_address[2]~19_combout\ & (\inst10|char_address[5]~28_combout\ & 
-- !\inst10|char_address[2]~26_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~12_combout\,
	datab => \inst10|ALT_INV_char_address[2]~19_combout\,
	datac => \inst10|ALT_INV_char_address[5]~28_combout\,
	datad => \inst10|ALT_INV_char_address[2]~26_combout\,
	datae => \inst10|ALT_INV_char_address~13_combout\,
	dataf => \inst10|ALT_INV_char_address~15_combout\,
	combout => \inst10|char_address[2]~29_combout\);

-- Location: LABCELL_X31_Y4_N36
\inst10|char_address[0]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[0]~42_combout\ = ( \inst10|char_address~5_combout\ & ( \inst10|char_address[2]~29_combout\ ) ) # ( !\inst10|char_address~5_combout\ & ( \inst10|char_address[2]~29_combout\ & ( ((!\inst10|char_address~8_combout\ & 
-- \inst10|char_address~10_combout\)) # (\inst10|char_address[5]~31_combout\) ) ) ) # ( \inst10|char_address~5_combout\ & ( !\inst10|char_address[2]~29_combout\ & ( ((!\inst10|char_address~8_combout\ & ((\inst10|char_address~10_combout\) # 
-- (\inst10|char_address[0]~41_combout\)))) # (\inst10|char_address[5]~31_combout\) ) ) ) # ( !\inst10|char_address~5_combout\ & ( !\inst10|char_address[2]~29_combout\ & ( ((!\inst10|char_address~8_combout\ & ((\inst10|char_address~10_combout\) # 
-- (\inst10|char_address[0]~41_combout\)))) # (\inst10|char_address[5]~31_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111110011011100111111001100110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[0]~41_combout\,
	datab => \inst10|ALT_INV_char_address[5]~31_combout\,
	datac => \inst10|ALT_INV_char_address~8_combout\,
	datad => \inst10|ALT_INV_char_address~10_combout\,
	datae => \inst10|ALT_INV_char_address~5_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~29_combout\,
	combout => \inst10|char_address[0]~42_combout\);

-- Location: LABCELL_X32_Y4_N0
\inst10|char_address~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~43_combout\ = ( \inst10|char_address~3_combout\ & ( \inst10|Equal0~0_combout\ & ( (\inst10|Equal0~2_combout\ & (\inst10|LessThan9~1_combout\ & (!\inst3|LessThan11~1_combout\ & \inst10|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal0~2_combout\,
	datab => \inst10|ALT_INV_LessThan9~1_combout\,
	datac => \inst3|ALT_INV_LessThan11~1_combout\,
	datad => \inst10|ALT_INV_Equal0~1_combout\,
	datae => \inst10|ALT_INV_char_address~3_combout\,
	dataf => \inst10|ALT_INV_Equal0~0_combout\,
	combout => \inst10|char_address~43_combout\);

-- Location: LABCELL_X29_Y4_N27
\inst10|char_address[2]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~45_combout\ = ( \inst10|char_address[2]~18_combout\ & ( (!\inst10|char_address~15_combout\ & ((!\inst10|Equal0~3_combout\) # ((!\inst10|char_address~11_combout\ & \inst10|char_address[2]~25_combout\)))) ) ) # ( 
-- !\inst10|char_address[2]~18_combout\ & ( (!\inst10|char_address~15_combout\ & !\inst10|Equal0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000010001010101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~15_combout\,
	datab => \inst10|ALT_INV_char_address~11_combout\,
	datac => \inst10|ALT_INV_char_address[2]~25_combout\,
	datad => \inst10|ALT_INV_Equal0~3_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~18_combout\,
	combout => \inst10|char_address[2]~45_combout\);

-- Location: LABCELL_X31_Y4_N21
\inst10|char_address~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~44_combout\ = ( \inst2|pixel_column\(7) & ( (\inst10|LessThan19~0_combout\ & !\inst10|LessThan4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_LessThan19~0_combout\,
	datad => \inst10|ALT_INV_LessThan4~1_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(7),
	combout => \inst10|char_address~44_combout\);

-- Location: LABCELL_X29_Y4_N12
\inst10|char_address[2]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~46_combout\ = ( \inst10|char_address[2]~25_combout\ & ( (\inst10|char_address[3]~27_combout\ & ((!\inst10|Equal1~1_combout\) # ((\inst10|char_address[2]~18_combout\ & !\inst10|char_address~11_combout\)))) ) ) # ( 
-- !\inst10|char_address[2]~25_combout\ & ( (\inst10|char_address[3]~27_combout\ & !\inst10|Equal1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110001001100000011000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[2]~18_combout\,
	datab => \inst10|ALT_INV_char_address[3]~27_combout\,
	datac => \inst10|ALT_INV_Equal1~1_combout\,
	datad => \inst10|ALT_INV_char_address~11_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~25_combout\,
	combout => \inst10|char_address[2]~46_combout\);

-- Location: LABCELL_X31_Y4_N48
\inst10|char_address[4]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[4]~47_combout\ = ( \inst10|char_address[2]~46_combout\ & ( (!\inst10|char_address~8_combout\ & ((!\inst10|char_address~43_combout\) # ((!\inst10|char_address[2]~45_combout\) # (!\inst10|char_address~44_combout\)))) ) ) # ( 
-- !\inst10|char_address[2]~46_combout\ & ( !\inst10|char_address~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~43_combout\,
	datab => \inst10|ALT_INV_char_address[2]~45_combout\,
	datac => \inst10|ALT_INV_char_address~8_combout\,
	datad => \inst10|ALT_INV_char_address~44_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~46_combout\,
	combout => \inst10|char_address[4]~47_combout\);

-- Location: LABCELL_X32_Y4_N6
\inst10|char_address[1]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[1]~50_combout\ = ( \inst10|Equal0~0_combout\ & ( (!\inst10|char_address~23_combout\ & (\inst10|Equal0~1_combout\ & \inst10|Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~23_combout\,
	datab => \inst10|ALT_INV_Equal0~1_combout\,
	datac => \inst10|ALT_INV_Equal0~2_combout\,
	dataf => \inst10|ALT_INV_Equal0~0_combout\,
	combout => \inst10|char_address[1]~50_combout\);

-- Location: LABCELL_X26_Y4_N48
\inst10|char_address[1]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[1]~51_combout\ = ( \inst10|char_address~21_combout\ & ( \inst10|char_address[1]~50_combout\ & ( !\inst10|Equal1~1_combout\ ) ) ) # ( !\inst10|char_address~21_combout\ & ( \inst10|char_address[1]~50_combout\ & ( 
-- (!\inst10|Equal1~1_combout\ & (\inst10|char_address~20_combout\)) # (\inst10|Equal1~1_combout\ & (!\inst10|char_address~39_combout\ & ((\inst10|char_address~17_combout\) # (\inst10|char_address~20_combout\)))) ) ) ) # ( !\inst10|char_address~21_combout\ & 
-- ( !\inst10|char_address[1]~50_combout\ & ( (!\inst10|char_address~39_combout\ & (\inst10|Equal1~1_combout\ & \inst10|char_address~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000001010100010111001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~20_combout\,
	datab => \inst10|ALT_INV_char_address~39_combout\,
	datac => \inst10|ALT_INV_Equal1~1_combout\,
	datad => \inst10|ALT_INV_char_address~17_combout\,
	datae => \inst10|ALT_INV_char_address~21_combout\,
	dataf => \inst10|ALT_INV_char_address[1]~50_combout\,
	combout => \inst10|char_address[1]~51_combout\);

-- Location: LABCELL_X31_Y4_N54
\inst10|char_address~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~48_combout\ = ( \inst10|Equal0~2_combout\ & ( (\inst10|Equal0~0_combout\ & (\inst10|char_address~24_combout\ & \inst10|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_char_address~24_combout\,
	datad => \inst10|ALT_INV_Equal0~1_combout\,
	dataf => \inst10|ALT_INV_Equal0~2_combout\,
	combout => \inst10|char_address~48_combout\);

-- Location: LABCELL_X26_Y4_N6
\inst10|char_address[1]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[1]~49_combout\ = ( \inst10|char_address~21_combout\ & ( \inst10|char_address~39_combout\ & ( (!\inst10|Equal1~1_combout\ & \inst10|char_address~48_combout\) ) ) ) # ( !\inst10|char_address~21_combout\ & ( 
-- \inst10|char_address~39_combout\ & ( (!\inst10|Equal1~1_combout\ & ((\inst10|char_address~48_combout\))) # (\inst10|Equal1~1_combout\ & (\inst10|char_address~32_combout\)) ) ) ) # ( \inst10|char_address~21_combout\ & ( !\inst10|char_address~39_combout\ & 
-- ( (!\inst10|Equal1~1_combout\ & \inst10|char_address~48_combout\) ) ) ) # ( !\inst10|char_address~21_combout\ & ( !\inst10|char_address~39_combout\ & ( ((\inst10|Equal1~1_combout\ & ((\inst10|char_address~33_combout\) # 
-- (\inst10|char_address~32_combout\)))) # (\inst10|char_address~48_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000010100000101000011011000110110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal1~1_combout\,
	datab => \inst10|ALT_INV_char_address~32_combout\,
	datac => \inst10|ALT_INV_char_address~48_combout\,
	datad => \inst10|ALT_INV_char_address~33_combout\,
	datae => \inst10|ALT_INV_char_address~21_combout\,
	dataf => \inst10|ALT_INV_char_address~39_combout\,
	combout => \inst10|char_address[1]~49_combout\);

-- Location: LABCELL_X26_Y4_N18
\inst10|char_address[1]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[1]~52_combout\ = ( \inst10|Equal1~1_combout\ & ( \inst10|char_address[1]~49_combout\ & ( ((\inst10|char_address~20_combout\ & !\inst10|char_address~23_combout\)) # (\inst10|char_address~24_combout\) ) ) ) # ( \inst10|Equal1~1_combout\ 
-- & ( !\inst10|char_address[1]~49_combout\ & ( ((!\inst10|char_address~23_combout\ & ((!\inst10|char_address[1]~51_combout\) # (\inst10|char_address~20_combout\)))) # (\inst10|char_address~24_combout\) ) ) ) # ( !\inst10|Equal1~1_combout\ & ( 
-- !\inst10|char_address[1]~49_combout\ & ( !\inst10|char_address[1]~51_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101111110011001100000000000000000011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[1]~51_combout\,
	datab => \inst10|ALT_INV_char_address~24_combout\,
	datac => \inst10|ALT_INV_char_address~20_combout\,
	datad => \inst10|ALT_INV_char_address~23_combout\,
	datae => \inst10|ALT_INV_Equal1~1_combout\,
	dataf => \inst10|ALT_INV_char_address[1]~49_combout\,
	combout => \inst10|char_address[1]~52_combout\);

-- Location: LABCELL_X31_Y4_N42
\inst10|char_address[1]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[1]~53_combout\ = ( \inst10|char_address~10_combout\ & ( (!\inst10|char_address[4]~47_combout\) # (\inst10|char_address[5]~31_combout\) ) ) # ( !\inst10|char_address~10_combout\ & ( (!\inst10|char_address[4]~47_combout\) # 
-- (((!\inst10|char_address[2]~29_combout\ & !\inst10|char_address[1]~52_combout\)) # (\inst10|char_address[5]~31_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101110111011111110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[4]~47_combout\,
	datab => \inst10|ALT_INV_char_address[5]~31_combout\,
	datac => \inst10|ALT_INV_char_address[2]~29_combout\,
	datad => \inst10|ALT_INV_char_address[1]~52_combout\,
	dataf => \inst10|ALT_INV_char_address~10_combout\,
	combout => \inst10|char_address[1]~53_combout\);

-- Location: MLABCELL_X28_Y4_N33
\inst10|char_address~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~55_combout\ = ( \inst10|char_address~1_combout\ & ( (!\inst2|pixel_column\(4) & \inst10|char_address~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(4),
	datac => \inst10|ALT_INV_char_address~30_combout\,
	dataf => \inst10|ALT_INV_char_address~1_combout\,
	combout => \inst10|char_address~55_combout\);

-- Location: LABCELL_X29_Y4_N6
\inst10|char_address[2]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~62_combout\ = ( \inst10|Equal0~0_combout\ & ( (!\inst10|char_address~24_combout\ & (\inst10|Equal0~1_combout\ & \inst10|Equal0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~24_combout\,
	datac => \inst10|ALT_INV_Equal0~1_combout\,
	datad => \inst10|ALT_INV_Equal0~2_combout\,
	dataf => \inst10|ALT_INV_Equal0~0_combout\,
	combout => \inst10|char_address[2]~62_combout\);

-- Location: LABCELL_X29_Y4_N48
\inst10|char_address[2]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~63_combout\ = ( \inst10|char_address[2]~62_combout\ & ( (!\inst10|char_address~23_combout\ & ((!\inst10|Equal1~1_combout\) # ((!\inst10|char_address~11_combout\ & !\inst10|char_address~39_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010100000001010101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~23_combout\,
	datab => \inst10|ALT_INV_char_address~11_combout\,
	datac => \inst10|ALT_INV_char_address~39_combout\,
	datad => \inst10|ALT_INV_Equal1~1_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~62_combout\,
	combout => \inst10|char_address[2]~63_combout\);

-- Location: LABCELL_X31_Y4_N57
\inst10|char_address[2]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~65_combout\ = ( !\inst10|char_address~10_combout\ & ( (!\inst10|char_address~24_combout\) # ((!\inst10|Equal0~0_combout\) # ((!\inst10|Equal1~0_combout\) # (!\inst10|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~24_combout\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_Equal1~0_combout\,
	datad => \inst10|ALT_INV_Equal0~1_combout\,
	dataf => \inst10|ALT_INV_char_address~10_combout\,
	combout => \inst10|char_address[2]~65_combout\);

-- Location: LABCELL_X26_Y4_N24
\inst10|char_address[2]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~60_combout\ = ( !\inst10|char_address~20_combout\ & ( (!\inst10|char_address~23_combout\ & !\inst10|char_address~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_char_address~23_combout\,
	datac => \inst10|ALT_INV_char_address~21_combout\,
	dataf => \inst10|ALT_INV_char_address~20_combout\,
	combout => \inst10|char_address[2]~60_combout\);

-- Location: LABCELL_X26_Y4_N33
\inst10|char_address[2]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~61_combout\ = ( \inst10|char_address~39_combout\ & ( (\inst10|Equal1~1_combout\ & (\inst10|char_address~32_combout\ & \inst10|char_address[2]~60_combout\)) ) ) # ( !\inst10|char_address~39_combout\ & ( (\inst10|Equal1~1_combout\ & 
-- (\inst10|char_address[2]~60_combout\ & ((\inst10|char_address~33_combout\) # (\inst10|char_address~32_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000010000010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal1~1_combout\,
	datab => \inst10|ALT_INV_char_address~32_combout\,
	datac => \inst10|ALT_INV_char_address[2]~60_combout\,
	datad => \inst10|ALT_INV_char_address~33_combout\,
	dataf => \inst10|ALT_INV_char_address~39_combout\,
	combout => \inst10|char_address[2]~61_combout\);

-- Location: LABCELL_X31_Y4_N12
\inst10|char_address[2]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~64_combout\ = ( \inst10|Equal1~0_combout\ & ( !\inst10|char_address~39_combout\ & ( (\inst10|char_address~17_combout\ & (\inst10|Equal0~1_combout\ & (\inst10|char_address[2]~60_combout\ & \inst10|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~17_combout\,
	datab => \inst10|ALT_INV_Equal0~1_combout\,
	datac => \inst10|ALT_INV_char_address[2]~60_combout\,
	datad => \inst10|ALT_INV_Equal0~0_combout\,
	datae => \inst10|ALT_INV_Equal1~0_combout\,
	dataf => \inst10|ALT_INV_char_address~39_combout\,
	combout => \inst10|char_address[2]~64_combout\);

-- Location: MLABCELL_X28_Y4_N45
\inst10|char_address~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~56_combout\ = (\inst10|char_address~1_combout\ & !\inst2|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~1_combout\,
	datad => \inst2|ALT_INV_pixel_column\(6),
	combout => \inst10|char_address~56_combout\);

-- Location: LABCELL_X32_Y4_N18
\inst10|char_address[2]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~57_combout\ = ( \inst10|char_address~14_combout\ & ( (!\inst10|char_address~21_combout\ & (\inst10|char_address~16_combout\ & !\inst10|char_address~20_combout\)) ) ) # ( !\inst10|char_address~14_combout\ & ( 
-- (\inst10|char_address~56_combout\ & (!\inst10|char_address~21_combout\ & (\inst10|char_address~16_combout\ & !\inst10|char_address~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~56_combout\,
	datab => \inst10|ALT_INV_char_address~21_combout\,
	datac => \inst10|ALT_INV_char_address~16_combout\,
	datad => \inst10|ALT_INV_char_address~20_combout\,
	dataf => \inst10|ALT_INV_char_address~14_combout\,
	combout => \inst10|char_address[2]~57_combout\);

-- Location: LABCELL_X32_Y4_N39
\inst10|char_address[2]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~58_combout\ = ( !\inst10|char_address~17_combout\ & ( (!\inst10|char_address~21_combout\ & !\inst10|char_address~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst10|ALT_INV_char_address~21_combout\,
	datad => \inst10|ALT_INV_char_address~20_combout\,
	dataf => \inst10|ALT_INV_char_address~17_combout\,
	combout => \inst10|char_address[2]~58_combout\);

-- Location: LABCELL_X32_Y4_N36
\inst10|char_address[2]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~59_combout\ = ( \inst10|char_address[2]~58_combout\ & ( !\inst10|char_address[2]~57_combout\ ) ) # ( !\inst10|char_address[2]~58_combout\ & ( (!\inst10|char_address[2]~57_combout\ & (\inst10|Equal0~1_combout\ & 
-- (\inst10|Equal1~0_combout\ & \inst10|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[2]~57_combout\,
	datab => \inst10|ALT_INV_Equal0~1_combout\,
	datac => \inst10|ALT_INV_Equal1~0_combout\,
	datad => \inst10|ALT_INV_Equal0~0_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~58_combout\,
	combout => \inst10|char_address[2]~59_combout\);

-- Location: LABCELL_X31_Y4_N6
\inst10|char_address[2]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~66_combout\ = ( \inst10|char_address[2]~59_combout\ & ( (\inst10|char_address[2]~65_combout\ & (!\inst10|char_address[2]~61_combout\ & !\inst10|char_address[2]~64_combout\)) ) ) # ( !\inst10|char_address[2]~59_combout\ & ( 
-- (!\inst10|char_address[2]~63_combout\ & (\inst10|char_address[2]~65_combout\ & (!\inst10|char_address[2]~61_combout\ & !\inst10|char_address[2]~64_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[2]~63_combout\,
	datab => \inst10|ALT_INV_char_address[2]~65_combout\,
	datac => \inst10|ALT_INV_char_address[2]~61_combout\,
	datad => \inst10|ALT_INV_char_address[2]~64_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~59_combout\,
	combout => \inst10|char_address[2]~66_combout\);

-- Location: MLABCELL_X28_Y4_N39
\inst10|char_address[2]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~54_combout\ = ( !\inst2|pixel_column\(5) & ( (\inst10|char_address~30_combout\ & ((!\inst10|LessThan4~0_combout\) # ((!\inst10|LessThan10~0_combout\ & !\inst2|pixel_column\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110000001100100011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_LessThan10~0_combout\,
	datab => \inst10|ALT_INV_char_address~30_combout\,
	datac => \inst10|ALT_INV_LessThan4~0_combout\,
	datad => \inst2|ALT_INV_pixel_column\(4),
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst10|char_address[2]~54_combout\);

-- Location: LABCELL_X31_Y4_N24
\inst10|char_address[2]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[2]~67_combout\ = ( !\inst10|char_address[2]~54_combout\ & ( \inst10|char_address~8_combout\ & ( ((\inst10|char_address~5_combout\ & \inst10|char_address[2]~29_combout\)) # (\inst10|char_address~55_combout\) ) ) ) # ( 
-- !\inst10|char_address[2]~54_combout\ & ( !\inst10|char_address~8_combout\ & ( ((!\inst10|char_address[2]~29_combout\ & ((!\inst10|char_address[2]~66_combout\))) # (\inst10|char_address[2]~29_combout\ & (\inst10|char_address~5_combout\))) # 
-- (\inst10|char_address~55_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100110111000000000000000000110111001101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~5_combout\,
	datab => \inst10|ALT_INV_char_address~55_combout\,
	datac => \inst10|ALT_INV_char_address[2]~29_combout\,
	datad => \inst10|ALT_INV_char_address[2]~66_combout\,
	datae => \inst10|ALT_INV_char_address[2]~54_combout\,
	dataf => \inst10|ALT_INV_char_address~8_combout\,
	combout => \inst10|char_address[2]~67_combout\);

-- Location: LABCELL_X26_Y4_N27
\inst10|char_address[3]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~70_combout\ = ( \inst10|char_address~20_combout\ & ( \inst10|Equal0~3_combout\ ) ) # ( !\inst10|char_address~20_combout\ & ( (\inst10|Equal0~3_combout\ & (((!\inst10|char_address~21_combout\ & \inst10|char_address~32_combout\)) # 
-- (\inst10|char_address~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111011000000000011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~21_combout\,
	datab => \inst10|ALT_INV_char_address~23_combout\,
	datac => \inst10|ALT_INV_char_address~32_combout\,
	datad => \inst10|ALT_INV_Equal0~3_combout\,
	dataf => \inst10|ALT_INV_char_address~20_combout\,
	combout => \inst10|char_address[3]~70_combout\);

-- Location: LABCELL_X32_Y4_N51
\inst10|char_address[3]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~73_combout\ = ( \inst10|LessThan4~1_combout\ & ( !\inst10|char_address~21_combout\ ) ) # ( !\inst10|LessThan4~1_combout\ & ( (!\inst10|char_address~21_combout\ & ((!\inst10|char_address~16_combout\) # ((!\inst2|pixel_column\(6) & 
-- !\inst2|pixel_column\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000110011001000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(6),
	datab => \inst10|ALT_INV_char_address~21_combout\,
	datac => \inst2|ALT_INV_pixel_column\(5),
	datad => \inst10|ALT_INV_char_address~16_combout\,
	dataf => \inst10|ALT_INV_LessThan4~1_combout\,
	combout => \inst10|char_address[3]~73_combout\);

-- Location: LABCELL_X26_Y4_N42
\inst10|char_address[3]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~74_combout\ = ( \inst10|Equal0~1_combout\ & ( !\inst10|char_address~24_combout\ & ( (\inst10|Equal1~0_combout\ & (\inst10|Equal0~0_combout\ & (!\inst10|char_address~20_combout\ & !\inst10|char_address~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal1~0_combout\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_char_address~20_combout\,
	datad => \inst10|ALT_INV_char_address~23_combout\,
	datae => \inst10|ALT_INV_Equal0~1_combout\,
	dataf => \inst10|ALT_INV_char_address~24_combout\,
	combout => \inst10|char_address[3]~74_combout\);

-- Location: LABCELL_X29_Y4_N45
\inst10|char_address[3]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~72_combout\ = ( \inst10|Equal1~0_combout\ & ( (!\inst10|char_address~17_combout\ & ((!\inst10|Equal0~1_combout\) # ((!\inst10|Equal0~0_combout\) # (!\inst10|char_address~11_combout\)))) ) ) # ( !\inst10|Equal1~0_combout\ & ( 
-- !\inst10|char_address~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_Equal0~1_combout\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_char_address~17_combout\,
	datad => \inst10|ALT_INV_char_address~11_combout\,
	dataf => \inst10|ALT_INV_Equal1~0_combout\,
	combout => \inst10|char_address[3]~72_combout\);

-- Location: LABCELL_X29_Y4_N0
\inst10|char_address[3]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~75_combout\ = ( \inst10|char_address[3]~72_combout\ & ( \inst10|char_address~15_combout\ & ( (\inst10|char_address[3]~27_combout\ & (\inst10|char_address[3]~74_combout\ & ((!\inst10|char_address[3]~73_combout\) # 
-- (!\inst10|char_address~13_combout\)))) ) ) ) # ( !\inst10|char_address[3]~72_combout\ & ( \inst10|char_address~15_combout\ & ( (!\inst10|char_address[3]~73_combout\ & (\inst10|char_address[3]~27_combout\ & \inst10|char_address[3]~74_combout\)) ) ) ) # ( 
-- \inst10|char_address[3]~72_combout\ & ( !\inst10|char_address~15_combout\ & ( (!\inst10|char_address[3]~73_combout\ & (\inst10|char_address[3]~27_combout\ & \inst10|char_address[3]~74_combout\)) ) ) ) # ( !\inst10|char_address[3]~72_combout\ & ( 
-- !\inst10|char_address~15_combout\ & ( (!\inst10|char_address[3]~73_combout\ & (\inst10|char_address[3]~27_combout\ & \inst10|char_address[3]~74_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[3]~73_combout\,
	datab => \inst10|ALT_INV_char_address[3]~27_combout\,
	datac => \inst10|ALT_INV_char_address[3]~74_combout\,
	datad => \inst10|ALT_INV_char_address~13_combout\,
	datae => \inst10|ALT_INV_char_address[3]~72_combout\,
	dataf => \inst10|ALT_INV_char_address~15_combout\,
	combout => \inst10|char_address[3]~75_combout\);

-- Location: LABCELL_X32_Y4_N33
\inst10|char_address[3]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~68_combout\ = ( \inst10|char_address~2_combout\ & ( (!\inst10|char_address~16_combout\ & !\inst10|char_address~21_combout\) ) ) # ( !\inst10|char_address~2_combout\ & ( (!\inst10|char_address~21_combout\ & 
-- ((!\inst10|char_address~16_combout\) # (!\inst10|char_address~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~16_combout\,
	datac => \inst10|ALT_INV_char_address~14_combout\,
	datad => \inst10|ALT_INV_char_address~21_combout\,
	dataf => \inst10|ALT_INV_char_address~2_combout\,
	combout => \inst10|char_address[3]~68_combout\);

-- Location: LABCELL_X29_Y4_N24
\inst10|char_address[3]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~69_combout\ = ( \inst10|char_address~17_combout\ & ( (\inst10|char_address[3]~68_combout\ & ((\inst10|Equal0~3_combout\) # (\inst10|char_address~15_combout\))) ) ) # ( !\inst10|char_address~17_combout\ & ( 
-- (\inst10|char_address~15_combout\ & (\inst10|char_address[3]~68_combout\ & ((!\inst10|char_address~11_combout\) # (!\inst10|Equal0~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010100000000000101010000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~15_combout\,
	datab => \inst10|ALT_INV_char_address~11_combout\,
	datac => \inst10|ALT_INV_Equal0~3_combout\,
	datad => \inst10|ALT_INV_char_address[3]~68_combout\,
	dataf => \inst10|ALT_INV_char_address~17_combout\,
	combout => \inst10|char_address[3]~69_combout\);

-- Location: LABCELL_X29_Y4_N9
\inst10|char_address[3]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~71_combout\ = ( !\inst10|char_address~8_combout\ & ( (!\inst10|Equal1~1_combout\ & (!\inst10|char_address~10_combout\ & ((!\inst10|char_address~24_combout\) # (!\inst10|Equal0~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000000000110010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~24_combout\,
	datab => \inst10|ALT_INV_Equal1~1_combout\,
	datac => \inst10|ALT_INV_Equal0~3_combout\,
	datad => \inst10|ALT_INV_char_address~10_combout\,
	dataf => \inst10|ALT_INV_char_address~8_combout\,
	combout => \inst10|char_address[3]~71_combout\);

-- Location: MLABCELL_X28_Y4_N12
\inst10|char_address[3]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[3]~76_combout\ = ( \inst10|char_address[3]~69_combout\ & ( \inst10|char_address[3]~71_combout\ & ( !\inst10|char_address[2]~54_combout\ ) ) ) # ( !\inst10|char_address[3]~69_combout\ & ( \inst10|char_address[3]~71_combout\ & ( 
-- (!\inst10|char_address[2]~54_combout\ & (((\inst10|char_address~55_combout\) # (\inst10|char_address[3]~75_combout\)) # (\inst10|char_address[3]~70_combout\))) ) ) ) # ( \inst10|char_address[3]~69_combout\ & ( !\inst10|char_address[3]~71_combout\ & ( 
-- (!\inst10|char_address[2]~54_combout\ & ((\inst10|char_address~55_combout\) # (\inst10|char_address[3]~75_combout\))) ) ) ) # ( !\inst10|char_address[3]~69_combout\ & ( !\inst10|char_address[3]~71_combout\ & ( (!\inst10|char_address[2]~54_combout\ & 
-- ((\inst10|char_address~55_combout\) # (\inst10|char_address[3]~75_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000001111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[3]~70_combout\,
	datab => \inst10|ALT_INV_char_address[3]~75_combout\,
	datac => \inst10|ALT_INV_char_address~55_combout\,
	datad => \inst10|ALT_INV_char_address[2]~54_combout\,
	datae => \inst10|ALT_INV_char_address[3]~69_combout\,
	dataf => \inst10|ALT_INV_char_address[3]~71_combout\,
	combout => \inst10|char_address[3]~76_combout\);

-- Location: MLABCELL_X28_Y4_N57
\inst10|char_address[4]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[4]~82_combout\ = ( \inst2|pixel_column\(5) & ( (\inst10|char_address~30_combout\ & (!\inst2|pixel_column\(4) & !\inst10|LessThan4~0_combout\)) ) ) # ( !\inst2|pixel_column\(5) & ( (\inst10|char_address~30_combout\ & 
-- (\inst2|pixel_column\(4) & !\inst10|LessThan4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst10|ALT_INV_char_address~30_combout\,
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst10|ALT_INV_LessThan4~0_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst10|char_address[4]~82_combout\);

-- Location: LABCELL_X29_Y4_N18
\inst10|char_address[4]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[4]~78_combout\ = ( \inst10|char_address~11_combout\ & ( \inst10|char_address[2]~62_combout\ & ( (!\inst10|char_address~23_combout\ & (\inst10|char_address~33_combout\ & !\inst10|Equal1~1_combout\)) ) ) ) # ( 
-- !\inst10|char_address~11_combout\ & ( \inst10|char_address[2]~62_combout\ & ( (!\inst10|char_address~23_combout\ & ((!\inst10|char_address~33_combout\ & (!\inst10|char_address~17_combout\)) # (\inst10|char_address~33_combout\ & 
-- ((!\inst10|Equal1~1_combout\))))) ) ) ) # ( \inst10|char_address~11_combout\ & ( !\inst10|char_address[2]~62_combout\ & ( (!\inst10|char_address~23_combout\ & (\inst10|char_address~33_combout\ & !\inst10|Equal1~1_combout\)) ) ) ) # ( 
-- !\inst10|char_address~11_combout\ & ( !\inst10|char_address[2]~62_combout\ & ( (!\inst10|char_address~33_combout\ & (((!\inst10|char_address~17_combout\)))) # (\inst10|char_address~33_combout\ & (!\inst10|char_address~23_combout\ & 
-- ((!\inst10|Equal1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011000000000010100000000010001010100000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~23_combout\,
	datab => \inst10|ALT_INV_char_address~17_combout\,
	datac => \inst10|ALT_INV_char_address~33_combout\,
	datad => \inst10|ALT_INV_Equal1~1_combout\,
	datae => \inst10|ALT_INV_char_address~11_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~62_combout\,
	combout => \inst10|char_address[4]~78_combout\);

-- Location: LABCELL_X32_Y4_N21
\inst10|char_address[4]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[4]~79_combout\ = ( \inst10|char_address~14_combout\ & ( (!\inst10|char_address~21_combout\ & (!\inst10|char_address~20_combout\ & !\inst10|char_address~16_combout\)) ) ) # ( !\inst10|char_address~14_combout\ & ( 
-- (!\inst10|char_address~21_combout\ & (!\inst10|char_address~20_combout\ & ((!\inst10|char_address~56_combout\) # (!\inst10|char_address~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~56_combout\,
	datab => \inst10|ALT_INV_char_address~21_combout\,
	datac => \inst10|ALT_INV_char_address~20_combout\,
	datad => \inst10|ALT_INV_char_address~16_combout\,
	dataf => \inst10|ALT_INV_char_address~14_combout\,
	combout => \inst10|char_address[4]~79_combout\);

-- Location: LABCELL_X32_Y4_N42
\inst10|char_address[4]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[4]~80_combout\ = ( \inst10|Equal0~1_combout\ & ( \sw[1]~input_o\ & ( (!\sw[0]~input_o\ & (\inst10|Equal0~0_combout\ & !\inst10|char_address~24_combout\)) ) ) ) # ( \inst10|Equal0~1_combout\ & ( !\sw[1]~input_o\ & ( (\sw[0]~input_o\ & 
-- (\inst10|Equal0~0_combout\ & (!\inst10|char_address~23_combout\ & !\inst10|char_address~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \inst10|ALT_INV_Equal0~0_combout\,
	datac => \inst10|ALT_INV_char_address~23_combout\,
	datad => \inst10|ALT_INV_char_address~24_combout\,
	datae => \inst10|ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_sw[1]~input_o\,
	combout => \inst10|char_address[4]~80_combout\);

-- Location: LABCELL_X31_Y4_N30
\inst10|char_address[4]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[4]~81_combout\ = ( \inst10|char_address[4]~80_combout\ & ( \inst10|char_address[2]~45_combout\ & ( (\inst10|char_address[4]~78_combout\ & (!\inst10|char_address~10_combout\ & (\inst10|char_address[4]~79_combout\ & 
-- !\inst10|char_address[2]~46_combout\))) ) ) ) # ( !\inst10|char_address[4]~80_combout\ & ( \inst10|char_address[2]~45_combout\ & ( (!\inst10|char_address~10_combout\ & !\inst10|char_address[2]~46_combout\) ) ) ) # ( \inst10|char_address[4]~80_combout\ & ( 
-- !\inst10|char_address[2]~45_combout\ & ( (\inst10|char_address[4]~78_combout\ & (!\inst10|char_address~10_combout\ & \inst10|char_address[4]~79_combout\)) ) ) ) # ( !\inst10|char_address[4]~80_combout\ & ( !\inst10|char_address[2]~45_combout\ & ( 
-- !\inst10|char_address~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000001000000010011001100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[4]~78_combout\,
	datab => \inst10|ALT_INV_char_address~10_combout\,
	datac => \inst10|ALT_INV_char_address[4]~79_combout\,
	datad => \inst10|ALT_INV_char_address[2]~46_combout\,
	datae => \inst10|ALT_INV_char_address[4]~80_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~45_combout\,
	combout => \inst10|char_address[4]~81_combout\);

-- Location: MLABCELL_X28_Y4_N30
\inst10|char_address~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~77_combout\ = ( !\inst2|pixel_column\(5) & ( (!\inst2|pixel_column\(4) & ((!\inst10|LessThan10~0_combout\) # (!\inst10|LessThan4~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(4),
	datac => \inst10|ALT_INV_LessThan10~0_combout\,
	datad => \inst10|ALT_INV_LessThan4~1_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst10|char_address~77_combout\);

-- Location: MLABCELL_X28_Y4_N54
\inst10|char_address[4]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[4]~83_combout\ = ( \inst10|char_address~77_combout\ & ( ((!\inst10|char_address[4]~82_combout\ & ((!\inst10|char_address[4]~47_combout\) # (\inst10|char_address[4]~81_combout\)))) # (\inst10|char_address~30_combout\) ) ) # ( 
-- !\inst10|char_address~77_combout\ & ( (!\inst10|char_address[4]~82_combout\ & ((!\inst10|char_address[4]~47_combout\) # (\inst10|char_address[4]~81_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010110011101110111011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address[4]~82_combout\,
	datab => \inst10|ALT_INV_char_address~30_combout\,
	datac => \inst10|ALT_INV_char_address[4]~47_combout\,
	datad => \inst10|ALT_INV_char_address[4]~81_combout\,
	dataf => \inst10|ALT_INV_char_address~77_combout\,
	combout => \inst10|char_address[4]~83_combout\);

-- Location: LABCELL_X31_Y4_N51
\inst10|char_address~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address~84_combout\ = ( \inst2|pixel_column\(7) & ( (\inst10|char_address~43_combout\ & \inst10|char_address~44_combout\) ) ) # ( !\inst2|pixel_column\(7) & ( (\inst10|char_address~43_combout\ & ((\inst10|char_address~44_combout\) # 
-- (\inst10|char_address~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~43_combout\,
	datac => \inst10|ALT_INV_char_address~2_combout\,
	datad => \inst10|ALT_INV_char_address~44_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(7),
	combout => \inst10|char_address~84_combout\);

-- Location: LABCELL_X31_Y4_N18
\inst10|char_address[5]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|char_address[5]~85_combout\ = ( \inst10|char_address[2]~45_combout\ & ( (!\inst10|char_address[5]~31_combout\ & (\inst10|char_address[5]~28_combout\ & ((!\inst10|char_address~84_combout\) # (\inst10|char_address~12_combout\)))) ) ) # ( 
-- !\inst10|char_address[2]~45_combout\ & ( (!\inst10|char_address[5]~31_combout\ & (\inst10|char_address[5]~28_combout\ & \inst10|char_address~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000001000000011000000100000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_char_address~84_combout\,
	datab => \inst10|ALT_INV_char_address[5]~31_combout\,
	datac => \inst10|ALT_INV_char_address[5]~28_combout\,
	datad => \inst10|ALT_INV_char_address~12_combout\,
	dataf => \inst10|ALT_INV_char_address[2]~45_combout\,
	combout => \inst10|char_address[5]~85_combout\);

-- Location: M10K_X30_Y6_N0
\inst9|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "000000006000060000600007800060000600007E000000007E00060000600007800060000600007E00000000780006C0006600066000660006C00078000000003C00066000600006000060000660003C000000007C00066000660007C00066000660007C000000006600066000660007E000660003C00018000000003C00066000060003E00066000660003C000000003C00066000660003C00066000660003C00000000180001800018000180000C000660007E000000003C00066000660007C00060000660003C000000003C0006600006000060007C000600007E0000000006000060007F000660001E0000E00006000000003C00066000060001C0000600",
	mem_init3 => "0660003C000000007E00060000300000C00006000660003C000000007E000180001800018000380001800018000000003C0006600066000760006E000660003C000000006000030000180000C0000600003000000000000018000180000000000000000000000000000000000000000000000007E0000000000000000003000018000180000000000000000000000000000000000000018000180007E0001800018000000000000000000660003C000FF0003C00066000000000000030000180000C0000C0000C0001800030000000000C00018000300003000030000180000C0000000000000000000000000000180000C00006000000003F00066000670003",
	mem_init2 => "80003C000660003C00000000460006600030000180000C000660006200000000180007C000060003C000600003E00018000000006600066000FF00066000FF00066000660000000000000000000000000000660006600066000000001800000000000001800018000180001800000000000000000000000000000000000000000000000010000300007F0007F000300001000000000180001800018000180007E0003C0001800000000000003C0000C0000C0000C0000C0000C0003C00000000180003C0007E00018000180001800018000000003C00030000300003000030000300003C000000007E0006000030000180000C000060007E0000000018000180",
	mem_init1 => "00180003C0006600066000660000000066000660003C000180003C00066000660000000063000770007F0006B00063000630006300000000180003C0006600066000660006600066000000003C000660006600066000660006600066000000001800018000180001800018000180007E000000003C00066000060003C00060000660003C00000000660006C000780007C00066000660007C000000000E0003C000660006600066000660003C000000006000060000600007C00066000660007C000000003C00066000660006600066000660003C0000000066000660006E0007E0007E0007600066000000006300063000630006B0007F000770006300000000",
	mem_init0 => "7E00060000600006000060000600006000000000660006C0007800070000780006C0006600000000380006C0000C0000C0000C0000C0001E000000003C00018000180001800018000180003C000000006600066000660007E000660006600066000000003C00066000660006E00060000660003C000000006000060000600007800060000600007E000000007E00060000600007800060000600007E00000000780006C0006600066000660006C00078000000003C00066000600006000060000660003C000000007C00066000660007C00066000660007C000000006600066000660007E000660003C00018000000003C00062000600006E0006E000660003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "char_rom:inst9|altsyncram:altsyncram_component|altsyncram_d5g1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	portaaddr => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X26_Y6_N0
\inst10|text_col[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|text_col[1]~1_combout\ = ( \inst3|LessThan11~1_combout\ & ( \inst2|pixel_column\(3) ) ) # ( !\inst3|LessThan11~1_combout\ & ( (!\inst10|LessThan9~0_combout\ & ((!\inst10|char_address~0_combout\ & (\inst2|pixel_column\(3))) # 
-- (\inst10|char_address~0_combout\ & ((\inst2|pixel_column\(2)))))) # (\inst10|LessThan9~0_combout\ & (\inst2|pixel_column\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101011101010100010101110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(3),
	datab => \inst10|ALT_INV_LessThan9~0_combout\,
	datac => \inst10|ALT_INV_char_address~0_combout\,
	datad => \inst2|ALT_INV_pixel_column\(2),
	dataf => \inst3|ALT_INV_LessThan11~1_combout\,
	combout => \inst10|text_col[1]~1_combout\);

-- Location: LABCELL_X26_Y6_N6
\inst9|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux0~4_combout\ = ( !\inst10|text_col[1]~1_combout\ & ( (!\inst10|text_col[2]~0_combout\ & ((!\inst10|text_col[0]~2_combout\ & (\inst9|altsyncram_component|auto_generated|q_a\(7))) # (\inst10|text_col[0]~2_combout\ & 
-- (((\inst9|altsyncram_component|auto_generated|q_a\(6))))))) # (\inst10|text_col[2]~0_combout\ & (\inst10|text_col[0]~2_combout\)) ) ) # ( \inst10|text_col[1]~1_combout\ & ( (!\inst10|text_col[2]~0_combout\ & ((!\inst10|text_col[0]~2_combout\ & 
-- (\inst9|altsyncram_component|auto_generated|q_a\(5))) # (\inst10|text_col[0]~2_combout\ & (((\inst9|altsyncram_component|auto_generated|q_a\(4))))))) # (\inst10|text_col[2]~0_combout\ & (\inst10|text_col[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100111011000110010001100100011001001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_text_col[2]~0_combout\,
	datab => \inst10|ALT_INV_text_col[0]~2_combout\,
	datac => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datae => \inst10|ALT_INV_text_col[1]~1_combout\,
	dataf => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datag => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst9|Mux0~4_combout\);

-- Location: LABCELL_X26_Y6_N36
\inst9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = ( !\inst10|text_col[1]~1_combout\ & ( (!\inst10|text_col[2]~0_combout\ & (\inst9|Mux0~4_combout\)) # (\inst10|text_col[2]~0_combout\ & ((!\inst9|Mux0~4_combout\ & (\inst9|altsyncram_component|auto_generated|q_a\(3))) # 
-- (\inst9|Mux0~4_combout\ & (((\inst9|altsyncram_component|auto_generated|q_a\(2))))))) ) ) # ( \inst10|text_col[1]~1_combout\ & ( (!\inst10|text_col[2]~0_combout\ & (\inst9|Mux0~4_combout\)) # (\inst10|text_col[2]~0_combout\ & ((!\inst9|Mux0~4_combout\ & 
-- (\inst9|altsyncram_component|auto_generated|q_a\(1))) # (\inst9|Mux0~4_combout\ & (((\inst9|altsyncram_component|auto_generated|q_a\(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|ALT_INV_text_col[2]~0_combout\,
	datab => \inst9|ALT_INV_Mux0~4_combout\,
	datac => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \inst10|ALT_INV_text_col[1]~1_combout\,
	dataf => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datag => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst9|Mux0~0_combout\);

-- Location: MLABCELL_X28_Y5_N30
\inst3|Add15~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~38_cout\ = CARRY(( \inst3|top_cloud_x_pos\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_top_cloud_x_pos\(1),
	cin => GND,
	cout => \inst3|Add15~38_cout\);

-- Location: MLABCELL_X28_Y5_N33
\inst3|Add15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~9_sumout\ = SUM(( \inst3|top_cloud_x_pos\(2) ) + ( VCC ) + ( \inst3|Add15~38_cout\ ))
-- \inst3|Add15~10\ = CARRY(( \inst3|top_cloud_x_pos\(2) ) + ( VCC ) + ( \inst3|Add15~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_top_cloud_x_pos\(2),
	cin => \inst3|Add15~38_cout\,
	sumout => \inst3|Add15~9_sumout\,
	cout => \inst3|Add15~10\);

-- Location: FF_X28_Y5_N11
\inst3|top_cloud_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add15~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(2));

-- Location: MLABCELL_X28_Y5_N36
\inst3|Add15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~17_sumout\ = SUM(( \inst3|top_cloud_x_pos\(3) ) + ( GND ) + ( \inst3|Add15~10\ ))
-- \inst3|Add15~18\ = CARRY(( \inst3|top_cloud_x_pos\(3) ) + ( GND ) + ( \inst3|Add15~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_top_cloud_x_pos\(3),
	cin => \inst3|Add15~10\,
	sumout => \inst3|Add15~17_sumout\,
	cout => \inst3|Add15~18\);

-- Location: FF_X28_Y5_N20
\inst3|top_cloud_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add15~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(3));

-- Location: MLABCELL_X28_Y5_N39
\inst3|Add15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~13_sumout\ = SUM(( \inst3|top_cloud_x_pos\(4) ) + ( VCC ) + ( \inst3|Add15~18\ ))
-- \inst3|Add15~14\ = CARRY(( \inst3|top_cloud_x_pos\(4) ) + ( VCC ) + ( \inst3|Add15~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(4),
	cin => \inst3|Add15~18\,
	sumout => \inst3|Add15~13_sumout\,
	cout => \inst3|Add15~14\);

-- Location: FF_X28_Y5_N5
\inst3|top_cloud_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add15~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(4));

-- Location: MLABCELL_X28_Y5_N42
\inst3|Add15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~5_sumout\ = SUM(( \inst3|top_cloud_x_pos\(5) ) + ( VCC ) + ( \inst3|Add15~14\ ))
-- \inst3|Add15~6\ = CARRY(( \inst3|top_cloud_x_pos\(5) ) + ( VCC ) + ( \inst3|Add15~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(5),
	cin => \inst3|Add15~14\,
	sumout => \inst3|Add15~5_sumout\,
	cout => \inst3|Add15~6\);

-- Location: FF_X28_Y5_N2
\inst3|top_cloud_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add15~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(5));

-- Location: MLABCELL_X28_Y5_N45
\inst3|Add15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~29_sumout\ = SUM(( \inst3|top_cloud_x_pos\(6) ) + ( VCC ) + ( \inst3|Add15~6\ ))
-- \inst3|Add15~30\ = CARRY(( \inst3|top_cloud_x_pos\(6) ) + ( VCC ) + ( \inst3|Add15~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_top_cloud_x_pos\(6),
	cin => \inst3|Add15~6\,
	sumout => \inst3|Add15~29_sumout\,
	cout => \inst3|Add15~30\);

-- Location: FF_X28_Y5_N41
\inst3|top_cloud_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add15~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(6));

-- Location: MLABCELL_X28_Y5_N48
\inst3|Add15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~25_sumout\ = SUM(( !\inst3|top_cloud_x_pos\(7) ) + ( VCC ) + ( \inst3|Add15~30\ ))
-- \inst3|Add15~26\ = CARRY(( !\inst3|top_cloud_x_pos\(7) ) + ( VCC ) + ( \inst3|Add15~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_top_cloud_x_pos\(7),
	cin => \inst3|Add15~30\,
	sumout => \inst3|Add15~25_sumout\,
	cout => \inst3|Add15~26\);

-- Location: MLABCELL_X28_Y5_N27
\inst3|top_cloud_x_pos[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|top_cloud_x_pos[7]~2_combout\ = !\inst3|Add15~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Add15~25_sumout\,
	combout => \inst3|top_cloud_x_pos[7]~2_combout\);

-- Location: FF_X28_Y5_N29
\inst3|top_cloud_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	d => \inst3|top_cloud_x_pos[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(7));

-- Location: MLABCELL_X28_Y5_N51
\inst3|Add15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~21_sumout\ = SUM(( \inst3|top_cloud_x_pos\(8) ) + ( VCC ) + ( \inst3|Add15~26\ ))
-- \inst3|Add15~22\ = CARRY(( \inst3|top_cloud_x_pos\(8) ) + ( VCC ) + ( \inst3|Add15~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(8),
	cin => \inst3|Add15~26\,
	sumout => \inst3|Add15~21_sumout\,
	cout => \inst3|Add15~22\);

-- Location: FF_X28_Y5_N23
\inst3|top_cloud_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add15~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(8));

-- Location: LABCELL_X29_Y6_N48
\inst3|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~1_combout\ = ( \inst3|top_cloud_x_pos\(8) & ( (!\inst3|top_cloud_x_pos\(7) & (\inst3|top_cloud_x_pos\(6) & \inst3|top_cloud_x_pos\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_top_cloud_x_pos\(7),
	datac => \inst3|ALT_INV_top_cloud_x_pos\(6),
	datad => \inst3|ALT_INV_top_cloud_x_pos\(5),
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(8),
	combout => \inst3|Add5~1_combout\);

-- Location: MLABCELL_X28_Y5_N54
\inst3|Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~1_sumout\ = SUM(( !\inst3|top_cloud_x_pos\(9) ) + ( VCC ) + ( \inst3|Add15~22\ ))
-- \inst3|Add15~2\ = CARRY(( !\inst3|top_cloud_x_pos\(9) ) + ( VCC ) + ( \inst3|Add15~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(9),
	cin => \inst3|Add15~22\,
	sumout => \inst3|Add15~1_sumout\,
	cout => \inst3|Add15~2\);

-- Location: MLABCELL_X28_Y5_N15
\inst3|top_cloud_x_pos[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|top_cloud_x_pos[9]~1_combout\ = !\inst3|Add15~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Add15~1_sumout\,
	combout => \inst3|top_cloud_x_pos[9]~1_combout\);

-- Location: FF_X28_Y5_N17
\inst3|top_cloud_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	d => \inst3|top_cloud_x_pos[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(9));

-- Location: MLABCELL_X28_Y5_N57
\inst3|Add15~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add15~33_sumout\ = SUM(( \inst3|top_cloud_x_pos\(10) ) + ( VCC ) + ( \inst3|Add15~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_top_cloud_x_pos\(10),
	cin => \inst3|Add15~2\,
	sumout => \inst3|Add15~33_sumout\);

-- Location: FF_X28_Y5_N8
\inst3|top_cloud_x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add15~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos\(10));

-- Location: LABCELL_X29_Y6_N42
\inst3|top_cloud_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|top_cloud_on~0_combout\ = ( !\inst2|pixel_row\(8) & ( (!\inst3|top_cloud_x_pos\(10) & ((!\inst2|pixel_row\(7)) # ((!\inst2|pixel_row\(6) & !\inst2|pixel_row\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	datab => \inst2|ALT_INV_pixel_row\(5),
	datac => \inst3|ALT_INV_top_cloud_x_pos\(10),
	datad => \inst2|ALT_INV_pixel_row\(7),
	dataf => \inst2|ALT_INV_pixel_row\(8),
	combout => \inst3|top_cloud_on~0_combout\);

-- Location: FF_X32_Y6_N11
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

-- Location: LABCELL_X32_Y6_N6
\inst3|top_cloud_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|top_cloud_on~1_combout\ = ( \inst2|pixel_row\(1) & ( \inst2|pixel_row\(2) & ( (\inst2|pixel_row\(4) & (\inst2|pixel_row\(7) & ((\inst2|pixel_row\(0)) # (\inst2|pixel_row\(3))))) ) ) ) # ( !\inst2|pixel_row\(1) & ( \inst2|pixel_row\(2) & ( 
-- (\inst2|pixel_row\(3) & (\inst2|pixel_row\(4) & \inst2|pixel_row\(7))) ) ) ) # ( \inst2|pixel_row\(1) & ( !\inst2|pixel_row\(2) & ( (\inst2|pixel_row\(3) & (\inst2|pixel_row\(4) & \inst2|pixel_row\(7))) ) ) ) # ( !\inst2|pixel_row\(1) & ( 
-- !\inst2|pixel_row\(2) & ( (\inst2|pixel_row\(3) & (\inst2|pixel_row\(4) & \inst2|pixel_row\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datab => \inst2|ALT_INV_pixel_row\(0),
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst2|ALT_INV_pixel_row\(7),
	datae => \inst2|ALT_INV_pixel_row\(1),
	dataf => \inst2|ALT_INV_pixel_row\(2),
	combout => \inst3|top_cloud_on~1_combout\);

-- Location: FF_X28_Y5_N16
\inst3|top_cloud_x_pos[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	d => \inst3|top_cloud_x_pos[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos[9]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y6_N51
\inst3|LessThan5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~6_combout\ = ( \inst3|top_cloud_x_pos\(8) & ( (\inst3|top_cloud_x_pos\(6) & (!\inst3|top_cloud_x_pos\(7) & (\inst3|top_cloud_x_pos\(5) & \inst2|pixel_column\(8)))) ) ) # ( !\inst3|top_cloud_x_pos\(8) & ( (\inst2|pixel_column\(8) & 
-- ((!\inst3|top_cloud_x_pos\(6)) # ((!\inst3|top_cloud_x_pos\(5)) # (\inst3|top_cloud_x_pos\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101100000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(6),
	datab => \inst3|ALT_INV_top_cloud_x_pos\(7),
	datac => \inst3|ALT_INV_top_cloud_x_pos\(5),
	datad => \inst2|ALT_INV_pixel_column\(8),
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(8),
	combout => \inst3|LessThan5~6_combout\);

-- Location: LABCELL_X29_Y6_N36
\inst3|top_cloud_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|top_cloud_on~2_combout\ = ( \inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( \inst3|LessThan5~6_combout\ & ( (\inst3|Add5~1_combout\ & (\inst3|top_cloud_on~0_combout\ & (!\inst3|top_cloud_on~1_combout\ & !\inst2|pixel_column[9]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( \inst3|LessThan5~6_combout\ & ( (\inst3|top_cloud_on~0_combout\ & (!\inst3|top_cloud_on~1_combout\ & ((!\inst2|pixel_column[9]~DUPLICATE_q\) # (\inst3|Add5~1_combout\)))) ) ) ) # ( 
-- \inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( !\inst3|LessThan5~6_combout\ & ( (\inst3|top_cloud_on~0_combout\ & (!\inst3|top_cloud_on~1_combout\ & ((!\inst2|pixel_column[9]~DUPLICATE_q\) # (\inst3|Add5~1_combout\)))) ) ) ) # ( 
-- !\inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( !\inst3|LessThan5~6_combout\ & ( (\inst3|top_cloud_on~0_combout\ & !\inst3|top_cloud_on~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000001000000110000000100000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add5~1_combout\,
	datab => \inst3|ALT_INV_top_cloud_on~0_combout\,
	datac => \inst3|ALT_INV_top_cloud_on~1_combout\,
	datad => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_top_cloud_x_pos[9]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_LessThan5~6_combout\,
	combout => \inst3|top_cloud_on~2_combout\);

-- Location: MLABCELL_X28_Y5_N24
\inst3|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~1_combout\ = ( \inst3|top_cloud_x_pos\(5) & ( (!\inst3|top_cloud_x_pos\(6) & (\inst2|pixel_column\(6) & (!\inst3|top_cloud_x_pos\(7) $ (!\inst2|pixel_column\(7))))) # (\inst3|top_cloud_x_pos\(6) & (!\inst2|pixel_column\(6) & 
-- (!\inst3|top_cloud_x_pos\(7) $ (\inst2|pixel_column\(7))))) ) ) # ( !\inst3|top_cloud_x_pos\(5) & ( (!\inst3|top_cloud_x_pos\(7) & (\inst2|pixel_column\(7) & (!\inst3|top_cloud_x_pos\(6) $ (\inst2|pixel_column\(6))))) # (\inst3|top_cloud_x_pos\(7) & 
-- (!\inst2|pixel_column\(7) & (!\inst3|top_cloud_x_pos\(6) $ (\inst2|pixel_column\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110000010010000011000001000100100000110000010010000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(7),
	datab => \inst3|ALT_INV_top_cloud_x_pos\(6),
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst2|ALT_INV_pixel_column\(7),
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(5),
	combout => \inst3|LessThan5~1_combout\);

-- Location: MLABCELL_X28_Y6_N48
\inst3|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~2_combout\ = ( \inst3|top_cloud_x_pos\(5) & ( \inst3|top_cloud_x_pos\(4) & ( (\inst3|LessThan5~1_combout\ & (!\inst2|pixel_column\(5) & \inst2|pixel_column\(4))) ) ) ) # ( !\inst3|top_cloud_x_pos\(5) & ( \inst3|top_cloud_x_pos\(4) & ( 
-- (\inst3|LessThan5~1_combout\ & (\inst2|pixel_column\(5) & \inst2|pixel_column\(4))) ) ) ) # ( \inst3|top_cloud_x_pos\(5) & ( !\inst3|top_cloud_x_pos\(4) & ( (\inst3|LessThan5~1_combout\ & (!\inst2|pixel_column\(5) & !\inst2|pixel_column\(4))) ) ) ) # ( 
-- !\inst3|top_cloud_x_pos\(5) & ( !\inst3|top_cloud_x_pos\(4) & ( (\inst3|LessThan5~1_combout\ & (\inst2|pixel_column\(5) & !\inst2|pixel_column\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000010100000000000000000000000001010000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan5~1_combout\,
	datac => \inst2|ALT_INV_pixel_column\(5),
	datad => \inst2|ALT_INV_pixel_column\(4),
	datae => \inst3|ALT_INV_top_cloud_x_pos\(5),
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(4),
	combout => \inst3|LessThan5~2_combout\);

-- Location: MLABCELL_X28_Y5_N9
\inst3|Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add5~0_combout\ = (\inst3|top_cloud_x_pos\(5) & (!\inst3|top_cloud_x_pos\(7) & \inst3|top_cloud_x_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(5),
	datab => \inst3|ALT_INV_top_cloud_x_pos\(7),
	datac => \inst3|ALT_INV_top_cloud_x_pos\(6),
	combout => \inst3|Add5~0_combout\);

-- Location: MLABCELL_X28_Y5_N12
\inst3|LessThan5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~5_combout\ = ( \inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( (!\inst3|Add5~0_combout\ & (!\inst2|pixel_column[9]~DUPLICATE_q\ & (!\inst3|top_cloud_x_pos\(8) $ (\inst2|pixel_column\(8))))) # (\inst3|Add5~0_combout\ & 
-- ((!\inst3|top_cloud_x_pos\(8) & (\inst2|pixel_column\(8) & !\inst2|pixel_column[9]~DUPLICATE_q\)) # (\inst3|top_cloud_x_pos\(8) & (!\inst2|pixel_column\(8) & \inst2|pixel_column[9]~DUPLICATE_q\)))) ) ) # ( !\inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( 
-- (\inst2|pixel_column[9]~DUPLICATE_q\ & ((!\inst3|Add5~0_combout\ & (!\inst3|top_cloud_x_pos\(8) $ (\inst2|pixel_column\(8)))) # (\inst3|Add5~0_combout\ & (!\inst3|top_cloud_x_pos\(8) & \inst2|pixel_column\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000110000000001000011010000110000100001000011000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add5~0_combout\,
	datab => \inst3|ALT_INV_top_cloud_x_pos\(8),
	datac => \inst2|ALT_INV_pixel_column\(8),
	datad => \inst2|ALT_INV_pixel_column[9]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_top_cloud_x_pos[9]~DUPLICATE_q\,
	combout => \inst3|LessThan5~5_combout\);

-- Location: MLABCELL_X28_Y6_N15
\inst3|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~0_combout\ = ( \inst3|top_cloud_x_pos\(2) & ( (!\inst3|top_cloud_x_pos\(3) & (((\inst3|LessThan9~0_combout\ & \inst2|pixel_column\(2))) # (\inst2|pixel_column\(3)))) # (\inst3|top_cloud_x_pos\(3) & (\inst3|LessThan9~0_combout\ & 
-- (\inst2|pixel_column\(3) & \inst2|pixel_column\(2)))) ) ) # ( !\inst3|top_cloud_x_pos\(2) & ( (!\inst3|top_cloud_x_pos\(3) & (((\inst2|pixel_column\(2)) # (\inst2|pixel_column\(3))) # (\inst3|LessThan9~0_combout\))) # (\inst3|top_cloud_x_pos\(3) & 
-- (\inst2|pixel_column\(3) & ((\inst2|pixel_column\(2)) # (\inst3|LessThan9~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101110101111001010111010111100001010001010110000101000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(3),
	datab => \inst3|ALT_INV_LessThan9~0_combout\,
	datac => \inst2|ALT_INV_pixel_column\(3),
	datad => \inst2|ALT_INV_pixel_column\(2),
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(2),
	combout => \inst3|LessThan5~0_combout\);

-- Location: MLABCELL_X28_Y5_N6
\inst3|LessThan5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~3_combout\ = ( \inst2|pixel_column\(6) & ( (!\inst3|top_cloud_x_pos\(7) & ((!\inst3|top_cloud_x_pos\(5) & (!\inst3|top_cloud_x_pos\(6) & \inst2|pixel_column\(7))) # (\inst3|top_cloud_x_pos\(5) & (\inst3|top_cloud_x_pos\(6))))) # 
-- (\inst3|top_cloud_x_pos\(7) & (((!\inst3|top_cloud_x_pos\(5) & !\inst3|top_cloud_x_pos\(6))) # (\inst2|pixel_column\(7)))) ) ) # ( !\inst2|pixel_column\(6) & ( (\inst2|pixel_column\(7) & (!\inst3|top_cloud_x_pos\(7) $ (((!\inst3|top_cloud_x_pos\(5)) # 
-- (!\inst3|top_cloud_x_pos\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110110000000000011011000100100101101110010010010110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(5),
	datab => \inst3|ALT_INV_top_cloud_x_pos\(7),
	datac => \inst3|ALT_INV_top_cloud_x_pos\(6),
	datad => \inst2|ALT_INV_pixel_column\(7),
	dataf => \inst2|ALT_INV_pixel_column\(6),
	combout => \inst3|LessThan5~3_combout\);

-- Location: MLABCELL_X28_Y6_N6
\inst3|LessThan5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~4_combout\ = ( \inst3|top_cloud_x_pos\(5) & ( \inst3|top_cloud_x_pos\(4) & ( (!\inst3|LessThan5~3_combout\ & ((!\inst3|LessThan5~1_combout\) # (!\inst2|pixel_column\(5)))) ) ) ) # ( !\inst3|top_cloud_x_pos\(5) & ( 
-- \inst3|top_cloud_x_pos\(4) & ( !\inst3|LessThan5~3_combout\ ) ) ) # ( \inst3|top_cloud_x_pos\(5) & ( !\inst3|top_cloud_x_pos\(4) & ( (!\inst3|LessThan5~3_combout\ & ((!\inst3|LessThan5~1_combout\) # ((!\inst2|pixel_column\(4) & 
-- !\inst2|pixel_column\(5))))) ) ) ) # ( !\inst3|top_cloud_x_pos\(5) & ( !\inst3|top_cloud_x_pos\(4) & ( (!\inst3|LessThan5~3_combout\ & ((!\inst3|LessThan5~1_combout\) # ((!\inst2|pixel_column\(4)) # (!\inst2|pixel_column\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111010100000000011111111000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan5~1_combout\,
	datab => \inst2|ALT_INV_pixel_column\(4),
	datac => \inst2|ALT_INV_pixel_column\(5),
	datad => \inst3|ALT_INV_LessThan5~3_combout\,
	datae => \inst3|ALT_INV_top_cloud_x_pos\(5),
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(4),
	combout => \inst3|LessThan5~4_combout\);

-- Location: LABCELL_X29_Y6_N24
\inst3|top_cloud_on~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|top_cloud_on~3_combout\ = ( \inst3|LessThan5~0_combout\ & ( \inst3|LessThan5~4_combout\ & ( (\inst3|top_cloud_on~2_combout\ & (!\inst3|Add4~21_sumout\ & ((!\inst3|LessThan5~2_combout\) # (!\inst3|LessThan5~5_combout\)))) ) ) ) # ( 
-- !\inst3|LessThan5~0_combout\ & ( \inst3|LessThan5~4_combout\ & ( (\inst3|top_cloud_on~2_combout\ & !\inst3|Add4~21_sumout\) ) ) ) # ( \inst3|LessThan5~0_combout\ & ( !\inst3|LessThan5~4_combout\ & ( (\inst3|top_cloud_on~2_combout\ & 
-- (!\inst3|LessThan5~5_combout\ & !\inst3|Add4~21_sumout\)) ) ) ) # ( !\inst3|LessThan5~0_combout\ & ( !\inst3|LessThan5~4_combout\ & ( (\inst3|top_cloud_on~2_combout\ & (!\inst3|LessThan5~5_combout\ & !\inst3|Add4~21_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010101000000000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_on~2_combout\,
	datab => \inst3|ALT_INV_LessThan5~2_combout\,
	datac => \inst3|ALT_INV_LessThan5~5_combout\,
	datad => \inst3|ALT_INV_Add4~21_sumout\,
	datae => \inst3|ALT_INV_LessThan5~0_combout\,
	dataf => \inst3|ALT_INV_LessThan5~4_combout\,
	combout => \inst3|top_cloud_on~3_combout\);

-- Location: FF_X28_Y5_N28
\inst3|top_cloud_x_pos[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	d => \inst3|top_cloud_x_pos[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|top_cloud_x_pos[7]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y6_N21
\inst3|LessThan4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~5_combout\ = ( \inst3|Add4~17_sumout\ & ( \inst3|top_cloud_x_pos[7]~DUPLICATE_q\ & ( (\inst3|top_cloud_x_pos\(6) & (!\inst3|Add4~13_sumout\ & (!\inst3|top_cloud_x_pos\(8) $ (\inst3|Add4~9_sumout\)))) ) ) ) # ( !\inst3|Add4~17_sumout\ & ( 
-- \inst3|top_cloud_x_pos[7]~DUPLICATE_q\ & ( (!\inst3|top_cloud_x_pos\(6) & (!\inst3|Add4~13_sumout\ & (!\inst3|top_cloud_x_pos\(8) $ (\inst3|Add4~9_sumout\)))) ) ) ) # ( \inst3|Add4~17_sumout\ & ( !\inst3|top_cloud_x_pos[7]~DUPLICATE_q\ & ( 
-- (\inst3|top_cloud_x_pos\(6) & (\inst3|Add4~13_sumout\ & (!\inst3|top_cloud_x_pos\(8) $ (\inst3|Add4~9_sumout\)))) ) ) ) # ( !\inst3|Add4~17_sumout\ & ( !\inst3|top_cloud_x_pos[7]~DUPLICATE_q\ & ( (!\inst3|top_cloud_x_pos\(6) & (\inst3|Add4~13_sumout\ & 
-- (!\inst3|top_cloud_x_pos\(8) $ (\inst3|Add4~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100000000000010000110000100000000000010000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(8),
	datab => \inst3|ALT_INV_top_cloud_x_pos\(6),
	datac => \inst3|ALT_INV_Add4~9_sumout\,
	datad => \inst3|ALT_INV_Add4~13_sumout\,
	datae => \inst3|ALT_INV_Add4~17_sumout\,
	dataf => \inst3|ALT_INV_top_cloud_x_pos[7]~DUPLICATE_q\,
	combout => \inst3|LessThan4~5_combout\);

-- Location: MLABCELL_X28_Y5_N0
\inst3|LessThan4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~6_combout\ = ( \inst3|top_cloud_x_pos[7]~DUPLICATE_q\ & ( \inst3|top_cloud_x_pos\(8) & ( (!\inst3|Add4~9_sumout\) # ((!\inst3|Add4~13_sumout\ & (\inst3|top_cloud_x_pos\(6) & !\inst3|Add4~17_sumout\))) ) ) ) # ( 
-- !\inst3|top_cloud_x_pos[7]~DUPLICATE_q\ & ( \inst3|top_cloud_x_pos\(8) & ( (!\inst3|Add4~13_sumout\) # ((!\inst3|Add4~9_sumout\) # ((\inst3|top_cloud_x_pos\(6) & !\inst3|Add4~17_sumout\))) ) ) ) # ( \inst3|top_cloud_x_pos[7]~DUPLICATE_q\ & ( 
-- !\inst3|top_cloud_x_pos\(8) & ( (!\inst3|Add4~13_sumout\ & (\inst3|top_cloud_x_pos\(6) & (!\inst3|Add4~9_sumout\ & !\inst3|Add4~17_sumout\))) ) ) ) # ( !\inst3|top_cloud_x_pos[7]~DUPLICATE_q\ & ( !\inst3|top_cloud_x_pos\(8) & ( (!\inst3|Add4~9_sumout\ & 
-- ((!\inst3|Add4~13_sumout\) # ((\inst3|top_cloud_x_pos\(6) & !\inst3|Add4~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010100000001000000000000011111011111110101111001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Add4~13_sumout\,
	datab => \inst3|ALT_INV_top_cloud_x_pos\(6),
	datac => \inst3|ALT_INV_Add4~9_sumout\,
	datad => \inst3|ALT_INV_Add4~17_sumout\,
	datae => \inst3|ALT_INV_top_cloud_x_pos[7]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(8),
	combout => \inst3|LessThan4~6_combout\);

-- Location: MLABCELL_X28_Y6_N39
\inst3|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~1_combout\ = ( \inst3|top_cloud_x_pos\(2) & ( (!\inst2|pixel_column\(2)) # ((!\inst2|pixel_column\(1) & \inst3|top_cloud_x_pos\(1))) ) ) # ( !\inst3|top_cloud_x_pos\(2) & ( (!\inst2|pixel_column\(1) & (\inst3|top_cloud_x_pos\(1) & 
-- !\inst2|pixel_column\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_column\(1),
	datac => \inst3|ALT_INV_top_cloud_x_pos\(1),
	datad => \inst2|ALT_INV_pixel_column\(2),
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(2),
	combout => \inst3|LessThan4~1_combout\);

-- Location: MLABCELL_X28_Y6_N21
\inst3|LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~3_combout\ = ( \inst3|top_cloud_x_pos\(3) & ( (!\inst3|top_cloud_x_pos\(4) & (!\inst2|pixel_column\(3) & !\inst2|pixel_column\(4))) # (\inst3|top_cloud_x_pos\(4) & ((!\inst2|pixel_column\(3)) # (!\inst2|pixel_column\(4)))) ) ) # ( 
-- !\inst3|top_cloud_x_pos\(3) & ( (\inst3|top_cloud_x_pos\(4) & !\inst2|pixel_column\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(4),
	datac => \inst2|ALT_INV_pixel_column\(3),
	datad => \inst2|ALT_INV_pixel_column\(4),
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(3),
	combout => \inst3|LessThan4~3_combout\);

-- Location: MLABCELL_X28_Y6_N33
\inst3|LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~2_combout\ = ( \inst3|top_cloud_x_pos\(3) & ( (\inst2|pixel_column\(3) & (!\inst3|top_cloud_x_pos\(4) $ (\inst2|pixel_column\(4)))) ) ) # ( !\inst3|top_cloud_x_pos\(3) & ( (!\inst2|pixel_column\(3) & (!\inst3|top_cloud_x_pos\(4) $ 
-- (\inst2|pixel_column\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(4),
	datac => \inst2|ALT_INV_pixel_column\(3),
	datad => \inst2|ALT_INV_pixel_column\(4),
	dataf => \inst3|ALT_INV_top_cloud_x_pos\(3),
	combout => \inst3|LessThan4~2_combout\);

-- Location: LABCELL_X29_Y6_N54
\inst3|LessThan4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~4_combout\ = ( \inst3|LessThan4~2_combout\ & ( (!\inst3|top_cloud_x_pos\(5) & (((!\inst3|LessThan4~1_combout\ & !\inst3|LessThan4~3_combout\)) # (\inst3|Add4~5_sumout\))) # (\inst3|top_cloud_x_pos\(5) & (!\inst3|LessThan4~1_combout\ & 
-- (!\inst3|LessThan4~3_combout\ & \inst3|Add4~5_sumout\))) ) ) # ( !\inst3|LessThan4~2_combout\ & ( (!\inst3|top_cloud_x_pos\(5) & ((!\inst3|LessThan4~3_combout\) # (\inst3|Add4~5_sumout\))) # (\inst3|top_cloud_x_pos\(5) & (!\inst3|LessThan4~3_combout\ & 
-- \inst3|Add4~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111010101000001111101010000000111010101000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_x_pos\(5),
	datab => \inst3|ALT_INV_LessThan4~1_combout\,
	datac => \inst3|ALT_INV_LessThan4~3_combout\,
	datad => \inst3|ALT_INV_Add4~5_sumout\,
	dataf => \inst3|ALT_INV_LessThan4~2_combout\,
	combout => \inst3|LessThan4~4_combout\);

-- Location: LABCELL_X29_Y6_N57
\inst3|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~0_combout\ = ( \inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( \inst3|Add4~1_sumout\ ) ) # ( !\inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( !\inst3|Add4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Add4~1_sumout\,
	dataf => \inst3|ALT_INV_top_cloud_x_pos[9]~DUPLICATE_q\,
	combout => \inst3|LessThan4~0_combout\);

-- Location: LABCELL_X29_Y7_N30
\inst3|Add6~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~34_cout\ = CARRY(( \inst2|pixel_row\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(1),
	cin => GND,
	cout => \inst3|Add6~34_cout\);

-- Location: LABCELL_X29_Y7_N33
\inst3|Add6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~30_cout\ = CARRY(( \inst2|pixel_row\(2) ) + ( VCC ) + ( \inst3|Add6~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row\(2),
	cin => \inst3|Add6~34_cout\,
	cout => \inst3|Add6~30_cout\);

-- Location: LABCELL_X29_Y7_N36
\inst3|Add6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~26_cout\ = CARRY(( \inst2|pixel_row[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_row[3]~DUPLICATE_q\,
	cin => \inst3|Add6~30_cout\,
	cout => \inst3|Add6~26_cout\);

-- Location: LABCELL_X29_Y7_N39
\inst3|Add6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~22_cout\ = CARRY(( \inst2|pixel_row\(4) ) + ( VCC ) + ( \inst3|Add6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(4),
	cin => \inst3|Add6~26_cout\,
	cout => \inst3|Add6~22_cout\);

-- Location: LABCELL_X29_Y7_N42
\inst3|Add6~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~18_cout\ = CARRY(( \inst2|pixel_row\(5) ) + ( GND ) + ( \inst3|Add6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(5),
	cin => \inst3|Add6~22_cout\,
	cout => \inst3|Add6~18_cout\);

-- Location: LABCELL_X29_Y7_N45
\inst3|Add6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~14_cout\ = CARRY(( \inst2|pixel_row\(6) ) + ( GND ) + ( \inst3|Add6~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(6),
	cin => \inst3|Add6~18_cout\,
	cout => \inst3|Add6~14_cout\);

-- Location: LABCELL_X29_Y7_N48
\inst3|Add6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~10_cout\ = CARRY(( \inst2|pixel_row\(7) ) + ( VCC ) + ( \inst3|Add6~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(7),
	cin => \inst3|Add6~14_cout\,
	cout => \inst3|Add6~10_cout\);

-- Location: LABCELL_X29_Y7_N51
\inst3|Add6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~6_cout\ = CARRY(( \inst2|pixel_row\(8) ) + ( GND ) + ( \inst3|Add6~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(8),
	cin => \inst3|Add6~10_cout\,
	cout => \inst3|Add6~6_cout\);

-- Location: LABCELL_X29_Y7_N54
\inst3|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add6~1_sumout\ = SUM(( GND ) + ( GND ) + ( \inst3|Add6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Add6~6_cout\,
	sumout => \inst3|Add6~1_sumout\);

-- Location: LABCELL_X29_Y6_N45
\inst3|top_cloud_on~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|top_cloud_on~4_combout\ = ( \inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( !\inst3|Add6~1_sumout\ ) ) # ( !\inst3|top_cloud_x_pos[9]~DUPLICATE_q\ & ( (\inst3|Add4~1_sumout\ & !\inst3|Add6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Add4~1_sumout\,
	datad => \inst3|ALT_INV_Add6~1_sumout\,
	dataf => \inst3|ALT_INV_top_cloud_x_pos[9]~DUPLICATE_q\,
	combout => \inst3|top_cloud_on~4_combout\);

-- Location: LABCELL_X29_Y6_N30
\inst3|top_cloud_on\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|top_cloud_on~combout\ = ( \inst3|LessThan4~0_combout\ & ( \inst3|top_cloud_on~4_combout\ & ( \inst3|top_cloud_on~3_combout\ ) ) ) # ( !\inst3|LessThan4~0_combout\ & ( \inst3|top_cloud_on~4_combout\ & ( (\inst3|top_cloud_on~3_combout\ & 
-- (!\inst3|LessThan4~6_combout\ & ((!\inst3|LessThan4~5_combout\) # (\inst3|LessThan4~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_top_cloud_on~3_combout\,
	datab => \inst3|ALT_INV_LessThan4~5_combout\,
	datac => \inst3|ALT_INV_LessThan4~6_combout\,
	datad => \inst3|ALT_INV_LessThan4~4_combout\,
	datae => \inst3|ALT_INV_LessThan4~0_combout\,
	dataf => \inst3|ALT_INV_top_cloud_on~4_combout\,
	combout => \inst3|top_cloud_on~combout\);

-- Location: LABCELL_X29_Y7_N27
\inst2|blue_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|blue_out~0_combout\ = ( !\inst3|top_cloud_on~combout\ & ( (\inst2|green_out~0_combout\ & (!\inst3|bottom_cloud_on~combout\ & (!\inst3|ball_on~combout\ & !\inst9|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_green_out~0_combout\,
	datab => \inst3|ALT_INV_bottom_cloud_on~combout\,
	datac => \inst3|ALT_INV_ball_on~combout\,
	datad => \inst9|ALT_INV_Mux0~0_combout\,
	dataf => \inst3|ALT_INV_top_cloud_on~combout\,
	combout => \inst2|blue_out~0_combout\);

-- Location: FF_X29_Y7_N29
\inst2|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|blue_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|blue_out~q\);

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

-- Location: LABCELL_X26_Y6_N12
\inst2|green_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|green_out~1_combout\ = ( \inst2|video_on_v~q\ & ( (\inst2|video_on_h~q\ & !\key[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_video_on_h~q\,
	datad => \ALT_INV_key[1]~input_o\,
	dataf => \inst2|ALT_INV_video_on_v~q\,
	combout => \inst2|green_out~1_combout\);

-- Location: FF_X26_Y6_N13
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
\key[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: LABCELL_X29_Y7_N9
\inst2|red_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|red_out~0_combout\ = ( \inst9|Mux0~0_combout\ & ( \inst3|top_cloud_on~combout\ & ( \inst2|green_out~0_combout\ ) ) ) # ( !\inst9|Mux0~0_combout\ & ( \inst3|top_cloud_on~combout\ & ( \inst2|green_out~0_combout\ ) ) ) # ( \inst9|Mux0~0_combout\ & ( 
-- !\inst3|top_cloud_on~combout\ & ( (\inst2|green_out~0_combout\ & ((\key[0]~input_o\) # (\inst3|ball_on~combout\))) ) ) ) # ( !\inst9|Mux0~0_combout\ & ( !\inst3|top_cloud_on~combout\ & ( (\inst2|green_out~0_combout\ & (((\key[0]~input_o\) # 
-- (\inst3|bottom_cloud_on~combout\)) # (\inst3|ball_on~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_on~combout\,
	datab => \inst3|ALT_INV_bottom_cloud_on~combout\,
	datac => \ALT_INV_key[0]~input_o\,
	datad => \inst2|ALT_INV_green_out~0_combout\,
	datae => \inst9|ALT_INV_Mux0~0_combout\,
	dataf => \inst3|ALT_INV_top_cloud_on~combout\,
	combout => \inst2|red_out~0_combout\);

-- Location: FF_X29_Y7_N10
\inst2|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|red_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|red_out~q\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


