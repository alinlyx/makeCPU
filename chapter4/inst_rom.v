//4.3.1
`include "defines.v"
module inst_rom(
    input wire ce,
    input wire [`InstAddrBus] addr,
    output reg [`InstBus] inst
);

reg [`InstBus] inst_mem [0 : `InstMemNum-1];

initial $readmemh ("D:\\makeCPU\\inst_rom.data",inst_mem);
//initial $readmemh ("D:\\makeCPU\\makeCPU\\rom.data",rom);

/*
initial 
begin
    $readmemh ("inst_rom.data",inst_mem);
end
*/

always@ (*)
begin
    if (ce == `ChipDisable)
        inst <= `ZeroWord;
    else
        inst <= inst_mem[addr[`InstMemNumLog2+1:2]];
end

endmodule