module paralleladd(
input [3:0]A,
input [3:0]B,
input Cin,
output [3:0]S,
output Cout
    );
    wire w1,w2,w3;
    fulladd f1(S[0],w1,A[0],B[0],Cin);
     fulladd f2(S[1],w2,A[1],B[1],w1);
      fulladd f3(S[2],w3,A[2],B[2],w2);
       fulladd f4(S[3],Cout,A[3],B[3],w3);
endmodule

 module fulladd(s,cout,a,b,c);
       input a,b,c;
       output s,cout;
       assign s=a^b^c;
       assign cout=(a&b|b&c|c&a);
       endmodule
