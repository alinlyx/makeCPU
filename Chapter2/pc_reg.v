//2.7
module pc_reg(
    input wire clk,
    input wire rst,
    output reg [5:0] pc,
    output reg ce
);
always@ (posedge clk)
begin
    if (rst == 1'b1) 
        ce <= 0;
    else
        ce <= 1'b1;
end
always@ (posedge clk)
begin
    if (ce == 1'b0)
        pc <= 0;
    else 
        pc <= pc + 6'b1;
end
endmodule
