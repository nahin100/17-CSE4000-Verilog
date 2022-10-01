module comb1 
(
    input wire D,
    input wire X,
    input wire A,
    output wire L
);

assign L = (~D)&(~X)&A | (~D)&X&A | D&(~X)&(~A) | D&(~X)&A | D&X&A;
    
endmodule