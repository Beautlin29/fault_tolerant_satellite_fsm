`timescale 1ns / 1ps

module sat_fsm_tb;
reg I1,I2,I3,clk;
wire N1,N2,C1,C2;
sat_fsm uut(
.I1(I1),
.I2(I2),
.I3(I3),
.clk(clk),
.N1(N1),
.N2(N2),
.C1(C1),
.C2(C2)
);


always #2 clk = ~clk;


initial begin

  I1 = 0; I2 = 0; I3 = 0;clk=1'b0;
  #10;
  
  I1 = 1; I2 = 0; I3 = 0;
  #10;
  
  I1 = 1; I2 = 1; I3 = 0;
  #10;

  I1 = 1; I2 = 1; I3 = 1;
  #10;
  
  $finish;
end
endmodule