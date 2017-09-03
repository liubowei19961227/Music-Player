----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:49 09/01/2017 
-- Design Name: 
-- Module Name:    second_counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity second_counter is
port(clk: in std_logic;
	  rst: in std_logic;
	  timer_input: in std_logic_vector(3 downto 0);
	  finish: out std_logic;
	  data_output: out std_logic_vector(3 downto 0));
end second_counter;

architecture Behavioral of second_counter is

signal one_sec_counter: integer := 0;
signal one_sec: std_logic;
signal counter: std_logic_vector(3 downto 0);

begin

data_output <= counter;
one_sec_proc: process(clk)
begin
	if(rising_edge(clk)) then
		if (one_sec_counter >= 100000000) then
			one_sec_counter <= 0;
			one_sec <= '1';
		else
			one_sec_counter <= one_sec_counter + 1;
			one_sec <= '0';
		end if;
		
	end if;
end process;


counter_proc: process(clk)
begin
	if (rising_edge(clk)) then
		if(rst = '1') then
			counter <= "0000";
			finish <= '0';
		else
		
			if (counter = timer_input ) then
				finish <= '1';
			elsif(one_sec = '1') then
				counter <= std_logic_vector(unsigned(counter) + 1);
				finish <= '0';
			end if;
				
		end if;
	end if;

end process;


end Behavioral;

