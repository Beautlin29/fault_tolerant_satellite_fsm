module mux_16_1(out, D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, Sel);
    input  D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15;
    input [3:0]Sel; 
    output reg out;
    always @(*)
    begin
    case(Sel)
    4'b0000: out<=D0;
    4'b0001: out<=D1;
    4'b0010: out<=D2;
    4'b0011: out<=D3;
    4'b0100: out<=D4;
    4'b0101: out<=D5;
    4'b0110: out<=D6;
    4'b0111: out<=D7;
    4'b1000: out<=D8;
    4'b1001: out<=D9;
    4'b1010: out<=D10;
    4'b1011: out<=D11;
    4'b1100: out<=D12;
    4'b1101: out<=D13;
    4'b1110: out<=D14;
    4'b1111: out<=D15;
    default: out<=1'b0;
    endcase
    end
endmodule