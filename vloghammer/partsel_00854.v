module partsel_00854(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [27:6] x4;
  wire signed [28:1] x5;
  wire signed [30:4] x6;
  wire signed [1:27] x7;
  wire signed [0:26] x8;
  wire [2:31] x9;
  wire [28:3] x10;
  wire [1:24] x11;
  wire signed [29:4] x12;
  wire signed [1:25] x13;
  wire signed [3:25] x14;
  wire signed [28:1] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [28:7] p0 = 913335836;
  localparam [0:25] p1 = 71788162;
  localparam signed [24:5] p2 = 150445927;
  localparam signed [0:30] p3 = 178597884;
  assign x4 = (x3[23] & (ctrl[3] || ctrl[3] && ctrl[3] ? x0[9 +: 3] : ((ctrl[1] || ctrl[0] && ctrl[3] ? x2[15 -: 3] : x0[11]) ^ x1[21])));
  assign x5 = {x2, p0[12 +: 1]};
  assign x6 = p2[16 +: 2];
  assign x7 = (p2[13 -: 4] & (x0[19 + s1] | x4[25 + s2 -: 6]));
  assign x8 = p0[17 + s3 +: 6];
  assign x9 = p3[9 +: 1];
  assign x10 = {2{p1}};
  assign x11 = x9[14 -: 3];
  assign x12 = p3[27 + s2 -: 7];
  assign x13 = p2[11 + s3 +: 7];
  assign x14 = (p2[11 + s0] + p0[8 +: 3]);
  assign x15 = x13;
  assign y0 = p0[11 + s0];
  assign y1 = ((((p1[26 + s0 +: 7] + p3[25 + s1 +: 3]) & (ctrl[0] && !ctrl[0] || ctrl[2] ? x11[16 +: 4] : x1)) ^ {2{x9[15 + s3]}}) | ({2{x15[0 + s2 -: 6]}} | (((p2[4 + s2 -: 6] - p1[23]) ^ x5[8 + s2 -: 1]) | ((x7[12] + p2[25 + s2 -: 3]) + (ctrl[3] && !ctrl[0] && !ctrl[3] ? p3[22 -: 1] : p1)))));
  assign y2 = x6[17 + s1 -: 4];
  assign y3 = p1[20 + s0 -: 4];
endmodule
