module partsel_00376(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [27:2] x4;
  wire [0:31] x5;
  wire [27:7] x6;
  wire [0:25] x7;
  wire signed [24:5] x8;
  wire signed [6:24] x9;
  wire signed [3:25] x10;
  wire signed [30:2] x11;
  wire signed [6:30] x12;
  wire signed [1:25] x13;
  wire [7:27] x14;
  wire [29:0] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [6:24] p0 = 943450333;
  localparam [5:25] p1 = 879143737;
  localparam [7:26] p2 = 701821067;
  localparam signed [0:24] p3 = 46229746;
  assign x4 = (!ctrl[0] && !ctrl[3] && ctrl[1] ? x3[14 +: 2] : p3[11]);
  assign x5 = x2[7 + s3];
  assign x6 = (ctrl[1] || ctrl[0] && ctrl[2] ? ({(p1 + {p0, p2[17 +: 4]}), p2[16]} ^ p0[4 + s1 -: 8]) : (ctrl[0] || !ctrl[2] && ctrl[2] ? x3[5 + s2] : (ctrl[3] && ctrl[3] || !ctrl[1] ? x3[21 -: 4] : {{x1[9 + s0 -: 6], x5}, {2{((((((x2[5 + s0 -: 2] + (x2[9 +: 3] + x2[22 -: 2])) - x3[19 +: 2]) | p3[10 +: 1]) & (p0[16] | (x0[6 + s2 -: 3] | (x2[8] | x2)))) + x1[13 -: 3]) & p3[12 + s0])}}})));
  assign x7 = p0[17 + s3 -: 5];
  assign x8 = p0;
  assign x9 = {({(p0[23 -: 3] + x3[21]), ({2{p0[8 +: 3]}} + p1[31 + s3 +: 6])} - {2{(ctrl[1] && ctrl[1] && ctrl[2] ? p0 : x2[10])}}), ((((x6[10 +: 3] + p2) - p3[12 + s3 -: 5]) - (p3[23 -: 4] | (x7[5 + s1] ^ p2[18 +: 2]))) | p3[19 + s2])};
  assign x10 = ((ctrl[3] && ctrl[1] || !ctrl[3] ? x1[19 +: 4] : x5[30 + s3 +: 5]) | (ctrl[1] && ctrl[3] && ctrl[2] ? (({2{x9[19 + s1 +: 4]}} + (p3[21] | p1[20 -: 4])) & {(ctrl[3] && ctrl[0] || !ctrl[2] ? x0[15] : p1), {2{x2}}}) : ({(x5 - x2), {2{(x9 + p3[9 +: 1])}}} - (x4 - x3[13 + s1]))));
  assign x11 = p2[16 -: 1];
  assign x12 = x2;
  assign x13 = (x4[15] ^ (ctrl[1] && ctrl[0] || !ctrl[1] ? {x10, x3} : (((x6[20 -: 1] - p1[9]) - (x0[18 + s2 -: 5] & x11[23 -: 4])) ^ x4)));
  assign x14 = ({(x4[11 +: 1] | ((x3[16 -: 3] ^ (p1[11] | x12[15 -: 4])) | x9)), {2{(ctrl[0] || ctrl[3] && ctrl[2] ? (x9[9 +: 2] | x3[10 +: 2]) : ((x9[11 +: 3] | x9) & x12[12]))}}} ^ (x7 & (!ctrl[0] || !ctrl[0] || !ctrl[0] ? {(!ctrl[1] || ctrl[3] && ctrl[1] ? x13[19] : x9[31 + s2 +: 1]), (p2[10 +: 4] + x13)} : ({p2, x4[31 + s1 -: 7]} - p1))));
  assign x15 = p2[19 +: 1];
  assign y0 = ((x10[17 + s2] + {2{(((p2[8 +: 2] & p1[18 -: 2]) ^ p3[12 +: 1]) + {((p2[31 + s3 +: 4] & p3[9 + s0]) + p0[16 -: 2]), x15[14 +: 3]})}}) & ({((ctrl[1] && ctrl[0] && ctrl[1] ? p3 : p3) - {(x7[13 -: 2] ^ x11), x10[18]}), {2{{2{p1}}}}} ^ ((x7 | (x1[5 + s3 +: 7] | x8[12 -: 4])) - p1[17 +: 4])));
  assign y1 = ((p3[4 + s1 +: 7] & ((x3[13 + s0] - p3) + p0[21 -: 1])) | p0[13 + s2 -: 8]);
  assign y2 = {(((p2 | {(x7[20] & p0), (((p0[19 +: 4] & (p3 & x6[23])) & x3[13 + s2 -: 3]) & x5[17 +: 4])}) & ({2{p1}} + (p1[15 -: 3] | p1[14 + s3 +: 2]))) | x14), (({2{((p0[13] & ((p3[24 + s0 +: 2] | x4[9 +: 4]) ^ x1)) & x3[23 -: 3])}} + {2{{2{p1[15 +: 4]}}}}) - p1)};
  assign y3 = {2{x4[8 + s2 +: 3]}};
endmodule
