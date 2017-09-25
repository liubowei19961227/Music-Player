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

begin

	process (clk)
		variable index : natural range 0 to 255;
		variable down : std_logic;
		variable duty_cc : natural range 0 to sample_rate_cc - 1;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				sample_rate_partial <= 0;
				index := 0;
				down := '0';
				duty_cc := 0;
				note_pulse <= '0';
			else
				if note = rest then
					note_pulse <= '0';
				elsif sample_rate_partial = sample_rate_cc - 1 then
					sample_rate_partial <= 0;
					note_pulse <= '1';
					index := index + 1;
					duty_cc := sin_table_array(note, index * (1 + octave));
					if  duty_cc = 0 and index > 10 then
						index := 0;
						down := not down;
					end if;
					if down = '1' then
						duty_cc := 255 - duty_cc;
					end if;
--					duty_cc := duty_cc + duty_cc / 2;
				else
					if sample_rate_partial = duty_cc then
						note_pulse <= '0';
					end if;
					sample_rate_partial <= sample_rate_partial + 1;
				end if;
			end if;
		end if;
	end process;

end Behavioral;

