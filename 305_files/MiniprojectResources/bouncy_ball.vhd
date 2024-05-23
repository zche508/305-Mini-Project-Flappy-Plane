LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT(pb1, pb2, mb1, mb2, clk, vert_sync, showText	: IN std_logic;
	  pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
	  random_number				: IN std_logic_vector(8 DOWNTO 0);
	  red, green, blue 			: OUT std_logic;
	  score 							: OUT integer RANGE 10000 DOWNTO 0;
	  lives 							: OUT integer RANGE 30 DOWNTO 0);		
END bouncy_ball;

architecture behavior of bouncy_ball is

SIGNAL ball_on						: std_logic;
SIGNAL size 						: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos					: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(240, 10) - size;
SiGNAL ball_x_pos					: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion				: std_logic_vector(9 DOWNTO 0);

SIGNAL cloud_width 				: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(32,10);
SIGNAL cloud_drawing_width 	: std_logic_vector(9 DOWNTO 0) := cloud_width(8 DOWNTO 0) & '0';
SiGNAL cloud_motion 				: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(5,11);
SiGNAL cloud_motion_integer 	: integer RANGE 31 downto 0 := 5;
SIGNAL cloud_inital_spacing 	: integer RANGE 511 DOWNTO 0 := 250; 
SIGNAL cloud_inital_height		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(10,10);

-- CLOUD 1

SIGNAL top_cloud1_on				: std_logic;
SIGNAL top_cloud1_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL top_cloud1_x_pos			: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,11);
SiGNAL top_cloud1_y_pos			: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,10);

SIGNAL bottom_cloud1_on			: std_logic;
SIGNAL bottom_cloud1_height	: std_logic_vector(9 DOWNTO 0);  
SiGNAL bottom_cloud1_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,11);
SiGNAL bottom_cloud1_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(479,10);

-- CLOUD 2

SIGNAL top_cloud2_on				: std_logic;
SIGNAL top_cloud2_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL top_cloud2_x_pos			: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(cloud_inital_spacing,11);
SiGNAL top_cloud2_y_pos			: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,10);

SIGNAL bottom_cloud2_on			: std_logic;
SIGNAL bottom_cloud2_height	: std_logic_vector(9 DOWNTO 0);  
SiGNAL bottom_cloud2_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(cloud_inital_spacing,11);
SiGNAL bottom_cloud2_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(479,10);

-- CLOUD 3

SIGNAL top_cloud3_on				: std_logic;
SIGNAL top_cloud3_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL top_cloud3_x_pos			: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(2*cloud_inital_spacing,11);
SiGNAL top_cloud3_y_pos			: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,10);

SIGNAL bottom_cloud3_on			: std_logic;
SIGNAL bottom_cloud3_height	: std_logic_vector(9 DOWNTO 0);  
SiGNAL bottom_cloud3_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(2*cloud_inital_spacing,11);
SiGNAL bottom_cloud3_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(479,10);

-- SCORE
SIGNAL current_score 			: integer RANGE 10000 DOWNTO 0;
SIGNAL allow_score_update 		: std_logic;
SIGNAL score_time_buffer 		: integer RANGE 511 DOWNTO 0 := cloud_inital_spacing; 

-- LIVES
SIGNAL current_lives 			: integer RANGE 100 DOWNTO 0;
SIGNAL collision 					: std_logic := '0';
SIGNAL game_running 				: std_logic := '0';

SIGNAL collision_buffer 		: integer RANGE 511 DOWNTO 0 := cloud_inital_spacing; 
SiGNAL cloud_vertical_spacing : std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(100,10);
SIGNAL prev_mb1 : std_logic;

-- Plane motion
type motion_array is array (0 to 11) of std_logic_vector(9 DOWNTO 0);
SIGNAL ball_up_motion : motion_array;
SIGNAL ball_down_motion : motion_array;

SIGNAL ball_up_motion_counter, prev_ball_up_motion_counter : integer RANGE 11 DOWNTO 0;
SIGNAL ball_down_motion_counter : integer RANGE 7 DOWNTO 0;



BEGIN

