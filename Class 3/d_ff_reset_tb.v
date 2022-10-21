`timescale 1ns/1ps

module d_ff_reset_tb;
    reg clk;
    reg reset;
    reg d;
    wire q;

    d_ff_reset
    uut
    (
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );

    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, d_ff_reset_tb);

        reset = 1'b1;
        clk = 1'b0;
        d = 1'b0;
        #10;
        reset = 1'b0;
        d = 1'b1;
        #10;
        d = 1'b0;
        #10;
        $finish;
    end

    initial begin
        $monitor("clk = %1b reset = %1b d = %1b | q = %1b\n", clk, reset, d, q);
    end
endmodule


