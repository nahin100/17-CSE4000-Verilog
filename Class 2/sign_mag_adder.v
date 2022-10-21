module sign_mag_add
#(parameter N = 4)
(
    input wire [N-1:0] A,
    input wire [N-1:0] B,
    output reg [N-1:0] Sum
);

reg [N-2:0] mag_A, mag_B, mag_Sum, mag_max, mag_min;
reg  sign_A, sign_B, sign_Sum;

always @(*)
begin
    sign_A = A[N-1];
    sign_B = B[N-1];

    mag_A = A[N-2:0];
    mag_B = B[N-2:0];

    if(mag_A > mag_B)
    begin
        mag_max = mag_A;
        mag_min = mag_B;
        sign_Sum = sign_A;
    end
    else
    begin
        mag_max = mag_B;
        mag_min = mag_A;
        sign_Sum = sign_B;
    end

    if(sign_A==sign_B)
        mag_Sum = mag_max+mag_min;
    else
        mag_Sum = mag_max-mag_min;

    Sum = {sign_Sum, mag_Sum};
end

endmodule