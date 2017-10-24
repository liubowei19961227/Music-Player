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
	   sw: in std_logic_vector(7 downto 0);
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

signal bram_address: integer range 0 to 1024;
signal b_we: std_logic; --enable bram write
signal bram_data_in: std_logic_vector(15 downto 0);
signal bram_data_out: std_logic_vector(15 downto 0);




--signals
signal rst,download_btn,play_btn,delete_btn: std_logic;
signal bpm_mode: std_logic;
signal select_song: std_logic_vector(3 downto 0);

--state machine
type state_type is (rest_state, download_state,debug_download_state,read_block0_state, read_block1_state,read_block2_state,
read_block3_state,read_block4_state,read_block5_state,read_block6_state,read_block7_state, read_block8_state,read_block9_state,
read_block10_state,read_block11_state,read_block12_state,read_block13_state,read_block14_state,
read_block15_state,load_flash_addr_state, write_flash_memory_state,debug_write_flash_state,
load_play_addr_state,download_flash_state, debug_download_flash_state, read_music_metadata_stateA, read_music_metadata_stateB,
read_music_metadata_stateC, read_music_metadata_stateD, read_music_metadata_stateE, play_music_state,
load_delete_addr_state,delete_state,debug_delete_state,
debug_delay_stateA,debug_music_stateA,debug_music_stateB, debug_music_stateC,debug_play_first_note);

signal current_state: state_type;
signal download_finished: std_logic;
signal download_counter : integer;
signal flash_write_counter: integer;
signal flash_write_finished: std_logic;

signal flash_base_address: std_logic_vector(21 downto 0);
signal flash_base_address_int: integer;

signal flash_download_counter: integer;
signal flash_download_finished: std_logic;

signal debug_flash_write_counter: std_logic_vector(15 downto 0);


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
	music_counter: out natural range 0 to 1023; 
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
signal music_counter:integer range 0 to 1023 := 0;

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
signal block4: std_logic_vector(21 downto 0) := "0001000000000000000000";
signal block5: std_logic_vector(21 downto 0) := "0001010000000000000000";
signal block6: std_logic_vector(21 downto 0) := "0001100000000000000000";
signal block7: std_logic_vector(21 downto 0) := "0001110000000000000000";
signal block8: std_logic_vector(21 downto 0) := "0010000000000000000000";
signal block9: std_logic_vector(21 downto 0) := "0010010000000000000000";
signal block10:std_logic_vector(21 downto 0) := "0010100000000000000000";
signal block11:std_logic_vector(21 downto 0) := "0010110000000000000000";
signal block12:std_logic_vector(21 downto 0) := "0011000000000000000000";
signal block13:std_logic_vector(21 downto 0) := "0011010000000000000000";
signal block14:std_logic_vector(21 downto 0) := "0011100000000000000000";
signal block15:std_logic_vector(21 downto 0) := "0011110000000000000000";

signal block0_int: integer := 0;
signal block1_int: integer := 65536;
signal block2_int: integer := 131072;
signal block3_int: integer := 196608;
signal block4_int: integer := 262144;
signal block5_int: integer := 327680;
signal block6_int: integer := 393216;
signal block7_int: integer := 458752;
signal block8_int: integer := 524288;
signal block9_int: integer := 589824;
signal block10_int:integer := 655360;
signal block11_int:integer := 720896;
signal block12_int:integer := 786432;
signal block13_int:integer := 851968;
signal block14_int:integer := 917504;
signal block15_int:integer := 983040;


component large_number_7seg is
port(clk: in std_logic;
	  number: in std_logic_vector(15 downto 0);
	  hex: out std_logic_vector(6 downto 0);
	  an: out std_logic_vector(3 downto 0)
		
);
end component;




component bpm_conversion is
PORT ( 
			 clk : IN STD_LOGIC;
			 rst : IN STD_LOGIC;
			 default_value: in integer;
			 bpm: in integer;
			 twelfth_cc: out integer
          --hex : out  STD_LOGIC_VECTOR (6 DOWNTO 0);
          --an : out  STD_LOGIC_VECTOR (3 DOWNTO 0)
);
end component;

signal bpm_input: integer;
signal twelfth_cc_output:integer;  --default bpm converted from the lut

