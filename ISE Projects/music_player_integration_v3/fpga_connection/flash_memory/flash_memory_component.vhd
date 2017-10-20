----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:52 09/15/2017 
-- Design Name: 
-- Module Name:    flash_memory_component - Behavioral 
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

entity flash_memory_component is
port(clk: in std_logic;
	  sw: in std_logic_vector(7 downto 0);
	  btn: in std_logic_vector(2 downto 1);
	  rst: in std_logic;
	  data: inout std_logic_vector(15 downto 0);
	  addr: out std_logic_vector(22 downto 1);
	  CE: out std_logic;
	  RP: out std_logic;
	  OE: out std_logic;
	  WE: out std_logic;
	  ST: in std_logic;
	  VPEN: out std_logic;
	  hex: out std_logic_vector(6 downto 0);
	  an: out std_logic_vector(3 downto 0);
	  led: out std_logic_vector(7 downto 0));
end flash_memory_component;

architecture Behavioral of flash_memory_component is


component large_number_7seg is
port(clk: in std_logic;
	  number: in std_logic_vector(15 downto 0);
	  hex: out std_logic_vector(6 downto 0);
	  an: out std_logic_vector(3 downto 0)
		
);
end component;


component flash_mem_cntl is 
port(clk: in std_logic;
	  rst: in std_logic;
	  cntl_rest: in std_logic;
	  cntl_write: in std_logic;
	  cntl_read: in std_logic;
	  cntl_delete: in std_logic;
	  cntl_write_data: in std_logic_vector(15 downto 0);
	  cntl_write_address: in std_logic_vector(22 downto 1);
	  cntl_read_address: in std_logic_vector(22 downto 1);
	  cntl_delete_address: in std_logic_vector(22 downto 1);
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
	  cntl_delete_complete: out std_logic;
	  cntl_debug: out std_logic_vector(15 downto 0)
);
end component;

type state_type is (rst_state,write_state,read_state,finish_state,delete_state);
signal current_state: state_type := rst_state;
signal rest: std_logic := '1';
signal f_read, f_write, f_delete: std_logic;
signal write_data: std_logic_vector(15 downto 0);
signal write_address: std_logic_vector(21 downto 0);
signal read_address: std_logic_vector(21 downto 0);
signal read_data: std_logic_vector(15 downto 0);
signal read_complete_sig, write_complete_sig,delete_complete_sig: std_logic;

signal write_data_sig: std_logic_vector(15 downto 0);
signal write_address_sig: std_logic_vector(21 downto 0);
signal read_address_sig: std_logic_vector(21 downto 0);
signal read_data_sig: std_logic_vector(15 downto 0);
signal delete_address: std_logic_vector(21 downto 0);

signal debug: std_logic_vector(15 downto 0);
signal flash_debug: std_logic_vector(15 downto 0);


signal finish_write: std_logic := '0';
signal finish_read: std_logic := '0';
signal write_counter: integer range 0 to 255 := 0;


type ram_type is array(0 to 255) of std_logic_vector(15 downto 0);

signal ramA: ram_type := ("0000000000000000","0000000000000001","0000000000000010","0000000000000011","0000000000000100","0000000000000101","0000000000000110","0000000000000111","0000000000001000",others=>(others => '0'));

signal ramB: ram_type := (others => (others => '1'));


signal read_counter: integer range 0 to 255 := 0;

signal ramB_addr: integer range 0 to 255 := 0;

signal display_content: std_logic_vector(15 downto 0);
signal display_addr: integer;

signal debug_state: std_logic_vector(7 downto 0);




begin


write_address_sig <= "0000000000000000000111";
write_data_sig <= "0000000000000111";
read_address_sig <="0000000000000000000111";

delete_address <= (others => '0');

led <= debug_state(7 downto 0);
display: large_number_7seg port map(clk, display_content,hex,an);

flash_mem_debug: flash_mem_cntl port map(clk, rst, rest, f_write, f_read, f_delete, write_data, write_address, read_address,delete_address, data, addr,
														  CE, RP, OE, WE, ST, VPEN, read_data_sig, read_complete_sig, write_complete_sig,delete_complete_sig,debug);
--
finish_write <= '1' when write_counter >= 255 else '0';

finish_read <= '1' when ramB_addr >= 255 else '0';

write_counter_proc: process(clk)
begin
	if (rising_edge(clk)) then
		if rst = '1' then
			write_counter <= 0;
			
		elsif write_complete_sig = '1' then
			if write_counter < 255 then
				write_counter <= write_counter + 1;
			end if;
		end if;
	end if;

end process;




read_counter_proc: process(clk)
begin
	if (rising_edge(clk)) then
		if rst = '1' then
			ramB_addr <= 0;
		elsif read_complete_sig = '1' then
			if ramB_addr < 255 then
				ramB_addr <= ramB_addr + 1;
			end if;
		end if;
	end if;

end process;

write_to_ramB: process(clk)
begin
	if rising_edge(clk) then
		if read_complete_sig = '1' then
			ramB(ramB_addr) <= read_data_sig;
		end if;
	end if;

end process;

display_content <= ramB(display_addr);
display_addr <= to_integer(unsigned(sw));


fsm: process(clk)
begin
	if (rising_edge(clk)) then
	
		if rst = '1' then
			current_state <= rst_state;
		else
			case current_state is
				when rst_state =>
					rest <= '1';
					
					if (btn(1) = '1') then
						current_state <= delete_state;
					elsif btn(2) = '1' then
						current_state <= write_state;
					else
						current_state <= rst_state;
					end if;
				
				
				when delete_state =>
					rest <= '0';
					f_write <= '0';
					f_read <= '0';
					f_delete <= '1';
					delete_address <= (others => '0');
					
					if delete_complete_sig = '1' then
						rest <= '1';
						f_delete <= '0';
						current_state <= rst_state;
					end if;
					
				when write_state =>
					debug_state <= "00000001";
					rest <= '0';
					f_write <= '1';
					write_data <= ramA(write_counter);
					write_address <= std_logic_vector(to_unsigned(write_counter,22));
					if finish_write = '1' then
						rest <= '1';
						f_write <= '0';
						current_state <= read_state;
					end if;
					
					
				when read_state=>
					debug_state <= "00000010";
					rest <= '0';
					f_read <= '1';
					read_address <= std_logic_vector(to_unsigned(ramB_addr,22));
					
					if finish_read = '1' then
						rest <= '1';
						f_read <= '0';
						current_state <= finish_state;
					end if;
					
				
				when finish_state =>
					debug_state <= "11111111";
			
				
				
			
			
		
		end case;
	end if;
	
	end if;

end process;


end Behavioral;

