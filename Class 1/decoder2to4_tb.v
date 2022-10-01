`timescale 1ns/1ps

module decoder2to4_tb;
    reg [1:0] A;
    reg       E;
    wire [3:0] O;

    decoder2to4 uut
    (
        .A(A),
        .E(E),
        .O(O)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, decoder2to4_tb);

        A = 4'b10;
        E = 1'b0;

        $finish;
    end

    initial begin
        $monitor("E = %b A = %2b | O=%4b\n", E, A, O);
    end
endmodule


