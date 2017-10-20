library work;

Package constants_pkg is
	constant min_note_cc : natural := 0;
	constant max_note_cc : natural := 11945 * 8;
	constant min_twelfth_cc : natural := 625000;
	constant max_twelfth_cc : natural := 2500000; --2083333;
	constant min_note_length_in_twelfths : natural := 1;
	constant max_note_length_in_twelfths : natural := 96;
	constant min_note_length : natural := min_twelfth_cc * min_note_length_in_twelfths;
	constant max_note_length : natural := max_twelfth_cc * max_note_length_in_twelfths;	
	
	constant num_notes : natural := 13;
	constant music_length : natural := 15;
	
	type note_cc_array_type is array (0 to num_notes - 1) of natural range min_note_cc to 11945;
	type music_array_type is array (0 to music_length - 1) of natural range 0 to num_notes - 1;
	type music_length_array_type is array (0 to music_length - 1) of natural range min_note_length_in_twelfths to max_note_length_in_twelfths;
	type music_octave_array_type is array (0 to music_length- 1) of natural range 0 to 8;

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

--  pokemon theme
	constant note_cc_array : note_cc_array_type := (11945, 11274, 10641, 10044, 9480, 8947, 8446, 7972, 7525, 7102, 6704, 6327, 0);

	constant music_array : music_array_type := (note_e, note_e, note_e, note_e, note_e, note_d, note_b, note_a, note_a, note_e, note_e, note_d, note_c, note_d, rest);
	
	constant music_length_array : music_length_array_type := (6, 6, 6, 18, 6, 12, 6, 24, 6, 12, 12, 6, 6, 12, 96);
	
	constant music_octave_array : music_octave_array_type := (4, 4, 4, 4, 4, 4, 8, 8, 8, 4, 4, 4, 4, 4, 4);
	
-- C major scale
--	constant note_cc_array : note_cc_array_type := (11945, 11274, 10641, 10044, 9480, 8947, 8446, 7972, 7525, 7102, 6704, 6327);
--
--	constant music_array : music_array_type := (note_c, note_d, note_e, note_f, note_g, note_a, note_b, note_c, note_b, note_a, note_g, note_f, note_e, note_d);
--	
--	constant music_length_array : music_length_array_type := (12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12);
--	
--	constant music_octave_array : music_octave_array_type := (4, 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4 ,4);
--	
end constants_pkg;