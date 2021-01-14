module partsel_00388(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [29:4] x4;
  wire signed [4:27] x5;
  wire signed [0:28] x6;
  wire [26:0] x7;
  wire [28:5] x8;
  wire signed [1:28] x9;
  wire [31:4] x10;
  wire [5:30] x11;
  wire [24:4] x12;
  wire signed [24:5] x13;
  wire signed [6:28] x14;
  wire [27:1] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [0:27] p0 = 915433443;
  localparam [5:24] p1 = 989850177;
  localparam signed [29:3] p2 = 523237097;
  localparam signed [31:4] p3 = 203861688;
  assign x4 = p2;
  assign x5 = (({2{({2{x0[13 -: 3]}} ^ p1[14 + s0 +: 5])}} + {2{p1[28 + s0 -: 6]}}) | x2[14]);
  assign x6 = x3[18 -: 4];
  assign x7 = ({2{{{2{(x5 & p0[21 + s2 +: 1])}}, p0}}} | ((ctrl[3] && ctrl[0] || !ctrl[0] ? p1[10 +: 3] : {(x3 & x3[19 -: 3]), (p1[13] - x5)}) ^ {2{(!ctrl[2] && ctrl[2] || ctrl[1] ? {2{p1}} : p1)}}));
  assign x8 = {x2, (!ctrl[1] || !ctrl[1] && ctrl[0] ? ((!ctrl[1] && !ctrl[3] && !ctrl[1] ? (p1[0 + s0 -: 1] ^ p1[19 +: 4]) : p2[10]) | (!ctrl[2] || ctrl[0] || !ctrl[0] ? (!ctrl[0] || !ctrl[0] || ctrl[0] ? (x7[30 + s1 -: 8] - p2) : (x0 - x7[5 + s0])) : (p0[29 + s0 +: 3] + p3[11 +: 3]))) : x0[4 + s3])};
  assign x9 = (({2{{x1[10 +: 3], p1}}} - ({{x2[28 + s3 -: 5], x4[15 +: 4]}, (x0[15 -: 4] + x0[13 + s1 -: 5])} ^ (ctrl[1] && ctrl[0] || ctrl[0] ? (!ctrl[2] && ctrl[2] && ctrl[0] ? (p2[13 +: 3] ^ p3[11 + s3 -: 3]) : (p2 & p2)) : p3[12 + s1]))) + {2{(x1 + p3[9 + s1 +: 4])}});
  assign x10 = p3[10 + s1 +: 4];
  assign x11 = p2;
  assign x12 = {x5[21 + s0 +: 5], p1[16 + s3]};
  assign x13 = x9[16 -: 3];
  assign x14 = x0[13 + s3 -: 2];
  assign x15 = x1;
  assign y0 = (({2{(p0[9 + s3 +: 5] - x1[8 + s0 +: 6])}} | p0) + (x10 + (p0 | p2)));
  assign y1 = ({((p1[8 +: 3] | x11[22]) & x5[5 + s1]), {{2{{2{p3[31 + s1 -: 6]}}}}, ((!ctrl[2] || ctrl[3] || !ctrl[1] ? p3 : x10) - (x10[9 + s2] ^ p0[11 +: 3]))}} | x13[17 + s0 +: 6]);
  assign y2 = x11[16];
  assign y3 = ((p3[13 +: 1] & p0[18 + s1 +: 7]) ^ x13[15 + s3]);
endmodule
