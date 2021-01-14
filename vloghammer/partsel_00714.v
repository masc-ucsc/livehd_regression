module partsel_00714(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [30:1] x4;
  wire signed [2:31] x5;
  wire [0:24] x6;
  wire [1:29] x7;
  wire signed [24:2] x8;
  wire signed [26:2] x9;
  wire signed [24:6] x10;
  wire signed [4:26] x11;
  wire signed [31:4] x12;
  wire [4:28] x13;
  wire [27:3] x14;
  wire [3:29] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [2:26] p0 = 291513856;
  localparam [30:0] p1 = 246861883;
  localparam signed [6:27] p2 = 306630876;
  localparam [24:1] p3 = 735855730;
  assign x4 = (x0[23 + s1 +: 5] ^ (x3[9 +: 2] + p2[10]));
  assign x5 = p0;
  assign x6 = (p0[17 +: 2] | (x3 ^ (!ctrl[0] || !ctrl[3] && !ctrl[1] ? x3[19 + s2 -: 1] : ((x3 + (x3[18 +: 3] + (p0[10 +: 1] ^ x1[20 + s3 +: 5]))) | x1[12 + s0 +: 3]))));
  assign x7 = {{{2{((((p0 ^ p2[9]) & p1[19 +: 4]) ^ p1[13 + s3]) ^ (p3 & p2[9 + s2 +: 4]))}}, x6[7 + s2 -: 2]}, p0[8]};
  assign x8 = ((!ctrl[1] && !ctrl[0] && !ctrl[1] ? {{{2{p2[18 -: 3]}}, p1}, (ctrl[2] && !ctrl[1] && !ctrl[1] ? (x6 + x5[21 + s1 -: 2]) : x2[18])} : (((((x6[6 + s3] & p0[9 +: 2]) - p3[16 +: 1]) | p3) | (p1[17] | x2[16 + s1])) | x6)) | (!ctrl[3] || !ctrl[2] || !ctrl[2] ? x6 : ((p2 - p0[15 -: 2]) - ({x3[18 + s0], x0[13]} ^ (p0[16 -: 1] ^ x7[9])))));
  assign x9 = {((p0 + p2[15 + s1]) | (!ctrl[2] || ctrl[2] && ctrl[0] ? p1[13] : (!ctrl[0] || ctrl[1] || !ctrl[3] ? {x2[21], p1[12 +: 2]} : (x4[8 +: 1] - p1[12 + s1 +: 5])))), ((ctrl[0] || ctrl[2] && ctrl[0] ? x0[18 + s0 -: 2] : {x0[10 + s0], {2{x0[13 + s3]}}}) - {2{p1[9 + s3]}})};
  assign x10 = ((ctrl[1] || ctrl[3] || !ctrl[1] ? x7[7 + s2 -: 1] : {{2{(x1[15] | x2[4 + s0])}}, (x2[14] - {p3[31 + s3 -: 3], p1[2 + s0 -: 4]})}) & (ctrl[1] || !ctrl[3] || ctrl[1] ? ({{x1[13 + s3], x6}, x3} + p1[16 +: 4]) : (!ctrl[1] || ctrl[0] && ctrl[0] ? ((x6 & x9) - (x4 | p3[23 -: 3])) : x7[8 + s3])));
  assign x11 = p0[10 +: 3];
  assign x12 = x2[8];
  assign x13 = (ctrl[0] && !ctrl[2] && ctrl[2] ? p0[18 +: 3] : p2[5 + s0]);
  assign x14 = x7[16 -: 2];
  assign x15 = (ctrl[1] && !ctrl[0] || !ctrl[3] ? (!ctrl[1] && !ctrl[0] && !ctrl[2] ? p3[20 + s3 -: 3] : p1[7 + s2 +: 2]) : (!ctrl[2] && !ctrl[2] || ctrl[1] ? p1[5 + s0] : {2{(x9[26 + s1 -: 2] & ((p1 ^ x5[16]) ^ x7[10 + s3]))}}));
  assign y0 = x7[17];
  assign y1 = x15[10];
  assign y2 = (p1[14] | x10[23]);
  assign y3 = x2[28 + s3 -: 1];
endmodule
