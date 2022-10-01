module decoder2to4
(
    input wire [1:0] A,
    input wire E,
    output wire [3:0] O
);
    assign O = (E & ~A[1] & ~A[0]) ? 4'b0001 :
               (E & ~A[1] &  A[0]) ? 4'b0010 : 
               (E &  A[1] & ~A[0]) ? 4'b0100 :
               (E &  A[1] &  A[0]) ? 4'b1000 : 
                                     4'b0000 ;
endmodule