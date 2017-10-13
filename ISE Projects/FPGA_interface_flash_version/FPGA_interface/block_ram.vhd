----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:50:26 08/16/2017 
-- Design Name: 
-- Module Name:    block_ram - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



---ready = 1: store value in assigned address; else read value out of assigned address

entity block_ram is
port(clk: in std_logic;
	  address: in integer;
	  we: in std_logic;
	  data_i: in std_logic_vector(15 downto 0);
	  data_o: out std_logic_vector(15 downto 0)
	  --read_complete: out std_logic;
	  --write_complete: out std_logic
);
end block_ram;

architecture Behavioral of block_ram is

--define ram as an array
type ram_type is array(0 to 512) of std_logic_vector(15 downto 0);
signal ram: ram_type := (others => "0000110000001100");


begin


memory_block: process(clk)
begin
if(rising_edge(clk)) then
	if we = '1' then
		ram(address) <= data_i;
	end if;
	data_o <= ram(address);
end if;
			


end process;  




end Behavioral;

