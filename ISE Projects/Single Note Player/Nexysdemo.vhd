library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Nexysdemo is
    Port (
        clk_in : in std_logic;
        sw : in std_logic_vector(7 downto 0);
        led : out std_logic_vector(7 downto 0);
        an : out std_logic_vector(3 downto 0);
        hex : out std_logic_vector(7 downto 0));
end Nexysdemo;

architecture Behavioral of Nexysdemo is

	------------------------------------------------------------------------
	-- Component Declarations
	------------------------------------------------------------------------

	------------------------------------------------------------------------
	-- Constant Declarations
	------------------------------------------------------------------------
	
	constant clk_freq : integer := 100000000;
	constant hex_freq : integer := 1000;
	
	constant dig_blank : std_logic_vector(6 downto 0) := "0000000";
	constant dig_0 : std_logic_vector(6 downto 0) := "0111111";
	constant dig_1 : std_logic_vector(6 downto 0) := "0000110";
	constant dig_2 : std_logic_vector(6 downto 0) := "1011011";
	constant dig_3 : std_logic_vector(6 downto 0) := "1001111";
	constant dig_4 : std_logic_vector(6 downto 0) := "1100110";
	constant dig_5 : std_logic_vector(6 downto 0) := "1101101";
	constant dig_6 : std_logic_vector(6 downto 0) := "1111101";
	constant dig_7 : std_logic_vector(6 downto 0) := "0000111";
	constant dig_8 : std_logic_vector(6 downto 0) := "1111111";
	constant dig_9 : std_logic_vector(6 downto 0) := "1101111";			

	------------------------------------------------------------------------
	-- Type Declarations
	------------------------------------------------------------------------

	type display_array is array (3 downto 0) of std_logic_vector(6 downto 0);

	------------------------------------------------------------------------
	-- Signal Declarations
	------------------------------------------------------------------------

	signal display : display_array;
	signal hex_partial : integer range 0 to clk_freq / hex_freq - 1 := 0;
	signal hex_counter : integer range 0 to 3 := 0;
	------------------------------------------------------------------------
	-- Module Implementation
	------------------------------------------------------------------------

	begin

	led <= sw;
	
	display(0) <= dig_0;
	display(1) <= dig_1;
	display(2) <= dig_2;
	display(3) <= dig_3;
	
	an <= not std_logic_vector(to_unsigned(2 ** hex_counter, 4));
	
	hex(6 downto 0) <= not display(hex_counter);
	hex(7) <= not '0';

	process (clk_in)
	begin
		if rising_edge(clk_in) then
			if hex_partial = clk_freq / hex_freq - 1 then
				hex_partial <= 0;
				if hex_counter = 3 then
					hex_counter <= 0;
				else
					hex_counter <= hex_counter + 1;
				end if;
			else
				hex_partial <= hex_partial + 1;
			end if;
		end if;
	end process;

end Behavioral;

