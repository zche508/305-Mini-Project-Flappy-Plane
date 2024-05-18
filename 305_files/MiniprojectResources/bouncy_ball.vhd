LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT
		( pb1, pb2, mb1, mb2, clk, vert_sync, showText	: IN std_logic;
        pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		  random_number				: IN std_logic_vector(7 DOWNTO 0);
		  red, green, blue 			: OUT std_logic;
		  score 							: OUT integer RANGE 10000 DOWNTO 0);		
END bouncy_ball;

architecture behavior of bouncy_ball is

SIGNAL ball_on					: std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos				: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion			: std_logic_vector(9 DOWNTO 0);


-- CLOUD 1

SIGNAL top_cloud1_on			: std_logic;
SIGNAL top_cloud1_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL top_cloud1_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL top_cloud1_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,11);
SiGNAL top_cloud1_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,10);
SiGNAL top_cloud1_x_motion		: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

SIGNAL bottom_cloud1_on			: std_logic;
SIGNAL bottom_cloud1_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL bottom_cloud1_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL bottom_cloud1_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,11);
SiGNAL bottom_cloud1_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(479,10);
SiGNAL bottom_cloud1_x_motion	: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

-- CLOUD 2

SIGNAL top_cloud2_on			: std_logic;
SIGNAL top_cloud2_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL top_cloud2_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL top_cloud2_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(250,11);
SiGNAL top_cloud2_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,10);
SiGNAL top_cloud2_x_motion		: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

SIGNAL bottom_cloud2_on			: std_logic;
SIGNAL bottom_cloud2_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL bottom_cloud2_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL bottom_cloud2_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(250,11);
SiGNAL bottom_cloud2_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(479,10);
SiGNAL bottom_cloud2_x_motion	: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

-- CLOUD 3

SIGNAL top_cloud3_on			: std_logic;
SIGNAL top_cloud3_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL top_cloud3_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL top_cloud3_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(500,11);
SiGNAL top_cloud3_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,10);
SiGNAL top_cloud3_x_motion		: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

SIGNAL bottom_cloud3_on			: std_logic;
SIGNAL bottom_cloud3_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL bottom_cloud3_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL bottom_cloud3_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(500,11);
SiGNAL bottom_cloud3_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(479,10);
SiGNAL bottom_cloud3_x_motion	: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

-- CLOUD 4

SIGNAL top_cloud4_on			: std_logic;
SIGNAL top_cloud4_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL top_cloud4_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL top_cloud4_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(750,11);
SiGNAL top_cloud4_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,10);
SiGNAL top_cloud4_x_motion		: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

SIGNAL bottom_cloud4_on			: std_logic;
SIGNAL bottom_cloud4_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL bottom_cloud4_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL bottom_cloud4_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(750,11);
SiGNAL bottom_cloud4_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(479,10);
SiGNAL bottom_cloud4_x_motion	: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

SIGNAL current_score : integer RANGE 10000 DOWNTO 0;
SIGNAL allow_score_update, prev_allow_score_update : std_logic;
SIGNAL score_time_buffer : integer RANGE 60 downto 0;
BEGIN

score <= current_score;

