LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY home_screen IS
    PORT (
        clk, showText : IN std_logic;
        pixel_row, pixel_column : IN std_logic_vector(9 DOWNTO 0);
        pb1 : IN std_logic;  -- Button input for selecting modes
        red, green, blue : OUT std_logic;
        mode : OUT std_logic_vector(1 DOWNTO 0) -- 00: Home, 01: Training, 10: Single Player
    );
END ENTITY home_screen;

ARCHITECTURE behavior OF home_screen IS
    TYPE game_state_type IS (home_screen, training_mode, single_player_mode);
    SIGNAL game_state : game_state_type := home_screen;
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            CASE game_state IS
                WHEN home_screen =>
                    -- Display the name of the game
                    IF (pixel_row >= 50 AND pixel_row <= 100) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
                        red <= '1';
                        green <= '0';
                        blue <= '0';
                    ELSE
                        red <= '0';
                        green <= '0';
                        blue <= '0';
                    END IF;

                    -- Display "Training" button
                    IF (pixel_row >= 150 AND pixel_row <= 200) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
                        red <= '0';
                        green <= '1';
                        blue <= '0';
                    END IF;

                    -- Display "Single Player" button
                    IF (pixel_row >= 250 AND pixel_row <= 300) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
                        red <= '0';
                        green <= '0';
                        blue <= '1';
                    END IF;

                    -- Handle button inputs for mode selection
                    IF (pb1 = '0') THEN
                        -- If the "Training" button is pressed
                        IF (pixel_row >= 150 AND pixel_row <= 200) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
                            game_state <= training_mode;
                            mode <= "01"; -- Training mode
                        END IF;

                        -- If the "Single Player" button is pressed
                        IF (pixel_row >= 250 AND pixel_row <= 300) AND (pixel_column >= 100 AND pixel_column <= 300) THEN
                            game_state <= single_player_mode;
                            mode <= "10"; -- Single Player mode
                        END IF;
                    END IF;
                
                WHEN training_mode =>
                    mode <= "01"; -- Training mode
                
                WHEN single_player_mode =>
                    mode <= "10"; -- Single Player mode
            END CASE;
        END IF;
    END PROCESS;
END ARCHITECTURE behavior;
