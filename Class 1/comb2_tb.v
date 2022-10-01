`timescale 1ns/1ps

module comb2_tb;
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] O;
    wire Carry;

    comb2 uut
    (
        .A(A),
        .B(B),
        .O(O),
        .Carry(Carry)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, comb2_tb);

        A = 4'b1111;
        B = 4'b1111;

        $finish;
    end

    initial begin
        $monitor("A = %4b B = %4b | Carry=%1b O=%4b\n", A, B, Carry, O);
    end
endmodule


