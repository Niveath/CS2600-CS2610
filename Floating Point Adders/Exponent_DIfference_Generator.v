// given the exponent bits of the two flosting point numbers, generate their absolute difference 
// and also a bit signifying which of them is greater

`timescale 1ns/1ns

module generate_exponent_difference(
    input [3:0] XE, YE,
    output XELTYE,
    output [3:0] XE_YE
);

    wire [3:0] xe_ye, ye_xe, xeltye, yeltxe, diff_temp1, diff_temp2;

    BLS bls1 (XE, YE, xe_ye);
    BLS bls2 (YE, XE, ye_xe);

    buf (XELTYE, xe_ye[3]);

    buf buf1[3:0] (xeltye, XELTYE);
    not not1[3:0] (yeltxe, XELTYE);

    and and1[3:0] (diff_temp1, xeltye, xe_ye);
    and and2[3:0] (diff_temp2, yeltxe, ye_xe);

    or or1[3:0] (XE_YE, diff_temp1, diff_temp2);

endmodule