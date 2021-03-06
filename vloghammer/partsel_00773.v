module partsel_00773(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [28:5] x4;
  wire signed [27:4] x5;
  wire signed [3:28] x6;
  wire [2:29] x7;
  wire [0:24] x8;
  wire signed [26:6] x9;
  wire signed [4:28] x10;
  wire [24:4] x11;
  wire signed [5:27] x12;
  wire [28:2] x13;
  wire [24:4] x14;
  wire signed [26:4] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [29:5] p0 = 187367514;
  localparam signed [3:28] p1 = 851949522;
  localparam signed [1:26] p2 = 7890491;
  localparam signed [28:6] p3 = 833709908;
  assign x4 = x0[16];
  assign x5 = (({2{(ctrl[2] || ctrl[1] && ctrl[2] ? p3 : {2{x4[22]}})}} ^ p1[25 + s1 -: 2]) ^ p3[13 -: 4]);
  assign x6 = ((ctrl[3] || !ctrl[3] || !ctrl[2] ? (x1[14 +: 1] - (p3[18 +: 3] | {2{p1[8 +: 3]}})) : x0[6 + s0]) - {{((!ctrl[0] || ctrl[2] || ctrl[1] ? p3[16 +: 1] : x0[12 + s2 -: 6]) | (!ctrl[2] && !ctrl[1] || ctrl[0] ? p1[16 -: 2] : p3[24 + s0 -: 3])), x0[15 + s0]}, ((p1[5 + s0 +: 3] - ((p0[18 -: 2] & (x2[11] + p1[30 + s2 +: 4])) - x5)) | {((((x4[7 + s0 +: 2] ^ p0[15 +: 3]) ^ p3) | x4[8 + s0 +: 7]) ^ (p2[23] ^ x0[3 + s1 +: 2])), (x0[18 +: 2] - p1[16 + s2])})});
  assign x7 = (x5[23 + s2 +: 8] ^ ({x6, x6[15 +: 3]} ^ (p3[1 + s3 -: 5] | (!ctrl[2] && !ctrl[2] && !ctrl[3] ? {2{(x2[19] + p2[23 + s3 -: 7])}} : (x3[13] ^ p1[16 + s3])))));
  assign x8 = {((x3[19 +: 1] ^ x7[20 + s2 -: 6]) - (p3[11 + s0 -: 4] & {(x4[21] + p3[8]), p1})), (ctrl[2] || !ctrl[2] || !ctrl[2] ? (ctrl[0] && !ctrl[0] && !ctrl[0] ? (ctrl[2] || !ctrl[0] && !ctrl[3] ? {p0[14 +: 4], (p2[10] + p1[12 +: 2])} : p3) : p0) : (p0[0 + s3 -: 1] - (ctrl[2] && !ctrl[1] || ctrl[0] ? ((x6[14 +: 1] - x5[26 + s2 -: 6]) - x1) : (!ctrl[1] || !ctrl[3] && ctrl[3] ? p0[8 +: 3] : p0[15 + s2 -: 6]))))};
  assign x9 = (x3 - x5[19]);
  assign x10 = (x4[17 -: 1] + {p3, x3});
  assign x11 = (((!ctrl[1] && !ctrl[3] || ctrl[0] ? ((x4[17 +: 3] & (p0 - x3[19])) | p3[6 + s3]) : (ctrl[2] && ctrl[3] || !ctrl[1] ? (p3[18] | x6[0 + s2 +: 6]) : {p1, p0[12 + s3]})) - (ctrl[2] || ctrl[0] && !ctrl[2] ? x10[18 +: 4] : (((p0 & p2[20]) - p1[5 + s3 +: 2]) - {2{x10[13 + s1 -: 4]}}))) | p2[12 + s1]);
  assign x12 = {p2[19], {2{p3[16 +: 4]}}};
  assign x13 = {p1[21], (p1[26 + s1 -: 2] + ({x6, p3[17 +: 2]} ^ ((p2[11 + s1] ^ x12[6 + s1]) & x1[1 + s0 +: 6])))};
  assign x14 = x2[10 +: 3];
  assign x15 = {2{{2{p2}}}};
  assign y0 = x7[22];
  assign y1 = (x1[7 + s0] | {(p1[24 + s3 -: 4] | p2[9 + s1 -: 8]), ((x15[14 +: 4] + {p1[26 + s1 -: 1], x3[11]}) ^ (x14 & {2{(x2[20 + s1 +: 8] & p0)}}))});
  assign y2 = ((!ctrl[2] && !ctrl[3] || ctrl[0] ? x5[19 + s3] : x15[3 + s3 +: 6]) ^ {2{p1}});
  assign y3 = ((ctrl[3] || ctrl[3] || ctrl[0] ? ((x1[20 + s1 +: 7] & p2[9 + s3]) | {2{(x3[0 + s2 -: 6] & p2)}}) : x5[7 + s1 +: 6]) + ((!ctrl[2] && !ctrl[1] || ctrl[0] ? (ctrl[3] && !ctrl[3] && ctrl[1] ? (p3[9 + s2] ^ (x8 + p0[15 -: 4])) : {2{(x4[11 + s0] ^ x3[14 + s2])}}) : ((x6[18 -: 3] | (x15[5 + s3 +: 7] & p1[22 -: 3])) + {(x15[8 +: 4] | (p2[8 +: 2] | (p1[15 + s0 -: 8] & x2[25 + s0 +: 7]))), p0[2 + s1 -: 4]})) - {x11[12 -: 3], {2{p1[11 + s2]}}}));
endmodule
