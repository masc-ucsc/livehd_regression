module partsel_00490(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [4:30] x4;
  wire signed [3:24] x5;
  wire signed [31:2] x6;
  wire signed [2:24] x7;
  wire [26:4] x8;
  wire signed [29:6] x9;
  wire [2:28] x10;
  wire signed [2:26] x11;
  wire signed [28:6] x12;
  wire [0:31] x13;
  wire signed [7:26] x14;
  wire [5:24] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [24:4] p0 = 176255288;
  localparam [2:28] p1 = 722839805;
  localparam [29:6] p2 = 115495088;
  localparam [5:24] p3 = 260955961;
  assign x4 = (!ctrl[3] || ctrl[1] && ctrl[3] ? ((((p0[16 -: 1] & p0[16 +: 2]) ^ ((p0[12 + s1] - x1[22 + s1 -: 2]) ^ x0[17 +: 1])) & {2{x2[13 -: 1]}}) ^ p2[9 +: 2]) : p2[11 +: 3]);
  assign x5 = x4[14 +: 1];
  assign x6 = x4;
  assign x7 = ((p0[23 + s2 +: 8] ^ {2{p2}}) ^ p2[7 + s0]);
  assign x8 = x7[29 + s1 -: 8];
  assign x9 = {{2{x7[16 +: 4]}}, (p2 + ((p3 + ((p2[16 -: 2] & p3[19 +: 3]) - x2[11 +: 1])) + ({x6, x1[15 -: 1]} + (ctrl[0] && ctrl[2] || !ctrl[3] ? x4[17 -: 3] : x0[16 + s0]))))};
  assign x10 = ({{(((p1 & p1[14 -: 1]) | p0[18 + s3 +: 4]) + ((x1 | p3) + p2[9 + s0])), p0[16 + s1]}, (!ctrl[1] || ctrl[0] && !ctrl[0] ? p1[19 +: 4] : p1[9 + s1])} + (x1 & (((ctrl[1] || ctrl[0] || !ctrl[0] ? p1[7 + s1] : p3) | {x8[13 + s0 +: 2], (p2[22 + s0 -: 6] + p3[12 + s1 +: 2])}) - ((p0[5 + s2 +: 3] & p0) ^ p1[9 + s0 -: 6]))));
  assign x11 = x4[9 + s1];
  assign x12 = x3;
  assign x13 = (!ctrl[0] && !ctrl[1] || !ctrl[3] ? p1[18 -: 1] : x6);
  assign x14 = x9;
  assign x15 = (x11[19] - x8);
  assign y0 = ({((p0[20] ^ x11[15 +: 3]) | ({2{p3[20 + s0 +: 6]}} - (ctrl[1] && ctrl[2] && !ctrl[3] ? ((x12[22] + (p1 | x14[19 -: 3])) ^ (p0[5 + s3] & x14[20 + s3 -: 8])) : (p0[11 + s1] | p3)))), {2{{2{x9[19 + s3]}}}}} + (x9[29 + s1 -: 4] & (x11 | (x10[22 + s1 +: 7] - {2{(x1[14 + s3 -: 6] | p2[24 + s1 -: 6])}}))));
  assign y1 = (x6[11 + s3] + ((x0[16 +: 4] + x2) + (p0[4 + s2] + (ctrl[1] || ctrl[0] && ctrl[1] ? ((p3[17 + s2] ^ x8[17 + s0]) & ((p3[20] & p2) + p0[6 + s2 -: 6])) : x10))));
  assign y2 = {2{{x5[15 +: 2], (((p2 - x13[22]) & x15[11 +: 1]) + (ctrl[0] || ctrl[3] || !ctrl[2] ? {(p3 ^ p1), x6} : x1[21 -: 3]))}}};
  assign y3 = p1[11 + s3 +: 7];
endmodule
