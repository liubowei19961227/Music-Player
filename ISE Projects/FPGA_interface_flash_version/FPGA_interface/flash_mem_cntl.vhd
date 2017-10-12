----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:37 09/15/2017 
-- Design Name: 
-- Module Name:    flash_mem_cntl - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flash_mem_cntl is
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


end flash_mem_cntl;

architecture Behavioral of flash_mem_cntl is


component flash_memory is
port(clk: in std_logic;
	  --rst: in std_logic;
	  rest: in std_logic;
	  direction: in std_logic; --1 means read and 0 means write
	  write_data: in std_logic_vector(15 downto 0);
	  write_address: in std_logic_vector(21 downto 0);
	  read_address: in std_logic_vector(21 downto 0);
	  data:inout std_logic_vector(15 downto 0);
	  addr:out std_logic_vector(22 downto 1);
	  CE:	 out std_logic;
	  RP:	 out std_logic;
	  OE:  out std_logic;
	  WE:	 out std_logic;
	  vpen: out std_logic;
	  read_data: out std_logic_vector(15 downto 0);
	  read_complete: out std_logic;
	  write_complete: out std_logic
	  --read_st: in std_logic;
	  --st_complete: out std_logic
	  --led: out std_logic_vector(7 downto 0)
);


end component;

--signal for basic flash component
signal flash_write_data,flash_read_data: std_logic_vector(15 downto 0);
signal flash_read_address, flash_write_address: std_logic_vector(21 downto 0); 
signal flash_rest: std_logic := '1';
signal flash_direction: std_logic;
signal flash_read_complete: std_logic;
signal flash_write_complete: std_logic;
signal flash_read_st, flash_st_complete: std_logic;



type state_type is (rst_state,write_wrt_command_state, write_wrt_data_state, write_polling_state,write_complete_state, 
										read_command_state, read_state, read_complete_state,
										delete_stateA, delete_stateB, delete_polling_state, delete_complete_state,
										wait_state);
signal current_state: state_type := rst_state;

signal command_address: std_logic_vector(21 downto 0) := "0000000000000011111111";

--signal cntl_debug: std_logic_vector(7 downto 0);
--signal flash_debug: std_logic_vector(15 downto 0);

signal delete_address_sig: std_logic_vector(21 downto 0):= "0000000000000000000010";
signal debug_counter: integer := 0;

begin

command_address <= "0000000000000011111111";

delete_address_sig <= cntl_delete_address;


--map to the flash component 

basic_flash_opertations: flash_memory port map(clk,flash_rest,flash_direction,flash_write_data, flash_write_address,
															  flash_read_address,data,addr,CE, RP, OE, WE,vpen,
															  flash_read_data,flash_read_complete,flash_write_complete);

															  
Flash_cntl_fsm: process(clk)
begin
	if(rising_edge(clk)) then
		
		if (rst = '1') then
			current_state <= rst_state;
		
		else
			
			case current_state is
				
				when rst_state =>
					--cntl_debug <= "11111111";
				
					flash_rest <= '1';
					cntl_read_complete <= '0';
					cntl_write_complete <= '0';
					cntl_delete_complete <= '0';
					
					if (cntl_rest = '1') then
						current_state <= rst_state;
					else
						--current_state <= write_wrt_command_state;
						if (cntl_write = '1') then
							flash_rest <= '1';
							current_state <= write_wrt_command_state;
						elsif (cntl_read = '1') then
							flash_rest <= '1';
							current_state <= read_command_state;
						elsif(cntl_delete = '1') then
							current_state <= delete_stateA;
						end if;
						
					end if;
					
				when read_command_state =>
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_data <= X"00ff";
					flash_write_address <= command_address;
					if flash_write_complete = '1' then
						flash_rest <= '1';
						current_state <= read_state;
					else
						current_state <= read_command_state;
					end if;
					
				when read_state =>
					--cntl_debug <= "00000101";
					flash_rest <= '0';
					flash_direction <= '1';
					flash_read_address <= cntl_read_address;
					
					if(flash_read_complete = '1') then
						cntl_read_data <= flash_read_data;
						--cntl_debug <= flash_read_data;
						cntl_read_complete <= '1';
						flash_rest <= '1';
						current_state <= read_complete_state;
					else
						current_state <= read_state;
					end if;
				
				when read_complete_state =>
					cntl_read_complete <= '0';
					current_state <= wait_state;
					
					
					
				
				when write_wrt_command_state =>
					--cntl_debug <= "00000000";
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_data <= X"0040";
					flash_write_address <= command_address;
					if(flash_write_complete = '1') then
						flash_rest <= '1';
						current_state <= write_wrt_data_state;
					else
						current_state <= write_wrt_command_state;
					end if;
					
				when write_wrt_data_state =>
					flash_rest <= '0';
					flash_direction <= '0';
					--cntl_debug <= "00000001";
					flash_write_data <= cntl_write_data;
					flash_write_address <= cntl_write_address;
					if (flash_write_complete = '1') then
						flash_rest <= '1';
						current_state <= write_polling_state;
					else
						current_state <= write_wrt_data_state;
					end if;
					
					
				when write_polling_state =>
					--cntl_debug <= "00000011";
					if(st = '1') then
						flash_rest <= '1';
						cntl_write_complete <= '1';
						current_state <= write_complete_state;
					else
						current_state <= write_polling_state;
					end if;
					
					
				when write_complete_state =>
					--cntl_debug <= "00000100";
					cntl_write_complete <= '0';
					current_state <= wait_state;
					
				
				when delete_stateA =>
					flash_write_address <= delete_address_sig;
					flash_write_data <= X"0020";
					flash_rest <= '0';
					flash_direction <= '0';
					if flash_write_complete = '1' then
						current_state <= delete_stateB;
						flash_rest <= '1';
					else
						current_state <= delete_stateA;
					end if;
					
				
				when delete_stateB =>
					flash_write_address <= delete_address_sig;
					flash_write_data <= X"00D0";
					flash_rest <= '0';
					flash_direction <= '0';
					if flash_write_complete = '1' then
						current_state <= delete_polling_state;
						flash_rest <= '1';
					else
						current_state <= delete_stateB;
					end if;
					
					
				
				when delete_polling_state =>
					if(st = '1') then
						current_state <= delete_complete_state;
						cntl_delete_complete <= '1';
						flash_rest <= '1';
					else
						current_state <= delete_polling_state;
					end if;
				
				when delete_complete_state =>
					cntl_delete_complete <= '0';
					current_state <= wait_state;
					
				when wait_state =>
					flash_rest <= '1';
					if cntl_rest = '1' then
						current_state <= wait_state;
					else
						current_state <= rst_state;
					end if;
			
			
			end case;
			
		end if;
	
	
	end if;

end process;

end Behavioral;

