----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:28:29 08/25/2017 
-- Design Name: 
-- Module Name:    EPP_command - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.constants_pkg.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EPP_command is
port(clk: in std_logic;
	   sw: in std_logic_vector(7 downto 0);
		rst: in std_logic;
		PDB: inout std_logic_vector(7 downto 0);
		EPPASTB: in std_logic;
		EppDSTB: in std_logic;
		EPPWRITE: in std_logic;
		EppWAIT: out std_logic;
		LED: out std_logic_vector(7 downto 0);
		AN: out std_logic_vector(3 downto 0);
		s: out std_logic;
		hex: out std_logic_vector(6 downto 0)
);
end EPP_command;

architecture Behavioral of EPP_command is



----------------------------------------------declare components
component fpga_download is
port(
		clk: in std_logic;
		rst: in std_logic;
		PDB: inout std_logic_vector(7 downto 0);
		EppASTB: in std_logic;
		EppDSTB: in std_logic;
		EppWRITE: in std_logic;
		EppWAIT: out std_logic;
		data_ready: out std_logic;
		ram_data: out std_logic_vector(23 downto 0)
		--LED: out std_logic_vector(7 downto 0)
);
end component;


component BRAM is
port(
	clk: in std_logic;
	direction: in std_logic;                   --1 for read and 0 for write
	valid: in std_logic;
	data_input: in std_logic_vector(7 downto 0);
	address: in std_logic_vector(15 downto 0);
	read_address: in std_logic_vector(15 downto 0);
	data_output1: out std_logic_vector(7 downto 0);
	data_output2: out std_logic_vector(7 downto 0);
	data_output3: out std_logic_vector(7 downto 0);
	data_output_valid: out std_logic
	--first_memory_block: out std_logic_vector(7 downto 0)
);
end component;

component large_number_7seg is
port(clk: in std_logic;
	  number: in std_logic_vector(15 downto 0);
	  hex: out std_logic_vector(6 downto 0);
	  an: out std_logic_vector(3 downto 0)
		
);
end component;


component seven_seg_display is
port(clk: in std_logic;
	  input1: in std_logic_vector(3 downto 0);
	  input2: in std_logic_vector(3 downto 0);
	  input3: in std_logic_vector(3 downto 0);
	  input4: in std_logic_vector(3 downto 0);
	  anode: out std_logic_vector(3 downto 0);
	  output: out std_logic_vector(6 downto 0));
end component;


component eight_bit_register
port(clk: in std_logic;
	  rst: in std_logic;
	  enable: in std_logic;
	  input: in std_logic_vector(7 downto 0);
	  output: out std_logic_vector(7 downto 0)
);
end component;








component sine_wave_notes is 
	port(
		clk : in std_logic;
		--btn : in std_logic_vector(3 downto 0);
		rst: in std_logic;
		enable: in std_logic;
		sw : in std_logic_vector(7 downto 0);
		
		
		music_counter: out std_logic_vector(7 downto 0);
		note_input: in std_logic_vector(7 downto 0);
		note_len_input: in std_logic_vector(7 downto 0);
		octave_input: in std_logic_vector(7 downto 0);
		
		s : out std_logic
	);
end component;



-----------------------sine wave notes signal
signal note_input_sig: std_logic_vector(7 downto 0);
signal note_len_input_sig: std_logic_vector(7 downto 0);
signal octave_input_sig: std_logic_vector(7 downto 0);
signal music_index: integer range 0 to 14;
signal music_index_mult: std_logic_vector(15 downto 0);
signal music_counter_sig: std_logic_vector(7 downto 0);
signal mult: integer := 3;

--------------------------------------------------------------------------------------
--fpga_download signals
signal data_valid: std_logic;
signal download_data: std_logic_vector(23 downto 0);

--ram signals
signal ram_direction: std_logic;
signal ram_data_input: std_logic_vector(7 downto 0);
signal ram_address: std_logic_vector(15 downto 0);
signal ram_data_output1: std_logic_vector(7 downto 0);
signal ram_data_output2: std_logic_vector(7 downto 0);
signal ram_data_output3: std_logic_vector(7 downto 0);

