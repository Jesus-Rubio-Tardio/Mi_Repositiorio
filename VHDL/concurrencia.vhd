library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity concurrencia is
end entity;

architecture sim of concurrencia is

    signal Uns : unsigned(5 downto 0) := (others => '0');
    signal Mull : unsigned(8 downto 0);
    signal Mull2 : unsigned(8 downto 0);
    signal Mull3 : unsigned(8 downto 0);

begin
        
    process is
    begin 

        Uns <= Uns +1;

        wait for 10 ns ;

    end process;

    --Process to multiply by 4, esto se conoce como bit shift by 2 to the left
    --lo que realmente es desplazar un bit dos posiciones a la izq lo que es
    --lo mismo que multiplicar x4
    process is 
    begin
        
        --Añadimos dos 00 a nuestro vector de 6 bits para poder concatenar
        Mull <= Uns & "00";

        -- wait on esperaba hasta q cambiase la variable o señal
        wait on Uns;


    end process;

    process(Uns) is 
    begin
        
        --misma operacion que el proceso anterior
        Mull3 <= Uns & "00";

    end process;

    --misma operacion que los procesos anterior, funciona como un proceso

    Mull2 <= Uns & "00";

end architecture;