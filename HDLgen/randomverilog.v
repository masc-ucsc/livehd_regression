module randomverilog(
	input clock,
	input reset,
	input signed [5:0] io_a0,
	input [6:0] io_a1,
	input signed [7:0] io_a2,
	input [8:0] io_a3,
	input signed [9:0] io_a4,
	output [39:0] io_y);

	wire signed [5:0] y0;
	wire [6:0] y1;
	wire signed [7:0] y2;
	wire [8:0] y3;
	wire signed [9:0] y4;
	assign io_y = {y0,y1,y2,y3,y4};

	assign y0 = ((~io_a0[5:0]) | ((io_a1[5:0]) ^ (~io_a4[7:2])));
	assign y1 = ((((io_a2[6:0]) * (io_a3[6:0])) / ((((~io_a2[6:0]) >> (((((io_a3[6:0]) >> ((~io_a4[6:0]) >> ((io_a2[6:0]) + (~io_a1[6:0])))) - ((io_a3[6:0]) & ((io_a4[6:0]) << (~io_a4[8:2])))) | ((~io_a1[6:0]) | (~io_a1[6:0]))) - (~io_a2[6:0]))) >> (~io_a4[8:2])) + (~io_a1[6:0]))) & ((io_a2[6:0]) / ((((~io_a1[6:0]) * (((io_a1[6:0]) * (((io_a4[6:0]) ^ (io_a4[8:2])) & (~io_a1[6:0]))) % ((io_a4[6:0]) / ((~io_a3[6:0]) & (io_a4[7:1]))))) % (io_a1[6:0])) / ($signed(~io_a3[7:1]) >>> ((~io_a1[6:0]) & (io_a1[6:0]))))));
	assign y2 = ((io_a2[7:0]) % (((((io_a2[7:0]) % ((~io_a4[7:0]) | (io_a2[7:0]))) << ((~io_a3[7:0]) / (~io_a2[7:0]))) | (io_a2[7:0])) << ((io_a4[7:0]) * (((~io_a2[7:0]) * (((~io_a2[7:0]) * (((io_a3[7:0]) / (~io_a3[7:0])) / (~io_a4[7:0]))) % (io_a2[7:0]))) | (~io_a3[7:0])))));
	assign y3 = ((io_a3[8:0]) | (~io_a3[8:0]));
	assign y4 = ((~io_a4[9:0]) % (~io_a4[9:0]));
endmodule