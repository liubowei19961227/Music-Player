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
	signal square_wave : std_logic;
	signal octave_mult : natural range 1 to 8;

begin
	with octave select octave_mult <= 8 when 0, 4 when 1, 2 when 2, 1 when 3;
	note_pulse <= square_wave;

	process (clk)
	begin
		if rising_edge(clk) then
			if rst = '1' or note = rest then
				note_pitch_partial <= 0;
				square_wave <= '0';
			elsif note_pitch_partial >= note_cc_array(note) * octave_mult - 1 then
				note_pitch_partial <= 0;
				square_wave <= not square_wave;
			else
				note_pitch_partial <= note_pitch_partial + 1;
			end if;
		end if;
	end process;
end Behavioral;

