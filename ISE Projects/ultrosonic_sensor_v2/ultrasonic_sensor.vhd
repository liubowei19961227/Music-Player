----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:52:29 10/07/2017 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ultrasonic_sensor is
port( clk: in std_logic;
		echo: in std_logic;
		trigger: out std_logic;
		speed: out std_logic_vector(1 downto 0);
		an: out std_logic_vector(3 downto 0);
		led: out std_logic_vector(2 downto 0);
		hex: out std_logic_vector(6 downto 0)
);
end ultrasonic_sensor;

architecture Behavioral of ultrasonic_sensor is


  constant FREQ_G       : real := 12.0;      -- Operating frequency in MHz.

  constant SENSE_FREQ_G : real := 20.0;  -- Number of times distance is sensed per second.

  constant MAX_ECHO_TIME_C : real    := 38.0;  -- Maximum echo pulse width when no obstructions (ms).

  constant TRIG_WIDTH_C    : real    := 20.0;  -- Trigger width (us).

  constant SENSE_PERIOD_C  : natural := natural(ceil(FREQ_G * 1.0E6 / SENSE_FREQ_G));

  signal timer_r, dist_r   : natural range 0 to SENSE_PERIOD_C;
  
  signal dist_o: std_logic_vector(15 downto 0);
  
  signal motor: std_logic_vector(1 downto 0);
  
  
  
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


speed <= motor;

display: seven_seg_display port map(clk,dist_o(3 downto 0), dist_o(7 downto 4), dist_o(11 downto 8),dist_o(15 downto 12),an,hex);




  process(clk)

  begin

    if rising_edge(clk) then

      timer_r <= timer_r + 1;

      dist_o  <= std_logic_vector(TO_UNSIGNED(dist_r, 16));
		trigger  <=  '0';


      if timer_r < integer(ceil(TRIG_WIDTH_C * FREQ_G)) then

        trigger <= '1';

        dist_r <= 0;

      elsif echo = '1' then

        dist_r <= dist_r + 1;

      end if;

      if timer_r = SENSE_PERIOD_C then

        timer_r <= 0;


        if dist_r >= integer(ceil(MAX_ECHO_TIME_C * FREQ_G * 1000.0)) then

          dist_o  <= (others => '1');

        else


        end if;

      end if;

    end if;

  end process;
  
  
 process(clk)
 begin
	if rising_edge(clk) then
		if dist_r <= 71 then
			motor <= "00";
		elsif dist_r <= 72 then
			motor <= "01";
		elsif dist_r <= 73 then
			motor <= "10";
		elsif dist_r <= 120 then
			motor <= "11";
		else
			motor <= "11";
		end if;
	
	end if;
 
 end process;
 
 led(1 downto 0) <= motor;
 led(2) <= echo;



end Behavioral;

