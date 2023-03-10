// given the mantissa of two floating point numbers and the difference
// between their exponents, align them to have the same exponents

`timescale 1ns/1ns

module align_mantissa(
    input [6:0] Y,
    input [3:0] XE_YE,
    output [7:0] QM
);

    wire [7:0] QM_temp1, QM_temp2, QM_temp3;

    barrel_shift barrel_shifter1 (Y, XE_YE[2:0], QM_temp1);
    
    assign QM_temp2[7:0] = 0;
    mux_2_to_1 mux1 (QM_temp2, QM_temp1, XE_YE[3], QM);

endmodule