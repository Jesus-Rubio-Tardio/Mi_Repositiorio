library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity flipflop is
port(

    Clk : in std_logic;
    nRst : in std_logic; -- negative reset
    Input : in std_logic;
    Output : out std_logic
);
end entity;

architecture rtl of flipflop is
begin

    -- flip flop with synchronized clock
    process(Clk) is
    begin 

        if rising_edge(Clk) then 
            
            if nRst = '0' then 
                Output <= '0';
            else
                Output <= Input;
            end if;

        end if;
    end process;

end architecture;