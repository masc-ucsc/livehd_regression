module partsel_00855(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [4:24] x4;
  wire [31:1] x5;
  wire signed [24:6] x6;
  wire [5:30] x7;
  wire [5:28] x8;
  wire [0:26] x9;
  wire [30:7] x10;
  wire signed [1:30] x11;
  wire signed [2:27] x12;
  wire signed [27:3] x13;
  wire signed [31:5] x14;
  wire signed [2:30] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [27:1] p0 = 46593255;
  localparam signed [1:28] p1 = 194946672;
  localparam [26:7] p2 = 692191571;
  localparam signed [3:28] p3 = 777694560;
  assign x4 = (((x0 ^ (p0[21 -: 1] - (p3 - (p2[18 +: 1] | ((x2[5 + s3] + (p1[5 + s1 -: 6] | x0[21])) | x2))))) | x0) - x3[10 +: 2]);
  assign x5 = (x0[7 + s0 +: 4] ^ x1);
  assign x6 = p2[9];
  assign x7 = {{{2{{(p3[0 + s0 -: 5] ^ x0[6 + s1 +: 8]), p3}}}, x0}, (ctrl[2] || !ctrl[3] && ctrl[1] ? (!ctrl[1] || ctrl[1] && !ctrl[3] ? ((p0 ^ p3[4 + s1]) | (x4[28 + s0 -: 1] ^ x5[14 +: 3])) : ((x0[15 + s0] | p1[17 -: 1]) + x0[9])) : {2{x2[30 + s0 +: 2]}})};
  assign x8 = x0[15 -: 1];
  assign x9 = p0[15];
  assign x10 = p3[4 + s1];
  assign x11 = p2[19 + s0];
  assign x12 = p0[10];
  assign x13 = p2[10 +: 1];
  assign x14 = x9;
  assign x15 = x14[13 +: 1];
  assign y0 = (x10[21] | {{2{x1[14 + s3 -: 8]}}, x0[30 + s0 -: 8]});
  assign y1 = p0[4 + s3];
  assign y2 = (x15[5 + s0] ^ (p3[19] ^ x15[15 -: 2]));
  assign y3 = {2{{{2{(p2[28 + s2 +: 7] & (x3[12] | x0[24 + s0 +: 2]))}}, (p2 - {2{(x7[25 + s1 -: 7] - (p3[9 +: 3] + (p1 | x11[19 +: 4])))}})}}};
endmodule
