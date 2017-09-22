library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants.all;

entity note_length_counter is
    port ( 	
		rst : in std_logic;
		clk : in std_logic;
		is_staccato : in std_logic;
		is_slurred : in std_logic;
		note_length_in_twelfths : in natural range 0 to max_note_length_in_twelfths;
		twelfth_cc : in natural range 0 to max_twelfth_cc;
		is_mute : out std_logic;
		is_new_note : out std_logic
	);
end note_length_counter;

architecture Behavioral of note_length_counter is

	signal note_length_cc : natural range 0 to max_twelfth_cc * max_note_length_in_twelfths;
	signal note_length_partial : natural range 0 to max_twelfth_cc * max_note_length_in_twelfths - 1;
	
	signal articulation_cc : natural range 0 to max_twelfth_cc * max_note_length_in_twelfths;

begin
	note_length_cc <= twelfth_cc * note_length_in_twelfths;
	
	articulation_cc <= 	note_length_cc when is_staccato = '0' and is_slurred = '1' else
						note_length_cc / 4 when is_staccato = '1' and is_slurred = '0' else
						note_length_cc / 2 + note_length_cc / 4 + note_length_cc / 8;
	
	process (clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				note_length_partial <= 0;
				is_new_note <= '0';
				is_mute <= '0';
			else
				if note_length_partial > articulation_cc then
					is_mute <= '1';
				else
					is_mute <= '0';
				end if;
				if note_length_partial >= note_length_cc - 1 then
					note_length_partial <= 0;
					is_new_note <= '1';
				else
					note_length_partial <= note_length_partial + 1;
					is_new_note <= '0';
				end if;
			end if;
		end if;
	end process;
end Behavioral;

