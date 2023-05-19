entity delay is
    end entity;
    
    architecture sim of delay is
        begin
    
            process is
                begin
    
                    report "Hello World";
                    wait for 5 ns;
    
            end process;
            
    end architecture;