----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:56 09/01/2017 
-- Design Name: 
-- Module Name:    BRAM - Behavioral 
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

entity BRAM is
port(
	clk: in std_logic;
	direction: in std_logic;                   --1 for read and 0 for write
	valid: in std_logic;
	data_input: in std_logic_vector(7 downto 0);
	address: in std_logic_vector(15 downto 0);
	read_address: in std_logic_vector(15 downto 0);
	data_output: out std_logic_vector(15 downto 0);
	data_output_valid: out std_logic
);
end BRAM;

architecture Behavioral of BRAM is

type ram_type is array(0 to 1023) of std_logic_vector(7 downto 0);
signal ram: ram_type := ("0000000000000000", others => (others => '0'));

signal index: integer range 0 to 1023;
signal read_index: integer range 0 to 1023;

begin

index <= to_integer(unsigned(address));
read_index <= to_integer(unsigned(read_address));


ram_proc: process(clk)
begin
	if(rising_edge(clk)) then
		if (direction = '1') then
			data_output <= ram(read_index);
			data_output_valid <= '1';
		elsif(direction = '0') then
			if(valid = '1') then
				ram(index) <= data_input;
			end if;
			data_output <= ram(read_index);
			data_output_valid <= '0';
		end if;
	end if;
end process;



end Behavioral;

