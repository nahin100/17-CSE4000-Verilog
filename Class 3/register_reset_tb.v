`timescale 1ns/1ps

module register_reset_tb;
    reg clk;
    reg reset;
    reg en;
    reg [7:0] d;
    wire [7:0] q;

    register_reset
    uut
    (
        .clk(clk),
        .reset(reset),
        .en(en),
        .d(d),
        .q(q)
    );

    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, register_reset_tb);

        reset = 1'b1;
        en = 1'b0;
        clk = 1'b0;
        d = 8'b0000_0000;
        #10;
        reset = 1'b0;
        d = 8'b0000_1111;
        #10;
        d = 8'b0000_1100;
        #10;
        d = 8'b1111_0000;
        en = 1'b1;
        #10;
        $finish;
    end

    initial begin
        $monitor("clk = %1b reset = %1b en = %1b d = %8b | q = %8b\n", clk, reset, en, d, q);
    end
endmodule


