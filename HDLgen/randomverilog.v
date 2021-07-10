module randomverilog(
	input clock,
	input reset,
	input [0:0] io_a0, io_a1, io_a2, io_a3, io_a4, io_a5, io_a6, io_a7, io_a8, io_a9, io_a10, io_a11, io_a12, io_a13, io_a14, io_a15, io_a16, io_a17, io_a18, io_a19,

	output [0:0] io_y);

	wire [0:0] y18;
	assign io_y = y18;

  // These two are NOT equivalent
	assign y18 = ((((io_a15))?(io_a0):(~ (($signed(io_a13) >>> io_a10)) )));
	//assign y18 = ((((io_a15))?(io_a0):(~ {($signed(io_a13) >>> io_a10)} )));

  // These two are equivalent
  //assign y18 = ~(($signed(io_a13) >>> io_a10));
  //assign y18 = ~{($signed(io_a13) >>> io_a10)};

endmodule