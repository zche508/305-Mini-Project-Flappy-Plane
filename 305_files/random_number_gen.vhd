LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY random_number_gen IS
 	PORT (Clk : IN std_logic;
			output: OUT std_logic_vector (7 DOWNTO 0));
END random_number_gen;

ARCHITECTURE LFSR_BEHAVIOR OF random_number_gen IS
	SIGNAL current_state : std_logic_vector (7 DOWNTO 0) := "00000001"; -- starting seed is "0001 0001" (seed is team 1!)
 	SIGNAL next_state : std_logic_vector (7 DOWNTO 0);
 	SIGNAL feedback : std_logic := '1';
	SIGNAL counter : integer RANGE 60 DOWNTO 0 := 0;
BEGIN

	PROCESS(Clk)
	BEGIN
		IF (Clk'EVENT AND Clk = '1') THEN
--			if (counter < 60) then
--				counter <= counter + 1;
--			else
				if (next_state <= CONV_STD_LOGIC_VECTOR(25, 8)) then					-- if height < 25 then height <= height + 50
					current_state <= next_state + CONV_STD_LOGIC_VECTOR(50, 8);
				elsif (next_state <= CONV_STD_LOGIC_VECTOR(76, 8)) then				-- if height < 76 then height <= height + 50
					current_state <= next_state + CONV_STD_LOGIC_VECTOR(50, 8);
				elsif (next_state >= CONV_STD_LOGIC_VECTOR(190, 8)) then
					current_state <= next_state - CONV_STD_LOGIC_VECTOR(50, 8);
				else
					current_state <= next_state;
				end if;
				
--				counter <= 0;
--			end if;
		END IF;
	END PROCESS;
  
	feedback <= current_state(0);
	next_state <= feedback & current_state(7) &
				(current_state(6) xor feedback) &
				(current_state(5) xor feedback) &
				(current_state(4) xor feedback) & 
				(current_state(3 downto 1)); -- Concatenates the feedback bit and takes a 7 bit slice of the current state array (left is MSB)
	output <= current_state;

END LFSR_BEHAVIOR;