ball_up_motion(0) <= - CONV_STD_LOGIC_VECTOR(3, 10);
ball_up_motion(1) <= - CONV_STD_LOGIC_VECTOR(6, 10);
ball_up_motion(2) <= - CONV_STD_LOGIC_VECTOR(9, 10);
ball_up_motion(3) <= - CONV_STD_LOGIC_VECTOR(12, 10);
ball_up_motion(4) <= - CONV_STD_LOGIC_VECTOR(15, 10);
ball_up_motion(6) <= - CONV_STD_LOGIC_VECTOR(12, 10);
ball_up_motion(7) <= - CONV_STD_LOGIC_VECTOR(12, 10);
ball_up_motion(8) <= - CONV_STD_LOGIC_VECTOR(9, 10);
ball_up_motion(9) <= - CONV_STD_LOGIC_VECTOR(6, 10);
ball_up_motion(10) <= - CONV_STD_LOGIC_VECTOR(3, 10);

--ball_up_motion(0) <= - CONV_STD_LOGIC_VECTOR(6, 10);
--ball_up_motion(1) <= - CONV_STD_LOGIC_VECTOR(10, 10);
--ball_up_motion(2) <= - CONV_STD_LOGIC_VECTOR(16, 10);
--ball_up_motion(3) <= - CONV_STD_LOGIC_VECTOR(10, 10);
--ball_up_motion(4) <= - CONV_STD_LOGIC_VECTOR(6, 10);

ball_down_motion(0) <= CONV_STD_LOGIC_VECTOR(0, 10);
ball_down_motion(1) <= CONV_STD_LOGIC_VECTOR(2, 10);
ball_down_motion(2) <= CONV_STD_LOGIC_VECTOR(4, 10);
ball_down_motion(3) <= CONV_STD_LOGIC_VECTOR(6, 10);
ball_down_motion(4) <= CONV_STD_LOGIC_VECTOR(8, 10);


score <= current_score;
lives <= current_lives;

