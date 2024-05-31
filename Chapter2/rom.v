//2.7
module rom(
    input wire ce,
    input wire [5:0] addr,
    output reg [31:0] inst
);

reg [31:0] rom [63:0];
initial $readmemh ("D:\\makeCPU\\makeCPU\\rom.data",rom);

always@ (*)
begin
    if (ce == 1'b0)
        inst <= 0;
    else
        inst <= rom[addr];
end
endmodule