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
		hex: out std_logic_vector(6 downto 0)
);
end EPP_command;

architecture Behavioral of EPP_command is




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
		ram_data: out std_logic_vector(15 downto 0);
		LED: out std_logic_vector(7 downto 0)
);
end component;


component seven_seg_display
port(clk: in std_logic;
	  input1: in std_logic_vector(3 downto 0);
	  input2: in std_logic_vector(3 downto 0);
	  input3: in std_logic_vector(3 downto 0);
	  input4: in std_logic_vector(3 downto 0);
	  anode: out std_logic_vector(3 downto 0);
	  output: out std_logic_vector(6 downto 0));
end component;


signal data_valid: std_logic;
signal download_data: std_logic_vector(15 downto 0);
signal data_output: std_logic_vector(7 downto 0);
--signal anode: std_logic_vector(3 downto 0);
signal zero: std_logic_vector(3 downto 0) := "0000";

---declare ram here
type ram_type is array(0 to 255) of std_logic_vector(7 downto 0);
signal ram: ram_type := ("00000000", others => (others => '0'));
signal index: integer range 0 to 255;
signal data_input: std_logic_vector(7 downto 0); 
signal read_index: integer range 0 to 255;




begin

zero <= "0000";
index <= to_integer(unsigned(download_data(15 downto 8)));
read_index <= to_integer(unsigned(sw(7 downto 0)));
data_input <= download_data(7 downto 0);

download_from_epp: fpga_download port map(clk,rst,PDB,EppASTB, EppDSTB,EppWRITE,EppWAIT, data_valid,download_data,LED);

--store into bram
memory_block: process(clk)
begin
	if(rising_edge(clk)) then
		if (data_valid = '1') then
			ram(index) <= data_input;
		end if;
	--data_output <= ram(read_index);
	end if;
end process;

data_output <= ram(read_index);

display_data: seven_seg_display port map(clk,data_output(3 downto 0),X"2",X"3",X"4",an,hex);
end Behavioral;

