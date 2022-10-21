`timescale 1ns/1ps

module decoder2to4_tb;
    reg [1:0] A;
    reg en;
    wire [3:0] O;

    decoder2to4 
    uut
    (
        .A(A),
        .en(en),
        .O(O)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, decoder2to4_tb);

        A = 2'b11;
        en = 1'b0;
        #10;
        A = 2'b00;
        en = 1'b1;
        #10;
        A = 2'b01;
        en = 1'b1;
        #10;
        A = 2'b10;
        en = 1'b1;

        $finish;
    end

    initial begin
        $monitor("en = %1b A = %2b | O = %4b\n", en, A, O);
    end
endmodule


