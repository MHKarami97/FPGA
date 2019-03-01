module full_adder (a, b, c, d, e, f, o1, o2);
    input a;
    input b;
    input c;
    input d;
    input e;
    input f;
    output o1;
    output o2;

    wire w1;
    wire w2;
    wire w3;
    wire w4;

    and g1(w1, a, b, c);
    not g2(w2, e);
    xor g3(w3, w2, f);
    or g4(w4, w1, d);
    not(o1, w4)
    and(o2, w4, w3);

endmodule