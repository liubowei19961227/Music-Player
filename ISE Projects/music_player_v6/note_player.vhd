library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants.all;

entity note_player is
    port ( 	
		rst : in std_logic;
		clk : in std_logic;
		note : in natural range 0 to num_notes;
		octave : in natural range 0 to max_octave;
		is_square : in std_logic;
		note_pulse : out std_logic
	);
end note_player;

architecture Behavioral of note_player is

	signal sample_rate_partial : natural range 0 to sample_rate_cc - 1;
	signal index_mult : natural range 1 to 8;
	signal sin_table_array_value : natural range 0 to sample_rate_cc - 1;

begin
	with octave select index_mult <= 1 when 0, 2 when 1, 4 when 2, 8 when 3;
	process (clk)
		variable index : natural range 0 to 255;
		variable down : std_logic;
		variable pwm_pulse : std_logic;
		variable prev_duty_cc : natural range 0 to sample_rate_cc - 1;
		variable duty_cc : natural range 0 to sample_rate_cc - 1;
		variable base_index : natural range 0 to 2047;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				sample_rate_partial <= 0;
				index := 0;
				down := '0';
				duty_cc := 0;
				base_index := 0;
				prev_duty_cc := 255;
				pwm_pulse := '0';
			else
				if sample_rate_partial = sample_rate_cc - 1 then
					sample_rate_partial <= 0;
					index := index + 1;
					sin_table_array_value <= sin_table_array(base_index + index * index_mult);
					duty_cc := sin_table_array_value;
					if prev_duty_cc > duty_cc then
						index := 1;
						down := not down;
						if down = '0' then
							if note = rest then
								duty_cc := 255;
								down := '1';
								base_index := 0;
							else
								base_index := sin_table_indices_array(note);
							end if;
						end if;
					end if;
					prev_duty_cc := duty_cc;
					if down = '1' then
						duty_cc := 255 - duty_cc;
					end if;
					if octave = 0 then
						duty_cc := duty_cc * 2;
					elsif octave = 1 then
						duty_cc := duty_cc + duty_cc/4;
					elsif octave = 2 then
						duty_cc := duty_cc;
					else
						duty_cc := duty_cc - duty_cc/2;
					end if;
					if duty_cc /= 0 then
						pwm_pulse := '1';
					end if;
				else
					if sample_rate_partial = duty_cc then
						pwm_pulse := '0';
					end if;
					sample_rate_partial <= sample_rate_partial + 1;
				end if;
				if is_square = '1' then
					note_pulse <= down;
				else
					note_pulse <= pwm_pulse;
				end if;
			end if;
		end if;
	end process;

end Behavioral;

