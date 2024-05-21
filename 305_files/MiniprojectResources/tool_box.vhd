LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

ENTITY tool_box IS 
	PORT(bouncy_ball_x : in std_logic_vector(7 downto 0);
        bouncy_ball_y : in std_logic_vector(7 downto 0);
        lives_incremented : out std_logic;
        toolbox_x : out std_logic_vector(7 downto 0);
        toolbox_y : out std_logic_vector(7 downto 0);
        toolbox_active : out std_logic
		  );
END tool_box;

architecture behavior of tool_box is

constant TOOLBOX_WIDTH : integer := 10; -- Adjust as needed
constant TOOLBOX_HEIGHT : integer := 10; -- Adjust as needed
constant TOOLBOX_SPEED : integer := 1; -- Adjust as needed
SIGNAL toolbox_pos_x					: std_logic_vector(7 DOWNTO 0):= (others => '0');
SiGNAL toolbox_pos_y					: std_logic_vector(7 DOWNTO 0):= (others => '0');
signal lives_incremented_signal : std_logic := '0';

begin
    process (bouncy_ball_x, bouncy_ball_y)
    begin
        -- Move the toolbox horizontally
        toolbox_pos_x <= toolbox_pos_x + TOOLBOX_SPEED;

        -- Check for collision with the bird
        if (toolbox_pos_x >= bouncy_ball_x and toolbox_pos_x <= bouncy_ball_x + TOOLBOX_WIDTH) and
           (toolbox_pos_y >= bouncy_ball_y and toolbox_pos_y <= bouncy_ball_y + TOOLBOX_HEIGHT) then
            lives_incremented_signal <= '1';
        else
            lives_incremented_signal <= '0';
        end if;
    end process;
	 

	 lives_incremented <= lives_incremented_signal;
	 toolbox_x <= toolbox_pos_x;
	 toolbox_y <= toolbox_pos_y;

END behavior;