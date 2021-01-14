module partsel_00784(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [5:31] x4;
  wire signed [4:24] x5;
  wire [24:7] x6;
  wire signed [30:6] x7;
  wire [6:29] x8;
  wire [4:31] x9;
  wire [0:26] x10;
  wire [7:26] x11;
  wire signed [2:31] x12;
  wire signed [26:4] x13;
  wire [7:27] x14;
  wire signed [4:25] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [28:0] p0 = 474623703;
  localparam [2:24] p1 = 301913759;
  localparam [6:29] p2 = 537093675;
  localparam signed [30:5] p3 = 332494535;
  assign x4 = {2{({((p2 - x3[22 + s2 +: 5]) - x0), x1[6 + s2 -: 6]} & {p1[22 -: 2], p3[14 + s2]})}};
  assign x5 = x4[23 + s1 +: 2];
  assign x6 = p1[16 + s3 -: 4];
  assign x7 = (p3 & {(((x2[12 -: 2] + x4) | x3[5 + s3]) - (!ctrl[1] && ctrl[3] || !ctrl[2] ? p3[14] : p3[17 + s0 +: 7])), (!ctrl[1] && !ctrl[3] || !ctrl[1] ? {2{{x1[21 + s0 -: 8], p2}}} : p3[17])});
  assign x8 = {(!ctrl[2] && ctrl[2] || !ctrl[2] ? p0 : {({2{(p3[12 + s1 -: 7] | p3[17])}} | (ctrl[2] && !ctrl[0] && !ctrl[3] ? p0[20 + s2 +: 8] : x2[19])), {2{x2}}}), ((!ctrl[2] && !ctrl[0] && ctrl[0] ? ((p2[30 + s2 -: 6] | (x3[14 + s2] - (x3[12] ^ x7))) ^ (x0[1 + s3 +: 7] ^ p3[8 + s3])) : ((p0[30 + s3 +: 5] | p1) + (p0 | x0[12]))) - p0[18 +: 4])};
  assign x9 = x0;
  assign x10 = p2[10];
  assign x11 = (!ctrl[1] && ctrl[1] || !ctrl[2] ? {2{(((x0[16 +: 2] & p2[0 + s2 -: 4]) & (!ctrl[3] || ctrl[3] || ctrl[1] ? (x9[21] | x1[19 + s1]) : (x3[21 -: 1] & p2[17 +: 3]))) & p3)}} : (p2[14 +: 2] ^ (!ctrl[3] || !ctrl[0] && !ctrl[2] ? ((p1 + p0) - p1[14]) : x3)));
  assign x12 = (p1[7 + s2] | p1);
  assign x13 = (x8 ^ x3);
  assign x14 = (x6[16 + s0] & {(p0[16 -: 2] - (x0[15] + (x11[11 + s1 +: 2] & p2[22 -: 1]))), {2{((p1[10 + s3] & p3) | x3[25 + s0 +: 6])}}});
  assign x15 = {2{x8}};
  assign y0 = (ctrl[0] || !ctrl[3] && ctrl[3] ? (({(p0 + x13[9]), (p3[20 -: 1] & x0[16 + s2])} ^ {(x7[0 + s1 -: 1] ^ p0), x15[12 -: 4]}) ^ {p0[15 + s2], {x6[19 + s3 -: 8], x15}}) : ((x2 + ({2{p0[19]}} & x1[22 -: 4])) ^ x8[22 -: 3]));
  assign y1 = {({({2{x7[15 +: 2]}} | {x6[12 + s3], x3[3 + s0 +: 4]}), ({(p0[17 -: 3] ^ x11[8]), (x10 | x15[7 + s0])} - {x6[13 + s0 +: 7], x11[4 + s3 +: 8]})} | x14[21]), (x12[18 + s1 +: 6] & x11[21 -: 4])};
  assign y2 = (p3[17 + s1 +: 8] & p2[15 + s3 -: 1]);
  assign y3 = p0;
endmodule