signal ram_data_output_valid: std_logic;
--signal ram_first_memory_block: std_logic_vector(7 downto 0);
signal ram_read_address: std_logic_vector(15 downto 0);
signal debug_ram: std_logic_vector(7 downto 0);
signal display_ram: std_logic_vector(15 downto 0);

--sw_reg:
--signal enable_sw: std_logic;
--signal rst_sw: std_logic;
--signal sw_output: std_logic_vector(7 downto 0);

--FSM signals

type state_type is (ready_state, download_state,select_song_state,play_music_state);
signal current_state: state_type;
signal finished_downloading: std_logic;
--signal debug_state: std_logic_vector(3 downto 0);
signal rst_download_counter: std_logic;

signal download_counter: integer range 0 to 255 := 0;
--signal debug_download_counter : std_logic_vector(7 downto 0) := "00000000";
signal debug_state: std_logic_vector(3 downto 0);

signal enable_music: std_logic;



begin


------------------------------------------download from fpga and load into RAM
download_from_epp: fpga_download port map(clk,rst,PDB,EppASTB, EppDSTB,EppWRITE,EppWAIT, data_valid,download_data);


ram_address <= download_data(23 downto 8);
ram_data_input <= download_data(7 downto 0);
ram_part: BRAM port map(clk,ram_direction,data_valid,ram_data_input,ram_address,ram_read_address, ram_data_output1,ram_data_output2,ram_data_output3,ram_data_output_valid);

--ram_read_address <= sw;
display_ram <= "00000000" & ram_data_output1;

display_state: large_number_7seg port map(clk,display_ram,hex,an);

------------------------------------------------------------------------------------------
--sw_reg: eight_bit_register port map(clk,rst_sw, enable_sw,sw(7 downto 0),sw_output);



--determine when does download finish
--
process(clk)
begin
	if(rising_edge(clk)) then
		if (rst_download_counter = '1') then
			download_counter <= 0;
		elsif(data_valid = '1') then
			download_counter <= download_counter + 1;
		end if;
	end if;

end process;


finished_downloading <= '1' when download_counter >= 45 else '0';

led <= std_logic_vector(to_unsigned(download_counter,8));

---------------------------------------------------------

----------------------------------state machine




FSM: process(clk)
begin
	if (rising_edge(clk)) then
		if rst = '1' then
			current_state <= ready_state;
			ram_direction <= '0';
			--rst_sw <= '1';
			--enable_sw <= '0';
			rst_download_counter <= '1';
			enable_music <= '0';
			
			
			
		else
			case current_state is
			
				when ready_state =>
					
					rst_download_counter <= '1';
					current_state <= download_state;
					enable_music <= '0';
					debug_state <= "0000";
				
				when download_state=>	
					
					rst_download_counter <= '0';
					ram_direction <= '0';
					
					if finished_downloading = '1' then
						current_state <= select_song_state;
					else
						current_state <= download_state;
					end if;
					
					--rst_sw <= '0';
					--enable_sw <= '1';
					debug_state <= "0001";
					enable_music <= '0';
				
				
					
			 
					
					
					
					
				when select_song_state =>
					--rst_download_counter <= '1';
					--enable_sw <= '1';
					ram_direction <= '1';
					debug_state <= "0010";
					
					current_state <= play_music_state;
					
				
				when play_music_state =>
					ram_direction <= '1';
					enable_music <= '1';
					ram_read_address <= music_index_mult;
					
					
					
					
				
				
			end case;
		
		
		end if;
	
	
	end if;

end process;



debug_music: sine_wave_notes port map(clk,rst,enable_music,sw,music_counter_sig,note_input_sig,note_len_input_sig,octave_input_sig,s);
music_index <= to_integer(unsigned(music_counter_sig));
music_index_mult <= std_logic_vector(to_unsigned(music_index * mult,16));
note_input_sig <= ram_data_output1;
note_len_input_sig <= ram_data_output2;
octave_input_sig <= ram_data_output3;




end Behavioral;

