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

architecture Behavioral of note_player is

	signal note_pitch_partial : natural range 0 to max_note_cc * 8 - 1;
	signal octave_mult : natural range 1 to 8;
	signal sample_rate_partial : natural range 0 to sample_rate_cc - 1;

begin
	with octave select octave_mult <= 8 when 0, 4 when 1, 2 when 2, 1 when 3;

	process (clk)
		variable square_wave : std_logic;
		variable duty_cc : natural range 0 to sample_rate_cc - 1;
		variable note_cc : natural range 0 to max_note_cc * 8;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				note_pitch_partial <= 0;
				sample_rate_partial <= 0;
				square_wave := '0';
			else				
				if note_pitch_partial = 0 then
					square_wave := '0';
					note_cc := note_cc_array(note) * octave_mult;
				elsif note_pitch_partial = note_cc - 1 then
					square_wave := '1';
				end if;
				if square_wave = '0' then
					note_pitch_partial <= note_pitch_partial + 1;
				else
					note_pitch_partial <= note_pitch_partial - 1;
				end if;
				
				if sample_rate_partial = sample_rate_cc - 1 then
					sample_rate_partial <= 0;
					if note_cc = 0 then
						duty_cc := 0;
					else
						duty_cc := to_integer(to_unsigned((sample_rate_cc - 1) * note_pitch_partial, 25)/to_unsigned(note_cc - 1, 17));
					end if;
					if duty_cc = 0 then
						note_pulse <= '0';
					else
						note_pulse <= '1';
					end if ;
				else
					if sample_rate_partial = duty_cc then
						note_pulse <= '0';
					end if;
					sample_rate_partial <= sample_rate_partial + 1;
				end if;
			end if;
		end if;
	end process;
end Behavioral;

