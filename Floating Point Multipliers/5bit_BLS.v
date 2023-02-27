// 5-bit Borrow Lookahead Subtractor(BLS) 

`timescale 1ns/1ns

module BLS(
    input [4:0] A, B,
	output Co,
    output [4:0] difference,
);

// perform A - B and return the difference and the sign of the output

	wire [4:0] B_not, P, G, temp, carry;

    not not1[3:0] (B_not, B);

	and (G[0],A[0],B_not[0]);
	and (G[1],A[1],B_not[1]);
	and (G[2],A[2],B_not[2]);
	and (G[3],A[3],B_not[3]);
	and (G[4],A[4],B_not[4]);

	xor (P[0],A[0],B_not[0]);
	xor (P[1],A[1],B_not[1]);
	xor (P[2],A[2],B_not[2]);
	xor (P[3],A[3],B_not[3]);
	xor (P[4],A[4],B_not[4]);

	buf (carry[0], 1);
	
	and (temp[0], P[0], carry[0]); 
	or (carry[1], G[0], temp[0]);
	and (temp[1], P[1], carry[1]);
	or (carry[2], G[1], temp[1]);
	and (temp[2], P[2], carry[2]);
	or (carry[3], G[2], temp[2]);
	and (temp[3], P[3], carry[3]);
    or (carry[4], G[3], temp[3]);
	and (temp[4], P[4], carry[4]);
    or (Co, G[4], temp[4]);
	
	xor (difference[0],P[0],carry[0]);
	xor (difference[1],P[1],carry[1]);
	xor (difference[2],P[2],carry[2]);
	xor (difference[3],P[3],carry[3]);
	xor (difference[4],P[4],carry[4]);

endmodule

