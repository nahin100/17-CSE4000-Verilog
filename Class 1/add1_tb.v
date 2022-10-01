`timescale 1ns/1ps

module add1_tb;
    reg [4:0] A;
    reg [4:0] B;
    wire [4:0] O;
    wire Carry;

    add1 
    #(
        .N(5)
    )
    uut
    (
        .A(A),
        .B(B),
        .O(O),
        .Carry(Carry)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, add1_tb);

        A = 5'b11111;
        B = 5'b11111;

        $finish;
    end

    initial begin
        $monitor("A = %5b B = %5b | Carry=%1b O=%5b\n", A, B, Carry, O);
    end
endmodule


