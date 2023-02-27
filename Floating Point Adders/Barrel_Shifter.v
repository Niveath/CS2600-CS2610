// Given a n-bit number, perform right shift operation by k-times

`timescale 1ns/1ns

module barrel_shift(
    input [7:0] A,
    input [2:0] k,
    output [7:0] shifted_A
);

    wire [7:0] s1, s2, s3, s4, s5, s6, s7;

    assign s1[7] = 0;
    assign s1[6:0] = A[7:1];
    assign s2[7:6] = 0;
    assign s2[5:0] = A[7:2];
    assign s3[7:5] = 0;
    assign s3[4:0] = A[7:3];
    assign s4[7:4] = 0;
    assign s4[3:0] = A[7:4];
    assign s5[7:3] = 0;
    assign s5[2:0] = A[7:5];
    assign s6[7:2] = 0;
    assign s6[1:0] = A[7:6];
    assign s7[7:1] = 0;
    assign s7[0] = A[7];

    mux_8_to_1 mux1 (A, s0, s1, s2, s3, s4, s5, s6, s7, k, shifted_A);

endmodule

