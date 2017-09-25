library work;

Package constants is
	constant max_note_cc : natural := 11945;
	constant max_octave : natural := 3;
	constant min_twelfth_cc : natural := 625000;
	constant max_twelfth_cc : natural := 2500000; --2083333
	constant max_note_length_in_twelfths : natural := 96;
	constant max_note_length : natural := max_twelfth_cc * max_note_length_in_twelfths;
	constant sample_rate_cc : natural := 384;
	
	constant num_notes : natural := 12;
	constant music_length : natural := 64;
	
	type music_array_type is array (0 to 63) of natural range 0 to num_notes;
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

	signal music_array : music_array_type := (rest, note_e, note_e, note_e, note_e, note_e, note_d, note_b, note_a, note_a, note_e, note_e, note_d, note_c, note_d, rest, rest, note_c, note_f, note_f, note_f, note_e, note_d, note_c, note_c, note_e, note_e, note_d, note_c, note_e, rest, note_e, note_e, note_e, note_e, note_e, note_d, note_b, note_a, note_e, note_e, note_d, note_c, note_d, rest, rest, note_f, note_f, note_f, note_f, note_f, note_e, note_d, note_c, note_c, note_e, note_e, note_e, note_c, note_e, rest, note_e, note_g, note_a);
	
	signal music_length_array : music_length_array_type := (6, 6, 6, 6, 18, 6, 12, 6, 24, 6, 12, 12, 6, 6, 12, 48, 6, 6, 12, 12, 6, 12, 12, 24, 6, 12, 6, 12, 6, 60, 12, 6, 6, 6, 12, 6, 12, 6, 30, 6, 18, 12, 6, 30, 36, 6, 6, 6, 6, 18, 6, 12, 6, 24, 6, 12, 6, 12, 6, 36, 6, 6, 6, 6);
	
	signal music_octave_array : music_octave_array_type := (1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
	
	type sin_table_array_type is array (0 to 15, 0 to 255) of natural range 0 to 255;
	
	constant sin_table_array : sin_table_array_type := ((0,0,0,0,0,0,0,0,1,1,1,1,1,2,2,2,3,3,3,4,4,4,5,5,6,6,7,7,8,8,9,10,10,11,12,12,13,14,14,15,16,17,18,18,19,20,21,22,23,24,25,26,27,27,28,30,31,32,33,34,35,36,37,38,39,41,42,43,44,45,47,48,49,50,52,53,54,56,57,58,60,61,62,64,65,67,68,69,71,72,74,75,77,78,80,81,83,84,86,87,89,90,92,93,95,97,98,100,101,103,104,106,108,109,111,112,114,116,117,119,120,122,124,125,127,128,130,132,133,135,136,138,140,141,143,144,146,148,149,151,152,154,156,157,159,160,162,163,165,166,168,169,171,173,174,176,177,178,180,181,183,184,186,187,189,190,191,193,194,196,197,198,200,201,202,203,205,206,207,209,210,211,212,213,215,216,217,218,219,220,221,222,224,225,226,227,228,229,230,231,232,232,233,234,235,236,237,238,238,239,240,241,241,242,243,244,244,245,245,246,247,247,248,248,249,249,250,250,251,251,251,252,252,252,253,253,253,254,254,254,254,254,255,255,255,255,255,255,255,0,0,0,0,0,0,0),
(0,0,0,0,0,0,0,1,1,1,1,1,2,2,2,3,3,3,4,4,5,5,5,6,7,7,8,8,9,9,10,11,12,12,13,14,14,15,16,17,18,19,20,21,21,22,23,24,25,26,27,29,30,31,32,33,34,35,36,38,39,40,41,43,44,45,47,48,49,51,52,53,55,56,58,59,60,62,63,65,66,68,69,71,72,74,75,77,79,80,82,83,85,87,88,90,91,93,95,96,98,100,101,103,105,106,108,110,111,113,115,117,118,120,122,123,125,127,128,130,132,134,135,137,139,140,142,144,145,147,149,150,152,154,156,157,159,160,162,164,165,167,169,170,172,173,175,177,178,180,181,183,184,186,187,189,190,192,193,195,196,198,199,200,202,203,205,206,207,209,210,211,213,214,215,216,217,219,220,221,222,223,224,226,227,228,229,230,231,232,233,234,235,236,236,237,238,239,240,241,241,242,243,244,244,245,246,246,247,247,248,249,249,250,250,251,251,251,252,252,252,253,253,253,254,254,254,254,254,255,255,255,255,255,255,0,0,0,0,0,0,0,1,1,1,1,1,2,2,2,3,3,3,4,4,5),
(0,0,0,0,0,0,0,1,1,1,1,2,2,2,3,3,3,4,4,5,5,6,6,7,7,8,9,9,10,11,11,12,13,14,15,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,33,34,36,37,38,39,41,42,43,45,46,48,49,50,52,53,55,56,58,59,61,62,64,65,67,69,70,72,74,75,77,78,80,82,84,85,87,89,90,92,94,96,97,99,101,103,104,106,108,110,112,113,115,117,119,121,122,124,126,128,130,131,133,135,137,139,140,142,144,146,148,149,151,153,155,156,158,160,162,163,165,167,169,170,172,174,175,177,179,180,182,184,185,187,188,190,192,193,195,196,198,199,201,202,204,205,206,208,209,211,212,213,215,216,217,219,220,221,222,223,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,242,243,244,245,245,246,247,247,248,248,249,250,250,251,251,251,252,252,253,253,253,254,254,254,254,254,255,255,255,255,255,255,0,0,0,0,0,0,1,1,1,1,1,2,2,2,3,3,3,4,4,5,5,6,6,7,7,8,9,9,10,11,12,12,13,14),
(0,0,0,0,0,0,1,1,1,1,1,2,2,2,3,3,4,4,5,5,6,6,7,8,8,9,10,10,11,12,13,14,14,15,16,17,18,19,20,21,22,23,25,26,27,28,29,30,32,33,34,36,37,38,40,41,42,44,45,47,48,50,51,53,54,56,58,59,61,63,64,66,68,69,71,73,74,76,78,80,81,83,85,87,89,90,92,94,96,98,100,102,103,105,107,109,111,113,115,117,119,121,122,124,126,128,130,132,134,136,138,140,142,143,145,147,149,151,153,155,157,159,160,162,164,166,168,170,171,173,175,177,178,180,182,184,185,187,189,190,192,194,195,197,199,200,202,203,205,206,208,209,211,212,214,215,216,218,219,220,222,223,224,225,227,228,229,230,231,232,233,235,236,237,238,239,239,240,241,242,243,244,244,245,246,247,247,248,249,249,250,250,251,251,252,252,252,253,253,253,254,254,254,254,255,255,255,255,255,255,0,0,0,0,0,0,1,1,1,1,2,2,2,3,3,4,4,4,5,6,6,7,7,8,9,9,10,11,12,13,13,14,15,16,17,18,19,20,21,22,23,24,25,27,28,29),
(0,0,0,0,0,0,1,1,1,1,2,2,2,3,3,4,4,5,5,6,6,7,8,8,9,10,11,12,12,13,14,15,16,17,18,19,20,21,23,24,25,26,27,29,30,31,33,34,35,37,38,40,41,43,44,46,47,49,51,52,54,55,57,59,61,62,64,66,68,69,71,73,75,77,79,80,82,84,86,88,90,92,94,96,98,100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,168,170,172,174,175,177,179,181,183,185,187,188,190,192,194,195,197,199,200,202,204,205,207,208,210,212,213,215,216,217,219,220,222,223,224,226,227,228,229,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,245,246,247,248,248,249,250,250,251,251,252,252,252,253,253,254,254,254,254,255,255,255,255,255,255,0,0,0,0,0,0,1,1,1,1,2,2,3,3,3,4,4,5,5,6,7,7,8,9,10,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,26,27,28,29,31,32,33,35,36,38,39,40,42,43,45,47,48,50),
(0,0,0,0,0,0,1,1,1,1,2,2,3,3,4,4,5,5,6,6,7,8,9,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,27,28,29,31,32,33,35,36,38,39,41,43,44,46,48,49,51,53,54,56,58,60,62,64,65,67,69,71,73,75,77,79,81,83,85,87,89,91,93,95,97,99,101,104,106,108,110,112,114,116,118,121,123,125,127,129,131,134,136,138,140,142,144,146,148,151,153,155,157,159,161,163,165,167,169,171,173,175,177,179,181,183,185,187,189,191,193,194,196,198,200,202,203,205,207,208,210,212,213,215,216,218,219,221,222,224,225,227,228,229,231,232,233,234,235,236,238,239,240,241,242,243,243,244,245,246,247,248,248,249,250,250,251,251,252,252,253,253,253,254,254,254,254,255,255,255,255,255,0,0,0,0,0,1,1,1,1,2,2,2,3,3,4,4,5,6,6,7,8,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,24,25,26,27,29,30,31,33,34,36,37,39,40,42,44,45,47,49,50,52,54,56,57,59,61,63,65,67,68,70,72,74,76),
(0,0,0,0,0,1,1,1,1,2,2,2,3,3,4,5,5,6,7,7,8,9,10,11,12,12,13,15,16,17,18,19,20,21,23,24,25,27,28,30,31,33,34,36,37,39,41,42,44,46,48,49,51,53,55,57,59,61,62,64,66,68,70,73,75,77,79,81,83,85,87,89,92,94,96,98,100,103,105,107,109,112,114,116,118,121,123,125,128,130,132,134,137,139,141,143,146,148,150,152,155,157,159,161,163,166,168,170,172,174,176,178,181,183,185,187,189,191,193,195,196,198,200,202,204,206,208,209,211,213,214,216,218,219,221,222,224,225,227,228,230,231,232,234,235,236,237,238,239,241,242,243,244,244,245,246,247,248,249,249,250,250,251,252,252,253,253,253,254,254,254,255,255,255,255,255,0,0,0,0,0,1,1,1,1,2,2,2,3,3,4,5,5,6,7,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,27,28,30,31,33,34,36,37,39,41,42,44,46,48,49,51,53,55,57,59,61,63,65,67,69,71,73,75,77,79,81,83,85,87,90,92,94,96,98,101,103,105,107),
(0,0,0,0,0,1,1,1,1,2,2,3,3,4,4,5,6,7,7,8,9,10,11,12,13,14,15,16,17,19,20,21,23,24,25,27,28,30,32,33,35,36,38,40,42,43,45,47,49,51,53,55,57,59,61,63,65,67,69,71,74,76,78,80,83,85,87,89,92,94,96,99,101,103,106,108,111,113,115,118,120,123,125,127,130,132,135,137,139,142,144,147,149,151,154,156,158,161,163,165,168,170,172,174,177,179,181,183,185,188,190,192,194,196,198,200,202,204,206,208,210,211,213,215,217,218,220,222,223,225,226,228,229,231,232,234,235,236,237,239,240,241,242,243,244,245,246,247,248,248,249,250,251,251,252,252,253,253,254,254,254,254,255,255,255,255,255,0,0,0,0,1,1,1,1,2,2,3,3,4,4,5,6,6,7,8,9,10,11,12,13,14,15,16,17,19,20,21,23,24,25,27,28,30,31,33,35,36,38,40,42,43,45,47,49,51,53,55,57,59,61,63,65,67,69,71,73,76,78,80,82,85,87,89,92,94,96,99,101,103,106,108,110,113,115,118,120,122,125,127,130,132,134,137,139,142),
(0,0,0,0,0,1,1,1,2,2,3,3,4,4,5,6,6,7,8,9,10,11,12,13,14,16,17,18,20,21,22,24,25,27,28,30,32,33,35,37,39,41,43,44,46,48,50,52,55,57,59,61,63,65,68,70,72,75,77,79,82,84,86,89,91,94,96,99,101,104,106,109,111,114,116,119,121,124,127,129,132,134,137,139,142,144,147,149,152,154,157,159,162,164,167,169,172,174,176,179,181,183,186,188,190,192,195,197,199,201,203,205,207,209,211,213,215,217,218,220,222,224,225,227,228,230,232,233,234,236,237,238,240,241,242,243,244,245,246,247,248,249,249,250,251,251,252,253,253,253,254,254,254,255,255,255,255,0,0,0,0,0,1,1,1,2,2,3,3,4,4,5,6,7,8,8,9,10,11,12,14,15,16,17,19,20,21,23,24,26,27,29,30,32,34,36,37,39,41,43,45,47,49,51,53,55,57,59,62,64,66,68,70,73,75,77,80,82,85,87,89,92,94,97,99,102,104,107,109,112,114,117,119,122,125,127,130,132,135,137,140,142,145,147,150,153,155,158,160,162,165,167,170,172,175,177),
(0,0,0,0,0,1,1,1,2,2,3,3,4,5,6,6,7,8,9,10,11,12,14,15,16,18,19,20,22,23,25,27,28,30,32,34,35,37,39,41,43,45,47,50,52,54,56,58,61,63,65,68,70,73,75,77,80,83,85,88,90,93,95,98,101,103,106,109,111,114,117,119,122,125,128,130,133,136,138,141,144,146,149,152,154,157,160,162,165,167,170,173,175,178,180,183,185,187,190,192,194,197,199,201,203,206,208,210,212,214,216,218,220,221,223,225,227,228,230,232,233,235,236,238,239,240,241,243,244,245,246,247,248,249,249,250,251,252,252,253,253,254,254,254,255,255,255,255,0,0,0,0,0,1,1,1,2,2,3,3,4,5,6,6,7,8,9,10,11,13,14,15,16,18,19,20,22,23,25,27,28,30,32,34,36,37,39,41,43,45,47,50,52,54,56,58,61,63,65,68,70,73,75,78,80,83,85,88,90,93,96,98,101,103,106,109,111,114,117,120,122,125,128,130,133,136,138,141,144,147,149,152,155,157,160,162,165,168,170,173,175,178,180,183,185,187,190,192,194,197,199,201,203,206,208,210),
(0,0,0,0,1,1,1,2,2,3,3,4,5,5,6,7,8,9,10,11,13,14,15,17,18,20,21,23,24,26,28,30,32,34,36,38,40,42,44,46,48,50,53,55,58,60,62,65,67,70,72,75,78,80,83,86,88,91,94,97,100,102,105,108,111,114,117,119,122,125,128,131,134,137,139,142,145,148,151,154,156,159,162,165,167,170,173,176,178,181,183,186,188,191,193,196,198,201,203,205,208,210,212,214,216,218,220,222,224,226,228,229,231,233,234,236,237,239,240,241,243,244,245,246,247,248,249,250,251,251,252,253,253,254,254,254,255,255,255,255,0,0,0,0,1,1,1,2,2,3,3,4,5,6,7,8,9,10,11,12,13,14,16,17,19,20,22,23,25,27,29,30,32,34,36,38,40,42,45,47,49,51,54,56,58,61,63,66,68,71,73,76,79,81,84,87,89,92,95,98,100,103,106,109,112,115,118,120,123,126,129,132,135,138,140,143,146,149,152,155,157,160,163,166,168,171,174,176,179,182,184,187,189,192,194,197,199,201,204,206,208,210,213,215,217,219,221,223,225,226,228,230,232,233,235,236),
(0,0,0,0,1,1,1,2,2,3,4,4,5,6,7,8,9,10,12,13,14,16,17,19,20,22,24,25,27,29,31,33,35,37,40,42,44,46,49,51,54,56,59,61,64,67,69,72,75,77,80,83,86,89,92,95,98,101,104,107,110,113,116,119,122,125,128,131,134,137,140,143,146,149,152,155,158,161,164,167,170,172,175,178,181,184,186,189,192,194,197,199,202,204,207,209,211,214,216,218,220,222,224,226,228,230,232,233,235,237,238,240,241,242,244,245,246,247,248,249,250,251,252,252,253,253,254,254,254,255,255,255,0,0,0,0,1,1,1,2,2,3,4,4,5,6,7,8,9,11,12,13,14,16,17,19,21,22,24,26,28,30,32,34,36,38,40,42,45,47,49,52,54,57,59,62,64,67,70,72,75,78,81,84,87,89,92,95,98,101,104,107,110,113,116,119,122,125,128,131,134,137,140,143,146,149,152,155,158,161,164,167,170,173,176,179,181,184,187,189,192,195,197,200,202,205,207,209,212,214,216,218,220,222,224,226,228,230,232,234,235,237,238,240,241,243,244,245,246,247,248,249,250,251,252,252),
(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0));

end constants;