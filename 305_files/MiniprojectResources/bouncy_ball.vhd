LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT(pb1, pb2, mb1, mb2, clk, vert_sync, showText, showHeart, showPlane, showToolbox, showClouds: IN std_logic;
	  pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
	  random_number				: IN std_logic_vector(8 DOWNTO 0);
	  heart_pixel_data			: IN std_logic_vector(11 downto 0);
	  plane_pixel_data			: IN std_logic_vector(11 downto 0);
	  toolbox_pixel_data			: IN std_logic_vector(11 downto 0);
	  clouds_pixel_data			: IN std_logic_vector(11 downto 0);
	  red, green, blue 			: OUT std_logic_vector(3 DOWNTO 0);
	  score 							: OUT integer RANGE 10000 DOWNTO 0;
	  lives 							: OUT integer RANGE 30 DOWNTO 0
	);
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
SiGNAL cloud_motion_integer 	: integer range 31 downto 0 := 5;
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


SIGNAL current_score 			: integer RANGE 10000 DOWNTO 0;
SIGNAL allow_score_update 		: std_logic;
SIGNAL score_time_buffer 		: integer RANGE 511 DOWNTO 0 := cloud_inital_spacing; 

SIGNAL current_lives 			: integer RANGE 100 DOWNTO 0;
SIGNAL collision 					: std_logic := '0';
SIGNAL game_running 				: std_logic := '0';
SIGNAL collision_buffer 		: integer RANGE 511 DOWNTO 0 := cloud_inital_spacing; 

SIGNAL cloud_vertical_spacing : std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(100,10);

-- HEART	

SIGNAL heart_on					: std_logic;
SIGNAL heart_r						: std_logic_vector(3 DOWNTO 0);
SIGNAL heart_g						: std_logic_vector(3 DOWNTO 0);
SIGNAL heart_b						: std_logic_vector(3 DOWNTO 0);
SIGNAL heart_x_pos 				: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(20, 10); -- 20 pixels right?
SIGNAL heart_y_pos 				: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(20, 10); -- 20 pixels down
SIGNAL heart_size					: std_logic_vector(9 DOWNTO 0);

-- PLANE

SIGNAL plane_on					: std_logic;
-- SIGNAL plane_shift				: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(127, 10);
SIGNAL plane_r						: std_logic_vector(3 DOWNTO 0);
SIGNAL plane_g						: std_logic_vector(3 DOWNTO 0);
SIGNAL plane_b						: std_logic_vector(3 DOWNTO 0);
SIGNAL plane_x_size				: std_logic_vector(9 DOWNTO 0);
SIGNAL plane_y_size				: std_logic_vector(9 DOWNTO 0);
SIGNAL plane_y_pos	 			: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(60, 10); -- 200 pixels down
SiGNAL plane_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL plane_y_motion			: std_logic_vector(9 DOWNTO 0);

-- TOOLBOX

SIGNAL toolbox_on					: std_logic;
SIGNAL toolbox_r					: std_logic_vector(3 DOWNTO 0);
SIGNAL toolbox_g					: std_logic_vector(3 DOWNTO 0);
SIGNAL toolbox_b					: std_logic_vector(3 DOWNTO 0);
SIGNAL toolbox_x_pos				: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(20, 10); -- 20 pixels right?
SIGNAL toolbox_y_pos	 			: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(60, 10); -- 60 pixels down
SIGNAL toolbox_size				: std_logic_vector(9 DOWNTO 0);

-- CLOUD (LIGHTNING FOR NOW)

SIGNAL clouds_on					: std_logic;
SIGNAL clouds_r					: std_logic_vector(3 DOWNTO 0);
SIGNAL clouds_g					: std_logic_vector(3 DOWNTO 0);
SIGNAL clouds_b					: std_logic_vector(3 DOWNTO 0);
SIGNAL clouds_x_pos				: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(20, 10); -- 20 pixels right?
SIGNAL clouds_y_pos	 			: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(60, 10); -- 60 pixels down
SIGNAL clouds_size				: std_logic_vector(9 DOWNTO 0);

BEGIN

-- HEART

heart_size <= CONV_STD_LOGIC_VECTOR(6,10); -- this size doesn't do anything right now
heart_r <= heart_pixel_data(11 downto 8);
heart_g <= heart_pixel_data(7 DOWNTO 4);
heart_b <= heart_pixel_data(3 DOWNTO 0);
heart_on <= '1' when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(100,10) and -- height
							CONV_STD_LOGIC_VECTOR(0, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(12, 10)) else -- width
				'0';

-- PLANE

