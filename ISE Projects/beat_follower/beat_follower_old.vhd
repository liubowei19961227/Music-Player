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

ENTITY beat_follower IS
	PORT ( clk, echo : IN  STD_LOGIC;
          trigger : OUT  STD_LOGIC;
			 led: out STD_LOGIC
	);
END beat_follower;

ARCHITECTURE Behavioral OF beat_follower IS

	SIGNAL count            : STD_LOGIC_VECTOR(16 DOWNTO 0) := (OTHERS => '0');
	SIGNAL centimeters      : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
	SIGNAL number				: STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
	SIGNAL echo_last        : STD_LOGIC := '0';
	SIGNAL echo_synced      : STD_LOGIC := '0';
	SIGNAL echo_unsynced    : STD_LOGIC := '0';
	SIGNAL waiting          : STD_LOGIC := '0';
	SIGNAL hold					: STD_LOGIC := '0';
	SIGNAL ledtemp				: STD_LOGIC;
	
BEGIN

	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF hold = '0' THEN
				IF waiting = '0' THEN
				
					IF count = 500 THEN -- Assumes 100MHz
					 -- After 10us then go into waiting mode
						trigger <= '0';
						waiting    <= '1';
						count      <= (OTHERS => '0');
					ELSE
						trigger <= '1';
						count <= count+1;
					END IF;
				
				ELSIF (echo_last = '0' AND echo_synced = '1') THEN
					-- Seen rising edge - start count
					count       <= (others => '0');
					centimeters <= (others => '0');
				ELSIF echo_last = '1' AND echo_synced = '0' THEN
					-- Seen falling edge, so capture count
					--                led <= std_logic_vector(centimeters);
					number <= centimeters;
					
					IF number < 20 THEN
						hold <= '1';
						ledtemp <= NOT ledtemp;
						count <= (OTHERS => '0');
					ELSE
						ledtemp <= '0';
						hold <= '0';
					END IF;
				ELSIF count = 2900*2 -1 THEN
					-- advance the counter
				 
					centimeters <= centimeters + 1;
					count <= (others => '0');
				 
					IF centimeters = 3448 THEN
					  -- time out - send another pulse
						waiting <= '0';
					END IF;
					
				ELSE

					count <= count + 1;                
				
				END IF;

				echo_last     <= echo_synced;
				echo_synced   <= echo_unsynced;
				echo_unsynced <= echo;
			
			END IF;
		ELSE
			IF count > 1000 THEN
				hold <= '0';
			ELSE
				count <= count + 1;
			END IF;
		END IF;

	END PROCESS;
	
	led <= ledtemp;

END Behavioral;

