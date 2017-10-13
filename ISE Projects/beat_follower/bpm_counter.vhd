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

	PROCESS(clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			IF Resetn = '1' THEN
				bpm <= Default;
			ELSE
				IF average_clockcs < 500000 THEN
					bpm <= Default;
				ELSIF average_clockcs < 510204 THEN
					bpm <= 250;
				ELSIF average_clockcs < 531915 THEN
					bpm <= 240;
				ELSIF average_clockcs < 555556 THEN
					bpm <= 230;
				ELSIF average_clockcs < 581395 THEN
					bpm <= 220;
				ELSIF average_clockcs < 609756 THEN
					bpm <= 210;
				ELSIF average_clockcs < 641026 THEN
					bpm <= 200;
				ELSIF average_clockcs < 675676 THEN
					bpm <= 190;
				ELSIF average_clockcs < 714286 THEN
					bpm <= 180;
				ELSIF average_clockcs < 757576 THEN
					bpm <= 170;
				ELSIF average_clockcs < 806452 THEN
					bpm <= 160;
				ELSIF average_clockcs < 862069 THEN
					bpm <= 150;
				ELSIF average_clockcs < 925926 THEN
					bpm <= 140;
				ELSIF average_clockcs < 1000000 THEN
					bpm <= 130;
				ELSIF average_clockcs < 1086957 THEN
					bpm <= 120;
				ELSIF average_clockcs < 1190476 THEN
					bpm <= 110;
				ELSIF average_clockcs < 1315790 THEN
					bpm <= 100;
				ELSIF average_clockcs < 1470588 THEN
					bpm <= 90;
				ELSIF average_clockcs < 1666667 THEN
					bpm <= 80;
				ELSIF average_clockcs < 1923077 THEN
					bpm <= 70;
				ELSIF average_clockcs < 2272728 THEN
					bpm <= 60;
				ELSIF average_clockcs < 2777778 THEN
					bpm <= 50;
				ELSIF average_clockcs < 3571429 THEN
					bpm <= 40;
				ELSE
					bpm <= Default;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	number <= std_logic_vector(to_unsigned(bpm, 16));
	displayvalue : large_number_7seg PORT MAP ( clk, number, hex, an);
	
	
END Behavioral;


