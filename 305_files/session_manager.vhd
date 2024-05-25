LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;

entity session_manager is
	port(	
			pb1									: IN std_logic;
			vert_sync							: IN std_logic;
			
			size 									: IN std_logic_vector(9 DOWNTO 0); 
			ball_y_pos							: IN std_logic_vector(9 DOWNTO 0);
			ball_x_pos							: IN std_logic_vector(10 DOWNTO 0);
			
			cloud_drawing_width 				: IN std_logic_vector(9 DOWNTO 0);
			
			top_clouds_y_pos					: IN std_logic_vector(9 DOWNTO 0);
			bottom_clouds_y_pos				: IN std_logic_vector(9 DOWNTO 0);
			
			cloud1_x_pos						: IN std_logic_vector(10 DOWNTO 0);
			cloud1_top_height					: IN std_logic_vector(9 DOWNTO 0); 
			cloud1_bottom_height				: IN std_logic_vector(9 DOWNTO 0);
			
			cloud2_x_pos						: IN std_logic_vector(10 DOWNTO 0);
			cloud2_top_height					: IN std_logic_vector(9 DOWNTO 0); 
			cloud2_bottom_height				: IN std_logic_vector(9 DOWNTO 0);
			
			cloud3_x_pos						: IN std_logic_vector(10 DOWNTO 0);
			cloud3_top_height					: IN std_logic_vector(9 DOWNTO 0); 
			cloud3_bottom_height				: IN std_logic_vector(9 DOWNTO 0);
			
			game_running						: OUT std_logic;
			score									: OUT integer RANGE 10000 DOWNTO 0;
			lives 								: OUT integer RANGE 30 DOWNTO 0
	);
end entity session_manager;


architecture behaviour of session_manager is

SIGNAL current_score 											: integer RANGE 10000 DOWNTO 0;
SIGNAL current_lives 											: integer RANGE 100 DOWNTO 0;

SIGNAL allow_score_update, prev_allow_score_update		: std_logic;
SIGNAL collision, prev_collision								: std_logic;

begin

score <= current_score;
lives <= current_lives;

current_session : process(vert_sync)
begin
	if (rising_edge(vert_sync) and vert_sync = '1') then
		--------------------
		-- UPDATING SCORE --
		--------------------

		-- Check that the plane is not touching the clouds in the x and y directions
			-- If it is not touching then the score is updated by +1
		if ((cloud1_x_pos -  cloud_drawing_width <= ball_x_pos and ball_x_pos <= cloud1_x_pos and 
				top_clouds_y_pos + cloud1_top_height <= ball_y_pos and ball_y_pos + size <= bottom_clouds_y_pos - cloud1_bottom_height) or 
				
			(cloud2_x_pos - cloud_drawing_width  <= ball_x_pos and ball_x_pos <= cloud2_x_pos and
				top_clouds_y_pos + cloud2_top_height <= ball_y_pos and ball_y_pos + size <= bottom_clouds_y_pos - cloud2_bottom_height) or 
				
			(cloud3_x_pos - cloud_drawing_width <= ball_x_pos and ball_x_pos <= cloud3_x_pos and
				top_clouds_y_pos + cloud3_top_height <= ball_y_pos and ball_y_pos + size <= bottom_clouds_y_pos - cloud3_bottom_height)) then
				allow_score_update <= '1';
		else
				allow_score_update <= '0';
		end if;
		

		
		-- If it is not touching then the score is updated by +1
		if (allow_score_update = '1' and prev_allow_score_update = '0') then
			-- Updates Score
			if (current_score = 9999) then
				current_score <= 0;
			else
				current_Score <= current_score + 1;
			end if;
		end if;
		
		prev_allow_score_update <= allow_score_update;
		-------------------------
		-- CHECK FOR COLLISION --
		-------------------------
	
		if (((cloud1_x_pos - cloud_drawing_width <= ball_x_pos and ball_x_pos <= cloud1_x_pos)) and 		
			(ball_y_pos <= top_clouds_y_pos + cloud1_top_height or bottom_clouds_y_pos - cloud1_bottom_height <= ball_y_pos + size)) or 
				
			(((cloud2_x_pos - cloud_drawing_width <= ball_x_pos and ball_x_pos <= cloud2_x_pos)) and 	 	
			(ball_y_pos <= top_clouds_y_pos + cloud2_top_height or bottom_clouds_y_pos - cloud2_bottom_height <= ball_y_pos + size)) or 
				
			(((cloud3_x_pos - cloud_drawing_width <= ball_x_pos and ball_x_pos <= cloud3_x_pos)) and 		
			(ball_y_pos <= top_clouds_y_pos + cloud3_top_height or bottom_clouds_y_pos - cloud3_bottom_height <= ball_y_pos + size)) then
			collision <= '1';
		else
			collision <= '0';
		end if;
		
		
		if (collision = '1' and prev_collision = '0') then
			-- Updates Score
			if (current_lives = 0) then
				current_lives <= 30;
			else
				current_lives <= current_lives - 1;
			end if;
		end if;
		
		prev_collision <= collision;
	end if;
end process current_session;


start_game : process(pb1)
begin
	if (pb1'event and pb1 = '0') then	-- button is active low
		game_running <= '1';
	end if;
end process start_game;

end architecture behaviour;