`include "interface.sv"
`include "test.sv"
module tbench_top;
  
  intf i_intf(); 
  
  test t1(i_intf); 
  
  full_adder f1 (
    .a(i_intf.a),
    .b(i_intf.b),
    .c(i_intf.c),
    .s(i_intf.s),
    .cout(i_intf.cout)
   );
 
  
endmodule
