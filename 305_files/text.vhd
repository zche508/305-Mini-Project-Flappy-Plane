LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY textSelector IS
	PORT(pixel_row, pixel_column: in STD_LOGIC_VECTOR(9 DOWNTO 0);
		char_address : OUT std_logic_vector(5 downto 0);
		text_row : OUT std_logic_vector(2 downto 0);
		text_col : OUT std_logic_vector(2 downto 0));		
END textSelector;


architecture Behaviour of textSelector is
begin
--		char_address <= "000001";
--		text_row <= pixel_row(3 downto 1);
--		text_col <= pixel_column(3 downto 1);
		
		char_address <= "000001" when (CONV_STD_LOGIC_VECTOR(10,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(45,10) and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else		-- A
							 "000010" when (CONV_STD_LOGIC_VECTOR(45,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(70,10) and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else	-- B
							 "000011" when (CONV_STD_LOGIC_VECTOR(70,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(85,10) and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else	-- C
							 "100000";	-- SHOWS "NOTHING" 40 in octal
		
		
		text_row <=  pixel_row(4 downto 2) when (CONV_STD_LOGIC_VECTOR(10,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(45,10) and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
						 pixel_row(3 downto 1) when (CONV_STD_LOGIC_VECTOR(45,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(70,10) and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
						 pixel_row(2 downto 0) when (CONV_STD_LOGIC_VECTOR(70,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(85,10) and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
						 pixel_row(2 downto 0);
							 
		
		
		text_col <=  pixel_column(4 downto 2) when (CONV_STD_LOGIC_VECTOR(10,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(45,10) and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
						 pixel_column(3 downto 1) when (CONV_STD_LOGIC_VECTOR(45,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(70,10) and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
						 pixel_column(2 downto 0) when (CONV_STD_LOGIC_VECTOR(70,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(85,10) and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
						 pixel_row(2 downto 0);
						 
				
end architecture Behaviour;