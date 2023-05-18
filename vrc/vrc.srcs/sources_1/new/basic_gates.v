module and_2(input a, input b, output reg out);
  always @(a or b)
    out = a & b;
endmodule


module and_3(input a, input b, input c, output reg out);
  always @(a or b or c)
    out = a & b & c;
endmodule


module and_4(input a, input b, input c, input d, output reg out);
  always @(a or b or c or d)
    out = a & b & c & d;
endmodule


module or_2(input a, input b, output reg out);
  always @(a or b)
    out = a | b;
endmodule


module or_3(input a, input b, input c, output reg out);
  always @(a or b or c)
    out = a | b | c;
endmodule


module or_4(input a, input b, input c, input d, output reg out);
  always @(a or b or c or d)
    out = a | b | c | d; 
endmodule