begin



convert_default_bpm: bpm_conversion port map(clk,rst,base_bpm,bpm_input,twelfth_cc_output);


--load the flash blocks' mem
block0 <= "0000000000000000000000";
block1 <= "0000010000000000000000";
block2 <= "0000100000000000000000";
block3 <= "0000110000000000000000";

block4 <= "0001000000000000000000";
block5 <= "0001010000000000000000";
block6 <= "0001100000000000000000";
block7 <= "0001110000000000000000";
block8 <= "0010000000000000000000";
block9 <= "0010010000000000000000";
block10<= "0010100000000000000000";
block11<= "0010110000000000000000";
block12<= "0011000000000000000000";
block13<= "0011010000000000000000";
block14<= "0011100000000000000000";
block15<= "0011110000000000000000";

block0_int <= 0;
block1_int <= 65536;
block2_int <= 131072;
block3_int <= 196608;
block4_int <= 262144;
block5_int <= 327680;
block6_int <= 393216;
block7_int <= 458752;
block8_int <= 524288;
block9_int <= 589824;
block10_int<= 655360;
block11_int<= 720896;
block12_int<= 786432;
block13_int<= 851968;
block14_int<= 917504;
block15_int<= 983040;

----btn
rst <= btn(0);
download_btn <= btn(1);
play_btn <= btn(2);
delete_btn <= btn(3);
select_song <= sw(3 downto 0);
bpm_mode <= sw(7);




download_from_epp: epp_interface port map(clk,rst,PDB,EppASTB, EppDSTB,EppWRITE,EppWAIT, epp_data_valid,epp_download_data);
ram_data <= epp_download_data(15 downto 0);
ram_address <= epp_download_data(31 downto 16);
ram_address_int <= to_integer(unsigned(epp_download_data(31 downto 16)));
download_finished <= '1' when download_counter >= 1024 else '0';

flash_write_finished <= '1' when flash_write_counter >=1024 else '0';

flash_download_finished <= '1' when flash_download_counter >= 1024 else '0';

led <= display_state;

--led <= std_logic_vector(to_unsigned(music_counter,8));

update_ram_download_counter: process(clk)
begin
	if rising_edge(clk) then
		if rst = '1' or download_counter = 1024 then
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
		if flash_write_counter = 1024 or rst = '1' then
			flash_write_counter <= 0;
		else
			if write_complete = '1' then
				flash_write_counter <= flash_write_counter + 1;
			end if;
		
		end if;
	end if;

end process;

debug_flash_write_counter <= std_logic_vector(to_unsigned(flash_write_counter,16));

update_flash_download_counter: process(clk)
begin
	if rising_edge(clk) then
		if flash_download_counter = 1024 or rst = '1' then
			flash_download_counter <= 0;
		else
			if read_complete = '1' then
				flash_download_counter <= flash_download_counter + 1;
			end if;
		end if;
	
	end if;

end process;




ram_management: block_ram port map(clk,bram_address,b_we,bram_data_in,bram_data_out);

--display_ram: seven_seg_display port map(clk,read_data(3 downto 0),read_data(7 downto 4),read_data(11 downto 8),read_data(15 downto 12),an,hex);
display_ram: seven_seg_display port map(clk,bram_data_out(3 downto 0),bram_data_out(7 downto 4),bram_data_out(11 downto 8),bram_data_out(15 downto 12),an,hex);

--display_counter: large_number_7seg port map(clk,debug_flash_write_counter,hex,an);

