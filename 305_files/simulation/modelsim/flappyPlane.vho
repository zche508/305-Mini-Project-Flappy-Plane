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

-- DATE "05/13/2024 16:50:31"

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
	PS2_DAT : INOUT std_logic;
	PS2_CLK : INOUT std_logic;
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
SIGNAL \inst5|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|filter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|Equal2~0_combout\ : std_logic;
SIGNAL \inst5|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|filter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst5|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst5|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst5|inhibit_wait_count[0]~0_combout\ : std_logic;
SIGNAL \inst5|inhibit_wait_count[11]~DUPLICATE_q\ : std_logic;
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
SIGNAL \inst5|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst5|OUTCNT[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|send_char~0_combout\ : std_logic;
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
SIGNAL \inst5|INCNT~2_combout\ : std_logic;
SIGNAL \inst5|INCNT~0_combout\ : std_logic;
SIGNAL \inst5|INCNT~4_combout\ : std_logic;
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
SIGNAL \inst2|Add1~37_sumout\ : std_logic;
SIGNAL \inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst2|Add0~34\ : std_logic;
SIGNAL \inst2|Add0~37_sumout\ : std_logic;
SIGNAL \inst2|Add0~38\ : std_logic;
SIGNAL \inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst2|h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|h_count[0]~DUPLICATE_q\ : std_logic;
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
SIGNAL \inst2|Add0~33_sumout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|Add1~6\ : std_logic;
SIGNAL \inst2|Add1~25_sumout\ : std_logic;
SIGNAL \inst2|h_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|h_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|v_count[1]~0_combout\ : std_logic;
SIGNAL \inst2|Add1~26\ : std_logic;
SIGNAL \inst2|Add1~21_sumout\ : std_logic;
SIGNAL \inst2|Add1~22\ : std_logic;
SIGNAL \inst2|Add1~17_sumout\ : std_logic;
SIGNAL \inst2|Add1~18\ : std_logic;
SIGNAL \inst2|Add1~13_sumout\ : std_logic;
SIGNAL \inst2|Add1~14\ : std_logic;
SIGNAL \inst2|Add1~9_sumout\ : std_logic;
SIGNAL \inst2|Add1~10\ : std_logic;
SIGNAL \inst2|Add1~29_sumout\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|process_0~7_combout\ : std_logic;
SIGNAL \inst2|Add1~38\ : std_logic;
SIGNAL \inst2|Add1~33_sumout\ : std_logic;
SIGNAL \inst2|Add1~34\ : std_logic;
SIGNAL \inst2|Add1~1_sumout\ : std_logic;
SIGNAL \inst2|Add1~2\ : std_logic;
SIGNAL \inst2|Add1~5_sumout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|vert_sync~q\ : std_logic;
SIGNAL \inst2|vert_sync_out~q\ : std_logic;
SIGNAL \inst2|h_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|process_0~8_combout\ : std_logic;
SIGNAL \inst2|horiz_sync~q\ : std_logic;
SIGNAL \inst2|horiz_sync_out~q\ : std_logic;
SIGNAL \inst5|new_cursor_column[9]~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_COUNT~0_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[1]~0_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst5|Equal4~0_combout\ : std_logic;
SIGNAL \inst5|right_button~0_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add4~31\ : std_logic;
SIGNAL \inst5|Add4~6\ : std_logic;
SIGNAL \inst5|Add4~7\ : std_logic;
SIGNAL \inst5|Add4~1_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst5|new_cursor_row[9]~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR3[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst5|Equal3~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR3[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|SHIFTIN[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add4~9_sumout\ : std_logic;
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
SIGNAL \inst5|Add4~30\ : std_logic;
SIGNAL \inst5|Add4~5_sumout\ : std_logic;
SIGNAL \inst5|RECV_UART~1_combout\ : std_logic;
SIGNAL \inst5|RECV_UART~0_combout\ : std_logic;
SIGNAL \inst5|RECV_UART~2_combout\ : std_logic;
SIGNAL \inst5|cursor_row~4_combout\ : std_logic;
SIGNAL \inst5|cursor_row~5_combout\ : std_logic;
SIGNAL \inst5|Add4~34\ : std_logic;
SIGNAL \inst5|Add4~29_sumout\ : std_logic;
SIGNAL \inst5|cursor_row~2_combout\ : std_logic;
SIGNAL \inst5|cursor_row~3_combout\ : std_logic;
SIGNAL \inst5|cursor_row~0_combout\ : std_logic;
SIGNAL \inst5|cursor_row~1_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out~0_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[5]~1_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[4]~2_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[3]~3_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[2]~4_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[1]~5_combout\ : std_logic;
SIGNAL \inst6|SevenSeg_out[3]~6_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add5~34\ : std_logic;
SIGNAL \inst5|Add5~37_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~4_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add5~5_sumout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add5~6\ : std_logic;
SIGNAL \inst5|Add5~25_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~9_combout\ : std_logic;
SIGNAL \inst5|Add5~26\ : std_logic;
SIGNAL \inst5|Add5~21_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~8_combout\ : std_logic;
SIGNAL \inst5|Add5~22\ : std_logic;
SIGNAL \inst5|Add5~17_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~7_combout\ : std_logic;
SIGNAL \inst5|Add5~18\ : std_logic;
SIGNAL \inst5|Add5~13_sumout\ : std_logic;
SIGNAL \inst5|RECV_UART~3_combout\ : std_logic;
SIGNAL \inst5|cursor_column~6_combout\ : std_logic;
SIGNAL \inst5|Add5~14\ : std_logic;
SIGNAL \inst5|Add5~9_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~5_combout\ : std_logic;
SIGNAL \inst5|Add5~10\ : std_logic;
SIGNAL \inst5|Add5~1_sumout\ : std_logic;
SIGNAL \inst5|LessThan9~0_combout\ : std_logic;
SIGNAL \inst5|cursor_column~0_combout\ : std_logic;
SIGNAL \inst5|Add5~2\ : std_logic;
SIGNAL \inst5|Add5~33_sumout\ : std_logic;
SIGNAL \inst5|RECV_UART~4_combout\ : std_logic;
SIGNAL \inst5|cursor_column~2_combout\ : std_logic;
SIGNAL \inst5|cursor_column[5]~1_combout\ : std_logic;
SIGNAL \inst5|Add5~38\ : std_logic;
SIGNAL \inst5|Add5~29_sumout\ : std_logic;
SIGNAL \inst5|cursor_column~3_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[6]~0_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[5]~6_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[4]~1_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[3]~5_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[2]~4_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[1]~3_combout\ : std_logic;
SIGNAL \inst7|SevenSeg_out[0]~2_combout\ : std_logic;
SIGNAL \inst5|PACKET_CHAR1[1]~1_combout\ : std_logic;
SIGNAL \inst5|right_button~feeder_combout\ : std_logic;
SIGNAL \inst5|right_button~q\ : std_logic;
SIGNAL \inst5|left_button~q\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|v_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \inst2|pixel_column[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|pixel_column[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|pixel_column[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|pixel_column[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst8|char_address~0_combout\ : std_logic;
SIGNAL \inst8|char_address~1_combout\ : std_logic;
SIGNAL \inst2|pixel_column[7]~feeder_combout\ : std_logic;
SIGNAL \inst8|char_address~2_combout\ : std_logic;
SIGNAL \inst8|char_address[0]~3_combout\ : std_logic;
SIGNAL \inst8|char_address[1]~4_combout\ : std_logic;
SIGNAL \inst8|char_address[2]~5_combout\ : std_logic;
SIGNAL \inst8|char_address[3]~6_combout\ : std_logic;
SIGNAL \inst8|char_address[4]~7_combout\ : std_logic;
SIGNAL \inst8|char_address[5]~8_combout\ : std_logic;
SIGNAL \inst2|pixel_column[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst9|Mux0~4_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan5~1_combout\ : std_logic;
SIGNAL \inst3|ball_y_pos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ball_y_pos[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|LessThan4~0_combout\ : std_logic;
SIGNAL \inst3|Add7~2\ : std_logic;
SIGNAL \inst3|Add7~37_sumout\ : std_logic;
SIGNAL \inst3|ball_y_motion~2_combout\ : std_logic;
SIGNAL \inst3|Add7~17_sumout\ : std_logic;
SIGNAL \inst3|Add7~18\ : std_logic;
SIGNAL \inst3|Add7~13_sumout\ : std_logic;
SIGNAL \inst3|ball_y_pos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add7~14\ : std_logic;
SIGNAL \inst3|Add7~9_sumout\ : std_logic;
SIGNAL \inst3|LessThan5~0_combout\ : std_logic;
SIGNAL \inst3|ball_y_motion~1_combout\ : std_logic;
SIGNAL \inst3|Add7~10\ : std_logic;
SIGNAL \inst3|Add7~5_sumout\ : std_logic;
SIGNAL \inst3|Add7~6\ : std_logic;
SIGNAL \inst3|Add7~25_sumout\ : std_logic;
SIGNAL \inst3|Add7~26\ : std_logic;
SIGNAL \inst3|Add7~22\ : std_logic;
SIGNAL \inst3|Add7~33_sumout\ : std_logic;
SIGNAL \inst3|Add7~34\ : std_logic;
SIGNAL \inst3|Add7~29_sumout\ : std_logic;
SIGNAL \inst3|Add7~30\ : std_logic;
SIGNAL \inst3|Add7~1_sumout\ : std_logic;
SIGNAL \inst3|LessThan4~1_combout\ : std_logic;
SIGNAL \inst3|ball_y_motion~0_combout\ : std_logic;
SIGNAL \inst3|Add7~21_sumout\ : std_logic;
SIGNAL \inst3|LessThan3~2_combout\ : std_logic;
SIGNAL \inst3|LessThan3~3_combout\ : std_logic;
SIGNAL \inst3|LessThan3~4_combout\ : std_logic;
SIGNAL \inst3|LessThan3~5_combout\ : std_logic;
SIGNAL \inst3|LessThan3~0_combout\ : std_logic;
SIGNAL \inst3|LessThan3~1_combout\ : std_logic;
SIGNAL \inst3|Add3~0_combout\ : std_logic;
SIGNAL \inst3|LessThan3~6_combout\ : std_logic;
SIGNAL \inst2|video_on_v~q\ : std_logic;
SIGNAL \inst2|video_on_h~q\ : std_logic;
SIGNAL \inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|ball_on~0_combout\ : std_logic;
SIGNAL \inst3|Add2~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|ball_on~1_combout\ : std_logic;
SIGNAL \inst3|ball_on~2_combout\ : std_logic;
SIGNAL \inst3|LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|LessThan2~3_combout\ : std_logic;
SIGNAL \inst3|LessThan2~4_combout\ : std_logic;
SIGNAL \inst3|LessThan2~5_combout\ : std_logic;
SIGNAL \inst3|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|LessThan2~6_combout\ : std_logic;
SIGNAL \inst2|blue_out~0_combout\ : std_logic;
SIGNAL \inst2|blue_out~q\ : std_logic;
SIGNAL \inst2|green_out~0_combout\ : std_logic;
SIGNAL \inst2|green_out~q\ : std_logic;
SIGNAL \inst2|red_out~0_combout\ : std_logic;
SIGNAL \inst2|red_out~q\ : std_logic;
SIGNAL \inst5|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|pixel_column\ : std_logic_vector(9 DOWNTO 0);
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
SIGNAL \inst5|ALT_INV_inhibit_wait_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst5|ALT_INV_filter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_h_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_PS2_CLK~input_o\ : std_logic;
SIGNAL \ALT_INV_PS2_DAT~input_o\ : std_logic;
SIGNAL \inst7|ALT_INV_SevenSeg_out[1]~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst5|ALT_INV_SHIFTOUT\ : std_logic_vector(9 DOWNTO 3);
SIGNAL \inst5|ALT_INV_mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst5|ALT_INV_iready_set~q\ : std_logic;
SIGNAL \inst5|ALT_INV_OUTCNT~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst5|ALT_INV_OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|ALT_INV_cursor_row~12_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_row~7_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_char_address~2_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_char_address~1_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_char_address~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_motion\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst5|ALT_INV_output_ready~q\ : std_logic;
SIGNAL \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|ALT_INV_new_cursor_column[9]~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_on~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_pixel_row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_video_on_h~q\ : std_logic;
SIGNAL \inst2|ALT_INV_video_on_v~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_PACKET_CHAR1\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst5|ALT_INV_RECV_UART~4_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_LessThan9~0_combout\ : std_logic;
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
SIGNAL \inst5|ALT_INV_left_button~q\ : std_logic;
SIGNAL \inst5|ALT_INV_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|ALT_INV_SevenSeg_out[1]~5_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_SevenSeg_out~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|ALT_INV_h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|ALT_INV_new_cursor_row\ : std_logic_vector(9 DOWNTO 0);

BEGIN

VGA_VS <= ww_VGA_VS;
ww_CLOCK_50 <= CLOCK_50;
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

\inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst8|char_address[5]~8_combout\ & \inst8|char_address[4]~7_combout\ & \inst8|char_address[3]~6_combout\ & \inst8|char_address[2]~5_combout\ & \inst8|char_address[1]~4_combout\ & 
\inst8|char_address[0]~3_combout\ & \inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1));

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
\inst5|ALT_INV_inhibit_wait_count[11]~DUPLICATE_q\ <= NOT \inst5|inhibit_wait_count[11]~DUPLICATE_q\;
\inst5|ALT_INV_filter[3]~DUPLICATE_q\ <= NOT \inst5|filter[3]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\ <= NOT \inst2|pixel_column[2]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[1]~DUPLICATE_q\ <= NOT \inst2|pixel_column[1]~DUPLICATE_q\;
\inst2|ALT_INV_pixel_column[4]~DUPLICATE_q\ <= NOT \inst2|pixel_column[4]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[0]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[0]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[1]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[1]~DUPLICATE_q\;
\inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\ <= NOT \inst3|ball_y_pos[3]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[8]~DUPLICATE_q\ <= NOT \inst2|h_count[8]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[0]~DUPLICATE_q\ <= NOT \inst2|h_count[0]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[4]~DUPLICATE_q\ <= NOT \inst2|h_count[4]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[3]~DUPLICATE_q\ <= NOT \inst2|h_count[3]~DUPLICATE_q\;
\inst2|ALT_INV_h_count[5]~DUPLICATE_q\ <= NOT \inst2|h_count[5]~DUPLICATE_q\;
\ALT_INV_PS2_CLK~input_o\ <= NOT \PS2_CLK~input_o\;
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
\inst3|ALT_INV_LessThan5~1_combout\ <= NOT \inst3|LessThan5~1_combout\;
\inst3|ALT_INV_LessThan5~0_combout\ <= NOT \inst3|LessThan5~0_combout\;
\inst3|ALT_INV_LessThan4~1_combout\ <= NOT \inst3|LessThan4~1_combout\;
\inst3|ALT_INV_LessThan4~0_combout\ <= NOT \inst3|LessThan4~0_combout\;
\inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\ <= NOT \inst5|mouse_state.INPUT_PACKETS~q\;
\inst5|ALT_INV_OUTCNT\(0) <= NOT \inst5|OUTCNT\(0);
\inst5|ALT_INV_cursor_row~12_combout\ <= NOT \inst5|cursor_row~12_combout\;
\inst5|ALT_INV_SHIFTIN\(6) <= NOT \inst5|SHIFTIN\(6);
\inst5|ALT_INV_SHIFTIN\(4) <= NOT \inst5|SHIFTIN\(4);
\inst5|ALT_INV_cursor_row~7_combout\ <= NOT \inst5|cursor_row~7_combout\;
\inst5|ALT_INV_LessThan5~2_combout\ <= NOT \inst5|LessThan5~2_combout\;
\inst5|ALT_INV_LessThan5~1_combout\ <= NOT \inst5|LessThan5~1_combout\;
\inst5|ALT_INV_LessThan5~0_combout\ <= NOT \inst5|LessThan5~0_combout\;
\inst5|ALT_INV_SHIFTIN\(7) <= NOT \inst5|SHIFTIN\(7);
\inst5|ALT_INV_inhibit_wait_count\(10) <= NOT \inst5|inhibit_wait_count\(10);
\inst5|ALT_INV_inhibit_wait_count\(11) <= NOT \inst5|inhibit_wait_count\(11);
\inst8|ALT_INV_char_address~2_combout\ <= NOT \inst8|char_address~2_combout\;
\inst8|ALT_INV_char_address~1_combout\ <= NOT \inst8|char_address~1_combout\;
\inst8|ALT_INV_char_address~0_combout\ <= NOT \inst8|char_address~0_combout\;
\inst8|ALT_INV_LessThan2~0_combout\ <= NOT \inst8|LessThan2~0_combout\;
\inst3|ALT_INV_ball_y_motion\(0) <= NOT \inst3|ball_y_motion\(0);
\inst3|ALT_INV_ball_y_motion\(1) <= NOT \inst3|ball_y_motion\(1);
\inst3|ALT_INV_ball_y_motion\(3) <= NOT \inst3|ball_y_motion\(3);
\inst5|ALT_INV_SHIFTIN\(2) <= NOT \inst5|SHIFTIN\(2);
\inst5|ALT_INV_PACKET_CHAR2\(7) <= NOT \inst5|PACKET_CHAR2\(7);
\inst5|ALT_INV_PACKET_CHAR2\(1) <= NOT \inst5|PACKET_CHAR2\(1);
\inst5|ALT_INV_PACKET_CHAR2\(2) <= NOT \inst5|PACKET_CHAR2\(2);
\inst5|ALT_INV_PACKET_CHAR2\(3) <= NOT \inst5|PACKET_CHAR2\(3);
\inst5|ALT_INV_PACKET_CHAR2\(4) <= NOT \inst5|PACKET_CHAR2\(4);
\inst5|ALT_INV_PACKET_CHAR2\(5) <= NOT \inst5|PACKET_CHAR2\(5);
\inst5|ALT_INV_PACKET_CHAR2\(0) <= NOT \inst5|PACKET_CHAR2\(0);
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
\inst5|ALT_INV_SHIFTIN\(0) <= NOT \inst5|SHIFTIN\(0);
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
\inst5|ALT_INV_new_cursor_column[9]~0_combout\ <= NOT \inst5|new_cursor_column[9]~0_combout\;
\inst2|ALT_INV_process_0~3_combout\ <= NOT \inst2|process_0~3_combout\;
\inst2|ALT_INV_process_0~2_combout\ <= NOT \inst2|process_0~2_combout\;
\inst2|ALT_INV_process_0~0_combout\ <= NOT \inst2|process_0~0_combout\;
\inst2|ALT_INV_LessThan7~0_combout\ <= NOT \inst2|LessThan7~0_combout\;
\inst3|ALT_INV_ball_on~2_combout\ <= NOT \inst3|ball_on~2_combout\;
\inst3|ALT_INV_ball_on~1_combout\ <= NOT \inst3|ball_on~1_combout\;
\inst3|ALT_INV_ball_on~0_combout\ <= NOT \inst3|ball_on~0_combout\;
\inst3|ALT_INV_ball_y_pos\(9) <= NOT \inst3|ball_y_pos\(9);
\inst3|ALT_INV_LessThan0~2_combout\ <= NOT \inst3|LessThan0~2_combout\;
\inst3|ALT_INV_LessThan1~0_combout\ <= NOT \inst3|LessThan1~0_combout\;
\inst2|ALT_INV_pixel_column\(0) <= NOT \inst2|pixel_column\(0);
\inst2|ALT_INV_pixel_column\(9) <= NOT \inst2|pixel_column\(9);
\inst2|ALT_INV_pixel_column\(8) <= NOT \inst2|pixel_column\(8);
\inst3|ALT_INV_LessThan0~1_combout\ <= NOT \inst3|LessThan0~1_combout\;
\inst3|ALT_INV_LessThan0~0_combout\ <= NOT \inst3|LessThan0~0_combout\;
\inst2|ALT_INV_pixel_column\(3) <= NOT \inst2|pixel_column\(3);
\inst2|ALT_INV_pixel_column\(2) <= NOT \inst2|pixel_column\(2);
\inst2|ALT_INV_pixel_column\(1) <= NOT \inst2|pixel_column\(1);
\inst2|ALT_INV_pixel_column\(4) <= NOT \inst2|pixel_column\(4);
\inst2|ALT_INV_pixel_column\(5) <= NOT \inst2|pixel_column\(5);
\inst2|ALT_INV_pixel_column\(7) <= NOT \inst2|pixel_column\(7);
\inst2|ALT_INV_pixel_column\(6) <= NOT \inst2|pixel_column\(6);
\inst3|ALT_INV_LessThan3~6_combout\ <= NOT \inst3|LessThan3~6_combout\;
\inst3|ALT_INV_LessThan3~5_combout\ <= NOT \inst3|LessThan3~5_combout\;
\inst3|ALT_INV_LessThan3~4_combout\ <= NOT \inst3|LessThan3~4_combout\;
\inst3|ALT_INV_LessThan3~3_combout\ <= NOT \inst3|LessThan3~3_combout\;
\inst3|ALT_INV_LessThan3~2_combout\ <= NOT \inst3|LessThan3~2_combout\;
\inst3|ALT_INV_LessThan3~1_combout\ <= NOT \inst3|LessThan3~1_combout\;
\inst3|ALT_INV_LessThan3~0_combout\ <= NOT \inst3|LessThan3~0_combout\;
\inst3|ALT_INV_Add3~0_combout\ <= NOT \inst3|Add3~0_combout\;
\inst3|ALT_INV_LessThan2~6_combout\ <= NOT \inst3|LessThan2~6_combout\;
\inst3|ALT_INV_LessThan2~5_combout\ <= NOT \inst3|LessThan2~5_combout\;
\inst3|ALT_INV_LessThan2~4_combout\ <= NOT \inst3|LessThan2~4_combout\;
\inst3|ALT_INV_LessThan2~3_combout\ <= NOT \inst3|LessThan2~3_combout\;
\inst3|ALT_INV_LessThan2~2_combout\ <= NOT \inst3|LessThan2~2_combout\;
\inst3|ALT_INV_ball_y_pos\(6) <= NOT \inst3|ball_y_pos\(6);
\inst3|ALT_INV_ball_y_pos\(7) <= NOT \inst3|ball_y_pos\(7);
\inst3|ALT_INV_ball_y_pos\(4) <= NOT \inst3|ball_y_pos\(4);
\inst3|ALT_INV_ball_y_pos\(5) <= NOT \inst3|ball_y_pos\(5);
\inst3|ALT_INV_LessThan2~1_combout\ <= NOT \inst3|LessThan2~1_combout\;
\inst3|ALT_INV_LessThan2~0_combout\ <= NOT \inst3|LessThan2~0_combout\;
\inst3|ALT_INV_ball_y_pos\(0) <= NOT \inst3|ball_y_pos\(0);
\inst2|ALT_INV_pixel_row\(0) <= NOT \inst2|pixel_row\(0);
\inst3|ALT_INV_ball_y_pos\(1) <= NOT \inst3|ball_y_pos\(1);
\inst2|ALT_INV_pixel_row\(1) <= NOT \inst2|pixel_row\(1);
\inst3|ALT_INV_ball_y_pos\(2) <= NOT \inst3|ball_y_pos\(2);
\inst2|ALT_INV_pixel_row\(2) <= NOT \inst2|pixel_row\(2);
\inst3|ALT_INV_ball_y_pos\(3) <= NOT \inst3|ball_y_pos\(3);
\inst2|ALT_INV_pixel_row\(3) <= NOT \inst2|pixel_row\(3);
\inst3|ALT_INV_ball_y_pos\(8) <= NOT \inst3|ball_y_pos\(8);
\inst3|ALT_INV_Add2~0_combout\ <= NOT \inst3|Add2~0_combout\;
\inst2|ALT_INV_pixel_row\(5) <= NOT \inst2|pixel_row\(5);
\inst2|ALT_INV_pixel_row\(4) <= NOT \inst2|pixel_row\(4);
\inst2|ALT_INV_pixel_row\(6) <= NOT \inst2|pixel_row\(6);
\inst2|ALT_INV_pixel_row\(7) <= NOT \inst2|pixel_row\(7);
\inst2|ALT_INV_pixel_row\(8) <= NOT \inst2|pixel_row\(8);
\inst2|ALT_INV_video_on_h~q\ <= NOT \inst2|video_on_h~q\;
\inst2|ALT_INV_video_on_v~q\ <= NOT \inst2|video_on_v~q\;
\inst5|ALT_INV_Equal4~0_combout\ <= NOT \inst5|Equal4~0_combout\;
\inst5|ALT_INV_PACKET_CHAR1\(1) <= NOT \inst5|PACKET_CHAR1\(1);
\inst5|ALT_INV_RECV_UART~4_combout\ <= NOT \inst5|RECV_UART~4_combout\;
\inst5|ALT_INV_LessThan9~0_combout\ <= NOT \inst5|LessThan9~0_combout\;
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
\inst9|ALT_INV_Mux0~4_combout\ <= NOT \inst9|Mux0~4_combout\;
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(1);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(2);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(3);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(4);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(5);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(6);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(7);
\inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \inst9|altsyncram_component|auto_generated|q_a\(0);
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
\inst2|ALT_INV_v_count\(0) <= NOT \inst2|v_count\(0);
\inst2|ALT_INV_v_count\(1) <= NOT \inst2|v_count\(1);
\inst2|ALT_INV_v_count\(9) <= NOT \inst2|v_count\(9);
\inst2|ALT_INV_v_count\(4) <= NOT \inst2|v_count\(4);
\inst2|ALT_INV_v_count\(5) <= NOT \inst2|v_count\(5);
\inst2|ALT_INV_v_count\(6) <= NOT \inst2|v_count\(6);
\inst2|ALT_INV_v_count\(7) <= NOT \inst2|v_count\(7);
\inst2|ALT_INV_v_count\(8) <= NOT \inst2|v_count\(8);
\inst2|ALT_INV_v_count\(3) <= NOT \inst2|v_count\(3);
\inst2|ALT_INV_v_count\(2) <= NOT \inst2|v_count\(2);
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
\inst5|ALT_INV_new_cursor_column\(8) <= NOT \inst5|new_cursor_column\(8);
\inst5|ALT_INV_new_cursor_column\(7) <= NOT \inst5|new_cursor_column\(7);
\inst5|ALT_INV_new_cursor_column\(9) <= NOT \inst5|new_cursor_column\(9);
\inst5|ALT_INV_new_cursor_column\(1) <= NOT \inst5|new_cursor_column\(1);
\inst5|ALT_INV_new_cursor_column\(2) <= NOT \inst5|new_cursor_column\(2);
\inst5|ALT_INV_new_cursor_column\(3) <= NOT \inst5|new_cursor_column\(3);
\inst5|ALT_INV_new_cursor_column\(4) <= NOT \inst5|new_cursor_column\(4);
\inst5|ALT_INV_new_cursor_column\(5) <= NOT \inst5|new_cursor_column\(5);
\inst5|ALT_INV_new_cursor_column\(0) <= NOT \inst5|new_cursor_column\(0);
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

-- Location: LABCELL_X1_Y20_N39
\inst5|filter[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|filter[0]~feeder_combout\ = ( \PS2_CLK~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PS2_CLK~input_o\,
	combout => \inst5|filter[0]~feeder_combout\);

-- Location: FF_X1_Y20_N41
\inst5|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(0));

-- Location: FF_X19_Y26_N13
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

-- Location: LABCELL_X19_Y26_N33
\inst5|filter[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|filter[2]~feeder_combout\ = ( \inst5|filter\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_filter\(1),
	combout => \inst5|filter[2]~feeder_combout\);

-- Location: FF_X19_Y26_N35
\inst5|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst5|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(2));

-- Location: FF_X19_Y26_N26
\inst5|filter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter[3]~DUPLICATE_q\);

-- Location: FF_X19_Y26_N7
\inst5|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter[3]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(4));

-- Location: LABCELL_X19_Y26_N48
\inst5|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal2~0_combout\ = ( !\inst5|filter\(1) & ( (!\inst5|filter\(4) & (!\inst5|filter\(0) & (!\inst5|filter[3]~DUPLICATE_q\ & !\inst5|filter\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_filter\(4),
	datab => \inst5|ALT_INV_filter\(0),
	datac => \inst5|ALT_INV_filter[3]~DUPLICATE_q\,
	datad => \inst5|ALT_INV_filter\(2),
	dataf => \inst5|ALT_INV_filter\(1),
	combout => \inst5|Equal2~0_combout\);

-- Location: FF_X19_Y26_N25
\inst5|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(3));

-- Location: LABCELL_X19_Y26_N51
\inst5|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal1~0_combout\ = ( \inst5|filter\(1) & ( (\inst5|filter\(4) & (\inst5|filter\(0) & (\inst5|filter\(3) & \inst5|filter\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_filter\(4),
	datab => \inst5|ALT_INV_filter\(0),
	datac => \inst5|ALT_INV_filter\(3),
	datad => \inst5|ALT_INV_filter\(2),
	dataf => \inst5|ALT_INV_filter\(1),
	combout => \inst5|Equal1~0_combout\);

-- Location: FF_X19_Y26_N8
\inst5|filter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter[3]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter[4]~DUPLICATE_q\);

-- Location: FF_X19_Y26_N40
\inst5|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|filter[4]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|filter\(5));

-- Location: FF_X19_Y26_N43
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

-- Location: FF_X19_Y26_N47
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

-- Location: LABCELL_X19_Y26_N45
\inst5|MOUSE_CLK_FILTER~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|MOUSE_CLK_FILTER~0_combout\ = ( \inst5|filter\(6) & ( \inst5|MOUSE_CLK_FILTER~q\ ) ) # ( !\inst5|filter\(6) & ( \inst5|MOUSE_CLK_FILTER~q\ & ( (!\inst5|Equal2~0_combout\) # ((\inst5|filter\(5)) # (\inst5|filter\(7))) ) ) ) # ( \inst5|filter\(6) & ( 
-- !\inst5|MOUSE_CLK_FILTER~q\ & ( (\inst5|Equal1~0_combout\ & (\inst5|filter\(7) & \inst5|filter\(5))) ) ) )

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
	datad => \inst5|ALT_INV_filter\(5),
	datae => \inst5|ALT_INV_filter\(6),
	dataf => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	combout => \inst5|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X19_Y14_N53
\inst5|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst5|MOUSE_CLK_FILTER~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|MOUSE_CLK_FILTER~q\);

-- Location: LABCELL_X20_Y14_N9
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

-- Location: MLABCELL_X18_Y16_N48
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

-- Location: FF_X18_Y16_N32
\inst5|inhibit_wait_count[11]~DUPLICATE\ : dffeas
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
	q => \inst5|inhibit_wait_count[11]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y16_N27
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

-- Location: MLABCELL_X18_Y16_N30
\inst5|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_sumout\ = SUM(( \inst5|inhibit_wait_count[11]~DUPLICATE_q\ ) + ( GND ) + ( \inst5|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_inhibit_wait_count[11]~DUPLICATE_q\,
	cin => \inst5|Add0~6\,
	sumout => \inst5|Add0~1_sumout\);

-- Location: FF_X18_Y16_N31
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

-- Location: MLABCELL_X18_Y16_N42
\inst5|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector0~0_combout\ = ( \inst5|inhibit_wait_count\(11) & ( (\inst5|mouse_state.INHIBIT_TRANS~q\) # (\inst5|inhibit_wait_count\(10)) ) ) # ( !\inst5|inhibit_wait_count\(11) & ( \inst5|mouse_state.INHIBIT_TRANS~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_inhibit_wait_count\(10),
	datad => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	dataf => \inst5|ALT_INV_inhibit_wait_count\(11),
	combout => \inst5|Selector0~0_combout\);

-- Location: FF_X18_Y16_N44
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

-- Location: FF_X18_Y16_N50
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

-- Location: MLABCELL_X18_Y16_N0
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

-- Location: FF_X18_Y16_N2
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

-- Location: MLABCELL_X18_Y16_N3
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

-- Location: FF_X18_Y16_N5
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

-- Location: MLABCELL_X18_Y16_N6
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

-- Location: FF_X18_Y16_N7
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

-- Location: MLABCELL_X18_Y16_N9
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

-- Location: FF_X18_Y16_N11
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

-- Location: MLABCELL_X18_Y16_N12
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

-- Location: FF_X18_Y16_N14
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

-- Location: MLABCELL_X18_Y16_N15
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

-- Location: FF_X18_Y16_N17
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

-- Location: MLABCELL_X18_Y16_N18
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

-- Location: FF_X18_Y16_N20
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

-- Location: MLABCELL_X18_Y16_N21
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

-- Location: FF_X18_Y16_N23
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

-- Location: MLABCELL_X18_Y16_N24
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

-- Location: FF_X18_Y16_N26
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

-- Location: FF_X18_Y16_N29
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

-- Location: MLABCELL_X18_Y16_N45
\inst5|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector1~0_combout\ = ( !\inst5|mouse_state.INHIBIT_TRANS~q\ & ( (\inst5|inhibit_wait_count\(10) & \inst5|inhibit_wait_count[11]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_inhibit_wait_count\(10),
	datac => \inst5|ALT_INV_inhibit_wait_count[11]~DUPLICATE_q\,
	dataf => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	combout => \inst5|Selector1~0_combout\);

-- Location: FF_X18_Y16_N47
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

-- Location: FF_X18_Y16_N38
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

-- Location: LABCELL_X17_Y14_N21
\inst5|INCNT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~3_combout\ = ( \inst5|INCNT\(0) & ( (!\inst5|INCNT\(1) & !\inst5|INCNT\(3)) ) ) # ( !\inst5|INCNT\(0) & ( (\inst5|INCNT\(1) & !\inst5|INCNT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000110000001100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_INCNT\(1),
	datac => \inst5|ALT_INV_INCNT\(3),
	datae => \inst5|ALT_INV_INCNT\(0),
	combout => \inst5|INCNT~3_combout\);

-- Location: LABCELL_X20_Y14_N15
\inst5|OUTCNT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~3_combout\ = ( \inst5|OUTCNT\(2) & ( \inst5|OUTCNT\(1) & ( (!\inst5|OUTCNT\(3) & !\inst5|OUTCNT\(0)) ) ) ) # ( !\inst5|OUTCNT\(2) & ( \inst5|OUTCNT\(1) & ( (!\inst5|OUTCNT\(3) & !\inst5|OUTCNT\(0)) ) ) ) # ( \inst5|OUTCNT\(2) & ( 
-- !\inst5|OUTCNT\(1) & ( (!\inst5|OUTCNT\(3) & !\inst5|OUTCNT\(0)) ) ) ) # ( !\inst5|OUTCNT\(2) & ( !\inst5|OUTCNT\(1) & ( !\inst5|OUTCNT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(3),
	datad => \inst5|ALT_INV_OUTCNT\(0),
	datae => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(1),
	combout => \inst5|OUTCNT~3_combout\);

-- Location: LABCELL_X20_Y14_N51
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

-- Location: LABCELL_X20_Y14_N39
\inst5|send_char~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|send_char~0_combout\ = ( \inst5|OUTCNT\(1) & ( ((\inst5|OUTCNT\(3) & \inst5|mouse_state.WAIT_OUTPUT_READY~q\)) # (\inst5|send_char~q\) ) ) # ( !\inst5|OUTCNT\(1) & ( ((\inst5|OUTCNT\(3) & (\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & 
-- \inst5|OUTCNT\(2)))) # (\inst5|send_char~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100110011011100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(3),
	datab => \inst5|ALT_INV_send_char~q\,
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(1),
	combout => \inst5|send_char~0_combout\);

-- Location: FF_X20_Y14_N14
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

-- Location: LABCELL_X20_Y14_N42
\inst5|output_ready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|output_ready~0_combout\ = ( \inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( !\inst5|send_char~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_send_char~q\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|output_ready~0_combout\);

-- Location: FF_X20_Y14_N53
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

-- Location: LABCELL_X20_Y14_N0
\inst5|OUTCNT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~1_combout\ = ( !\inst5|OUTCNT\(3) & ( !\inst5|OUTCNT\(2) $ (((!\inst5|OUTCNT\(0)) # (!\inst5|OUTCNT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(0),
	datac => \inst5|ALT_INV_OUTCNT\(1),
	datad => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(3),
	combout => \inst5|OUTCNT~1_combout\);

-- Location: FF_X20_Y14_N29
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

-- Location: LABCELL_X20_Y14_N6
\inst5|OUTCNT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~2_combout\ = ( \inst5|OUTCNT\(3) & ( (!\inst5|OUTCNT\(2) & (\inst5|OUTCNT\(0) & !\inst5|OUTCNT\(1))) ) ) # ( !\inst5|OUTCNT\(3) & ( !\inst5|OUTCNT\(0) $ (!\inst5|OUTCNT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(2),
	datac => \inst5|ALT_INV_OUTCNT\(0),
	datad => \inst5|ALT_INV_OUTCNT\(1),
	dataf => \inst5|ALT_INV_OUTCNT\(3),
	combout => \inst5|OUTCNT~2_combout\);

-- Location: FF_X20_Y14_N56
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

-- Location: LABCELL_X20_Y14_N21
\inst5|OUTCNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|OUTCNT~0_combout\ = ( \inst5|OUTCNT\(3) & ( (!\inst5|OUTCNT\(1) & !\inst5|OUTCNT\(2)) ) ) # ( !\inst5|OUTCNT\(3) & ( (\inst5|OUTCNT\(1) & (\inst5|OUTCNT\(2) & \inst5|OUTCNT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(1),
	datab => \inst5|ALT_INV_OUTCNT\(2),
	datac => \inst5|ALT_INV_OUTCNT\(0),
	dataf => \inst5|ALT_INV_OUTCNT\(3),
	combout => \inst5|OUTCNT~0_combout\);

-- Location: FF_X20_Y14_N50
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

-- Location: LABCELL_X20_Y14_N27
\inst5|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = ( \inst5|OUTCNT\(2) & ( \inst5|OUTCNT\(1) & ( \inst5|OUTCNT\(3) ) ) ) # ( !\inst5|OUTCNT\(2) & ( \inst5|OUTCNT\(1) & ( \inst5|OUTCNT\(3) ) ) ) # ( \inst5|OUTCNT\(2) & ( !\inst5|OUTCNT\(1) & ( \inst5|OUTCNT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_OUTCNT\(3),
	datae => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(1),
	combout => \inst5|LessThan0~0_combout\);

-- Location: FF_X20_Y14_N26
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

-- Location: MLABCELL_X18_Y16_N39
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

-- Location: FF_X18_Y14_N35
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

-- Location: LABCELL_X17_Y14_N27
\inst5|INCNT[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT[3]~1_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( \inst5|READ_CHAR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_READ_CHAR~q\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|INCNT[3]~1_combout\);

-- Location: FF_X17_Y14_N50
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

-- Location: LABCELL_X17_Y14_N42
\inst5|INCNT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~2_combout\ = ( \inst5|INCNT\(0) & ( !\inst5|INCNT\(3) & ( !\inst5|INCNT\(2) $ (!\inst5|INCNT\(1)) ) ) ) # ( !\inst5|INCNT\(0) & ( !\inst5|INCNT\(3) & ( \inst5|INCNT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_INCNT\(2),
	datad => \inst5|ALT_INV_INCNT\(1),
	datae => \inst5|ALT_INV_INCNT\(0),
	dataf => \inst5|ALT_INV_INCNT\(3),
	combout => \inst5|INCNT~2_combout\);

-- Location: FF_X17_Y14_N20
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

-- Location: LABCELL_X17_Y14_N51
\inst5|INCNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~0_combout\ = ( \inst5|INCNT\(0) & ( \inst5|INCNT\(2) & ( (!\inst5|INCNT\(3) & \inst5|INCNT\(1)) ) ) ) # ( !\inst5|INCNT\(0) & ( !\inst5|INCNT\(2) & ( (\inst5|INCNT\(3) & !\inst5|INCNT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_INCNT\(3),
	datac => \inst5|ALT_INV_INCNT\(1),
	datae => \inst5|ALT_INV_INCNT\(0),
	dataf => \inst5|ALT_INV_INCNT\(2),
	combout => \inst5|INCNT~0_combout\);

-- Location: FF_X17_Y14_N41
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

-- Location: LABCELL_X17_Y14_N6
\inst5|INCNT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|INCNT~4_combout\ = ( \inst5|INCNT\(1) & ( \inst5|INCNT\(2) & ( (!\inst5|INCNT\(3) & !\inst5|INCNT\(0)) ) ) ) # ( !\inst5|INCNT\(1) & ( \inst5|INCNT\(2) & ( (!\inst5|INCNT\(3) & !\inst5|INCNT\(0)) ) ) ) # ( \inst5|INCNT\(1) & ( !\inst5|INCNT\(2) & ( 
-- (!\inst5|INCNT\(3) & !\inst5|INCNT\(0)) ) ) ) # ( !\inst5|INCNT\(1) & ( !\inst5|INCNT\(2) & ( !\inst5|INCNT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_INCNT\(3),
	datac => \inst5|ALT_INV_INCNT\(0),
	datae => \inst5|ALT_INV_INCNT\(1),
	dataf => \inst5|ALT_INV_INCNT\(2),
	combout => \inst5|INCNT~4_combout\);

-- Location: FF_X17_Y14_N5
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

-- Location: LABCELL_X17_Y14_N12
\inst5|READ_CHAR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|READ_CHAR~0_combout\ = ( \inst5|INCNT\(1) & ( \inst5|INCNT\(2) & ( (!\inst5|READ_CHAR~q\ & (!\PS2_DAT~input_o\)) # (\inst5|READ_CHAR~q\ & ((!\inst5|INCNT\(3)))) ) ) ) # ( !\inst5|INCNT\(1) & ( \inst5|INCNT\(2) & ( (!\inst5|READ_CHAR~q\ & 
-- (!\PS2_DAT~input_o\)) # (\inst5|READ_CHAR~q\ & ((!\inst5|INCNT\(3)))) ) ) ) # ( \inst5|INCNT\(1) & ( !\inst5|INCNT\(2) & ( (!\inst5|READ_CHAR~q\ & (!\PS2_DAT~input_o\)) # (\inst5|READ_CHAR~q\ & ((!\inst5|INCNT\(3)))) ) ) ) # ( !\inst5|INCNT\(1) & ( 
-- !\inst5|INCNT\(2) & ( (!\inst5|READ_CHAR~q\ & (!\PS2_DAT~input_o\)) # (\inst5|READ_CHAR~q\ & (((!\inst5|INCNT\(0)) # (!\inst5|INCNT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111000101110111000100010111011100010001011101110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PS2_DAT~input_o\,
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_INCNT\(0),
	datad => \inst5|ALT_INV_INCNT\(3),
	datae => \inst5|ALT_INV_INCNT\(1),
	dataf => \inst5|ALT_INV_INCNT\(2),
	combout => \inst5|READ_CHAR~0_combout\);

-- Location: FF_X17_Y14_N44
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

-- Location: LABCELL_X17_Y14_N24
\inst5|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = ( \inst5|INCNT\(2) & ( \inst5|INCNT\(3) ) ) # ( !\inst5|INCNT\(2) & ( (\inst5|INCNT\(3) & ((\inst5|INCNT\(0)) # (\inst5|INCNT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_INCNT\(3),
	datac => \inst5|ALT_INV_INCNT\(1),
	datad => \inst5|ALT_INV_INCNT\(0),
	dataf => \inst5|ALT_INV_INCNT\(2),
	combout => \inst5|LessThan1~0_combout\);

-- Location: LABCELL_X17_Y14_N0
\inst5|iready_set~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|iready_set~0_combout\ = ( \PS2_DAT~input_o\ & ( \inst5|LessThan1~0_combout\ & ( (\inst5|iready_set~q\) # (\inst5|READ_CHAR~q\) ) ) ) # ( !\PS2_DAT~input_o\ & ( \inst5|LessThan1~0_combout\ & ( \inst5|READ_CHAR~q\ ) ) ) # ( \PS2_DAT~input_o\ & ( 
-- !\inst5|LessThan1~0_combout\ & ( (!\inst5|READ_CHAR~q\ & \inst5|iready_set~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_iready_set~q\,
	datae => \ALT_INV_PS2_DAT~input_o\,
	dataf => \inst5|ALT_INV_LessThan1~0_combout\,
	combout => \inst5|iready_set~0_combout\);

-- Location: FF_X17_Y14_N29
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

-- Location: MLABCELL_X18_Y16_N57
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

-- Location: FF_X18_Y16_N58
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

-- Location: MLABCELL_X18_Y16_N54
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

-- Location: FF_X18_Y16_N55
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

-- Location: MLABCELL_X18_Y16_N36
\inst5|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Selector6~0_combout\ = ( \inst5|send_data~q\ & ( (((!\inst5|mouse_state.INHIBIT_TRANS~q\) # (\inst5|mouse_state.LOAD_COMMAND~q\)) # (\inst5|mouse_state.INPUT_PACKETS~q\)) # (\inst5|mouse_state.LOAD_COMMAND2~q\) ) ) # ( !\inst5|send_data~q\ & ( 
-- (\inst5|mouse_state.LOAD_COMMAND~q\) # (\inst5|mouse_state.LOAD_COMMAND2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\,
	datab => \inst5|ALT_INV_mouse_state.INPUT_PACKETS~q\,
	datac => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	datad => \inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\,
	dataf => \inst5|ALT_INV_send_data~q\,
	combout => \inst5|Selector6~0_combout\);

-- Location: FF_X19_Y14_N49
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

-- Location: LABCELL_X20_Y14_N33
\inst5|MOUSE_DATA_BUF~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|MOUSE_DATA_BUF~0_combout\ = ( \inst5|OUTCNT\(1) & ( (!\inst5|OUTCNT\(3) & (\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst5|send_char~q\)) ) ) # ( !\inst5|OUTCNT\(1) & ( (\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst5|send_char~q\ & 
-- ((!\inst5|OUTCNT\(3)) # (!\inst5|OUTCNT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000100000001100000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_OUTCNT\(3),
	datab => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst5|ALT_INV_send_char~q\,
	datad => \inst5|ALT_INV_OUTCNT\(2),
	dataf => \inst5|ALT_INV_OUTCNT\(1),
	combout => \inst5|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X20_Y14_N10
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

-- Location: LABCELL_X20_Y14_N36
\inst5|SHIFTOUT[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTOUT[8]~3_combout\ = !\inst5|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_SHIFTOUT\(9),
	combout => \inst5|SHIFTOUT[8]~3_combout\);

-- Location: FF_X20_Y14_N37
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

-- Location: FF_X20_Y14_N4
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

-- Location: FF_X20_Y14_N2
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

-- Location: FF_X20_Y14_N8
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

-- Location: LABCELL_X20_Y14_N30
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

-- Location: FF_X20_Y14_N31
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

-- Location: LABCELL_X20_Y14_N45
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

-- Location: FF_X20_Y14_N46
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

-- Location: LABCELL_X20_Y14_N18
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

-- Location: FF_X20_Y14_N19
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

-- Location: FF_X20_Y14_N22
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

-- Location: FF_X20_Y14_N41
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

-- Location: MLABCELL_X18_Y16_N51
\inst5|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|WideOr4~combout\ = (!\inst5|mouse_state.INHIBIT_TRANS~q\) # ((\inst5|mouse_state.LOAD_COMMAND2~q\) # (\inst5|mouse_state.LOAD_COMMAND~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	datac => \inst5|ALT_INV_mouse_state.LOAD_COMMAND~q\,
	datad => \inst5|ALT_INV_mouse_state.LOAD_COMMAND2~q\,
	combout => \inst5|WideOr4~combout\);

-- Location: MLABCELL_X18_Y28_N0
\inst2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~37_sumout\ = SUM(( \inst2|v_count\(0) ) + ( VCC ) + ( !VCC ))
-- \inst2|Add1~38\ = CARRY(( \inst2|v_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(0),
	cin => GND,
	sumout => \inst2|Add1~37_sumout\,
	cout => \inst2|Add1~38\);

-- Location: LABCELL_X17_Y28_N30
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

-- Location: LABCELL_X17_Y28_N51
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

-- Location: LABCELL_X17_Y28_N54
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

-- Location: FF_X17_Y28_N56
\inst2|h_count[8]\ : dffeas
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
	q => \inst2|h_count\(8));

-- Location: LABCELL_X17_Y28_N57
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

-- Location: FF_X17_Y28_N58
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

-- Location: FF_X17_Y28_N43
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

-- Location: FF_X17_Y28_N31
\inst2|h_count[0]~DUPLICATE\ : dffeas
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
	q => \inst2|h_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y28_N18
\inst2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = ( !\inst2|h_count\(6) & ( \inst2|h_count[0]~DUPLICATE_q\ & ( (\inst2|h_count\(9) & (\inst2|h_count\(3) & (\inst2|h_count\(1) & \inst2|h_count[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(9),
	datab => \inst2|ALT_INV_h_count\(3),
	datac => \inst2|ALT_INV_h_count\(1),
	datad => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_h_count\(6),
	dataf => \inst2|ALT_INV_h_count[0]~DUPLICATE_q\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LABCELL_X17_Y28_N15
\inst2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = ( \inst2|Equal0~0_combout\ & ( (\inst2|h_count\(8) & (!\inst2|h_count\(7) & (\inst2|h_count\(2) & !\inst2|h_count\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(8),
	datab => \inst2|ALT_INV_h_count\(7),
	datac => \inst2|ALT_INV_h_count\(2),
	datad => \inst2|ALT_INV_h_count\(5),
	dataf => \inst2|ALT_INV_Equal0~0_combout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: FF_X17_Y28_N32
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

-- Location: LABCELL_X17_Y28_N33
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

-- Location: FF_X17_Y28_N35
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

-- Location: LABCELL_X17_Y28_N36
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

-- Location: FF_X17_Y28_N37
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

-- Location: LABCELL_X17_Y28_N39
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

-- Location: FF_X17_Y28_N41
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

-- Location: LABCELL_X17_Y28_N42
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

-- Location: FF_X17_Y28_N44
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

-- Location: LABCELL_X17_Y28_N45
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

-- Location: FF_X17_Y28_N47
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

-- Location: LABCELL_X17_Y28_N48
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

-- Location: FF_X17_Y28_N50
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

-- Location: FF_X17_Y28_N52
\inst2|h_count[7]\ : dffeas
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
	q => \inst2|h_count\(7));

-- Location: LABCELL_X17_Y28_N6
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

-- Location: LABCELL_X17_Y28_N9
\inst2|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = ( \inst2|h_count[4]~DUPLICATE_q\ & ( (!\inst2|h_count\(6) & (((!\inst2|h_count\(3)) # (!\inst2|h_count\(5))) # (\inst2|LessThan1~0_combout\))) ) ) # ( !\inst2|h_count[4]~DUPLICATE_q\ & ( !\inst2|h_count\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101000101010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(6),
	datab => \inst2|ALT_INV_LessThan1~0_combout\,
	datac => \inst2|ALT_INV_h_count\(3),
	datad => \inst2|ALT_INV_h_count\(5),
	dataf => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	combout => \inst2|process_0~4_combout\);

-- Location: MLABCELL_X18_Y28_N9
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

-- Location: MLABCELL_X18_Y28_N12
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

-- Location: FF_X17_Y28_N46
\inst2|h_count[5]~DUPLICATE\ : dffeas
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
	q => \inst2|h_count[5]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y28_N12
\inst2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = ( \inst2|Equal0~0_combout\ & ( (!\inst2|h_count\(8) & (\inst2|h_count\(7) & (\inst2|h_count[5]~DUPLICATE_q\ & !\inst2|h_count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(8),
	datab => \inst2|ALT_INV_h_count\(7),
	datac => \inst2|ALT_INV_h_count[5]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_Equal0~0_combout\,
	combout => \inst2|Equal1~0_combout\);

-- Location: FF_X17_Y28_N55
\inst2|h_count[8]~DUPLICATE\ : dffeas
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
	q => \inst2|h_count[8]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y28_N54
\inst2|v_count[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|v_count[1]~0_combout\ = ( \inst2|h_count[8]~DUPLICATE_q\ & ( (\inst2|process_0~6_combout\) # (\inst2|Equal1~0_combout\) ) ) # ( !\inst2|h_count[8]~DUPLICATE_q\ & ( ((\inst2|h_count\(7) & (!\inst2|process_0~4_combout\ & 
-- \inst2|process_0~6_combout\))) # (\inst2|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(7),
	datab => \inst2|ALT_INV_process_0~4_combout\,
	datac => \inst2|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_process_0~6_combout\,
	dataf => \inst2|ALT_INV_h_count[8]~DUPLICATE_q\,
	combout => \inst2|v_count[1]~0_combout\);

-- Location: FF_X18_Y28_N13
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
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(4));

-- Location: MLABCELL_X18_Y28_N15
\inst2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~21_sumout\ = SUM(( \inst2|v_count\(5) ) + ( GND ) + ( \inst2|Add1~26\ ))
-- \inst2|Add1~22\ = CARRY(( \inst2|v_count\(5) ) + ( GND ) + ( \inst2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(5),
	cin => \inst2|Add1~26\,
	sumout => \inst2|Add1~21_sumout\,
	cout => \inst2|Add1~22\);

-- Location: FF_X18_Y28_N17
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
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(5));

-- Location: MLABCELL_X18_Y28_N18
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

-- Location: FF_X18_Y28_N20
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
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(6));

-- Location: MLABCELL_X18_Y28_N21
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

-- Location: FF_X18_Y28_N22
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
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(7));

-- Location: MLABCELL_X18_Y28_N24
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

-- Location: FF_X18_Y28_N25
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
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(8));

-- Location: MLABCELL_X18_Y28_N27
\inst2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~29_sumout\ = SUM(( \inst2|v_count\(9) ) + ( GND ) + ( \inst2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(9),
	cin => \inst2|Add1~10\,
	sumout => \inst2|Add1~29_sumout\);

-- Location: FF_X18_Y28_N29
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
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(9));

-- Location: MLABCELL_X18_Y28_N42
\inst2|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = ( !\inst2|v_count\(7) & ( (!\inst2|v_count\(6) & (!\inst2|v_count\(5) & (!\inst2|v_count\(4) & !\inst2|v_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(6),
	datab => \inst2|ALT_INV_v_count\(5),
	datac => \inst2|ALT_INV_v_count\(4),
	datad => \inst2|ALT_INV_v_count\(8),
	dataf => \inst2|ALT_INV_v_count\(7),
	combout => \inst2|process_0~5_combout\);

-- Location: MLABCELL_X18_Y28_N36
\inst2|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = ( \inst2|process_0~5_combout\ & ( (\inst2|v_count\(3) & (\inst2|v_count\(2) & (\inst2|v_count\(9) & \inst2|h_count\(9)))) ) ) # ( !\inst2|process_0~5_combout\ & ( (\inst2|v_count\(9) & \inst2|h_count\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(3),
	datab => \inst2|ALT_INV_v_count\(2),
	datac => \inst2|ALT_INV_v_count\(9),
	datad => \inst2|ALT_INV_h_count\(9),
	dataf => \inst2|ALT_INV_process_0~5_combout\,
	combout => \inst2|process_0~6_combout\);

-- Location: MLABCELL_X18_Y28_N57
\inst2|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~7_combout\ = ( \inst2|h_count[8]~DUPLICATE_q\ & ( \inst2|process_0~6_combout\ ) ) # ( !\inst2|h_count[8]~DUPLICATE_q\ & ( (\inst2|h_count\(7) & (!\inst2|process_0~4_combout\ & \inst2|process_0~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(7),
	datab => \inst2|ALT_INV_process_0~4_combout\,
	datac => \inst2|ALT_INV_process_0~6_combout\,
	dataf => \inst2|ALT_INV_h_count[8]~DUPLICATE_q\,
	combout => \inst2|process_0~7_combout\);

-- Location: FF_X18_Y28_N1
\inst2|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~37_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(0));

-- Location: MLABCELL_X18_Y28_N3
\inst2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~33_sumout\ = SUM(( \inst2|v_count\(1) ) + ( GND ) + ( \inst2|Add1~38\ ))
-- \inst2|Add1~34\ = CARRY(( \inst2|v_count\(1) ) + ( GND ) + ( \inst2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(1),
	cin => \inst2|Add1~38\,
	sumout => \inst2|Add1~33_sumout\,
	cout => \inst2|Add1~34\);

-- Location: FF_X18_Y28_N5
\inst2|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~33_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(1));

-- Location: MLABCELL_X18_Y28_N6
\inst2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~1_sumout\ = SUM(( \inst2|v_count\(2) ) + ( GND ) + ( \inst2|Add1~34\ ))
-- \inst2|Add1~2\ = CARRY(( \inst2|v_count\(2) ) + ( GND ) + ( \inst2|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_v_count\(2),
	cin => \inst2|Add1~34\,
	sumout => \inst2|Add1~1_sumout\,
	cout => \inst2|Add1~2\);

-- Location: FF_X18_Y28_N8
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
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(2));

-- Location: FF_X18_Y28_N10
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
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(3));

-- Location: MLABCELL_X18_Y28_N45
\inst2|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = (\inst2|v_count\(6) & (\inst2|v_count\(5) & (\inst2|v_count\(7) & \inst2|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(6),
	datab => \inst2|ALT_INV_v_count\(5),
	datac => \inst2|ALT_INV_v_count\(7),
	datad => \inst2|ALT_INV_v_count\(8),
	combout => \inst2|LessThan7~0_combout\);

-- Location: MLABCELL_X18_Y28_N30
\inst2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = ( !\inst2|v_count\(4) & ( (!\inst2|v_count\(9) & (!\inst2|v_count\(0) $ (!\inst2|v_count\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(9),
	datac => \inst2|ALT_INV_v_count\(0),
	datad => \inst2|ALT_INV_v_count\(1),
	dataf => \inst2|ALT_INV_v_count\(4),
	combout => \inst2|process_0~0_combout\);

-- Location: MLABCELL_X18_Y28_N39
\inst2|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = ( \inst2|process_0~0_combout\ & ( (!\inst2|v_count\(3)) # ((!\inst2|v_count\(2)) # (!\inst2|LessThan7~0_combout\)) ) ) # ( !\inst2|process_0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(3),
	datab => \inst2|ALT_INV_v_count\(2),
	datac => \inst2|ALT_INV_LessThan7~0_combout\,
	dataf => \inst2|ALT_INV_process_0~0_combout\,
	combout => \inst2|process_0~1_combout\);

-- Location: FF_X20_Y27_N23
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

-- Location: FF_X20_Y27_N35
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

-- Location: FF_X17_Y28_N40
\inst2|h_count[3]~DUPLICATE\ : dffeas
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
	q => \inst2|h_count[3]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y28_N27
\inst2|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = ( \inst2|h_count\(9) & ( (!\inst2|h_count\(7)) # (\inst2|h_count\(8)) ) ) # ( !\inst2|h_count\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_h_count\(7),
	datad => \inst2|ALT_INV_h_count\(8),
	dataf => \inst2|ALT_INV_h_count\(9),
	combout => \inst2|process_0~3_combout\);

-- Location: LABCELL_X17_Y28_N24
\inst2|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = ( \inst2|h_count[0]~DUPLICATE_q\ & ( (!\inst2|h_count[4]~DUPLICATE_q\) # ((!\inst2|h_count\(1) & (!\inst2|h_count\(3) & !\inst2|h_count\(2)))) ) ) # ( !\inst2|h_count[0]~DUPLICATE_q\ & ( (!\inst2|h_count[4]~DUPLICATE_q\) # 
-- ((!\inst2|h_count\(3) & !\inst2|h_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000111111001111000011111000111100001111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_h_count\(1),
	datab => \inst2|ALT_INV_h_count\(3),
	datac => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_h_count\(2),
	dataf => \inst2|ALT_INV_h_count[0]~DUPLICATE_q\,
	combout => \inst2|process_0~2_combout\);

-- Location: LABCELL_X17_Y28_N0
\inst2|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|process_0~8_combout\ = ( !\inst2|h_count\(5) & ( ((((!\inst2|h_count\(6) & \inst2|process_0~2_combout\)) # (\inst2|process_0~3_combout\))) ) ) # ( \inst2|h_count\(5) & ( ((\inst2|h_count\(6) & (\inst2|h_count\(4) & ((\inst2|h_count[3]~DUPLICATE_q\) 
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
	datac => \inst2|ALT_INV_h_count[3]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_h_count\(4),
	datae => \inst2|ALT_INV_h_count\(5),
	dataf => \inst2|ALT_INV_process_0~3_combout\,
	datag => \inst2|ALT_INV_process_0~2_combout\,
	combout => \inst2|process_0~8_combout\);

-- Location: FF_X17_Y28_N1
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

-- Location: FF_X17_Y28_N22
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

-- Location: LABCELL_X19_Y14_N3
\inst5|new_cursor_column[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|new_cursor_column[9]~0_combout\ = ( \inst5|PACKET_COUNT\(0) & ( !\inst5|PACKET_COUNT\(1) ) ) # ( !\inst5|PACKET_COUNT\(0) & ( \inst5|PACKET_COUNT\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	dataf => \inst5|ALT_INV_PACKET_COUNT\(0),
	combout => \inst5|new_cursor_column[9]~0_combout\);

-- Location: MLABCELL_X18_Y14_N42
\inst5|PACKET_CHAR2[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[7]~0_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & \inst5|LessThan1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_READ_CHAR~q\,
	datad => \inst5|ALT_INV_LessThan1~0_combout\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|PACKET_CHAR2[7]~0_combout\);

-- Location: FF_X19_Y14_N14
\inst5|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|new_cursor_column[9]~0_combout\,
	sload => VCC,
	ena => \inst5|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_COUNT\(1));

-- Location: LABCELL_X20_Y14_N57
\inst5|PACKET_COUNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_COUNT~0_combout\ = ( \inst5|PACKET_COUNT\(1) ) # ( !\inst5|PACKET_COUNT\(1) & ( !\inst5|PACKET_COUNT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_PACKET_COUNT\(0),
	datae => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|PACKET_COUNT~0_combout\);

-- Location: FF_X19_Y14_N20
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

-- Location: MLABCELL_X18_Y15_N42
\inst5|SHIFTIN[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[1]~0_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (!\inst5|LessThan1~0_combout\ & \inst5|READ_CHAR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_LessThan1~0_combout\,
	datad => \inst5|ALT_INV_READ_CHAR~q\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|SHIFTIN[1]~0_combout\);

-- Location: FF_X18_Y15_N31
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

-- Location: MLABCELL_X18_Y15_N33
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

-- Location: FF_X18_Y15_N35
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

-- Location: LABCELL_X19_Y14_N6
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

-- Location: MLABCELL_X18_Y14_N57
\inst5|right_button~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|right_button~0_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & (\inst5|LessThan1~0_combout\ & !\inst5|Equal4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_LessThan1~0_combout\,
	datad => \inst5|ALT_INV_Equal4~0_combout\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|right_button~0_combout\);

-- Location: FF_X18_Y15_N59
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

-- Location: MLABCELL_X18_Y15_N0
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

-- Location: FF_X18_Y15_N2
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

-- Location: MLABCELL_X18_Y15_N24
\inst5|PACKET_CHAR3[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR3[6]~feeder_combout\ = \inst5|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_SHIFTIN\(6),
	combout => \inst5|PACKET_CHAR3[6]~feeder_combout\);

-- Location: FF_X18_Y15_N25
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

-- Location: MLABCELL_X18_Y15_N3
\inst5|SHIFTIN[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[5]~feeder_combout\ = \inst5|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_SHIFTIN\(6),
	combout => \inst5|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X18_Y15_N5
\inst5|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTIN[5]~feeder_combout\,
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(5));

-- Location: FF_X18_Y15_N16
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
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(5));

-- Location: LABCELL_X19_Y15_N21
\inst5|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~29_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(7) $ (\inst5|cursor_row\(7)) ) + ( \inst5|Add4~35\ ) + ( \inst5|Add4~34\ ))
-- \inst5|Add4~30\ = CARRY(( !\inst5|PACKET_CHAR3\(7) $ (\inst5|cursor_row\(7)) ) + ( \inst5|Add4~35\ ) + ( \inst5|Add4~34\ ))
-- \inst5|Add4~31\ = SHARE((!\inst5|PACKET_CHAR3\(7) & \inst5|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_CHAR3\(7),
	datab => \inst5|ALT_INV_cursor_row\(7),
	cin => \inst5|Add4~34\,
	sharein => \inst5|Add4~35\,
	sumout => \inst5|Add4~29_sumout\,
	cout => \inst5|Add4~30\,
	shareout => \inst5|Add4~31\);

-- Location: LABCELL_X19_Y15_N24
\inst5|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~5_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(7) $ (\inst5|cursor_row\(8)) ) + ( \inst5|Add4~31\ ) + ( \inst5|Add4~30\ ))
-- \inst5|Add4~6\ = CARRY(( !\inst5|PACKET_CHAR3\(7) $ (\inst5|cursor_row\(8)) ) + ( \inst5|Add4~31\ ) + ( \inst5|Add4~30\ ))
-- \inst5|Add4~7\ = SHARE((!\inst5|PACKET_CHAR3\(7) & \inst5|cursor_row\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_CHAR3\(7),
	datad => \inst5|ALT_INV_cursor_row\(8),
	cin => \inst5|Add4~30\,
	sharein => \inst5|Add4~31\,
	sumout => \inst5|Add4~5_sumout\,
	cout => \inst5|Add4~6\,
	shareout => \inst5|Add4~7\);

-- Location: LABCELL_X19_Y15_N27
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

-- Location: MLABCELL_X18_Y14_N36
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

-- Location: MLABCELL_X18_Y14_N54
\inst5|new_cursor_row[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|new_cursor_row[9]~0_combout\ = ( \inst5|LessThan1~0_combout\ & ( (\inst5|READ_CHAR~q\ & (!\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst5|new_cursor_column[9]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst5|ALT_INV_new_cursor_column[9]~0_combout\,
	dataf => \inst5|ALT_INV_LessThan1~0_combout\,
	combout => \inst5|new_cursor_row[9]~0_combout\);

-- Location: FF_X19_Y15_N29
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

-- Location: FF_X18_Y15_N50
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

-- Location: MLABCELL_X18_Y15_N12
\inst5|PACKET_CHAR3[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR3[4]~feeder_combout\ = \inst5|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_SHIFTIN\(4),
	combout => \inst5|PACKET_CHAR3[4]~feeder_combout\);

-- Location: FF_X18_Y15_N13
\inst5|PACKET_CHAR3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR3[4]~feeder_combout\,
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(4));

-- Location: MLABCELL_X18_Y15_N51
\inst5|SHIFTIN[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[3]~feeder_combout\ = \inst5|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_SHIFTIN\(4),
	combout => \inst5|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X18_Y15_N53
\inst5|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTIN[3]~feeder_combout\,
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(3));

-- Location: FF_X18_Y15_N22
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
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(3));

-- Location: LABCELL_X19_Y14_N18
\inst5|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Equal3~0_combout\ = ( !\inst5|PACKET_COUNT\(1) & ( !\inst5|PACKET_COUNT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst5|ALT_INV_PACKET_COUNT\(0),
	dataf => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|Equal3~0_combout\);

-- Location: FF_X18_Y15_N44
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

-- Location: MLABCELL_X18_Y15_N54
\inst5|PACKET_CHAR3[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR3[2]~feeder_combout\ = \inst5|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_SHIFTIN\(2),
	combout => \inst5|PACKET_CHAR3[2]~feeder_combout\);

-- Location: FF_X18_Y15_N55
\inst5|PACKET_CHAR3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR3[2]~feeder_combout\,
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR3\(2));

-- Location: FF_X18_Y15_N47
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

-- Location: MLABCELL_X18_Y15_N36
\inst5|PACKET_CHAR3[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR3[1]~feeder_combout\ = ( \inst5|SHIFTIN\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_SHIFTIN\(1),
	combout => \inst5|PACKET_CHAR3[1]~feeder_combout\);

-- Location: FF_X18_Y15_N37
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

-- Location: MLABCELL_X18_Y15_N6
\inst5|SHIFTIN[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|SHIFTIN[0]~feeder_combout\ = ( \inst5|SHIFTIN\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_SHIFTIN\(1),
	combout => \inst5|SHIFTIN[0]~feeder_combout\);

-- Location: FF_X18_Y15_N8
\inst5|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|SHIFTIN[0]~feeder_combout\,
	ena => \inst5|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|SHIFTIN\(0));

-- Location: FF_X18_Y15_N28
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

-- Location: LABCELL_X19_Y15_N0
\inst5|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~9_sumout\ = SUM(( !\inst5|cursor_row\(0) $ (!\inst5|PACKET_CHAR3\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst5|Add4~10\ = CARRY(( !\inst5|cursor_row\(0) $ (!\inst5|PACKET_CHAR3\(0)) ) + ( !VCC ) + ( !VCC ))
-- \inst5|Add4~11\ = SHARE((!\inst5|PACKET_CHAR3\(0)) # (\inst5|cursor_row\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(0),
	datad => \inst5|ALT_INV_PACKET_CHAR3\(0),
	cin => GND,
	sharein => GND,
	sumout => \inst5|Add4~9_sumout\,
	cout => \inst5|Add4~10\,
	shareout => \inst5|Add4~11\);

-- Location: FF_X19_Y15_N2
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

-- Location: LABCELL_X20_Y15_N33
\inst5|cursor_row~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~6_combout\ = ( \inst5|LessThan5~2_combout\ & ( \inst5|new_cursor_row\(0) & ( (!\inst5|Equal3~0_combout\ & (((\inst5|cursor_row\(8)) # (\inst5|cursor_row\(7))) # (\inst5|RECV_UART~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~2_combout\,
	datab => \inst5|ALT_INV_Equal3~0_combout\,
	datac => \inst5|ALT_INV_cursor_row\(7),
	datad => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_LessThan5~2_combout\,
	dataf => \inst5|ALT_INV_new_cursor_row\(0),
	combout => \inst5|cursor_row~6_combout\);

-- Location: LABCELL_X19_Y14_N33
\inst5|PACKET_CHAR1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR1[1]~0_combout\ = ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (\inst5|READ_CHAR~q\ & (!\inst5|PACKET_COUNT\(1) & \inst5|LessThan1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	datad => \inst5|ALT_INV_LessThan1~0_combout\,
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|PACKET_CHAR1[1]~0_combout\);

-- Location: FF_X20_Y15_N34
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

-- Location: LABCELL_X19_Y15_N3
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

-- Location: FF_X19_Y15_N5
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

-- Location: LABCELL_X19_Y15_N54
\inst5|cursor_row~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~11_combout\ = ( \inst5|LessThan5~2_combout\ & ( \inst5|new_cursor_row\(1) & ( (!\inst5|Equal3~0_combout\ & (((\inst5|RECV_UART~2_combout\) # (\inst5|cursor_row\(8))) # (\inst5|cursor_row\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Equal3~0_combout\,
	datab => \inst5|ALT_INV_cursor_row\(7),
	datac => \inst5|ALT_INV_cursor_row\(8),
	datad => \inst5|ALT_INV_RECV_UART~2_combout\,
	datae => \inst5|ALT_INV_LessThan5~2_combout\,
	dataf => \inst5|ALT_INV_new_cursor_row\(1),
	combout => \inst5|cursor_row~11_combout\);

-- Location: FF_X19_Y15_N55
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

-- Location: LABCELL_X19_Y15_N6
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

-- Location: FF_X19_Y15_N8
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

-- Location: LABCELL_X19_Y15_N57
\inst5|cursor_row~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~10_combout\ = ( \inst5|LessThan5~2_combout\ & ( \inst5|new_cursor_row\(2) & ( (!\inst5|Equal3~0_combout\ & (((\inst5|cursor_row\(8)) # (\inst5|RECV_UART~2_combout\)) # (\inst5|cursor_row\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Equal3~0_combout\,
	datab => \inst5|ALT_INV_cursor_row\(7),
	datac => \inst5|ALT_INV_RECV_UART~2_combout\,
	datad => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_LessThan5~2_combout\,
	dataf => \inst5|ALT_INV_new_cursor_row\(2),
	combout => \inst5|cursor_row~10_combout\);

-- Location: FF_X19_Y15_N59
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

-- Location: LABCELL_X19_Y15_N9
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

-- Location: LABCELL_X19_Y15_N12
\inst5|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~13_sumout\ = SUM(( !\inst5|cursor_row\(4) $ (\inst5|PACKET_CHAR3\(4)) ) + ( \inst5|Add4~19\ ) + ( \inst5|Add4~18\ ))
-- \inst5|Add4~14\ = CARRY(( !\inst5|cursor_row\(4) $ (\inst5|PACKET_CHAR3\(4)) ) + ( \inst5|Add4~19\ ) + ( \inst5|Add4~18\ ))
-- \inst5|Add4~15\ = SHARE((\inst5|cursor_row\(4) & !\inst5|PACKET_CHAR3\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(4),
	datad => \inst5|ALT_INV_PACKET_CHAR3\(4),
	cin => \inst5|Add4~18\,
	sharein => \inst5|Add4~19\,
	sumout => \inst5|Add4~13_sumout\,
	cout => \inst5|Add4~14\,
	shareout => \inst5|Add4~15\);

-- Location: LABCELL_X19_Y15_N15
\inst5|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add4~37_sumout\ = SUM(( !\inst5|PACKET_CHAR3\(5) $ (\inst5|cursor_row\(5)) ) + ( \inst5|Add4~15\ ) + ( \inst5|Add4~14\ ))
-- \inst5|Add4~38\ = CARRY(( !\inst5|PACKET_CHAR3\(5) $ (\inst5|cursor_row\(5)) ) + ( \inst5|Add4~15\ ) + ( \inst5|Add4~14\ ))
-- \inst5|Add4~39\ = SHARE((!\inst5|PACKET_CHAR3\(5) & \inst5|cursor_row\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_CHAR3\(5),
	datac => \inst5|ALT_INV_cursor_row\(5),
	cin => \inst5|Add4~14\,
	sharein => \inst5|Add4~15\,
	sumout => \inst5|Add4~37_sumout\,
	cout => \inst5|Add4~38\,
	shareout => \inst5|Add4~39\);

-- Location: LABCELL_X19_Y15_N18
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

-- Location: FF_X19_Y15_N20
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

-- Location: LABCELL_X20_Y15_N45
\inst5|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~1_combout\ = ( \inst5|new_cursor_row\(7) & ( (\inst5|new_cursor_row\(6) & \inst5|new_cursor_row\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_new_cursor_row\(6),
	datad => \inst5|ALT_INV_new_cursor_row\(5),
	dataf => \inst5|ALT_INV_new_cursor_row\(7),
	combout => \inst5|LessThan5~1_combout\);

-- Location: FF_X19_Y15_N11
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

-- Location: LABCELL_X20_Y15_N51
\inst5|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~0_combout\ = ( !\inst5|new_cursor_row\(2) & ( !\inst5|new_cursor_row\(1) & ( (!\inst5|new_cursor_row\(4) & (!\inst5|new_cursor_row\(0) & !\inst5|new_cursor_row\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_new_cursor_row\(4),
	datac => \inst5|ALT_INV_new_cursor_row\(0),
	datad => \inst5|ALT_INV_new_cursor_row\(3),
	datae => \inst5|ALT_INV_new_cursor_row\(2),
	dataf => \inst5|ALT_INV_new_cursor_row\(1),
	combout => \inst5|LessThan5~0_combout\);

-- Location: LABCELL_X20_Y15_N0
\inst5|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~2_combout\ = ( \inst5|LessThan5~1_combout\ & ( \inst5|LessThan5~0_combout\ & ( !\inst5|new_cursor_row\(9) ) ) ) # ( !\inst5|LessThan5~1_combout\ & ( \inst5|LessThan5~0_combout\ & ( !\inst5|new_cursor_row\(9) ) ) ) # ( 
-- \inst5|LessThan5~1_combout\ & ( !\inst5|LessThan5~0_combout\ & ( (!\inst5|new_cursor_row\(9) & !\inst5|new_cursor_row\(8)) ) ) ) # ( !\inst5|LessThan5~1_combout\ & ( !\inst5|LessThan5~0_combout\ & ( !\inst5|new_cursor_row\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010100010001000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(9),
	datab => \inst5|ALT_INV_new_cursor_row\(8),
	datae => \inst5|ALT_INV_LessThan5~1_combout\,
	dataf => \inst5|ALT_INV_LessThan5~0_combout\,
	combout => \inst5|LessThan5~2_combout\);

-- Location: LABCELL_X20_Y15_N30
\inst5|cursor_row~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~9_combout\ = ( \inst5|LessThan5~2_combout\ & ( \inst5|new_cursor_row\(3) & ( (!\inst5|Equal3~0_combout\ & (((\inst5|cursor_row\(7)) # (\inst5|cursor_row\(8))) # (\inst5|RECV_UART~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~2_combout\,
	datab => \inst5|ALT_INV_Equal3~0_combout\,
	datac => \inst5|ALT_INV_cursor_row\(8),
	datad => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_LessThan5~2_combout\,
	dataf => \inst5|ALT_INV_new_cursor_row\(3),
	combout => \inst5|cursor_row~9_combout\);

-- Location: FF_X20_Y15_N31
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

-- Location: FF_X19_Y15_N14
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

-- Location: LABCELL_X20_Y15_N36
\inst5|cursor_row~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~7_combout\ = ( \inst5|LessThan5~1_combout\ & ( \inst5|LessThan5~0_combout\ & ( (!\inst5|new_cursor_row\(9) & \inst5|new_cursor_row\(4)) ) ) ) # ( !\inst5|LessThan5~1_combout\ & ( \inst5|LessThan5~0_combout\ & ( 
-- (!\inst5|new_cursor_row\(9) & \inst5|new_cursor_row\(4)) ) ) ) # ( \inst5|LessThan5~1_combout\ & ( !\inst5|LessThan5~0_combout\ & ( (!\inst5|new_cursor_row\(9) & (\inst5|new_cursor_row\(4) & !\inst5|new_cursor_row\(8))) ) ) ) # ( 
-- !\inst5|LessThan5~1_combout\ & ( !\inst5|LessThan5~0_combout\ & ( (!\inst5|new_cursor_row\(9) & \inst5|new_cursor_row\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(9),
	datab => \inst5|ALT_INV_new_cursor_row\(4),
	datad => \inst5|ALT_INV_new_cursor_row\(8),
	datae => \inst5|ALT_INV_LessThan5~1_combout\,
	dataf => \inst5|ALT_INV_LessThan5~0_combout\,
	combout => \inst5|cursor_row~7_combout\);

-- Location: LABCELL_X20_Y15_N18
\inst5|cursor_row~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~8_combout\ = ( \inst5|cursor_row\(8) & ( \inst5|cursor_row~7_combout\ ) ) # ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row~7_combout\ & ( (((!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0))) # (\inst5|cursor_row\(7))) # 
-- (\inst5|RECV_UART~2_combout\) ) ) ) # ( \inst5|cursor_row\(8) & ( !\inst5|cursor_row~7_combout\ & ( (!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0)) ) ) ) # ( !\inst5|cursor_row\(8) & ( !\inst5|cursor_row~7_combout\ & ( (!\inst5|PACKET_COUNT\(1) & 
-- !\inst5|PACKET_COUNT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011010101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~2_combout\,
	datab => \inst5|ALT_INV_PACKET_COUNT\(1),
	datac => \inst5|ALT_INV_PACKET_COUNT\(0),
	datad => \inst5|ALT_INV_cursor_row\(7),
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row~7_combout\,
	combout => \inst5|cursor_row~8_combout\);

-- Location: FF_X20_Y15_N20
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

-- Location: FF_X19_Y15_N17
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

-- Location: LABCELL_X20_Y15_N57
\inst5|cursor_row~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~12_combout\ = (!\inst5|new_cursor_row\(5) & !\inst5|new_cursor_row\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(5),
	datad => \inst5|ALT_INV_new_cursor_row\(9),
	combout => \inst5|cursor_row~12_combout\);

-- Location: LABCELL_X20_Y15_N15
\inst5|cursor_row~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~13_combout\ = ( \inst5|cursor_row\(8) & ( \inst5|cursor_row~12_combout\ & ( (!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0)) ) ) ) # ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row~12_combout\ & ( (!\inst5|PACKET_COUNT\(1) & 
-- !\inst5|PACKET_COUNT\(0)) ) ) ) # ( \inst5|cursor_row\(8) & ( !\inst5|cursor_row~12_combout\ ) ) # ( !\inst5|cursor_row\(8) & ( !\inst5|cursor_row~12_combout\ & ( (((!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0))) # (\inst5|cursor_row\(7))) # 
-- (\inst5|RECV_UART~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101011111111111111111111111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~2_combout\,
	datab => \inst5|ALT_INV_PACKET_COUNT\(1),
	datac => \inst5|ALT_INV_cursor_row\(7),
	datad => \inst5|ALT_INV_PACKET_COUNT\(0),
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row~12_combout\,
	combout => \inst5|cursor_row~13_combout\);

-- Location: FF_X20_Y15_N16
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

-- Location: FF_X19_Y15_N26
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

-- Location: LABCELL_X19_Y15_N51
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

-- Location: LABCELL_X19_Y15_N48
\inst5|RECV_UART~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~0_combout\ = ( !\inst5|new_cursor_row\(3) & ( (!\inst5|new_cursor_row\(4) & (!\inst5|new_cursor_row\(1) & !\inst5|new_cursor_row\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_new_cursor_row\(4),
	datac => \inst5|ALT_INV_new_cursor_row\(1),
	datad => \inst5|ALT_INV_new_cursor_row\(2),
	dataf => \inst5|ALT_INV_new_cursor_row\(3),
	combout => \inst5|RECV_UART~0_combout\);

-- Location: LABCELL_X19_Y15_N30
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

-- Location: LABCELL_X20_Y15_N42
\inst5|cursor_row~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~4_combout\ = (!\inst5|new_cursor_row\(6) & !\inst5|new_cursor_row\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_new_cursor_row\(6),
	datac => \inst5|ALT_INV_new_cursor_row\(9),
	combout => \inst5|cursor_row~4_combout\);

-- Location: LABCELL_X20_Y15_N24
\inst5|cursor_row~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~5_combout\ = ( \inst5|cursor_row\(8) & ( \inst5|cursor_row\(7) & ( (!\inst5|cursor_row~4_combout\) # ((!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0))) ) ) ) # ( !\inst5|cursor_row\(8) & ( \inst5|cursor_row\(7) & ( 
-- (!\inst5|cursor_row~4_combout\) # ((!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0))) ) ) ) # ( \inst5|cursor_row\(8) & ( !\inst5|cursor_row\(7) & ( (!\inst5|cursor_row~4_combout\) # ((!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0))) ) ) ) # ( 
-- !\inst5|cursor_row\(8) & ( !\inst5|cursor_row\(7) & ( (!\inst5|RECV_UART~2_combout\ & (!\inst5|PACKET_COUNT\(1) & (!\inst5|PACKET_COUNT\(0)))) # (\inst5|RECV_UART~2_combout\ & ((!\inst5|cursor_row~4_combout\) # ((!\inst5|PACKET_COUNT\(1) & 
-- !\inst5|PACKET_COUNT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111000000111111111100000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~2_combout\,
	datab => \inst5|ALT_INV_PACKET_COUNT\(1),
	datac => \inst5|ALT_INV_PACKET_COUNT\(0),
	datad => \inst5|ALT_INV_cursor_row~4_combout\,
	datae => \inst5|ALT_INV_cursor_row\(8),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst5|cursor_row~5_combout\);

-- Location: FF_X20_Y15_N26
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

-- Location: FF_X19_Y15_N23
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

-- Location: LABCELL_X20_Y15_N6
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

-- Location: LABCELL_X19_Y15_N39
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

-- Location: FF_X19_Y15_N38
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

-- Location: LABCELL_X19_Y15_N33
\inst5|cursor_row~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~0_combout\ = ( !\inst5|new_cursor_row\(9) & ( !\inst5|new_cursor_row\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_row\(8),
	dataf => \inst5|ALT_INV_new_cursor_row\(9),
	combout => \inst5|cursor_row~0_combout\);

-- Location: LABCELL_X19_Y15_N45
\inst5|cursor_row~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_row~1_combout\ = ( \inst5|PACKET_COUNT\(0) & ( !\inst5|cursor_row~0_combout\ & ( ((\inst5|cursor_row\(8)) # (\inst5|RECV_UART~2_combout\)) # (\inst5|cursor_row\(7)) ) ) ) # ( !\inst5|PACKET_COUNT\(0) & ( !\inst5|cursor_row~0_combout\ & ( 
-- (\inst5|PACKET_COUNT\(1) & (((\inst5|cursor_row\(8)) # (\inst5|RECV_UART~2_combout\)) # (\inst5|cursor_row\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111011111110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_row\(7),
	datab => \inst5|ALT_INV_RECV_UART~2_combout\,
	datac => \inst5|ALT_INV_cursor_row\(8),
	datad => \inst5|ALT_INV_PACKET_COUNT\(1),
	datae => \inst5|ALT_INV_PACKET_COUNT\(0),
	dataf => \inst5|ALT_INV_cursor_row~0_combout\,
	combout => \inst5|cursor_row~1_combout\);

-- Location: FF_X19_Y15_N44
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

-- Location: LABCELL_X21_Y15_N12
\inst6|SevenSeg_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out~0_combout\ = ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) & ( !\inst5|cursor_row\(8) ) ) ) # ( !\inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) # ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) & ( \inst5|cursor_row\(8) ) ) 
-- ) # ( !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) & ( \inst5|cursor_row\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst6|SevenSeg_out~0_combout\);

-- Location: LABCELL_X21_Y15_N21
\inst6|SevenSeg_out[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[5]~1_combout\ = ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) # ( !\inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) & ( !\inst5|cursor_row\(8) ) ) ) # ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) & ( !\inst5|cursor_row\(8) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst6|SevenSeg_out[5]~1_combout\);

-- Location: LABCELL_X21_Y15_N24
\inst6|SevenSeg_out[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[4]~2_combout\ = ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) # ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) ) # ( !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) & ( \inst5|cursor_row\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst6|SevenSeg_out[4]~2_combout\);

-- Location: LABCELL_X21_Y15_N57
\inst6|SevenSeg_out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[3]~3_combout\ = ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) & ( \inst5|cursor_row\(8) ) ) ) # ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) & ( !\inst5|cursor_row\(8) ) ) ) # ( !\inst5|cursor_row\(6) & ( 
-- !\inst5|cursor_row\(7) & ( \inst5|cursor_row\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst6|SevenSeg_out[3]~3_combout\);

-- Location: LABCELL_X21_Y15_N0
\inst6|SevenSeg_out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[2]~4_combout\ = ( !\inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) & ( !\inst5|cursor_row\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst6|SevenSeg_out[2]~4_combout\);

-- Location: LABCELL_X21_Y15_N30
\inst6|SevenSeg_out[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[1]~5_combout\ = ( \inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) ) ) # ( !\inst5|cursor_row\(6) & ( \inst5|cursor_row\(7) & ( !\inst5|cursor_row\(8) ) ) ) # ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) & ( !\inst5|cursor_row\(8) 
-- ) ) ) # ( !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001100110011001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst6|SevenSeg_out[1]~5_combout\);

-- Location: LABCELL_X21_Y15_N51
\inst6|SevenSeg_out[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|SevenSeg_out[3]~6_combout\ = ( \inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) & ( !\inst5|cursor_row\(8) ) ) ) # ( !\inst5|cursor_row\(6) & ( !\inst5|cursor_row\(7) & ( \inst5|cursor_row\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_row\(8),
	datae => \inst5|ALT_INV_cursor_row\(6),
	dataf => \inst5|ALT_INV_cursor_row\(7),
	combout => \inst6|SevenSeg_out[3]~6_combout\);

-- Location: LABCELL_X17_Y14_N36
\inst5|PACKET_CHAR2[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[7]~1_combout\ = ( \inst5|PACKET_COUNT\(1) & ( !\inst5|mouse_state.WAIT_OUTPUT_READY~q\ & ( (!\inst5|PACKET_COUNT\(0) & (\inst5|READ_CHAR~q\ & \inst5|LessThan1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_PACKET_COUNT\(0),
	datab => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_LessThan1~0_combout\,
	datae => \inst5|ALT_INV_PACKET_COUNT\(1),
	dataf => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst5|PACKET_CHAR2[7]~1_combout\);

-- Location: FF_X17_Y14_N8
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

-- Location: LABCELL_X19_Y14_N45
\inst7|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = ( !\inst5|cursor_column\(8) & ( (!\inst5|cursor_column\(7) & !\inst5|cursor_column\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(7),
	datad => \inst5|ALT_INV_cursor_column\(9),
	dataf => \inst5|ALT_INV_cursor_column\(8),
	combout => \inst7|Equal0~0_combout\);

-- Location: LABCELL_X17_Y14_N33
\inst5|PACKET_CHAR2[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[6]~feeder_combout\ = \inst5|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_SHIFTIN\(6),
	combout => \inst5|PACKET_CHAR2[6]~feeder_combout\);

-- Location: FF_X17_Y14_N35
\inst5|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR2[6]~feeder_combout\,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(6));

-- Location: FF_X17_Y14_N59
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

-- Location: FF_X17_Y14_N14
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

-- Location: MLABCELL_X18_Y14_N21
\inst5|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~33_sumout\ = SUM(( \inst5|cursor_column\(7) ) + ( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|Add5~2\ ))
-- \inst5|Add5~34\ = CARRY(( \inst5|cursor_column\(7) ) + ( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_PACKET_CHAR2\(7),
	cin => \inst5|Add5~2\,
	sumout => \inst5|Add5~33_sumout\,
	cout => \inst5|Add5~34\);

-- Location: MLABCELL_X18_Y14_N24
\inst5|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~37_sumout\ = SUM(( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|cursor_column\(8) ) + ( \inst5|Add5~34\ ))
-- \inst5|Add5~38\ = CARRY(( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|cursor_column\(8) ) + ( \inst5|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(8),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(7),
	cin => \inst5|Add5~34\,
	sumout => \inst5|Add5~37_sumout\,
	cout => \inst5|Add5~38\);

-- Location: FF_X18_Y14_N26
\inst5|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~37_sumout\,
	asdata => VCC,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(8));

-- Location: MLABCELL_X18_Y14_N30
\inst5|cursor_column~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~4_combout\ = ( !\inst5|new_cursor_column\(9) & ( \inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(0) ) ) ) # ( \inst5|new_cursor_column\(9) & ( !\inst5|new_cursor_column\(8) & ( (\inst5|new_cursor_column\(0) & 
-- !\inst5|new_cursor_column\(7)) ) ) ) # ( !\inst5|new_cursor_column\(9) & ( !\inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(0),
	datac => \inst5|ALT_INV_new_cursor_column\(7),
	datae => \inst5|ALT_INV_new_cursor_column\(9),
	dataf => \inst5|ALT_INV_new_cursor_column\(8),
	combout => \inst5|cursor_column~4_combout\);

-- Location: FF_X19_Y14_N40
\inst5|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|cursor_column~4_combout\,
	sclr => \inst5|cursor_column[5]~1_combout\,
	sload => VCC,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(0));

-- Location: LABCELL_X17_Y14_N30
\inst5|PACKET_CHAR2[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[0]~feeder_combout\ = ( \inst5|SHIFTIN\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst5|ALT_INV_SHIFTIN\(0),
	combout => \inst5|PACKET_CHAR2[0]~feeder_combout\);

-- Location: FF_X17_Y14_N32
\inst5|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR2[0]~feeder_combout\,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(0));

-- Location: MLABCELL_X18_Y14_N0
\inst5|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~5_sumout\ = SUM(( \inst5|PACKET_CHAR2\(0) ) + ( \inst5|cursor_column\(0) ) + ( !VCC ))
-- \inst5|Add5~6\ = CARRY(( \inst5|PACKET_CHAR2\(0) ) + ( \inst5|cursor_column\(0) ) + ( !VCC ))

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
	sumout => \inst5|Add5~5_sumout\,
	cout => \inst5|Add5~6\);

-- Location: FF_X18_Y14_N2
\inst5|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|Add5~5_sumout\,
	asdata => \~GND~combout\,
	sload => \inst5|Equal4~0_combout\,
	ena => \inst5|new_cursor_row[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|new_cursor_column\(0));

-- Location: FF_X17_Y14_N11
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

-- Location: LABCELL_X17_Y14_N54
\inst5|PACKET_CHAR2[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR2[2]~feeder_combout\ = \inst5|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_SHIFTIN\(2),
	combout => \inst5|PACKET_CHAR2[2]~feeder_combout\);

-- Location: FF_X17_Y14_N56
\inst5|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|PACKET_CHAR2[2]~feeder_combout\,
	ena => \inst5|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|PACKET_CHAR2\(2));

-- Location: FF_X17_Y14_N17
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

-- Location: MLABCELL_X18_Y14_N3
\inst5|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~25_sumout\ = SUM(( \inst5|cursor_column\(1) ) + ( \inst5|PACKET_CHAR2\(1) ) + ( \inst5|Add5~6\ ))
-- \inst5|Add5~26\ = CARRY(( \inst5|cursor_column\(1) ) + ( \inst5|PACKET_CHAR2\(1) ) + ( \inst5|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_PACKET_CHAR2\(1),
	datad => \inst5|ALT_INV_cursor_column\(1),
	cin => \inst5|Add5~6\,
	sumout => \inst5|Add5~25_sumout\,
	cout => \inst5|Add5~26\);

-- Location: FF_X18_Y14_N5
\inst5|new_cursor_column[1]\ : dffeas
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
	q => \inst5|new_cursor_column\(1));

-- Location: LABCELL_X19_Y14_N54
\inst5|cursor_column~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~9_combout\ = ( \inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(1) & ( !\inst5|new_cursor_column\(9) ) ) ) # ( !\inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(1) & ( (!\inst5|new_cursor_column\(7)) # 
-- ((!\inst5|new_cursor_column\(9)) # ((\inst5|RECV_UART~3_combout\ & !\inst5|new_cursor_column\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110111001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~3_combout\,
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(0),
	datad => \inst5|ALT_INV_new_cursor_column\(9),
	datae => \inst5|ALT_INV_new_cursor_column\(8),
	dataf => \inst5|ALT_INV_new_cursor_column\(1),
	combout => \inst5|cursor_column~9_combout\);

-- Location: FF_X19_Y14_N55
\inst5|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~9_combout\,
	sclr => \inst5|cursor_column[5]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(1));

-- Location: MLABCELL_X18_Y14_N6
\inst5|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~21_sumout\ = SUM(( \inst5|PACKET_CHAR2\(2) ) + ( \inst5|cursor_column\(2) ) + ( \inst5|Add5~26\ ))
-- \inst5|Add5~22\ = CARRY(( \inst5|PACKET_CHAR2\(2) ) + ( \inst5|cursor_column\(2) ) + ( \inst5|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_cursor_column\(2),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(2),
	cin => \inst5|Add5~26\,
	sumout => \inst5|Add5~21_sumout\,
	cout => \inst5|Add5~22\);

-- Location: FF_X18_Y14_N8
\inst5|new_cursor_column[2]\ : dffeas
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
	q => \inst5|new_cursor_column\(2));

-- Location: LABCELL_X19_Y14_N27
\inst5|cursor_column~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~8_combout\ = ( \inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(2) & ( !\inst5|new_cursor_column\(9) ) ) ) # ( !\inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(2) & ( (!\inst5|new_cursor_column\(7)) # 
-- ((!\inst5|new_cursor_column\(9)) # ((\inst5|RECV_UART~3_combout\ & !\inst5|new_cursor_column\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101111111001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~3_combout\,
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(9),
	datad => \inst5|ALT_INV_new_cursor_column\(0),
	datae => \inst5|ALT_INV_new_cursor_column\(8),
	dataf => \inst5|ALT_INV_new_cursor_column\(2),
	combout => \inst5|cursor_column~8_combout\);

-- Location: FF_X19_Y14_N29
\inst5|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~8_combout\,
	sclr => \inst5|cursor_column[5]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(2));

-- Location: MLABCELL_X18_Y14_N9
\inst5|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~17_sumout\ = SUM(( \inst5|PACKET_CHAR2\(3) ) + ( \inst5|cursor_column\(3) ) + ( \inst5|Add5~22\ ))
-- \inst5|Add5~18\ = CARRY(( \inst5|PACKET_CHAR2\(3) ) + ( \inst5|cursor_column\(3) ) + ( \inst5|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(3),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(3),
	cin => \inst5|Add5~22\,
	sumout => \inst5|Add5~17_sumout\,
	cout => \inst5|Add5~18\);

-- Location: FF_X18_Y14_N11
\inst5|new_cursor_column[3]\ : dffeas
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
	q => \inst5|new_cursor_column\(3));

-- Location: LABCELL_X19_Y14_N24
\inst5|cursor_column~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~7_combout\ = ( \inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(3) & ( !\inst5|new_cursor_column\(9) ) ) ) # ( !\inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(3) & ( (!\inst5|new_cursor_column\(7)) # 
-- ((!\inst5|new_cursor_column\(9)) # ((\inst5|RECV_UART~3_combout\ & !\inst5|new_cursor_column\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110111001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~3_combout\,
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(0),
	datad => \inst5|ALT_INV_new_cursor_column\(9),
	datae => \inst5|ALT_INV_new_cursor_column\(8),
	dataf => \inst5|ALT_INV_new_cursor_column\(3),
	combout => \inst5|cursor_column~7_combout\);

-- Location: FF_X19_Y14_N25
\inst5|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~7_combout\,
	sclr => \inst5|cursor_column[5]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(3));

-- Location: MLABCELL_X18_Y14_N12
\inst5|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~13_sumout\ = SUM(( \inst5|PACKET_CHAR2\(4) ) + ( \inst5|cursor_column\(4) ) + ( \inst5|Add5~18\ ))
-- \inst5|Add5~14\ = CARRY(( \inst5|PACKET_CHAR2\(4) ) + ( \inst5|cursor_column\(4) ) + ( \inst5|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(4),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(4),
	cin => \inst5|Add5~18\,
	sumout => \inst5|Add5~13_sumout\,
	cout => \inst5|Add5~14\);

-- Location: FF_X18_Y14_N14
\inst5|new_cursor_column[4]\ : dffeas
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
	q => \inst5|new_cursor_column\(4));

-- Location: LABCELL_X19_Y14_N51
\inst5|RECV_UART~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~3_combout\ = ( !\inst5|new_cursor_column\(2) & ( !\inst5|new_cursor_column\(1) & ( (!\inst5|new_cursor_column\(5) & (!\inst5|new_cursor_column\(4) & (!\inst5|new_cursor_column\(3) & !\inst5|new_cursor_column\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(5),
	datab => \inst5|ALT_INV_new_cursor_column\(4),
	datac => \inst5|ALT_INV_new_cursor_column\(3),
	datad => \inst5|ALT_INV_new_cursor_column\(6),
	datae => \inst5|ALT_INV_new_cursor_column\(2),
	dataf => \inst5|ALT_INV_new_cursor_column\(1),
	combout => \inst5|RECV_UART~3_combout\);

-- Location: LABCELL_X19_Y14_N57
\inst5|cursor_column~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~6_combout\ = ( \inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(4) & ( !\inst5|new_cursor_column\(9) ) ) ) # ( !\inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(4) & ( (!\inst5|new_cursor_column\(7)) # 
-- ((!\inst5|new_cursor_column\(9)) # ((\inst5|RECV_UART~3_combout\ & !\inst5|new_cursor_column\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101111111001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_RECV_UART~3_combout\,
	datab => \inst5|ALT_INV_new_cursor_column\(7),
	datac => \inst5|ALT_INV_new_cursor_column\(9),
	datad => \inst5|ALT_INV_new_cursor_column\(0),
	datae => \inst5|ALT_INV_new_cursor_column\(8),
	dataf => \inst5|ALT_INV_new_cursor_column\(4),
	combout => \inst5|cursor_column~6_combout\);

-- Location: FF_X19_Y14_N59
\inst5|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~6_combout\,
	sclr => \inst5|cursor_column[5]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(4));

-- Location: MLABCELL_X18_Y14_N15
\inst5|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~9_sumout\ = SUM(( \inst5|cursor_column\(5) ) + ( \inst5|PACKET_CHAR2\(5) ) + ( \inst5|Add5~14\ ))
-- \inst5|Add5~10\ = CARRY(( \inst5|cursor_column\(5) ) + ( \inst5|PACKET_CHAR2\(5) ) + ( \inst5|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(5),
	datac => \inst5|ALT_INV_PACKET_CHAR2\(5),
	cin => \inst5|Add5~14\,
	sumout => \inst5|Add5~9_sumout\,
	cout => \inst5|Add5~10\);

-- Location: FF_X18_Y14_N17
\inst5|new_cursor_column[5]\ : dffeas
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
	q => \inst5|new_cursor_column\(5));

-- Location: LABCELL_X19_Y14_N36
\inst5|cursor_column~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~5_combout\ = ( \inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(7) & ( (\inst5|new_cursor_column\(5) & !\inst5|new_cursor_column\(9)) ) ) ) # ( !\inst5|new_cursor_column\(8) & ( \inst5|new_cursor_column\(7) & ( 
-- (\inst5|new_cursor_column\(5) & ((!\inst5|new_cursor_column\(9)) # ((\inst5|RECV_UART~3_combout\ & !\inst5|new_cursor_column\(0))))) ) ) ) # ( \inst5|new_cursor_column\(8) & ( !\inst5|new_cursor_column\(7) & ( (\inst5|new_cursor_column\(5) & 
-- !\inst5|new_cursor_column\(9)) ) ) ) # ( !\inst5|new_cursor_column\(8) & ( !\inst5|new_cursor_column\(7) & ( \inst5|new_cursor_column\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010000000001010101000100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(5),
	datab => \inst5|ALT_INV_RECV_UART~3_combout\,
	datac => \inst5|ALT_INV_new_cursor_column\(0),
	datad => \inst5|ALT_INV_new_cursor_column\(9),
	datae => \inst5|ALT_INV_new_cursor_column\(8),
	dataf => \inst5|ALT_INV_new_cursor_column\(7),
	combout => \inst5|cursor_column~5_combout\);

-- Location: FF_X19_Y14_N37
\inst5|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~5_combout\,
	sclr => \inst5|cursor_column[5]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(5));

-- Location: MLABCELL_X18_Y14_N18
\inst5|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~1_sumout\ = SUM(( \inst5|PACKET_CHAR2\(6) ) + ( \inst5|cursor_column\(6) ) + ( \inst5|Add5~10\ ))
-- \inst5|Add5~2\ = CARRY(( \inst5|PACKET_CHAR2\(6) ) + ( \inst5|cursor_column\(6) ) + ( \inst5|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_cursor_column\(6),
	datad => \inst5|ALT_INV_PACKET_CHAR2\(6),
	cin => \inst5|Add5~10\,
	sumout => \inst5|Add5~1_sumout\,
	cout => \inst5|Add5~2\);

-- Location: FF_X18_Y14_N20
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

-- Location: LABCELL_X19_Y14_N21
\inst5|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|LessThan9~0_combout\ = ( \inst5|RECV_UART~3_combout\ & ( (\inst5|new_cursor_column\(9) & (((\inst5|new_cursor_column\(0) & \inst5|new_cursor_column\(7))) # (\inst5|new_cursor_column\(8)))) ) ) # ( !\inst5|RECV_UART~3_combout\ & ( 
-- (\inst5|new_cursor_column\(9) & ((\inst5|new_cursor_column\(7)) # (\inst5|new_cursor_column\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100000011000100110000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(0),
	datab => \inst5|ALT_INV_new_cursor_column\(9),
	datac => \inst5|ALT_INV_new_cursor_column\(8),
	datad => \inst5|ALT_INV_new_cursor_column\(7),
	dataf => \inst5|ALT_INV_RECV_UART~3_combout\,
	combout => \inst5|LessThan9~0_combout\);

-- Location: LABCELL_X19_Y14_N9
\inst5|cursor_column~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~0_combout\ = ( \inst5|LessThan9~0_combout\ & ( \inst5|Equal3~0_combout\ ) ) # ( !\inst5|LessThan9~0_combout\ & ( ((\inst5|new_cursor_column\(6) & ((!\inst7|Equal0~0_combout\) # (\inst5|RECV_UART~4_combout\)))) # 
-- (\inst5|Equal3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011111010101011101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Equal3~0_combout\,
	datab => \inst7|ALT_INV_Equal0~0_combout\,
	datac => \inst5|ALT_INV_RECV_UART~4_combout\,
	datad => \inst5|ALT_INV_new_cursor_column\(6),
	dataf => \inst5|ALT_INV_LessThan9~0_combout\,
	combout => \inst5|cursor_column~0_combout\);

-- Location: FF_X19_Y14_N11
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

-- Location: FF_X18_Y14_N23
\inst5|new_cursor_column[7]\ : dffeas
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
	q => \inst5|new_cursor_column\(7));

-- Location: LABCELL_X19_Y14_N42
\inst5|RECV_UART~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|RECV_UART~4_combout\ = ( \inst5|RECV_UART~3_combout\ & ( (!\inst5|new_cursor_column\(9) & ((!\inst5|new_cursor_column\(7) & (!\inst5|new_cursor_column\(0) & \inst5|new_cursor_column\(8))) # (\inst5|new_cursor_column\(7) & 
-- ((!\inst5|new_cursor_column\(8)))))) ) ) # ( !\inst5|RECV_UART~3_combout\ & ( (!\inst5|new_cursor_column\(9) & !\inst5|new_cursor_column\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000001000100100000000100010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_new_cursor_column\(7),
	datab => \inst5|ALT_INV_new_cursor_column\(9),
	datac => \inst5|ALT_INV_new_cursor_column\(0),
	datad => \inst5|ALT_INV_new_cursor_column\(8),
	dataf => \inst5|ALT_INV_RECV_UART~3_combout\,
	combout => \inst5|RECV_UART~4_combout\);

-- Location: LABCELL_X19_Y14_N0
\inst5|cursor_column~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~2_combout\ = ( \inst5|LessThan9~0_combout\ & ( \inst5|Equal3~0_combout\ ) ) # ( !\inst5|LessThan9~0_combout\ & ( ((\inst5|new_cursor_column\(8) & ((!\inst7|Equal0~0_combout\) # (\inst5|RECV_UART~4_combout\)))) # 
-- (\inst5|Equal3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111011111010101011101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_Equal3~0_combout\,
	datab => \inst7|ALT_INV_Equal0~0_combout\,
	datac => \inst5|ALT_INV_RECV_UART~4_combout\,
	datad => \inst5|ALT_INV_new_cursor_column\(8),
	dataf => \inst5|ALT_INV_LessThan9~0_combout\,
	combout => \inst5|cursor_column~2_combout\);

-- Location: FF_X19_Y14_N2
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

-- Location: LABCELL_X19_Y14_N15
\inst5|cursor_column[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column[5]~1_combout\ = ( \inst5|cursor_column\(7) & ( \inst5|RECV_UART~4_combout\ & ( (!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0)) ) ) ) # ( !\inst5|cursor_column\(7) & ( \inst5|RECV_UART~4_combout\ & ( (!\inst5|PACKET_COUNT\(1) & 
-- !\inst5|PACKET_COUNT\(0)) ) ) ) # ( \inst5|cursor_column\(7) & ( !\inst5|RECV_UART~4_combout\ & ( (!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0)) ) ) ) # ( !\inst5|cursor_column\(7) & ( !\inst5|RECV_UART~4_combout\ & ( (!\inst5|cursor_column\(8) & 
-- ((!\inst5|cursor_column\(9)) # ((!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0))))) # (\inst5|cursor_column\(8) & (((!\inst5|PACKET_COUNT\(1) & !\inst5|PACKET_COUNT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010001000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(8),
	datab => \inst5|ALT_INV_cursor_column\(9),
	datac => \inst5|ALT_INV_PACKET_COUNT\(1),
	datad => \inst5|ALT_INV_PACKET_COUNT\(0),
	datae => \inst5|ALT_INV_cursor_column\(7),
	dataf => \inst5|ALT_INV_RECV_UART~4_combout\,
	combout => \inst5|cursor_column[5]~1_combout\);

-- Location: FF_X19_Y14_N47
\inst5|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	asdata => \inst5|new_cursor_column\(9),
	sclr => \inst5|cursor_column[5]~1_combout\,
	sload => VCC,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(9));

-- Location: MLABCELL_X18_Y14_N27
\inst5|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Add5~29_sumout\ = SUM(( \inst5|cursor_column\(9) ) + ( \inst5|PACKET_CHAR2\(7) ) + ( \inst5|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR2\(7),
	datac => \inst5|ALT_INV_cursor_column\(9),
	cin => \inst5|Add5~38\,
	sumout => \inst5|Add5~29_sumout\);

-- Location: FF_X18_Y14_N29
\inst5|new_cursor_column[9]\ : dffeas
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
	q => \inst5|new_cursor_column\(9));

-- Location: LABCELL_X19_Y14_N30
\inst5|cursor_column~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|cursor_column~3_combout\ = ( \inst5|new_cursor_column\(7) ) # ( !\inst5|new_cursor_column\(7) & ( (\inst5|new_cursor_column\(9) & \inst5|new_cursor_column\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ALT_INV_new_cursor_column\(9),
	datad => \inst5|ALT_INV_new_cursor_column\(8),
	dataf => \inst5|ALT_INV_new_cursor_column\(7),
	combout => \inst5|cursor_column~3_combout\);

-- Location: FF_X19_Y14_N32
\inst5|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|cursor_column~3_combout\,
	sclr => \inst5|cursor_column[5]~1_combout\,
	ena => \inst5|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cursor_column\(7));

-- Location: LABCELL_X40_Y2_N48
\inst7|SevenSeg_out[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[6]~0_combout\ = ( \inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) ) # ( !\inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( !\inst5|cursor_column\(7) $ 
-- (\inst5|cursor_column\(8)) ) ) ) # ( \inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) ) # ( !\inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (!\inst5|cursor_column\(7) & 
-- !\inst5|cursor_column\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010111110101111110100101101001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(8),
	datae => \inst5|ALT_INV_cursor_column\(9),
	dataf => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst7|SevenSeg_out[6]~0_combout\);

-- Location: LABCELL_X40_Y2_N36
\inst7|SevenSeg_out[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[5]~6_combout\ = ( \inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) ) # ( !\inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( (!\inst5|cursor_column\(8)) # 
-- (\inst5|cursor_column\(7)) ) ) ) # ( \inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) ) # ( !\inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(7) & 
-- !\inst5|cursor_column\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111111110101111101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(8),
	datae => \inst5|ALT_INV_cursor_column\(9),
	dataf => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst7|SevenSeg_out[5]~6_combout\);

-- Location: LABCELL_X40_Y2_N33
\inst7|SevenSeg_out[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[4]~1_combout\ = ( \inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) ) ) # ( !\inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) ) ) # ( \inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(7)) # 
-- (\inst5|cursor_column\(8)) ) ) ) # ( !\inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8) & !\inst5|cursor_column\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(8),
	datad => \inst5|ALT_INV_cursor_column\(7),
	datae => \inst5|ALT_INV_cursor_column\(9),
	dataf => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst7|SevenSeg_out[4]~1_combout\);

-- Location: LABCELL_X40_Y2_N45
\inst7|SevenSeg_out[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[3]~5_combout\ = ( \inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( (\inst5|cursor_column\(7)) # (\inst5|cursor_column\(8)) ) ) ) # ( !\inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( !\inst5|cursor_column\(8) $ 
-- (\inst5|cursor_column\(7)) ) ) ) # ( \inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(7)) # (\inst5|cursor_column\(8)) ) ) ) # ( !\inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8) & 
-- !\inst5|cursor_column\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111110101010010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(8),
	datad => \inst5|ALT_INV_cursor_column\(7),
	datae => \inst5|ALT_INV_cursor_column\(9),
	dataf => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst7|SevenSeg_out[3]~5_combout\);

-- Location: LABCELL_X40_Y2_N24
\inst7|SevenSeg_out[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[2]~4_combout\ = ( \inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) ) # ( \inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8)) # 
-- (\inst5|cursor_column\(7)) ) ) ) # ( !\inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(7) & !\inst5|cursor_column\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(8),
	datae => \inst5|ALT_INV_cursor_column\(9),
	dataf => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst7|SevenSeg_out[2]~4_combout\);

-- Location: LABCELL_X40_Y2_N21
\inst7|SevenSeg_out[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[1]~3_combout\ = ( \inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( (!\inst5|cursor_column\(8) & !\inst5|cursor_column\(7)) ) ) ) # ( !\inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( (!\inst5|cursor_column\(8)) # 
-- (\inst5|cursor_column\(7)) ) ) ) # ( \inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (!\inst5|cursor_column\(8) & !\inst5|cursor_column\(7)) ) ) ) # ( !\inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (!\inst5|cursor_column\(8)) # 
-- (!\inst5|cursor_column\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010101010100000000010101010111111111010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(8),
	datad => \inst5|ALT_INV_cursor_column\(7),
	datae => \inst5|ALT_INV_cursor_column\(9),
	dataf => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst7|SevenSeg_out[1]~3_combout\);

-- Location: LABCELL_X40_Y2_N12
\inst7|SevenSeg_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|SevenSeg_out[0]~2_combout\ = ( \inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) ) # ( !\inst5|cursor_column\(9) & ( \inst5|cursor_column\(6) & ( (!\inst5|cursor_column\(7) & 
-- !\inst5|cursor_column\(8)) ) ) ) # ( \inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (\inst5|cursor_column\(8)) # (\inst5|cursor_column\(7)) ) ) ) # ( !\inst5|cursor_column\(9) & ( !\inst5|cursor_column\(6) & ( (!\inst5|cursor_column\(7) & 
-- \inst5|cursor_column\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111110100000101000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_cursor_column\(7),
	datac => \inst5|ALT_INV_cursor_column\(8),
	datae => \inst5|ALT_INV_cursor_column\(9),
	dataf => \inst5|ALT_INV_cursor_column\(6),
	combout => \inst7|SevenSeg_out[0]~2_combout\);

-- Location: MLABCELL_X18_Y14_N51
\inst5|PACKET_CHAR1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|PACKET_CHAR1[1]~1_combout\ = ( \inst5|PACKET_COUNT\(0) & ( !\inst5|PACKET_COUNT\(1) & ( (\inst5|READ_CHAR~q\ & (\inst5|LessThan1~0_combout\ & !\inst5|mouse_state.WAIT_OUTPUT_READY~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ALT_INV_READ_CHAR~q\,
	datac => \inst5|ALT_INV_LessThan1~0_combout\,
	datad => \inst5|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	datae => \inst5|ALT_INV_PACKET_COUNT\(0),
	dataf => \inst5|ALT_INV_PACKET_COUNT\(1),
	combout => \inst5|PACKET_CHAR1[1]~1_combout\);

-- Location: FF_X18_Y14_N53
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

-- Location: MLABCELL_X18_Y15_N18
\inst5|right_button~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|right_button~feeder_combout\ = \inst5|PACKET_CHAR1\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ALT_INV_PACKET_CHAR1\(1),
	combout => \inst5|right_button~feeder_combout\);

-- Location: FF_X18_Y15_N19
\inst5|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_MOUSE_CLK_FILTER~q\,
	d => \inst5|right_button~feeder_combout\,
	ena => \inst5|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|right_button~q\);

-- Location: FF_X18_Y14_N46
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

-- Location: FF_X19_Y27_N17
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

-- Location: MLABCELL_X18_Y28_N33
\inst2|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = ( \inst2|v_count\(6) & ( (!\inst2|v_count\(9) & ((!\inst2|v_count\(5)) # ((!\inst2|v_count\(7)) # (!\inst2|v_count\(8))))) ) ) # ( !\inst2|v_count\(6) & ( !\inst2|v_count\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_v_count\(9),
	datab => \inst2|ALT_INV_v_count\(5),
	datac => \inst2|ALT_INV_v_count\(7),
	datad => \inst2|ALT_INV_v_count\(8),
	dataf => \inst2|ALT_INV_v_count\(6),
	combout => \inst2|LessThan7~1_combout\);

-- Location: FF_X18_Y28_N41
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

-- Location: FF_X18_Y28_N52
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

-- Location: FF_X18_Y28_N11
\inst2|v_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|Add1~5_sumout\,
	sclr => \inst2|process_0~7_combout\,
	ena => \inst2|v_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count[3]~DUPLICATE_q\);

-- Location: FF_X18_Y28_N44
\inst2|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|v_count[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(3));

-- Location: LABCELL_X19_Y28_N3
\inst2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~0_combout\ = ( \inst2|h_count\(7) & ( !\inst2|h_count\(9) ) ) # ( !\inst2|h_count\(7) & ( (!\inst2|h_count\(9)) # (!\inst2|h_count[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_h_count\(9),
	datad => \inst2|ALT_INV_h_count[8]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_h_count\(7),
	combout => \inst2|LessThan6~0_combout\);

-- Location: FF_X19_Y28_N31
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

-- Location: FF_X19_Y28_N22
\inst2|pixel_column[2]~DUPLICATE\ : dffeas
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
	q => \inst2|pixel_column[2]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y28_N24
\inst2|pixel_column[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[1]~feeder_combout\ = ( \inst2|h_count\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_h_count\(1),
	combout => \inst2|pixel_column[1]~feeder_combout\);

-- Location: FF_X19_Y28_N26
\inst2|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|pixel_column[1]~feeder_combout\,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(1));

-- Location: FF_X19_Y28_N46
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

-- Location: LABCELL_X19_Y28_N39
\inst8|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|LessThan2~0_combout\ = ( !\inst2|pixel_column\(3) & ( (!\inst2|pixel_column\(0) & (!\inst2|pixel_column[2]~DUPLICATE_q\ & !\inst2|pixel_column\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000000000000010001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(0),
	datab => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_column\(1),
	datae => \inst2|ALT_INV_pixel_column\(3),
	combout => \inst8|LessThan2~0_combout\);

-- Location: LABCELL_X19_Y28_N18
\inst2|pixel_column[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[4]~feeder_combout\ = ( \inst2|h_count[4]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_h_count[4]~DUPLICATE_q\,
	combout => \inst2|pixel_column[4]~feeder_combout\);

-- Location: FF_X19_Y28_N19
\inst2|pixel_column[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|pixel_column[4]~feeder_combout\,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column[4]~DUPLICATE_q\);

-- Location: FF_X19_Y28_N37
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

-- Location: FF_X18_Y27_N35
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

-- Location: FF_X20_Y27_N5
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

-- Location: LABCELL_X20_Y27_N0
\inst8|char_address~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|char_address~0_combout\ = ( \inst2|pixel_row\(0) & ( \inst2|pixel_row\(1) & ( (!\inst2|pixel_row\(4) & ((!\inst2|pixel_row\(2)) # (!\inst2|pixel_row\(3)))) ) ) ) # ( !\inst2|pixel_row\(0) & ( \inst2|pixel_row\(1) & ( !\inst2|pixel_row\(4) ) ) ) # ( 
-- \inst2|pixel_row\(0) & ( !\inst2|pixel_row\(1) & ( !\inst2|pixel_row\(4) ) ) ) # ( !\inst2|pixel_row\(0) & ( !\inst2|pixel_row\(1) & ( !\inst2|pixel_row\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(4),
	datab => \inst2|ALT_INV_pixel_row\(2),
	datac => \inst2|ALT_INV_pixel_row\(3),
	datae => \inst2|ALT_INV_pixel_row\(0),
	dataf => \inst2|ALT_INV_pixel_row\(1),
	combout => \inst8|char_address~0_combout\);

-- Location: FF_X18_Y27_N52
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

-- Location: FF_X18_Y28_N47
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

-- Location: FF_X18_Y28_N59
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

-- Location: FF_X18_Y28_N49
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

-- Location: MLABCELL_X18_Y27_N48
\inst8|char_address~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|char_address~1_combout\ = ( !\inst2|pixel_row\(6) & ( (!\inst2|pixel_row\(8) & (!\inst2|pixel_row\(7) & !\inst2|pixel_row\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(8),
	datac => \inst2|ALT_INV_pixel_row\(7),
	datad => \inst2|ALT_INV_pixel_row\(5),
	datae => \inst2|ALT_INV_pixel_row\(6),
	combout => \inst8|char_address~1_combout\);

-- Location: LABCELL_X19_Y28_N54
\inst2|pixel_column[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[7]~feeder_combout\ = ( \inst2|h_count\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_h_count\(7),
	combout => \inst2|pixel_column[7]~feeder_combout\);

-- Location: FF_X19_Y28_N56
\inst2|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|pixel_column[7]~feeder_combout\,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(7));

-- Location: FF_X19_Y28_N2
\inst2|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count[8]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(8));

-- Location: FF_X19_Y28_N14
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

-- Location: LABCELL_X19_Y28_N0
\inst8|char_address~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|char_address~2_combout\ = ( !\inst2|pixel_column\(9) & ( (!\inst8|char_address~0_combout\ & (\inst8|char_address~1_combout\ & (!\inst2|pixel_column\(7) & !\inst2|pixel_column\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_char_address~0_combout\,
	datab => \inst8|ALT_INV_char_address~1_combout\,
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst2|ALT_INV_pixel_column\(8),
	dataf => \inst2|ALT_INV_pixel_column\(9),
	combout => \inst8|char_address~2_combout\);

-- Location: FF_X19_Y28_N52
\inst2|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \inst2|h_count[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(5));

-- Location: LABCELL_X20_Y28_N24
\inst8|char_address[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|char_address[0]~3_combout\ = ( \inst2|pixel_column\(5) & ( (!\inst8|LessThan2~0_combout\ & (!\inst2|pixel_column[4]~DUPLICATE_q\ & (!\inst2|pixel_column\(6) & \inst8|char_address~2_combout\))) ) ) # ( !\inst2|pixel_column\(5) & ( 
-- (!\inst8|LessThan2~0_combout\ & (\inst8|char_address~2_combout\ & ((!\inst2|pixel_column[4]~DUPLICATE_q\) # (!\inst2|pixel_column\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_LessThan2~0_combout\,
	datab => \inst2|ALT_INV_pixel_column[4]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst8|ALT_INV_char_address~2_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst8|char_address[0]~3_combout\);

-- Location: LABCELL_X20_Y28_N33
\inst8|char_address[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|char_address[1]~4_combout\ = ( !\inst8|LessThan2~0_combout\ & ( (!\inst2|pixel_column\(6) & \inst8|char_address~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(6),
	datac => \inst8|ALT_INV_char_address~2_combout\,
	dataf => \inst8|ALT_INV_LessThan2~0_combout\,
	combout => \inst8|char_address[1]~4_combout\);

-- Location: LABCELL_X20_Y28_N12
\inst8|char_address[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|char_address[2]~5_combout\ = ( \inst2|pixel_column\(5) & ( (!\inst8|LessThan2~0_combout\ & (!\inst2|pixel_column[4]~DUPLICATE_q\ & (!\inst2|pixel_column\(6) & \inst8|char_address~2_combout\))) ) ) # ( !\inst2|pixel_column\(5) & ( 
-- (!\inst8|LessThan2~0_combout\ & (!\inst2|pixel_column[4]~DUPLICATE_q\ & (\inst2|pixel_column\(6) & \inst8|char_address~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_LessThan2~0_combout\,
	datab => \inst2|ALT_INV_pixel_column[4]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst8|ALT_INV_char_address~2_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst8|char_address[2]~5_combout\);

-- Location: LABCELL_X20_Y28_N42
\inst8|char_address[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|char_address[3]~6_combout\ = ( \inst2|pixel_column\(5) & ( (!\inst8|LessThan2~0_combout\ & (!\inst2|pixel_column[4]~DUPLICATE_q\ & (!\inst2|pixel_column\(6) & \inst8|char_address~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_LessThan2~0_combout\,
	datab => \inst2|ALT_INV_pixel_column[4]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst8|ALT_INV_char_address~2_combout\,
	dataf => \inst2|ALT_INV_pixel_column\(5),
	combout => \inst8|char_address[3]~6_combout\);

-- Location: LABCELL_X20_Y28_N36
\inst8|char_address[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|char_address[4]~7_combout\ = ( !\inst8|LessThan2~0_combout\ & ( (\inst8|char_address~2_combout\ & (!\inst2|pixel_column\(6) & (!\inst2|pixel_column\(5) $ (\inst2|pixel_column[4]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(5),
	datab => \inst8|ALT_INV_char_address~2_combout\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst2|ALT_INV_pixel_column[4]~DUPLICATE_q\,
	dataf => \inst8|ALT_INV_LessThan2~0_combout\,
	combout => \inst8|char_address[4]~7_combout\);

-- Location: LABCELL_X20_Y28_N6
\inst8|char_address[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|char_address[5]~8_combout\ = ( \inst8|LessThan2~0_combout\ ) # ( !\inst8|LessThan2~0_combout\ & ( (!\inst8|char_address~2_combout\) # ((\inst2|pixel_column\(6) & ((\inst2|pixel_column[4]~DUPLICATE_q\) # (\inst2|pixel_column\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001111110011011100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(5),
	datab => \inst8|ALT_INV_char_address~2_combout\,
	datac => \inst2|ALT_INV_pixel_column\(6),
	datad => \inst2|ALT_INV_pixel_column[4]~DUPLICATE_q\,
	dataf => \inst8|ALT_INV_LessThan2~0_combout\,
	combout => \inst8|char_address[5]~8_combout\);

-- Location: M10K_X22_Y28_N0
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

-- Location: FF_X19_Y28_N25
\inst2|pixel_column[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|pixel_column[1]~feeder_combout\,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column[1]~DUPLICATE_q\);

-- Location: MLABCELL_X23_Y28_N33
\inst9|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux0~4_combout\ = ( !\inst2|pixel_column[2]~DUPLICATE_q\ & ( (!\inst2|pixel_column[1]~DUPLICATE_q\ & (!\inst2|pixel_column\(3) & (\inst9|altsyncram_component|auto_generated|q_a\(7)))) # (\inst2|pixel_column[1]~DUPLICATE_q\ & 
-- ((((\inst9|altsyncram_component|auto_generated|q_a\(6)))) # (\inst2|pixel_column\(3)))) ) ) # ( \inst2|pixel_column[2]~DUPLICATE_q\ & ( (!\inst2|pixel_column[1]~DUPLICATE_q\ & (!\inst2|pixel_column\(3) & 
-- (\inst9|altsyncram_component|auto_generated|q_a\(5)))) # (\inst2|pixel_column[1]~DUPLICATE_q\ & ((((\inst9|altsyncram_component|auto_generated|q_a\(4)))) # (\inst2|pixel_column\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010101110101011101010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column[1]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_pixel_column\(3),
	datac => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datae => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	dataf => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datag => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \inst9|Mux0~4_combout\);

-- Location: MLABCELL_X23_Y28_N12
\inst9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = ( !\inst2|pixel_column[2]~DUPLICATE_q\ & ( ((!\inst2|pixel_column\(3) & (((\inst9|Mux0~4_combout\)))) # (\inst2|pixel_column\(3) & ((!\inst9|Mux0~4_combout\ & ((\inst9|altsyncram_component|auto_generated|q_a\(3)))) # 
-- (\inst9|Mux0~4_combout\ & (\inst9|altsyncram_component|auto_generated|q_a\(2)))))) ) ) # ( \inst2|pixel_column[2]~DUPLICATE_q\ & ( ((!\inst2|pixel_column\(3) & (((\inst9|Mux0~4_combout\)))) # (\inst2|pixel_column\(3) & ((!\inst9|Mux0~4_combout\ & 
-- ((\inst9|altsyncram_component|auto_generated|q_a\(1)))) # (\inst9|Mux0~4_combout\ & (\inst9|altsyncram_component|auto_generated|q_a\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datab => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \inst2|ALT_INV_pixel_column\(3),
	datae => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	dataf => \inst9|ALT_INV_Mux0~4_combout\,
	datag => \inst9|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \inst9|Mux0~0_combout\);

-- Location: LABCELL_X19_Y27_N27
\inst3|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~1_combout\ = (\inst3|ball_y_pos\(7) & (\inst3|ball_y_pos\(8) & \inst3|ball_y_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(7),
	datab => \inst3|ALT_INV_ball_y_pos\(8),
	datad => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|LessThan5~1_combout\);

-- Location: FF_X19_Y27_N20
\inst3|ball_y_pos[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[3]~DUPLICATE_q\);

-- Location: FF_X19_Y27_N25
\inst3|ball_y_pos[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[0]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y27_N27
\inst3|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~0_combout\ = ( \inst3|ball_y_pos[0]~DUPLICATE_q\ & ( \inst3|ball_y_pos\(4) & ( \inst3|ball_y_pos[3]~DUPLICATE_q\ ) ) ) # ( !\inst3|ball_y_pos[0]~DUPLICATE_q\ & ( \inst3|ball_y_pos\(4) & ( (\inst3|ball_y_pos[3]~DUPLICATE_q\ & 
-- ((\inst3|ball_y_pos[1]~DUPLICATE_q\) # (\inst3|ball_y_pos\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_ball_y_pos\(2),
	datad => \inst3|ALT_INV_ball_y_pos[1]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_ball_y_pos[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_ball_y_pos\(4),
	combout => \inst3|LessThan4~0_combout\);

-- Location: LABCELL_X19_Y27_N54
\inst3|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~1_sumout\ = SUM(( \inst3|ball_y_pos\(8) ) + ( \inst3|ball_y_motion\(3) ) + ( \inst3|Add7~30\ ))
-- \inst3|Add7~2\ = CARRY(( \inst3|ball_y_pos\(8) ) + ( \inst3|ball_y_motion\(3) ) + ( \inst3|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_motion\(3),
	datad => \inst3|ALT_INV_ball_y_pos\(8),
	cin => \inst3|Add7~30\,
	sumout => \inst3|Add7~1_sumout\,
	cout => \inst3|Add7~2\);

-- Location: LABCELL_X19_Y27_N57
\inst3|Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~37_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(9) ) + ( \inst3|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_ball_y_motion\(3),
	dataf => \inst3|ALT_INV_ball_y_pos\(9),
	cin => \inst3|Add7~2\,
	sumout => \inst3|Add7~37_sumout\);

-- Location: FF_X19_Y27_N50
\inst3|ball_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~37_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(9));

-- Location: LABCELL_X19_Y27_N21
\inst3|ball_y_motion~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_y_motion~2_combout\ = ( !\inst3|ball_y_pos\(9) & ( \inst5|left_button~q\ & ( (!\inst3|LessThan4~1_combout\) # (\inst3|LessThan4~0_combout\) ) ) ) # ( !\inst3|ball_y_pos\(9) & ( !\inst5|left_button~q\ & ( (!\inst3|LessThan5~1_combout\) # 
-- (\inst3|LessThan5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111000000000000000011001100111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan5~1_combout\,
	datab => \inst3|ALT_INV_LessThan4~1_combout\,
	datac => \inst3|ALT_INV_LessThan5~0_combout\,
	datad => \inst3|ALT_INV_LessThan4~0_combout\,
	datae => \inst3|ALT_INV_ball_y_pos\(9),
	dataf => \inst5|ALT_INV_left_button~q\,
	combout => \inst3|ball_y_motion~2_combout\);

-- Location: FF_X19_Y27_N23
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

-- Location: LABCELL_X19_Y27_N30
\inst3|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~17_sumout\ = SUM(( \inst3|ball_y_motion\(0) ) + ( \inst3|ball_y_pos\(0) ) + ( !VCC ))
-- \inst3|Add7~18\ = CARRY(( \inst3|ball_y_motion\(0) ) + ( \inst3|ball_y_pos\(0) ) + ( !VCC ))

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
	sumout => \inst3|Add7~17_sumout\,
	cout => \inst3|Add7~18\);

-- Location: FF_X19_Y27_N26
\inst3|ball_y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(0));

-- Location: LABCELL_X19_Y27_N33
\inst3|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~13_sumout\ = SUM(( \inst3|ball_y_pos[1]~DUPLICATE_q\ ) + ( \inst3|ball_y_motion\(1) ) + ( \inst3|Add7~18\ ))
-- \inst3|Add7~14\ = CARRY(( \inst3|ball_y_pos[1]~DUPLICATE_q\ ) + ( \inst3|ball_y_motion\(1) ) + ( \inst3|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_motion\(1),
	datac => \inst3|ALT_INV_ball_y_pos[1]~DUPLICATE_q\,
	cin => \inst3|Add7~18\,
	sumout => \inst3|Add7~13_sumout\,
	cout => \inst3|Add7~14\);

-- Location: FF_X19_Y27_N8
\inst3|ball_y_pos[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos[1]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y27_N36
\inst3|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~9_sumout\ = SUM(( \inst3|ball_y_pos\(2) ) + ( \inst3|ball_y_motion\(1) ) + ( \inst3|Add7~14\ ))
-- \inst3|Add7~10\ = CARRY(( \inst3|ball_y_pos\(2) ) + ( \inst3|ball_y_motion\(1) ) + ( \inst3|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_ball_y_motion\(1),
	datad => \inst3|ALT_INV_ball_y_pos\(2),
	cin => \inst3|Add7~14\,
	sumout => \inst3|Add7~9_sumout\,
	cout => \inst3|Add7~10\);

-- Location: FF_X19_Y27_N29
\inst3|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(2));

-- Location: FF_X19_Y27_N7
\inst3|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(1));

-- Location: LABCELL_X19_Y27_N12
\inst3|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan5~0_combout\ = ( \inst3|ball_y_pos[0]~DUPLICATE_q\ & ( \inst3|ball_y_pos\(1) & ( (!\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(5) & (!\inst3|ball_y_pos\(3) & !\inst3|ball_y_pos\(2)))) ) ) ) # ( !\inst3|ball_y_pos[0]~DUPLICATE_q\ & ( 
-- \inst3|ball_y_pos\(1) & ( (!\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(5) & !\inst3|ball_y_pos\(3))) ) ) ) # ( \inst3|ball_y_pos[0]~DUPLICATE_q\ & ( !\inst3|ball_y_pos\(1) & ( (!\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(5) & !\inst3|ball_y_pos\(3))) 
-- ) ) ) # ( !\inst3|ball_y_pos[0]~DUPLICATE_q\ & ( !\inst3|ball_y_pos\(1) & ( (!\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(5) & !\inst3|ball_y_pos\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(4),
	datab => \inst3|ALT_INV_ball_y_pos\(5),
	datac => \inst3|ALT_INV_ball_y_pos\(3),
	datad => \inst3|ALT_INV_ball_y_pos\(2),
	datae => \inst3|ALT_INV_ball_y_pos[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_ball_y_pos\(1),
	combout => \inst3|LessThan5~0_combout\);

-- Location: LABCELL_X19_Y27_N9
\inst3|ball_y_motion~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_y_motion~1_combout\ = ( !\inst3|ball_y_pos\(9) & ( !\inst5|left_button~q\ & ( (!\inst3|LessThan5~1_combout\) # (\inst3|LessThan5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_LessThan5~1_combout\,
	datac => \inst3|ALT_INV_LessThan5~0_combout\,
	datae => \inst3|ALT_INV_ball_y_pos\(9),
	dataf => \inst5|ALT_INV_left_button~q\,
	combout => \inst3|ball_y_motion~1_combout\);

-- Location: FF_X19_Y27_N11
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

-- Location: LABCELL_X19_Y27_N39
\inst3|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~5_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(3) ) + ( \inst3|Add7~10\ ))
-- \inst3|Add7~6\ = CARRY(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(3) ) + ( \inst3|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(3),
	datad => \inst3|ALT_INV_ball_y_motion\(3),
	cin => \inst3|Add7~10\,
	sumout => \inst3|Add7~5_sumout\,
	cout => \inst3|Add7~6\);

-- Location: FF_X19_Y27_N19
\inst3|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(3));

-- Location: LABCELL_X19_Y27_N42
\inst3|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~25_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(4) ) + ( \inst3|Add7~6\ ))
-- \inst3|Add7~26\ = CARRY(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(4) ) + ( \inst3|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_ball_y_pos\(4),
	datad => \inst3|ALT_INV_ball_y_motion\(3),
	cin => \inst3|Add7~6\,
	sumout => \inst3|Add7~25_sumout\,
	cout => \inst3|Add7~26\);

-- Location: FF_X19_Y27_N53
\inst3|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(4));

-- Location: LABCELL_X19_Y27_N45
\inst3|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~21_sumout\ = SUM(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(5) ) + ( \inst3|Add7~26\ ))
-- \inst3|Add7~22\ = CARRY(( \inst3|ball_y_motion\(3) ) + ( \inst3|ball_y_pos\(5) ) + ( \inst3|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(5),
	datad => \inst3|ALT_INV_ball_y_motion\(3),
	cin => \inst3|Add7~26\,
	sumout => \inst3|Add7~21_sumout\,
	cout => \inst3|Add7~22\);

-- Location: LABCELL_X19_Y27_N48
\inst3|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~33_sumout\ = SUM(( \inst3|ball_y_pos\(6) ) + ( \inst3|ball_y_motion\(3) ) + ( \inst3|Add7~22\ ))
-- \inst3|Add7~34\ = CARRY(( \inst3|ball_y_pos\(6) ) + ( \inst3|ball_y_motion\(3) ) + ( \inst3|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_motion\(3),
	datab => \inst3|ALT_INV_ball_y_pos\(6),
	cin => \inst3|Add7~22\,
	sumout => \inst3|Add7~33_sumout\,
	cout => \inst3|Add7~34\);

-- Location: FF_X19_Y27_N59
\inst3|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(6));

-- Location: LABCELL_X19_Y27_N51
\inst3|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add7~29_sumout\ = SUM(( \inst3|ball_y_pos\(7) ) + ( \inst3|ball_y_motion\(3) ) + ( \inst3|Add7~34\ ))
-- \inst3|Add7~30\ = CARRY(( \inst3|ball_y_pos\(7) ) + ( \inst3|ball_y_motion\(3) ) + ( \inst3|Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_motion\(3),
	datac => \inst3|ALT_INV_ball_y_pos\(7),
	cin => \inst3|Add7~34\,
	sumout => \inst3|Add7~29_sumout\,
	cout => \inst3|Add7~30\);

-- Location: FF_X19_Y27_N38
\inst3|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(7));

-- Location: FF_X19_Y27_N35
\inst3|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(8));

-- Location: LABCELL_X19_Y27_N3
\inst3|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan4~1_combout\ = ( !\inst3|ball_y_pos\(6) & ( (!\inst3|ball_y_pos\(8) & (!\inst3|ball_y_pos\(7) & !\inst3|ball_y_pos\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(8),
	datac => \inst3|ALT_INV_ball_y_pos\(7),
	datad => \inst3|ALT_INV_ball_y_pos\(5),
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|LessThan4~1_combout\);

-- Location: LABCELL_X19_Y27_N0
\inst3|ball_y_motion~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_y_motion~0_combout\ = ( \inst5|left_button~q\ & ( (!\inst3|ball_y_pos\(9) & ((!\inst3|LessThan4~1_combout\) # (\inst3|LessThan4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_LessThan4~1_combout\,
	datac => \inst3|ALT_INV_LessThan4~0_combout\,
	datad => \inst3|ALT_INV_ball_y_pos\(9),
	dataf => \inst5|ALT_INV_left_button~q\,
	combout => \inst3|ball_y_motion~0_combout\);

-- Location: FF_X19_Y27_N2
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

-- Location: FF_X19_Y27_N5
\inst3|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~q\,
	asdata => \inst3|Add7~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ball_y_pos\(5));

-- Location: MLABCELL_X18_Y27_N12
\inst3|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~2_combout\ = ( \inst2|pixel_row\(6) & ( \inst3|ball_y_pos\(6) & ( (!\inst3|ball_y_pos\(4) & ((!\inst2|pixel_row\(7) $ (\inst3|ball_y_pos\(7))))) # (\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(5) & (!\inst2|pixel_row\(7) $ 
-- (\inst3|ball_y_pos\(7))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( \inst3|ball_y_pos\(6) & ( (\inst3|ball_y_pos\(4) & (\inst3|ball_y_pos\(5) & (!\inst2|pixel_row\(7) $ (!\inst3|ball_y_pos\(7))))) ) ) ) # ( \inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( 
-- (\inst3|ball_y_pos\(4) & (\inst3|ball_y_pos\(5) & (!\inst2|pixel_row\(7) $ (\inst3|ball_y_pos\(7))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( (!\inst3|ball_y_pos\(4) & ((!\inst2|pixel_row\(7) $ (\inst3|ball_y_pos\(7))))) # 
-- (\inst3|ball_y_pos\(4) & (!\inst3|ball_y_pos\(5) & (!\inst2|pixel_row\(7) $ (\inst3|ball_y_pos\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000001110000100000000000100000001000100001110000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(4),
	datab => \inst3|ALT_INV_ball_y_pos\(5),
	datac => \inst2|ALT_INV_pixel_row\(7),
	datad => \inst3|ALT_INV_ball_y_pos\(7),
	datae => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|LessThan3~2_combout\);

-- Location: MLABCELL_X18_Y27_N18
\inst3|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~3_combout\ = ( \inst3|ball_y_pos\(4) & ( (\inst3|LessThan3~2_combout\ & (!\inst2|pixel_row\(4) & (!\inst3|ball_y_pos\(5) $ (!\inst2|pixel_row\(5))))) ) ) # ( !\inst3|ball_y_pos\(4) & ( (\inst3|LessThan3~2_combout\ & (\inst2|pixel_row\(4) 
-- & (!\inst3|ball_y_pos\(5) $ (\inst2|pixel_row\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000001000000100000000100010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(5),
	datab => \inst3|ALT_INV_LessThan3~2_combout\,
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst2|ALT_INV_pixel_row\(5),
	dataf => \inst3|ALT_INV_ball_y_pos\(4),
	combout => \inst3|LessThan3~3_combout\);

-- Location: MLABCELL_X18_Y27_N24
\inst3|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~4_combout\ = ( \inst2|pixel_row\(6) & ( \inst3|ball_y_pos\(6) & ( (!\inst3|ball_y_pos\(7) & (((\inst2|pixel_row\(7))))) # (\inst3|ball_y_pos\(7) & (\inst3|ball_y_pos\(4) & (\inst3|ball_y_pos\(5)))) ) ) ) # ( !\inst2|pixel_row\(6) & ( 
-- \inst3|ball_y_pos\(6) & ( (\inst2|pixel_row\(7) & (!\inst3|ball_y_pos\(7) $ (((\inst3|ball_y_pos\(4) & \inst3|ball_y_pos\(5)))))) ) ) ) # ( \inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( (!\inst2|pixel_row\(7) & (!\inst3|ball_y_pos\(7) & 
-- ((!\inst3|ball_y_pos\(4)) # (!\inst3|ball_y_pos\(5))))) # (\inst2|pixel_row\(7) & ((!\inst3|ball_y_pos\(4)) # ((!\inst3|ball_y_pos\(5)) # (!\inst3|ball_y_pos\(7))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( (\inst2|pixel_row\(7) & 
-- !\inst3|ball_y_pos\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111011110000111000001110000000010000111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(4),
	datab => \inst3|ALT_INV_ball_y_pos\(5),
	datac => \inst2|ALT_INV_pixel_row\(7),
	datad => \inst3|ALT_INV_ball_y_pos\(7),
	datae => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|LessThan3~4_combout\);

-- Location: MLABCELL_X18_Y27_N6
\inst3|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~5_combout\ = ( !\inst3|LessThan3~4_combout\ & ( \inst3|ball_y_pos\(4) & ( (!\inst3|LessThan3~2_combout\) # ((!\inst3|ball_y_pos\(5) & ((!\inst2|pixel_row\(4)) # (!\inst2|pixel_row\(5)))) # (\inst3|ball_y_pos\(5) & (!\inst2|pixel_row\(4) & 
-- !\inst2|pixel_row\(5)))) ) ) ) # ( !\inst3|LessThan3~4_combout\ & ( !\inst3|ball_y_pos\(4) & ( (!\inst3|LessThan3~2_combout\) # ((!\inst2|pixel_row\(5)) # (\inst3|ball_y_pos\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011000000000000000011111110111010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan3~2_combout\,
	datab => \inst3|ALT_INV_ball_y_pos\(5),
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst2|ALT_INV_pixel_row\(5),
	datae => \inst3|ALT_INV_LessThan3~4_combout\,
	dataf => \inst3|ALT_INV_ball_y_pos\(4),
	combout => \inst3|LessThan3~5_combout\);

-- Location: LABCELL_X20_Y27_N6
\inst3|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~0_combout\ = ( \inst3|ball_y_pos[1]~DUPLICATE_q\ & ( (\inst2|pixel_row\(1) & (!\inst3|ball_y_pos[0]~DUPLICATE_q\ & \inst2|pixel_row\(0))) ) ) # ( !\inst3|ball_y_pos[1]~DUPLICATE_q\ & ( ((!\inst3|ball_y_pos[0]~DUPLICATE_q\ & 
-- \inst2|pixel_row\(0))) # (\inst2|pixel_row\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(1),
	datab => \inst3|ALT_INV_ball_y_pos[0]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_pixel_row\(0),
	dataf => \inst3|ALT_INV_ball_y_pos[1]~DUPLICATE_q\,
	combout => \inst3|LessThan3~0_combout\);

-- Location: LABCELL_X20_Y27_N54
\inst3|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~1_combout\ = ( \inst3|ball_y_pos[3]~DUPLICATE_q\ & ( (\inst2|pixel_row\(3) & ((!\inst3|ball_y_pos\(2) & ((\inst2|pixel_row\(2)) # (\inst3|LessThan3~0_combout\))) # (\inst3|ball_y_pos\(2) & (\inst3|LessThan3~0_combout\ & 
-- \inst2|pixel_row\(2))))) ) ) # ( !\inst3|ball_y_pos[3]~DUPLICATE_q\ & ( ((!\inst3|ball_y_pos\(2) & ((\inst2|pixel_row\(2)) # (\inst3|LessThan3~0_combout\))) # (\inst3|ball_y_pos\(2) & (\inst3|LessThan3~0_combout\ & \inst2|pixel_row\(2)))) # 
-- (\inst2|pixel_row\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111011111010111011101111100000100010001010000010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datab => \inst3|ALT_INV_ball_y_pos\(2),
	datac => \inst3|ALT_INV_LessThan3~0_combout\,
	datad => \inst2|ALT_INV_pixel_row\(2),
	dataf => \inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\,
	combout => \inst3|LessThan3~1_combout\);

-- Location: MLABCELL_X18_Y27_N3
\inst3|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add3~0_combout\ = ( \inst3|ball_y_pos\(6) & ( (\inst3|ball_y_pos\(4) & (\inst3|ball_y_pos\(7) & \inst3|ball_y_pos\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(4),
	datac => \inst3|ALT_INV_ball_y_pos\(7),
	datad => \inst3|ALT_INV_ball_y_pos\(5),
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|Add3~0_combout\);

-- Location: LABCELL_X20_Y27_N12
\inst3|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan3~6_combout\ = ( \inst3|LessThan3~1_combout\ & ( \inst3|Add3~0_combout\ & ( (!\inst3|LessThan3~3_combout\ & (!\inst3|LessThan3~5_combout\ & (!\inst3|ball_y_pos\(8) $ (!\inst2|pixel_row\(8))))) # (\inst3|LessThan3~3_combout\ & 
-- (!\inst3|ball_y_pos\(8) $ ((!\inst2|pixel_row\(8))))) ) ) ) # ( !\inst3|LessThan3~1_combout\ & ( \inst3|Add3~0_combout\ & ( (!\inst3|LessThan3~5_combout\ & (!\inst3|ball_y_pos\(8) $ (!\inst2|pixel_row\(8)))) ) ) ) # ( \inst3|LessThan3~1_combout\ & ( 
-- !\inst3|Add3~0_combout\ & ( (!\inst3|LessThan3~3_combout\ & (!\inst3|LessThan3~5_combout\ & (!\inst3|ball_y_pos\(8) $ (\inst2|pixel_row\(8))))) # (\inst3|LessThan3~3_combout\ & (!\inst3|ball_y_pos\(8) $ ((\inst2|pixel_row\(8))))) ) ) ) # ( 
-- !\inst3|LessThan3~1_combout\ & ( !\inst3|Add3~0_combout\ & ( (!\inst3|LessThan3~5_combout\ & (!\inst3|ball_y_pos\(8) $ (\inst2|pixel_row\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110100000100111100000000000011110000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_LessThan3~3_combout\,
	datab => \inst3|ALT_INV_ball_y_pos\(8),
	datac => \inst2|ALT_INV_pixel_row\(8),
	datad => \inst3|ALT_INV_LessThan3~5_combout\,
	datae => \inst3|ALT_INV_LessThan3~1_combout\,
	dataf => \inst3|ALT_INV_Add3~0_combout\,
	combout => \inst3|LessThan3~6_combout\);

-- Location: FF_X20_Y27_N53
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

-- Location: FF_X20_Y27_N17
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

-- Location: LABCELL_X19_Y28_N30
\inst3|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~0_combout\ = ( \inst2|pixel_column[2]~DUPLICATE_q\ & ( (\inst2|pixel_column\(7) & (\inst2|pixel_column\(5) & (\inst2|pixel_column\(1) & \inst2|pixel_column\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	datab => \inst2|ALT_INV_pixel_column\(5),
	datac => \inst2|ALT_INV_pixel_column\(1),
	datad => \inst2|ALT_INV_pixel_column\(0),
	dataf => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	combout => \inst3|LessThan1~0_combout\);

-- Location: LABCELL_X19_Y28_N15
\inst3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = ( \inst2|pixel_column\(1) & ( (!\inst2|pixel_column[2]~DUPLICATE_q\ & !\inst2|pixel_column\(3)) ) ) # ( !\inst2|pixel_column\(1) & ( !\inst2|pixel_column\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_pixel_column[2]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_column\(3),
	dataf => \inst2|ALT_INV_pixel_column\(1),
	combout => \inst3|LessThan0~0_combout\);

-- Location: FF_X19_Y28_N20
\inst2|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|pll2_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \inst2|pixel_column[4]~feeder_combout\,
	ena => \inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(4));

-- Location: LABCELL_X19_Y28_N33
\inst3|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = ( \inst2|pixel_column\(4) & ( (!\inst2|pixel_column\(7) & (\inst2|pixel_column\(5) & \inst2|pixel_column\(6))) ) ) # ( !\inst2|pixel_column\(4) & ( (!\inst2|pixel_column\(7) & (!\inst2|pixel_column\(5) & 
-- (\inst3|LessThan0~0_combout\ & !\inst2|pixel_column\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(7),
	datab => \inst2|ALT_INV_pixel_column\(5),
	datac => \inst3|ALT_INV_LessThan0~0_combout\,
	datad => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst2|ALT_INV_pixel_column\(4),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LABCELL_X19_Y28_N48
\inst3|ball_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~0_combout\ = ( \inst2|pixel_column\(6) & ( !\inst3|ball_y_pos\(9) & ( (\inst2|pixel_column\(4) & (!\inst2|pixel_column\(7) & \inst2|pixel_column\(5))) ) ) ) # ( !\inst2|pixel_column\(6) & ( !\inst3|ball_y_pos\(9) & ( 
-- (\inst2|pixel_column\(7) & ((!\inst2|pixel_column\(5)) # ((!\inst2|pixel_column\(4) & !\inst2|pixel_column\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(4),
	datab => \inst2|ALT_INV_pixel_column\(3),
	datac => \inst2|ALT_INV_pixel_column\(7),
	datad => \inst2|ALT_INV_pixel_column\(5),
	datae => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst3|ALT_INV_ball_y_pos\(9),
	combout => \inst3|ball_on~0_combout\);

-- Location: MLABCELL_X18_Y27_N36
\inst3|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add2~0_combout\ = ( \inst2|pixel_row\(6) & ( \inst2|pixel_row\(7) & ( (\inst2|pixel_row\(5) & \inst2|pixel_row\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_pixel_row\(5),
	datac => \inst2|ALT_INV_pixel_row\(4),
	datae => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst2|ALT_INV_pixel_row\(7),
	combout => \inst3|Add2~0_combout\);

-- Location: FF_X19_Y28_N23
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

-- Location: LABCELL_X19_Y28_N6
\inst3|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = ( !\inst2|pixel_column\(6) & ( \inst2|pixel_column\(1) & ( (!\inst2|pixel_column\(2) & (!\inst2|pixel_column\(3) & (!\inst2|pixel_column\(4) & !\inst2|pixel_column\(5)))) ) ) ) # ( !\inst2|pixel_column\(6) & ( 
-- !\inst2|pixel_column\(1) & ( (!\inst2|pixel_column\(3) & (!\inst2|pixel_column\(4) & !\inst2|pixel_column\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(2),
	datab => \inst2|ALT_INV_pixel_column\(3),
	datac => \inst2|ALT_INV_pixel_column\(4),
	datad => \inst2|ALT_INV_pixel_column\(5),
	datae => \inst2|ALT_INV_pixel_column\(6),
	dataf => \inst2|ALT_INV_pixel_column\(1),
	combout => \inst3|LessThan0~2_combout\);

-- Location: LABCELL_X20_Y27_N48
\inst3|ball_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~1_combout\ = ( !\inst3|Add3~0_combout\ & ( \inst3|ball_y_pos\(8) & ( (\inst3|ball_on~0_combout\ & (!\inst3|LessThan0~2_combout\ & (!\inst3|Add2~0_combout\ $ (!\inst2|pixel_row\(8))))) ) ) ) # ( \inst3|Add3~0_combout\ & ( 
-- !\inst3|ball_y_pos\(8) & ( (\inst3|ball_on~0_combout\ & (!\inst3|LessThan0~2_combout\ & ((!\inst3|Add2~0_combout\) # (!\inst2|pixel_row\(8))))) ) ) ) # ( !\inst3|Add3~0_combout\ & ( !\inst3|ball_y_pos\(8) & ( (\inst3|ball_on~0_combout\ & 
-- (!\inst2|pixel_row\(8) & !\inst3|LessThan0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010101000000000000010100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_on~0_combout\,
	datab => \inst3|ALT_INV_Add2~0_combout\,
	datac => \inst2|ALT_INV_pixel_row\(8),
	datad => \inst3|ALT_INV_LessThan0~2_combout\,
	datae => \inst3|ALT_INV_Add3~0_combout\,
	dataf => \inst3|ALT_INV_ball_y_pos\(8),
	combout => \inst3|ball_on~1_combout\);

-- Location: LABCELL_X19_Y28_N12
\inst3|ball_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|ball_on~2_combout\ = ( \inst3|ball_on~1_combout\ & ( (!\inst2|pixel_column\(8) & (!\inst3|LessThan1~0_combout\ & (!\inst3|LessThan0~1_combout\ & !\inst2|pixel_column\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_column\(8),
	datab => \inst3|ALT_INV_LessThan1~0_combout\,
	datac => \inst3|ALT_INV_LessThan0~1_combout\,
	datad => \inst2|ALT_INV_pixel_column\(9),
	dataf => \inst3|ALT_INV_ball_on~1_combout\,
	combout => \inst3|ball_on~2_combout\);

-- Location: MLABCELL_X18_Y27_N57
\inst3|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~2_combout\ = ( \inst2|pixel_row\(6) & ( \inst3|ball_y_pos\(6) & ( (!\inst2|pixel_row\(4) & (!\inst3|ball_y_pos\(7) $ (((\inst2|pixel_row\(7)))))) # (\inst2|pixel_row\(4) & (!\inst2|pixel_row\(5) & (!\inst3|ball_y_pos\(7) $ 
-- (\inst2|pixel_row\(7))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( \inst3|ball_y_pos\(6) & ( (\inst2|pixel_row\(4) & (\inst2|pixel_row\(5) & (!\inst3|ball_y_pos\(7) $ (\inst2|pixel_row\(7))))) ) ) ) # ( \inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( 
-- (\inst2|pixel_row\(4) & (\inst2|pixel_row\(5) & (!\inst3|ball_y_pos\(7) $ (!\inst2|pixel_row\(7))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( (!\inst2|pixel_row\(4) & (!\inst3|ball_y_pos\(7) $ (((\inst2|pixel_row\(7)))))) # 
-- (\inst2|pixel_row\(4) & (!\inst2|pixel_row\(5) & (!\inst3|ball_y_pos\(7) $ (\inst2|pixel_row\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000110010000000010000010000000100000000011100100000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(4),
	datab => \inst3|ALT_INV_ball_y_pos\(7),
	datac => \inst2|ALT_INV_pixel_row\(5),
	datad => \inst2|ALT_INV_pixel_row\(7),
	datae => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|LessThan2~2_combout\);

-- Location: MLABCELL_X18_Y27_N0
\inst3|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~3_combout\ = ( \inst3|LessThan2~2_combout\ & ( (!\inst3|ball_y_pos\(4) & (\inst2|pixel_row\(4) & (!\inst3|ball_y_pos\(5) $ (!\inst2|pixel_row\(5))))) # (\inst3|ball_y_pos\(4) & (!\inst2|pixel_row\(4) & (!\inst3|ball_y_pos\(5) $ 
-- (\inst2|pixel_row\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000001001010000100000100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(4),
	datab => \inst3|ALT_INV_ball_y_pos\(5),
	datac => \inst2|ALT_INV_pixel_row\(5),
	datad => \inst2|ALT_INV_pixel_row\(4),
	dataf => \inst3|ALT_INV_LessThan2~2_combout\,
	combout => \inst3|LessThan2~3_combout\);

-- Location: MLABCELL_X18_Y27_N30
\inst3|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~4_combout\ = ( \inst2|pixel_row\(6) & ( \inst3|ball_y_pos\(6) & ( (!\inst2|pixel_row\(7) & (\inst3|ball_y_pos\(7))) # (\inst2|pixel_row\(7) & (((\inst2|pixel_row\(4) & \inst2|pixel_row\(5))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( 
-- \inst3|ball_y_pos\(6) & ( (!\inst2|pixel_row\(7) & (((!\inst2|pixel_row\(4)) # (!\inst2|pixel_row\(5))) # (\inst3|ball_y_pos\(7)))) # (\inst2|pixel_row\(7) & (\inst3|ball_y_pos\(7) & ((!\inst2|pixel_row\(4)) # (!\inst2|pixel_row\(5))))) ) ) ) # ( 
-- \inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( (\inst3|ball_y_pos\(7) & (!\inst2|pixel_row\(7) $ (((\inst2|pixel_row\(4) & \inst2|pixel_row\(5)))))) ) ) ) # ( !\inst2|pixel_row\(6) & ( !\inst3|ball_y_pos\(6) & ( (!\inst2|pixel_row\(7) & 
-- \inst3|ball_y_pos\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010000110111011101100100010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(7),
	datab => \inst3|ALT_INV_ball_y_pos\(7),
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst2|ALT_INV_pixel_row\(5),
	datae => \inst2|ALT_INV_pixel_row\(6),
	dataf => \inst3|ALT_INV_ball_y_pos\(6),
	combout => \inst3|LessThan2~4_combout\);

-- Location: MLABCELL_X18_Y27_N42
\inst3|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~5_combout\ = ( \inst3|ball_y_pos\(4) & ( \inst3|LessThan2~2_combout\ & ( (!\inst3|LessThan2~4_combout\ & ((!\inst2|pixel_row\(5) & (!\inst3|ball_y_pos\(5))) # (\inst2|pixel_row\(5) & ((!\inst2|pixel_row\(4)))))) ) ) ) # ( 
-- !\inst3|ball_y_pos\(4) & ( \inst3|LessThan2~2_combout\ & ( (!\inst3|LessThan2~4_combout\ & ((!\inst3|ball_y_pos\(5)) # (!\inst2|pixel_row\(4) $ (!\inst2|pixel_row\(5))))) ) ) ) # ( \inst3|ball_y_pos\(4) & ( !\inst3|LessThan2~2_combout\ & ( 
-- !\inst3|LessThan2~4_combout\ ) ) ) # ( !\inst3|ball_y_pos\(4) & ( !\inst3|LessThan2~2_combout\ & ( !\inst3|LessThan2~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010001100110010001000100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_ball_y_pos\(5),
	datab => \inst3|ALT_INV_LessThan2~4_combout\,
	datac => \inst2|ALT_INV_pixel_row\(4),
	datad => \inst2|ALT_INV_pixel_row\(5),
	datae => \inst3|ALT_INV_ball_y_pos\(4),
	dataf => \inst3|ALT_INV_LessThan2~2_combout\,
	combout => \inst3|LessThan2~5_combout\);

-- Location: LABCELL_X20_Y27_N9
\inst3|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~0_combout\ = ( \inst3|ball_y_pos[1]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(1)) # ((\inst3|ball_y_pos[0]~DUPLICATE_q\ & !\inst2|pixel_row\(0))) ) ) # ( !\inst3|ball_y_pos[1]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(1) & 
-- (\inst3|ball_y_pos[0]~DUPLICATE_q\ & !\inst2|pixel_row\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010111011101010101011101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(1),
	datab => \inst3|ALT_INV_ball_y_pos[0]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_pixel_row\(0),
	dataf => \inst3|ALT_INV_ball_y_pos[1]~DUPLICATE_q\,
	combout => \inst3|LessThan2~0_combout\);

-- Location: LABCELL_X20_Y27_N57
\inst3|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~1_combout\ = ( \inst3|ball_y_pos[3]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(3)) # ((!\inst3|ball_y_pos\(2) & (\inst3|LessThan2~0_combout\ & !\inst2|pixel_row\(2))) # (\inst3|ball_y_pos\(2) & ((!\inst2|pixel_row\(2)) # 
-- (\inst3|LessThan2~0_combout\)))) ) ) # ( !\inst3|ball_y_pos[3]~DUPLICATE_q\ & ( (!\inst2|pixel_row\(3) & ((!\inst3|ball_y_pos\(2) & (\inst3|LessThan2~0_combout\ & !\inst2|pixel_row\(2))) # (\inst3|ball_y_pos\(2) & ((!\inst2|pixel_row\(2)) # 
-- (\inst3|LessThan2~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000010001010100000001010111111101010111011111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(3),
	datab => \inst3|ALT_INV_ball_y_pos\(2),
	datac => \inst3|ALT_INV_LessThan2~0_combout\,
	datad => \inst2|ALT_INV_pixel_row\(2),
	dataf => \inst3|ALT_INV_ball_y_pos[3]~DUPLICATE_q\,
	combout => \inst3|LessThan2~1_combout\);

-- Location: LABCELL_X20_Y27_N42
\inst3|LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan2~6_combout\ = ( \inst3|LessThan2~1_combout\ & ( \inst3|ball_y_pos\(8) & ( (!\inst3|LessThan2~3_combout\ & (!\inst3|LessThan2~5_combout\ & (!\inst2|pixel_row\(8) $ (!\inst3|Add2~0_combout\)))) # (\inst3|LessThan2~3_combout\ & 
-- (!\inst2|pixel_row\(8) $ (((!\inst3|Add2~0_combout\))))) ) ) ) # ( !\inst3|LessThan2~1_combout\ & ( \inst3|ball_y_pos\(8) & ( (!\inst3|LessThan2~5_combout\ & (!\inst2|pixel_row\(8) $ (!\inst3|Add2~0_combout\))) ) ) ) # ( \inst3|LessThan2~1_combout\ & ( 
-- !\inst3|ball_y_pos\(8) & ( (!\inst3|LessThan2~3_combout\ & (!\inst3|LessThan2~5_combout\ & (!\inst2|pixel_row\(8) $ (\inst3|Add2~0_combout\)))) # (\inst3|LessThan2~3_combout\ & (!\inst2|pixel_row\(8) $ (((\inst3|Add2~0_combout\))))) ) ) ) # ( 
-- !\inst3|LessThan2~1_combout\ & ( !\inst3|ball_y_pos\(8) & ( (!\inst3|LessThan2~5_combout\ & (!\inst2|pixel_row\(8) $ (\inst3|Add2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000100101000101010000101000000101000110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_pixel_row\(8),
	datab => \inst3|ALT_INV_LessThan2~3_combout\,
	datac => \inst3|ALT_INV_LessThan2~5_combout\,
	datad => \inst3|ALT_INV_Add2~0_combout\,
	datae => \inst3|ALT_INV_LessThan2~1_combout\,
	dataf => \inst3|ALT_INV_ball_y_pos\(8),
	combout => \inst3|LessThan2~6_combout\);

-- Location: LABCELL_X20_Y27_N36
\inst2|blue_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|blue_out~0_combout\ = ( \inst3|ball_on~2_combout\ & ( \inst3|LessThan2~6_combout\ & ( (!\inst9|Mux0~0_combout\ & (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)) ) ) ) # ( !\inst3|ball_on~2_combout\ & ( \inst3|LessThan2~6_combout\ & ( 
-- (!\inst9|Mux0~0_combout\ & (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)) ) ) ) # ( \inst3|ball_on~2_combout\ & ( !\inst3|LessThan2~6_combout\ & ( (!\inst9|Mux0~0_combout\ & (\inst3|LessThan3~6_combout\ & (\inst2|video_on_v~q\ & \inst2|video_on_h~q\))) ) 
-- ) ) # ( !\inst3|ball_on~2_combout\ & ( !\inst3|LessThan2~6_combout\ & ( (!\inst9|Mux0~0_combout\ & (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000001000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Mux0~0_combout\,
	datab => \inst3|ALT_INV_LessThan3~6_combout\,
	datac => \inst2|ALT_INV_video_on_v~q\,
	datad => \inst2|ALT_INV_video_on_h~q\,
	datae => \inst3|ALT_INV_ball_on~2_combout\,
	dataf => \inst3|ALT_INV_LessThan2~6_combout\,
	combout => \inst2|blue_out~0_combout\);

-- Location: FF_X20_Y27_N37
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

-- Location: LABCELL_X20_Y27_N30
\inst2|green_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|green_out~0_combout\ = ( \inst3|ball_on~2_combout\ & ( \inst3|LessThan2~6_combout\ & ( (\inst2|video_on_v~q\ & \inst2|video_on_h~q\) ) ) ) # ( !\inst3|ball_on~2_combout\ & ( \inst3|LessThan2~6_combout\ & ( (\inst2|video_on_v~q\ & 
-- \inst2|video_on_h~q\) ) ) ) # ( \inst3|ball_on~2_combout\ & ( !\inst3|LessThan2~6_combout\ & ( (\inst2|video_on_v~q\ & (\inst2|video_on_h~q\ & ((\inst3|LessThan3~6_combout\) # (\inst9|Mux0~0_combout\)))) ) ) ) # ( !\inst3|ball_on~2_combout\ & ( 
-- !\inst3|LessThan2~6_combout\ & ( (\inst2|video_on_v~q\ & \inst2|video_on_h~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000011100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Mux0~0_combout\,
	datab => \inst3|ALT_INV_LessThan3~6_combout\,
	datac => \inst2|ALT_INV_video_on_v~q\,
	datad => \inst2|ALT_INV_video_on_h~q\,
	datae => \inst3|ALT_INV_ball_on~2_combout\,
	dataf => \inst3|ALT_INV_LessThan2~6_combout\,
	combout => \inst2|green_out~0_combout\);

-- Location: FF_X20_Y27_N31
\inst2|green_out\ : dffeas
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
	q => \inst2|green_out~q\);

-- Location: LABCELL_X20_Y27_N18
\inst2|red_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|red_out~0_combout\ = ( \inst3|ball_on~2_combout\ & ( \inst3|LessThan2~6_combout\ & ( (\inst9|Mux0~0_combout\ & (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)) ) ) ) # ( !\inst3|ball_on~2_combout\ & ( \inst3|LessThan2~6_combout\ & ( 
-- (\inst9|Mux0~0_combout\ & (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)) ) ) ) # ( \inst3|ball_on~2_combout\ & ( !\inst3|LessThan2~6_combout\ & ( (\inst2|video_on_v~q\ & (\inst2|video_on_h~q\ & ((!\inst3|LessThan3~6_combout\) # (\inst9|Mux0~0_combout\)))) 
-- ) ) ) # ( !\inst3|ball_on~2_combout\ & ( !\inst3|LessThan2~6_combout\ & ( (\inst9|Mux0~0_combout\ & (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000110100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|ALT_INV_Mux0~0_combout\,
	datab => \inst3|ALT_INV_LessThan3~6_combout\,
	datac => \inst2|ALT_INV_video_on_v~q\,
	datad => \inst2|ALT_INV_video_on_h~q\,
	datae => \inst3|ALT_INV_ball_on~2_combout\,
	dataf => \inst3|ALT_INV_LessThan2~6_combout\,
	combout => \inst2|red_out~0_combout\);

-- Location: FF_X20_Y27_N19
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


