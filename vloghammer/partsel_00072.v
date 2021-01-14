module partsel_00072(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [25:1] x4;
  wire [28:2] x5;
  wire signed [5:31] x6;
  wire signed [26:3] x7;
  wire [24:6] x8;
  wire [4:27] x9;
  wire signed [24:5] x10;
  wire [2:27] x11;
  wire signed [25:0] x12;
  wire [29:7] x13;
  wire [31:2] x14;
  wire [29:4] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [4:27] p0 = 602285518;
  localparam signed [31:4] p1 = 904362127;
  localparam [31:3] p2 = 497097032;
  localparam [31:6] p3 = 986533080;
  assign x4 = ((!ctrl[0] || ctrl[3] && ctrl[0] ? (x1 & {(p0 & p1[8]), x2[20]}) : p3[10 + s0 -: 2]) & {(!ctrl[3] && !ctrl[3] && ctrl[1] ? {2{{2{p0[12 +: 4]}}}} : x2[15 -: 4]), p3[14 + s3]});
  assign x5 = {(!ctrl[1] || ctrl[1] && ctrl[1] ? p3[14 + s0 -: 8] : x3[13]), x0[9 + s3 +: 1]};
  assign x6 = p2[23 -: 4];
  assign x7 = {({2{p3[7 + s0 +: 2]}} & p3[14 + s2]), {2{(ctrl[0] && ctrl[0] || !ctrl[0] ? p0[28 + s3 +: 6] : p3[4 + s2 -: 8])}}};
  assign x8 = {2{((x4 + (!ctrl[2] && !ctrl[0] || ctrl[2] ? (x5 - p2[27 + s3 +: 7]) : (ctrl[2] || !ctrl[1] || ctrl[2] ? x6[19 +: 2] : p0[3 + s1 +: 7]))) & (x4[20 + s2 +: 6] - x0[16 +: 1]))}};
  assign x9 = (!ctrl[2] && ctrl[1] || !ctrl[0] ? (({2{(p0[9 + s0] ^ p1[1 + s2 -: 1])}} ^ p2[18 + s3 +: 4]) ^ (p0[8 + s3 -: 7] + {2{(p0[4 + s2 -: 1] & p3)}})) : {2{p3}});
  assign x10 = x8;
  assign x11 = p2[18 + s1 +: 5];
  assign x12 = (((x8 | {2{(p2[12 -: 2] ^ p0)}}) + x3[18 + s1 +: 4]) & x2[14 -: 2]);
  assign x13 = (!ctrl[2] && !ctrl[0] && ctrl[2] ? (ctrl[3] || !ctrl[2] || ctrl[0] ? (p2[17 + s0 -: 2] & p0) : p0[14 + s1 -: 5]) : {2{(ctrl[0] || ctrl[1] && !ctrl[0] ? {p0[6 + s2 -: 4], {((p0[13] + (p1[18 -: 1] | p3[9 + s2 +: 2])) - p3[0 + s0 +: 6]), x9[10 + s0 +: 7]}} : x11[21])}});
  assign x14 = p0[10 +: 2];
  assign x15 = (x14 + {(ctrl[2] && ctrl[1] && ctrl[2] ? {2{(x14[9] - x4[4 + s1 +: 8])}} : {(x1[11 +: 4] | p1), p1[10 + s2 -: 1]}), ({(p0[7 + s0] & p1[14 -: 4]), {2{x14[13]}}} - ((ctrl[3] && ctrl[3] || !ctrl[0] ? p3[11 +: 3] : x4) ^ {p0, p1}))});
  assign y0 = ({2{(ctrl[0] && !ctrl[0] && !ctrl[1] ? (p1[14] | x12[19 -: 3]) : x10[10])}} - {2{p0[15 + s3]}});
  assign y1 = {({({2{(x8[23 -: 2] & x11[14 + s3 +: 3])}} + p1[17 -: 2]), ((p0 & p1) | x2[6 + s1])} | ((!ctrl[3] && !ctrl[1] && ctrl[2] ? {2{x3[6 + s3 -: 6]}} : {2{p0[21]}}) + p2[6 + s3])), x1[14]};
  assign y2 = ({x2[12 + s3], x4[10 + s2 -: 1]} - {{((!ctrl[1] && !ctrl[3] && !ctrl[0] ? p2[17 -: 3] : x10[14 +: 4]) | (!ctrl[2] && !ctrl[3] || ctrl[1] ? p3 : (p0[13 +: 1] & p3[15 -: 4]))), ((p1[16 + s0] | ((x0[20 -: 3] ^ (x1[27 + s1 +: 5] ^ x10[15 -: 3])) ^ (x4[15 -: 4] - p3[5 + s2]))) - x2[17 +: 2])}, {2{p1[10 + s3]}}});
  assign y3 = ((x11[20] | ({x14[17 + s3 +: 1], ((x3[15] | p3) | p1[1 + s0 +: 2])} ^ {(x14[30 + s2 -: 8] | x0[22]), (p2 | x15[9 +: 4])})) & {2{{2{(p2 ^ (ctrl[3] && ctrl[0] || !ctrl[3] ? p1[15 + s2] : p1[12 + s0]))}}}});
endmodule
