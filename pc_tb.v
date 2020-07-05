//Test bench for program counter

module pc_tb();

reg clk;
reg rst;
wire [31:0] nxt_inst_addr;

pc DUT
(
	.clk(clk),
	.rst(rst),
	.nxt_inst_addr(nxt_inst_addr)
);

initial
begin
	clk = 1'b0;
	rst = 1'b1;
	// Wait for 100ns
	#100
	rst = 1'b0;
end
always #10 clk = ~clk;
endmodule