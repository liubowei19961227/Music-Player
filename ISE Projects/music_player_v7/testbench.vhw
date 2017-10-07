library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library work;
use work.constants.all;

ENTITY testbench IS
END testbench;

ARCHITECTURE arch OF testbench IS

    SIGNAL reset : std_logic := '1';
    SIGNAL clk : std_logic := '0';
    SIGNAL done : std_logic := '0';
    signal btn : std_logic := '0';
    signal sw : std_logic_vector(7 downto 0) := "00000000";
    signal s : std_logic;
    signal led : std_logic_vector(7 downto 0);

    constant PERIOD : time := 1 ps;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ps;

BEGIN
    UUT : entity work.music_player_v7 port map (
        clk => clk,
        btn => btn,
        sw => sw,
        led => led,
        s => s
    );

    PROCESS    -- clock process for clk
    BEGIN
        CLOCK_LOOP : LOOP
            clk <= '0';
            WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
            clk <= '1';
            WAIT FOR (PERIOD * DUTY_CYCLE);
        END LOOP CLOCK_LOOP;
    END PROCESS;

    PROCESS
    BEGIN
        btn <= '1';
        WAIT for OFFSET;
        btn <= '0';
        WAIT for 1000 ms;
    END PROCESS;

END arch;
