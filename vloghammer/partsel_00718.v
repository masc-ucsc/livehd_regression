module partsel_00718(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [3:28] x4;
  wire signed [3:31] x5;
  wire signed [30:3] x6;
  wire signed [6:26] x7;
  wire [26:3] x8;
  wire signed [1:26] x9;
  wire [7:29] x10;
  wire signed [3:25] x11;
  wire [26:5] x12;
  wire [0:27] x13;
  wire signed [4:27] x14;
  wire [31:4] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [1:29] p0 = 570982875;
  localparam [26:6] p1 = 547544152;
  localparam signed [6:31] p2 = 27946413;
  localparam [25:3] p3 = 364041626;
  assign x4 = {2{{2{(p3[21] ^ p2)}}}};
  assign x5 = x3;
  assign x6 = p0;
  assign x7 = (p3 & ((((x2[22 + s3 -: 3] - x0[16 -: 2]) + p1) | x2[11 + s3]) ^ x1));
  assign x8 = {2{(!ctrl[2] || ctrl[2] || !ctrl[1] ? ({(p1[15 -: 2] | p2), ((x4[12 -: 1] ^ x6[23 -: 3]) ^ p0[23 + s1 -: 5])} ^ p0[24 + s1 -: 7]) : {2{((ctrl[1] || ctrl[0] && ctrl[0] ? p2[9 + s1] : p1[20 -: 1]) + (!ctrl[2] || ctrl[1] && ctrl[2] ? (p0[21 + s3 +: 6] ^ x2[13 +: 2]) : x3[17 +: 2]))}})}};
  assign x9 = x8[16 + s1 -: 6];
  assign x10 = (x9[10] | (!ctrl[3] || ctrl[0] || ctrl[1] ? (x9[17 +: 3] ^ (!ctrl[3] && !ctrl[3] && !ctrl[1] ? (((x0 | ((p3[11 + s1 -: 6] & p1[18]) | p0)) | (p1[17 + s2] + x9[24 + s2 +: 3])) & p1[15 + s3]) : p0[8 + s3 -: 4])) : ({x2[20], {p1, p1[3 + s2 +: 8]}} & p3[16 + s0])));
  assign x11 = p2[19 + s2];
  assign x12 = {2{(p2[16 + s3] ^ {2{p0}})}};
  assign x13 = {2{({p3[10 +: 1], {2{{p2[11 + s3], x1[18 + s3 +: 3]}}}} - (ctrl[3] || !ctrl[3] || !ctrl[2] ? (x2[19 -: 1] | {p0, x5[5 + s1]}) : x8[7 + s1 +: 3]))}};
  assign x14 = x2;
  assign x15 = (((x7[10 +: 1] + (!ctrl[2] && ctrl[0] || ctrl[3] ? (ctrl[0] || ctrl[1] || ctrl[2] ? p3 : p2[16 -: 3]) : (p0[12 -: 4] & x14))) ^ (p0[10 + s3] & {2{x9[18 -: 4]}})) ^ (p3[13 + s3] - x12[25 + s1 +: 7]));
  assign y0 = {2{(p3[23 + s3 +: 6] | p0[14])}};
  assign y1 = {2{({2{(!ctrl[3] || !ctrl[3] || ctrl[0] ? x2 : p2[23 -: 2])}} ^ x13[18 -: 4])}};
  assign y2 = x2;
  assign y3 = p1;
endmodule
