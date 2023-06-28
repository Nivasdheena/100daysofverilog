module ucl4(input clk,rst,load,
	input[3:0]d,
	output reg[3:0]count);
always@ (posedge clk)
begin
 if (rst)
  count<=4'b0;
 else if(load)
  count<=d;
 else
  count<=count+1'b1;
end
endmodule
