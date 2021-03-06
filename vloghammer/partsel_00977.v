module partsel_00977(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [29:0] x4;
  wire [0:26] x5;
  wire signed [1:26] x6;
  wire signed [31:1] x7;
  wire [4:30] x8;
  wire signed [7:24] x9;
  wire [25:0] x10;
  wire [2:30] x11;
  wire signed [0:24] x12;
  wire signed [6:25] x13;
  wire [28:7] x14;
  wire signed [26:4] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [3:30] p0 = 119317876;
  localparam signed [6:24] p1 = 257803787;
  localparam [5:30] p2 = 26863436;
  localparam [7:29] p3 = 898774436;
  assign x4 = (ctrl[2] || ctrl[3] || !ctrl[1] ? (((!ctrl[0] && ctrl[2] && ctrl[0] ? {2{(((p3 - p1[27 + s3 -: 4]) | p2[16]) ^ x3[19 + s0])}} : x1[19 + s1 +: 5]) - {2{p2[12 + s1]}}) ^ ({{(x0[19 +: 2] ^ (p3[13 + s3] & x0[22 + s2 +: 1])), x1[21]}, x3[9 +: 4]} - x3[18 -: 1])) : {2{{(x1[16 -: 4] & ((p2 & ((p0[17 +: 3] & x1[20 + s1 -: 7]) + p2[18])) + x1[21])), (ctrl[0] && !ctrl[0] && !ctrl[1] ? x1[8 +: 3] : {2{(x1[17 +: 4] - x3)}})}}});
  assign x5 = ((p1[12 + s3] | (x4[15 +: 1] - ({x1[17 -: 3], x4[26 + s1 +: 6]} & p0[18 +: 4]))) ^ x4[11 + s0 +: 5]);
  assign x6 = {(x1[20] - ((x2[26 + s0 +: 1] - x4[19]) & (p0[18 +: 2] ^ p2[4 + s3 +: 6]))), ((p1[13 +: 3] | (ctrl[0] || ctrl[2] && ctrl[1] ? (p0[20] | p1[23]) : (ctrl[0] && !ctrl[1] || ctrl[3] ? x0[11 + s3] : p3[17 +: 1]))) - {(p2[21] | (p2[19 -: 1] - (p2[16 + s0] - x4[13]))), ((p1 & (p3[11] ^ x5)) ^ x1)})};
  assign x7 = (ctrl[0] || !ctrl[0] && ctrl[1] ? {2{({p1[21 + s1 -: 7], (p1 & x1[5 + s1 +: 5])} ^ p2[21 + s0 -: 5])}} : ((((p1[19 + s3] - (p2[14 -: 2] ^ p2)) | p3[19]) & (p0[23 + s3 -: 3] ^ p3[22])) - (!ctrl[3] || ctrl[1] || ctrl[3] ? {2{p0[22]}} : (p3[10 + s2] | p0[10 +: 1]))));
  assign x8 = p0[13 + s2];
  assign x9 = x2[14 -: 1];
  assign x10 = ({(ctrl[1] && !ctrl[2] && ctrl[1] ? p1[23 + s1 -: 7] : ((x9 + p2) - x5[18 -: 4])), {p0[17 + s0 +: 5], (ctrl[1] && !ctrl[1] || ctrl[0] ? p0[8 +: 4] : (p3 ^ x7[13 + s0 -: 8]))}} ^ ({2{p2}} & {2{((((p2[25 + s0 -: 5] | x9) + p3) | p1[19 + s2 +: 7]) | {2{p1[17]}})}}));
  assign x11 = (((p3[19 + s1 +: 7] | {x7[19 +: 3], ((((x7 ^ (x9 & p0)) + x6[23 + s0 +: 5]) & p0[2 + s2 +: 2]) & x4[16 +: 1])}) + x2) + p2[28 + s1 +: 8]);
  assign x12 = ({((x2[1 + s0 +: 6] + {x6[27 + s1 -: 6], ((x10[5 + s3] ^ (p1[8 + s0] + x6)) & p2)}) - p1[14]), {2{x5[18 -: 4]}}} | {2{(x3 & (x7[13] - x11[3 + s3 +: 1]))}});
  assign x13 = x5;
  assign x14 = p3[18 -: 3];
  assign x15 = {2{p0}};
  assign y0 = {p0[8 + s2], ((x9[18 + s0] - ((x1 ^ p2[0 + s2 -: 1]) + {p3[18 +: 3], x7})) & {(x5[8 +: 2] ^ p3[22]), ((x7[9 + s1 +: 5] & p2[8]) ^ x0[17 + s1 -: 6])})};
  assign y1 = p0;
  assign y2 = {2{{2{p0}}}};
  assign y3 = {{2{{2{(ctrl[2] && ctrl[3] || ctrl[0] ? {2{x14[21 -: 2]}} : x13[27 + s2 -: 6])}}}}, ({2{p2[21 + s2 -: 7]}} & x13)};
endmodule
