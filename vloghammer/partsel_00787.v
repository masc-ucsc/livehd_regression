module partsel_00787(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [1:27] x4;
  wire [24:5] x5;
  wire signed [6:31] x6;
  wire [25:0] x7;
  wire [29:2] x8;
  wire signed [5:28] x9;
  wire signed [3:28] x10;
  wire signed [4:30] x11;
  wire [0:29] x12;
  wire [0:31] x13;
  wire signed [27:7] x14;
  wire signed [27:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [25:3] p0 = 754824880;
  localparam [26:1] p1 = 551941740;
  localparam [7:27] p2 = 931393554;
  localparam [3:26] p3 = 361718791;
  assign x4 = p0;
  assign x5 = ({{p3[18 + s3 -: 1], x0[21]}, {2{p2[8 + s1]}}} + p1);
  assign x6 = p0[5 + s2 -: 3];
  assign x7 = x0[30 + s1 +: 3];
  assign x8 = p1;
  assign x9 = {2{x6[18 -: 1]}};
  assign x10 = x6[20 + s0 -: 8];
  assign x11 = p2;
  assign x12 = x7[19];
  assign x13 = (({x10, x12[21 + s3 -: 3]} ^ {2{(ctrl[1] || !ctrl[3] && ctrl[2] ? (x8[8 + s1 +: 6] & x9[15 +: 4]) : x7[14 +: 4])}}) ^ (({2{{x1[17 + s1], x6}}} + (((x7 ^ (p2[15 + s0 -: 3] + p1[11 + s3 -: 5])) - ((x4 - p3) - p1)) & (!ctrl[1] && !ctrl[0] || ctrl[1] ? p1 : p1[18 +: 2]))) + {(((x10[21 + s3 -: 4] + x9[4 + s1 -: 8]) + x7[8]) ^ (x9[7 + s0] | p3[9 +: 2])), p1[12 + s3]}));
  assign x14 = p2[21 + s1 -: 3];
  assign x15 = {((x9[16 + s2 +: 2] ^ x9[18 + s0]) ^ {x6[24 + s0 +: 4], x4[9 +: 1]}), (ctrl[3] && !ctrl[2] || !ctrl[3] ? x11[10 +: 1] : x4[16 + s1 +: 5])};
  assign y0 = p2[10 + s1 +: 2];
  assign y1 = {(p3[9 + s3] ^ p1), p1[9 +: 3]};
  assign y2 = {(x4 | (((x14[13 -: 4] ^ (x9 & x4)) - x4[14 + s3]) | x6[21 + s2 +: 8])), p0};
  assign y3 = p0[10 + s0];
endmodule
