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
		note_pulse : out std_logic
	);
end note_player;

architecture Behavioral of note_player is

	signal sample_rate_partial : natural range 0 to sample_rate_cc - 1;
	signal octave_static : natural range 0 to max_octave;
	signal note_static : natural range 0 to num_notes;
	signal sin_table_array_value_0 : natural range 0 to 255;
	signal sin_table_array_value_1 : natural range 0 to 255;
	signal sin_table_array_value_2 : natural range 0 to 255;
	signal sin_table_array_value_3 : natural range 0 to 255;
	signal index : natural range 0 to 255;
	signal base_index : natural range 0 to max_sin_table_index_0;
	signal overflow_index : natural range 0 to max_sin_table_index_0;
	signal next_sin_table_array_index : natural range 0 to max_sin_table_index_0;
	
	type state_type is (up_0, up_1, up_2, down_0, down_1);
	signal state : state_type;
	

begin

	next_sin_table_array_index <= base_index + (index + 1);
	
	process (clk)
		variable pwm_pulse : std_logic;
		variable duty_cc : natural range 0 to sample_rate_cc - 1;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				sample_rate_partial <= 0;
				duty_cc := 0;
				pwm_pulse := '0';
				state <= up_0;
				index <= 0;
			else					
				if sample_rate_partial <= 0 then
					if state = up_0 then	
						note_static <= note;
						octave_static <= octave;
						case octave is
							when 0 =>
								base_index <= sin_table_indices_array_0(note);
								overflow_index <= sin_table_indices_array_0(note + 1);
							when 1 =>
								base_index <= sin_table_indices_array_1(note);
								overflow_index <= sin_table_indices_array_1(note + 1);
							when 2 =>
								base_index <= sin_table_indices_array_2(note);
								overflow_index <= sin_table_indices_array_2(note + 1);
							when 3 =>
								base_index <= sin_table_indices_array_3(note);
								overflow_index <= sin_table_indices_array_3(note + 1);
						end case;
						duty_cc := 0;
						index <= 1;
						state <= up_1;
					elsif state = up_1 then
						case octave_static is
							when 0 =>
								duty_cc := 0;
							when 1 =>
								duty_cc := 0;
							when 2 =>
								duty_cc := 1;
							when 3 =>
								duty_cc := 2;
						end case;
						index <= 2;
						if note_static = rest then
							state <= up_0;
						else
							state <= up_2;
						end if;
					elsif state = up_2 then
						case octave_static is
							when 0 =>
								duty_cc := sin_table_array_value_0;
							when 1 =>
								duty_cc := sin_table_array_value_1;
							when 2 =>
								duty_cc := sin_table_array_value_2;
							when 3 =>
								duty_cc := sin_table_array_value_3;
						end case;
						if next_sin_table_array_index >= overflow_index then
							index <= 0;
							state <= down_0;
						else
							index <= index + 1;
						end if;
					elsif state = down_0 then
						duty_cc := 255;
						index <= 1;
						state <= down_1;
					elsif state = down_1 then
						case octave_static is
							when 0 =>
								duty_cc := 255 - sin_table_array_value_0;
							when 1 =>
								duty_cc := 255 - sin_table_array_value_1;
							when 2 =>
								duty_cc := 255 - sin_table_array_value_2;
							when 3 =>
								duty_cc := 255 - sin_table_array_value_3;
						end case;
						if next_sin_table_array_index >= overflow_index then
							index <= 0;
							state <= up_0;
						else
							index <= index + 1;
						end if;
					end if;					
					if duty_cc = 0 then
						pwm_pulse := '0';
					else
						pwm_pulse := '1';
					end if;
					sin_table_array_value_0 <= sin_table_array_0(next_sin_table_array_index);
					sin_table_array_value_1 <= sin_table_array_1(next_sin_table_array_index);
					sin_table_array_value_2 <= sin_table_array_2(next_sin_table_array_index);
					sin_table_array_value_3 <= sin_table_array_3(next_sin_table_array_index);
					sample_rate_partial <= 1;
					duty_cc := duty_cc * 2;
				else
					if sample_rate_partial = duty_cc then
						pwm_pulse := '0';
					end if;
					if sample_rate_partial = sample_rate_cc - 1 then
						sample_rate_partial <= 0;
					else
						sample_rate_partial <= sample_rate_partial + 1;
					end if;
				end if;
				note_pulse <= pwm_pulse;
			end if;
		end if;
	end process;

end Behavioral;

