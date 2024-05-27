LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;

entity display_controller is
	port(	menu_on, ShowText, toolbox_on, plane_on, collision, cursor_on : in std_logic;
			top_cloud1_on, top_cloud2_on, top_cloud3_on : in std_logic;
			bottom_cloud1_on, bottom_cloud2_on, bottom_cloud3_on : in std_logic;
			red_out, green_out, blue_out : out std_logic
	);
end entity display_controller;

architecture behaviour of display_controller is

signal red, green, blue : std_logic;

begin
	-- Colours for the screen, ball, and everything else
	red <=	'1' when ShowText = '1' else
				'1' when cursor_on = '1' else
				'0' when menu_on = '1' else 
				'0' when toolbox_on = '1' else
				'1' when plane_on = '1' else
				'0' when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
							top_cloud3_on = '1' or bottom_cloud3_on = '1' else
				'1' when collision = '1' else
				'0';
				
	green <= '1' when ShowText = '1' else 
				'0' when cursor_on = '1' else
				'0' when menu_on = '1' else 
				'0' when toolbox_on = '1' else
				'0' when plane_on = '1' else
				'1' when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
							top_cloud3_on = '1' or bottom_cloud3_on = '1' else
				'1'; 
				
	blue <=  '1' when ShowText = '1' else 
				'0' when cursor_on = '1' else
				'0' when menu_on = '1' else 
				'1' when toolbox_on = '1' else
				'0' when plane_on = '1' else
				'0' when top_cloud1_on = '1' or bottom_cloud1_on = '1' or top_cloud2_on = '1' or bottom_cloud2_on = '1'  or 
							top_cloud3_on = '1' or bottom_cloud3_on = '1' else
				'1';
				
	red_out <= red;
	green_out <= green;
	blue_out <= blue;
	
end architecture behaviour;