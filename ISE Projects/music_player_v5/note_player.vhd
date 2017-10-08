library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants.all;

entity note_player is
    port ( 	
		rst : in std_logic;
		clk : in std_logic;
		note : in natural range 0 to num_notes;
		octave : in natural range 0 to max_octave;
		note_pulse : out std_logic
	);
end note_player;

architecture behavioral of note_player is

	signal note_pitch_partial : unsigned(19 downto 0);
	signal sample_rate_partial : unsigned(7 downto 0);
	signal square_wave : std_logic;
	signal duty_cc : unsigned(7 downto 0);
	signal note_cc : unsigned(19 downto 0);
	signal note_cc_array_value : unsigned(15 downto 0);

begin

	process (clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				note_pitch_partial <= x"00000";
				sample_rate_partial <= x"00";
				note_cc_array_value <= x"0000";
				square_wave <= '0';
			else				
				note_cc_array_value <= note_cc_array(note);
				if note_pitch_partial = x"00000" then
					square_wave <= '0';
					note_pitch_partial <= x"00001";
					note_cc <= (x"0" & note_cc_array_value) sll (3 - octave);
				elsif note_pitch_partial = note_cc - x"00001" then
					note_pitch_partial <= note_cc - x"00002";
					square_wave <= '1';
				elsif square_wave = '0' then
					note_pitch_partial <= note_pitch_partial + x"00001";
				else
					note_pitch_partial <= note_pitch_partial - x"00001";
				end if;
				
				if sample_rate_partial <= x"00" then
					if note_cc = x"00000" then
						duty_cc <= x"00";
					else
						duty_cc <= resize((x"ff" * note_pitch_partial) / note_cc, duty_cc'length);
					end if;
					note_pulse <= '1';
					sample_rate_partial <= x"01";
				elsif sample_rate_partial = x"ff" then
					sample_rate_partial <= x"00";
				else
					sample_rate_partial <= sample_rate_partial + x"01";
				end if;
				if sample_rate_partial = duty_cc then
					note_pulse <= '0';
				end if;
			end if;
		end if;
	end process;
	
end behavioral;

