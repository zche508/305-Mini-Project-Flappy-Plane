LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;


ENTITY ball IS
	PORT
		( clk 						: IN std_logic;
		  cursor_row, cursor_column	: IN std_logic_vector(9 DOWNTO 0);
		  red, green, blue 			: OUT std_logic);		
END ball;

architecture behavior of ball is

SIGNAL cursor_on					: std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL cursor_y_pos, cursor_x_pos	: std_logic_vector(9 DOWNTO 0);

BEGIN           

size <= CONV_STD_LOGIC_VECTOR(4,10);
-- cursor_x_pos and cursor_y_pos show the (x,y) for the centre of ball
cursor_x_pos <= cursor_row;
cursor_y_pos <= cursor_column;


cursor_on <= '1' when ( ('0' & cursor_x_pos <= cursor_column + size) and ('0' & cursor_column <= cursor_x_pos + size) 	-- x_pos - size <= cursor_column <= x_pos + size
					and ('0' & cursor_y_pos <= cursor_row + size) and ('0' & cursor_row <= cursor_y_pos + size) )  else	-- y_pos - size <= cursor_row <= y_pos + size
			'0';


-- Colours for pixel data on video signal
-- Keeping background white and square in red
Red <=  '1';
-- Turn off Green and Blue when displaying square
Green <= not cursor_on;
Blue <=  not cursor_on;

END behavior;

