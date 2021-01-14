module partsel_00380(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [0:27] x4;
  wire signed [29:3] x5;
  wire [24:5] x6;
  wire signed [31:0] x7;
  wire signed [25:7] x8;
  wire [1:28] x9;
  wire signed [26:0] x10;
  wire [6:25] x11;
  wire [27:4] x12;
  wire [25:2] x13;
  wire signed [27:0] x14;
  wire [1:27] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [3:28] p0 = 621617520;
  localparam [1:30] p1 = 127787749;
  localparam [2:27] p2 = 23012830;
  localparam signed [0:27] p3 = 972456469;
  assign x4 = p0;
  assign x5 = ({(ctrl[0] && !ctrl[2] && ctrl[0] ? p1[13 + s0 +: 6] : x1[19 + s3 +: 6]), p0[13 -: 1]} & (p0[12] - {x2[11 + s3 +: 6], p0[12]}));
  assign x6 = p0[13 -: 2];
  assign x7 = {{2{(!ctrl[1] || ctrl[3] || !ctrl[1] ? p0[13 + s2 -: 4] : ((!ctrl[0] && !ctrl[3] || ctrl[1] ? p0[20] : p1[12 +: 1]) & p0[17 + s3]))}}, (!ctrl[0] || !ctrl[2] && !ctrl[1] ? {2{x0[13 -: 4]}} : (!ctrl[1] && !ctrl[1] && !ctrl[1] ? (!ctrl[1] || ctrl[3] && ctrl[3] ? ((x5[20] | x3) ^ x6[10 +: 4]) : p1[19]) : ((!ctrl[0] || ctrl[3] || ctrl[2] ? x2 : p2) - (x6 & (x2[22 -: 3] - (x3 | x5[19 +: 1]))))))};
  assign x8 = (!ctrl[2] || !ctrl[2] || !ctrl[1] ? {({{2{(p2[19 + s3] - x4[21 + s1 +: 8])}}, {p2[9 + s0 -: 3], (p1[15 -: 2] & x7[16 -: 4])}} ^ (x6[19 -: 2] - (p3 - (p0[17] & x4[25 + s0 +: 2])))), (p0[14 +: 1] + (!ctrl[2] || !ctrl[3] && !ctrl[1] ? (p2[19 + s2 -: 5] & x2[11 +: 2]) : p3[17]))} : p2[22 -: 4]);
  assign x9 = {2{((p0[16 +: 3] - ((x7[13 + s1] ^ (x8[12 + s3] & x4)) + p2[10 +: 4])) | {x4[18 + s3], {2{(x8[11 + s1] & x8[16])}}})}};
  assign x10 = (({2{(p0 & (p0[14] | ((x5[15 + s3 +: 1] | x1[9 + s2]) | p3[23])))}} & (ctrl[0] && ctrl[0] || ctrl[2] ? p2[21 -: 4] : ({p2[14 + s1], x6[15 +: 1]} ^ (x9[7 + s0] + x5[9 + s3])))) - (!ctrl[1] || ctrl[0] && !ctrl[3] ? (!ctrl[3] || ctrl[1] && ctrl[0] ? x3[17] : ((p0[4 + s1 +: 5] & p1[14 +: 4]) | x1[21 -: 2])) : {2{x3}}));
  assign x11 = p3[13 -: 2];
  assign x12 = p3[30 + s3 -: 3];
  assign x13 = (p0[14] & (({{x2[8], p0[9]}, {2{x8}}} & (!ctrl[1] && ctrl[1] || !ctrl[1] ? p2[5 + s3] : p3)) ^ x10));
  assign x14 = {(!ctrl[1] && !ctrl[0] || ctrl[3] ? (((!ctrl[2] || ctrl[1] || ctrl[2] ? (p2[19 + s0] - (x6[12 + s3 +: 6] - ((x5[22 -: 2] | x9[16]) & p1[13 + s3 +: 2]))) : p2[12 + s0]) + {2{p1[7 + s0 +: 1]}}) - x0[20]) : p0[17]), {({2{{p2[23], x11[22 -: 2]}}} & p3[9 +: 4]), (({2{p1[8 +: 1]}} ^ p3) ^ x11[21 -: 2])}};
  assign x15 = ((x3[12 + s2] ^ ((x8[20 -: 4] ^ {x1[31 + s1 -: 6], p3[10 + s2]}) + ((p3 - p2) - (p1 ^ p2)))) + ({(x8[21] + {(x14[13 + s2 -: 6] + p1[10 + s1]), p3}), x2} - p3[31 + s2 +: 7]));
  assign y0 = ({2{{2{p2}}}} + p2[5 + s0 +: 3]);
  assign y1 = {2{{{2{((p2 | x15) - (!ctrl[1] && !ctrl[1] && ctrl[1] ? p3[3 + s1 -: 6] : x5[29 + s2 +: 2]))}}, (p3 ^ p1[15 + s2 +: 3])}}};
  assign y2 = x5[19 + s2];
  assign y3 = ((!ctrl[1] || ctrl[0] && ctrl[3] ? p2[27 + s3 -: 1] : p0) ^ x14);
endmodule
