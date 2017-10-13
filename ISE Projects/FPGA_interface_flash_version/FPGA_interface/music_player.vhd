----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:18:30 10/06/2017 
-- Design Name: 
-- Module Name:    music_player - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



use work.constants.all;



entity music_player is
port( clk: in std_logic;
	   sw: in std_logic_vector(2 downto 0);
		btn: in std_logic_vector(3 downto 0);
		PDB: inout std_logic_vector(7 downto 0);
		EPPASTB: in std_logic;
		EppDSTB: in std_logic;
		EPPWRITE: in std_logic;
		EppWAIT: out std_logic;
		LED: out std_logic_vector(7 downto 0);
		AN: out std_logic_vector(3 downto 0);
		s: out std_logic;
		--flash mem below
		data: inout std_logic_vector(15 downto 0);
		addr: out std_logic_vector(22 downto 1);
		CE: out std_logic;
		RP: out std_logic;
		OE: out std_logic;
		WE: out std_logic;
		ST: in std_logic;
		VPEN: out std_logic;
		
		echo: in std_logic;
		trigger: out std_logic;
		
		hex: out std_logic_vector(6 downto 0)
);
end music_player;

architecture Behavioral of music_player is


--seven_segment_display
component seven_seg_display is
port(clk: in std_logic;
	  input1: in std_logic_vector(3 downto 0);
	  input2: in std_logic_vector(3 downto 0);
	  input3: in std_logic_vector(3 downto 0);
	  input4: in std_logic_vector(3 downto 0);
	  anode: out std_logic_vector(3 downto 0);
	  output: out std_logic_vector(6 downto 0));

end component;




component EPP_interface is
port(
		clk: in std_logic;
		rst: in std_logic;
		PDB: inout std_logic_vector(7 downto 0);
		EppASTB: in std_logic;
		EppDSTB: in std_logic;
		EppWRITE: in std_logic;
		EppWAIT: out std_logic;
		data_ready: out std_logic;
		ram_data: out std_logic_vector(31 downto 0)
		--LED: out std_logic_vector(7 downto 0)
);
end component;

signal epp_download_data: std_logic_vector(31 downto 0);
signal epp_data_valid: std_logic;
signal ram_data: std_logic_vector(15 downto 0);
signal ram_address: std_logic_vector(15 downto 0);
signal ram_address_int: integer;  




component block_ram is
port(clk: in std_logic;
	  address: in integer;
	  we: in std_logic;
	  data_i: in std_logic_vector(15 downto 0);
	  data_o: out std_logic_vector(15 downto 0)
);
end component;

signal bram_address: integer range 0 to 512;
signal b_we: std_logic; --enable bram write
signal bram_data_in: std_logic_vector(15 downto 0);
signal bram_data_out: std_logic_vector(15 downto 0);




--signals
signal rst,download_btn,play_btn,delete_btn: std_logic;
signal bpm_mode: std_logic;
signal select_song: std_logic_vector(1 downto 0);

--state machine
type state_type is (rest_state, download_state,debug_download_state,read_block0_state, read_block1_state,read_block2_state,
read_block3_state,load_flash_addr_state, write_flash_memory_state,debug_write_flash_state,
load_play_addr_state,download_flash_state, debug_download_flash_state, read_music_metadata_stateA, read_music_metadata_stateB, play_music_state,
load_delete_addr_state,delete_state,debug_delete_state);

signal current_state: state_type;
signal download_finished: std_logic;
signal download_counter : integer;
signal flash_write_counter: integer;
signal flash_write_finished: std_logic;

signal flash_base_address: std_logic_vector(21 downto 0);
signal flash_base_address_int: integer;

signal flash_download_counter: integer;
signal flash_download_finished: std_logic;




-----------------------------------------music player

component music_player_v7 is
port(
	clk : in std_logic;
	rst : in std_logic;
	enable: in std_logic;
	--sw : in std_logic_vector(7 downto 0);
	is_slurred: in std_logic;
	is_staccato: in std_logic;
	is_square: in std_logic;
	twelfth_cc: in integer;
	music_pitch: in unsigned(7 downto 0);
	music_length: in unsigned(7 downto 0);
	music_counter: out natural; 
	s : out std_logic
);
end component;

