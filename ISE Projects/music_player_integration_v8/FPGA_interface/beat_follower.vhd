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
USE ieee.STD_LOGIC_1164.all;
USE ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--clock should be 25 MHz

ENTITY beat_follower IS
	PORT ( clk, echo, Resetn : IN  STD_LOGIC;
          trigger : OUT  STD_LOGIC;
			 twelfth_of_beat : OUT STD_LOGIC_VECTOR(29 DOWNTO 0);
			 bpm: out integer
	);
END beat_follower;

ARCHITECTURE Behavioral OF beat_follower IS

	SIGNAL distance        	  	: STD_LOGIC_VECTOR(29 DOWNTO 0) := (OTHERS => '0');
	SIGNAL count          	  	: STD_LOGIC_VECTOR(29 DOWNTO 0) := (OTHERS => '0');
	SIGNAL sum	         	   : STD_LOGIC_VECTOR(59 DOWNTO 0) := (OTHERS => '0');
	SIGNAL beat_counter			: STD_LOGIC_VECTOR(29 DOWNTO 0) := (OTHERS => '0');
	SIGNAL average					: STD_LOGIC_VECTOR(29 DOWNTO 0) := (OTHERS => '0');
	SIGNAL ledtemp					: STD_LOGIC := '0';
	SIGNAL beat_seen				: STD_LOGIC := '0';
	SIGNAL beat_store				: STD_LOGIC := '0';
	
	signal bpm_val: integer;
	SIGNAL echo_reg : STD_LOGIC;
	
	TYPE State_type IS (send_trigger, wait_for_echo, echo_count, beat_registered);
	SIGNAL y : State_type;
	
	
	TYPE beat_array IS ARRAY (3 DOWNTO 0) OF STD_LOGIC_VECTOR(29 DOWNTO 0);
	SIGNAL beat_array0 : beat_array;
	
	COMPONENT bpm_counter IS
		PORT ( average_clockcs : in STD_LOGIC_VECTOR (29 DOWNTO 0);
				 clk : IN STD_LOGIC;
				 Resetn : IN STD_LOGIC;
				 Default : IN INTEGER RANGE 0 TO 400;
				 bpm: out integer
		);
	END COMPONENT;
	
BEGIN

	FSM: PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			echo_reg <= echo;
			IF Resetn = '1' THEN
				count <= (OTHERS => '0');
				ledtemp <= '0';
				y <= send_trigger;
				beat_seen <= '0';
				beat_store <= '0';
				distance <= (OTHERS => '0');
			ELSE
				CASE y IS
					WHEN send_trigger =>
						ledtemp  <= '0';
						beat_counter <= beat_counter + 1;
						IF count = 250 THEN
							trigger <= '0';
							count <= (OTHERS => '0');
							y <= wait_for_echo;
						ELSE
							trigger <= '1';
							count <= count + 1;
						END IF;
						
					WHEN wait_for_echo =>
						beat_counter <= beat_counter + 1;
						
						IF echo_reg = '1' THEN
							-- rising edge
							y <= echo_count;
							distance <= (OTHERS => '0');
							
						ELSIF count > 1500000 THEN
							-- timeout
							y <= send_trigger;
							count <= (OTHERS => '0');
							
						ELSE
							count <= count + 1;
						END IF;
					
					WHEN echo_count =>
					
						count <= count + 1;
						distance <= distance + 1;
						beat_counter <= beat_counter + 1;
						
						IF echo_reg = '0' AND distance < 58000 THEN
							ledtemp <= '1';
							
							IF beat_seen = '1' THEN
								beat_store <= '1';
							END IF;
							count <= (OTHERS => '0');
							y <= beat_registered;
						ELSIF count > 1500000 THEN
							y <= send_trigger;
							count <= (OTHERS => '0');
						END IF;
							
							
					WHEN beat_registered =>
						beat_seen <= '1';
						beat_store <= '0';
						ledtemp <= '0';
						IF count > 5000000 THEN
							beat_counter <= "000000010011000100101101000000";
							y <= send_trigger;
							count <= (OTHERS => '0');
						ELSE
							count <= count + 1;
						END IF;
				END CASE;
			END IF;
		END IF;
	
	END PROCESS;
	
	process (clk)
	begin
		if clk'event and clk='1' then 
			if Resetn='1' then   
				--led <= '0';
			elsif ledtemp ='1' then
				--led <= not(led);
			end if;
		end if;
	end process;
	
	-- beat store is enable for beat counter to be stored in register.
	PROCESS (clk, Resetn)
	BEGIN 
		
		IF Resetn = '1' THEN
			beat_array0 <= ("000001011111010111100001000000", "000001011111010111100001000000", "000001011111010111100001000000", "000001011111010111100001000000");
		ELSIF clk'EVENT AND clk='1' THEN
			IF beat_store = '1' THEN
				IF ((beat_counter > 6000000) AND (beat_counter < 37500000)) THEN
					beat_array0(3 DOWNTO 1) <= beat_array0(2 DOWNTO 0);
					beat_array0(0) <= std_logic_vector(beat_counter);
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
	sum <= std_logic_vector(1365*unsigned(beat_array0(3) + beat_array0(2) + beat_array0(1) + beat_array0(0)));
	average <= sum(45 DOWNTO 16);
	twelfth_of_beat <= average;

	display_bpm: bpm_counter PORT MAP (average, clk, Resetn, 60,bpm_val);
	
	bpm <= bpm_val;
	
END Behavioral;
