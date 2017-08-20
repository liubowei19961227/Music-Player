----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:28:19 08/13/2017 
-- Design Name: 
-- Module Name:    fpga_download - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fpga_download is
port(
		clk: in std_logic;
		PDB: inout std_logic_vector(7 downto 0);
		EppASTB: in std_logic;
		EppDSTB: in std_logic;
		EppWRITE: in std_logic;
		EppWAIT: out std_logic;
		data_ready: out std_logic;
		ram_data: out std_logic_vector(15 downto 0);
		LED: out std_logic_vector(7 downto 0)
);
end fpga_download;

architecture Behavioral of fpga_download is

component dpimref
 Port (
		  clk 	: in std_logic;
        DB		: inout std_logic_vector(7 downto 0);
        EppASTB 	: in std_logic;
        EppDSTB 	: in std_logic;
        EppWRITE 	: in std_logic;
        EppWAIT 	: out std_logic;
		  ready: out std_logic;
		  data_output: out std_logic_vector(7 downto 0)
	); 
end component;


component eight_bit_register
port(clk: in std_logic;
	  rst: in std_logic;
	  enable: in std_logic;
	  input: in std_logic_vector(7 downto 0);
	  output: out std_logic_vector(7 downto 0)
);
end component;


signal EppWaitSig: std_logic;
signal data_aval: std_logic;
signal addr_aval: std_logic;
signal reset: std_logic;
signal epp_data_input: std_logic_vector(7 downto 0);
signal data_output: std_logic_vector(7 downto 0);
signal addr_input: std_logic_vector(7 downto 0);
signal addr_output: std_logic_vector(7 downto 0);
signal ram_addr_counter: std_logic_vector(7 downto 0) := (others => '0');
signal enable_ram_counter: std_logic;
signal data_ready_sig: std_logic;
signal reset_ready: std_logic;
signal reset_counter: std_logic;



begin

--reset logic

EppWAIT <= EppWaitSig;

reset_counter <= '0'; --ignore reset ram counter

addr_aval <= data_aval;

enable_ram_counter <= data_aval;

reset_ready <= not EppWaitSig;    

ram_data <= addr_output & data_output;

data_ready <= data_ready_sig;

reset <= '1' when EppWaitSig = '1' and data_ready_sig = '0' else '0';

LED <= ram_addr_counter;

addr_input <= ram_addr_counter;

ram_addr_counter_proc: process(clk,reset_counter) is
begin
	if(rising_edge(clk)) then
		if reset_counter = '1' then
			ram_addr_counter <= (others => '0');
		else
			if enable_ram_counter = '1' then
				ram_addr_counter <= std_logic_vector(unsigned(ram_addr_counter) + 1);
			end if;
		
		end if;
	end if;

end process;


EPP: dpimref port map(clk, PDB, EppASTB, EppDSTB, EppWRITE, EppWaitSig, data_aval,epp_data_input);


Data_register:eight_bit_register port map(clk,reset,data_aval, epp_data_input, data_output);


Address_register: eight_bit_register port map(clk, reset, addr_aval, addr_input, addr_output);

ready_reg: process(clk,reset_ready)
begin
	if (rising_edge(clk)) then
		if (reset_ready = '1') then
			data_ready_sig <= '0';
		elsif (data_aval = '1') then
			data_ready_sig <= '1';
		end if;
	end if;

end process;

end Behavioral;

