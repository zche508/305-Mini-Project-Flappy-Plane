LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;


ENTITY clouds IS
	PORT(	pb1, pb2, pb3, clk, vert_sync, game_running	: IN std_logic;
			pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
			random_number					: IN std_logic_vector(8 DOWNTO 0);
			
			
			cloud1_top_on, cloud2_top_on, cloud3_top_on, cloud1_bottom_on, cloud2_bottom_on, cloud3_bottom_on : OUT std_logic;
			
			cloud_drawing_width_out 	: OUT std_logic_vector(9 DOWNTO 0);
			top_clouds_y_pos_out			: OUT std_logic_vector(9 DOWNTO 0);
			bottom_clouds_y_pos_out		: OUT std_logic_vector(9 DOWNTO 0);
			
			cloud1_x_pos_out				: OUT std_logic_vector(10 DOWNTO 0);
			cloud1_top_height_out		: OUT std_logic_vector(9 DOWNTO 0); 
			cloud1_bottom_height_out	: OUT std_logic_vector(9 DOWNTO 0);
			
			cloud2_x_pos_out				: OUT std_logic_vector(10 DOWNTO 0);
			cloud2_top_height_out		: OUT std_logic_vector(9 DOWNTO 0); 
			cloud2_bottom_height_out	: OUT std_logic_vector(9 DOWNTO 0);
			
			cloud3_x_pos_out				: OUT std_logic_vector(10 DOWNTO 0);
			cloud3_top_height_out		: OUT std_logic_vector(9 DOWNTO 0); 
			cloud3_bottom_height_out	: OUT std_logic_vector(9 DOWNTO 0));		
END ENTITY clouds;


architecture behavior of clouds is

-- Cloud widths, horizontal speed and vertical & horizontal spacings
SIGNAL cloud_width 						: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(32,10);
SIGNAL cloud_drawing_width 			: std_logic_vector(9 DOWNTO 0) := cloud_width(8 DOWNTO 0) & '0';
	
SiGNAL cloud_motion 						: std_logic_vector(10 DOWNTO 0) := - CONV_STD_LOGIC_VECTOR(2,11);
SiGNAL cloud_motion_integer 			: integer RANGE 31 downto 0 := 2;

SIGNAL cloud_horizontal_spacing 		: integer RANGE 511 DOWNTO 0 := 250;
SiGNAL cloud_vertical_spacing 		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(150,10);

SiGNAL top_clouds_y_pos					: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,10);
SiGNAL bottom_clouds_y_pos		: std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(479,10);

-- CLOUD 1
SIGNAL cloud1_top_height				: std_logic_vector(9 DOWNTO 0);  
SIGNAL cloud1_bottom_height			: std_logic_vector(9 DOWNTO 0);  
SiGNAL cloud1_x_pos						: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0,11);

-- CLOUD 2
SIGNAL cloud2_top_height				: std_logic_vector(9 DOWNTO 0);  
SIGNAL cloud2_bottom_height			: std_logic_vector(9 DOWNTO 0);  
SiGNAL cloud2_x_pos						: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(cloud_horizontal_spacing,11);

-- CLOUD 3
SIGNAL cloud3_top_height				: std_logic_vector(9 DOWNTO 0);  
SIGNAL cloud3_bottom_height			: std_logic_vector(9 DOWNTO 0);  
SiGNAL cloud3_x_pos						: std_logic_vector(10 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(2*cloud_horizontal_spacing,11);

BEGIN

cloud_drawing_width_out <= cloud_drawing_width;

top_clouds_y_pos_out			<= top_clouds_y_pos;
bottom_clouds_y_pos_out		<= bottom_clouds_y_pos;

cloud1_x_pos_out				<= cloud1_x_pos;
cloud1_top_height_out		<= cloud1_top_height; 
cloud1_bottom_height_out	<= cloud1_bottom_height;

cloud2_x_pos_out				<= cloud2_x_pos;
cloud2_top_height_out		<= cloud2_top_height; 
cloud2_bottom_height_out	<= cloud2_bottom_height;

cloud3_x_pos_out				<= cloud3_x_pos;
cloud3_top_height_out		<= cloud3_top_height; 
cloud3_bottom_height_out	<= cloud3_bottom_height;	
			
-- CLOUD 1 Generates the cloud heights and defines the region of where the cloud is drawn
cloud1_top_height <= ('0' & random_number) when (cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); -- randomly generates a cloud height
												
cloud1_top_on <= '1' when (('0' & pixel_column <= '0' & cloud1_x_pos) and ('0' & cloud1_x_pos - cloud_drawing_width <= '0' & pixel_column) 				-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_clouds_y_pos <= pixel_row + cloud1_top_height) and ('0' & pixel_row <= top_clouds_y_pos + cloud1_top_height))  else					-- y_pos - size <= pixel_row <= y_pos + size
			'0';

