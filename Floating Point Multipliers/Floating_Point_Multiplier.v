`timescale 1ns/1ns

module fp_multiplier(
    input [11:0] X, Y, 
    output OF,
    output [11:0] Z
);

    wire Xs, Ys, Zs, s;
    wire [3:0] Xe, Ye, Ze;
    wire [6:0] Xm ,Ym, Zm;
    wire [15:0] Ztemp;

    buf (Xs, X[11]);
    buf (Ys, Y[11]);
    buf buf1[3:0] (Xe, X[10:7]);
    buf buf2[3:0] (Ye, Y[10:7]);
    buf buf3[6:0] (Xm, X[6:0]);
    buf buf4[6:0] (Ym, Y[6:0]);

    xor (Zs, Xs, Ys);
    
    unsigned_mult mult1 (Xm, Ym, Ztemp, s);
    bit7_2to1_mux mux1 (Ztemp[14:8], Ztemp[15:9], s, Zm);

    Ze_generate gen1 (Xe, Ye, s, OF, ZE);
    
    buf (Z[11], Zs);

endmodule

