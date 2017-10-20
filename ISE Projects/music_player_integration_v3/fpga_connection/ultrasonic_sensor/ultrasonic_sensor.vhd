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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY ultrasonic_sensor IS
	PORT ( clk: IN  STD_LOGIC;
			 trigger: out std_logic;
			 echo: in std_logic;
			 hex: out STD_LOGIC_VECTOR(6 DOWNTO 0);
			 an: out STD_LOGIC_VECTOR(3 DOWNTO 0);
			 led: out STD_LOGIC
	);
END ultrasonic_sensor;

ARCHITECTURE Behavioral OF ultrasonic_sensor IS

	SIGNAL count            : integer;
	SIGNAL centimeters      : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '1');
	SIGNAL number				: STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '1');
	SIGNAL echo_last        : STD_LOGIC := '0';
	SIGNAL echo_synced      : STD_LOGIC := '0';
	SIGNAL echo_unsynced    : STD_LOGIC := '0';
	SIGNAL waiting          : STD_LOGIC := '0';

	COMPONENT large_number_7seg IS
		port(	clk: in STD_LOGIC;
				number: in STD_LOGIC_VECTOR(15 DOWNTO 0);
				hex: out STD_LOGIC_VECTOR(6 DOWNTO 0);
				an: out STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;
	

component seven_seg_display is
port(clk: in std_logic;
	  input1: in std_logic_vector(3 downto 0);
	  input2: in std_logic_vector(3 downto 0);
	  input3: in std_logic_vector(3 downto 0);
	  input4: in std_logic_vector(3 downto 0);
	  anode: out std_logic_vector(3 downto 0);
	  output: out std_logic_vector(6 downto 0));

end component;
	
BEGIN
	

	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
		
			IF waiting = '0' THEN
			
				IF count = 1000 THEN -- Assumes 100MHz
				 -- After 10us then go into waiting mode
					trigger <= '0';
					waiting    <= '1';
					count      <= 0;
				ELSE
					trigger <= '1';
					count <= count+1;
				END IF;
			
			ELSIF echo_last = '0' AND echo_synced = '1' THEN
				-- Seen rising edge - start count
				count       <= 0;
				centimeters <= (others => '0');
				--number <= X"BBBB";
			ELSIF echo_last = '1' AND echo_synced = '0' THEN
				-- Seen falling edge, so capture count
				--                led <= std_logic_vector(centimeters);
				number <= std_logic_vector(to_unsigned(count, 16));
				waiting <= '0';
					count      <= 0;
			ELSIF count = 999 THEN
				-- advance the counter
			 
				centimeters <= std_logic_vector(unsigned(centimeters) + 1);
				--number <= centimeters;
				count <= 0;
			 
--				IF to_integer(unsigned(centimeters)) = 3448 THEN
	--			  -- time out - send another pulse
		--			waiting <= '0';
			--	END IF;
				
			ELSE

				count <= count + 1;                
			
			END IF;

			echo_last     <= echo_synced;
			echo_synced   <= echo_unsynced;
			echo_unsynced <= echo;
			led <= echo;
		
		END IF;


	END PROCESS;
--number <= centimeters;
	displayvalue: seven_seg_display PORT MAP ( clk, number(3 downto 0),number(7 downto 4),number(11 downto 8),number(15 downto 12), an, hex);

END Behavioral;

