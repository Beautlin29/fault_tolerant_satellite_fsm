module next_state_fsm(I1,I2,I3,clk,C1,C2,N1,N2);
input I1,I2,I3,C1,C2,clk;
output reg N1,N2;

always@(negedge clk) begin
    N1 = ((!I1) & (!I2) & I3) | ((!I1) & I2 & (!I3) & C2);
    N2 = ((!I1) & (!C1) & (!I2)) | (C1 & I2 & I3 ) | ((!I1) & I3 & C1 & (!C2));
end

endmodule