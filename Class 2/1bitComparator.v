module bit1Comparator
(
    input wire A,
    input wire B,
    output wire O
);

assign O = (A==B) ? 1'b1 : 1'b0;

endmodule