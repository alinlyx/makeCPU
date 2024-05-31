//2.7
`include "pc_reg.v"
`include "rom.v"

module inst_fetch(
    input wire clk,
    input wire rst,
    output wire [31:0] inst_o
);

wire [5:0] pc;
wire rom_ce;

pc_reg pc_reg0(
    .clk(clk),
    .rst(rst),
    .pc(pc),
    .ce(rom_ce)
);

rom rom0(
    .addr(pc),
    .ce(rom_ce),
    .inst(inst_o)
);

endmodule