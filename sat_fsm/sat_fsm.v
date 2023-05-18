`timescale 1ns / 1ps

module sat_fsm(
    input I1,
    input I2,
    input I3,
    output reg C1,
    output reg C2,
    output N1,
    output N2,
    input clk
);

next_state_fsm a1 (I1,I2,I3,clk,C1,C2,N1,N2);

initial 
begin
C1 = 0;
C2 =0;
end
always @(posedge clk) begin
   C1 = N1;
   C2 = N2;
end

endmodule