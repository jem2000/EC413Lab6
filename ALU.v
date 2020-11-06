`timescale 1ns / 1ns


module ALU(a,b, func, out, zero_flag);


	 parameter size = 32;
	 
    input [size-1:0] a;
    input [size-1:0] b;
	 input [2:0] func;
    output reg [size-1:0] out;
    output reg zero_flag;
	 
	 	
	always @(*) begin
	case (out) 
	0: zero_flag = 1'b1;
	default: zero_flag = 1'b0;
	endcase
	end
	
	always @(*) begin
		if (func == 3'd0) //ADD 0010 0000, or 20h
		out = a + b;
		else if (func == 3'd1) //SUB 0010 0010, or 22h
		out = a - b;
		else if (func == 3'd2) //AND 0010 0100, or 24h
		out = a & b;
		else if (func == 3'd3) //OR 0010 0101, or 25h
		out = a | b;
		else if (func == 3'd4) //NOR??
		out = ~(a | b);
		else if (func == 3'd5) begin//SLT 0010 1010, or 2Ah
		  if ($signed(a) < $signed(b))
		      out = 32'h0000_0001;
		  else out = 32'h0000_0000;
		end
		else
		out = 0;
   end



endmodule
