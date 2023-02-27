# CS2610: Computer Organization and Architecture Lab January-May 2023 Semester
Verilog Programming Assignment 3
Date: 20th February, 2023

Structural description method is to be used.
Design a circuit for addition of two positive normalized real numbers, X and Y, represented using a 12-bit floating point format (similar to IEEE standard 754) that uses 4 bits for the biased exponent. Assume that XE > YE. The output of the circuit, Z = X + Y, should be in the same format as that of the input operands.
The input and output operands are to be specified using binary representations. The decimal values of the operands cannot be used.
Test cases:
2 pairs of operands for which the sum of the aligned mantissas, SM, is greater than 2.0. 2 pairs of operands for which the sum of the aligned mantissas, SM, is less than 2.0
1 pair of operands with XE-YE < 8
1 pair of operands with XE-YE >= 8
      