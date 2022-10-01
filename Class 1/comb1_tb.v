`timescale 1ns/1ps

module comb1_tb;
    reg D;
    reg X;
    reg A;
    wire L;

    comb1 uut
    (
        .D(D),
        .X(X),
        .A(A),
        .L(L)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, comb1_tb);
        D = 0;
        X = 0;
        A = 0;

        #20;
        A = 1; //D = 0, X = 0, A = 1

        #20;
        X = 1; //D = 0, X = 1, A = 1

        #20;
        D = 1; //D = 1, X = 1, A = 1

        #20;
        X = 0; //D = 1, X = 0, A = 1

        #20;
        A = 0; //D = 1, X = 0, A = 0

        $finish;
    end

    initial begin
        $monitor("D = %d X = %d A = %d L=%d\n", D, X, A, L);
    end
endmodule


