module partsel_00910(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [30:4] x4;
  wire [2:26] x5;
  wire signed [26:3] x6;
  wire [5:27] x7;
  wire [3:29] x8;
  wire [26:3] x9;
  wire [3:27] x10;
  wire [31:2] x11;
  wire [1:29] x12;
  wire [31:7] x13;
  wire signed [26:3] x14;
  wire signed [31:7] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [26:3] p0 = 797396166;
  localparam [7:31] p1 = 270558975;
  localparam [31:0] p2 = 730511758;
  localparam [29:7] p3 = 376070143;
  assign x4 = (x1[13 -: 2] & x2[12 +: 3]);
  assign x5 = x1;
  assign x6 = x5[21 -: 3];
  assign x7 = x2;
  assign x8 = p0;
  assign x9 = p1[14 + s1];
  assign x10 = {2{(x3[30 + s2 +: 4] - ((ctrl[3] || ctrl[0] || !ctrl[0] ? (x3[10 +: 1] + (x0[11 +: 4] ^ (x2[22] | x7))) : {p0[8 + s3], ((x4[18] ^ p2[8]) ^ x4)}) ^ ((p0 & x9[13 -: 4]) + x7[21])))}};
  assign x11 = p1[14 +: 4];
  assign x12 = x9[15 -: 4];
  assign x13 = {x7, (ctrl[2] || ctrl[3] || ctrl[1] ? p2[19 + s2] : x8)};
  assign x14 = x0;
  assign x15 = ((ctrl[3] && !ctrl[2] || !ctrl[1] ? (!ctrl[3] && ctrl[0] || ctrl[3] ? {2{(ctrl[0] && ctrl[3] || !ctrl[3] ? p1[19 -: 2] : p2[16])}} : {2{((x2[17 + s2] | p0) - p1)}}) : (!ctrl[2] || !ctrl[3] || ctrl[3] ? p2[16 + s1 +: 2] : x6[9 + s2 -: 1])) ^ p1[12]);
  assign y0 = (p1 ^ {p2[8 +: 2], (((x0[16 -: 2] | p0[21 -: 1]) - ((x5 ^ p0[10 + s1 +: 6]) & p0[15 -: 4])) - {2{{2{p1[12 + s3]}}}})});
  assign y1 = p1[13];
  assign y2 = {2{p0}};
  assign y3 = ((!ctrl[3] || !ctrl[0] && !ctrl[0] ? p3 : (x9[8 + s0] + {2{x7[20 -: 3]}})) | p2[7 + s0 +: 8]);
endmodule
