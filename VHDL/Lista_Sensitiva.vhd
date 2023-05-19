entity Lista_Sensitiva is 
end entity;

architecture sim of Lista_Sensitiva is

    signal Countup : integer := 0;
    signal Countdown : integer := 10;


begin
        
    process is
    begin 
        
        Countup <= Countup + 1;
        Countdown <= Countdown - 1 ;

        wait for 10 ns ;
            
    end process;

    -- Process triggered using wait on
    process is 
    begin

        if Countup = Countdown then 
            report "They are equal !! ";
        end if;

        wait on Countup, Countdown;

    end process;
         
    -- Equivalent process using a sensitivity list

    process(Countup, Countdown) is 
    begin

        if Countup = Countdown then
            report "Both are the same !";
        end if;


    end process;

end architecture;