library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

Package constants is
--	constant max_note_cc : natural := 11945;
	constant max_octave : natural := 3;
	constant min_twelfth_cc : natural := 625000;
	constant max_twelfth_cc : natural := 2500000; --2083333
	constant max_note_length_in_twelfths : natural := 96;
	constant max_note_length : natural := max_twelfth_cc * max_note_length_in_twelfths;
	constant sample_rate_cc : natural := 512;
	
	constant num_notes : natural := 12;
	constant music_length : natural := 64;
	constant max_sin_table_index : natural := 1667;
	
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

	type music_pitch_array_type is array(0 to music_length - 1) of unsigned(7 downto 0);
	type music_length_array_type is array(0 to music_length - 1) of unsigned(7 downto 0);
	type sin_table_indices_array_type is array (0 to num_notes) of natural range 0 to max_sin_table_index;
	type sin_table_array_type is array (0 to max_sin_table_index) of natural range 0 to 255;
	
	signal music_pitch_array : music_pitch_array_type := (x"00", x"02", x"04", x"05", x"07", x"09", x"0B", x"10", x"0B", x"09", x"07", x"05", x"04", x"02", x"00", x"0C", x"10", x"12", x"14", x"15", x"17", x"19", x"1B", x"20", x"1B", x"19", x"17", x"15", x"14", x"12", x"10", x"0C", x"20", x"22", x"24", x"25", x"27", x"29", x"2B", x"30", x"2B", x"29", x"27", x"25", x"24", x"22", x"20", x"0C", x"30", x"32", x"34", x"35", x"37", x"39", x"3B", x"0C", x"3B", x"39", x"37", x"35", x"34", x"32", x"30", x"0C");
	signal music_length_array : music_length_array_type := (x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C", x"0C");
	constant sin_table_indices_array : sin_table_indices_array_type := (0,187,364,531,688,837,977,1109,1234,1352,1463,1568,1667);
	constant sin_table_array : sin_table_array_type := (0,0,0,0,0,0,1,1,1,1,2,2,3,3,4,4,5,5,6,6,7,8,9,9,10,11,12,13,14,15,16,17,18,19,20,21,23,24,25,27,28,29,31,32,33,35,36,38,39,41,43,44,46,47,49,51,53,54,56,58,60,62,63,65,67,69,71,73,75,77,79,81,83,85,87,89,91,93,95,97,99,101,103,105,108,110,112,114,116,118,120,123,125,127,129,131,133,135,138,140,142,144,146,148,150,152,155,157,159,161,163,165,167,169,171,173,175,177,179,181,183,185,187,189,190,192,194,196,198,200,201,203,205,206,208,210,211,213,215,216,218,219,221,222,224,225,226,228,229,230,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,247,248,249,249,250,251,251,252,252,253,253,253,254,254,254,254,255,255,255,255,255,0,0,0,0,0,1,1,1,1,2,2,2,3,3,4,5,5,6,7,7,8,9,10,11,12,12,13,14,16,17,18,19,20,21,23,24,25,27,28,30,31,33,34,36,37,39,41,42,44,46,47,49,51,53,55,57,58,60,62,64,66,68,70,72,74,76,79,81,83,85,87,89,91,94,96,98,100,102,105,107,109,111,114,116,118,121,123,125,127,130,132,134,136,139,141,143,145,148,150,152,154,157,159,161,163,165,168,170,172,174,176,178,180,182,184,186,188,190,192,194,196,198,200,202,204,206,207,209,211,213,214,216,217,219,221,222,224,225,227,228,229,231,232,233,235,236,237,238,239,240,241,242,243,244,245,246,247,248,248,249,250,250,251,252,252,252,253,253,254,254,254,254,255,255,255,255,255,0,0,0,0,0,1,1,1,1,2,2,3,3,4,4,5,6,7,7,8,9,10,11,12,13,14,15,16,17,19,20,21,23,24,25,27,28,30,31,33,35,36,38,40,42,43,45,47,49,51,53,55,57,59,61,63,65,67,69,71,74,76,78,80,82,85,87,89,92,94,96,99,101,103,106,108,110,113,115,118,120,122,125,127,130,132,134,137,139,142,144,146,149,151,153,156,158,161,163,165,167,170,172,174,176,179,181,183,185,187,189,192,194,196,198,200,202,204,206,207,209,211,213,215,216,218,220,221,223,225,226,228,229,231,232,233,235,236,237,238,240,241,242,243,244,245,246,247,247,248,249,250,250,251,252,252,253,253,253,254,254,254,255,255,255,255,255,0,0,0,0,0,1,1,1,2,2,3,3,4,4,5,6,6,7,8,9,10,11,12,13,14,16,17,18,20,21,22,24,25,27,28,30,32,33,35,37,39,41,42,44,46,48,50,52,54,57,59,61,63,65,68,70,72,74,77,79,81,84,86,89,91,94,96,98,101,103,106,109,111,114,116,119,121,124,126,129,131,134,137,139,142,144,147,149,152,154,157,159,162,164,167,169,171,174,176,178,181,183,185,188,190,192,194,196,199,201,203,205,207,209,211,213,215,216,218,220,222,223,225,227,228,230,231,233,234,236,237,238,239,241,242,243,244,245,246,247,248,249,249,250,251,251,252,252,253,253,254,254,254,255,255,255,255,0,0,0,0,0,1,1,1,2,2,3,3,4,5,6,6,7,8,9,10,11,12,14,15,16,18,19,20,22,23,25,27,28,30,32,34,35,37,39,41,43,45,47,49,52,54,56,58,61,63,65,68,70,72,75,77,80,82,85,87,90,93,95,98,100,103,106,108,111,114,117,119,122,125,127,130,133,135,138,141,144,146,149,152,154,157,159,162,165,167,170,172,175,177,180,182,185,187,189,192,194,196,199,201,203,205,207,209,212,214,216,217,219,221,223,225,227,228,230,231,233,234,236,237,239,240,241,242,244,245,246,247,248,248,249,250,251,251,252,253,253,254,254,254,255,255,255,255,255,0,0,0,0,1,1,1,2,2,3,3,4,5,5,6,7,8,9,10,11,13,14,15,17,18,20,21,23,24,26,28,30,32,33,35,37,39,42,44,46,48,50,53,55,57,60,62,65,67,70,72,75,78,80,83,86,88,91,94,97,99,102,105,108,111,113,116,119,122,125,128,131,134,136,139,142,145,148,151,153,156,159,162,165,167,170,173,175,178,181,183,186,188,191,193,196,198,200,203,205,207,210,212,214,216,218,220,222,224,226,227,229,231,233,234,236,237,239,240,241,243,244,245,246,247,248,249,250,251,251,252,253,253,254,254,254,255,255,255,255,0,0,0,0,1,1,1,2,2,3,4,4,5,6,7,8,9,10,12,13,14,16,17,19,20,22,24,25,27,29,31,33,35,37,40,42,44,46,49,51,54,56,59,61,64,66,69,72,75,77,80,83,86,89,92,95,97,100,103,106,109,112,115,118,121,125,128,131,134,137,140,143,146,149,152,155,158,161,163,166,169,172,175,178,181,183,186,189,191,194,196,199,202,204,206,209,211,213,216,218,220,222,224,226,228,230,231,233,235,236,238,239,241,242,244,245,246,247,248,249,250,251,251,252,253,253,254,254,254,255,255,255,0,0,0,0,1,1,1,2,3,3,4,5,6,7,8,9,10,12,13,14,16,17,19,21,23,25,26,28,30,33,35,37,39,42,44,47,49,52,54,57,60,62,65,68,71,74,77,80,83,86,89,92,95,98,101,104,107,111,114,117,120,123,127,130,133,136,139,143,146,149,152,155,158,162,165,168,171,174,177,180,183,185,188,191,194,197,199,202,205,207,210,212,214,217,219,221,223,225,227,229,231,233,235,237,238,240,241,243,244,245,246,248,249,250,251,251,252,253,253,254,254,254,255,255,255,0,0,0,0,1,1,2,2,3,4,5,5,6,8,9,10,11,13,14,16,18,20,21,23,25,27,30,32,34,36,39,41,44,46,49,52,55,57,60,63,66,69,72,75,78,82,85,88,91,95,98,101,105,108,111,115,118,121,125,128,132,135,138,142,145,149,152,155,159,162,165,168,172,175,178,181,184,187,190,193,196,199,202,204,207,210,212,215,217,220,222,224,226,228,231,233,234,236,238,240,241,243,244,245,247,248,249,250,251,252,252,253,254,254,254,255,255,255,0,0,0,0,1,1,2,2,3,4,5,6,7,9,10,11,13,14,16,18,20,22,24,26,28,31,33,35,38,41,43,46,49,52,55,58,61,64,67,70,73,77,80,83,87,90,94,97,101,104,108,111,115,119,122,126,129,133,137,140,144,147,151,154,158,161,165,168,172,175,178,182,185,188,191,194,197,200,203,206,209,212,214,217,220,222,224,227,229,231,233,235,237,239,241,242,244,245,246,248,249,250,251,252,253,253,254,254,255,255,255,0,0,0,1,1,1,2,3,4,5,6,7,8,10,11,13,14,16,18,20,22,24,27,29,32,34,37,40,42,45,48,51,54,58,61,64,67,71,74,78,81,85,88,92,96,100,103,107,111,115,118,122,126,130,134,138,141,145,149,153,156,160,164,167,171,175,178,182,185,188,192,195,198,201,205,208,210,213,216,219,221,224,226,229,231,233,235,237,239,241,243,244,246,247,248,250,251,252,252,253,254,254,255,255,255,0,0,0,1,1,2,2,3,4,5,6,8,9,11,12,14,16,18,20,23,25,27,30,33,35,38,41,44,47,50,54,57,60,64,67,71,75,78,82,86,90,94,98,102,106,110,114,118,122,126,130,134,138,142,146,150,154,158,162,166,170,173,177,181,184,188,192,195,198,202,205,208,211,214,217,220,223,225,228,230,233,235,237,239,241,243,244,246,247,249,250,251,252,253,253,254,254,255,255,0);
	
end constants;