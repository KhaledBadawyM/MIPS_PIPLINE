module top_module(clk);
 reg [31:0]pc ; 
 [5:0]opcode ;
 [4:0]rs;
 [4:0]rt;
 [4:0]rd;
 [4:0]shamt;
 [5:0]funct;
 [15:0]immediate;
 [26:0]jump ;

input wire clk;

initial 
begin
 pc = 0 ;
 
end

always@(posedge clk)
begin
	pc = pc + 4;
end

inst_mem I(pc,opcode ,rs,rt,rd,shamt,funct,immediate,jump );






endmodule
