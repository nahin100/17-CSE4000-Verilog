`timescale 1ns/1ps

module comb3_tb;
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] O;

    comb3 uut
    (
        .A(A),
        .B(B),
        .O(O)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, comb3_tb);

        A = 4'b1111;
        B = 4'b0010;

        $finish;
    end

    initial begin
        $monitor("A = %4b B = %4b | O=%4b\n", A, B, O);
    end
endmodule