size <= CONV_STD_LOGIC_VECTOR(16,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(150,11);

ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			
--ball_on <= '1' when (('0' & pixel_column + size <= '0' & ball_x_pos) and ('0' & ball_x_pos + size <= '0' & pixel_column) 	-- x_pos - size <= pixel_column <= x_pos + size
--					and (pixel_row + size <= '0' & ball_y_pos ) and ('0' & pixel_row <= ball_y_pos + size))  else	-- y_pos - size <= pixel_row <= y_pos + size
--			'0';			
			
-- CLOUD 1
top_cloud1_width <= CONV_STD_LOGIC_VECTOR(32,10);
top_cloud1_height <= ("00" & random_number) when (bottom_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0');-- CONV_STD_LOGIC_VECTOR(150,10);

top_cloud1_on <= '1' when (('0' & top_cloud1_x_pos <= '0' & pixel_column + top_cloud1_width) and ('0' & pixel_column <= '0' & top_cloud1_x_pos + top_cloud1_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_cloud1_y_pos <= pixel_row + top_cloud1_height) and ('0' & pixel_row <= top_cloud1_y_pos + top_cloud1_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

bottom_cloud1_width <= CONV_STD_LOGIC_VECTOR(32,10);
bottom_cloud1_height <= ("00" & random_number)  when (bottom_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(1,11)  and clk = '1');-- CONV_STD_LOGIC_VECTOR(200,10);

bottom_cloud1_on <= '1' when (('0' & bottom_cloud1_x_pos <= '0' & pixel_column + bottom_cloud1_width) and ('0' & pixel_column <= '0' & bottom_cloud1_x_pos + bottom_cloud1_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_cloud1_y_pos) and (bottom_cloud1_y_pos - top_cloud1_height) <= '0' & pixel_row)  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';			

-- CLOUD 2
top_cloud2_width <= CONV_STD_LOGIC_VECTOR(32,10);
top_cloud2_height <= ("00" & random_number) when (bottom_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0');-- CONV_STD_LOGIC_VECTOR(150,10);

top_cloud2_on <= '1' when (('0' & top_cloud2_x_pos <= '0' & pixel_column + top_cloud2_width) and ('0' & pixel_column <= '0' & top_cloud2_x_pos + top_cloud2_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_cloud2_y_pos <= pixel_row + top_cloud2_height) and ('0' & pixel_row <= top_cloud2_y_pos + top_cloud2_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

bottom_cloud2_width <= CONV_STD_LOGIC_VECTOR(32,10);
bottom_cloud2_height <= ("00" & random_number) when (bottom_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '1');-- CONV_STD_LOGIC_VECTOR(200,10);

bottom_cloud2_on <= '1' when (('0' & bottom_cloud2_x_pos <= '0' & pixel_column + bottom_cloud2_width) and ('0' & pixel_column <= '0' & bottom_cloud2_x_pos + bottom_cloud2_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_cloud2_y_pos) and (bottom_cloud2_y_pos - top_cloud2_height) <= '0' & pixel_row)  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';			


-- CLOUD 3
top_cloud3_width <= CONV_STD_LOGIC_VECTOR(32,10);
top_cloud3_height <= ("00" & random_number) when (bottom_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0');-- CONV_STD_LOGIC_VECTOR(150,10);

top_cloud3_on <= '1' when (('0' & top_cloud3_x_pos <= '0' & pixel_column + top_cloud3_width) and ('0' & pixel_column <= '0' & top_cloud3_x_pos + top_cloud3_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_cloud3_y_pos <= pixel_row + top_cloud3_height) and ('0' & pixel_row <= top_cloud3_y_pos + top_cloud3_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

bottom_cloud3_width <= CONV_STD_LOGIC_VECTOR(32,10);
bottom_cloud3_height <= ("00" & random_number) when (bottom_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '1');-- CONV_STD_LOGIC_VECTOR(200,10);

bottom_cloud3_on <= '1' when (('0' & bottom_cloud3_x_pos <= '0' & pixel_column + bottom_cloud3_width) and ('0' & pixel_column <= '0' & bottom_cloud3_x_pos + bottom_cloud3_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_cloud3_y_pos) and (bottom_cloud3_y_pos - top_cloud3_height) <= '0' & pixel_row)  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';	
	
-- CLOUD 4
top_cloud4_width <= CONV_STD_LOGIC_VECTOR(32,10);
top_cloud4_height <= ("00" & random_number) when (bottom_cloud4_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0');-- CONV_STD_LOGIC_VECTOR(150,10);

top_cloud4_on <= '1' when (('0' & top_cloud4_x_pos <= '0' & pixel_column + top_cloud4_width) and ('0' & pixel_column <= '0' & top_cloud4_x_pos + top_cloud4_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_cloud4_y_pos <= pixel_row + top_cloud4_height) and ('0' & pixel_row <= top_cloud4_y_pos + top_cloud4_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

bottom_cloud4_width <= CONV_STD_LOGIC_VECTOR(32,10);
bottom_cloud4_height <= ("00" & random_number) when (bottom_cloud4_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '1');-- CONV_STD_LOGIC_VECTOR(200,10);

bottom_cloud4_on <= '1' when (('0' & bottom_cloud4_x_pos <= '0' & pixel_column + bottom_cloud4_width) and ('0' & pixel_column <= '0' & bottom_cloud4_x_pos + bottom_cloud4_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_cloud4_y_pos) and (bottom_cloud4_y_pos - top_cloud4_height) <= '0' & pixel_row)  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';			
			
-- Colours for pixel data on video signal
-- Changing the background and ball colour by pushbuttons
--Red <=  pb1;
--Green <= (not pb2) and (not ball_on);
--Blue <=  not ball_on;

--Red <= ball_on;
--Green <= not ball_on;
--Blue <= not ball_on;


--	Red <=	'1' when pb1 = '1' else
--				(ball_on or top_cloud_on) when ShowText = '1' else 
--				ball_on or top_cloud_on or bottom_cloud_on;
--				
--	Green <= (not pb2) and (not ball_on) when pb2 = '1' else
--				'1' when ShowText = '1' else 
--				not ball_on or not top_cloud_on or not bottom_cloud_on;	 
--				
--	Blue <= '0' when ShowText = '1' else not top_cloud_on and not bottom_cloud_on and not ball_on; 
		

	Red <=	'1' when ShowText = '1' else 
				'1' when ball_on = '1' else
				'0' when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
							top_cloud3_on = '1' or bottom_cloud3_on = '1' or top_cloud4_on = '1' or bottom_cloud4_on = '1' else
				'0';
				
	Green <= '1' when ShowText = '1' else 
				'0' when ball_on = '1' else
				'0' when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
							top_cloud3_on = '1' or bottom_cloud3_on = '1' or top_cloud4_on = '1' or bottom_cloud4_on = '1' else
				'1'; 
				
	Blue <=  '1' when ShowText = '1' else 
				'0' when ball_on = '1' else
				'0' when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
							top_cloud3_on = '1' or bottom_cloud3_on = '1' or top_cloud4_on = '1' or bottom_cloud4_on = '1' else
				'1';	
	

	-- Check that the plane is not touching the clouds in the x and y directions
			-- If it is not touching then the score is updated by +1
		allow_score_update <= '1' when ((bottom_cloud1_x_pos <= ball_x_pos and ball_x_pos <= bottom_cloud1_x_pos + '0' & bottom_cloud1_width and 		
					top_cloud1_y_pos + top_cloud1_height <= ball_y_pos and ball_y_pos + size <= bottom_cloud1_y_pos - bottom_cloud1_height) or 
					
				(bottom_cloud2_x_pos <= ball_x_pos and ball_x_pos <= bottom_cloud2_x_pos + '0' & bottom_cloud2_width and 
					top_cloud2_y_pos + top_cloud2_height <= ball_y_pos and ball_y_pos + size <= bottom_cloud2_y_pos - bottom_cloud2_height) or 
					
				(bottom_cloud3_x_pos <= ball_x_pos and ball_x_pos <= bottom_cloud3_x_pos + '0' & bottom_cloud3_width and 
					top_cloud3_y_pos + top_cloud3_height <= ball_y_pos and ball_y_pos + size <= bottom_cloud3_y_pos - bottom_cloud3_height) or
					
				(bottom_cloud4_x_pos <= ball_x_pos and ball_x_pos <= bottom_cloud4_x_pos + '0' & bottom_cloud4_width and 
					top_cloud4_y_pos + top_cloud4_height <= ball_y_pos and ball_y_pos + size <= bottom_cloud4_y_pos - bottom_cloud4_height)) else
			'0';
					
--		-- Updates Score
--		current_score <= 0 when (current_score = 9999) else
--							  current_score + 1 when (allow_score_update'event and allow_score_update = '1');	
--		
Move_Ball: process (vert_sync)
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync)) then

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
		
		-- Compute next ball Y position
		ball_y_pos <= ball_y_pos + ball_y_motion;
		
		
		-- Compute next top_cloud1 x position
		if (top_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			top_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			top_cloud1_x_pos <= top_cloud1_x_pos + top_cloud1_x_motion;
		end if;
		-- Compute next bottom_cloud1 x position
		if (bottom_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			bottom_cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			bottom_cloud1_x_pos <= bottom_cloud1_x_pos + bottom_cloud1_x_motion;
		end if;
		
		
		-- Compute next top_cloud2 x position
		if (top_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			top_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			top_cloud2_x_pos <= top_cloud2_x_pos + top_cloud2_x_motion;
		end if;
		-- Compute next bottom_cloud2 x position
		if (bottom_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			bottom_cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			bottom_cloud2_x_pos <= bottom_cloud2_x_pos + bottom_cloud2_x_motion;
		end if;
		
		
		-- Compute next top_cloud3 x position
		if (top_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			top_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			top_cloud3_x_pos <= top_cloud3_x_pos + top_cloud3_x_motion;
		end if;
		-- Compute next bottom_cloud3 x position
		if (bottom_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			bottom_cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			bottom_cloud3_x_pos <= bottom_cloud3_x_pos + bottom_cloud3_x_motion;
		end if;
		
		--		-- Updates Score
		if (current_score = 9999) then
			current_score <= 0;
		elsif (allow_score_update = '1' and prev_allow_score_update = '0' and allow_score_update = '1') then
			current_Score <= current_score + 1;	
		-- when (allow_score_update'event and allow_score_update = '1')
		end if;
		
		prev_allow_score_update <= allow_score_update;
	end if;
end process Move_Ball;

END behavior;

