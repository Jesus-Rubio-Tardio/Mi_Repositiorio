entity Conditionals is 
end entity;

architecture sim of Conditionals is

    signal Countup : integer := 0;
    signal Countdown : integer := 10;


begin
        
    process is
    begin 
        
        Countup <= Countup + 1;
        Countdown <= Countdown - 1 ;

        wait for 10 ns ;
            
    end process;

    process is 
    begin

        if Countup > Countdown then 
            report "Countup is bigger !! ";
        elsif Countup < Countdown then 
            report "Countdown is bigger !! ";
        else 
            report "They are equal !! ";
        end if;

        wait on Countup, Countdown;

    end process;
                
end architecture;