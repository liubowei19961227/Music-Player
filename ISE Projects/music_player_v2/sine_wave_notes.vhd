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

	component note_length_counter is
		port (
			rst : in std_logic;
			clk : in std_logic;
			note_length_in_twelfths : in natural range 1 to 96;
			twelfth_cc : in natural range min_twelfth_cc to max_twelfth_cc;
			is_new_note : out  std_logic
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

	type note_cc_array_type is array (0 to 11) of natural range min_note_cc to max_note_cc;
	type music_array_type is array (0 to 13) of natural range 0 to 11;

	constant note_c : natural := 0;
	constant note_cs : natural := 1;
	constant note_d : natural := 2;
	constant note_ds : natural := 3;
	constant note_e : natural := 4;
	constant note_f : natural := 5;
	constant note_fs : natural := 6;
	constant note_g : natural := 7;
	constant note_gs : natural := 8;
	constant note_a : natural := 9;
	constant note_as : natural := 10;
	constant note_b : natural := 11;

	constant note_cc_array : note_cc_array_type := (47778, 45097, 42566, 40177, 37922, 35788, 33784, 31888, 30098, 28409, 26815, 25310);

	constant music_array : music_array_type := (note_c, note_d, note_e, note_f, note_g, note_a, note_b, note_c, note_b, note_a, note_g, note_f, note_e, note_d);
	
	signal note_cc : natural range min_note_cc to max_note_cc;
	
	signal sw_value : integer range 1 to 96;
	
	signal rst : std_logic;
	signal is_new_note : std_logic;
	signal note_pitch_pulse: std_logic;
	signal second_pulse : std_logic;

begin

	note_length_counter_0 : note_length_counter port map (
		rst => rst,
		clk => clk,
		note_length_in_twelfths => sw_value,
		twelfth_cc => max_twelfth_cc,
		is_new_note => is_new_note
	);
	
	note_player_0 : note_player port map ( 	
		rst => rst,
		clk => clk,
		note_pitch_cc => note_cc,
		note_pitch_pulse => note_pitch_pulse
	);
	
	led(7) <= second_pulse;
	led(6 downto 4) <= "111";
	led(3 downto 0) <= btn;
	s <= note_pitch_pulse;
	sw_value <= to_integer(unsigned(sw));
	
	rst <= btn(0);

	process (clk)
		variable music_index : natural range 0 to 13;
		variable note : natural range 0 to note_b;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				music_index := 0;
				second_pulse <= '0';
			else
				if is_new_note = '1' then
					music_index := music_index + 1;
					if music_index = 14 then
						music_index := 0;
					end if;
					second_pulse <= not second_pulse;
				end if;
				note := music_array(music_index);
				note_cc <= note_cc_array(note);
			end if;
		end if;
	end process;
	
	
end behavioral;