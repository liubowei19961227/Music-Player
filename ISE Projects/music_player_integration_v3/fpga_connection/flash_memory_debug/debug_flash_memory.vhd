----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:58:20 09/16/2017 
-- Design Name: 
-- Module Name:    debug_flash_memory - Behavioral 
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

entity debug_flash_memory is
port(clk: in std_logic;
	  rst: in std_logic;
	  data: inout std_logic_vector(15 downto 0);
	  addr: out std_logic_vector(22 downto 1);
	  CE: out std_logic;
	  RP: out std_logic;
	  OE: out std_logic;
	  WE: out std_logic;
	  st: in std_logic;
	  VPEN: out std_logic;
	  led: out std_logic_vector(7 downto 0)
);


end debug_flash_memory;

architecture Behavioral of debug_flash_memory is

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
	  --led: out std_logic_vector(7 downto 0)
);
end component;



signal flash_write_data,flash_read_data: std_logic_vector(15 downto 0);
signal flash_read_address, flash_write_address: std_logic_vector(21 downto 0); 
signal flash_rest: std_logic := '1';
signal flash_direction: std_logic;
signal flash_read_complete: std_logic;
signal flash_write_complete: std_logic;

type state_type is (rst_state,basic_test_write_state, basic_test_read_state,debug_complete_state, test_write_stateA, test_write_stateB, 
write_st_state, write_polling_state, read_command_stateA, read_command_stateB,
delete_write_commandA, delete_write_commandB, delete_polling_state, delete_complete_state,
test_write_state_complete,test_read_stateA,test_read_stateA_complete, test_read_stateB, test_read_stateB_complete);

signal current_state: state_type := rst_state;


signal write_command: std_logic_vector(15 downto 0):= X"0040";
signal read_st_reg_command: std_logic_vector(15 downto 0) := X"0070";
signal command_address: std_logic_vector(21 downto 0) := "0000000000000000000001";
signal test_address: std_logic_vector(21 downto 0) := "0000000000000000001000";

signal read_data: std_logic_vector(15 downto 0);
signal sr: std_logic_vector(15 downto 0);


signal debug: std_logic_vector(7 downto 0);


begin


led <= read_data(7 downto 0);

write_command <= X"0040";
read_st_reg_command <= X"0070";
command_address <= "0000000000000000000001";


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
					flash_rest <= '1';
					--current_state <= basic_test_write_state;
					current_state <= test_write_stateA;
					
					
				when basic_test_write_state =>
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_address <= command_address;
					flash_write_data <= X"0090";
					if(flash_write_complete = '1') then
						flash_rest <= '1';
						current_state <= basic_test_read_state;
					end if;
					
				when basic_test_read_state =>
					flash_rest <= '0';
					flash_direction <= '1';
					flash_read_address <= command_address;
					if flash_read_complete = '1' then
						read_data <= flash_read_data;
						flash_rest <= '1';
						current_state <= rst_state;
					end if;
					
				when debug_complete_state =>
					
				
				when test_write_stateA =>
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_address <= command_address;
					flash_write_data <= X"0040";
					if (flash_write_complete = '1') then
						flash_rest <= '1';
						current_state <= test_write_stateB;
					else
						current_state <= test_write_stateA;
					end if;
				
				
					
				when test_write_stateB =>
				
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_address <= test_address;
					flash_write_data <= "0000000000001011";
					if (flash_write_complete = '1') then
						flash_rest <= '1';
						--current_state <= test_write_state_complete;
						current_state <= write_polling_state;
						--current_state <= write_st_state;
					else
						current_state <= test_write_stateB;
					end if;
					
				when write_st_state =>
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_address <= command_address;
					flash_write_data <= X"0070";
					if (flash_write_complete = '1') then
						flash_rest <= '1';
						current_state <= write_polling_state;
					end if;
					
				when write_polling_state =>
					--flash_direction <= '1';
					--flash_rest <= '0';
					if(st = '1') then
						current_state <= test_write_state_complete;
					else
						current_state <= write_polling_state;
					end if;
					
				
					
				
				when test_write_state_complete=>
					current_state <= read_command_stateA;
				
				
				when read_command_stateA =>
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_address <= command_address;
					flash_write_data <= X"00ff";
					if (flash_write_complete = '1') then
						flash_rest <= '1';
						current_state <= test_read_stateA;
					else
						current_state <= read_command_stateA;
					end if;
				
				
				when test_read_stateA=>
					flash_rest <= '0';
					flash_direction <= '1';
					flash_read_address <= test_address;
					if (flash_read_complete = '1') then
						read_data <= flash_read_data;
						flash_rest <= '1';
						current_state <= test_read_stateA_complete;
					else
						current_state <= test_read_stateA;
					end if;
				
					
				
				when test_read_stateA_complete=>
					current_state <= delete_write_commandA;
					
				when delete_write_commandA=>
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_address <= command_address;
					flash_write_data <= X"0020";
					if (flash_write_complete = '1') then
						flash_rest <= '1';
						current_state <= delete_write_commandB;
					else
						current_state <= delete_write_commandA;
					end if;
				
				when delete_write_commandB =>
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_address <= command_address;
					flash_write_data <= X"00d0";
					if (flash_write_complete = '1') then
						flash_rest <= '1';
						current_state <= delete_polling_state;
					else
						current_state <= delete_write_commandB;
					end if;
				
				
				when delete_polling_state =>
					if (st = '1') then
						current_state <= delete_complete_state;
					
					else
						current_state <= delete_complete_state;
					end if;
				
				when delete_complete_state =>
					current_state <= read_command_stateB;
					
				when read_command_stateB =>
					flash_rest <= '0';
					flash_direction <= '0';
					flash_write_address <= command_address;
					flash_write_data <= X"00ff";
					if (flash_write_complete = '1') then
						flash_rest <= '1';
						current_state <= test_read_stateB;
					else
						current_state <= read_command_stateB;
					end if;
				
				when test_read_stateB =>
					
					flash_rest <= '0';
					flash_direction <= '1';
					flash_read_address <= test_address;
					if (flash_read_complete = '1') then
						read_data <= flash_read_data;
						flash_rest <= '1';
						current_state <= test_read_stateB_complete;
					else
						current_state <= test_read_stateB;
					end if;
				
				when test_read_stateB_complete=>
					debug <= "11111111";
			
			
			end case;
			
		end if;
	
	
	end if;

end process;

end Behavioral;

