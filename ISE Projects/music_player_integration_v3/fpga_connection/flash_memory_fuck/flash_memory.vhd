----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:05:36 09/08/2017 
-- Design Name: 
-- Module Name:    flash_memory - Behavioral 
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

entity flash_memory is
port(clk: in std_logic;
	  --rst: in std_logic;
	  --rest: in std_logic;
	  --direction: in std_logic; --1 means read and 0 means write
	  --write_data: in std_logic_vector(15 downto 0);
	  --write_address: in std_logic_vector(21 downto 0);
	  --read_address: in std_logic_vector(21 downto 0);
	  data:inout std_logic_vector(15 downto 0);
	  addr:out std_logic_vector(22 downto 1);
	  CE:	 out std_logic;
	  RP:	 out std_logic;
	  OE:  out std_logic;
	  WE:	 out std_logic;
	  vpen: out std_logic;
	  read_data: out std_logic_vector(15 downto 0);
	  read_complete: out std_logic;
	  write_complete: out std_logic;
	  led: out std_logic_vector(7 downto 0)
);


end flash_memory;

architecture Behavioral of flash_memory is


type state_type is (rst_state,write_rst_state,write_state,write_delay_state,write_delay_extend_state, write_complete_state,
										read_rst_state,read_state,read_delay_state,read_delay_state_extend,read_complete_state, wait_state);
										
										
signal current_state: state_type := rst_state;


signal delay_counter: integer;
signal delay_extend_counter: integer;

--signal d_out: std_logic_vector(15 downto 0);

--signal id_command: std_logic_vector(15 downto 0) := X"0090";
--signal write_command: std_logic_vector(15 downto 0):= X"0040";
--signal read_status_command: std_logic_vector(15 downto 0) := X"0070";


--signal state_debug: std_logic_vector(3 downto 0);

signal write_data_sig: std_logic_vector(15 downto 0);
signal read_data_sig: std_logic_vector(15 downto 0);
signal write_address_sig: std_logic_vector(21 downto 0) := "0000000000000000000000";
signal read_address_sig: std_logic_vector(21 downto 0) := "0000000000000000000000";

signal debug: std_logic_vector(7 downto 0);

begin

--id_command <= X"0090";

--write_data <= id_command;
write_address_sig <= "0000000000000000000001";
read_address_sig <= "0000000000000000000001";
write_data_sig <= X"0090";



led <= read_data_sig(7 downto 0);


read_data <= read_data_sig;

rp <= '1';
vpen <= '1';
ce <= '0';

flash_FSM: process(clk)
begin
	if rising_edge(clk) then
		
		--if rst = '1' then
			
			--current_state <= write_rst_state;
			
		--else
			case current_state is
				
				when rst_state =>
					we <= '1';
					oe <= '1';
					read_complete <= '0';
					write_complete <= '0';
					data <= (others => 'Z');
					current_state <= write_state;
					
					
					
			
				when write_rst_state =>
					oe <= '1';
					we <= '1';
					current_state <= write_state;
					
					
				when write_state =>
					we <= '0';
					delay_counter <= 0;
					delay_extend_counter <= 0;
					addr <= write_address_sig;
					data <= (others => 'Z');
					current_state <= write_delay_state;
					
				
				when write_delay_state =>
					if(delay_counter = 30) then
						we <= '1';
						current_state <= write_delay_extend_state;
					else
						delay_counter <= delay_counter + 1;
						current_state <= write_delay_state;
						data <= write_data_sig;
					end if;
					
				when write_delay_extend_state =>
					if (delay_extend_counter = 15) then
						we <= '0';
						write_complete <= '1';
						current_state <= write_complete_state;
					else
						we <= '1';
						--st <= '0';
						delay_extend_counter <= delay_extend_counter + 1;
					end if;
				
				when write_complete_state =>
					write_complete <= '0';
					current_state <= read_state;
					data <= (others => 'Z');
					
				
				when read_rst_state =>
					we <= '1';
					oe <= '1';
					data <= (others => 'Z'); --?
					current_state <= read_state;
				
				when read_state =>
					oe <= '0';
					delay_counter <= 0;
					delay_extend_counter <= 0;
					data <= (others => 'Z');
					addr <= read_address_sig;
					current_state <= read_delay_state;
					
				
				when read_delay_state =>
					data <= (others => 'Z');
					if(delay_counter = 30) then
						oe <= '1';
						current_state <= read_complete_state;
						read_data_sig <= data;
					else
						delay_counter <= delay_counter + 1;
					end if;
				
				
				when read_delay_state_extend =>
					data <= (others => 'Z');
					if (delay_extend_counter = 10) then
						--current_state <= read_complete_state;
						read_complete <= '1';
					else
						delay_extend_counter <= delay_extend_counter + 1;
					end if;
				
				when read_complete_state =>
				   data <= (others => 'Z');
					read_complete <= '0';
					--current_state <= rst_state;
					debug <= "11111111";
				
				when wait_state =>
					current_state <= wait_state;
					
			
			end case;
		
		--end if;
	
	
	
	end if;

end process;


end Behavioral;

