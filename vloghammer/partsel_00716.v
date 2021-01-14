module partsel_00716(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [30:2] x4;
  wire [0:30] x5;
  wire signed [27:0] x6;
  wire signed [29:7] x7;
  wire [7:25] x8;
  wire signed [30:0] x9;
  wire [0:29] x10;
  wire [31:3] x11;
  wire signed [31:3] x12;
  wire [28:6] x13;
  wire [7:24] x14;
  wire [30:3] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [5:27] p0 = 141585713;
  localparam signed [3:27] p1 = 645315046;
  localparam [0:30] p2 = 982901636;
  localparam signed [6:31] p3 = 701811401;
  assign x4 = ({p3[19 + s2], {p0[13], (!ctrl[3] && ctrl[2] && ctrl[1] ? x3[18 + s0] : {x0, p0[10 +: 3]})}} + {{{(ctrl[0] || !ctrl[3] || ctrl[1] ? x3[16 +: 2] : p3[10 + s0 +: 8]), (p1[23 -: 4] - p3[8 + s2])}, x1[1 + s0 +: 5]}, (ctrl[1] || ctrl[0] || ctrl[0] ? {x1, {x1, x0}} : p3)});
  assign x5 = p2[24 + s3 +: 8];
  assign x6 = (p1[8 +: 2] - (p3[26 + s2 -: 2] - (x3[17 -: 4] | p1[12 +: 2])));
  assign x7 = ({2{x0}} | {2{(((p2[15 +: 1] & x1[16 +: 1]) | p1[13 -: 1]) - x2[19 +: 1])}});
  assign x8 = {2{{2{({{x3[15 -: 1], p2}, {x7[14 +: 3], p2}} + (!ctrl[0] || ctrl[3] || !ctrl[1] ? (x0[15 -: 4] + p0) : (x2 & x4)))}}}};
  assign x9 = {p3[15], p3[23 + s1 -: 5]};
  assign x10 = ((p1 + ({2{(p2[23 -: 1] + x7[6 + s1 +: 6])}} ^ p3[9])) - p1[14 + s1]);
  assign x11 = (p0[14 -: 2] + p2[19]);
  assign x12 = (ctrl[0] && !ctrl[1] && !ctrl[2] ? (({{2{p2[20 -: 2]}}, p1} ^ (x3[16 + s3 +: 6] & (p3 + (p1[22 -: 3] | x2[20 + s1 -: 5])))) + (!ctrl[1] || !ctrl[0] && ctrl[3] ? (p1 ^ x5[16 -: 3]) : x5[16 -: 2])) : ({p1[11 +: 1], (p1[16 + s1 -: 8] ^ (ctrl[2] && ctrl[1] && ctrl[3] ? (x4[9 + s2 -: 6] ^ x5[18 + s1]) : p0[20 -: 1]))} | x9[30 + s1 -: 2]));
  assign x13 = {x10[22], ((p3 - ((ctrl[3] || !ctrl[1] && !ctrl[2] ? (p3 + p0[9]) : ((x3[17 + s3 -: 5] ^ p3[6 + s0]) + (x10 & p0[14 -: 3]))) - {x1[16 + s1 -: 4], ((x10 | x5[16 -: 1]) ^ (x4[10 + s1] + x2[4 + s1 -: 1]))})) ^ x7)};
  assign x14 = {{2{{2{((p0[20 -: 4] + x0) & {2{x8[21 -: 2]}})}}}}, p1};
  assign x15 = x14[29 + s1 +: 8];
  assign y0 = p2[9 + s0];
  assign y1 = x0;
  assign y2 = {x14[9 + s1], {(!ctrl[3] && ctrl[1] && ctrl[1] ? ({(x3 ^ (p3 ^ (p2[8 + s0] ^ x12[27 + s2 +: 1]))), x4[9]} & (p0[19 -: 4] & x1)) : p3[18 +: 1]), p3[16]}};
  assign y3 = x13[15 + s1 +: 6];
endmodule
