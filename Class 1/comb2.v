module comb2
(
    input wire [3:0] A,
    input wire [3:0] B,
    output wire [3:0] O,
    output wire Carry
);
    wire [4:0] temp_output;
    // assign O = A + B;
    assign temp_output = {1'b0, A} + {1'b0, B};
    assign O = temp_output[3:0];
    assign Carry = temp_output[4];

endmodule