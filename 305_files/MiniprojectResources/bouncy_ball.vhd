LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT(	game_running, mb1, vert_sync			: IN std_logic;
			pixel_row, pixel_column					: IN std_logic_vector(9 DOWNTO 0);
			ball_on 										: OUT std_logic;
			size_out 									: OUT std_logic_vector(9 DOWNTO 0);
			ball_y_pos_out								: OUT std_logic_vector(9 DOWNTO 0);
			ball_x_pos_out								: OUT std_logic_vector(10 DOWNTO 0));		
END bouncy_ball;

architecture behavior of bouncy_ball is

SIGNAL size 						: std_logic_vector(9 DOWNTO 0); 

SIGNAL ball_y_pos					: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(240, 10) - size;
SiGNAL ball_x_pos					: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion				: std_logic_vector(9 DOWNTO 0);

SIGNAL prev_mb1, mb1_clicked : std_logic;

-- Plane motion
type motion_array is array (0 to 11) of std_logic_vector(9 DOWNTO 0);
SIGNAL ball_up_motion : motion_array;
SIGNAL ball_down_motion : motion_array;

SIGNAL ball_up_motion_counter, prev_ball_up_motion_counter : integer RANGE 11 DOWNTO 0;
SIGNAL ball_down_motion_counter : integer RANGE 7 DOWNTO 0;

-- trying code for toolbox
--SIGNAL toolbox_on             : std_logic;
--SIGNAL toolbox_size 				: std_logic_vector(9 DOWNTO 0);
--constant TOOLBOX_WIDTH        : integer := 10;
--constant TOOLBOX_HEIGHT       : integer := 10;
--constant TOOLBOX_SPEED        : integer := 1; 
--SIGNAL toolbox_pos_x			   : std_logic_vector(10 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(750, 11);
--SiGNAL toolbox_pos_y				: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(240, 10) - size;
--SIGNAL cloud_count 				: integer RANGE 0 TO 10 := 0;

BEGIN

-- Values for the ball up motion
ball_up_motion(0) <= - CONV_STD_LOGIC_VECTOR(15, 10);
ball_up_motion(1) <= - CONV_STD_LOGIC_VECTOR(15, 10);
ball_up_motion(2) <= - CONV_STD_LOGIC_VECTOR(9, 10);
ball_up_motion(3) <= - CONV_STD_LOGIC_VECTOR(12, 10);
ball_up_motion(4) <= - CONV_STD_LOGIC_VECTOR(15, 10);
ball_up_motion(6) <= - CONV_STD_LOGIC_VECTOR(12, 10);
ball_up_motion(7) <= - CONV_STD_LOGIC_VECTOR(9, 10);
ball_up_motion(8) <= - CONV_STD_LOGIC_VECTOR(6, 10);
ball_up_motion(9) <= - CONV_STD_LOGIC_VECTOR(3, 10);
ball_up_motion(10) <= - CONV_STD_LOGIC_VECTOR(0, 10);

-- values for the ball down motion
ball_down_motion(0) <= CONV_STD_LOGIC_VECTOR(0, 10);
ball_down_motion(1) <= CONV_STD_LOGIC_VECTOR(2, 10);
ball_down_motion(2) <= CONV_STD_LOGIC_VECTOR(3, 10);
ball_down_motion(3) <= CONV_STD_LOGIC_VECTOR(4, 10);
ball_down_motion(4) <= CONV_STD_LOGIC_VECTOR(6, 10);




--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--toolbox visible and size
--toolbox_size <= CONV_STD_LOGIC_VECTOR(10,10);
--toolbox_on <= '1' when ( ('0' & toolbox_pos_x <= '0' & pixel_column + toolbox_size) and ('0' & pixel_column <= '0' & toolbox_pos_x + toolbox_size) -- x_pos - size <= pixel_column <= x_pos + size
--					and ('0' & toolbox_pos_y <= pixel_row + toolbox_size) and ('0' & pixel_row <= toolbox_pos_y + toolbox_size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
--			'0';
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ball_x_pos_out <= ball_x_pos;  
ball_y_pos_out	<= ball_y_pos;

size_out <= size;
size <= CONV_STD_LOGIC_VECTOR(16,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(150, 11);

ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			

mouse_click : process(mb1, vert_sync)
begin
	-- Check for mouse clicks

	if (mb1 = '1' and prev_mb1 = '0') then
		mb1_clicked <= '1';
	elsif (mb1 = '1' and prev_mb1 = '1') then
		mb1_clicked <= '0';
	elsif (mb1 = '0' and prev_mb1 = '1') then
		mb1_clicked <= '0';
	end if;

end process mouse_click;
			

move_plane: process (vert_sync)
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync) and vert_sync = '1' and game_running = '1') then
		-------------------------------
		---- UPDATES PLANE POSITION ---
		-------------------------------
		if (mb1_clicked = '1') then
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


tool_box: process (vert_sync)
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync) and game_running = '1') then
		-----------------------------------------------------------------------------------------------
		-- code for toolbox
		  
		  -- Update toolbox position randomly
--        IF (toolbox_pos_x <= CONV_STD_LOGIC_VECTOR(0, 11)) THEN
--				IF (cloud_count = 6) THEN
--					toolbox_pos_x <= top_cloud3_x_pos - 35;
--					toolbox_pos_y <= top_cloud3_height + 55;
--					cloud_count <= 0;
--				ELSE
--					cloud_count <= cloud_count + 1;
--				END IF;
--        ELSE
--            toolbox_pos_x <= top_cloud3_x_pos - 35;
--				toolbox_pos_y <= top_cloud3_height + 55;
--        END IF;
--
--		  -- Check for collision with the bird
--		  if ((ball_x_pos <= toolbox_pos_x + toolbox_size and toolbox_pos_x + TOOLBOX_WIDTH <= ball_x_pos) or
--			  (ball_y_pos <= toolbox_pos_y + toolbox_size and toolbox_pos_y  + TOOLBOX_HEIGHT <= ball_y_pos)) then
--				current_lives <= current_lives + 1;
--		  --else
--				--current_lives <= 30;
--		  end if;
		-----------------------------------------------------------------------------------------------
	end if;
end process tool_box;


END behavior;

