LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY textSelector IS
	PORT(sw, pixel_row, pixel_column: in STD_LOGIC_VECTOR(9 DOWNTO 0);
		score : in integer range 10000 downto 0; -- Score is has a max value of 16384 (14 bits)
		lives : in integer range 30 downto 0; -- Score is has a max value of 16384 (14 bits)
		char_address : OUT std_logic_vector(5 downto 0);
		text_row : OUT std_logic_vector(2 downto 0);
		text_col : OUT std_logic_vector(2 downto 0));
END textSelector;


architecture Behaviour of textSelector is
	signal current_score_digit : integer range 10000 downto 0;
	signal score_character : std_logic_vector(5 downto 0) := "110000";
	
	signal current_lives_digit : integer range 10000 downto 0;
	signal lives_character : std_logic_vector(5 downto 0) := "110000";
	
--	type arr_type is array (0 to 1) of string(1 to 6);
--	signal score_character : arr_type;
begin
--		char_address <= "000001";
--		text_row <= pixel_row(3 downto 1);
--		text_col <= pixel_column(3 downto 1);


	------------------------------------------------------------------------------------------------------------------------------------------------
	------ LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES LIVES -----
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	
	lives_character <= 	"110000" when (current_lives_digit = 0) else		-- "0" oct(60)
								"110001" when (current_lives_digit = 1) else		-- "1" oct(61)
								"110010" when (current_lives_digit = 2) else		-- "2" oct(62)
								"110011" when (current_lives_digit = 3) else		-- "3" oct(63)
								"110100" when (current_lives_digit = 4) else		-- "4" oct(64)
								"110101" when (current_lives_digit = 5) else		-- "5" oct(65)
								"110110" when (current_lives_digit = 6) else		-- "6" oct(66)
								"110111" when (current_lives_digit = 7) else		-- "7" oct(67)
								"111000" when (current_lives_digit = 8) else		-- "8" oct(70)
								"111001" when (current_lives_digit = 9);		-- "9" oct(71)
								
	-------------------------------
	-- Updates the LIVES --
	------------------------------- 
	
	current_lives_digit <= (lives mod 10000)/1000 when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and	-- Thousands
											CONV_STD_LOGIC_VECTOR(112, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(128, 10)) else	
											
								(lives mod 1000)/100 when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and			-- Hundreds
												CONV_STD_LOGIC_VECTOR(128, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(144, 10)) else	
												
								(lives mod 100)/10 when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and			-- Tens
												CONV_STD_LOGIC_VECTOR(144, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
							
								(lives mod 10) when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and					-- Ones
											CONV_STD_LOGIC_VECTOR(160, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(176, 10));	
											
	
	
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	------ SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE SCORE -----
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	score_character <= 	"110000" when (current_score_digit = 0) else		-- "0" oct(60)
								"110001" when (current_score_digit = 1) else		-- "1" oct(61)
								"110010" when (current_score_digit = 2) else		-- "2" oct(62)
								"110011" when (current_score_digit = 3) else		-- "3" oct(63)
								"110100" when (current_score_digit = 4) else		-- "4" oct(64)
								"110101" when (current_score_digit = 5) else		-- "5" oct(65)
								"110110" when (current_score_digit = 6) else		-- "6" oct(66)
								"110111" when (current_score_digit = 7) else		-- "7" oct(67)
								"111000" when (current_score_digit = 8) else		-- "8" oct(70)
								"111001" when (current_score_digit = 9);		-- "9" oct(71)
								
	
	-------------------------------
	----  Updates the SCORE   ----
	-------------------------------
	
	current_score_digit <= (score mod 10000)/1000 when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and	-- Thousands
											CONV_STD_LOGIC_VECTOR(112, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(128, 10)) else	
											
								(score mod 1000)/100 when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and			-- Hundreds
												CONV_STD_LOGIC_VECTOR(128, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(144, 10)) else	
												
								(score mod 100)/10 when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and			-- Tens
												CONV_STD_LOGIC_VECTOR(144, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else
							
								(score mod 10) when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and					-- Ones
											CONV_STD_LOGIC_VECTOR(160, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(176, 10));	
											
	-------------------------------
	-------- TEXT SELECTOR --------
	------------------------------- 
	
	
	char_address <= 
						
	-------------------------------
	-- Displays the text "SCORE" --
	------------------------------- 
	
						"010011" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- S oct(23)
											CONV_STD_LOGIC_VECTOR(0, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(16, 10)) else
											
						"000011" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- C oct(02)
											CONV_STD_LOGIC_VECTOR(16, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(32, 10)) else	
											
						"001111" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- O oct(17)
											CONV_STD_LOGIC_VECTOR(32, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(48, 10)) else
											
						"010010" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- R oct(22)
											CONV_STD_LOGIC_VECTOR(48, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(64, 10)) else	
											
						"000101" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- E oct(05)
											CONV_STD_LOGIC_VECTOR(64, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(80, 10)) else
						
						"100000" when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- " " oct(40)
											CONV_STD_LOGIC_VECTOR(96, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(112, 10)) else	
	-------------------------------
	----  Displays the SCORE   ----
	-------------------------------
	
						score_character when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- " " oct(60)
											CONV_STD_LOGIC_VECTOR(112, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(128, 10)) else	
											
						score_character when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- " " oct(60)
											CONV_STD_LOGIC_VECTOR(128, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(144, 10)) else	
											
						score_character when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- " " oct(60)
											CONV_STD_LOGIC_VECTOR(144, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else	
						
						score_character when (CONV_STD_LOGIC_VECTOR(14,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and		-- " " oct(60)
											CONV_STD_LOGIC_VECTOR(160, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(176, 10)) else	
	
	-------------------------------
	-- Displays the text "LIVES" --
	------------------------------- 
	
						"001100" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- L oct(14)
											CONV_STD_LOGIC_VECTOR(0, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(16, 10)) else
											
						"001001" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- I oct(11)
											CONV_STD_LOGIC_VECTOR(16, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(32, 10)) else	
											
						"010110" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- V oct(26)
											CONV_STD_LOGIC_VECTOR(32, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(48, 10)) else
											
						"000101" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- E oct(05)
											CONV_STD_LOGIC_VECTOR(48, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(64, 10)) else	
											
						"010011" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- S oct(23)
											CONV_STD_LOGIC_VECTOR(64, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(80, 10)) else
						
						"100000" when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- " " oct(40)
											CONV_STD_LOGIC_VECTOR(96, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(112, 10)) else	
	-------------------------------
	----  Displays the LIVES   ----
	-------------------------------
	
						lives_character when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- " " oct(60)
											CONV_STD_LOGIC_VECTOR(112, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(128, 10)) else	
											
						lives_character when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- " " oct(60)
											CONV_STD_LOGIC_VECTOR(128, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(144, 10)) else	
											
						lives_character when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- " " oct(60)
											CONV_STD_LOGIC_VECTOR(144, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(160, 10)) else	
						
						lives_character when (CONV_STD_LOGIC_VECTOR(32,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(48,10) and		-- " " oct(60)
											CONV_STD_LOGIC_VECTOR(160, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(176, 10)) else	
	
	
	------------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------------------------------
	
	
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
											
	---------------------------
	-- Displays SINGLEPLAYER MODE--
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
											
						
											
						"100000";	-- SHOWS NOTHING
		
		
		text_row <=  pixel_row(3 downto 1); --when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and 
--																pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and 
--																pixel_column < CONV_STD_LOGIC_VECTOR(640, 10)) else
--						 pixel_row(4 downto 2);
		
		
		text_col <=  pixel_column(3 downto 1); --when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and 
--																pixel_row < CONV_STD_LOGIC_VECTOR(32,10) and 
--																pixel_column < CONV_STD_LOGIC_VECTOR(640, 10)) else
--						 pixel_column(4 downto 2);
--						 
				
end architecture Behaviour;