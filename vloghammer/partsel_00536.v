module partsel_00536(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [6:29] x4;
  wire signed [31:5] x5;
  wire [1:28] x6;
  wire signed [30:0] x7;
  wire [6:31] x8;
  wire signed [29:4] x9;
  wire signed [0:30] x10;
  wire [6:26] x11;
  wire signed [6:27] x12;
  wire signed [6:31] x13;
  wire signed [1:26] x14;
  wire [1:28] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [0:24] p0 = 727447088;
  localparam signed [0:27] p1 = 206202872;
  localparam signed [7:31] p2 = 891115036;
  localparam [26:4] p3 = 26917666;
  assign x4 = {2{{({x3[11], x1[13 + s2]} | {2{p3[3 + s1 -: 2]}}), (x3[24 + s3 +: 4] - ((!ctrl[0] && !ctrl[2] && !ctrl[0] ? p3[9 + s1 -: 8] : x2) ^ {2{x1[12]}}))}}};
  assign x5 = p3[7 + s1 -: 6];
  assign x6 = ((((x2[17] | x4[22 + s0 +: 6]) ^ ({x5[17 +: 1], p1} + (p3[2 + s2 +: 4] & p0))) & {2{((x1[17 -: 1] - (x5[11 + s0 +: 4] + x5)) - {2{p2[19 +: 3]}})}}) & {x3[9], x3[26 + s1 +: 5]});
  assign x7 = ({x5[25 + s0 -: 3], {2{(x4[18 + s2 +: 6] | (ctrl[3] && !ctrl[1] || !ctrl[0] ? x3[18 + s2] : p0[8]))}}} + x4[14]);
  assign x8 = ({(x5[12 +: 4] | x3[16]), (((!ctrl[0] && !ctrl[2] || ctrl[2] ? p3 : (p0[12 +: 1] - x2[15 + s2])) - (p0[15 +: 4] ^ x5[8 + s2 +: 6])) & x2[13 +: 2])} ^ (x4 & ((p2[14] ^ {p2[23 -: 4], p1[0 + s3 -: 2]}) | {(x6[22 -: 3] ^ p3[15]), {2{p2[18 + s2]}}})));
  assign x9 = ((!ctrl[3] && !ctrl[1] || ctrl[0] ? (((x0[15 -: 2] + x5[10 +: 3]) + (p2[18 +: 3] & (x5[16 + s1] + x7[13 + s2 +: 6]))) | {(p2[20 + s1 -: 5] ^ p0[21 + s2 -: 8]), (p1[27 + s1 +: 4] & x5)}) : p3[28 + s3 +: 5]) - {2{x2[15 -: 4]}});
  assign x10 = {2{p3[18 -: 1]}};
  assign x11 = (({{p0, {x5[16 -: 4], x7[25 + s3 -: 6]}}, (((p3 ^ x2[26 + s0 -: 4]) ^ p1) - p2[21 + s3 +: 4])} & ({2{p3[18]}} ^ {2{x6[22]}})) ^ ({(ctrl[1] || !ctrl[2] && !ctrl[3] ? ((p3 ^ x7) - x2[31 + s1 -: 5]) : (x10[16 + s3] ^ x6)), ((!ctrl[3] && ctrl[1] || !ctrl[1] ? (x10 - x7[19 -: 2]) : x7[4 + s3 +: 2]) & {2{x5[9 + s2 -: 8]}})} - ((x3[21] - p1[4 + s0 +: 2]) & {p2, p2[18 -: 2]})));
  assign x12 = (x4[18] & ({2{(x3[12 -: 2] | x9[23 -: 4])}} - {x1[6 + s0], x6[8 +: 2]}));
  assign x13 = {(!ctrl[1] && !ctrl[2] && !ctrl[2] ? {2{(ctrl[2] && !ctrl[1] || !ctrl[3] ? {2{p3}} : p2[18 +: 2])}} : x2[15 +: 1]), x4[0 + s2 -: 4]};
  assign x14 = x10[10 + s3 +: 1];
  assign x15 = p2;
  assign y0 = (x5[4 + s3] | p0[12 -: 1]);
  assign y1 = (p0[9] & p0[23]);
  assign y2 = x7[22];
  assign y3 = x6;
endmodule
