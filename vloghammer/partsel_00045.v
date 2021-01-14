module partsel_00045(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [0:24] x4;
  wire signed [2:25] x5;
  wire [2:24] x6;
  wire signed [28:1] x7;
  wire signed [2:25] x8;
  wire signed [28:0] x9;
  wire signed [4:31] x10;
  wire [2:27] x11;
  wire [6:26] x12;
  wire [27:3] x13;
  wire signed [31:1] x14;
  wire [31:1] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [1:24] p0 = 172228230;
  localparam signed [2:27] p1 = 33289060;
  localparam signed [29:1] p2 = 773753526;
  localparam [30:7] p3 = 978234730;
  assign x4 = x0[17 -: 1];
  assign x5 = (ctrl[3] && !ctrl[1] || ctrl[0] ? ({((x0[18 +: 4] & p3[23 -: 4]) + x2[11 + s2 -: 2]), p2[11 + s2]} & ((p2 | {2{p2[18 + s1]}}) ^ x0[14 + s0])) : p0[22]);
  assign x6 = (((((ctrl[1] || !ctrl[3] || !ctrl[1] ? p0 : p3) & x5[12 + s1]) - (((p1[15 -: 4] & x5[11]) | (p2[17 +: 3] ^ p3[24 + s1 -: 6])) - p2[11 +: 3])) ^ x5[18 +: 3]) - (!ctrl[1] || ctrl[2] || ctrl[1] ? {{2{x2[14 + s2 +: 2]}}, p2[18 -: 4]} : {2{p3[4 + s2 +: 1]}}));
  assign x7 = {2{{2{{x3[21 + s1 -: 4], (x2 & x6[22 + s2 +: 1])}}}}};
  assign x8 = (({2{(ctrl[1] && ctrl[1] || !ctrl[2] ? (p3[12] - x7[3 + s0 +: 8]) : (x0[23] ^ x6[13 +: 2]))}} ^ p2[21 + s3 -: 8]) + (!ctrl[0] && ctrl[3] || !ctrl[3] ? (x3[8] | ((p2[11 +: 1] & x3[12]) | x6[30 + s1 +: 8])) : (ctrl[1] && ctrl[1] && !ctrl[1] ? {p3[10 + s1 -: 4], (p0 | x3[14 +: 4])} : ((x2[14 + s2] ^ p0[12 -: 1]) + p3[15 -: 1]))));
  assign x9 = {x4[19 +: 1], {{2{(!ctrl[1] || !ctrl[2] || ctrl[3] ? (p1 + ((p3[15 -: 1] | ((x1[12 + s3 -: 2] & x3[17 + s2 +: 2]) - x3)) - p0[11 + s0 -: 3])) : p0[20 + s1 +: 3])}}, ({2{(!ctrl[3] || ctrl[3] || ctrl[3] ? p0[17] : x4[21 + s0 -: 5])}} ^ (x3[14 + s2 +: 3] ^ p2[8 +: 4]))}};
  assign x10 = ({2{(ctrl[1] || !ctrl[0] || !ctrl[1] ? ((!ctrl[0] && ctrl[2] && ctrl[2] ? p3[13] : x7[8]) + (x2 & x5[15 + s2 +: 7])) : x2[11])}} + (ctrl[3] && !ctrl[0] || ctrl[3] ? ({x0, {(p0[16 +: 1] ^ x6), (((p1 + p3[30 + s3 +: 7]) | p3[17 -: 2]) & x2[11 + s1])}} | ((x5[21 -: 2] + x7[26 + s1 -: 7]) & p2[24 + s3 +: 1])) : (x9 - p3[18 + s2])));
  assign x11 = p2;
  assign x12 = ({p2[14 +: 4], {2{(x6[2 + s0 +: 4] ^ {2{p2[10 +: 4]}})}}} + ({{2{(ctrl[2] && !ctrl[1] && ctrl[1] ? x6[15 +: 2] : p2[31 + s2 +: 4])}}, (!ctrl[1] || ctrl[0] || !ctrl[2] ? {x10[11 +: 1], x9} : (x5 - (x6[10 + s1 +: 2] + p1[9 + s1 +: 7])))} ^ p2[23 -: 1]));
  assign x13 = ((((x0[24 + s1 -: 7] & p0[15 +: 1]) + p3[19 +: 2]) - p0[17 +: 3]) ^ x5[12 + s3 -: 8]);
  assign x14 = p0[9 +: 1];
  assign x15 = p2[14];
  assign y0 = {p3[16 + s0 +: 3], {((!ctrl[3] && !ctrl[2] || !ctrl[3] ? x5 : (x9 | x3[4 + s2])) & x9), {2{p2}}}};
  assign y1 = ({2{{x12[18 +: 3], {x9[17 + s2], x6[20]}}}} + x6);
  assign y2 = ((({x7[8 + s2 -: 8], x8[21]} & x12[30 + s0 -: 6]) & p3) ^ x9);
  assign y3 = (x11 - (ctrl[3] || ctrl[3] || !ctrl[3] ? x3 : p2[26 + s0 -: 8]));
endmodule
