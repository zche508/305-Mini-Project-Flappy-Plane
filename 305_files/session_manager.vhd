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
			
			select_training_mode				: IN std_logic;
			select_singleplayer_mode		: IN std_logic;
			select_retry_mode					: IN std_logic;
			select_homescreen_mode			: IN std_logic;
			
			toolbox_on 							: IN std_logic;
			toolbox_size	 					: IN std_logic_vector(9 DOWNTO 0);
			toolbox_pos_x						: IN std_logic_vector(9 DOWNTO 0);
			toolbox_pos_y						: IN std_logic_vector(10 DOWNTO 0);	
			
			reset_out							: OUT std_logic;
			game_running_out					: OUT std_logic;
			main_menu_on						: OUT std_logic := '1';
			gameover_menu_on					: OUT std_logic;
			score									: OUT integer RANGE 10000 DOWNTO 0;
			lives 								: OUT integer RANGE 30 DOWNTO 0;
			
			difficulty1							: OUT std_logic;
			difficulty2							: OUT std_logic;
			difficulty3							: OUT std_logic
	);
end entity session_manager;


architecture behaviour of session_manager is

SIGNAL click_cooldown 											: integer RANGE 100 DOWNTO 0 := 0;
SIGNAL invincibility_period 									: integer RANGE 127 DOWNTO 0 := 0;

SIGNAL current_score 											: integer RANGE 10000 DOWNTO 0 := 0;
SIGNAL current_lives 											: integer RANGE 100 DOWNTO 0 := 0;

SIGNAL allow_score_update, prev_allow_score_update		: std_logic;
SIGNAL collision, prev_collision								: std_logic;
SIGNAL reset														: std_logic;
SIGNAL game_running												: std_logic := '0';
SIGNAL training_mode, singleplayer_mode					: std_logic := '0';

SIGNAL toolbox_hit, pre_toolbox_hit							: std_logic;

-- 01(training mode), 10(singleplayer) 
SIGNAL prev_gamemode												: std_logic_vector(1 downto 0);

begin

score <= current_score;
lives <= current_lives;
game_running_out <= game_running;
reset_out <= reset;

difficulty1 <= '1' when (singleplayer_mode = '1' and 0 <= current_score and current_score <= 5) else 
					'1' when (training_mode = '1' and 0 <= current_score) else '0';
difficulty2 <= '1' when (singleplayer_mode = '1' and 6 <= current_score and current_score <= 10) else '0';
difficulty3 <= '1' when (singleplayer_mode = '1' and 11 <= current_score) else '0';

current_session : process(vert_sync)
begin
	if (rising_edge(vert_sync) and vert_sync = '1') then
		
		if (reset = '1') then
			reset <= '0';
		end if;
		
		-- click cooldown to detect one click so the menu buttons are not rapidly clicked.
		if (click_cooldown <= 45) then
			click_cooldown <= click_cooldown + 1;
		else
			-- start game in training mode
			if (select_training_mode = '1') then
				game_running <= '1';
				training_mode <= '1';
				current_lives <= 5;
				current_score <= 0;
				main_menu_on <= '0';
				reset <= '1';
				click_cooldown <= 0;
				invincibility_period <= 0;
			end if;
			
			-- start game in singleplayer mode
			if (select_singleplayer_mode = '1') then
				game_running <= '1';
				singleplayer_mode <= '1';
				current_lives <= 5;
				current_score <= 0;
				main_menu_on <= '0';
				reset <= '1';
				click_cooldown <= 0;
				invincibility_period <= 0;
			end if;
			
			-- restarts game in in current gamemode
			if (select_retry_mode = '1') then
				if (prev_gamemode = "01") then
					training_mode <= '1';
				elsif (prev_gamemode = "10") then
					singleplayer_mode <= '1';
				end if;
				
				game_running <= '1';
				current_lives <= 5;
				current_score <= 0;
				main_menu_on <= '0';
				gameover_menu_on <= '0';
				reset <= '1';
				click_cooldown <= 0;
		
			end if;
			
			-- goes back to main menu
			if (select_homescreen_mode = '1') then
				gameover_menu_on <= '0';
				main_menu_on <= '1';
				click_cooldown <= 0;
			end if;
		end if;
		if (game_running = '1') then
			-- at the start of the game the player is invincible
		
			if (invincibility_period <= 120) then
				invincibility_period <= invincibility_period + 1;
			end if;
		
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
		
			if (invincibility_period = 121 and
				((cloud1_x_pos - cloud_drawing_width <= ball_x_pos and ball_x_pos <= cloud1_x_pos)) and 		
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
				-- if no more lives then game stops and game over menu is shown
				if (current_lives = 1 or "0111000111" <= ball_y_pos) then
	
					current_lives <= 0;
	
					if (training_mode = '1') then
						prev_gamemode <= "01";
					elsif (singleplayer_mode = '1') then
						prev_gamemode <= "10";
					end if;
					
					game_running <= '0';
					gameover_menu_on <= '1';
					training_mode <= '0';
					singleplayer_mode <= '0';
					click_cooldown <= 0;
				else
					-- Updates Score
					current_lives <= current_lives - 1;
				end if;
			end if;
			
			prev_collision <= collision;
		end if;
		
		 -- Check for collision with the bird
		 if ((ball_x_pos <= toolbox_pos_x and toolbox_pos_x <= ball_x_pos + size) and
			  (ball_y_pos <= toolbox_pos_y and toolbox_pos_y <= ball_y_pos + size)) then 
			  toolbox_hit <= '1';
		 else
			  toolbox_hit <= '0';
		 end if;

		 if (toolbox_hit = '1' and pre_toolbox_hit = '0') then
				 current_lives <= current_lives + 1;
		 end if;

		 pre_toolbox_hit <= toolbox_hit;
		 
	end if;
end process current_session;

end architecture behaviour;