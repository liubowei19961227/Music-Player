----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:57:49 10/01/2017 
-- Design Name: 
-- Module Name:    EPP_interface - Behavioral 
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

entity EPP_interface is
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
end EPP_interface;

architecture Behavioral of EPP_interface is

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


--signal for dpimref
signal EppWaitSig: std_logic;
signal data_aval: std_logic;
signal epp_data_input: std_logic_vector(7 downto 0);


signal lower_data: std_logic_vector(7 downto 0);
signal higher_data: std_logic_vector(7 downto 0);
signal ram_address_counter: std_logic_vector(15 downto 0) := (others => '0');
signal ram_address: std_logic_vector(15 downto 0);
signal round_counter: integer range 0 to 2 := 0;
signal rst_round_counter: std_logic;

signal debug_counter: std_logic_vector(7 downto 0);

begin

--led <= debug_counter;

EPP: dpimref port map(clk, PDB, EppASTB, EppDSTB, EppWRITE, EppWaitSig, data_aval,epp_data_input);
EppWAIT <= EppWaitSig;


rst_round_counter <= '1' when round_counter = 2;

ram_data <= ram_address & higher_data & lower_data;

--debug_counter <= higher_data;

process(clk)
begin
	if rising_edge(clk) then
		if data_aval = '1' then
			debug_counter <= std_logic_vector(unsigned(debug_counter) + 1);
		end if;
	end if;

end process;


counting_round: process(clk)
begin
	if rising_edge(clk) then
		if round_counter = 2 or rst = '1' then
			round_counter <= 0;
		elsif data_aval = '1' then
			round_counter <= round_counter + 1;
		end if;
	end if;
end process;

increment_ram_address: process(clk)
begin
	if rising_edge(clk) then
		if rst = '1' or to_integer(unsigned(ram_address_counter)) = 4 then
			ram_address_counter <= (others => '0');
			--debug_counter <= "00000000";
		elsif round_counter = 2 then
			ram_address_counter <= std_logic_vector(unsigned(ram_address_counter) + 1);
			--debug_counter <= std_logic_vector(unsigned(debug_counter) + 1);
		end if;
	
	end if;
end process;


manage_output: process(clk)
begin
	if rising_edge(clk) then
		
		
		if data_aval = '1' then
			if(round_counter = 0) then
				lower_data <= epp_data_input;
			elsif round_counter = 1 then
				higher_data <= epp_data_input;
				ram_address <= ram_address_counter;
			end if;
			
		end if;
		
	end if;
end process;




if_data_ready:process(clk)
begin
	if rising_edge(clk) then
		if round_counter = 2 then
			data_ready <= '1';
		else
			data_ready <= '0';
		end if;
	
	
	end if;

end process;

end Behavioral;

