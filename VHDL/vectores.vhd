library ieee;

use ieee.std_logic_1164.all;

entity vectores is
end entity;

architecture sim of vectores is

    signal Siv1 : std_logic_vector(7 downto 0);
    signal Siv2 : std_logic_vector(7 downto 0) := (others => '0');
    signal Siv3 : std_logic_vector(7 downto 0) := (others => '1');
    signal Siv4 : std_logic_vector(7 downto 0) := x"AA";
    signal Siv5 : std_logic_vector(0 to 7) := "10101010";
    signal Siv6 : std_logic_vector(7 downto 0) := "00000001";

begin
        
    -- Shift register
    process is
    begin 

        wait for 10 ns ;

-- En este for cada posicion del vector siv6 se desplaza una posicion hacia la izq
-- Directamente en el principio porque no hay un wait statement
-- 0ns -> 0000 0001
-- 10 ns -> 0000 0010
-- 20 ns -> 0000 0100
-- Asi sucesivamente

        for i in 7 downto 1 loop
     -- for i in Siv6'left (es el bit 8) downto Siv6'right (es el bit 0) + 1 loop

            Siv6(i) <= Siv6(i - 1);

        end loop;

        siv6(0) <= siv6(7);

    -- Con esto hacemos un feedback loop, para no hacer desparacer ningun bit
    end process;
end architecture;