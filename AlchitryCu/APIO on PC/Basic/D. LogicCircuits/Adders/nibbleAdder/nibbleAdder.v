module nibbleAdder( 
    input [3:0] A,
    input [3:0] B,
    input CIN,
    output [3:0] S,
    output COUT );

    wire C1,C2,C3;

    fullAdder fA0 (A[0],B[0],CIN,S[0],C1);
    fullAdder fA1 (A[1],B[1],C1,S[1],C2);
    fullAdder fA2 (A[2],B[2],C2,S[2],C3);
    fullAdder fA3 (A[3],B[3],C3,S[3],COUT);

endmodule

module fullAdder( 
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout );

       assign Sum = A ^ B ^ Cin;
       assign Cout = (A & B) | (Cin & (A ^ B));

endmodule