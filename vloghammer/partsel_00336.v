module partsel_00336(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [5:27] x4;
  wire [27:0] x5;
  wire [26:0] x6;
  wire [25:7] x7;
  wire [29:3] x8;
  wire signed [2:24] x9;
  wire signed [31:7] x10;
  wire [28:7] x11;
  wire [1:28] x12;
  wire [2:28] x13;
  wire [0:30] x14;
  wire [4:30] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [5:24] p0 = 223332066;
  localparam [6:24] p1 = 386481247;
  localparam [26:2] p2 = 469658481;
  localparam [3:31] p3 = 591978323;
  assign x4 = p1[19 -: 1];
  assign x5 = (!ctrl[1] || !ctrl[3] && !ctrl[2] ? {x3[3 + s2 -: 8], p1[10 + s0 -: 2]} : {2{p2[22]}});
  assign x6 = ({x4, ({2{(ctrl[0] && ctrl[1] && ctrl[0] ? p2[18 +: 2] : x0[19 -: 4])}} + x2[14 -: 1])} & (((p0 & (p0 ^ (p1[7 + s2 +: 1] - x0[16 -: 4]))) - x1[21 -: 2]) - (x2 | {2{(x3[8 +: 2] & x1[23])}})));
  assign x7 = {2{(ctrl[0] && !ctrl[3] && !ctrl[2] ? p1 : (p2[16 +: 3] ^ {2{{(p0[26 + s0 +: 2] ^ p1[8 + s2 -: 7]), (x1 | p0)}}}))}};
  assign x8 = p1[15 + s0];
  assign x9 = {2{(((p0[22] & x7[10 + s3]) ^ p0) ^ ({p0[17], ((x7[11] + p3[16 -: 1]) & x4[0 + s3 +: 8])} + (!ctrl[2] || ctrl[1] && !ctrl[3] ? {(x8[21 -: 4] + p0[18 + s1 -: 6]), (p3 + p2[8])} : (p1 & x7[12 -: 1]))))}};
  assign x10 = {p2, ((x2[8 +: 1] - x5[15 + s2 +: 2]) ^ p0[15 -: 2])};
  assign x11 = ((ctrl[1] && !ctrl[2] || ctrl[3] ? x4[24 + s0 -: 8] : p2[18 -: 4]) | (ctrl[1] && ctrl[3] || !ctrl[2] ? {2{(p0[20 + s0 -: 7] + x0[14])}} : x9[9 + s2 +: 4]));
  assign x12 = (ctrl[0] && ctrl[3] || !ctrl[1] ? (x5[18 + s3 -: 6] + (!ctrl[0] || ctrl[1] || ctrl[0] ? p3[14 +: 1] : (!ctrl[3] || ctrl[3] || !ctrl[1] ? x7 : x11[10 + s3 -: 1]))) : (p1[13 + s3] | x4));
  assign x13 = p0[13 +: 3];
  assign x14 = ((p0[16 +: 2] | p0[17 + s1 +: 3]) ^ p0[15 -: 2]);
  assign x15 = (ctrl[3] || !ctrl[1] && ctrl[2] ? x7[15 +: 4] : {2{((x5[8] + (x3[9 + s1] & (p2[5 + s2] + p0[21 -: 2]))) | x8[18 -: 3])}});
  assign y0 = (((((p0[11] | x1[24 + s0 -: 3]) - (!ctrl[0] || ctrl[3] || !ctrl[1] ? ((x13[14] - p2[30 + s1 +: 2]) ^ x13) : p1[15 -: 3])) + {2{(ctrl[0] || ctrl[1] && ctrl[2] ? p2[28 + s1 +: 4] : x9[22])}}) + {x15[8 +: 3], x3}) & {((!ctrl[1] && !ctrl[0] && !ctrl[2] ? (x9 - p3[16 +: 4]) : {2{(p0[13] + p1)}}) | (p3 | (ctrl[3] || ctrl[0] || ctrl[2] ? x10[13 +: 2] : x4))), (({2{((p2[14 -: 1] + x2) | p3[17 + s3])}} + x0) ^ p1[18 +: 4])});
  assign y1 = {{2{{(p1[23 -: 2] & p0[13]), p2[9 + s1 +: 8]}}}, x0[22]};
  assign y2 = ({2{p0[26 + s2 -: 5]}} + x6[14 +: 4]);
  assign y3 = p1[6 + s2 +: 3];
endmodule
