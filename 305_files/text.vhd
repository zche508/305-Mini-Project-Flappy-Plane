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
		
		char_address <= "000001" when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(45,10) and		-- A
												CONV_STD_LOGIC_VECTOR(0, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(16, 10)) else
												
							"000010" when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(45,10) and		-- B
												CONV_STD_LOGIC_VECTOR(16, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(32, 10)) else	
												
							"000011" when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(45,10) and		-- C
												CONV_STD_LOGIC_VECTOR(32, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(48, 10)) else
												
							"000100" when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(45,10) and		-- D
												CONV_STD_LOGIC_VECTOR(48, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(64, 10)) else	
							"100000";	-- SHOWS NOTHING
		
		
		text_row <=  pixel_row(3 downto 1) when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and 
																pixel_row < CONV_STD_LOGIC_VECTOR(45,10) and 
																pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
						 pixel_row(3 downto 1); -- DECIDE WHEN TO PRINT IN ROWS
		
		
		text_col <=  pixel_column(3 downto 1) when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and 
																pixel_row < CONV_STD_LOGIC_VECTOR(45,10) and 
																pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
						 pixel_column(3 downto 1); -- DECIDE WHEN TO PRINT IN COLUMNS
						 
				
end architecture Behaviour;