LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY menus IS
    PORT (
        game_running, show_menu_screen, show_gameover_screen, mb1	: IN std_logic;
        pixel_row, pixel_column 												: IN std_logic_vector(9 DOWNTO 0);
		  cursor_x_pos, cursor_y_pos 											: IN std_logic_vector(9 DOWNTO 0);
        menu_on, cursor_on_out												: OUT std_logic;
        mode 																		: OUT std_logic_vector(1 DOWNTO 0); -- 00: Home, 01: Training, 10: Single Player
		  select_training_mode, select_singleplayer_mode 				: OUT std_logic
    );
END ENTITY menus;

ARCHITECTURE behavior OF menus IS
	 
	 SIGNAL cursor_on							: std_logic;
	 SIGNAL cursor_size 						: std_logic_vector(9 DOWNTO 0);  
	 
	 SIGNAL box1_on							: std_logic;
	 SIGNAL box1_width 						: std_logic_vector(9 DOWNTO 0);
	 SIGNAL box1_height 						: std_logic_vector(9 DOWNTO 0); 
	 SIGNAL box1_y_pos						: std_logic_vector(9 DOWNTO 0);
	 SiGNAL box1_x_pos						: std_logic_vector(9 DOWNTO 0);
	 
	 SIGNAL box2_on							: std_logic;
	 SIGNAL box2_width 						: std_logic_vector(9 DOWNTO 0);
	 SIGNAL box2_height 						: std_logic_vector(9 DOWNTO 0);   
	 SIGNAL box2_y_pos						: std_logic_vector(9 DOWNTO 0);
	 SiGNAL box2_x_pos						: std_logic_vector(9 DOWNTO 0);
	 
	 SIGNAL box3_on							: std_logic;
	 SIGNAL box3_width 						: std_logic_vector(9 DOWNTO 0);
	 SIGNAL box3_height 						: std_logic_vector(9 DOWNTO 0);   
	 SIGNAL box3_y_pos						: std_logic_vector(9 DOWNTO 0);
	 SiGNAL box3_x_pos						: std_logic_vector(9 DOWNTO 0);
	 
	 SIGNAL in_single_player  				: std_logic;
	 SIGNAL in_training_mode 				: std_logic;
	 
begin 

--------------------------------------------------------------------------
----------- DISPLAYING CURSOR AND BOXES-----------------------------------
--------------------------------------------------------------------------
---------------------------------
------------ CURSOR -------------
---------------------------------

cursor_size <= CONV_STD_LOGIC_VECTOR(4,10);

cursor_on <= '1' when (show_menu_screen = '1' and (cursor_x_pos <= pixel_column) and (pixel_column <= cursor_x_pos + cursor_size) and 	-- x_pos - size <= pixel_column <= x_pos + size
							(cursor_y_pos <= pixel_row) and (pixel_row <= cursor_y_pos + cursor_size))  else	-- y_pos - size <= pixel_row <= y_pos + size
				'0';

---------------------------------
-------------- Box 1 ------------
---------------------------------

box1_width <= CONV_STD_LOGIC_VECTOR(400,10);
box1_height	<= CONV_STD_LOGIC_VECTOR(125,10);
	 
box1_x_pos <= CONV_STD_LOGIC_VECTOR(120, 10);
box1_y_pos <= CONV_STD_LOGIC_VECTOR(100, 10);

--box1_on <= '1' when (show_menu_screen = '1' and (box1_x_pos <= pixel_column) and (pixel_column <= box1_x_pos + box1_width) and 	-- x_pos - size <= pixel_column <= x_pos + size
--							(box1_y_pos <= pixel_row) and (pixel_row <= box1_y_pos + box1_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
--				'0';
	box1_on <= '0';
	
	
-------------------------------------------------
-------------- Box 2 : Training Mode ------------
-------------------------------------------------

box2_width <= CONV_STD_LOGIC_VECTOR(250,10);
box2_height	<= CONV_STD_LOGIC_VECTOR(50,10);

box2_x_pos <= CONV_STD_LOGIC_VECTOR(200, 10);
box2_y_pos <= CONV_STD_LOGIC_VECTOR(240, 10);

box2_on <= '1' when (show_menu_screen = '1' and (box2_x_pos <= pixel_column) and (pixel_column <= box2_x_pos + box2_width) and 	-- x_pos - size <= pixel_column <= x_pos + size
							(box2_y_pos <= pixel_row) and (pixel_row <= box2_y_pos + box2_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
				'0';
			
------------------------------------------------------
-------------- Box 3 : Single Player Mode ------------
------------------------------------------------------

box3_width <= CONV_STD_LOGIC_VECTOR(250,10);
box3_height	<= CONV_STD_LOGIC_VECTOR(50,10);

box3_x_pos <= CONV_STD_LOGIC_VECTOR(200, 10);
box3_y_pos <= CONV_STD_LOGIC_VECTOR(320, 10);

box3_on <= '1' when (show_menu_screen = '1' and (box3_x_pos <= pixel_column) and (pixel_column <= box3_x_pos + box3_width) and 	-- x_pos - size <= pixel_column <= x_pos + size
							(box3_y_pos <= pixel_row) and (pixel_row <= box3_y_pos + box3_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
				'0';

-- Select Gamemode
select_training_mode <= '1' when (show_menu_screen = '1' and mb1 = '1' and (box2_x_pos <= cursor_x_pos) and (cursor_x_pos <= box2_x_pos + box2_width) and 	-- x_pos - size <= pixel_column <= x_pos + size
										(box2_y_pos <= cursor_y_pos) and (cursor_y_pos <= box2_y_pos + box2_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
								'0';

select_singleplayer_mode <= '1' when (show_menu_screen = '1' and mb1 = '1' and (box3_x_pos <= cursor_x_pos) and (cursor_x_pos <= box3_x_pos + box3_width) and 	-- x_pos - size <= pixel_column <= x_pos + size
											(box3_y_pos <= cursor_y_pos) and (cursor_y_pos <= box3_y_pos + box3_height))  else	-- y_pos - size <= pixel_row <= y_pos + size
									'0';

-- Colours for the screen, cursor
menu_on <=	'1' when box1_on = '1' else
				'1' when box2_on = '1' else
				'1' when box3_on = '1' else
				'0';

cursor_on_out <= '1' when cursor_on = '1' else
						'0';
				
				
in_single_player <= '1' 
				  when cursor_y_pos >= box2_y_pos 
				  and cursor_y_pos <= box2_y_pos + box2_width 
				  and cursor_x_pos >= box2_x_pos 
				  and cursor_x_pos <= box2_x_pos + box2_width else '0';
in_training_mode <= '1' 
				  when cursor_y_pos >= box3_y_pos 
				  and cursor_y_pos <= box3_y_pos + box3_width 
				  and cursor_x_pos >= box3_x_pos 
				  and cursor_x_pos <= box3_x_pos + box3_width else '0';

END ARCHITECTURE behavior;
