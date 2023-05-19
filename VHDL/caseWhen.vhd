library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity caseWhen is
end entity;

architecture sim of caseWhen is


    -- Vamos a crear un multiplexor, 4 entradas, 1 selector y una salida

    signal sig1 : unsigned(7 downto 0) := x"AA";
    signal sig2 : unsigned(7 downto 0) := x"BB";
    signal sig3 : unsigned(7 downto 0) := x"CC";
    signal sig4 : unsigned(7 downto 0) := x"DD";

    signal sel : unsigned (1 downto 0) := (others => '0');

    signal Output1 : unsigned (7 downto 0);
    signal Output2 : unsigned (7 downto 0);


begin

        --proceso para incremetar la señal sel automaticamente cada 10 ns
        process is
        begin 
            wait for 10 ns;
            sel <= sel +1 ;
            wait for 10 ns;
            sel <= sel +1 ;
            wait for 10 ns;
            sel <= sel +1 ;
            wait for 10 ns;
            sel <= sel +1 ;
            wait for 10 ns;
            sel <= "UU";
            wait;
        end process;

        --using if-then-else
        process(sel, sig1, sig2, sig3, sig4) is
        begin
            if Sel = "00" then 
                Output1 <= sig1;
            elsif Sel = "01" then 
                Output1 <= sig2;
            elsif Sel = "01" then 
                Output1 <= sig3;
            elsif Sel = "01" then 
                Output1 <= sig4;
            else -- 'U', 'X', '-', etc
                Output1 <= (others => 'X');
            end if;

        end process;

        -- equivalent mux using case statement
        process(sel, sig1, sig2, sig3, sig4) is
        begin
                
            case Sel is 
                when "00" =>
                    Output2 <= sig1;
                when "01" =>
                    Output2 <= sig2;
                when "10" =>
                    Output2 <= sig3;
                when "11" =>
                    Output2 <= sig4;
                when others =>
                    Output2 <= (others => 'X');
            end case;
                
    
        end process;



end architecture;