size <= CONV_STD_LOGIC_VECTOR(16,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(150, 11);

ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			
-- CLOUD 1
top_cloud1_height <= ('0' & random_number) when (top_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); -- CONV_STD_LOGIC_VECTOR(150,10);
							
top_cloud1_on <= '1' when (('0' & pixel_column <= '0' & top_cloud1_x_pos) and ('0' & top_cloud1_x_pos - cloud_drawing_width <= '0' & pixel_column) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_cloud1_y_pos <= pixel_row + top_cloud1_height) and ('0' & pixel_row <= top_cloud1_y_pos + top_cloud1_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

bottom_cloud1_height <= (bottom_cloud1_y_pos - ('0' & random_number) - cloud_vertical_spacing)  when (bottom_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); -- CONV_STD_LOGIC_VECTOR(200,10);
								
bottom_cloud1_on <= '1' when (('0' & pixel_column <= '0' & bottom_cloud1_x_pos) and ('0' & bottom_cloud1_x_pos - cloud_drawing_width <= '0' & pixel_column)  	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_cloud1_y_pos) and (bottom_cloud1_y_pos - bottom_cloud1_height) <= '0' & pixel_row)  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';			

-- CLOUD 2
top_cloud2_height <= ('0' & random_number) when (top_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); -- CONV_STD_LOGIC_VECTOR(150,10);

							
top_cloud2_on <= '1' when (('0' & pixel_column <= '0' & top_cloud2_x_pos) and ('0' & top_cloud2_x_pos - cloud_drawing_width <= '0' & pixel_column) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_cloud2_y_pos <= pixel_row + top_cloud2_height) and ('0' & pixel_row <= top_cloud2_y_pos + top_cloud2_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

bottom_cloud2_height <= (bottom_cloud2_y_pos - ('0' & random_number) - cloud_vertical_spacing) when (bottom_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); -- CONV_STD_LOGIC_VECTOR(200,10);

								
bottom_cloud2_on <= '1' when (('0' & pixel_column <= '0' & bottom_cloud2_x_pos) and ('0' & bottom_cloud2_x_pos - cloud_drawing_width <= '0' & pixel_column) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_cloud2_y_pos) and (bottom_cloud2_y_pos - bottom_cloud2_height) <= '0' & pixel_row)  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';			


-- CLOUD 3
top_cloud3_height <= ('0' & random_number) when (top_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); -- CONV_STD_LOGIC_VECTOR(150,10);
							
top_cloud3_on <= '1' when (('0' & pixel_column <= '0' & top_cloud3_x_pos) and ('0' & top_cloud3_x_pos - cloud_drawing_width <= '0' & pixel_column) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_cloud3_y_pos <= pixel_row + top_cloud3_height) and ('0' & pixel_row <= top_cloud3_y_pos + top_cloud3_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

bottom_cloud3_height <= (bottom_cloud3_y_pos - ('0' & random_number) - cloud_vertical_spacing) when (bottom_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); -- CONV_STD_LOGIC_VECTOR(200,10);

bottom_cloud3_on <= '1' when (('0' & pixel_column <= '0' & bottom_cloud3_x_pos) and ('0' & bottom_cloud3_x_pos - cloud_drawing_width <= '0' & pixel_column) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_cloud3_y_pos) and (bottom_cloud3_y_pos - bottom_cloud3_height) <= '0' & pixel_row)  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0'; 
			
-- Colours for pixel data on video signal
-- Changing the background and ball colour by pushbuttons
--Red <=  pb1;
--Green <= (not pb2) and (not ball_on);
--Blue <=  not ball_on;

--Red <= ball_on;
--Green <= not ball_on;
--Blue <= not ball_on;


Red <=	'1' when ShowText = '1' else 
			'1' when ball_on = '1' else
			'0' when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
						top_cloud3_on = '1' or bottom_cloud3_on = '1' else
			'1' when collision = '1' else
			'0';
			
Green <= '1' when ShowText = '1' else 
			'0' when ball_on = '1' else
			'1' when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
						top_cloud3_on = '1' or bottom_cloud3_on = '1' else
			'1'; 
			
Blue <=  '1' when ShowText = '1' else 
			'0' when ball_on = '1' else
			'0' when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
						top_cloud3_on = '1' or bottom_cloud3_on = '1' else
			'1';
			
			
--Red <=	'1' when ShowText = '1' else 
--			'1' when ball_on = '1' else
--			'1' when top_cloud1_on = '1' or bottom_cloud1_on = '1' else
--			'1' when collision = '1' else
--			'0';
--			
--Green <= '1' when ShowText = '1' else 
--			'0' when ball_on = '1' else
--			'0' when top_cloud2_on = '1' or bottom_cloud2_on = '1' else
--			'1'; 
--			
--Blue <=  '1' when ShowText = '1' else 
--			'0' when ball_on = '1' else
--			'0' when top_cloud3_on = '1' or bottom_cloud3_on = '1' else
--			'1';

---------------------------
---- CHECK FOR COLLISION --
---------------------------
--	
--collision <= '1' when (((ball_x_pos <= bottom_cloud1_x_pos and bottom_cloud1_x_pos - cloud_drawing_width <= ball_x_pos) or 
--	(ball_x_pos + size  <= bottom_cloud1_x_pos and bottom_cloud1_x_pos - cloud_drawing_width <= ball_x_pos)) and 		
--	(ball_y_pos <= top_cloud1_y_pos + top_cloud1_height or bottom_cloud1_y_pos - bottom_cloud1_height <= ball_y_pos + size)) or 
--		
--	(((ball_x_pos <= bottom_cloud2_x_pos and bottom_cloud2_x_pos - cloud_drawing_width <= ball_x_pos) or 
--	(ball_x_pos + size  <= bottom_cloud2_x_pos and bottom_cloud2_x_pos - cloud_drawing_width <= ball_x_pos)) and 	 	
--	(ball_y_pos <= top_cloud2_y_pos + top_cloud2_height or bottom_cloud2_y_pos - bottom_cloud2_height <= ball_y_pos + size)) or 
--		
--	(((ball_x_pos <= bottom_cloud3_x_pos and bottom_cloud3_x_pos - cloud_drawing_width <= ball_x_pos) or 
--	(ball_x_pos + size  <= bottom_cloud3_x_pos and bottom_cloud3_x_pos - cloud_drawing_width <= ball_x_pos)) and 		
--	(ball_y_pos <= top_cloud3_y_pos + top_cloud3_height or bottom_cloud3_y_pos - bottom_cloud3_height <= ball_y_pos + size)) else
--	'0';

--mouse_click : process(mb1)
--begin
--	if (game_running = '1') then
--		if (rising_edge(mb1) and mb1 = '1') then
--			-- Check for mouse clicks
--			if (mb1 = '1' and prev_mb1 = '0') then
--				ball_up_motion_counter <= 0;
--			end if;
--	end if;
--
--
--end process mouse_click;


move_plane: process (vert_sync)
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync) and vert_sync = '1') then
		-------------------------------
		---- UPDATES PLANE POSITION ---
		-------------------------------
		
		-- Check for mouse clicks
		if (mb1 = '1' and prev_mb1 = '0') then
			ball_up_motion_counter <= 0;
		end if;
			
			
		-- Updates the index to change the index of the "motion" of the ball
		
		if (ball_down_motion_counter <= 4) then
			-- motion down case
			if (ball_y_pos + ball_down_motion(ball_down_motion_counter) < CONV_STD_LOGIC_VECTOR(479,10)) then
				ball_y_motion <= ball_down_motion(ball_down_motion_counter);
			else
				ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			end if;
			ball_down_motion_counter <= ball_down_motion_counter + 1;
		else
			if (ball_up_motion_counter = 11 and prev_ball_up_motion_counter = 10) then
				ball_down_motion_counter <= 0;
			end if;
		end if;
		
		prev_ball_up_motion_counter <= ball_up_motion_counter;
		if (ball_up_motion_counter <= 10) then
			-- motion up case
			if (ball_y_pos + ball_up_motion(ball_up_motion_counter) > size) then
				ball_y_motion <= ball_up_motion(ball_up_motion_counter);
			end if;
			
			ball_up_motion_counter <= ball_up_motion_counter + 1;
		end if;
		
		-----------------------------------------
		-- UPDATING THE NEXT POSITION OF PLANE --
		-----------------------------------------
		if ((size + ball_y_pos + ball_y_motion < CONV_STD_LOGIC_VECTOR(479,10)) or (size < ball_y_pos + ball_y_motion)) then
			ball_y_pos <= ball_y_pos + ball_y_motion;
		end if;
		
		prev_mb1 <= mb1;

	end if;

