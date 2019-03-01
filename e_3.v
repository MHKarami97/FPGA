module full_adder (a, b, en1, en2, o1);
    input a;
    input b;
    input en1;
    input en2;
    output o1;

    wire w1;
    wire w2;

    bufif1 #2 g1(w1, a, en1);
    bufif1 #2 g2(w2, w1, en2);
    and #3 g3(o1, b, w2);
endmodule