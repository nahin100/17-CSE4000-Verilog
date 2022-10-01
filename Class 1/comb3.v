module comb3
(
    input wire [3:0] A,
    input wire [3:0] B,
    output wire [3:0] O
);
    // assign O = A >> B;
    // assign O = A < B;
    // assign O = B == B;
    // assign O = A & B;
    // assign O = |B;
    // assign O = (A>B)||(B>A);
    // assign O = {A[3:2], B[1:0]};
    assign O = (A>B) ?A :B;
endmodule