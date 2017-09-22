library work;

Package constants is
	constant max_base_note_cc : natural := 11945;
	constant max_octave : natural := 8;
	constant max_note_cc : natural := max_base_note_cc * max_octave;
	constant min_twelfth_cc : natural := 625000;
	constant max_twelfth_cc : natural := 2500000; --2083333
	constant max_note_length_in_twelfths : natural := 96;
	constant max_note_length : natural := max_twelfth_cc * max_note_length_in_twelfths;
	
	constant num_notes : natural := 13;
	constant music_length : natural := 64;
	
	type base_note_cc_array_type is array (0 to 15) of natural range 0 to max_base_note_cc;
	type music_array_type is array (0 to 63) of natural range 0 to num_notes - 1;
	type music_length_array_type is array (0 to 63) of natural range 0 to max_note_length_in_twelfths;
	type music_octave_array_type is array (0 to 63) of natural range 0 to max_octave;
	
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
	signal base_note_cc_array : base_note_cc_array_type := (11945, 11274, 10641, 10044, 9480, 8947, 8446, 7972, 7525, 7102, 6704, 6327, 0, 0, 0, 0);

	signal music_array : music_array_type := (rest, note_e, note_e, note_e, note_e, note_e, note_d, note_b, note_a, note_a, note_e, note_e, note_d, note_c, note_d, rest, rest, note_c, note_f, note_f, note_f, note_e, note_d, note_c, note_c, note_e, note_e, note_d, note_c, note_e, rest, note_e, note_e, note_e, note_e, note_e, note_d, note_b, note_a, note_e, note_e, note_d, note_c, note_d, rest, rest, note_f, note_f, note_f, note_f, note_f, note_e, note_d, note_c, note_c, note_e, note_e, note_e, note_c, note_e, rest, note_e, note_g, note_a);
	
	signal music_length_array : music_length_array_type := (6, 6, 6, 6, 18, 6, 12, 6, 24, 6, 12, 12, 6, 6, 12, 48, 6, 6, 12, 12, 6, 12, 12, 24, 6, 12, 6, 12, 6, 60, 12, 6, 6, 6, 12, 6, 12, 6, 30, 6, 18, 12, 6, 30, 36, 6, 6, 6, 6, 18, 6, 12, 6, 24, 6, 12, 6, 12, 6, 36, 6, 6, 6, 6);
	
	signal music_octave_array : music_octave_array_type := (4, 4, 4, 4, 4, 4, 4, 8, 8, 8, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 8, 8, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4);

end constants;