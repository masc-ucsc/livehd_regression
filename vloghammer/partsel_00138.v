module partsel_00138(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [30:3] x4;
  wire signed [25:1] x5;
  wire signed [1:24] x6;
  wire signed [3:27] x7;
  wire [0:24] x8;
  wire signed [1:27] x9;
  wire [27:0] x10;
  wire [28:0] x11;
  wire signed [4:31] x12;
  wire [3:26] x13;
  wire [4:25] x14;
  wire [0:24] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [27:2] p0 = 645046695;
  localparam [7:26] p1 = 304640308;
  localparam [24:7] p2 = 472683331;
  localparam [27:2] p3 = 253763996;
  assign x4 = {{{2{x1[20]}}, p1[28 + s0 -: 1]}, (x0[22 + s3 -: 4] & p1[22])};
  assign x5 = {p2[16 + s0 -: 4], x4[14 +: 4]};
  assign x6 = (p2[6 + s0 -: 5] - (ctrl[2] && !ctrl[2] || !ctrl[0] ? (p0[23 -: 1] ^ (x3[11 + s0 +: 3] ^ (!ctrl[3] || !ctrl[2] && ctrl[0] ? (x2[5 + s0 +: 5] | p1[28 + s3 +: 8]) : ((p3[19 -: 1] + x4[12]) ^ p1[7 + s3 +: 7])))) : ((x0[21 -: 3] ^ x1) | (x5[12 -: 4] - (p2[19] + x3)))));
  assign x7 = p1[19];
  assign x8 = p1[4 + s2 +: 4];
  assign x9 = p1[1 + s1 +: 3];
  assign x10 = (p3[13] ^ {(x4[19 + s3 +: 4] ^ x4[8 +: 1]), p1[29 + s2 +: 2]});
  assign x11 = {(!ctrl[3] && !ctrl[1] || !ctrl[2] ? (ctrl[3] || ctrl[3] && ctrl[3] ? x5[23 + s0 -: 5] : p1[18 +: 2]) : p3), p1[21 -: 4]};
  assign x12 = (p3[9 +: 4] - x1[18 -: 2]);
  assign x13 = p2;
  assign x14 = {2{(ctrl[1] || !ctrl[0] || !ctrl[3] ? {2{{{2{p0[17 + s3]}}, (p0 | x0[13])}}} : (((p3[6 + s1] + p3) ^ ((x1[19 +: 2] & p3[23]) | p0)) & (p3 - {2{x0[8]}})))}};
  assign x15 = {2{x9}};
  assign y0 = (ctrl[2] || !ctrl[3] || ctrl[0] ? x3 : (!ctrl[2] || ctrl[2] && ctrl[0] ? ({x5, p2} + x4[16 -: 1]) : {(x11[13 +: 4] & (x1[15 + s2] ^ x9[18 -: 1])), {2{p3}}}));
  assign y1 = (ctrl[2] && !ctrl[1] || !ctrl[0] ? x1[18 -: 2] : {2{({2{{p3[8 + s2], x3[10]}}} - x1[6 + s1 +: 2])}});
  assign y2 = p2[4 + s3 -: 1];
  assign y3 = x15[8];
endmodule
