----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:39 08/11/2017 
-- Design Name: 
-- Module Name:    square_wave - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity square_wave is
port(clk: in std_logic;
	  s: out std_logic);
end square_wave;

architecture Behavioral of square_wave is

constant CLOCK_DIVIDER : integer := 764468;
signal clock_divide_counter : integer range 0 to CLOCK_DIVIDER-1 := 0;
signal pulse: std_logic := '1';

begin

process (clk)
begin
    if (rising_edge(clk)) then
        if (clock_divide_counter = CLOCK_DIVIDER - 1) then
            clock_divide_counter <= 0;
            pulse <= not pulse;
        else
            clock_divide_counter <= clock_divide_counter + 1;
        end if;
    end if;
end process;


s <= pulse;

end Behavioral;

