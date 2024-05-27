LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;



			
ENTITY toolbox IS
	PORT(	game_running, vert_sync					: IN std_logic;
			pixel_row, pixel_column					: IN std_logic_vector(9 DOWNTO 0);
			
			top_cloud3_x_pos							: IN std_logic_vector(10 DOWNTO 0);
			top_cloud3_height							: IN std_logic_vector(9 DOWNTO 0); 
			
			toolbox_on 									: OUT std_logic;
			toolbox_size_out 							: OUT std_logic_vector(9 DOWNTO 0);
			toolbox_y_pos_out								: OUT std_logic_vector(9 DOWNTO 0);
			toolbox_x_pos_out								: OUT std_logic_vector(10 DOWNTO 0));		
END toolbox;


architecture behavior of toolbox is

-- trying code for toolbox
SIGNAL toolbox_hit, pre_toolbox_hit : std_logic;
SIGNAL toolbox_size                 : std_logic_vector(9 DOWNTO 0);
constant TOOLBOX_WIDTH        		: integer := 10;
constant TOOLBOX_HEIGHT       		: integer := 10;
constant TOOLBOX_SPEED        		: integer := 1; 
SIGNAL toolbox_pos_x               	: std_logic_vector(10 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(750, 11);
SiGNAL toolbox_pos_y                : std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(240, 10) - toolbox_size;
SIGNAL cloud_count                 	: integer RANGE 0 TO 10 := 0;


BEGIN

--toolbox visible and size
toolbox_size <= CONV_STD_LOGIC_VECTOR(10,10);
toolbox_on <= '1' when ( ('0' & toolbox_pos_x <= '0' & pixel_column + toolbox_size) and ('0' & pixel_column <= '0' & toolbox_pos_x + toolbox_size) -- x_pos - size <= pixel_column <= x_pos + size
                    and ('0' & toolbox_pos_y <= pixel_row + toolbox_size) and ('0' & pixel_row <= toolbox_pos_y + toolbox_size) )  else    -- y_pos - size <= pixel_row <= y_pos + size
            '0';

toolbox_size_out <=	toolbox_size;

toolbox_x_pos_out <= toolbox_pos_x;
toolbox_y_pos_out <= toolbox_pos_y;


move_toolbox: process (vert_sync)
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync) and vert_sync = '1') then
		if (game_running = '1') then
			-- code for toolbotx

          -- Update toolbox position randomly
			IF (toolbox_pos_x <= CONV_STD_LOGIC_VECTOR(0, 11)) THEN
				IF (cloud_count = 6) THEN
				  toolbox_pos_x <= top_cloud3_x_pos - 45;
				  toolbox_pos_y <= top_cloud3_height + 60;
				  cloud_count <= 0;
				ELSE
				  cloud_count <= cloud_count + 1;
				END IF;
			ELSE
            toolbox_pos_x <= top_cloud3_x_pos - 35;
            toolbox_pos_y <= top_cloud3_height + 60;
			END IF;
		end if;
	end if;

end process;

END behavior;

