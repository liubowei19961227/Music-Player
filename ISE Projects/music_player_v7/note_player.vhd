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
	signal index : natural range 0 to 255;
	signal base_index : natural range 0 to max_sin_table_index;
	signal overflow_index : natural range 0 to max_sin_table_index;
	
	type state_type is (up_0, up_1, up_2, down_0, down_1);
	signal state : state_type;

begin
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
						base_index <= sin_table_indices_array(note);
						overflow_index <= sin_table_indices_array(note + 1);
						if octave = 0 then
							index_mult <= 1;
						elsif octave = 1 then
							index_mult <= 2;
						elsif octave = 2 then
							index_mult <= 4;
						else
							index_mult <= 8;
						end if;
						duty_cc := 0;
						index <= 1;
						state <= up_1;
					elsif state = up_1 then
						duty_cc := 0;
						index <= 2;
						if base_index = 1667 then -- rest
							state <= up_0;
						else
							state <= up_2;
						end if;
					elsif state = up_2 then
						duty_cc := sin_table_array_value;
						if base_index + (index + 1) * index_mult >= overflow_index then
							index <= 0;
							state <= down_0;
						else
							index <= index + 1;
						end if;
						if index_mult = 1 then
							duty_cc := duty_cc * 2;
						elsif index_mult = 2 then
							duty_cc := duty_cc + duty_cc/4;
						elsif index_mult = 4 then
							duty_cc := duty_cc;
						else
							duty_cc := duty_cc - duty_cc/2;
						end if;
					elsif state = down_0 then
						duty_cc := 255;
						index <= 1;
						state <= down_1;
						if index_mult = 1 then
							duty_cc := duty_cc * 2;
						elsif index_mult = 2 then
							duty_cc := duty_cc + duty_cc/4;
						elsif index_mult = 4 then
							duty_cc := duty_cc;
						else
							duty_cc := duty_cc - duty_cc/2;
						end if;
					elsif state = down_1 then
						duty_cc := 255 - sin_table_array_value;
						if base_index + (index + 1) * index_mult >= overflow_index then
							index <= 0;
							state <= up_0;
						else
							index <= index + 1;
						end if;
						if index_mult = 1 then
							duty_cc := duty_cc * 2;
						elsif index_mult = 2 then
							duty_cc := duty_cc + duty_cc/4;
						elsif index_mult = 4 then
							duty_cc := duty_cc;
						else
							duty_cc := duty_cc - duty_cc/2;
						end if;
					end if;
					if duty_cc = 0 then
						pwm_pulse := '0';
					else
						pwm_pulse := '1';
					end if;
					sin_table_array_value <= sin_table_array(base_index + (index + 1) * index_mult);
					sample_rate_partial <= 1;
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

