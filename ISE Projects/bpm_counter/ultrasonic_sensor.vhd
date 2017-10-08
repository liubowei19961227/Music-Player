----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:10:22 09/16/2017 
-- Design Name: 
-- Module Name:    ultrasonic_sensor - Behavioral 
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
USE ieee.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY ultrasonic_sensor IS
	PORT ( clk, echo : IN  STD_LOGIC;
          trigger : OUT  STD_LOGIC;
			 Q : OUT STD_LOGIC
	);
END ultrasonic_sensor;

ARCHITECTURE Behavioral OF ultrasonic_sensor IS

	SIGNAL count            : STD_LOGIC_VECTOR(17 DOWNTO 0) := (OTHERS => '0');
	SIGNAL beat_start			: STD_LOGIC := '0';
	SIGNAL echo_last        : STD_LOGIC := '0';
	SIGNAL echo_synced      : STD_LOGIC := '0';
	SIGNAL echo_unsynced    : STD_LOGIC := '0';
	SIGNAL waiting          : STD_LOGIC := '0';

	
BEGIN

	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
		
			IF beat_start = '1' THEN
				
				IF count = 100000 THEN
					waiting <= '1';
					beat_start <= '0';
				ELSE
					count <= count + 1;
				END IF;
			
			ELSIF waiting = '0' THEN
			
				IF count = 500 THEN -- Assumes 100MHz
				 -- After 10us then go into waiting mode
					trigger <= '0';
					waiting    <= '1';
					count      <= (OTHERS => '0');
				ELSE
					trigger <= '1';
					count <= count+1;
				END IF;
			
			ELSIF echo_last = '0' AND echo_synced = '1' THEN
				-- Seen rising edge - start count
				count       <= (others => '0');
			ELSIF echo_last = '1' AND echo_synced = '0' THEN
				-- Seen falling edge, so capture count
				--                led <= std_logic_vector(centimeters);
				beat_start <= '1';
				count <= (OTHERS => '0');
			ELSIF count = 116000 THEN
				-- assume too far to register a beat
				-- time out - send another pulse
				waiting <= '0';
			ELSE
				count <= count + 1;                
			
			END IF;

			echo_last     <= echo_synced;
			echo_synced   <= echo_unsynced;
			echo_unsynced <= echo;
		
		END IF;


	END PROCESS;

	

END Behavioral;

