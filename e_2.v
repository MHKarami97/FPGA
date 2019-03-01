module full_adder (a, b, c, d, e, o1);
    input a;
    input b;
    input c;
    input d;
    input e;
    output o1;

    wire w1;
    wire w2;
    wire w3;
    wire w4;
    wire w5;
    wire w6;

    or #3 g1(w1, a, b);
    not #1 g2(w2, c);
    or #3 g3(w3, w1, w2);
    not #1 g4(w5, d);
    xor #5 g5(w6, w3, w5);
    not #1 g6(o1, w6,e);

endmodule