# CS2610: Computer Organization and Architecture Lab January-May 2023 Semester
Verilog Programming Assignment 4
Date: 27th February, 2023

Structural description method is to be used.
Design a circuit for multiplication of two normalized real numbers, X and Y, represented using a 12-bit floating point format (similar to IEEE standard 754) that uses 4 bits for the biased exponent. The circuit for multiplication of mantissas is based on summand addition tree that uses 3-to-2 reducers and a 16-bit adder. The output of the circuit, Z = X * Y, should be in the same format as that of the input operands.
Detect the exponent overflow condition.
The input and output operands are to be specified using binary representations. The decimal values of the operands cannot be used.
Test cases:
(a) No exponent overflow
• 2 pairs of operands (1 pair of same sign, and 1 pair of different signs) for which the product of the mantissas, PM, is greater than 2.0.
• 2 pairs of operands (1 pair of same sign, and 1 pair of different signs) for which the product of the mantissas, PM, is less than 2.0
(b) Exponent overflow
• 1 pair of operands with exponent overflow on positive side
• 1 pair of operands with exponent overflow on negative side
        