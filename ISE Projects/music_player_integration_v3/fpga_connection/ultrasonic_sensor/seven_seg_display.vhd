----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:26:23 08/16/2017 
-- Design Name: 
-- Module Name:    seven_seg_display - Behavioral 
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

entity seven_seg_display is
port(clk: in std_logic;
	  input1: in std_logic_vector(3 downto 0);
	  input2: in std_logic_vector(3 downto 0);
	  input3: in std_logic_vector(3 downto 0);
	  input4: in std_logic_vector(3 downto 0);
	  anode: out std_logic_vector(3 downto 0);
	  output: out std_logic_vector(6 downto 0));

end seven_seg_display;

architecture Behavioral of seven_seg_display is

---declare component bin to dec
component bin_to_dec is
port (
	in_bin: in std_logic_vector (3 downto 0);
	out_seg: out std_logic_vector (6 downto 0)
);
end component;

---declare signals
signal binary: std_logic_vector(3 downto 0);
signal digit: std_logic_vector(1 downto 0) := (others=>'0');
signal display: std_logic_vector(6 downto 0);
signal counter: integer := 0;


begin


count_freq: process(clk)
begin
	if rising_edge(clk) then
	counter <= counter + 1;
		if counter = 100000 then
			counter <= 0;
			digit <= std_logic_vector(unsigned(digit) + 1);
		end if;
	end if;
end process;

output <= display;
binary <= input1 when digit = "00" else
		 input2 when digit = "01" else
		 input3 when digit = "10" else
		 input4 when digit = "11" else
		 "0000";
		 
binary_to_decimal: bin_to_dec port map(binary,display);



anode_proc: process(digit)
begin
	for I in 3 downto 0 loop
		if I = to_integer(unsigned(digit)) then
			anode(I) <= '0';
		else
			anode(I) <= '1';
		end if;
	
	end loop;
end process;


end Behavioral;