plane_x_size <= CONV_STD_LOGIC_VECTOR(42,10); -- 1 pixel offset
plane_y_size <= CONV_STD_LOGIC_VECTOR(22,10);
plane_x_pos <= CONV_STD_LOGIC_VECTOR(150, 11);
plane_r <= plane_pixel_data(11 downto 8);
plane_g <= plane_pixel_data(7 DOWNTO 4);
plane_b <= plane_pixel_data(3 DOWNTO 0);
--plane_on <= '1' when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(480,10) and -- height
--							CONV_STD_LOGIC_VECTOR(127, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(168, 10)) else -- width
--				'0';
--plane_on <= '1' when ( ('0' & plane_x_pos <= '0' & pixel_column + plane_x_size) and ('0' & pixel_column <= '0' & plane_x_pos + plane_x_size) 	-- x_pos - size <= pixel_column <= x_pos + size
--					and ('0' & plane_x_pos <= pixel_row + plane_y_size) and ('0' & pixel_row <= plane_x_pos + plane_y_size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
--			'0';
--plane_on <= '1' when (pixel_row >= plane_y_pos) and (pixel_row < plane_y_pos + plane_y_size) AND 
--					(pixel_column >= plane_x_pos - plane_shift) AND (pixel_column < plane_x_pos + plane_x_size - plane_shift) else
--			'0';
-- plane_on <= '1' when CONV_STD_LOGIC_VECTOR(127, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(168, 10) else '0';

-- TOOLBOX

toolbox_size <= CONV_STD_LOGIC_VECTOR(20,10);
toolbox_r <= toolbox_pixel_data(11 downto 8);
toolbox_g <= toolbox_pixel_data(7 DOWNTO 4);
toolbox_b <= toolbox_pixel_data(3 DOWNTO 0);
toolbox_on <= '1' when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and	pixel_row < CONV_STD_LOGIC_VECTOR(100,10) and -- height
							CONV_STD_LOGIC_VECTOR(255, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(286, 10)) else -- width
				'0';

-- CLOUDS

clouds_size <= CONV_STD_LOGIC_VECTOR(20,10);
clouds_r <= clouds_pixel_data(11 downto 8);
clouds_g <= clouds_pixel_data(7 DOWNTO 4);
clouds_b <= clouds_pixel_data(3 DOWNTO 0);
clouds_on <= '1' when (CONV_STD_LOGIC_VECTOR(0,10) < pixel_row and pixel_row < CONV_STD_LOGIC_VECTOR(200,10) and -- height
							CONV_STD_LOGIC_VECTOR(383, 10) < pixel_column and pixel_column < CONV_STD_LOGIC_VECTOR(424, 10)) else -- width
				'0';

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


Red <=	--"1111" when ShowText = '1' else
			heart_r when heart_on = '1' and showHeart = '1' else
			plane_r when showPlane = '1' and pixel_row <= plane_y_pos else
			toolbox_r when toolbox_on = '1' and showToolbox = '1' else
			clouds_r when clouds_on = '1' and showClouds = '1' else
			"1111" when ball_on = '1' else
			"0000" when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
						top_cloud3_on = '1' or bottom_cloud3_on = '1' else
			"1111" when collision = '1' else
			"0000";
			
Green <= --"1111" when ShowText = '1' else 
			heart_g when heart_on = '1' and showHeart = '1' else
			plane_g when showPlane = '1' and pixel_row <= plane_y_pos else
			toolbox_g when toolbox_on = '1' and showToolbox = '1' else
			clouds_g when clouds_on = '1' and showClouds = '1' else
			"0000" when ball_on = '1' else
			"1111" when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
						top_cloud3_on = '1' or bottom_cloud3_on = '1' else
			"1111"; 
			
Blue <=  --"1111" when ShowText = '1' else 
			heart_b when heart_on = '1' and showHeart = '1' else
			plane_b when showPlane = '1' and pixel_row <= plane_y_pos else
			toolbox_b when toolbox_on = '1' and showToolbox = '1' else
			clouds_b when clouds_on = '1' and showClouds = '1' else
			"0000" when ball_on = '1' else
			"0000" when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
						top_cloud3_on = '1' or bottom_cloud3_on = '1' else
			"1111";
			
			
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

	
Move_Ball: process (vert_sync)
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync) and game_running = '1') then

		-------------------------------
		-- CHECKING FOR MOUSE CLICKS --
		-------------------------------
		
		if (mb1 = '1') then
			ball_y_motion <= - CONV_STD_LOGIC_VECTOR(8,10);
			if(ball_y_pos <= size + CONV_STD_LOGIC_VECTOR(8,10)) then
				ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			end if;
		else
			ball_y_motion <= CONV_STD_LOGIC_VECTOR(4,10);
			if ('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size - CONV_STD_LOGIC_VECTOR(8,10)) then 		-- bottom
				ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			end if;
		end if;
		
--		if (mb1 = '1') then
--			plane_y_motion <= - CONV_STD_LOGIC_VECTOR(8,10);
--			if(plane_y_pos <= plane_y_size + CONV_STD_LOGIC_VECTOR(8,10)) then
--				plane_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
--			end if;
--		else
--			plane_y_motion <= CONV_STD_LOGIC_VECTOR(4,10);
--			if ('0' & plane_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - plane_y_size - CONV_STD_LOGIC_VECTOR(8,10)) then 		-- bottom
--				plane_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
--			end if;
--		end if;
		
		----------------------------------------------------
		-- UPDATING THE NEXT POSITION OF PLANE AND CLOUDS --
		----------------------------------------------------
		
		-- Compute next ball Y position
		ball_y_pos <= ball_y_pos + ball_y_motion;
--		plane_y_pos <= plane_y_pos + plane_y_motion;
		
		
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
			cloud_motion_integer <= 5;
		elsif (pb2 = '0') then
			cloud_motion <= - CONV_STD_LOGIC_VECTOR(10,11);
			cloud_motion_integer <= 10;
		end if;

	end if;
end process Move_Ball;

start_game : process(pb1)
begin
	if (pb1'event and pb1 = '0') then	-- button is active low
		game_running <= '1';
	end if;
end process start_game;

END behavior;