end process move_plane;


clouds: process (vert_sync)
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync) and game_running = '1') then
		
		------------------------------------------
		-- UPDATING THE NEXT POSITION OF CLOUDS --
		------------------------------------------
		
		
		-- Compute next top_cloud1 x position
		if (top_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			top_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			top_cloud1_x_pos <= top_cloud1_x_pos + cloud_motion;
		end if;
		-- Compute next bottom_cloud1 x position
		if (bottom_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			bottom_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			bottom_cloud1_x_pos <= bottom_cloud1_x_pos + cloud_motion;
		end if;
		
		
		-- Compute next top_cloud2 x position
		if (top_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			top_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			top_cloud2_x_pos <= top_cloud2_x_pos + cloud_motion;
		end if;
		-- Compute next bottom_cloud2 x position
		if (bottom_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			bottom_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			bottom_cloud2_x_pos <= bottom_cloud2_x_pos + cloud_motion;
		end if;
		
		
		-- Compute next top_cloud3 x position
		if (top_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			top_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			top_cloud3_x_pos <= top_cloud3_x_pos + cloud_motion;
		end if;
		-- Compute next bottom_cloud3 x position
		if (bottom_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			bottom_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			bottom_cloud3_x_pos <= bottom_cloud3_x_pos + cloud_motion;
		end if;
		
		--------------------
		-- UPDATING SCORE --
		--------------------
		
		-- Check that the plane is not touching the clouds in the x and y directions
			-- If it is not touching then the score is updated by +1
		if ((bottom_cloud1_x_pos <= ball_x_pos and ball_x_pos <= bottom_cloud1_x_pos + '0' & cloud_width and 		
				top_cloud1_y_pos + top_cloud1_height <= ball_y_pos and ball_y_pos + size <= bottom_cloud1_y_pos - bottom_cloud1_height) or 
				
			(bottom_cloud2_x_pos <= ball_x_pos and ball_x_pos <= bottom_cloud2_x_pos + '0' & cloud_width and 
				top_cloud2_y_pos + top_cloud2_height <= ball_y_pos and ball_y_pos + size <= bottom_cloud2_y_pos - bottom_cloud2_height) or 
				
			(bottom_cloud3_x_pos <= ball_x_pos and ball_x_pos <= bottom_cloud3_x_pos + '0' & cloud_width and 
				top_cloud3_y_pos + top_cloud3_height <= ball_y_pos and ball_y_pos + size <= bottom_cloud3_y_pos - bottom_cloud3_height)) then
				allow_score_update <= '1';
		else
				allow_score_update <= '0';
		end if;
		
		if (cloud_motion_integer <= score_time_buffer - cloud_motion_integer) then
			score_time_buffer <= score_time_buffer - cloud_motion_integer;
		end if;

		
		-- If it is not touching then the score is updated by +1
		if (score_time_buffer <= cloud_motion_integer and allow_score_update = '1') then
			-- Updates Score
			if (current_score = 9999) then
				current_score <= 0;
			else
				current_Score <= current_score + 1;
				score_time_buffer <= cloud_inital_spacing;
			-- when (allow_score_update'event and allow_score_update = '1')
			end if;
		end if;
		
		-------------------------
		-- CHECK FOR COLLISION --
		-------------------------
	
		if (((ball_x_pos <= bottom_cloud1_x_pos and bottom_cloud1_x_pos - cloud_drawing_width <= ball_x_pos) or 
			(ball_x_pos + size  <= bottom_cloud1_x_pos and bottom_cloud1_x_pos - cloud_drawing_width <= ball_x_pos)) and 		
			(ball_y_pos <= top_cloud1_y_pos + top_cloud1_height or bottom_cloud1_y_pos - bottom_cloud1_height <= ball_y_pos + size)) or 
				
			(((ball_x_pos <= bottom_cloud2_x_pos and bottom_cloud2_x_pos - cloud_drawing_width <= ball_x_pos) or 
			(ball_x_pos + size  <= bottom_cloud2_x_pos and bottom_cloud2_x_pos - cloud_drawing_width <= ball_x_pos)) and 	 	
			(ball_y_pos <= top_cloud2_y_pos + top_cloud2_height or bottom_cloud2_y_pos - bottom_cloud2_height <= ball_y_pos + size)) or 
				
			(((ball_x_pos <= bottom_cloud3_x_pos and bottom_cloud3_x_pos - cloud_drawing_width <= ball_x_pos) or 
			(ball_x_pos + size  <= bottom_cloud3_x_pos and bottom_cloud3_x_pos - cloud_drawing_width <= ball_x_pos)) and 		
			(ball_y_pos <= top_cloud3_y_pos + top_cloud3_height or bottom_cloud3_y_pos - bottom_cloud3_height <= ball_y_pos + size)) then
			collision <= '1';
		else
			collision <= '0';
		end if;
		
		if (cloud_motion_integer <= collision_buffer - cloud_motion_integer) then
			collision_buffer <= collision_buffer - cloud_motion_integer;
		end if;

		
		-- If it is not touching then the score is updated by +1
		if (collision_buffer <= cloud_motion_integer and collision = '1') then
			-- Updates Score
			if (current_lives = 0) then
				current_lives <= 30;
			else
				current_lives <= current_lives - 1;
				collision_buffer <= cloud_inital_spacing;
			-- when (allow_score_update'event and allow_score_update = '1')
			end if;
		end if;
		
		-------------------------
		-- UPDATING GAME SPEED --
		-------------------------
				
		if (pb1 = '0') then
			cloud_motion <= - CONV_STD_LOGIC_VECTOR(5,11);
			cloud_motion_integer <= 2;
		elsif (pb2 = '0') then
			cloud_motion <= - CONV_STD_LOGIC_VECTOR(10,11);
			cloud_motion_integer <= 5;
		end if;

	end if;
end process clouds;

start_game : process(pb1)
begin
	if (pb1'event and pb1 = '0') then	-- button is active low
		game_running <= '1';
	end if;
end process start_game;

END behavior;

