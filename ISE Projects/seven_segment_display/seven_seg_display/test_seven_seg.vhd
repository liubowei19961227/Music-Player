----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:01 08/16/2017 
-- Design Name: 
-- Module Name:    test_seven_seg - Behavioral 
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

entity test_seven_seg is
port(clk: in std_logic;
	  hex: out std_logic_vector(6 downto 0);
	  an:  out std_logic_vector(3 downto 0));
end test_seven_seg;

architecture Behavioral of test_seven_seg is


signal display: std_logic_vector(6 downto 0);
signal anode: std_logic_vector(3 downto 0);

component seven_seg_display is
port(clk: in std_logic;
	  input1: in std_logic_vector(3 downto 0);
	  input2: in std_logic_vector(3 downto 0);
	  input3: in std_logic_vector(3 downto 0);
	  input4: in std_logic_vector(3 downto 0);
	  anode: out std_logic_vector(3 downto 0);
	  output: out std_logic_vector(6 downto 0));
end component;

signal num1: std_logic_vector(3 downto 0) := "0001";
signal num2: std_logic_vector(3 downto 0) := "0010";
signal num3: std_logic_vector(3 downto 0) := "0011";
signal num4: std_logic_vector(3 downto 0) := "0100";

begin

test_display: seven_seg_display port map(clk,num1, num2, num3, num4,anode,display);

hex <= display;
an <= anode;

end Behavioral;