signal enable_music_player: std_logic;
signal is_slurred: std_logic;
signal is_staccato:std_logic;
signal is_square:std_logic;
signal twelfth_cc: integer;
signal music_pitch: unsigned(7 downto 0);
signal music_length: unsigned(7 downto 0);
signal music_counter:integer;

signal staccato_sig: std_logic;
signal slurred_sig: std_logic;

signal default_bpm: integer;
signal base_bpm: integer := 625000;

signal default_bpm_input: std_logic_vector(15 downto 0);

signal lcd_bpm_display: std_logic_vector(15 downto 0);

-------------------------------------------------------


------------------------------------------ultrasonic sensor

component beat_follower IS
	PORT ( clk, echo, Resetn : IN  STD_LOGIC;
          trigger : OUT  STD_LOGIC;
			 twelfth_of_beat : OUT STD_LOGIC_VECTOR(29 DOWNTO 0);
			 bpm: out integer
	);
END component;


signal dynamic_bpm: std_logic_vector(29 downto 0);
signal us_bpm_display: integer;

signal us_bpm_display_sig: std_logic_vector(15 downto 0);


---------------------------------------------------------



--debug
signal display_state: std_logic_vector(7 downto 0);



--flash_memory

component flash_mem_cntl is
port(clk: in std_logic;
	  rst: in std_logic;
	  cntl_rest: in std_logic;
	  cntl_write: in std_logic;
	  cntl_read: in std_logic;
	  cntl_delete: in std_logic;
	  cntl_delete_address:in std_logic_vector(22 downto 1);
	  cntl_write_data: in std_logic_vector(15 downto 0);
	  cntl_write_address: in std_logic_vector(22 downto 1);
	  cntl_read_address: in std_logic_vector(22 downto 1);
	  data: inout std_logic_vector(15 downto 0);
	  addr: out std_logic_vector(22 downto 1);
	  CE: out std_logic;
	  RP: out std_logic;
	  OE: out std_logic;
	  WE: out std_logic;
	  st: in std_logic;
	  VPEN: out std_logic;
	  cntl_read_data: out std_logic_vector(15 downto 0);
	  cntl_read_complete: out std_logic;
	  cntl_write_complete: out std_logic;
	  cntl_delete_complete: out std_logic
	  --cntl_debug: out std_logic_vector(15 downto 0)
);

end component;

signal f_rest: std_logic := '1';
signal f_write, f_read, f_delete: std_logic;
signal write_data: std_logic_vector(15 downto 0);
signal write_address: std_logic_vector(21 downto 0);
signal read_address: std_logic_vector(21 downto 0);
signal read_data: std_logic_vector(15 downto 0);
signal delete_address: std_logic_vector(21 downto 0);
signal read_complete, write_complete,delete_complete: std_logic;

signal block0: std_logic_vector(21 downto 0) := "0000000000000000000000";
signal block1: std_logic_vector(21 downto 0) := "0000010000000000000000";
signal block2: std_logic_vector(21 downto 0) := "0000100000000000000000";
signal block3: std_logic_vector(21 downto 0) := "0000110000000000000000"; 


begin


--load the flash blocks' mem
block0 <= "0000000000000000000000";
block1 <= "0000010000000000000000";
block2 <= "0000100000000000000000";
block3 <= "0000110000000000000000";
----btn
rst <= btn(0);
download_btn <= btn(1);
play_btn <= btn(2);
delete_btn <= btn(3);
select_song <= sw(1 downto 0);
bpm_mode <= sw(2);




download_from_epp: epp_interface port map(clk,rst,PDB,EppASTB, EppDSTB,EppWRITE,EppWAIT, epp_data_valid,epp_download_data);
ram_data <= epp_download_data(15 downto 0);
ram_address <= epp_download_data(31 downto 16);
ram_address_int <= to_integer(unsigned(epp_download_data(31 downto 16)));
download_finished <= '1' when download_counter >= 200 else '0';

flash_write_finished <= '1' when flash_write_counter >=200 else '0';

flash_download_finished <= '1' when flash_download_counter >= 200 else '0';

led <= display_state;

update_ram_download_counter: process(clk)
begin
	if rising_edge(clk) then
		if rst = '1' or download_counter = 200 then
			download_counter <= 0;
		else
			if epp_data_valid = '1' then
				download_counter <= download_counter + 1;
			end if;
		end if;
	
	end if;

end process;


