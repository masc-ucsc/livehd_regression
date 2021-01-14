module partsel_00522(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [2:25] x4;
  wire [24:1] x5;
  wire signed [28:5] x6;
  wire [27:6] x7;
  wire [30:5] x8;
  wire signed [28:4] x9;
  wire signed [26:1] x10;
  wire signed [25:3] x11;
  wire [31:6] x12;
  wire signed [26:0] x13;
  wire signed [0:24] x14;
  wire [31:4] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [31:6] p0 = 428152565;
  localparam [31:2] p1 = 204604289;
  localparam [2:27] p2 = 147316954;
  localparam signed [2:24] p3 = 426173290;
  assign x4 = p0[15 + s1 +: 3];
  assign x5 = p3[17 -: 2];
  assign x6 = x4[27 + s2 -: 2];
  assign x7 = {2{(((x0[1 + s0 +: 7] - (x2[11 +: 1] - (x5[5 + s0] | x2[10]))) | (p1[6 + s3 -: 7] & (x6[18 -: 1] + (x3[2 + s3 +: 3] ^ x5[1 + s2 -: 5])))) | {x0[5 + s3 +: 6], (!ctrl[1] || !ctrl[0] || !ctrl[3] ? x0[21 -: 3] : x3[13 + s0 +: 4])})}};
  assign x8 = p3[27 + s2 -: 2];
  assign x9 = x5[26 + s0 +: 4];
  assign x10 = {2{(!ctrl[2] && !ctrl[2] && ctrl[1] ? {{(p1 ^ x6), p3[15 +: 2]}, {x8[19 + s0], (p1[1 + s1 +: 4] + (p2 ^ p2[2 + s1 +: 6]))}} : (ctrl[2] && ctrl[3] && ctrl[1] ? {p2, (x2[17] | x4[15 +: 4])} : x3[20 -: 1]))}};
  assign x11 = p2[11 + s1 +: 3];
  assign x12 = {2{((ctrl[1] && !ctrl[2] || !ctrl[0] ? {2{x11}} : ({p2[18 + s3 -: 2], x3[17 + s2 +: 3]} & {x4[16 +: 3], x10[16 -: 4]})) | {((x5 | p0[16 -: 2]) | {2{x10[18 +: 3]}}), (ctrl[2] || ctrl[3] || !ctrl[1] ? x2[21] : p0[17])})}};
  assign x13 = {{2{(!ctrl[1] && !ctrl[2] || !ctrl[3] ? (p0[17 -: 3] & p1[6 + s2]) : ({(p2 | (p2[9 + s3 +: 5] & p0[18 +: 2])), x12[15]} & x4))}}, {2{x0[22 -: 2]}}};
  assign x14 = {2{p0[14 + s1]}};
  assign x15 = (p1[13 + s2 +: 2] + ((!ctrl[2] && ctrl[1] && !ctrl[3] ? (p2[10 +: 3] + p2[19 + s2]) : {(p2[8 +: 4] ^ (p3[9 + s1 +: 2] | x2)), p0}) + ({(ctrl[2] || !ctrl[2] || !ctrl[0] ? p1[16 -: 1] : x0), p1[7 + s3 -: 7]} + p2[9 + s0 -: 5])));
  assign y0 = {x1[13], (ctrl[3] && !ctrl[1] && ctrl[3] ? {2{((p0 | p3[19 -: 4]) - (x4[19 + s0 +: 8] + x10[26 + s0 -: 4]))}} : (p3[17 + s3] ^ p3[14]))};
  assign y1 = x15;
  assign y2 = (!ctrl[3] || !ctrl[1] || !ctrl[1] ? (ctrl[0] || ctrl[2] && !ctrl[0] ? p3[9] : ((p2[15 + s2] + ((x0 ^ x15) - x0[19 + s2 -: 3])) ^ x4[20 + s1 -: 2])) : x9[4 + s2]);
  assign y3 = ((ctrl[0] || !ctrl[2] && !ctrl[1] ? ({(!ctrl[3] || !ctrl[3] || ctrl[3] ? x2[11] : p3[17 -: 4]), (x6 - x3[19 + s3 +: 8])} & p3) : x3[2 + s2 +: 1]) | p0[8 + s0]);
endmodule
