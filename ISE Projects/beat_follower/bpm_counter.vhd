----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:30:42 09/17/2017 
-- Design Name: 
-- Module Name:    bpm_counter - Behavioral 
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
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- average_clockcs is in 12ths of beats

ENTITY bpm_counter IS
   PORT ( average_clockcs : in STD_LOGIC_VECTOR (29 DOWNTO 0);
			 clk : IN STD_LOGIC;
			 Resetn : IN STD_LOGIC;
			 Default : IN INTEGER RANGE 0 TO 400;
          hex : out  STD_LOGIC_VECTOR (6 DOWNTO 0);
          an : out  STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END bpm_counter;

architecture Behavioral of bpm_counter is

	COMPONENT large_number_7seg IS
		PORT(	clk: in STD_LOGIC;
				number: in STD_LOGIC_VECTOR(15 DOWNTO 0);
				hex: out STD_LOGIC_VECTOR(6 DOWNTO 0);
				an: out STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;
	
	SIGNAL number 	: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL bpm		: INTEGER RANGE 0 TO 400;

BEGIN

	PROCESS(clk, Resetn)
	BEGIN
		IF Resetn = '1' THEN
			bpm <= Default;
		ELSIF (clk'EVENT AND clk = '1') THEN
			IF average_clockcs < 1000000 THEN
				bpm <= Default;
			ELSIF average_clockcs < 1020408 THEN
				bpm <= 250;
			ELSIF average_clockcs < 1063830 THEN
				bpm <= 240;
			ELSIF average_clockcs < 1111111 THEN
				bpm <= 230;
			ELSIF average_clockcs < 1162791 THEN
				bpm <= 220;
			ELSIF average_clockcs < 1219512 THEN
				bpm <= 210;
			ELSIF average_clockcs < 1282051 THEN
				bpm <= 200;
			ELSIF average_clockcs < 1351351 THEN
				bpm <= 190;
			ELSIF average_clockcs < 1428571 THEN
				bpm <= 180;
			ELSIF average_clockcs < 1515152 THEN
				bpm <= 170;
			ELSIF average_clockcs < 1612903 THEN
				bpm <= 160;
			ELSIF average_clockcs < 1724138 THEN
				bpm <= 150;
			ELSIF average_clockcs < 1851851 THEN
				bpm <= 140;
			ELSIF average_clockcs < 2000000 THEN
				bpm <= 130;
			ELSIF average_clockcs < 2173913 THEN
				bpm <= 120;
			ELSIF average_clockcs < 2380952 THEN
				bpm <= 110;
			ELSIF average_clockcs < 2631579 THEN
				bpm <= 100;
			ELSIF average_clockcs < 2941176 THEN
				bpm <= 90;
			ELSIF average_clockcs < 3333333 THEN
				bpm <= 80;
			ELSIF average_clockcs < 3846154 THEN
				bpm <= 70;
			ELSIF average_clockcs < 4545455 THEN
				bpm <= 60;
			ELSIF average_clockcs < 5555556 THEN
				bpm <= 50;
			ELSIF average_clockcs < 7142857 THEN
				bpm <= 40;
			ELSE
				bpm <= Default;
			END IF;
		END IF;
	END PROCESS;

	number <= std_logic_vector(to_unsigned(bpm, 16));
	displayvalue : large_number_7seg PORT MAP ( clk, number, hex, an);
	
	
END Behavioral;