update_flash_write_counter:process(clk)
begin
	if rising_edge(clk) then
		if flash_write_counter = 200 or rst = '1' then
			flash_write_counter <= 0;
		else
			if write_complete = '1' then
				flash_write_counter <= flash_write_counter + 1;
			end if;
		
		end if;
	end if;

end process;


update_flash_download_counter: process(clk)
begin
	if rising_edge(clk) then
		if flash_download_counter = 200 or rst = '1' then
			flash_download_counter <= 0;
		else
			if read_complete = '1' then
				flash_download_counter <= flash_download_counter + 1;
			end if;
		end if;
	
	end if;

end process;




ram_management: block_ram port map(clk,bram_address,b_we,bram_data_in,bram_data_out);

display_ram: seven_seg_display port map(clk,bram_data_out(3 downto 0),bram_data_out(7 downto 4),bram_data_out(11 downto 8),bram_data_out(15 downto 12),an,hex);


play_music: music_player_v7 port map(clk,rst,enable_music_player,is_slurred,is_staccato,is_square,twelfth_cc,music_pitch,music_length,music_counter,s);



baton:beat_follower port map(clk,echo,rst,trigger,dynamic_bpm,us_bpm_display);
us_bpm_display_sig <= std_logic_vector(to_unsigned(us_bpm_display,16));

flash_mem: flash_mem_cntl port map(clk,rst,f_rest,f_write,f_read,f_delete,delete_address,write_data,write_address,read_address,data,addr,
CE,RP,OE,WE,ST,VPEN,read_data,read_complete,write_complete,delete_complete);



