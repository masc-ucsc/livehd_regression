module partsel_00783(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [26:2] x4;
  wire signed [5:25] x5;
  wire signed [5:29] x6;
  wire signed [6:25] x7;
  wire [28:0] x8;
  wire [2:24] x9;
  wire signed [26:5] x10;
  wire [28:5] x11;
  wire signed [29:7] x12;
  wire signed [24:4] x13;
  wire [7:28] x14;
  wire signed [7:24] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [28:7] p0 = 76563741;
  localparam [30:6] p1 = 857522096;
  localparam [2:26] p2 = 286140743;
  localparam [3:25] p3 = 435491040;
  assign x4 = x1[12 -: 2];
  assign x5 = x2[24 + s3 -: 6];
  assign x6 = (ctrl[1] || ctrl[3] || ctrl[3] ? x4[18 + s1 +: 7] : x4);
  assign x7 = p1[7 + s1];
  assign x8 = ((p1[12 -: 3] ^ ((p0[23 -: 1] ^ (p3 ^ p3[8 + s2])) ^ x2[14 -: 2])) - (ctrl[2] || ctrl[0] || ctrl[1] ? p0[6 + s0] : p1[18 -: 2]));
  assign x9 = x7[17 + s2];
  assign x10 = {p0[19], x5};
  assign x11 = p2;
  assign x12 = {2{x6[20]}};
  assign x13 = (({2{p3[18 -: 2]}} - ((ctrl[2] || ctrl[2] || !ctrl[1] ? (!ctrl[2] || !ctrl[0] || ctrl[2] ? x0[8 + s1] : p3[23]) : p0[17 +: 2]) | (x0[12] - x6[13 -: 4]))) + x2[12 + s2 -: 4]);
  assign x14 = x3[14 -: 4];
  assign x15 = (!ctrl[2] || !ctrl[0] || !ctrl[1] ? {2{(p0[10 + s0] + (!ctrl[1] && ctrl[1] || ctrl[2] ? (x4[15 -: 4] | x14[8 +: 1]) : (((p3[13] - (p1 + (x13[16 + s0 -: 5] ^ p1))) + p2[14]) + x2[16 +: 2])))}} : ((!ctrl[1] && ctrl[0] && !ctrl[3] ? (((p1 & p3[12 + s3]) ^ p2[8]) - (p2[10] & p3)) : (!ctrl[0] && ctrl[3] && !ctrl[1] ? (p1[29 + s3 +: 1] - x3[1 + s2 +: 1]) : x14[25 + s1 -: 8])) | x11[26 + s3 +: 1]));
  assign y0 = {p3[11 + s3 -: 8], p3[10 + s3 +: 1]};
  assign y1 = p3;
  assign y2 = {2{({(((p1[15 +: 1] - x10[22 + s2 +: 4]) ^ x9[9]) | x14[0 + s3 -: 1]), ({2{p1}} | x14[19 +: 3])} + {{{2{x9[4 + s3]}}, ((p0[13 -: 1] + p3[19]) ^ p0[10 + s2 +: 1])}, x7[17]})}};
  assign y3 = {(x10[19 -: 2] ^ (x14[9 + s0] - p2[19 -: 4])), p3[20 -: 4]};
endmodule
