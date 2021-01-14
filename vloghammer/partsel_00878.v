module partsel_00878(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [5:31] x4;
  wire signed [7:30] x5;
  wire signed [31:3] x6;
  wire signed [24:5] x7;
  wire [5:28] x8;
  wire [6:31] x9;
  wire [0:29] x10;
  wire signed [3:29] x11;
  wire [26:6] x12;
  wire [2:28] x13;
  wire signed [4:28] x14;
  wire signed [5:31] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [31:7] p0 = 531400739;
  localparam [3:24] p1 = 336411620;
  localparam signed [5:29] p2 = 986846365;
  localparam [3:25] p3 = 875463773;
  assign x4 = ({{2{p0[5 + s2]}}, (((p1[10] - x3[14 +: 1]) | p2[20]) + x2)} & {2{(x1[1 + s0 -: 7] & (!ctrl[3] && !ctrl[2] && !ctrl[0] ? x1[8 + s1] : (x0[17 + s3 +: 1] | (p0 + p0[16 -: 3]))))}});
  assign x5 = (ctrl[2] || !ctrl[3] && !ctrl[1] ? ((x1[16 + s2] & x4[19 + s2]) & (p0 ^ (ctrl[1] || ctrl[2] || !ctrl[2] ? {x3[8 +: 4], (p3[26 + s2 +: 5] - x1[7 + s0])} : {x1[31 + s2 +: 4], p3[23 -: 3]}))) : {2{x3[11 + s2 -: 6]}});
  assign x6 = (x1[13 +: 1] - p1[12 -: 3]);
  assign x7 = p3[3 + s2 +: 1];
  assign x8 = ((!ctrl[2] && !ctrl[0] && ctrl[0] ? x3[18 -: 3] : {2{x4[5 + s3]}}) & ((x1[24 + s3 +: 4] ^ ((p1[18 + s0 +: 3] | x7[25 + s0 +: 3]) ^ ((x4[29 + s0 +: 3] | x7[17 +: 4]) | x3[14 +: 2]))) + p3[21]));
  assign x9 = ((x1[20 + s2 -: 7] - (ctrl[3] || !ctrl[2] && !ctrl[1] ? p2[14 + s2] : {x1[23 + s0 +: 5], x6[23 -: 4]})) & x6[8 + s3]);
  assign x10 = x5;
  assign x11 = p0[10 +: 2];
  assign x12 = {2{(x9[1 + s0 -: 8] & (x4[14 -: 2] & p3[11 + s1 -: 7]))}};
  assign x13 = x4;
  assign x14 = {2{({x7[17 -: 1], x7} & x5[12 + s0])}};
  assign x15 = {2{x3[21]}};
  assign y0 = (x10[11] | x1[12 + s0 -: 4]);
  assign y1 = p2[23 -: 4];
  assign y2 = ({p2[3 + s1 -: 3], x13[12 -: 3]} + x3[7 + s1 +: 3]);
  assign y3 = p1[18 -: 2];
endmodule
