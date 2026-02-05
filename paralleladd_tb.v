module paralleladd_tb();
reg [3:0]A,B;
reg Cin;
wire [3:0]S;
wire Cout;
paralleladd dut(A,B,Cin,S,Cout);
initial begin
#0  A=4'b0000; B=4'b1100; Cin=1;
#10  A=4'b0101; B=4'b0000; Cin=0;
#10  A=4'b1011; B=4'b1000; Cin=1;
#10  A=4'b0001; B=4'b1110; Cin=0;
#10 $finish;
end
endmodule
