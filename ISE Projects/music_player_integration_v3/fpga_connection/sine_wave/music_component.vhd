----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:31 10/06/2017 
-- Design Name: 
-- Module Name:    music_component - Behavioral 
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

entity music_component is
port(clk: in std_logic;
	  sw: in std_logic_vector(7 downto 0);
	  rst: in std_logic;
	  s: out std_logic
);
end music_component;

architecture Behavioral of music_component is


component music_player_v6 is
	port(
		clk : in std_logic;
		rst : in std_logic;
		enable: in std_logic;
		sw : in std_logic_vector(4 downto 0);
		--music_counter: out integer;
		s : out std_logic
	);
end component;

begin

play_music: music_player+v6 port map(clk,rst,sw())


end Behavioral;

