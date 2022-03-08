module randomverilog(

	input clock,
	input reset,
	input signed [0:0] io_a0,
	input signed [0:0] io_a1,
	input signed [0:0] io_a2,
	output [2:0] io_y);




	wire [0:0] y0;
	wire [0:0] y1;
	wire [0:0] y2;



	assign y0 = (~(((!io_a1[0:0])) - ((io_a1[0]&&io_a2[0]))))?$signed(io_a2[0]):$signed(~(!io_a0[0:0]));
	assign y1 = (~((~(io_a2[0]<io_a1[0])) & ((io_a1[0]!=io_a2[0]))))?($signed(~(y2[0]>io_a1[0])) - $signed((!io_a2[0:0]))):$signed((io_a2[0]||io_a2[0]));
	assign y2 = ((~(io_a1[0]>io_a1[0])) - (~io_a2[0]))?$signed(~(io_a0[0]>io_a2[0])):($signed(~y1[0]) + $signed(~y1[0]));

	assign io_y = {y2,y1,y0};
endmodule

randomverilog.v:comb_loop:306:399
randomverilog.v:comb_loop:456:554
