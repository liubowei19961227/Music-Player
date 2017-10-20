----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:18:53 08/20/2017 
-- Design Name: 
-- Module Name:    downloader - Behavioral 
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

entity downloader is
port(
		clk: in std_logic;
		PDB: inout std_logic_vector(7 downto 0);
		EppASTB: in std_logic;
		EppDSTB: in std_logic;
		EppWRITE: in std_logic;
		EppWAIT: out std_logic;
		data_valid: out std_logic;
		ram_data: out std_logic_vector(15 downto 0);
		LED: out std_logic_vector(7 downto 0)
);
end downloader;

architecture Behavioral of downloader is

--component for epp
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

--declare signals
signal EppWaitSig: std_logic;
signal data_aval: std_logic;
signal epp_data_input: std_logic_vector(7 downto 0);


begin


EPP: dpimref port map(clk, PDB, EppASTB, EppDSTB, EppWRITE, EppWAIT, data_aval,epp_data_input);

LED(3 downto 0) <= epp_data_input(3 downto 0);

data_valid <= EppWaitSig AND data_aval;

end Behavioral;

