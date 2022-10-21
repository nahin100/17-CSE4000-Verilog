module register_reset
(
    input wire clk,
    input wire reset,
    input wire en,
    input wire [7:0] d,
    output reg [7:0] q
);

always @(posedge clk, posedge reset) 
begin
    if(reset)
        q <= 8'b0000_0000;
    else if(en)
        q <= d;
end

endmodule