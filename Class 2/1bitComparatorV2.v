module bit1ComparatorV2
(
    input wire A,
    input wire B,
    output reg O
);

reg p0, p1;

// always @(A, B) 
// begin
//     O = (A==B) ? 1'b1 : 1'b0;
// end

always @(A, B) 
begin
    p0 = ~A & ~B;
    p1 = A & B;
    O = p0 | p1;
end

// always @(*) 
// begin
//    if (A==B)
//    begin
//         O = 1'b1;
//    end
//     else
//     begin
//         O = 1'b0;
//     end
// end

// always @(*) 
// begin
//     case({A,B})
//         2'b00: O = 1'b1;
//         2'b01: O = 1'b0;
//         2'b10: O = 1'b0;
//         2'b11: O = 1'b1;
//         default: O = 1'b0;
//     endcase
// end

endmodule