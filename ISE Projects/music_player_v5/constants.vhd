library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

Package constants is
	constant max_octave : natural := 3;
	constant min_twelfth_cc : natural := 625000;
	constant max_twelfth_cc : natural := 2500000; --2083333
	constant max_note_length_in_twelfths : natural := 96;
	constant max_note_length : natural := max_twelfth_cc * max_note_length_in_twelfths;
	
	constant num_notes : natural := 12;
	constant music_length : natural := 64;
	
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
	constant rest : natural := 12;

	type note_cc_array_type is array(0 to num_notes) of unsigned(15 downto 0);	
	type music_pitch_array_type is array(0 to music_length - 1) of unsigned(7 downto 0);
	type music_length_array_type is array(0 to music_length - 1) of unsigned(7 downto 0);	
	
	constant note_cc_array : note_cc_array_type := (x"2EA9", x"2C0A", x"2991", x"273C", x"2508", x"22F3", x"20FE", x"1F24", x"1D65", x"1BBE", x"1A30", x"18B7", x"0000");

	signal music_pitch_array : music_pitch_array_type := (x"00", x"02", x"04", x"05", x"07", x"09", x"0B", x"10", x"0B", x"09", x"07", x"05", x"04", x"02", x"00", x"0C", x"10", x"12", x"14", x"15", x"17", x"19", x"1B", x"20", x"1B", x"19", x"17", x"15", x"14", x"12", x"10", x"0C", x"20", x"22", x"24", x"25", x"27", x"29", x"2B", x"30", x"2B", x"29", x"27", x"25", x"24", x"22", x"20", x"0C", x"30", x"32", x"34", x"35", x"37", x"39", x"3B", x"0C", x"3B", x"39", x"37", x"35", x"34", x"32", x"30", x"0C");

	signal music_length_array : music_length_array_type := (x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C");
	
end constants;