entity variables is
    end entity;
        
architecture sim of variables is

    signal MySignal : integer := 0;


begin
        
    process is
        variable MyVariable : integer := 0;
    begin 
        
        MyVariable := MyVariable +1;
        MySignal <= MySignal +1 ;

        report "MyVariable count=" & integer'image(MyVariable) & 
        ", MySignal=" & integer'image(MySignal);

        MyVariable := MyVariable +1;
        MySignal <= MySignal +1 ;

        report "MyVariable=" & integer'image(MyVariable) & 
        ", MySignal=" & integer'image(MySignal);

        wait for 10 ns ;

        report "MyVariable=" & integer'image(MyVariable) & 
        ", MySignal=" & integer'image(MySignal);
    
        -- Signals only update at the end of the process, after the wait signal, 
        -- if you update it twice it will get the last update
        -- variables get updated every time you want
            
        
    end process;
                
end architecture;