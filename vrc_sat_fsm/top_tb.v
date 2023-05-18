module top_tb;
  reg I1, I2, I3, C1, C2, clk;
  wire N1, N2;
  wire [86:1] Sel;
   
  // Instantiate the top module
  top dut (
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .C1(C1),
    .C2(C2),
    .Sel(Sel),
    .N1(N1),
    .N2(N2)
  );

  always begin
  #1 clk = ~clk;
  end

  initial begin
    // Initialize inputs
    I1 = 0;
    I2 = 0;
    I3 = 0;
    C1 = 0;
    C2 = 0;
    clk = 1'b0;
    Sel = 86'b0101_0110_0010_011_0101_0001_0111_0100_100_1_0101_0110_1000_011_0001_0010_0011_011_0101_0010_0011_1001_100_1;
    
    // Apply stimulus
    
    #10 I1 = 0;I2 = 0;I3 = 0;C1 = 0;C2 = 0;
    #10 I1 = 0;I2 = 0;I3 = 1;C1 = 0;C2 = 1;
    #10 I1 = 0;I2 = 1;I3 = 0;C1 = 0;C2 = 1;
    #10 I1 = 1;I2 = 0;I3 = 0;C1 = 0;C2 = 1;
    #10 I1 = 0;I2 = 1;I3 = 1;C1 = 1;C2 = 1;
    #10 I1 = 0;I2 = 1;I3 = 0;C1 = 1;C2 = 1;
    #10 I1 = 1;I2 = 0;I3 = 0;C1 = 1;C2 = 1;
    #10 I1 = 1;I2 = 0;I3 = 0;C1 = 1;C2 = 0;
    #10 I1 = 0;I2 = 0;I3 = 1;C1 = 1;C2 = 0;
    #10 I1 = 0;I2 = 1;I3 = 1;C1 = 1;C2 = 0;
    
    // Wait for some time
    #100
    
    // Display outputs
    $monitor("N1 = %b", N1);
    $monitor("N2 = %b", N2);
    
    // End simulation
    $finish;
  end
endmodule


