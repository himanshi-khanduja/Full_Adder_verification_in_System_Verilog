class scoreboard;
  
  mailbox mon2scb; 
  
  
  
  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction
  
  task main;
    transaction trans;
    repeat(1)
      begin
        mon2scb.get(trans); 
        
        if (((trans.a ^ trans.b ^ trans.c) == trans.s) && 
    ((trans.a & trans.b) | (trans.b & trans.c) | (trans.a & trans.c)) == trans.cout)
          $display("Result is as Expected");
        else
          $error("Wrong Result");
           
         trans.display("Scoreboard");
    end
  endtask
  
endclass
