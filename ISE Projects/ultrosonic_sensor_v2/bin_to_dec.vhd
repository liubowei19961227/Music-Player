----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:58 08/16/2017 
-- Design Name: 
-- Module Name:    bin_to_dec - Behavioral 
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

entity bin_to_dec is
port (
	in_bin: in std_logic_vector (3 downto 0);
	out_seg: out std_logic_vector (6 downto 0)
);
end bin_to_dec;




architecture Behavioral of bin_to_dec is

signal inv_outseg: std_logic_vector (6 downto 0);

begin

with in_bin select inv_outseg <=

	"0111111" when "0000",

	"0000110" when "0001",

	"1011011" when "0010",

	"1001111" when "0011",

	"1100110" when "0100",

	"1101101" when "0101",

	"1111101" when "0110",

	"0000111" when "0111",

	"1111111" when "1000",

	"1101111" when "1001",

	"1110111" when "1010",

	"1111100" when "1011",

	"0111001" when "1100",

	"1011110" when "1101",

	"1111001" when "1110",

	"1110001" when "1111",

	--error

	"1001111" when others;

	

out_seg <=  not inv_outseg;


end Behavioral;

