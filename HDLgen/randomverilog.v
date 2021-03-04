module random_verilog(
	input [5:0] io_a0,
	input [6:0] io_a1,
	input [7:0] io_a2,
	input [8:0] io_a3,
	input [9:0] io_a4,
	input [10:0] io_a5,
	output [50:0] io_y);

	wire [5:0] y0;
	wire [6:0] y1;
	wire [7:0] y2;
	wire [8:0] y3;
	wire [9:0] y4;
	wire [10:0] y5;
	assign io_y = {y0,y1,y2,y3,y4,y5};

	assign y0 = {(~io_a2[1:0]),(~(^io_a3[7:6])),(~(^io_a1[6:5])),((io_a0[3:1]>io_a3[7:5])),(io_a5[0])};
	assign y1 = {(io_a3[6]),((&io_a2[7:6])),((io_a1[6:5]>io_a3[7:6])),((io_a2[6:4]>io_a1[2:0])),(io_a0[2:1]),(io_a3[7])};
	assign y2 = {((^io_a5[3:2])),(io_a5[5]),((&io_a3[6:3])),(~io_a4[6:5]),(~(io_a5[10:8]>io_a1[5:3])),(~io_a4[7]),((io_a1[6:5]!=io_a1[1:0]))};
	assign y3 = {((|io_a2[7:6])),(~(|io_a3[4:3])),(io_a3[3:2]),(~(!io_a2[4:3])),(io_a0[1:0]),(io_a3[1:0])};
	assign y4 = {(~io_a3[4:3]),(io_a2[0]),(~io_a0[2:1]),(~io_a1[1:0]),(~(!io_a0[5:1])),(io_a3[4:3])};
	assign y5 = {(io_a2[5:1]),((io_a3[5:4]<io_a3[6:5])),(~(|io_a2[7:6])),(io_a0[4:3]),(~(^io_a3[4:0])),(~io_a2[1])};
endmodule