LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT
		( pb1, pb2, clk, vert_sync	: IN std_logic;
        pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		  red, green, blue 			: OUT std_logic);		
END bouncy_ball;

architecture behavior of bouncy_ball is

-- component declaration
component MOUSE IS
   PORT( clock_25Mhz, reset 		: IN std_logic;
         mouse_data					: INOUT std_logic;
         mouse_clk 					: INOUT std_logic;
         left_button, right_button	: OUT std_logic;
		 mouse_cursor_row 			: OUT std_logic_vector(9 DOWNTO 0); 
		 mouse_cursor_column 		: OUT std_logic_vector(9 DOWNTO 0));       	
END component;

-- signsl declaration for mouse components
SIGNAL mouse_left_button : std_logic;
SIGNAL mouse_data : std_logic;
SIGNAL mouse_clk : std_logic;
SIGNAL mouse_cursor_row : std_logic_vector(9 DOWNTO 0);
SIGNAL mouse_cursor_column : std_logic_vector(9 DOWNTO 0);
SIGNAL left_button : std_logic;

SIGNAL ball_on					: std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos				: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion			: std_logic_vector(9 DOWNTO 0);

BEGIN 

-- instance of mouse module
mouse_inst : MOUSE
PORT MAP (
	clock_25Mhz => clk,
	reset => '0',  
	mouse_data => mouse_data,
	mouse_clk => mouse_clk,
	left_button => mouse_left_button,
	right_button => open, 
	mouse_cursor_row => mouse_cursor_row,
	mouse_cursor_column => mouse_cursor_column
); 

-- Connect left_button signal to the MOUSE module output
left_button <= mouse_left_button;

size <= CONV_STD_LOGIC_VECTOR(16,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(150,11);

ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';


-- Colours for pixel data on video signal
-- Changing the background and ball colour by pushbuttons
Red <=  pb1;
Green <= (not pb2) and (not ball_on);
Blue <=  not ball_on;


Move_Ball: process (vert_sync)  	
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync)) then
		--ball_y_motion <= CONV_STD_LOGIC_VECTOR(0, 10);
		
		-- Bounce off top or bottom of the screen	
		if ( ('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size) ) then	
			--if (left_button = '1') then
				ball_y_motion <= - CONV_STD_LOGIC_VECTOR(7,10); -- 2 before
			--end if;
		-- elsif (ball_y_pos <= CONV_STD_LOGIC_VECTOR(200,10) - size) then 
			-- ball_y_motion <= CONV_STD_LOGIC_VECTOR(7,10); -- goes down
			if (left_button = '1') then
				ball_y_motion <= CONV_STD_LOGIC_VECTOR(7,10); -- goes down
			end if;
		end if;
		-- Compute next ball Y position
		ball_y_pos <= ball_y_pos + ball_y_motion;
	end if;
end process Move_Ball;

END behavior;

