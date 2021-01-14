module partsel_00737(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [31:5] x4;
  wire signed [24:1] x5;
  wire signed [28:5] x6;
  wire [0:28] x7;
  wire [7:25] x8;
  wire signed [24:5] x9;
  wire [30:7] x10;
  wire [29:0] x11;
  wire [7:30] x12;
  wire signed [5:25] x13;
  wire [28:1] x14;
  wire [25:2] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [1:29] p0 = 559288821;
  localparam [1:31] p1 = 324760178;
  localparam signed [31:4] p2 = 279663690;
  localparam [6:26] p3 = 803795956;
  assign x4 = x3[17 -: 4];
  assign x5 = ({(!ctrl[0] || ctrl[0] && ctrl[1] ? p3[20 -: 2] : p1[4 + s0]), ({x1, (x2[7 + s2] | p0)} | (x1 + (!ctrl[1] || !ctrl[3] && ctrl[1] ? p2 : x4[25 + s2 +: 2])))} ^ p0[13]);
  assign x6 = (((x2[17 -: 4] | x5[5 + s1]) & x0) + ((x3[19 +: 3] + (x3[9 + s0] & (p0[8 + s2 +: 4] | (p0[6 + s2 -: 1] + (x1 | p1[21 + s2 +: 6]))))) | {{2{x1[10 + s0 -: 8]}}, {2{(x3[19 + s3] | x1)}}}));
  assign x7 = (x4 + (((x6[22 -: 3] + p1) + p2[16 + s2]) ^ ((((p2[26 + s0 -: 3] | x4[16]) ^ p0[21]) | p2[20 -: 1]) - {2{(x3[22] & x0[16 + s3 +: 8])}})));
  assign x8 = x1;
  assign x9 = x6[18 + s0];
  assign x10 = x5[14 -: 4];
  assign x11 = {2{{2{(x8[20] - x8[10 +: 1])}}}};
  assign x12 = (x7 ^ (!ctrl[2] || ctrl[3] || !ctrl[1] ? p3[14] : ((x9[17] | (x4[5 + s1] - x10[22])) + {(!ctrl[1] || !ctrl[0] && ctrl[2] ? x4[17 + s0] : p3[25 + s0 +: 6]), (!ctrl[2] && ctrl[3] && !ctrl[0] ? x6[17 -: 1] : (x4[21 -: 4] - (p2[15 + s1] & x9[14 +: 2])))})));
  assign x13 = {2{(x4[14 +: 3] | (ctrl[3] && !ctrl[2] || ctrl[0] ? {2{{x1[10], p3[14]}}} : x6))}};
  assign x14 = ({({p3[14 +: 4], p1[16]} | p0[18 -: 4]), {{p0, (ctrl[0] || !ctrl[1] || !ctrl[1] ? p0[16 -: 1] : x7[29 + s0 -: 1])}, (((x7[23 + s3 +: 8] ^ x5[28 + s0 +: 2]) ^ x6[14 + s1 -: 6]) ^ p2)}} + p3);
  assign x15 = ((p3[13 + s0 +: 2] ^ ((!ctrl[0] || !ctrl[0] && !ctrl[3] ? {p2[27 + s1 +: 5], x0} : x1[8 +: 2]) - {2{{2{p2[10]}}}})) | x8[29 + s3 -: 7]);
  assign y0 = p2[2 + s0 +: 8];
  assign y1 = (x7[17 + s2 -: 8] & ((p1[19 -: 3] - (p1[15] & x15[11 +: 2])) - (x10 | (ctrl[1] || !ctrl[3] || !ctrl[0] ? ((x14[16 + s3] & x5[14 +: 1]) & p3[14 + s2]) : (x5 & x12[15 +: 2])))));
  assign y2 = x4;
  assign y3 = ({2{x0[14]}} | p1[5 + s3]);
endmodule
