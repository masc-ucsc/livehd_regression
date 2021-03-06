module partsel_00461(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [1:29] x4;
  wire signed [28:3] x5;
  wire [5:30] x6;
  wire signed [26:5] x7;
  wire [2:30] x8;
  wire signed [26:3] x9;
  wire [6:25] x10;
  wire [31:0] x11;
  wire signed [29:6] x12;
  wire signed [5:31] x13;
  wire signed [29:1] x14;
  wire [28:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [3:28] p0 = 514360633;
  localparam [31:1] p1 = 738911504;
  localparam [7:24] p2 = 208479672;
  localparam [29:1] p3 = 751997004;
  assign x4 = p3[14];
  assign x5 = {p1[17 -: 1], x1[18 -: 3]};
  assign x6 = ((((ctrl[0] || !ctrl[0] && !ctrl[0] ? p3[0 + s3 +: 1] : {x0[8 + s0], p1[20 -: 2]}) - p1) + p2[8 +: 1]) - ((p2[14 + s1 +: 1] + ((p3 & ((p2[1 + s2 +: 7] ^ (x3 + x0[8 +: 4])) ^ p3[8 + s0 -: 3])) ^ (x1 ^ x0[17 -: 1]))) & {2{p3[17 -: 1]}}));
  assign x7 = {{x3[17 + s0 +: 3], (((!ctrl[1] || ctrl[1] || !ctrl[3] ? x1[5 + s0 +: 6] : p3[8 + s0]) ^ x5[12 -: 1]) | {2{{x3, (x3 + p0)}}})}, {2{x0[8 + s3]}}};
  assign x8 = {(((x4[31 + s1 +: 7] ^ x5[18 + s2 -: 2]) | x4[11 + s0 -: 4]) + (((x6[13 + s1] + (p3 + x4[20])) + x0[8 + s3 +: 7]) + p3[12 +: 1])), x3[19 + s1 -: 1]};
  assign x9 = (p0 + (p1[11 +: 1] | {(ctrl[1] || !ctrl[2] || ctrl[1] ? p0[27 + s0 +: 2] : (ctrl[0] || ctrl[2] || ctrl[2] ? (p3[21 + s3 -: 3] + p1[16 + s1 +: 6]) : x5[23])), {2{x7[10 + s3 +: 3]}}}));
  assign x10 = {2{((x4[13 +: 4] ^ ((x0 - ((p2[14 +: 1] | x1) ^ x0)) + ((x8[12 -: 4] ^ x2[23 -: 1]) ^ x5[19 + s3 +: 4]))) - x1[13 +: 4])}};
  assign x11 = (p3[17 +: 1] ^ (x2[29 + s0 -: 3] ^ p3[9]));
  assign x12 = {x5[4 + s1 +: 3], p1[18]};
  assign x13 = x9[13 +: 4];
  assign x14 = {(!ctrl[3] && ctrl[3] || ctrl[1] ? p1[16 + s3] : {{2{((p3[17 + s2 -: 8] - x2) ^ (p2 | p2[9 +: 4]))}}, p0}), ({2{x5[11 + s3 -: 3]}} - (!ctrl[1] && !ctrl[2] || !ctrl[0] ? {2{((x2[18 +: 3] - p3) & x10[8 +: 1])}} : x3[21 -: 2]))};
  assign x15 = (x9[17 + s1] | ((x10[31 + s0 -: 7] + p2[7 + s2]) & x0[14 +: 1]));
  assign y0 = {2{p0[8]}};
  assign y1 = p3[11];
  assign y2 = (({{p0[8], x12[21 -: 4]}, ({2{((((p0[6 + s3] - x1[3 + s1 -: 2]) ^ (x0[18 + s0] ^ (x11[14 +: 4] - p0[9 + s3 -: 8]))) & p0[17 -: 3]) - x15[21 + s0 -: 1])}} + (ctrl[0] && ctrl[1] && ctrl[1] ? p0[9 + s3 -: 4] : x13[12 -: 1]))} & (x14[18 +: 2] - ({2{x4}} | {p0, (p1[5 + s0] ^ p2)}))) & (x7[0 + s2 -: 4] & (((p3 | x3[12 -: 4]) + x2) + ((x8[15 + s2] + (x7[21 -: 4] - x0[12 + s3 +: 3])) - x12[11 +: 1]))));
  assign y3 = p1;
endmodule
