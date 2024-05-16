LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT
		( pb1, pb2, mb1, mb2, clk, vert_sync, showText	: IN std_logic;
        pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		  red, green, blue 			: OUT std_logic;
		  score 							: OUT integer);		
END bouncy_ball;

architecture behavior of bouncy_ball is

SIGNAL ball_on					: std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos				: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion			: std_logic_vector(9 DOWNTO 0);

SIGNAL top_cloud_on			: std_logic;
SIGNAL top_cloud_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL top_cloud_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL top_cloud_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(640,11);
SiGNAL top_cloud_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,10);
SiGNAL top_cloud_x_motion		: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

SIGNAL bottom_cloud_on			: std_logic;
SIGNAL bottom_cloud_width		: std_logic_vector(9 DOWNTO 0);
SIGNAL bottom_cloud_height		: std_logic_vector(9 DOWNTO 0);  
SiGNAL bottom_cloud_x_pos		: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,11);
SiGNAL bottom_cloud_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(479,10);
SiGNAL bottom_cloud_x_motion		: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(10,11);

SIGNAL current_score : integer := 0;

BEGIN

score <= current_score;

size <= CONV_STD_LOGIC_VECTOR(16,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(150,11);

ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			
			
			
-- top_cloud_x_pos and top_cloud_y_pos show the (x,y) for the centre of cloud	
top_cloud_width <= CONV_STD_LOGIC_VECTOR(32,10);
top_cloud_height <= CONV_STD_LOGIC_VECTOR(150,10);

top_cloud_on <= '1' when ( ('0' & top_cloud_x_pos <= '0' & pixel_column + top_cloud_width) and ('0' & pixel_column <= '0' & top_cloud_x_pos + top_cloud_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_cloud_y_pos <= pixel_row + top_cloud_height) and ('0' & pixel_row <= top_cloud_y_pos + top_cloud_height) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';



-- bottom_cloud_x_pos and bottom_cloud_y_pos show the (x,y) for the centre of cloud	
bottom_cloud_width <= CONV_STD_LOGIC_VECTOR(32,10);
bottom_cloud_height <= CONV_STD_LOGIC_VECTOR(200,10);

bottom_cloud_on <= '1' when ( ('0' & bottom_cloud_x_pos <= '0' & pixel_column + bottom_cloud_width) and ('0' & pixel_column <= '0' & bottom_cloud_x_pos + bottom_cloud_width) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row + bottom_cloud_height <= '0' & bottom_cloud_y_pos) and (bottom_cloud_y_pos + (CONV_STD_LOGIC_VECTOR(20,10) - top_cloud_height) <= '0' & pixel_row) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';			
			
			
-- Colours for pixel data on video signal
-- Changing the background and ball colour by pushbuttons
--Red <=  pb1;
--Green <= (not pb2) and (not ball_on);
--Blue <=  not ball_on;

--Red <= ball_on;
--Green <= not ball_on;
--Blue <= not ball_on;


	Red <=	'1' when pb1 = '1' else
				(ball_on or top_cloud_on) when ShowText = '1' else 
				ball_on or top_cloud_on or bottom_cloud_on;
				
	Green <= (not pb2) and (not ball_on) when pb2 = '1' else
				'1' when ShowText = '1' else 
				not ball_on or not top_cloud_on or not bottom_cloud_on;	 
				
	Blue <= '0' when ShowText = '1' else not top_cloud_on and not bottom_cloud_on and not ball_on; 
			 

Move_Ball: process (vert_sync)
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync)) then

		if (mb1 = '1') then
			ball_y_motion <= - CONV_STD_LOGIC_VECTOR(7,10);
			if(ball_y_pos <= size + CONV_STD_LOGIC_VECTOR(8,10)) then
				ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			end if;
		else
			ball_y_motion <= CONV_STD_LOGIC_VECTOR(7,10);
			if ('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size - CONV_STD_LOGIC_VECTOR(8,10)) then 		-- bottom
				ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			end if;
		end if;
		
		-- Compute next ball Y position
		ball_y_pos <= ball_y_pos + ball_y_motion;
		-- Compute next top cloud x position
		top_cloud_x_pos <= top_cloud_x_pos + top_cloud_x_motion;
		-- Compute next bottom cloud x position
		bottom_cloud_x_pos <= bottom_cloud_x_pos + bottom_cloud_x_motion;
		
		-- Updates Score
		if (current_score = 9999) then
			current_score <= 0;
		else 
			current_score <= current_score + 1;
		end if;
		
	end if;
end process Move_Ball;

END behavior;

