module full_adder(s, cout, a, b, c); 
  input a, b, c; 
  output s, cout; 
  
  xor x1(s, a, b, c);
  
  or o1(cout, (a & b), (b & c), (a & c));

endmodule