--display_bpm: large_number_7seg port map(clk,lcd_bpm_display,hex,an);

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
				
					if (select_song = "0000") then
						delete_address <= block0;
					elsif(select_song = "0001") then
						delete_address <= block1;
					elsif(select_song = "0010") then
						delete_address <= block2;
					elsif (select_song = "0011") then
						delete_address <= block3;
					elsif (select_song = "0100") then
						delete_address <= block4;
					elsif (select_song = "0101") then
						delete_address <= block5;
					elsif (select_song = "0110") then
						delete_address <= block6;
					elsif (select_song = "0111") then
						delete_address <= block7;
					elsif (select_song = "1000") then
						delete_address <= block8;
					elsif (select_song = "1001") then
						delete_address <= block9;
					elsif(select_song = "1010") then
						delete_address <= block10;
					elsif (select_song = "1011") then
						delete_address <= block11;
					elsif (select_song = "1100") then
						delete_address <= block12;
					elsif (select_song = "1101") then
						delete_address <= block13;
					elsif (select_song = "1110") then
						delete_address <= block14;
					elsif (select_song = "1111") then
						delete_address <= block15;
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
						--current_state <= debug_download_state;
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
							current_state <= read_block4_state;
						end if;
					else
						current_state <= read_block3_state;
					end if;
					
				when read_block4_state =>
				
					display_state <= "00111100";
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block4;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block4;
							flash_base_address_int <= block4_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block5_state;
						end if;
					else
						current_state <= read_block4_state;
					end if;
				
				
				when read_block5_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block5;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block5;
							flash_base_address_int <= block5_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block6_state;
						end if;
					else
						current_state <= read_block5_state;
					end if;
				
				
				
				when read_block6_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block6;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block6;
							flash_base_address_int <= block6_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block7_state;
						end if;
					else
						current_state <= read_block6_state;
					end if;
					
				when read_block7_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block7;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block7;
							flash_base_address_int <= block7_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block8_state;
						end if;
					else
						current_state <= read_block7_state;
					end if;
					
				when read_block8_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block8;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block8;
							flash_base_address_int <= block8_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block9_state;
						end if;
					else
						current_state <= read_block8_state;
					end if;
				
				
				when read_block9_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block9;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block9;
							flash_base_address_int <= block9_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block10_state;
						end if;
					else
						current_state <= read_block9_state;
					end if;
					
					
				when read_block10_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block10;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block10;
							flash_base_address_int <= block10_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block11_state;
						end if;
					else
						current_state <= read_block10_state;
					end if;
					
					
				when read_block11_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block11;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block11;
							flash_base_address_int <= block11_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block12_state;
						end if;
					else
						current_state <= read_block11_state;
					end if;
					
				when read_block12_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block12;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block12;
							flash_base_address_int <= block12_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block13_state;
						end if;
					else
						current_state <= read_block12_state;
					end if;
					
					
				when read_block13_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block13;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block13;
							flash_base_address_int <= block13_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block14_state;
						end if;
					else
						current_state <= read_block13_state;
					end if;
					
				when read_block14_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block14;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block14;
							flash_base_address_int <= block14_int;
							current_state <= load_flash_addr_state;
						else
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							current_state <= read_block15_state;
						end if;
					else
						current_state <= read_block14_state;
					end if;
					
				when read_block15_state =>
					f_rest <= '0';
					f_write <= '0';
					f_delete <= '0';
					f_read <= '1';
					read_address <= block15;
					if (read_complete = '1') then
						if (read_data = "1111111111111111") then
							f_rest <= '1';
							f_write <= '0';
							f_read <= '0';
							f_delete <= '0';
							flash_base_address <= block15;
							flash_base_address_int <= block15_int;
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
						current_state <= read_block14_state;
					end if;
					
					
				when load_flash_addr_state =>
				
					
					if flash_base_address_int = 0 then
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
					display_state <= "11011011";
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
						--current_state <= debug_write_flash_state;
					end if;
					
				when debug_write_flash_state =>
				
					if flash_base_address_int = 0 then
						display_state <= "11111111";
					else
						display_state <= "11111000";
					end if;
					
					
					
					f_rest <= '0';
					f_write <= '0';
					f_read <= '1';
					f_delete <= '0';
					read_address <= "00000000000000" & sw(7 downto 0);
					
					
				
				when debug_download_state =>
					if flash_base_address = block0 then
						display_state <= "00010000";
					else
						display_state <= "00000111";
					end if;
					
					b_we <= '0';
					bram_address <= to_integer(unsigned(sw));
					
					
				when load_play_addr_state =>
				
					if (select_song = "0000") then
						flash_base_address_int <= 0;
					
					elsif (select_song = "0001") then
						flash_base_address_int <= 65536;
					elsif (select_song = "0010") then
						flash_base_address_int <= 131072;
					elsif (select_song = "0011") then
						flash_base_address_int <= 196608;
					elsif (select_song = "0100") then
						flash_base_address_int <= block4_int;
					elsif (select_song = "0101") then
						flash_base_address_int <= block5_int;
					elsif (select_song = "0110") then
						flash_base_address_int <= block6_int;
					elsif select_song = "0111" then
						flash_base_address_int <= block7_int;
					elsif select_song = "1000" then
						flash_base_address_int <= block8_int;
					elsif select_song = "1001" then
						flash_base_address_int <= block9_int;
					elsif select_song = "1010" then
						flash_base_address_int <= block10_int;
					elsif select_song = "1011" then
						flash_base_address_int <= block11_int;
					elsif select_song = "1100" then
						flash_base_address_int <= block12_int;
					elsif select_song = "1101" then
						flash_base_address_int <= block13_int;
					elsif select_song = "1110" then
						flash_base_address_int <= block14_int;
					elsif select_song = "1111" then
						flash_base_address_int <= block15_int;
					else
						flash_base_address_int <= 0;
					end if;
					
					current_state <= download_flash_state;
					--current_state <= debug_write_flash_state;
				
				
				when download_flash_state=>
					display_state <= "01010101";
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
						current_state <= read_music_metadata_stateA;
					
					end if;
					
					
					
					
				
				when debug_download_flash_state =>
					display_state <= "11111111";
					b_we <= '0';
					--bram_address <= to_integer(unsigned(sw));
					
					
				when read_music_metadata_stateA =>
					bram_address <= 0;
					current_state <= read_music_metadata_stateB;
					
				
				when read_music_metadata_stateB =>
				
					--current_state <= read_music_metadata_stateC;
					current_state <= debug_delay_stateA;
					
				when debug_delay_stateA =>
					current_state <= read_music_metadata_stateC;
					
					
				when read_music_metadata_stateC =>
				
					display_state <= bram_data_out(7 downto 0);
					
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
					
					
					--default_bpm <= base_bpm + to_integer(unsigned(bram_data_out(7 downto 0)));
					bpm_input <= to_integer(unsigned(bram_data_out(7 downto 0)));
					default_bpm_input <= "00000000" & bram_data_out(7 downto 0);
					
					current_state <= read_music_metadata_stateD;
					
					
					
				
				
				when read_music_metadata_stateD =>
					current_state <= read_music_metadata_stateE;
					
				when read_music_metadata_stateE =>
					
					default_bpm <= twelfth_cc_output;
					--current_state <= play_music_state;
					--current_state <= debug_download_state;
					current_state <= debug_music_stateA;
				
				
				when debug_music_stateA =>
					bram_address <= 1;
					current_state <= debug_music_stateB;
				
				when debug_music_stateB =>
					current_state <= debug_music_stateC;
				
				
				when debug_music_stateC =>
					current_state <= play_music_state;
					--current_state <= debug_download_state;
				
						
				when debug_play_first_note =>
				
					if(bpm_mode = '0') then
						twelfth_cc <= twelfth_cc_output;   --twelfth_cc_output is the defalult value now
						lcd_bpm_display <= default_bpm_input;
					elsif(bpm_mode = '1') then
						twelfth_cc <= to_integer(unsigned(dynamic_bpm));
						lcd_bpm_display <= us_bpm_display_sig;
					end if;
					
					display_state <= std_logic_vector(to_unsigned(music_counter,8));
					is_slurred <= slurred_sig;
					is_staccato <= staccato_sig;
					is_square <= '0';
					enable_music_player <= '1';
					--bram_address <= music_counter + 1; --ignore the first word now
					music_length <= unsigned(bram_data_out(15 downto 8));
					if music_counter >= 1 then
						current_state <= play_music_state;
					else
						current_state <= debug_play_first_note;
					end if;
					
				
				when play_music_state=>
				
					
					if(bpm_mode = '0') then
						twelfth_cc <= twelfth_cc_output;   --twelfth_cc_output is the defalult value now
						lcd_bpm_display <= default_bpm_input;
					elsif(bpm_mode = '1') then
						twelfth_cc <= to_integer(unsigned(dynamic_bpm));
						lcd_bpm_display <= us_bpm_display_sig;
					end if;
					
					display_state <= std_logic_vector(to_unsigned(music_counter,8));
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

