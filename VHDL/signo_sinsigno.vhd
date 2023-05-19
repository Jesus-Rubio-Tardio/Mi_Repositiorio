library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity signo_sinsigno is
end entity;

architecture sim of signo_sinsigno is

    signal UnsCnt : unsigned(7 downto 0) := (others => '0');
    signal SigCnt : signed(7 downto 0)   := (others => '0');

    signal uns4   : unsigned(3 downto 0) := "1000";
    signal sig4   : signed(3 downto 0)   := "1000";

    signal uns8   : unsigned(3 downto 0) := (others => '0');
    signal sig8   : signed(3 downto 0)   := (others => '0');

begin
        
    process is
    begin 

        wait for 10 ns ;

        --Wrapping counter (como el cuenta km de un coche)
        UnsCnt <= UnsCnt + 1;
        SigCnt <= SigCnt + 1;
        
        --Adding signals
        uns8 <= uns8 + uns4;
        sig8 <= sig8 + sig4;

        --Al sumar el sin signo se interpreta como (0000 1000)+(0000 0000)
        -- mientras que el con signo se suma (1111 1000) + (0000 0000) 

    end process;
end architecture;