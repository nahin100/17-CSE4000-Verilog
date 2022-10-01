module add1
#(parameter N = 4)
(
    input wire [N-1:0] A,
    input wire [N-1:0] B,
    output wire [N-1:0] O,
    output wire Carry
);
    localparam N1 = N-1;
    wire [N:0] temp_output;
    // assign O = A + B;
    assign temp_output = {1'b0, A} + {1'b0, B};
    assign O = temp_output[N1:0];
    assign Carry = temp_output[N];

endmodule