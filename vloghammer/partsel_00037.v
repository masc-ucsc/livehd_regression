module partsel_00037(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [6:28] x4;
  wire [30:5] x5;
  wire signed [31:1] x6;
  wire signed [4:31] x7;
  wire [1:26] x8;
  wire [0:28] x9;
  wire [2:29] x10;
  wire signed [29:3] x11;
  wire [30:1] x12;
  wire signed [7:31] x13;
  wire signed [28:2] x14;
  wire [31:3] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [7:27] p0 = 130984176;
  localparam signed [2:26] p1 = 386651355;
  localparam signed [24:4] p2 = 635042450;
  localparam [31:6] p3 = 290875493;
  assign x4 = (p1[16 +: 4] ^ {(p2 ^ (x3[19 + s3] & (ctrl[3] || ctrl[0] && !ctrl[1] ? x0[20 -: 4] : x1[8 +: 1]))), (x1 - x0)});
  assign x5 = (!ctrl[2] || ctrl[2] || ctrl[3] ? (p3[9 + s3 +: 1] + p3[17 +: 3]) : {p2, (p0[11 + s3] & (p0[15] + {x0[0 + s3 +: 8], p0}))});
  assign x6 = x1[9 +: 4];
  assign x7 = (x1 - {((p0[1 + s0 -: 5] & {(p1[10 + s3] - p1[18 -: 2]), p2[13 + s2]}) & {(x5 ^ x6[19 -: 4]), (x6[12 + s3] | p0[6 + s3 +: 2])}), {{p1, p1[18 + s1 +: 7]}, ((x1 & p1[12 -: 4]) - {(x6[12 -: 1] - (p0[17 +: 2] + p0[11 + s3])), p2[17]})}});
  assign x8 = x1[22 + s1 +: 4];
  assign x9 = p2;
  assign x10 = {p3[6 + s1], (ctrl[2] && ctrl[1] || ctrl[0] ? (!ctrl[0] || ctrl[3] && !ctrl[3] ? p0 : ({2{x7[13 +: 3]}} & (!ctrl[3] && ctrl[2] || ctrl[3] ? (p2 + p0) : x6[12 -: 4]))) : {(x0[19 +: 1] + p3[22]), (p3 & p2[20 -: 2])})};
  assign x11 = (!ctrl[0] || !ctrl[3] || ctrl[1] ? ((!ctrl[0] || !ctrl[1] || !ctrl[3] ? {2{p1}} : ((x1[21] - (p1[23 + s3 -: 3] - ((p3[11] + (p2[24 + s0 +: 1] ^ x3[15 +: 4])) ^ x0[9 +: 2]))) | {(p3[14 +: 2] ^ x3[14 + s0 +: 4]), x8})) ^ x10[7 + s0]) : x9);
  assign x12 = {2{p0}};
  assign x13 = {{2{p3[14 + s2]}}, x11[15 + s2 -: 4]};
  assign x14 = {{x4[6 + s1 +: 5], x10}, {2{{2{p1[17 + s0 +: 3]}}}}};
  assign x15 = (p1[9 +: 4] | p3[11 +: 4]);
  assign y0 = {2{p0[23 + s2 -: 1]}};
  assign y1 = {(ctrl[1] && ctrl[2] && ctrl[1] ? x11[1 + s1 +: 5] : (ctrl[0] && ctrl[1] && ctrl[3] ? (!ctrl[3] && !ctrl[1] || ctrl[0] ? (ctrl[1] || !ctrl[1] && !ctrl[2] ? x7[3 + s2 -: 6] : p0[18 +: 3]) : p1) : (ctrl[0] || !ctrl[0] || ctrl[3] ? (p1[13] + x15[6 + s1 +: 6]) : x14))), (p1[12] | x11)};
  assign y2 = x4[14 +: 4];
  assign y3 = (p2[6 + s3 +: 8] ^ (((!ctrl[2] && !ctrl[0] || ctrl[0] ? (!ctrl[2] && !ctrl[1] || ctrl[0] ? x7 : x7[19 -: 3]) : {2{x1[30 + s2 -: 5]}}) | {x10[21 -: 4], x0[13 + s2]}) & (ctrl[2] || ctrl[2] || !ctrl[2] ? x5[15 -: 4] : ((x1 - p2[17 +: 1]) ^ (p2[14] ^ p1[15])))));
endmodule
