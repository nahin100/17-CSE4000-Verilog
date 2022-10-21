`timescale 1ns/1ps

module sign_mag_add_tb;
    reg [4:0] A;
    reg [4:0] B;
    wire [4:0] O;

    sign_mag_add
    #(
        .N(5)
    )
    uut
    (
        .A(A),
        .B(B),
        .Sum(O)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, sign_mag_add_tb);

        A = 5'b10001;
        B = 5'b10001;
        #10;
        A = 5'b10011;
        B = 5'b00001;
        $finish;
    end

    initial begin
        $monitor("A = %5b B = %5b | O= %5b\n", A, B, O);
    end
endmodule


