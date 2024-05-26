LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY home_screen IS
    PORT (
        clk, reset, showText : IN std_logic;
        pixel_row, pixel_column : IN std_logic_vector(9 DOWNTO 0);
		  cursor_row, cursor_column : IN std_logic_vector(9 DOWNTO 0);
        pb1 : IN std_logic;  -- Button input for selecting modes
        red, green, blue : OUT std_logic;
        mode : OUT std_logic_vector(1 DOWNTO 0); -- 00: Home, 01: Training, 10: Single Player
		  led3, led4 : OUT std_logic
    );
END ENTITY home_screen;

ARCHITECTURE behavior OF home_screen IS
	 
	 SIGNAL ball_on							: std_logic;
	 SIGNAL size 								: std_logic_vector(9 DOWNTO 0);  
	 SIGNAL ball_y_pos						: std_logic_vector(9 DOWNTO 0);
	 SiGNAL ball_x_pos						: std_logic_vector(9 DOWNTO 0);
	 
	 SIGNAL box1_on							: std_logic;
	 SIGNAL box1_size 						: std_logic_vector(9 DOWNTO 0);  
	 SIGNAL box1_y_pos						: std_logic_vector(9 DOWNTO 0);
	 SiGNAL box1_x_pos						: std_logic_vector(9 DOWNTO 0);
	 
	 SIGNAL box2_on							: std_logic;
	 SIGNAL box2_size 						: std_logic_vector(9 DOWNTO 0);  
	 SIGNAL box2_y_pos						: std_logic_vector(9 DOWNTO 0);
	 SiGNAL box2_x_pos						: std_logic_vector(9 DOWNTO 0);
	 
	 SIGNAL box3_on							: std_logic;
	 SIGNAL box3_size 						: std_logic_vector(9 DOWNTO 0);  
	 SIGNAL box3_y_pos						: std_logic_vector(9 DOWNTO 0);
	 SiGNAL box3_x_pos						: std_logic_vector(9 DOWNTO 0);
	 
	 SIGNAL in_single_player  				: std_logic;
	 SIGNAL in_training_mode 				: std_logic;
	 
	 type state_type is (HOME_SCREEN, TRAINING_MODE, SINGLE_PLAYER_MODE);
    SIGNAL state, next_state				: state_type;
	 
begin 
		
size <= CONV_STD_LOGIC_VECTOR(4,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball

ball_x_pos <= cursor_column;
ball_y_pos <= cursor_row;

ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

--------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------
box1_size <= CONV_STD_LOGIC_VECTOR(50,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball

box1_x_pos <= CONV_STD_LOGIC_VECTOR(320, 10);
box1_y_pos <= CONV_STD_LOGIC_VECTOR(150, 10);

box1_on <= '1' when ( ('0' & box1_x_pos <= '0' & pixel_column + box1_size) and ('0' & pixel_column <= '0' & box1_x_pos + box1_size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & box1_y_pos <= pixel_row + box1_size) and ('0' & pixel_row <= box1_y_pos + box1_size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			
		--------------------------------------------------------------
			
box2_size <= CONV_STD_LOGIC_VECTOR(20,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball

box2_x_pos <= CONV_STD_LOGIC_VECTOR(320, 10);
box2_y_pos <= CONV_STD_LOGIC_VECTOR(250, 10);

box2_on <= '1' when ( ('0' & box2_x_pos <= '0' & pixel_column + box2_size) and ('0' & pixel_column <= '0' & box2_x_pos + box2_size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & box2_y_pos <= pixel_row + box2_size) and ('0' & pixel_row <= box2_y_pos + box2_size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			
			-------------------------------------------------------------------
			
box3_size <= CONV_STD_LOGIC_VECTOR(10,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball

box3_x_pos <= CONV_STD_LOGIC_VECTOR(320, 10);
box3_y_pos <= CONV_STD_LOGIC_VECTOR(350, 10);

box3_on <= '1' when ( ('0' & box3_x_pos <= '0' & pixel_column + box3_size) and ('0' & pixel_column <= '0' & box3_x_pos + box3_size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & box3_y_pos <= pixel_row + box3_size) and ('0' & pixel_row <= box3_y_pos + box3_size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			
-- Colours for the screen, cursor
Red <=	'0' when ball_on = '1' else
			'0' when box1_on = '1' else
			'0' when box2_on = '1' else
			'0' when box3_on = '1' else
			'0';
			
Green <= '0' when ball_on = '1' else
			'0' when box1_on = '1' else
			'0' when box2_on = '1' else
			'0' when box3_on = '1' else
			'1'; 
			
Blue <=  '0' when ball_on = '1' else
			'0' when box1_on = '1' else
			'0' when box2_on = '1' else
			'0' when box3_on = '1' else
			'1';

in_single_player <= '1' 
				  when cursor_row >= box2_y_pos 
				  and cursor_row <= box2_y_pos + box2_size 
				  and cursor_column >= box2_x_pos 
				  and cursor_column <= box2_x_pos + box2_size else '0';
in_training_mode <= '1' 
				  when cursor_row >= box3_y_pos 
				  and cursor_row <= box3_y_pos + box3_size 
				  and cursor_column >= box3_x_pos 
				  and cursor_column <= box3_x_pos + box3_size else '0';
				  
process(clk, reset)
begin
  if reset = '1' then
		state <= HOME_SCREEN;
  elsif rising_edge(clk) then
		state <= next_state;
  end if;
end process;

process(state)
begin
  case state is
		when HOME_SCREEN =>
			 if pb1 = '1' then
				if (cursor_row = box2_x_pos + box2_size) and (cursor_column = box2_y_pos + box2_size) then
				  next_state <= TRAINING_MODE;
				  --led3 <= '1';
              ----led4 <= '0';
				elsif (cursor_row = box3_x_pos + box3_size) and (cursor_column = box3_y_pos + box3_size) then
				  next_state <= SINGLE_PLAYER_MODE;
				  --led3 <= '0';
             -- led4 <= '1';
				else
				  next_state <= HOME_SCREEN;
				  --led3 <= '0';
              --led4 <= '0';
				 end if;
			 end if;

		when TRAINING_MODE =>
			 -- Implement Training Mode Logic
			 mode <= "01";  -- Indicate Training Mode
			 --led3 <= '1';
          --led4 <= '0';
			 if pb1 = '1' then
				if ((cursor_row = box2_x_pos + box2_size) and (cursor_column = box2_y_pos + box2_size)) or
					((cursor_row = box3_x_pos + box3_size) and (cursor_column = box3_y_pos + box3_size)) then
				  next_state <= HOME_SCREEN;
				  --led3 <= '0';
             -- led4 <= '0';
				end if;
			 end if;

		when SINGLE_PLAYER_MODE =>
			 -- Implement Single Player Mode Logic
			 mode <= "10";  -- Indicate Single Player Mode
			 --led3 <= '0';
          --led4 <= '1';
			 if pb1 = '1'then
				if ((cursor_row = box2_x_pos + box2_size) and (cursor_column = box2_y_pos + box2_size)) or
					((cursor_row = box3_x_pos + box3_size) and (cursor_column = box3_y_pos + box3_size)) then
				  next_state <= HOME_SCREEN;
				  --led3 <= '0';
              --led4 <= '0';
				end if;
			 end if;

		when others =>
			 next_state <= HOME_SCREEN;
			 --led3 <= '0';
          --led4 <= '0';
  end case;
end process;

END ARCHITECTURE behavior;
