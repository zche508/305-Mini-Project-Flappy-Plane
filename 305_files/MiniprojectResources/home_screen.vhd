LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY home_screen IS
    PORT (
        showText : IN std_logic;
        pixel_row, pixel_column : IN std_logic_vector(9 DOWNTO 0);
        pb1 : IN std_logic;  -- Button input for selecting modes
        red, green, blue : OUT std_logic;
        mode : OUT std_logic_vector(1 DOWNTO 0) -- 00: Home, 01: Training, 10: Single Player
    );
END ENTITY home_screen;

ARCHITECTURE behavior OF home_screen IS
    TYPE game_state_type IS (home_screen, training_mode, single_player_mode);
    SIGNAL game_state : game_state_type := home_screen;
	 
	 SIGNAL ball_on						: std_logic;
	 SIGNAL size 							: std_logic_vector(9 DOWNTO 0);  
	 SIGNAL ball_y_pos					: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(240, 10) - size;
	 SiGNAL ball_x_pos					: std_logic_vector(10 DOWNTO 0);
	 SIGNAL ball_y_motion				: std_logic_vector(9 DOWNTO 0);
begin 
		
size <= CONV_STD_LOGIC_VECTOR(6,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(150, 11);

ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			
-- Colours for the screen, ball, and everything else
Red <=	'1' when ball_on = '1' else
			'0';
			
Green <= '1' when ball_on = '1' else
			'1'; 
			
Blue <=  '0' when ball_on = '1' else
			'0';

	 

--		CASE game_state IS
--			 WHEN home_screen =>
--				  -- Display the name of the game
--				  IF (pixel_row >= 50 AND pixel_row <= 100) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
--						red <= '1';
--						green <= '0';
--						blue <= '0';
--				  ELSE
--						red <= '0';
--						green <= '0';
--						blue <= '0';
--				  END IF;
--
--				  -- Display "Training" button
--				  IF (pixel_row >= 150 AND pixel_row <= 200) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
--						red <= '0';
--						green <= '1';
--						blue <= '0';
--				  END IF;
--
--				  -- Display "Single Player" button
--				  IF (pixel_row >= 250 AND pixel_row <= 300) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
--						red <= '0';
--						green <= '0';
--						blue <= '1';
--				  END IF;
--
--				  -- Handle button inputs for mode selection
--				  IF (pb1 = '0') THEN
--						-- If the "Training" button is pressed
--						IF (pixel_row >= 150 AND pixel_row <= 200) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
--							 game_state <= training_mode;
--							 mode <= "01"; -- Training mode
--						END IF;
--
--						-- If the "Single Player" button is pressed
--						IF (pixel_row >= 250 AND pixel_row <= 300) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
--							 game_state <= single_player_mode;
--							 mode <= "10"; -- Single Player mode
--						END IF;
--				  END IF;
--			 
--			 WHEN training_mode =>
--				  mode <= "01"; -- Training mode
--			 
--			 WHEN single_player_mode =>
--				  mode <= "10"; -- Single Player mode
--		END CASE;
--		END PROCESS;
END ARCHITECTURE behavior;
