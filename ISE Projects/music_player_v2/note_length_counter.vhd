library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.constants.all;

entity note_length_counter is
    port ( 	
		rst : in std_logic;
		clk : in std_logic;
		note_length_in_twelfths : in natural range 1 to 96;
		twelfth_cc : in natural range min_twelfth_cc to max_twelfth_cc;
		is_new_note : out std_logic
	);
end note_length_counter;

architecture Behavioral of note_length_counter is

	signal note_length_cc : natural range min_twelfth_cc to max_twelfth_cc * 96;

	signal note_length_partial : natural range 0 to max_twelfth_cc * 96 - 1;

begin
	note_length_cc <= twelfth_cc * note_length_in_twelfths;
	process (clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				note_length_partial <= 0;
				is_new_note <= '0';
			else
				if note_length_partial >= note_length_cc - 1 then
					note_length_partial <= 0;
					is_new_note <= '1';
				else
					note_length_partial <= note_length_partial + 1;
					is_new_note <= '0';
				end if;
			end if;
		end if;
	end process;
end Behavioral;

