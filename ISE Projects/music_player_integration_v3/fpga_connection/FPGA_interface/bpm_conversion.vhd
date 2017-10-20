----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:53 10/20/2017 
-- Design Name: 
-- Module Name:    bpm_conversion - Behavioral 
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
library work;
use work.constants.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bpm_conversion is
PORT ( 
			 clk : IN STD_LOGIC;
			 rst : IN STD_LOGIC;
			 default_value: in integer;
			 bpm: in integer;
			 twelfth_cc: out integer
          --hex : out  STD_LOGIC_VECTOR (6 DOWNTO 0);
          --an : out  STD_LOGIC_VECTOR (3 DOWNTO 0)
);
end bpm_conversion;

architecture Behavioral of bpm_conversion is


signal index: integer range 0 to 255;

begin


PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF rst = '1' THEN
				twelfth_cc <= default_value;
			ELSE
				IF bpm < 41 THEN
					index <= 0;
				ELSIF bpm > 239 THEN
					index <= 200;
				ELSE
					index <= bpm - 40;
				END IF;
				
				twelfth_cc <= twelfth_cc_array(index);
				
			END IF;
		END IF;
	END PROCESS;


end Behavioral;

