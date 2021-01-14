module partsel_00628(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [4:29] x4;
  wire signed [7:27] x5;
  wire signed [6:24] x6;
  wire [5:27] x7;
  wire signed [30:7] x8;
  wire [2:24] x9;
  wire [28:4] x10;
  wire signed [2:28] x11;
  wire signed [31:4] x12;
  wire signed [30:4] x13;
  wire [0:28] x14;
  wire [30:0] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [26:2] p0 = 643091063;
  localparam [30:3] p1 = 489771333;
  localparam signed [4:30] p2 = 592311368;
  localparam [30:5] p3 = 50079999;
  assign x4 = (x3 ^ p2[23 -: 4]);
  assign x5 = {({2{(((p1[18 + s0 -: 1] + p0) & p1[16 + s3 -: 3]) - x4[25 + s3 -: 4])}} + (p2[21 + s0 +: 1] & p2)), (x1[19 +: 1] & (p0[10 +: 2] + {2{x0[8 + s2 +: 8]}}))};
  assign x6 = (p3[15 + s3 +: 1] ^ p2[20 + s2 +: 5]);
  assign x7 = x6[21 -: 4];
  assign x8 = {2{x7[16 + s0 -: 8]}};
  assign x9 = x1[10 + s2];
  assign x10 = p2[10 +: 4];
  assign x11 = (p1[17 -: 2] | (!ctrl[1] && ctrl[3] && ctrl[1] ? x10 : {2{{2{x3}}}}));
  assign x12 = p3[3 + s1 +: 3];
  assign x13 = (x8 | x11[21]);
  assign x14 = x1[8 + s2 -: 4];
  assign x15 = {{2{(!ctrl[1] || ctrl[1] && ctrl[1] ? x6[18 +: 2] : p3[1 + s1 +: 5])}}, (!ctrl[2] || !ctrl[0] || !ctrl[1] ? {2{{{(((x5[8 + s1 -: 3] - ((p2 | (p1 ^ p1[15 + s1 +: 8])) + x3[11 +: 1])) | p3) & (x4[13 + s3 -: 4] & x2[16 +: 1])), (p3[11] & x10[22 + s2 -: 7])}, x12[10 + s0 -: 7]}}} : (!ctrl[1] || !ctrl[1] && !ctrl[1] ? ({2{((x4[11 +: 3] ^ x13[0 + s2 -: 3]) - x8)}} | (ctrl[0] || !ctrl[0] && !ctrl[2] ? p2[15 + s2] : x6[16 +: 1])) : ((p2[9 + s0] & (((p3[19 +: 1] + x2) - x14[7 + s1 -: 8]) + p1[11 + s1])) | {2{p2}})))};
  assign y0 = x11;
  assign y1 = x10[15 + s1 -: 6];
  assign y2 = {(p1[16 +: 4] | {2{(p1 & x6[15 +: 4])}}), ({2{p0}} ^ p1)};
  assign y3 = (p0[14] - (((x9[8 + s0 +: 8] & {p1, x2[19]}) & p2) ^ p0[6 + s2 -: 8]));
endmodule