FSM: process(clk)
begin
	if rising_edge(clk) then
		if rst = '1' then
		
			current_state <= rest_state;
		
		else
			case current_state is
				
				when rest_state =>
					display_state<= "00000000";
					enable_music_player <= '0';
					
					f_rest <= '1';
					f_write <= '0';
					f_read <= '0';
					f_delete <= '0';  --turn off flash memory
					
					if download_btn = '1' then
						current_state <= download_state;
					elsif play_btn = '1' then
						current_state <= load_play_addr_state;
					elsif delete_btn = '1' then
						current_state <= load_delete_addr_state;
					else
						current_state <= current_state;
					end if;
					
				
				
				when load_delete_addr_state =>
				
					if (select_song = "00") then
						delete_address <= block0;
					elsif(select_song = "01") then
						delete_address <= block1;
					elsif(select_song = "10") then
						delete_address <= block2;
					elsif (select_song = "11") then
						delete_address <= block3;
					else
						delete_address <= block0;
					end if;
					
					current_state <= delete_state;
				
				
				when delete_state =>
					
					f_rest <= '0';
					f_write <= '0';
					f_read <= '0';
					f_delete <= '1';
					
					if (delete_complete = '1') then
						f_rest <= '1';
						f_write <= '0';
						f_read <= '0';
						f_delete <= '0';
						current_state <= rest_state;
					end if;
					
				
				
				when debug_delete_state =>
					display_state <= "00001100";
					f_rest <= '0';
					f_write <= '0';
					f_read <= '1';
					f_delete <= '0';
					--read_address <= "00000000000000" & sw(7 downto 0);
					
				
				
				when download_state=>
					display_state<= "00000001";
					b_we <= epp_data_valid;
					bram_data_in <= ram_data;
					bram_address <= ram_address_int;
					
					if(download_finished = '1') then
						b_we <= '0';
						current_state <= read_block0_state;
					end if;
					
				when read_block0_state =>
					
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block0;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block0;
							flash_base_address_int <= 0;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block1_state;
						end if;
					else
						current_state <= read_block0_state;
					end if;
				
				
				when read_block1_state =>
					
					--display_state <= "11111111";
					
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block1;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block1;
							flash_base_address_int <= 65536;
							current_state <= load_flash_addr_state;
							display_state <= "11001100";
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block2_state;
							display_state <= "00110011";
						end if;
					else
						current_state <= read_block1_state;
					end if;
				
				when read_block2_state =>
				
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block2;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block2;
							flash_base_address_int <= 131072;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block3_state;
						end if;
					else
						current_state <= read_block2_state;
					end if;
				
				when read_block3_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block3;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block3;
							flash_base_address_int <= 196608;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block0;
							flash_base_address_int <= 0;
							current_state <= load_flash_addr_state;
						end if;
					else
						current_state <= read_block3_state;
					end if;
				
				
				
				when load_flash_addr_state =>
				
					
					if flash_base_address_int = 65536 then
						display_state <= "11111111";
					else
						display_state <= "11111000";
					end if;
					
					delete_address <= flash_base_address;
					f_rest <= '0';
					f_read <= '0';
					f_write <= '0';
					f_delete <= '1';
					if (delete_complete = '1') then
						f_rest <= '1';
						f_read <= '0';
						f_write <= '0';
						f_delete <= '0';
						current_state <= write_flash_memory_state;
					end if;
				
				when write_flash_memory_state =>
					f_rest <= '0';
					f_write <= '1';
					f_read <= '0';
					f_delete <= '0';
					write_address <= std_logic_vector(to_unsigned(flash_write_counter + flash_base_address_int,22));
					bram_address <= flash_write_counter;
					write_data <= bram_data_out;
					
					if(flash_write_finished = '1') then
						f_rest <= '1';
						f_write <= '0';
						f_read <= '0';
						f_delete <= '0';
						current_state <= rest_state;
					end if;
					
				when debug_write_flash_state =>
				
					display_state <= "11110000";
					f_rest <= '0';
					f_write <= '0';
					f_read <= '1';
					f_delete <= '0';
					--read_address <= "00000000000000" & sw(7 downto 0);
					
					
				
				when debug_download_state =>
					if flash_base_address = block0 then
						display_state <= "00010000";
					else
						display_state <= "00000111";
					end if;
					
					b_we <= '0';
					--bram_address <= to_integer(unsigned(sw));
					
					
				when load_play_addr_state =>
				
					if (select_song = "00") then
						flash_base_address_int <= 0;
					
					elsif (select_song = "01") then
						flash_base_address_int <= 65536;
					elsif (select_song = "10") then
						flash_base_address_int <= 131072;
					elsif (select_song = "11") then
						flash_base_address_int <= 196608;
					else
						flash_base_address_int <= 0;
					end if;
					
					current_state <= download_flash_state;
				
				
				when download_flash_state=>
					f_rest <= '0';
					f_read <= '1';
					f_write <= '0';
					f_delete <= '0';
					
					read_address <= std_logic_vector(to_unsigned(flash_download_counter + flash_base_address_int,22));
					b_we <= read_complete;
					bram_address <= flash_download_counter;
					bram_data_in <= read_data;
					
					if (flash_download_finished = '1') then
						f_rest <= '1';
						f_read <= '0';
						f_write <= '0';
						f_delete <= '0';
						b_we <= '0';
						current_state <= play_music_state;
					
					end if;
					
					
					
					
				
				when debug_download_flash_state =>
					display_state <= "11111111";
					b_we <= '0';
					--bram_address <= to_integer(unsigned(sw));
					
					
				when read_music_metadata_stateA =>
					bram_address <= 0;
					current_state <= read_music_metadata_stateB;
					
				
				when read_music_metadata_stateB =>
				
					if (bram_data_out(15 downto 8) = x"01") then
						staccato_sig <= '1';
						slurred_sig <= '0';
					elsif(bram_data_out(15 downto 8) = x"02") then
						slurred_sig <= '1';
						staccato_sig <= '0';
					else
						staccato_sig <= '0';
						slurred_sig <= '0';
					end if;
					
					
					default_bpm <= base_bpm + to_integer(unsigned(bram_data_out(7 downto 0)));
					default_bpm_input <= "00000000" & bram_data_out(7 downto 0);
					
						
					
					
				
				when play_music_state=>
				
					
					if(bpm_mode = '0') then
						twelfth_cc <= default_bpm;
						lcd_bpm_display <= default_bpm_input;
					elsif(bpm_mode = '1') then
						twelfth_cc <= to_integer(unsigned(dynamic_bpm));
						lcd_bpm_display <= us_bpm_display_sig;
					end if;
					
					display_state <= "00000100";
					is_slurred <= slurred_sig;
					is_staccato <= staccato_sig;
					is_square <= '0';
					enable_music_player <= '1';
					bram_address <= music_counter + 1; --ignore the first word now
					music_length <= unsigned(bram_data_out(15 downto 8));
					music_pitch <= unsigned(bram_data_out(7 downto 0));
					
					
					
		
			end case;
	
		end if;
	
	end if;

end process;





end Behavioral;

