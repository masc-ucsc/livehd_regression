module partsel_00127(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [3:30] x4;
  wire signed [3:24] x5;
  wire [28:2] x6;
  wire [6:28] x7;
  wire signed [1:28] x8;
  wire [26:0] x9;
  wire [29:2] x10;
  wire [7:30] x11;
  wire [26:1] x12;
  wire signed [1:25] x13;
  wire [6:31] x14;
  wire [29:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [2:24] p0 = 857241310;
  localparam signed [4:28] p1 = 940808157;
  localparam signed [28:1] p2 = 892572365;
  localparam [31:3] p3 = 196751612;
  assign x4 = ((p2[19 + s2 -: 3] | {2{p0[20 -: 2]}}) ^ (!ctrl[1] && ctrl[1] && !ctrl[2] ? p0[13 + s3] : x1[22 -: 2]));
  assign x5 = p3[21 -: 2];
  assign x6 = x1[21];
  assign x7 = x4[18 -: 3];
  assign x8 = {((x0[30 + s2 +: 8] & p3[12]) - p0), p1[18]};
  assign x9 = x8[11 + s0 -: 3];
  assign x10 = x0[19 + s3];
  assign x11 = ((x10[12 +: 2] + p1) & (({2{x1[11]}} - {2{((p3[17 + s1] + (p0[14 + s3 -: 8] | (p1[2 + s2 -: 7] + x2))) ^ x7[9 +: 2])}}) | p0[5 + s0]));
  assign x12 = (ctrl[1] && ctrl[2] && !ctrl[0] ? {2{{2{x8[30 + s2 +: 1]}}}} : {{2{(!ctrl[2] || ctrl[3] || ctrl[2] ? (p1[17 +: 3] & x2[20 + s3 +: 2]) : p0[11 + s3 -: 8])}}, p3});
  assign x13 = (x4 | x12[30 + s1 +: 8]);
  assign x14 = (p0[9 +: 4] + ({2{((x8[8 + s2] | p3[21 -: 2]) - {2{(x2[23 -: 1] ^ x2)}})}} - p2[4 + s1]));
  assign x15 = ((((x8[23 + s0 -: 5] + p2[12 +: 2]) - {2{(ctrl[1] || ctrl[1] && ctrl[2] ? x4 : (((x1[8 +: 3] & x14) | (p2[13] | ((p3[11 +: 1] & p3[21]) | x6))) | p2[21 + s0 +: 8]))}}) ^ (!ctrl[0] && !ctrl[0] && !ctrl[3] ? (ctrl[1] && !ctrl[0] && !ctrl[3] ? {p2[14 -: 4], (x13[13] - x2[16 -: 4])} : (p1[15 +: 2] | (p0[21 + s1 +: 7] & x0))) : p1[5 + s1])) | ((!ctrl[0] && !ctrl[2] || !ctrl[2] ? (!ctrl[0] && !ctrl[1] && !ctrl[3] ? x5[20 + s2 -: 2] : {2{(p3[13] | ((x8 ^ (p2[9 + s2] ^ x6[20 -: 3])) - (x13[27 + s3 -: 4] ^ x14)))}}) : (ctrl[1] && ctrl[3] || ctrl[3] ? x0[13 + s3 +: 1] : (p1[15 -: 2] - x10))) ^ (({2{p2[19 + s3 +: 5]}} - {2{p0[15 + s2]}}) - x11[19 +: 2])));
  assign y0 = (ctrl[1] || !ctrl[2] || ctrl[1] ? p2 : p0[5 + s3 -: 3]);
  assign y1 = x12;
  assign y2 = (p1 ^ p1[23]);
  assign y3 = ((ctrl[2] || ctrl[3] || !ctrl[3] ? (p0[22 + s0 -: 6] - x7[14 + s0]) : (p3[3 + s1 -: 8] + p2[0 + s0 -: 2])) + x3[16 + s3]);
endmodule
