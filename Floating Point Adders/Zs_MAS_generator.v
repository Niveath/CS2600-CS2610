// given the sign bits of two floating point numbers find the sign bit
// of their sum or difference operation

`timescale 1ns/1ns

module generate_Zs_MAS(
    input XS, YS, A_barS, XELTYE
    output ZS, MAS
);

    wire XELTYE_not, XS_not;
    wire zs_temp1, zs_temp2, zs_temp3;
    wire mas_temp1, mas_temp2, mas_temp3, mas_temp4;

    not (XELTYE_not, XELTYE);
    not (XS_not, XS);

    and (zs_temp1, XELTYE_not, XS);
    xor (zs_temp2, YS, A_barS);
    and (zs_temp3, zs_temp2, XELTYE);
    or (ZS, zs_temp1, zs_temp3);

    xor (mas_temp1, YS, A_barS);
    not (mas_temp2, mas_temp1);
    and (mas_temp3, XS, mas_temp2);
    and (mas_temp4, XS_not, mas_temp1);
    or (MAS, mas_temp3, mas_temp4);

endmodule