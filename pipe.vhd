library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

entity Pipe is
  Port (
    clk : in std_logic;
    reset : in std_logic;
    pipe_x : in integer range 0 to 639; -- X position of the pipe
    pipe_y : in integer range 0 to 479; -- Y position of the pipe
    hit : out std_logic -- Signal indicating collision with the bird
  );
end entity Pipe;

architecture Behavioral of Pipe is
begin
  process(clk, reset)
  begin
    if reset = '1' then
      -- Reset pipe position
      hit <= '0';
    elsif rising_edge(clk) then
      -- Update pipe position
      -- Check for collision with bird (not shown in this example)
      -- Update 'hit' signal accordingly
    end if;
  end process;
end architecture Behavioral;