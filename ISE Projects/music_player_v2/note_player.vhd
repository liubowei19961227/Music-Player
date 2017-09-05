library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants.all;

entity note_player is
    port ( 	
		rst : in std_logic;
		clk : in std_logic;
		note_pitch_cc : in natural range min_note_cc to max_note_cc;
		note_pitch_pulse : out std_logic
	);
end note_player;

architecture Behavioral of note_player is

	signal note_pitch_partial : natural range 0 to max_note_cc - 1;
	signal square_wave : std_logic;

begin

	note_pitch_pulse <= square_wave;

	process (clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				note_pitch_partial <= 0;
				square_wave <= '0';
			elsif note_pitch_partial >= note_pitch_cc - 1 then
				note_pitch_partial <= 0;
				square_wave <= not square_wave;
			else
				note_pitch_partial <= note_pitch_partial + 1;
			end if;
		end if;
	end process;

end Behavioral;

