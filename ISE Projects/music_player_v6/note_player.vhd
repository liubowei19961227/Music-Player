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
	signal sin_table_array_value : natural range 0 to 255;
	signal sin_table_indices_array_value_a : natural range 0 to max_sin_table_index;
	signal sin_table_indices_array_value_b : natural range 0 to max_sin_table_index;

begin
	with octave select index_mult <= 1 when 0, 2 when 1, 4 when 2, 8 when 3;
	process (clk)
		variable pwm_pulse : std_logic;
		variable duty_cc : natural range 0 to sample_rate_cc - 1;
		variable down : std_logic;
		variable index : natural range 0 to 255;
		variable base_index : natural range 0 to max_sin_table_index;
		variable overflow_index : natural range 0 to max_sin_table_index;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				sample_rate_partial <= 0;
				index := 0;
				down := '0';
				duty_cc := 0;
				base_index := max_sin_table_index - 1;
				overflow_index := max_sin_table_index;
				pwm_pulse := '0';
			else
				sin_table_indices_array_value_a <= sin_table_indices_array(note);
				sin_table_indices_array_value_b <= sin_table_indices_array(note + 1);
				if sample_rate_partial <= 0 then
					if base_index = max_sin_table_index - 1 then -- rest
						duty_cc := 0;
					else
						duty_cc := sin_table_array_value;
						if down = '1' then
							duty_cc := 255 - duty_cc;
						end if;
						if octave = 0 then
							duty_cc := duty_cc * 2;
						elsif octave = 1 then
							duty_cc := duty_cc + duty_cc / 4;
						elsif octave = 2 then
							duty_cc := duty_cc;
						else
							duty_cc := duty_cc - duty_cc / 2;
						end if;
					end if;
					if duty_cc = 0 then
						pwm_pulse := '0';
					else
						pwm_pulse := '1';
					end if;
					sample_rate_partial <= 1;
				else
					if sample_rate_partial = duty_cc then
						pwm_pulse := '0';
					end if;
					if sample_rate_partial = sample_rate_cc - 1 then
						index := index + 1;
						if base_index + index * index_mult >= overflow_index then
							index := 0;
							if down = '1' then
								base_index := sin_table_indices_array_value_a;
								overflow_index := sin_table_indices_array_value_b;
							end if;
							down := not down;
						end if;
						sin_table_array_value <= sin_table_array(base_index + index * index_mult);
						sample_rate_partial <= 0;
					else
						sample_rate_partial <= sample_rate_partial + 1;
					end if;
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

