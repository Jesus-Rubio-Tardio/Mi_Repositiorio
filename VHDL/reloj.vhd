library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity reloj is
end entity;

architecture sim of reloj is

    constant ClockFreq : integer := 100e6; --100 MHz
    constant ClockPeriod : time := 1000 ms / ClockFreq;

    signal Clk : std_logic := '1';
    signal nRst : std_logic := '0'; 
    signal Input : std_logic := '0';
    signal Output : std_logic;

begin

    --The device under test (DUT)
    i_flipflop : entity work.flipflop(rtl)
    port map(

        Clk => Clk,
        nRst => nRst,
        Input => Input,
        Output => Output
    );

    --process for generating the clock
    Clk <= not Clk after ClockPeriod / 2;


    -- Testbench sequence
    process is
    begin
            -- Take the DUT out of reset
            nRst <= '1';
             
            wait for 20 ns;
            Input <= '1';
            wait for 22 ns;
            Input <= '0';
            wait for 6 ns;
            Input <= '1';
            wait for 20 ns;
             
            -- Reset the DUT
            nRst <= '0';
             
            wait;
    end process;

end architecture;