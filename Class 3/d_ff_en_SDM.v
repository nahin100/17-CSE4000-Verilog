module d_ff_en_SDM
(
    //asynchronous reset
    //synchronous en
    input wire clk,
    input wire reset,
    input wire en,
    input wire d,
    output reg q
);

reg r_reg, r_next;

//memory
always @(posedge clk, posedge reset) 
begin
    if(reset)
        r_reg <= 1'b0;
    else
        r_reg <= r_next;
end

//next state logic
// assign r_next = (en) ? d : r_reg;
always @(*)
begin
    if(en)
        r_next = d;
    else
        r_next = r_reg;
end

//output logic
// assign q = r_reg;
always @(*)
begin
    q = r_reg;
end

endmodule