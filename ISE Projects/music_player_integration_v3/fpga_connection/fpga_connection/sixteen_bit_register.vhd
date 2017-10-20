----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:48 08/18/2017 
-- Design Name: 
-- Module Name:    register - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sixteen_bit_register is
port(clk: in std_logic;
	  rst: in std_logic;
	  enable: in std_logic;
	  input: in std_logic_vector(15 downto 0);
	  output: out std_logic_vector(15 downto 0)
);
end sixteen_bit_register;

architecture Behavioral of sixteen_bit_register is

begin

main_proc: process(clk,rst,input) is
begin
if (rising_edge(clk)) then
	if rst = '1' then
		output <= "0000000000000000";
	else
		if enable = '1' then
			output <= input;
		end if;
	end if;
end if;
end process;


end Behavioral;