cloud1_bottom_height <= (bottom_clouds_y_pos - ('0' & random_number) - cloud_vertical_spacing)  when (cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0');
								
cloud1_bottom_on <= '1' when (('0' & pixel_column <= '0' & cloud1_x_pos) and ('0' & cloud1_x_pos - cloud_drawing_width <= '0' & pixel_column)  	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_clouds_y_pos) and (bottom_clouds_y_pos - cloud1_bottom_height) <= '0' & pixel_row)  else									-- y_pos - size <= pixel_row <= y_pos + size
			'0';			

-- CLOUD 2 Generates the cloud heights and defines the region of where the cloud is drawn
cloud2_top_height <= ('0' & random_number) when (cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); -- randomly generates a cloud height

							
cloud2_top_on <= '1' when (('0' & pixel_column <= '0' & cloud2_x_pos) and ('0' & cloud2_x_pos - cloud_drawing_width <= '0' & pixel_column) 				-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_clouds_y_pos <= pixel_row + cloud2_top_height) and ('0' & pixel_row <= top_clouds_y_pos + cloud2_top_height))  else					-- y_pos - size <= pixel_row <= y_pos + size
			'0';

cloud2_bottom_height <= (bottom_clouds_y_pos - ('0' & random_number) - cloud_vertical_spacing) when (cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); 

								
cloud2_bottom_on <= '1' when (('0' & pixel_column <= '0' & cloud2_x_pos) and ('0' & cloud2_x_pos - cloud_drawing_width <= '0' & pixel_column) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_clouds_y_pos) and (bottom_clouds_y_pos - cloud2_bottom_height) <= '0' & pixel_row)  else									-- y_pos - size <= pixel_row <= y_pos + size
			'0';			


-- CLOUD 3 Generates the cloud heights and defines the region of where the cloud is drawn
cloud3_top_height <= ('0' & random_number) when (cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0'); -- randomly generates a cloud height
							
cloud3_top_on <= '1' when (('0' & pixel_column <= '0' & cloud3_x_pos) and ('0' & cloud3_x_pos - cloud_drawing_width <= '0' & pixel_column) 				-- x_pos - size <= pixel_column <= x_pos + size 
					and ('0' & top_clouds_y_pos <= pixel_row + cloud3_top_height) and ('0' & pixel_row <= top_clouds_y_pos + cloud3_top_height))  else					-- y_pos - size <= pixel_row <= y_pos + size
			'0';

cloud3_bottom_height <= (bottom_clouds_y_pos - ('0' & random_number) - cloud_vertical_spacing) when (cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(1,11) and clk = '0');

cloud3_bottom_on <= '1' when (('0' & pixel_column <= '0' & cloud3_x_pos) and ('0' & cloud3_x_pos - cloud_drawing_width <= '0' & pixel_column) 	-- x_pos - size <= pixel_column <= x_pos + size 
					and (pixel_row <= '0' & bottom_clouds_y_pos) and (bottom_clouds_y_pos - cloud3_bottom_height) <= '0' & pixel_row)  else									-- y_pos - size <= pixel_row <= y_pos + size
			'0';


clouds: process (vert_sync)
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync) and game_running = '1') then
		
		------------------------------------------
		-- UPDATING THE NEXT POSITION OF CLOUDS --
		------------------------------------------
		
		-- Compute next top_cloud1 x position
		if (cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			cloud1_x_pos <= cloud1_x_pos + cloud_motion;
		end if;
		-- Compute next bottom_cloud1 x position
		if (cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			cloud1_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			cloud1_x_pos <= cloud1_x_pos + cloud_motion;
		end if;
		
		
		-- Compute next top_cloud2 x position
		if (cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			cloud2_x_pos <= cloud2_x_pos + cloud_motion;
		end if;
		-- Compute next bottom_cloud2 x position
		if (cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			cloud2_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			cloud2_x_pos <= cloud2_x_pos + cloud_motion;
		end if;


		-- Compute next top_cloud3 x position
		if (cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			cloud3_x_pos <= cloud3_x_pos + cloud_motion;
		end if;
		-- Compute next bottom_cloud3 x position
		if (cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(0, 11)) then
			cloud3_x_pos <= CONV_STD_LOGIC_VECTOR(750, 11);
		else
			cloud3_x_pos <= cloud3_x_pos + cloud_motion;
		end if;
		
		-------------------------
		-- UPDATING GAME SPEED --
		-------------------------
				
		if (pb1 = '0') then
			cloud_motion <= - CONV_STD_LOGIC_VECTOR(2,11);
			cloud_motion_integer <= 2;
		elsif (pb2 = '0') then
			cloud_motion <= - CONV_STD_LOGIC_VECTOR(3,11);
			cloud_motion_integer <= 3;
		elsif (pb3 = '0') then
			cloud_motion <= - CONV_STD_LOGIC_VECTOR(4,11);
			cloud_motion_integer <= 4;
		end if;

	end if;
end process clouds;

END behavior;

