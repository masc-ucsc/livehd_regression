module partsel_00920(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [7:29] x4;
  wire signed [4:30] x5;
  wire signed [25:1] x6;
  wire [7:26] x7;
  wire signed [25:6] x8;
  wire [0:27] x9;
  wire signed [6:31] x10;
  wire signed [7:24] x11;
  wire [29:1] x12;
  wire [7:31] x13;
  wire [4:25] x14;
  wire signed [29:6] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [6:26] p0 = 405684184;
  localparam signed [28:0] p1 = 811717861;
  localparam signed [26:0] p2 = 313919033;
  localparam signed [4:25] p3 = 79568991;
  assign x4 = (ctrl[2] && !ctrl[0] || ctrl[3] ? p2 : (x0[21 -: 1] & x2[2 + s2 +: 1]));
  assign x5 = p2[13];
  assign x6 = (ctrl[0] || !ctrl[3] && !ctrl[1] ? ({2{((x3[13] + (p1[13 -: 3] - p1)) | (!ctrl[3] && !ctrl[1] && !ctrl[1] ? x5 : x2[23 -: 1]))}} + (!ctrl[2] || ctrl[1] || !ctrl[2] ? (((p1[11 + s1 +: 1] ^ x0[13 -: 3]) & p3) + (p1[15] & p2[18 + s3 +: 1])) : ((x3[26 + s1 +: 8] & p3[7 + s0]) | {2{x1}}))) : (p0 ^ x1[14]));
  assign x7 = p1[13];
  assign x8 = (!ctrl[0] || !ctrl[2] && !ctrl[3] ? p1[4 + s2] : x3[9 + s2]);
  assign x9 = ((({2{(x7[10 + s3 -: 4] | p0[9 +: 1])}} ^ p2[12 -: 1]) ^ x8[9 +: 1]) + p0[11 + s2]);
  assign x10 = x2[10 + s2 -: 3];
  assign x11 = {2{((ctrl[1] || !ctrl[3] || ctrl[2] ? p3[8 + s3] : (p0[18] | (p2[19 +: 4] | x5[30 + s1 +: 3]))) | p2[18 + s3 +: 1])}};
  assign x12 = x10;
  assign x13 = {2{(({2{x3[20]}} - ({2{p3}} - x11[7 + s0 -: 1])) ^ ((!ctrl[0] || !ctrl[0] || ctrl[3] ? {p3[11], (x6[26 + s1 +: 4] - x1)} : {2{p0[15 -: 4]}}) & ((p1 | p3[18 -: 4]) | {2{(p2 + p1[11])}})))}};
  assign x14 = (!ctrl[2] || ctrl[1] && !ctrl[0] ? (p0[12 +: 1] | ((x1[9 + s2 +: 6] ^ (!ctrl[3] || ctrl[2] || !ctrl[2] ? x5[19 +: 2] : x10[14 +: 2])) + {2{p1[16 -: 3]}})) : x1[8 + s1 -: 4]);
  assign x15 = {((((p2[2 + s2 +: 4] | p2[4 + s3]) - p0[28 + s1 +: 6]) - ((p0[14 -: 4] - x7[21 + s0 +: 8]) - (p2 & x6[12 -: 3]))) - p0[0 + s2 -: 6]), p3};
  assign y0 = (!ctrl[3] || !ctrl[0] || !ctrl[3] ? (!ctrl[2] || ctrl[0] || ctrl[2] ? ((ctrl[0] && ctrl[0] || !ctrl[3] ? x4[6 + s3 +: 8] : ((x2[0 + s3 -: 1] + p1[20 + s1 -: 1]) + x15[19])) ^ x12) : (x14[6 + s0] + ({2{x7[16 + s1 -: 4]}} + (p2 | x2[13])))) : x4);
  assign y1 = p3[12 +: 3];
  assign y2 = (x13[31 + s2 -: 1] + x9[13]);
  assign y3 = x8;
endmodule
