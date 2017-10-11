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
	PORT ( clk, echo, Resetn : IN  STD_LOGIC;
          trigger : OUT  STD_LOGIC;
			 led: BUFFER STD_LOGIC;
			 ST, RE, BR : OUT STD_LOGIC
	);
END beat_follower;

ARCHITECTURE Behavioral OF beat_follower IS

	SIGNAL count            : STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
	SIGNAL beat_counter		: STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
	SIGNAL average				: STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
	SIGNAL average_bpm		: STD_LOGIC_VECTOR(26 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ledtemp				: STD_LOGIC := '0';
	SIGNAL sttemp				: STD_LOGIC := '0';
	SIGNAL retemp				: STD_LOGIC := '0';
	SIGNAL brtemp				: STD_LOGIC := '0';
	SIGNAL beat_seen			: STD_LOGIC := '0';
	SIGNAL beat_store			: STD_LOGIC := '0';
	
	TYPE State_type IS (send_trigger, wait_for_echo, count_echo, beat_registered);
	SIGNAL y : State_type;
	
	
	TYPE beat_array IS ARRAY (3 DOWNTO 0) OF STD_LOGIC_VECTOR(26 DOWNTO 0);
	SIGNAL beat_array0 : beat_array;
	
	COMPONENT large_number_7seg IS
		port(clk: in std_logic;
		  number: in std_logic_vector(15 downto 0);
		  hex: out std_logic_vector(6 downto 0);
		  an: out std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
BEGIN

	FSM: PROCESS (clk, Resetn)
	BEGIN
		IF Resetn = '1' THEN
			count <= (OTHERS => '0');
			ledtemp <= '0';
			y <= send_trigger;
			retemp <= '0';
			brtemp <= '0';
			beat_seen <= '0';
			beat_store <= '0';
		ELSIF clk'EVENT AND clk = '1' THEN
			CASE y IS
				WHEN send_trigger =>
					sttemp <= '1';
					ledtemp  <= '0';
					beat_counter <= beat_counter + 1;
					IF count = 500 THEN
						trigger <= '0';
						count <= (OTHERS => '0');
						y <= wait_for_echo;
						sttemp <= '0';
					ELSE
						trigger <= '1';
						count <= count + 1;
					END IF;
					
				WHEN wait_for_echo =>
					retemp <= '1';
					beat_counter <= beat_counter + 1;
					
					IF echo = '1' THEN
						y <= count_echo;
						count <= (OTHERS => '0');
						IF beat_seen = '1' THEN
							beat_store <= '1';
						END IF;
						
					ELSIF count > 21000000 THEN
						y <= send_trigger;
						retemp <= '0';
						count <= (OTHERS => '0');
						
					ELSE
						count <= count + 1;
					END IF;
					
				WHEN count_echo =>
					beat_store <= '0';
					IF echo = '0' THEN
						IF count < 400000 THEN
							count <= (OTHERS => '0');
							ledtemp <= '1';
							y <= beat_registered;
							beat_seen <= '1';
							retemp <= '0';
						ELSE
							count <= (OTHERS => '0');
							beat_counter <= 400000;
							y <= wait_for_echo;
							retemp <= '0';
						END IF;
					ELSE
						count <= count + 1;
					END IF;
						
				WHEN beat_registered =>
					brtemp <= '1';
					ledtemp <= '0';
					IF count > 10000000 THEN
						y <= send_trigger;
						brtemp <= '0';
						count <= (OTHERS => '0');
					ELSE
						count <= count + 1;
					END IF;
			END CASE;
		END IF;
	
	END PROCESS;
	
	ST <= sttemp;
	RE <= retemp;
	BR <= brtemp;
	
	process (clk)
	begin
		if clk'event and clk='1' then 
			if Resetn='1' then   
				led <= '0';
			elsif ledtemp ='1' then
				led <= not(led);
			end if;
		end if;
	end process;
	
	-- beat store is enable for beat counter to be stored in register.
	PROCESS (clk)
	BEGIN
		IF Resetn = '1' THEN
			beat_array0 <= (0, 0, 0, 0);
		ELSIF clk'EVENT AND clk='1' THEN
			IF beat_store = '1' THEN
				beat_array0 <= (beat_array0(2 DOWNTO 0) & beat_counter);
			END IF;
		END IF;
	END PROCESS;
	
	average <= (beat_array0(3) + beat-array0(2) + beat_array0(1) + beat_array0(0))/4000000;
	average_bpm <= 3*1000/average;		
 
	
END Behavioral;
