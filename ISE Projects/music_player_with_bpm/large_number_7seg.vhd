----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:08 09/01/2017 
-- Design Name: 
-- Module Name:    large_number_7seg - Behavioral 
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

entity large_number_7seg is
port(clk: in std_logic;
	  number: in std_logic_vector(15 downto 0);
	  hex: out std_logic_vector(6 downto 0);
	  an: out std_logic_vector(3 downto 0)
		
);
end large_number_7seg;

architecture Behavioral of large_number_7seg is

signal thousand_bit: integer range 0 to 9;
signal hundred_bit: integer range 0 to 9;
signal ten_bit: integer range 0 to 9;
signal digit_bit: integer range 0 to 9;


signal number_dec: integer;
signal hundred_part: integer;
signal ten_part: integer;
signal decimal_part: integer;


signal thousand_bin, hundred_bin, ten_bin, digit_bin: std_logic_vector(3 downto 0);

component seven_seg_display is
port(clk: in std_logic;
	  input1: in std_logic_vector(3 downto 0);
	  input2: in std_logic_vector(3 downto 0);
	  input3: in std_logic_vector(3 downto 0);
	  input4: in std_logic_vector(3 downto 0);
	  anode: out std_logic_vector(3 downto 0);
	  output: out std_logic_vector(6 downto 0));
end component;

begin

number_dec <= to_integer(unsigned(number));

process(number_dec)
begin
	if (number_dec >= 9000) then
		thousand_bit <= 9;
		hundred_part <= number_dec - 9000;
	elsif (number_dec >= 8000) then
		thousand_bit <= 8;
		hundred_part <= number_dec - 8000;
	elsif (number_dec >= 7000) then
		thousand_bit <= 7;
		hundred_part <= number_dec - 7000;
	elsif (number_dec >= 6000) then
		thousand_bit <= 6;
		hundred_part <= number_dec - 6000;
	elsif (number_dec >= 5000) then
		thousand_bit <= 5;
		hundred_part <= number_dec - 5000;
	elsif (number_dec >= 4000) then
		thousand_bit <= 4;
		hundred_part <= number_dec - 4000;
	elsif (number_dec >= 3000) then
		thousand_bit <= 3;
		hundred_part <= number_dec - 3000;
	elsif (number_dec >= 2000) then
		thousand_bit <= 2;
		hundred_part <= number_dec - 2000;
	elsif (number_dec >= 1000) then
		thousand_bit <= 1;
		hundred_part <= number_dec - 1000;
	else
		thousand_bit <= 0;
		hundred_part <= number_dec;
	end if;

end process;


process (hundred_part)
begin
	if(hundred_part >= 900) then
		hundred_bit <= 9;
		ten_part <= hundred_part - 900;
	elsif (hundred_part >= 800) then
		hundred_bit <= 8;
		ten_part <= hundred_part - 800;
	elsif (hundred_part >= 700) then
		hundred_bit <= 7;
		ten_part <= hundred_part - 700;
	elsif (hundred_part >= 600) then
		hundred_bit <= 6;
		ten_part <= hundred_part - 600;
	elsif (hundred_part >= 500) then
		hundred_bit <= 5;
		ten_part <= hundred_part - 500;
	elsif (hundred_part >= 400) then
		hundred_bit <= 4;
		ten_part <= hundred_part - 400;
	elsif (hundred_part >= 300) then
		hundred_bit <= 3;
		ten_part <= hundred_part - 300;
	elsif (hundred_part >= 200) then
		hundred_bit <= 2;
		ten_part <= hundred_part - 200;
	elsif (hundred_part >= 100) then
		hundred_bit <= 1;
		ten_part <= hundred_part - 100;
	else
		hundred_bit <= 0;
		ten_part <= hundred_part;
	end if;


end process;




process (ten_part)
begin
	if(ten_part >= 90) then
		ten_bit <= 9;
		decimal_part <= ten_part - 90;
	elsif (ten_part >= 80) then
		ten_bit <= 8;
		decimal_part <= ten_part - 80;
	elsif (ten_part >= 70) then
		ten_bit <= 7;
		decimal_part <= ten_part - 70;
	elsif (ten_part >= 60) then
		ten_bit <= 6;
		decimal_part <= ten_part - 60;
	elsif (ten_part >= 50) then
		ten_bit <= 5;
		decimal_part <= ten_part - 50;
	elsif (ten_part >= 40) then
		ten_bit <= 4;
		decimal_part <= ten_part - 40;
	elsif (ten_part >= 30) then
		ten_bit <= 3;
		decimal_part <= ten_part - 30;
	elsif (ten_part >= 20) then
		ten_bit <= 2;
		decimal_part <= ten_part - 20;
	elsif (ten_part >= 10) then
		ten_bit <= 1;
		decimal_part <= ten_part - 10;
	else
		ten_bit <= 0;
		decimal_part <= ten_part ;
	end if;


end process;


process (decimal_part)
begin
	if(decimal_part = 9) then
		digit_bit <= 9;
	elsif (decimal_part = 8) then
		digit_bit <= 8;
	elsif (decimal_part = 7) then
		digit_bit <= 7;
	elsif (decimal_part = 6) then
		digit_bit <= 6;
	elsif (decimal_part = 5) then
		digit_bit <= 5;
	elsif (decimal_part = 4) then
		digit_bit <= 4;
	elsif (decimal_part = 3) then
		digit_bit <= 3;
	elsif (decimal_part = 2) then
		digit_bit <= 2;
	elsif (decimal_part = 1) then
		digit_bit <= 1;
	else
		digit_bit <= 0;
	end if;
	
end process;


thousand_bin <= std_logic_vector(to_unsigned(thousand_bit,4));
hundred_bin <= std_logic_vector(to_unsigned(hundred_bit,4));
ten_bin <= std_logic_vector(to_unsigned(ten_bit,4));
digit_bin <= std_logic_vector(to_unsigned(digit_bit,4));

display: seven_seg_display port map(clk,digit_bin,ten_bin,hundred_bin,thousand_bin,an,hex);


end Behavioral;

