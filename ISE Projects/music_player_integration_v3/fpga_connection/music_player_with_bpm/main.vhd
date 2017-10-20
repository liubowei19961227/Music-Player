library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants.all;

entity music_player_v7 is
	port(
		clk : in std_logic;
		btn : in std_logic;
		echo : in std_logic;
		sw : in std_logic_vector(7 downto 0);
		--led : out std_logic_vector(7 downto 0);
		s : out std_logic;
		trigger : out std_logic;
		hex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		an : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
end music_player_v7;

architecture behavioral of music_player_v7 is

	signal note : natural range 0 to num_notes;
	signal octave : natural range 0 to max_octave;
	signal note_length_in_twelfths : natural range 0 to max_note_length_in_twelfths;
	signal twelfth_cc : natural range 0 to max_twelfth_cc;
	signal music_pitch_array_value : unsigned(7 downto 0);
	signal music_length_array_value : unsigned(7 downto 0);
			
	signal rst : std_logic;
	signal is_new_note : std_logic;
	signal note_pitch_pulse: std_logic;
	signal is_mute : std_logic;
	signal slv_twelfth : std_logic_vector(29 downto 0);
	signal ledsig : std_logic;
	
	COMPONENT beat_follower IS
		PORT ( clk, echo, Resetn : IN  STD_LOGIC;
				 trigger : OUT  STD_LOGIC;
				 twelfth_of_beat : OUT STD_LOGIC_VECTOR(29 DOWNTO 0);
				 bpm: out integer
		);
	END COMPONENT;
	
	
	
	component large_number_7seg is
	port(clk: in std_logic;
	  number: in std_logic_vector(15 downto 0);
	  hex: out std_logic_vector(6 downto 0);
	  an: out std_logic_vector(3 downto 0)
	);
	end component;
	
	signal bpm_val: integer;
	signal bpm_sig: std_logic_vector(15 downto 0);

begin
	
	display_bpm_sig: large_number_7seg port map(clk,bpm_sig,hex,an);
	
	bpm: beat_follower PORT MAP (
		clk, echo, rst, trigger,slv_twelfth,bpm_val);
		
	bpm_sig <= std_logic_vector(to_unsigned(bpm_val,16));
	
	twelfth_cc <= to_integer(unsigned(slv_twelfth));

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
		note => note,
		octave => octave,
		is_square => sw(2),
		note_pulse => note_pitch_pulse
	);
	
	--led(7 downto 2) <= sw(7 downto 2);
	--led(1) <= sw(1) and sw(0);
	s <= note_pitch_pulse;
	rst <= btn;

	main_loop: process (clk)
		variable music_index : natural range 0 to music_length - 1;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				music_index := 0;
				music_pitch_array_value <= x"0C";
				music_length_array_value <= x"0C";
			else
				if is_new_note = '1' then
					if music_index = music_length - 1 then
						music_index := 0;
					else
						music_index := music_index + 1;
					end if;
					music_pitch_array_value <= music_pitch_array(music_index);
					music_length_array_value <= music_length_array(music_index);
				end if;
				if is_mute = '1' then
					music_pitch_array_value <= x"0C";
				end if;
			end if;
		end if;
	end process;
	
	note_length_in_twelfths <= to_integer(music_length_array_value);
	note <= to_integer(music_pitch_array_value(3 downto 0));
	octave <= to_integer(music_pitch_array_value(5 downto 4));
	
end behavioral;