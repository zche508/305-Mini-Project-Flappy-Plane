LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY textSelector IS
	PORT(sw, pixel_row, pixel_column: in STD_LOGIC_VECTOR(9 DOWNTO 0);
		char_address : OUT std_logic_vector(5 downto 0);
		text_row : OUT std_logic_vector(2 downto 0);
		text_col : OUT std_logic_vector(2 downto 0));		
END textSelector;


architecture Behaviour of textSelector is
begin
--		char_address <= "000001";
--		text_row <= pixel_row(3 downto 1);
--		text_col <= pixel_column(3 downto 1);


		-------------------------------
		-- Displays the text "SCORE" --
		------------------------------- 
		
		char_address <= "010011" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- S oct(23)
												CONV_STD_LOGIC_VECTOR(0, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(16, 10)) else
												
							"000011" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- C oct(02)
												CONV_STD_LOGIC_VECTOR(16, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(32, 10)) else	
												
							"001111" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- O oct(17)
												CONV_STD_LOGIC_VECTOR(32, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(48, 10)) else
												
							"010010" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- R oct(22)
												CONV_STD_LOGIC_VECTOR(48, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(64, 10)) else	
												
							"000101" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- E oct(05)
												CONV_STD_LOGIC_VECTOR(64, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(80, 10)) else
		
		---------------------------
		-- Displays TRAINING MODE--
		--------------------------- 
		
							"010100" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- T oct(24)
												CONV_STD_LOGIC_VECTOR(32, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(64, 10) and
												sw = "0000000001") else
												
							"010010" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- R oct(22)
												CONV_STD_LOGIC_VECTOR(64, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(96, 10) and
												sw = "0000000001") else	
												
							"000001" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- A oct(01)
												CONV_STD_LOGIC_VECTOR(96, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(128, 10) and
												sw = "0000000001") else
												
							"001001" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- I oct(11)
												CONV_STD_LOGIC_VECTOR(128, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10) and
												sw = "0000000001") else	
												
							"001110" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- N oct(16)
												CONV_STD_LOGIC_VECTOR(160, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(192, 10) and
												sw = "0000000001") else
												
							"001001" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- I oct(11)
												CONV_STD_LOGIC_VECTOR(192, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(224, 10) and
												sw = "0000000001") else	
												
							"001110" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- N oct(16)
												CONV_STD_LOGIC_VECTOR(224, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(256, 10) and
												sw = "0000000001") else
												
							"000111" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- G oct(07)
												CONV_STD_LOGIC_VECTOR(256, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(288, 10) and
												sw = "0000000001") else
												
							"100000" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- " " oct(40)
												CONV_STD_LOGIC_VECTOR(288, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(320, 10) and
												sw = "0000000001") else
												
							"001101" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- M oct(15)
												CONV_STD_LOGIC_VECTOR(320, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(352, 10) and
												sw = "0000000001") else
							
							"001111" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- O oct(17)
												CONV_STD_LOGIC_VECTOR(352, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(384, 10) and
												sw = "0000000001") else
												
							"000100" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- D oct(04)
												CONV_STD_LOGIC_VECTOR(384, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(416, 10) and
												sw = "0000000001") else
							
							"000101" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- E oct(05)
												CONV_STD_LOGIC_VECTOR(416, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(448, 10) and
												sw = "0000000001") else
												
												
		---------------------------
		-- Displays GAME MODE--
		--------------------------- 
		
							"010011" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- S oct(23)
												CONV_STD_LOGIC_VECTOR(32, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(64, 10) and
												sw = "0000000010") else
												
							"001001" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- I oct(11)
												CONV_STD_LOGIC_VECTOR(64, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(96, 10) and
												sw = "0000000010") else	
												
							"001110" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- N oct(16)
												CONV_STD_LOGIC_VECTOR(96, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(128, 10) and
												sw = "0000000010") else
												
							"000111" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- G oct(07)
												CONV_STD_LOGIC_VECTOR(128, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10) and
												sw = "0000000010") else	
												
							"001100" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- L oct(14)
												CONV_STD_LOGIC_VECTOR(160, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(192, 10) and
												sw = "0000000010") else
												
							"000101" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- E oct(05)
												CONV_STD_LOGIC_VECTOR(192, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(224, 10) and
												sw = "0000000010") else
												
							"010000" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- P oct(20)
												CONV_STD_LOGIC_VECTOR(224, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(256, 10) and
												sw = "0000000010") else
												
							"001100" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- L oct(14)
												CONV_STD_LOGIC_VECTOR(256, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(288, 10) and
												sw = "0000000010") else
							
							"000001" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- A oct(01)
												CONV_STD_LOGIC_VECTOR(288, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(320, 10) and
												sw = "0000000010") else
												
							"011001" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- Y oct(31)
												CONV_STD_LOGIC_VECTOR(320, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(352, 10) and
												sw = "0000000010") else
							
							"000101" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- E oct(05)
												CONV_STD_LOGIC_VECTOR(352, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(384, 10) and
												sw = "0000000010") else
							
							"010010" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- R oct(22)
												CONV_STD_LOGIC_VECTOR(384, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(416, 10) and
												sw = "0000000010") else
							
							"100000" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- " " oct(40)
												CONV_STD_LOGIC_VECTOR(416, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(448, 10) and
												sw = "0000000010") else
												
							"001101" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- M oct(15)
												CONV_STD_LOGIC_VECTOR(448, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(480, 10) and
												sw = "0000000010") else
							
							"001111" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- O oct(17)
												CONV_STD_LOGIC_VECTOR(480, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(512, 10) and
												sw = "0000000010") else
												
							"000100" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- D oct(04)
												CONV_STD_LOGIC_VECTOR(512, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(544, 10) and
												sw = "0000000010") else
							
							"000101" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(64,10) and		-- E oct(05)
												CONV_STD_LOGIC_VECTOR(544, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(576, 10) and
												sw = "0000000010") else
												
							"100000";	-- SHOWS NOTHING
		
		
		text_row <=  pixel_row(3 downto 1) when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and 
																pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and 
																pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
						 pixel_row(4 downto 2);
		
		
		text_col <=  pixel_column(3 downto 1) when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and 
																pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and 
																pixel_column < CONV_STD_LOGIC_VECTOR(320, 10)) else
						 pixel_column(4 downto 2);
						 
				
end architecture Behaviour;