----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2023 11:23:21 AM
-- Design Name: 
-- Module Name: BUTTON_LED - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;



entity BUTTON_LED is
generic( Buttons : integer := 2); --La arty NANO DE0 tiene 2 botones
Port ( 
    Led_out: out std_logic_vector(Buttons-1 downto 0);
    Button_In :  in std_logic_vector(Buttons-1 downto 0);
    Enable :  in std_logic --active low
);
end BUTTON_LED;

architecture Behavioral of BUTTON_LED is

begin

    --we're gonna set outputs of the LED
        Led_out <= NOT Button_In when Enable = '0' else (others => '0');


end Behavioral;
