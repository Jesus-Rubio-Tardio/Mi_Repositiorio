entity waitOn_waitIUntil is 
end entity;

architecture sim of waitOn_waitIUntil is

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

        wait on Countup, Countdown;
        report "Countup: " &  integer'image(Countup) &
            " Countdown: " &  integer'image(Countdown);
    end process;

    process is 
    begin

        wait until Countup = Countdown;
        report "Premio!";
    end process;
                
end architecture;