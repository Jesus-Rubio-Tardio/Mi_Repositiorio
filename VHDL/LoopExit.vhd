entity LoopExit is
    end entity;
    
    architecture sim of LoopExit is
        begin
    
            process is
            begin

                report "Hola Jesus";
    

                loop
                    report "How are you?";
                    exit;
                end loop;
                
                report "Bye";
                wait;
    
            end process;
            
    end architecture;