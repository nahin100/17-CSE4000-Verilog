module decoder2to4
(
    input wire [1:0] A,
    input wire en,
    output reg [3:0] O
);

always @(*)
begin
    O = (en==1'b0)    ? 4'b0000 : 
        (A==2'b00)    ? 4'b0001 : 
        (A==2'b01)    ? 4'b0010 : 
        (A==2'b10)    ? 4'b0100 : 
        (A==2'b11)    ? 4'b1000 :
        4'b1111;    
end

// always @(*) 
// begin
//     if (en==1'b1)
//     begin
//         if (A==2'b00)
//                 O = 4'b0001;
//         else if (A==2'b01)
//                 O = 4'b0010;
//         else if (A==2'b10)
//                 O = 4'b0100;
//         else
//                 O = 4'b1000;
//     end
//     else
//         O = 4'b0000;
// end

always @(*) 
begin
    case({en,A})
        3'b100: O = 4'b0001;
        3'b101: O = 4'b0010;
        3'b110: O = 4'b0100;
        3'b111: O = 4'b1000;
        default: O = 4'b0000;
    endcase
end

endmodule