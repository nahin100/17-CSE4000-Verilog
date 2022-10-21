`timescale 1ns/1ps

module bit1Comparator_tb;
    reg A;
    reg B;
    wire O;

    bit1ComparatorV2 
    uut
    (
        .A(A),
        .B(B),
        .O(O)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, bit1Comparator_tb);

        A = 1'b1;
        B = 1'b1;
        #10;
        A = 1'b1;
        B = 1'b0;
        $finish;
    end

    initial begin
        $monitor("A = %1b B = %1b | O= %1b\n", A, B, O);
    end
endmodule


