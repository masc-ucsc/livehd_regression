module partsel_00352(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [29:6] x4;
  wire signed [28:3] x5;
  wire signed [6:30] x6;
  wire [24:7] x7;
  wire [27:6] x8;
  wire [26:4] x9;
  wire [5:27] x10;
  wire [1:26] x11;
  wire signed [30:5] x12;
  wire [29:5] x13;
  wire [4:24] x14;
  wire [29:2] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [0:27] p0 = 101363883;
  localparam [5:24] p1 = 586274438;
  localparam [2:31] p2 = 596664495;
  localparam signed [1:25] p3 = 122984445;
  assign x4 = ({(p2[19] - {((p0[9 +: 4] + p3[18 -: 1]) + x2[17 -: 1]), {(x1[22 -: 2] - (((x2[30 + s2 -: 6] + p2[18 + s2]) | x1[17 +: 3]) | x2[14 -: 4])), x1[12 +: 2]}}), {((ctrl[0] && ctrl[1] || ctrl[1] ? x3[20] : x3[23 -: 1]) + (x2 - p3[14 + s3])), p2[20 -: 2]}} - (!ctrl[2] || ctrl[1] || !ctrl[0] ? ({{2{x3[11 + s1]}}, {2{(p3[2 + s0 -: 8] ^ (x0[17 -: 1] & p1[21 -: 3]))}}} | {x1, (p1[5 + s1] | x0[8 +: 4])}) : ((!ctrl[2] || !ctrl[3] || !ctrl[1] ? (p0 & p0[15 + s3]) : p1) - (p3[13 + s0] | x2))));
  assign x5 = x2[3 + s1 -: 5];
  assign x6 = x5;
  assign x7 = (({2{(!ctrl[3] && ctrl[0] && !ctrl[0] ? p3 : p1)}} - ((x0 + (ctrl[2] && !ctrl[3] && !ctrl[2] ? p1[11] : x5[22])) & p3[25 + s3 +: 1])) | (p0[31 + s1 -: 8] - {2{x1[10 + s1 +: 6]}}));
  assign x8 = (p3 & (p3 & {2{((ctrl[1] && !ctrl[2] || !ctrl[2] ? p2[17 + s1 +: 4] : x7[11 + s2]) ^ (x5[30 + s1 +: 8] ^ ((p3 + x0) ^ x2)))}}));
  assign x9 = {2{(p0[9 + s2 -: 1] - x8)}};
  assign x10 = {p1[18 -: 3], p0[9]};
  assign x11 = {((((!ctrl[2] || !ctrl[1] || !ctrl[2] ? x6[19 + s0 +: 7] : (p2[10] ^ x4[20 -: 4])) ^ x3[1 + s1 +: 7]) + {{2{p0[10]}}, x10}) & {2{x1[2 + s1 -: 6]}}), {2{(p3 & ((ctrl[1] || !ctrl[2] || !ctrl[2] ? x8 : p3[13]) + (ctrl[2] || ctrl[3] && ctrl[3] ? x5[18 -: 2] : x10[11])))}}};
  assign x12 = (x2[14 + s3] + (!ctrl[0] && ctrl[3] && ctrl[2] ? {x6[23], x10[10 +: 1]} : x4[7 + s1 -: 1]));
  assign x13 = (x5 & x8[14 + s3 +: 2]);
  assign x14 = p2[21 -: 3];
  assign x15 = x3[20 + s2 +: 4];
  assign y0 = (!ctrl[2] && ctrl[1] || ctrl[3] ? ((p3 ^ (ctrl[0] || !ctrl[2] && ctrl[0] ? x4[10 + s0] : x3)) ^ x2[17 +: 1]) : {((p2[7 + s1 +: 5] ^ p1[31 + s2 -: 5]) | ((!ctrl[3] && !ctrl[0] || !ctrl[0] ? p3[10 +: 3] : x6) | (ctrl[1] && ctrl[1] || ctrl[2] ? p3 : x4[23]))), (ctrl[0] && ctrl[0] && ctrl[2] ? (ctrl[2] && !ctrl[3] && ctrl[3] ? (!ctrl[2] && ctrl[1] && ctrl[1] ? p3[10 + s0] : (x13[9 +: 1] - x10)) : {2{x0[17 + s0 -: 3]}}) : (((x9[8 +: 4] & (p0[12] & p0[22 + s3 -: 8])) - x6[17 -: 3]) | {2{x1[2 + s2 +: 6]}}))});
  assign y1 = (!ctrl[0] && !ctrl[1] && ctrl[2] ? {{((p3[18 -: 3] | p3[10 +: 4]) + {2{x14[10]}}), p3[3 + s3 +: 4]}, {2{x4}}} : x2[17 -: 1]);
  assign y2 = p0[13 + s1 -: 5];
  assign y3 = x0;
endmodule
