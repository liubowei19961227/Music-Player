library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants_pkg.all;

entity sine_wave_notes is
	port(
		clk : in std_logic;
		--btn : in std_logic_vector(3 downto 0);
		rst: in std_logic;
		enable: in std_logic;
		sw : in std_logic_vector(7 downto 0);
		
		
		music_counter: out std_logic_vector(7 downto 0);
		note_input: in std_logic_vector(7 downto 0);
		note_len_input: in std_logic_vector(7 downto 0);
		octave_input: in std_logic_vector(7 downto 0);
		
		s : out std_logic
	);
end sine_wave_notes;

architecture behavioral of sine_wave_notes is

	component note_length_counter is
		port (
			rst : in std_logic;
			clk : in std_logic;
			is_staccato : in std_logic;
			is_slurred : in std_logic;
			note_length_in_twelfths : in natural range min_note_length_in_twelfths to max_note_length_in_twelfths;
			twelfth_cc : in natural range min_twelfth_cc to max_twelfth_cc;
			is_mute : out std_logic;
			is_new_note : out std_logic
		);
	end component;
	
	component note_player is
		port ( 	
			rst : in std_logic;
			clk : in std_logic;
			note_pitch_cc : in natural range min_note_cc to max_note_cc;
			note_pitch_pulse : out std_logic
		);
	end component;

	signal note_cc : natural range min_note_cc to max_note_cc;
	
	signal note_length_in_twelfths : natural range min_note_length_in_twelfths to max_note_length_in_twelfths ;
	signal twelfth_cc : natural range min_twelfth_cc to max_twelfth_cc;
	
	--signal rst : std_logic;
	signal is_new_note : std_logic;
	signal note_pitch_pulse: std_logic;
	signal second_pulse : std_logic;
	signal is_mute : std_logic;
	
	--signal enable: std_logic;
	signal music_index: integer range 0 to 14;
	signal note: integer range 0 to 12;

begin
	note_length_counter_0 : note_length_counter port map (
		rst => rst,
		clk => clk,
		is_staccato => sw(7),
		is_slurred => sw(6),
		note_length_in_twelfths => note_length_in_twelfths,
		twelfth_cc => twelfth_cc,
		is_mute => is_mute,
		is_new_note => is_new_note
	);
	
	note_player_0 : note_player port map ( 	
		rst => rst,
		clk => clk,
		note_pitch_cc => note_cc,
		note_pitch_pulse => note_pitch_pulse
	);
	
	--led(7) <= second_pulse;
	--led(6 downto 4) <= "111";
	---led(3 downto 0) <= btn;
	s <= note_pitch_pulse when enable = '1' else '0';	
	--rst <= btn(0);
	
	--enable <= sw(2);
	process (clk)
		variable sw_value : natural range 1 to 4;
	begin
		sw_value := to_integer(unsigned(sw(1 downto 0))) + 1;
--		if sw_value < 60 then
--			sw_value := 60;
--		elsif sw_value > 200 then
--			sw_value := 200;
--		end if;
		twelfth_cc <= min_twelfth_cc * sw_value;
	end process;

	process (clk)
		--variable music_index : natural range 0 to music_length - 1;
		--variable note : natural range 0 to num_notes - 1;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				music_index <= 0;
				second_pulse <= '0';
			else
				if(enable = '1') then
					if is_new_note = '1' then
						if music_index < music_length - 1 then
							music_index <= music_index + 1;
						else
							music_index <= 0;
						end if;
						second_pulse <= not second_pulse;
					end if;
					note <= to_integer(unsigned(note_input));
					if is_mute = '1' then
						note_cc <= 0;
					else
						note_cc <= note_cc_array(note) * to_integer(unsigned(octave_input));
					end if;
					note_length_in_twelfths <= to_integer(unsigned(note_len_input));
				end if;
			end if;
		end if;
	end process;
	
	music_counter <= std_logic_vector(to_unsigned(music_index,8));
	
end behavioral;