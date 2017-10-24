library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants.all;

entity music_player_v7 is
port(
	clk : in std_logic;
	rst : in std_logic;
	enable: in std_logic;
	--sw : in std_logic_vector(7 downto 0);
	is_slurred: in std_logic;
	is_staccato: in std_logic;
	is_square: in std_logic;
	twelfth_cc: in integer;
	music_pitch: in unsigned(7 downto 0);
	music_length: in unsigned(7 downto 0);
	music_counter: out natural range 0 to 1023; 
	s : out std_logic
);
end music_player_v7;

architecture behavioral of music_player_v7 is

	signal note : natural range 0 to num_notes;
	signal octave : natural range 0 to max_octave;
	signal note_length_in_twelfths : natural range 0 to max_note_length_in_twelfths;
	--signal twelfth_cc : natural range 0 to max_twelfth_cc;
	signal music_pitch_array_value : unsigned(7 downto 0);
	signal music_length_array_value : unsigned(7 downto 0);
			
	--signal rst : std_logic;
	signal is_new_note : std_logic;
	signal note_pitch_pulse: std_logic;
	signal is_mute : std_logic;
	
	
	signal music_index_sig: integer range 0 to 1023;

begin
	x_note_length_counter : entity work.note_length_counter port map (
		rst => rst,
		clk => clk,
		is_staccato => is_staccato,
		is_slurred => is_slurred,
		note_length_in_twelfths => note_length_in_twelfths,
		twelfth_cc => twelfth_cc,
		is_mute => is_mute,
		is_new_note => is_new_note
	);
	
	x_note_player : entity work.note_player port map ( 	
		rst => rst,
		clk => clk,
		note => note,
		octave => octave,
		is_square => is_square,
		note_pulse => note_pitch_pulse
	);
	
	s <= note_pitch_pulse;
	--rst <= btn;
	--twelfth_cc <= min_twelfth_cc * (to_integer(unsigned(sw(1 downto 0))) + 1);

	main_loop: process (clk)
		--variable music_index : natural range 0 to music_length - 1;
		variable music_index: natural range 0 to 1023;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				music_index := 0;
				music_index_sig <= 0;
				music_pitch_array_value <= x"0C";
				music_length_array_value <= x"0C";
			else
				if enable = '1' then
					if is_new_note = '1' then
						if music_index = 1023 then
							music_index := 0;
							music_index_sig <= 0;
						else
							music_index := music_index + 1;
							music_index_sig <= music_index_sig + 1;
						end if;
						--music_pitch_array_value <= music_pitch_array(music_index);
						--music_length_array_value <= music_length_array(music_index);
						music_pitch_array_value <= music_pitch;
						music_length_array_value <= music_length;
					end if;
					if is_mute = '1' then
						music_pitch_array_value <= x"0C";
					end if;
				else
					music_pitch_array_value <= x"0C";
					music_length_array_value <= x"0C";
					music_index_sig <= 0;
				end if;
			
			
			
			
			
			
			
			end if;
			
			
			
		end if;
		
		--music_counter <= music_index;
		
	end process;
	
	note_length_in_twelfths <= to_integer(music_length_array_value);
	note <= to_integer(music_pitch_array_value(3 downto 0));
	octave <= to_integer(music_pitch_array_value(5 downto 4));
	
	music_counter <= music_index_sig;
	
	
end behavioral;