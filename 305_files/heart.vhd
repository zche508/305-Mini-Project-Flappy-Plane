LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY heart IS
	PORT (
		character_address   : IN STD_LOGIC_VECTOR (7 DOWNTO 0); -- 8 bit address for 2^8 = 256 depth
		font_row, font_col  : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock			   : IN STD_LOGIC;
		rom_mux_output	  : OUT STD_LOGIC;
		rom_pixel_data		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0) -- Output 12 bit pixel data for RGB values
	);
END heart;

ARCHITECTURE SYN OF heart IS

	SIGNAL rom_data	 : STD_LOGIC_VECTOR (159 DOWNTO 0); -- MIF width 
	SIGNAL rom_address  : STD_LOGIC_VECTOR (7 DOWNTO 0);   -- 8 bit address for 2^8 = 256 depth

	COMPONENT altsyncram
	GENERIC (
		address_aclr_a			: STRING;
		clock_enable_input_a	: STRING;
		clock_enable_output_a	: STRING;
		init_file				: STRING;
		intended_device_family	: STRING;
		lpm_hint				: STRING;
		lpm_type				: STRING;
		numwords_a				: NATURAL;
		operation_mode			: STRING;
		outdata_aclr_a			: STRING;
		outdata_reg_a			: STRING;
		widthad_a				: NATURAL;
		width_a					: NATURAL;
		width_byteena_a			: NATURAL
	);
	PORT (
		clock0	   : IN STD_LOGIC;
		address_a	: IN STD_LOGIC_VECTOR (7 DOWNTO 0); -- 8 bit address for 2^8 = 256 depth
		q_a		  : OUT STD_LOGIC_VECTOR (159 DOWNTO 0) -- MIF width
	);
	END COMPONENT;

BEGIN

	altsyncram_component : altsyncram
	GENERIC MAP (
		address_aclr_a => "NONE",
		clock_enable_input_a => "BYPASS",
		clock_enable_output_a => "BYPASS",
		init_file => "spritesMIF\heart.mif",
		intended_device_family => "Cyclone III",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		numwords_a => 256, -- max depth from 2^8
		operation_mode => "ROM",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "UNREGISTERED",
		widthad_a => 8, -- max depth from 2^8
		width_a => 160, -- data/MIF width
		width_byteena_a => 1
	)
	PORT MAP (
		clock0 => clock,
		address_a => rom_address,
		q_a => rom_data
	);

	rom_address <= character_address; -- removed "& font_row" for now idk what it does
	rom_mux_output <= rom_data((CONV_INTEGER(font_col) + 1) * 12 - 1);
	rom_pixel_data <= rom_data(CONV_INTEGER(font_col) * 12 + 11 downto CONV_INTEGER(font_col) * 12);
	
END SYN;
