module partsel_00294(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [3:31] x4;
  wire signed [4:26] x5;
  wire [0:29] x6;
  wire [7:26] x7;
  wire signed [29:1] x8;
  wire [28:4] x9;
  wire [25:2] x10;
  wire [7:24] x11;
  wire signed [1:30] x12;
  wire [6:24] x13;
  wire signed [0:26] x14;
  wire [5:26] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [0:28] p0 = 286595680;
  localparam [7:25] p1 = 37363355;
  localparam signed [28:7] p2 = 988520931;
  localparam signed [31:2] p3 = 972221638;
  assign x4 = ((p0 + {p2, {2{(x3 + ((x0[17 +: 3] | x1[13 + s1 +: 5]) - x0[10 + s2 -: 7]))}}}) + {2{{2{x3[13]}}}});
  assign x5 = (((ctrl[1] && !ctrl[3] && ctrl[3] ? p1[9 +: 3] : p2[11]) - x2) & {{2{x0[20]}}, {2{{(p3[2 + s3 +: 7] | p1[7 + s0]), x0[13 +: 3]}}}});
  assign x6 = (ctrl[3] && !ctrl[3] && ctrl[3] ? (x4[19 -: 1] - x1) : {2{(x5[13] - (x1[18 + s2 +: 5] - (x5 | x4[7 + s1])))}});
  assign x7 = {x3[12 +: 3], x4[8 + s3 -: 2]};
  assign x8 = (!ctrl[3] || !ctrl[0] && !ctrl[3] ? {2{p0[16]}} : (!ctrl[0] && ctrl[0] || ctrl[3] ? x3[7 + s3 -: 3] : p1));
  assign x9 = (p3 + p1[13 + s3]);
  assign x10 = {p3, p1[9 + s3 -: 2]};
  assign x11 = {2{{2{(x4[19 +: 1] & p1[18 +: 1])}}}};
  assign x12 = x8;
  assign x13 = x7[3 + s2 +: 8];
  assign x14 = p1;
  assign x15 = (ctrl[2] || !ctrl[2] && !ctrl[0] ? p2[17 + s3] : x6[11 + s2]);
  assign y0 = {(ctrl[0] || !ctrl[3] && !ctrl[2] ? x11[14 +: 2] : x3[6 + s0]), (x5[14 -: 1] ^ x4[22 -: 4])};
  assign y1 = p0;
  assign y2 = p0[19];
  assign y3 = {({((!ctrl[2] && ctrl[2] && ctrl[2] ? x9[30 + s1 -: 1] : p1[28 + s0 -: 1]) | {x15[15 +: 1], p1[9 + s1 +: 4]}), {p2, x11}} + (((x9[14 + s1 +: 2] ^ p0[7 + s2 +: 5]) & (!ctrl[3] || ctrl[1] && ctrl[0] ? p0[3 + s2 +: 8] : x1[2 + s3 +: 2])) + ((x0[23 -: 3] ^ p1[13 + s2 +: 4]) ^ (p1 - p3)))), {2{((((p1[12] ^ x10) | x2[11 + s2]) + {2{x5[21]}}) + (p2[12] & p2[9 +: 1]))}}};
endmodule
