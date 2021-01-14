module partsel_00298(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [24:6] x4;
  wire [25:6] x5;
  wire [3:31] x6;
  wire signed [24:3] x7;
  wire signed [28:3] x8;
  wire signed [27:0] x9;
  wire [0:27] x10;
  wire signed [31:3] x11;
  wire [28:4] x12;
  wire signed [30:3] x13;
  wire [28:1] x14;
  wire [25:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [5:24] p0 = 742482893;
  localparam [3:30] p1 = 269462855;
  localparam signed [25:6] p2 = 801554102;
  localparam signed [31:1] p3 = 898449441;
  assign x4 = ((!ctrl[0] || !ctrl[2] || ctrl[1] ? x1[13 + s3] : ({2{(x2[10 + s1] ^ (p2 + p3))}} ^ p0[28 + s0 -: 3])) - p2[14 + s3 +: 1]);
  assign x5 = x0[10 +: 3];
  assign x6 = p0[16 +: 2];
  assign x7 = ({(x4[8 + s2 -: 4] ^ {2{((p1 | p1[18 + s3]) - (x1 ^ x3))}}), p3[14 +: 3]} ^ ({2{{x6[20 + s1 +: 1], x3}}} & {2{x4[15 + s3]}}));
  assign x8 = x2[16 + s2];
  assign x9 = ((p2[19 + s3 -: 6] - ({2{(!ctrl[1] || !ctrl[0] && !ctrl[1] ? x5 : p3)}} & {2{x4[19 + s2]}})) - (({2{{x5[22 + s0 -: 7], (((p3[16] | x6[30 + s1 -: 6]) - x2[16 +: 3]) - (p3 - p2[15 +: 3]))}}} ^ ((p2 ^ p0[1 + s1 +: 2]) | ((x7[29 + s1 -: 8] - x6[22]) - p1[6 + s1 +: 3]))) | x4[18]));
  assign x10 = x8;
  assign x11 = x1[17 -: 4];
  assign x12 = (!ctrl[0] && !ctrl[2] && !ctrl[3] ? ((!ctrl[3] && ctrl[2] || ctrl[2] ? x0[9] : ({p0[15 +: 4], x6[13 -: 3]} - (!ctrl[3] || ctrl[0] && !ctrl[1] ? (x5[11 + s2] ^ p0) : x9))) & ((x3[15 +: 1] - x10[8 + s1 -: 7]) + (!ctrl[3] || ctrl[1] && !ctrl[2] ? {p1[24 + s3 +: 2], x8[16]} : ((p1[10 +: 2] + p0[1 + s0 -: 7]) | p1[18 + s1])))) : (!ctrl[3] || !ctrl[3] && ctrl[0] ? {2{p1[15 + s1]}} : (({p3, (p0[19 -: 4] | x0[30 + s3 -: 4])} | (x9 & x7)) & (p3[24 + s0 -: 1] & x9))));
  assign x13 = x4;
  assign x14 = p0[16 +: 1];
  assign x15 = (((!ctrl[0] && !ctrl[1] && ctrl[3] ? (!ctrl[1] || ctrl[1] && !ctrl[1] ? p0[4 + s3] : p3[18 -: 1]) : ({2{x0[17 +: 2]}} & (p3 + (p0 | x11)))) + ((x9 - (x14 | p1)) & x3[15 + s2 -: 2])) & x3[17 + s1]);
  assign y0 = (x11 ^ (ctrl[0] && ctrl[1] || !ctrl[2] ? x0[18 +: 4] : ((x7[12 +: 2] ^ (((p1[23] + x3[15 -: 4]) | (p1 ^ x5)) ^ ((((x6[12 -: 3] - x10[9 +: 1]) & p2[14 +: 4]) ^ x2[19 + s3 -: 8]) ^ (x11[9 +: 1] - x7[13 -: 1])))) | (!ctrl[1] || !ctrl[1] && !ctrl[1] ? (x13[21 -: 2] | ((x5[13 + s2 +: 8] - x15[12 -: 4]) ^ p2[28 + s1 +: 5])) : {2{p3[15 +: 2]}}))));
  assign y1 = {x12[0 + s2 +: 3], {{2{(p0 + {2{(x12[8 + s2 +: 5] | (p0[13 -: 4] + x12[19]))}})}}, ((ctrl[0] && ctrl[1] && ctrl[2] ? p0[14 -: 4] : (p3[22] & x6)) & {p3, {2{x9}}})}};
  assign y2 = p1[21 + s1 +: 2];
  assign y3 = x1[19 + s1 -: 8];
endmodule
