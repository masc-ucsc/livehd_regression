module partsel_00014(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [24:6] x4;
  wire signed [28:2] x5;
  wire [6:31] x6;
  wire [3:27] x7;
  wire [24:2] x8;
  wire signed [0:29] x9;
  wire [31:1] x10;
  wire signed [24:2] x11;
  wire signed [2:27] x12;
  wire signed [26:4] x13;
  wire [26:2] x14;
  wire [26:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [25:7] p0 = 41969500;
  localparam signed [27:0] p1 = 703427818;
  localparam signed [7:27] p2 = 241330383;
  localparam [7:28] p3 = 782587895;
  assign x4 = (!ctrl[3] || ctrl[0] && !ctrl[3] ? x0 : ((p0[17 + s3] ^ (p2[12 +: 2] & x2[19 + s3])) ^ {p0[9 + s1 -: 4], (p0[29 + s3 +: 5] ^ x2)}));
  assign x5 = p2[15 +: 4];
  assign x6 = (x0[12] | p0[14 + s2 -: 3]);
  assign x7 = ((ctrl[1] || !ctrl[1] || ctrl[2] ? ({2{(p0[29 + s3 +: 7] & x3[14])}} | ((x6[13 +: 4] + (p2[7 + s1 +: 7] & p3[5 + s3 -: 6])) - {(p3[28 + s3 +: 1] + x4[17 -: 1]), p3[17 -: 2]})) : (p3 & p3)) + x4[31 + s3 -: 5]);
  assign x8 = (ctrl[0] && !ctrl[0] || !ctrl[2] ? x7[19 + s2 -: 4] : p1[5 + s1]);
  assign x9 = p0;
  assign x10 = (x2[13 -: 1] ^ {2{p2}});
  assign x11 = p2[15 + s1];
  assign x12 = x8[12 +: 1];
  assign x13 = x0[31 + s0 -: 5];
  assign x14 = {p2[14 + s0], {{2{({2{p2}} + x10[8 +: 2])}}, {{(x8 ^ x8[12]), (p2[11] - (p3[7 + s0 -: 6] & x4[18 -: 3]))}, {p3, (p3[15 -: 4] + p0[28 + s1 +: 2])}}}};
  assign x15 = p1[17 + s1];
  assign y0 = x10[17 -: 1];
  assign y1 = x6[29 + s3 +: 6];
  assign y2 = {2{{x9[7 + s0 +: 5], p0[21 -: 3]}}};
  assign y3 = x5[18 -: 2];
endmodule
