library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity triangle_wave_notes is
port(clk: in std_logic;
	  s: out std_logic);
end triangle_wave_notes;

architecture Behavioral of triangle_wave_notes is

component division
	port (
	clk: in std_logic;
	rfd: out std_logic;
	dividend: in std_logic_vector(31 downto 0);
	divisor: in std_logic_vector(31 downto 0);
	quotient: out std_logic_vector(31 downto 0);
	fractional: out std_logic_vector(31 downto 0));
end component;

type note_array is array (0 to 13) of integer range 101239 to 191110;

constant note_c4 : integer := 191110;
constant note_d4 : integer := 170265;
constant note_e4 : integer := 151685;
constant note_f4 : integer := 143172;
constant note_g4 : integer := 127551;
constant note_a4 : integer := 113636;
constant note_b4 : integer := 101239;

constant music : note_array := (note_c4, note_c4, note_a4, note_a4, note_b4, note_b4, note_a4, note_f4, note_f4, note_e4, note_e4, note_d4, note_d4, note_c4);

constant second_cc : integer := 100000000;
constant pwm_block_cc : integer := 100000;

signal pwm_cc : integer range 0 to pwm_block_cc - 1 := 0;
signal pwm_block_partial : integer range 0 to pwm_block_cc - 1 := 0;

signal note_cc : integer := note_c4; -- note in clock cycles
signal note_partial : integer range 0 to note_c4 - 1 := 0;

signal second_partial : integer range 0 to second_cc -1 := 0;
signal second_count : integer range 0 to 13 := 0;

signal square_wave: integer range 0 to 1 := 0;
signal pulse: std_logic := '0';

signal rfd : std_logic;
signal dividend : std_logic_vector(31 downto 0);
signal divisor : std_logic_vector(31 downto 0);
signal quotient : std_logic_vector(31 downto 0);
signal fractional : std_logic_vector(31 downto 0);

begin

divider : division
		port map (
			clk => clk,
			rfd => rfd,
			dividend => dividend,
			divisor => divisor,
			quotient => quotient,
			fractional => fractional);
			
dividend <= std_logic_vector(to_unsigned(pwm_block_cc * note_partial, dividend'length));
divisor <= std_logic_vector(to_unsigned(note_cc, divisor'length));

process (clk)
begin
    if (rising_edge(clk)) then
	     if (second_partial = second_cc - 1) then
            second_partial <= 0;
				second_count <= second_count + 1;
				note_cc <= music(second_count);
        else
            second_partial <= second_partial + 1;
        end if;
		  if note_partial = 0 then
				square_wave <= 0;
        elsif note_partial = note_cc - 1 then
            square_wave <= 1;
		  end if;
        if square_wave = 0 then
            note_partial <= note_partial + 1;
		  else
				note_partial <= note_partial - 1;
        end if;
	     if (pwm_block_partial = pwm_block_cc - 1) then
            pwm_block_partial <= 0;
				pwm_cc <=  to_integer(unsigned(quotient));
				pulse <= '1';
        else
            pwm_block_partial <= pwm_block_partial + 1;
		  end if;
		  if pwm_block_partial = pwm_cc then
			   pulse <= '0';
		  end if;
    end if;
end process;


s <= pulse;

end Behavioral;