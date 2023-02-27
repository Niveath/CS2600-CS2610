// given two floating point numbers, add them

`timescale 1ns/1ns

module fp_adder(
    input [11:0] X, Y,
    output [11:0] Z
);

    wire [3:0] k, XE, YE, ;

