// given the mantissa of two floating point numbers and the difference
// between their exponents, align them to have the same exponents

`timescale 1ns/1ns

module align_mantissa(
    input [6:0] X, Y,
    input [3:0] XE_YE,
    input XELTYE,
    output [7:0] PM, QM
);

    wire [7:0] X, Y, QM_temp1, QM_temp2, QM_temp3;

    assign X[7] = 1;
    assign X[6:0] = XM;
    assign Y[7] = 1;
    assign Y[6:0] = YM;

    mux_2_to_1 mux1 (X, Y, XELTYE, PM);
    mux_2_to_1 mux2 (Y, X, XELTYE, QM_temp1);

    barrel_shift barrel_shifter1 (QM_temp1, XE_YE[2:0], QM_temp2);
    
    assign QM_temp3[7:0] = 0;
    mux_2_to_1 mux3 (QM_temp2, QM_temp3, XE_YE[3], QM);

endmodule