library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity constante is

generic (DataWidth : integer);
port(
    -- inputs
    sig1 : in unsigned (DataWidth-1 downto 0);
    sig2 : in unsigned (DataWidth-1 downto 0);
    sig3 : in unsigned (DataWidth-1 downto 0);
    sig4 : in unsigned (DataWidth-1 downto 0);

    sel : in unsigned (1 downto 0);

    --outputs

    Output1 : out unsigned (DataWidth-1 downto 0)
);

end entity;

--how to create a VHDL module and how to instantiate it in a testbench.
--The port map is used for connecting the inputs and outputs from a module 
--to local signals ion the design where it’s instantiated

architecture rtl of constante is
begin  

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