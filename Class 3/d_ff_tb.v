`timescale 1ns/1ps

module d_ff_tb;
    reg clk;
    reg d;
    wire q;

    d_ff 
    uut
    (
        .clk(clk),
        .d(d),
        .q(q)
    );

    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, d_ff_tb);

        clk = 1'b0;
        d = 1'b0;
        #10;
        d = 1'b1;
        #10;
        d = 1'b0;
        #10;
        $finish;
    end

    initial begin
        $monitor("clk = %1b d = %1b | q = %1b\n", clk, d, q);
    end
endmodule


