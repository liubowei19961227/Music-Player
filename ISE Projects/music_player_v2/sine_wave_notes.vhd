library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants.all;

entity sine_wave_notes is
	port(
		clk : in std_logic;
		btn : in std_logic_vector(3 downto 0);
		sw : in std_logic_vector(7 downto 0);
		led : out std_logic_vector(7 downto 0);
		s : out std_logic
	);
end sine_wave_notes;

architecture behavioral of sine_wave_notes is

	signal note_cc : natural range min_note_cc to max_note_cc;
	
	signal note_length_in_twelfths : natural range min_note_length_in_twelfths to max_note_length_in_twelfths ;
	signal twelfth_cc : natural range min_twelfth_cc to max_twelfth_cc;
	
	signal rst : std_logic;
	signal is_new_note : std_logic;
	signal note_pitch_pulse: std_logic;
	signal second_pulse : std_logic;
	signal is_mute : std_logic;

begin
	x_note_length_counter : entity work.note_length_counter port map (
		rst => rst,
		clk => clk,
		is_staccato => sw(7),
		is_slurred => sw(6),
		note_length_in_twelfths => note_length_in_twelfths,
		twelfth_cc => twelfth_cc,
		is_mute => is_mute,
		is_new_note => is_new_note
	);
	
	x_note_player : entity work.note_player port map ( 	
		rst => rst,
		clk => clk,
		note_pitch_cc => note_cc,
		note_pitch_pulse => note_pitch_pulse
	);
	
	led(7) <= second_pulse;
	led(6 downto 3) <= sw(5 downto 2);
	led(2 downto 0) <= btn(3 downto 1);
	s <= note_pitch_pulse;	
	rst <= btn(0);
	
	process (clk)
		variable sw_value : natural range 1 to 4;
	begin
		if rising_edge(clk) then
			sw_value := to_integer(unsigned(sw(1 downto 0))) + 1;
			twelfth_cc <= min_twelfth_cc * sw_value;
		end if;
	end process;

	process (clk)
		variable music_index : natural range 0 to music_length - 1;
		variable note : natural range 0 to num_notes - 1;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				music_index := 0;
				second_pulse <= '0';
			else
				if is_new_note = '1' then
					if music_index = music_length - 1 then
						music_index := 0;
					else
						music_index := music_index + 1;
					end if;
					second_pulse <= not second_pulse;
				end if;
				note := music_array(music_index);
				if is_mute = '1' then
					note_cc <= 0;
				else
					note_cc <= note_cc_array(note) * music_octave_array(music_index);
				end if;
				note_length_in_twelfths <= music_length_array(music_index);
			end if;
		end if;
	end process;
	
	
end behavioral;