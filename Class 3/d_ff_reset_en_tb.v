`timescale 1ns/1ps

module d_ff_reset_en_tb;
    reg clk;
    reg reset;
    reg en;
    reg d;
    wire q;

    d_ff_reset_en
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
        $dumpvars(0, d_ff_reset_en_tb);

        reset = 1'b1;
        en = 1'b0;
        clk = 1'b0;
        d = 1'b0;
        #10;
        reset = 1'b0;
        d = 1'b1;
        #10;
        d = 1'b0;
        #10;
        d = 1'b1;
        en = 1'b1;
        #10;
        $finish;
    end

    initial begin
        $monitor("clk = %1b reset = %1b en = %1b d = %1b | q = %1b\n", clk, reset, en, d, q);
    end
endmodule


