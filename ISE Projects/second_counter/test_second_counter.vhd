----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:03 09/01/2017 
-- Design Name: 
-- Module Name:    test_second_counter - Behavioral 
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

entity test_second_counter is
port( clk: in std_logic;
		rst: in std_logic;
		sw: in std_logic_vector(3 downto 0);
		led: out std_logic;
		hex: out std_logic_vector(6 downto 0);
		an: out std_logic_vector(3 downto 0)
	
);
end test_second_counter;

architecture Behavioral of test_second_counter is


component seven_seg_display is
port(clk: in std_logic;
	  input1: in std_logic_vector(3 downto 0);
	  input2: in std_logic_vector(3 downto 0);
	  input3: in std_logic_vector(3 downto 0);
	  input4: in std_logic_vector(3 downto 0);
	  anode: out std_logic_vector(3 downto 0);
	  output: out std_logic_vector(6 downto 0));
end component;


component second_counter is
port(clk: in std_logic;
	  rst: in std_logic;
	  timer_input: in std_logic_vector(3 downto 0);
	  finish: out std_logic;
	  data_output: out std_logic_vector(3 downto 0));
end component;

signal timer_output: std_logic_vector(3 downto 0);

begin

test_counter: second_counter port map(clk,rst,sw(3 downto 0),led, timer_output);
display: seven_seg_display port map(clk,timer_output, "0001", "0001","0001",an,hex);


end Behavioral;

