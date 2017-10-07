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
		--s: out std_logic;
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
signal rst,download_btn: std_logic;

--state machine
type state_type is (rest_state, download_state,debug_download_state);
signal current_state: state_type;
signal download_finished: std_logic;
signal download_counter : integer;






--debug
signal display_state: std_logic_vector(7 downto 0);






begin

----btn
rst <= btn(0);
download_btn <= btn(1);




download_from_epp: epp_interface port map(clk,rst,PDB,EppASTB, EppDSTB,EppWRITE,EppWAIT, epp_data_valid,epp_download_data);
ram_data <= epp_download_data(15 downto 0);
ram_address <= epp_download_data(31 downto 16);
ram_address_int <= to_integer(unsigned(epp_download_data(31 downto 16)));
download_finished <= '1' when download_counter >= 4 else '0';

led <= display_state;

update_download_counter: process(clk)
begin
	if rising_edge(clk) then
		if rst = '1' or download_counter = 4 then
			download_counter <= 0;
		else
			if epp_data_valid = '1' then
				download_counter <= download_counter + 1;
			end if;
		end if;
	
	end if;

end process;






ram_management: block_ram port map(clk,bram_address,b_we,bram_data_in,bram_data_out);

display_ram: seven_seg_display port map(clk,bram_data_out(3 downto 0),bram_data_out(7 downto 4),bram_data_out(11 downto 8),bram_data_out(15 downto 12),an,hex);




FSM: process(clk)
begin
	if rising_edge(clk) then
		if rst = '1' then
		
			current_state <= rest_state;
		
		else
			case current_state is
				
				when rest_state =>
					display_state<= "00000000";
					if download_btn = '1' then
						current_state <= download_state;
					end if;
					
					
					
				
				
				when download_state=>
					display_state<= "00000001";
					b_we <= epp_data_valid;
					bram_data_in <= ram_data;
					bram_address <= ram_address_int;
					
					if(download_finished = '1') then
						current_state <= debug_download_state;
					end if;
				
				
				when debug_download_state =>
					display_state <= "00000010";
					b_we <= '0';
					bram_address <= to_integer(unsigned(sw));
					
					
		
			end case;
	
		end if;
	
	end if;

end process;





end Behavioral;

