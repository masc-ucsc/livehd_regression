module partsel_00831(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [2:28] x4;
  wire signed [3:29] x5;
  wire [5:31] x6;
  wire [29:0] x7;
  wire signed [6:31] x8;
  wire signed [28:6] x9;
  wire signed [24:5] x10;
  wire [30:6] x11;
  wire signed [26:0] x12;
  wire [7:31] x13;
  wire signed [28:6] x14;
  wire signed [2:28] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [29:2] p0 = 3467921;
  localparam signed [1:29] p1 = 279906767;
  localparam [31:2] p2 = 325489015;
  localparam signed [2:29] p3 = 677365871;
  assign x4 = {{2{x1[19 +: 1]}}, ((ctrl[3] && ctrl[3] || !ctrl[2] ? x3[11 + s1] : ((!ctrl[3] || !ctrl[3] && !ctrl[0] ? (x2[3 + s3 -: 3] ^ p2[18 + s3]) : x1[6 + s2]) + (!ctrl[2] || !ctrl[3] || ctrl[2] ? p0[19 +: 1] : p1[12]))) ^ (x1[11 +: 2] + (!ctrl[3] && !ctrl[1] && !ctrl[1] ? (!ctrl[0] || !ctrl[0] && !ctrl[3] ? p0[3 + s0 +: 2] : (x0 & p0[18])) : (p2 + x2[1 + s3 -: 6]))))};
  assign x5 = x1[20 + s2 +: 1];
  assign x6 = x2[16 +: 2];
  assign x7 = {2{p3[22 -: 3]}};
  assign x8 = x2[4 + s0 +: 7];
  assign x9 = (p0[23 + s2 -: 8] ^ p2[12]);
  assign x10 = ({{2{({2{(x7[16 + s3 +: 6] & x5[21 -: 3])}} & (ctrl[0] || !ctrl[0] && !ctrl[0] ? p2[10] : ((p1[15 +: 3] + p2) & x6[18 +: 4])))}}, ({2{(x8[10 +: 1] ^ (p3 + (x8 ^ x2[16 +: 1])))}} - {2{(((x5 & p3[31 + s1 +: 5]) ^ p1) ^ x9[9 +: 1])}})} & ((ctrl[3] && !ctrl[2] || !ctrl[0] ? (ctrl[0] || !ctrl[1] || ctrl[1] ? {x0, (p3 & x4[14 + s1])} : (!ctrl[0] && !ctrl[2] && ctrl[0] ? p1 : p1[14 + s1 -: 8])) : (x1[21 -: 2] | (x1[22] ^ p2[13 -: 3]))) - p0[4 + s2 +: 1]));
  assign x11 = (((ctrl[1] || !ctrl[0] || ctrl[1] ? (!ctrl[2] && !ctrl[0] && !ctrl[0] ? (!ctrl[2] && ctrl[1] && !ctrl[2] ? p3[20 -: 4] : (x2[8 + s0 +: 4] & (x4[12] | x4[19 + s2 +: 3]))) : (p0[3 + s3 -: 7] ^ p1[12 + s1 -: 8])) : {2{{x4[12 + s3 -: 3], p3[20 -: 1]}}}) - x1[9 + s0]) - ((ctrl[3] && ctrl[3] && ctrl[2] ? p0 : (x10[11] | p2[17 + s0])) + x10[0 + s1 -: 1]));
  assign x12 = ((x1[21 -: 1] + x10[13 +: 3]) & p0);
  assign x13 = (x2[17] & ((!ctrl[1] || ctrl[1] && ctrl[3] ? ({x6[20], x12} ^ (p3[18 +: 2] & x7[13 +: 2])) : x0) + p0[19 + s3]));
  assign x14 = p1[16 + s3];
  assign x15 = {x9[19 +: 3], x10[22 -: 4]};
  assign y0 = (ctrl[2] && ctrl[0] || ctrl[3] ? (p3[13 + s1] & {2{(p3 + x6)}}) : (x14[20 -: 4] | {2{x6[15 + s1 +: 7]}}));
  assign y1 = (p3 & (!ctrl[1] && ctrl[0] || !ctrl[3] ? (p2[14 -: 3] & (ctrl[1] && !ctrl[2] || !ctrl[2] ? x8[10 + s2] : {x10[21], p3[13 +: 3]})) : {p3[26 + s1 +: 2], (x1[13 -: 2] + (x9 & x15[2 + s2 -: 1]))}));
  assign y2 = (p3[17 + s1 +: 1] & {2{(!ctrl[2] || ctrl[1] || !ctrl[0] ? (ctrl[0] || !ctrl[2] || ctrl[3] ? ((p0 ^ p0) & x10[18 -: 2]) : {p1[21], x10}) : p2[11 +: 3])}});
  assign y3 = p1;
endmodule
