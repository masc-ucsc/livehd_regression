module partsel_00025(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [5:24] x4;
  wire [4:26] x5;
  wire [0:29] x6;
  wire [26:6] x7;
  wire [6:29] x8;
  wire [31:4] x9;
  wire signed [1:24] x10;
  wire [24:5] x11;
  wire [28:2] x12;
  wire [0:29] x13;
  wire [4:31] x14;
  wire [26:4] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [7:28] p0 = 738066196;
  localparam signed [5:29] p1 = 757267422;
  localparam signed [5:24] p2 = 152636953;
  localparam signed [29:3] p3 = 821851180;
  assign x4 = {2{((!ctrl[2] && ctrl[2] || ctrl[0] ? {(ctrl[0] && !ctrl[2] && !ctrl[3] ? x2[4 + s1 -: 6] : p3[20 -: 4]), (p2[10 + s0 -: 5] - (x1[9] - ((p1[14 + s2] + (x0[19 +: 3] - x2[23 + s2 -: 5])) ^ p3[15 + s0])))} : (ctrl[0] && !ctrl[2] || !ctrl[0] ? (ctrl[3] || ctrl[2] && ctrl[2] ? (x0[8 + s3] + p2) : x3[22]) : (!ctrl[3] && !ctrl[2] || !ctrl[2] ? p1[22 + s2 +: 6] : (x3[14] & (p0[11 +: 1] | p2[14 +: 2]))))) ^ x1[6 + s2 -: 1])}};
  assign x5 = p3;
  assign x6 = (p0 + {2{x1}});
  assign x7 = {(p2 + (ctrl[3] || !ctrl[3] || ctrl[0] ? x0[11 +: 1] : p1[18 +: 1])), (p2[12 + s1 -: 2] ^ (x0[9 +: 3] + x0[17 + s2 -: 5]))};
  assign x8 = (ctrl[1] || ctrl[2] && !ctrl[3] ? (!ctrl[3] || ctrl[2] || !ctrl[3] ? p0 : ((ctrl[2] && !ctrl[0] || ctrl[2] ? (ctrl[0] || ctrl[1] || ctrl[0] ? p3[4 + s2 -: 7] : x1) : x3[16 + s3 +: 4]) | {x2[12], x1[4 + s3]})) : {(ctrl[3] && ctrl[2] || ctrl[0] ? (ctrl[1] && ctrl[0] || !ctrl[3] ? x0[23 -: 4] : {2{x5[20]}}) : p2[27 + s3 -: 4]), {p2[14 + s3 +: 3], {2{p2[8]}}}});
  assign x9 = (({2{(p2[5 + s1 -: 1] | {2{p1}})}} & (ctrl[2] || !ctrl[0] || !ctrl[3] ? x2[18 + s1 -: 1] : p0[18 + s2])) & p1);
  assign x10 = p1[17 + s0];
  assign x11 = x8[14 -: 3];
  assign x12 = x9[24 + s2 -: 1];
  assign x13 = {2{((x9[12 +: 4] ^ (p1[13 + s0 +: 5] ^ (ctrl[0] && !ctrl[1] || !ctrl[1] ? x6[16 + s0 +: 7] : p1[21]))) - ((!ctrl[2] || !ctrl[3] && !ctrl[1] ? (p1[14] | p2[12 + s1 -: 5]) : {p3[6 + s2], (p3 + x7[10 +: 2])}) ^ x9[23 -: 2]))}};
  assign x14 = {2{x2}};
  assign x15 = x8[19 + s0];
  assign y0 = x14[17 +: 2];
  assign y1 = (p2[6 + s1] ^ (((p1[16 +: 3] | x14) ^ ({2{x1[19]}} ^ {2{(((x6[11 + s0 -: 6] | x8[17]) | p3[14 + s3 -: 8]) - (x12[6 + s2] - (x4[8] - x2[4 + s2])))}})) | {2{x13}}));
  assign y2 = (x13[10] ^ p0[10 + s3]);
  assign y3 = (!ctrl[3] && !ctrl[3] || !ctrl[3] ? (ctrl[0] || ctrl[1] && !ctrl[0] ? x14[13 + s2] : ({2{{2{x9}}}} | {2{{x10[17 + s2], (p0 | p3)}}})) : (ctrl[3] && !ctrl[0] && ctrl[2] ? {{2{(!ctrl[2] && !ctrl[2] || !ctrl[2] ? p3[22 + s1 +: 1] : (x15[15 +: 4] + ((((p1[21 -: 3] & (p1[13 + s2 +: 1] & ((p3[9 +: 1] + p0[15 -: 4]) - x12[17 +: 4]))) + x13) - x6[12 -: 1]) ^ x6[20 -: 3])))}}, x13[7 + s1 +: 1]} : (x9 & ({2{x11[23]}} ^ p3))));
endmodule
