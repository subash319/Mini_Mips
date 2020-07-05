//program counter
//program counter is a 32 bit register where it points the next instruction to be executed

module pc
#(	
	parameter inst_width = 32
)
(
 input clk,
 input rst,
 output reg [inst_width-1:0] nxt_inst_addr
);

always@(posedge clk)
begin
	// For the next instruction 4 is added as it is a 32 bit instruction
	// 8bits= 1byte, then 32bits = 4byte so we add 4 byte
	if(!rst)
		nxt_inst_addr = nxt_inst_addr+4;
	else
		nxt_inst_addr = 0;
end
endmodule