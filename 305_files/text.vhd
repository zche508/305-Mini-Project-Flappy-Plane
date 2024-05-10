LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY text IS
	PORT
		(char_address : OUT std_logic_vector(5 downto 0);
		text_row : OUT std_logic_vector(2 downto 0);
		text_col : OUT std_logic_vector(2 downto 0));		
END text;


architecture Behaviour of text is
begin
		char_address <= "000001";
		text_row <= "100";
		text_col <= "100";
end architecture Behaviour;