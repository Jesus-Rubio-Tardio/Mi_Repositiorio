library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity constante_TB is
end entity;

architecture sim of constante_TB is

    constant DataWidth : integer := 8;


    -- Vamos a crear un multiplexor, 4 entradas, 1 selector y una salida

    signal sig1 : unsigned(DataWidth-1  downto 0) := x"AA";
    signal sig2 : unsigned(DataWidth-1  downto 0) := x"BB";
    signal sig3 : unsigned(DataWidth-1  downto 0) := x"CC";
    signal sig4 : unsigned(DataWidth-1  downto 0) := x"DD";

    signal sel : unsigned (1 downto 0) := (others => '0');

    signal Output1 : unsigned (DataWidth-1  downto 0);


begin


        -- an instance of portMap_modulo

        i_Mux1 : entity work.constante(rtl) 
        
        generic map (DataWidth => DataWidth);
        
        port map(

            sel => sel,
            sig1 => sig1,
            sig2 => sig2,
            sig3 => sig3,
            sig4 => sig4,
            Output1 => Output1);

        --testbench process
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

        process(sel, sig1, sig2, sig3, sig4) is
        begin
                
            case Sel is 
                when "00" =>
                    Output1 <= sig1;
                when "01" =>
                    Output1 <= sig2;
                when "10" =>
                    Output1 <= sig3;
                when "11" =>
                    Output1 <= sig4;
                when others =>
                    Output1 <= (others => 'X');
            end case;
                
    
        end process;



end architecture;