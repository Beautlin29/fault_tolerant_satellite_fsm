module mux_2_1(out, D0, D1,Sel);
    input  D0, D1;
    input Sel; 
    output reg out;
    always @(*)
    begin
    case(Sel)
    1'b0: out<=D0;
    1'b1: out<=D1;
    default: out<=1'b0;
    endcase
    end
endmodule