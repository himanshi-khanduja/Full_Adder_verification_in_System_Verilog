class transaction; 
 
  rand bit a;  
  rand bit b;
  rand bit c;
  
  bit s;
  bit cout;

  function void display(string name);
    $display("-------------------------");
    $display(" %s ",name);
    $display("-------------------------");
    $display("a = %0d,   b = %0d, c = %0d",a,b,c);
    $display("sum = %0d, carry = %0d",s,cout);
    $display("-------------------------");
  endfunction
  
  
endclass
