----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:33:00 10/01/2017 
-- Design Name: 
-- Module Name:    test_button - Behavioral 
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


entity test_button is
port(
	btn: in std_logic;
	led: out std_logic
);
end test_button;

architecture Behavioral of test_button is
--
begin

led <= '1' when btn = '1' else '0';


end Behavioral;

