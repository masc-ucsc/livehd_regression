module partsel_00940(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [4:25] x4;
  wire signed [30:1] x5;
  wire [6:29] x6;
  wire signed [25:3] x7;
  wire signed [30:1] x8;
  wire [31:3] x9;
  wire [5:26] x10;
  wire [2:30] x11;
  wire [31:2] x12;
  wire signed [0:29] x13;
  wire signed [28:4] x14;
  wire signed [24:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [6:29] p0 = 516082236;
  localparam signed [27:7] p1 = 390297568;
  localparam signed [7:28] p2 = 258667186;
  localparam [6:28] p3 = 755930134;
  assign x4 = ((x3[17 +: 3] + (((x1[21] + (x1[20 + s1 -: 4] | (x0[14 +: 1] | (x0[10 + s1 -: 8] - p3[24 + s2 -: 2])))) ^ {2{p2[22]}}) | ((p2[20 -: 1] | p2[2 + s3 +: 4]) & (x2[8 +: 3] & x0[21 -: 3])))) + x0[20 -: 2]);
  assign x5 = x3;
  assign x6 = ({p0[12 +: 4], p2[8 + s0 -: 1]} ^ (!ctrl[0] && ctrl[2] || !ctrl[2] ? {2{x1[2 + s0 -: 7]}} : ((p0[19 -: 1] - p1[0 + s3 +: 6]) ^ p1)));
  assign x7 = x0[31 + s2 -: 8];
  assign x8 = x2[7 + s3];
  assign x9 = {2{(p1 ^ p1[31 + s3 +: 4])}};
  assign x10 = (((x9[9] | x3[6 + s2]) & (x3[22] | {{x0[15 -: 3], p2[18 + s1 -: 8]}, {2{p0[20 -: 4]}}})) + {(((p3[10 + s2 +: 7] | ((x9[15 -: 2] - p1[29 + s1 +: 5]) | p0[12])) - (ctrl[1] && !ctrl[1] && ctrl[0] ? x3[13] : p0[20 -: 1])) ^ (p0 | {x0, ((x1[14] | x3[14 +: 2]) ^ p1)})), p0[30 + s1 +: 3]});
  assign x11 = (p0[16 -: 2] ^ (ctrl[1] && ctrl[1] && ctrl[1] ? x0[28 + s3 -: 1] : {2{x1}}));
  assign x12 = (x11[20 -: 4] & p2);
  assign x13 = x2;
  assign x14 = p1[0 + s3 +: 1];
  assign x15 = x2;
  assign y0 = (x4[15 +: 3] + x2[10]);
  assign y1 = ({2{(p1[17 + s2] + (x4 - p3))}} - x14[13 +: 1]);
  assign y2 = p3[14 -: 1];
  assign y3 = ((p0[6 + s2] - ({x7, (((p0[16 + s3 -: 4] ^ x11[8 +: 3]) ^ x3[3 + s1 +: 8]) ^ x13[14 -: 2])} | x4)) & x8[28 + s3 -: 7]);
endmodule
