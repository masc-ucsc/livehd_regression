module partsel_00435(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [26:4] x4;
  wire [2:25] x5;
  wire signed [1:24] x6;
  wire [3:31] x7;
  wire [0:29] x8;
  wire [31:7] x9;
  wire [31:7] x10;
  wire [3:28] x11;
  wire signed [24:5] x12;
  wire signed [5:28] x13;
  wire signed [2:29] x14;
  wire [1:28] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [5:31] p0 = 141920352;
  localparam [26:6] p1 = 646327735;
  localparam signed [1:25] p2 = 76245083;
  localparam signed [0:30] p3 = 152229425;
  assign x4 = {2{{2{x1[27 + s1 +: 3]}}}};
  assign x5 = {2{(((x2[27 + s3 +: 3] ^ (p1[13 -: 3] | x3[27 + s0 -: 1])) & {2{p2[12 + s2]}}) ^ (((x4[6 + s2] + x1[15 -: 2]) | {2{p2}}) & {p2, p2}))}};
  assign x6 = x3[30 + s2 -: 8];
  assign x7 = p3[13 + s2 -: 1];
  assign x8 = (x2[18 +: 3] | (p2[8 + s1 +: 6] | (x6[15 + s3] - {2{p0[10 + s2]}})));
  assign x9 = (x6[23 -: 4] | ((!ctrl[0] && !ctrl[2] || ctrl[0] ? (x5[16 + s2] | x1[29 + s0 -: 6]) : p0[19]) & (x0[1 + s2 -: 6] & p0)));
  assign x10 = x2[10 +: 2];
  assign x11 = (x0 + (x10[21 -: 1] + p2[15 -: 4]));
  assign x12 = (p0 - (((ctrl[2] || ctrl[1] && !ctrl[2] ? (p0 | p3) : ((x3[7 + s3] - x0) ^ p3[9 +: 1])) | p3[15 +: 3]) ^ {2{(x7[16 + s2 +: 5] & (!ctrl[3] && !ctrl[1] && ctrl[0] ? (x11 + p1[17 +: 3]) : x1[26 + s1 +: 1]))}}));
  assign x13 = x2;
  assign x14 = p1;
  assign x15 = x9[21];
  assign y0 = p1[11 +: 4];
  assign y1 = (((ctrl[1] || ctrl[2] || ctrl[2] ? {{x15[21 -: 4], x6}, p1[23 -: 4]} : x11[8 +: 1]) ^ x3) | x3);
  assign y2 = x3[25 + s3 +: 2];
  assign y3 = p1[17 +: 4];
endmodule
