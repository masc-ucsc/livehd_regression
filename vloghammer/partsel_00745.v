module partsel_00745(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [6:31] x4;
  wire signed [28:4] x5;
  wire [4:31] x6;
  wire signed [30:7] x7;
  wire [2:25] x8;
  wire signed [6:31] x9;
  wire [3:24] x10;
  wire [30:3] x11;
  wire [27:5] x12;
  wire signed [5:27] x13;
  wire signed [30:0] x14;
  wire [6:29] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [26:5] p0 = 310830042;
  localparam [7:27] p1 = 563616181;
  localparam signed [28:1] p2 = 973774501;
  localparam [1:26] p3 = 930710255;
  assign x4 = {2{(!ctrl[1] || !ctrl[1] && !ctrl[1] ? ({2{{2{(x2[17 +: 2] & x0)}}}} & x3) : (!ctrl[0] || ctrl[3] && ctrl[3] ? (x1 & (p3 | p1[23 + s2 +: 7])) : {2{p3[5 + s0]}}))}};
  assign x5 = ((((!ctrl[3] || !ctrl[2] || ctrl[3] ? {(x3[16 + s3] & x0[17 +: 3]), (x1[11] ^ p1)} : x2[15 +: 3]) & {x3, {x4[27 + s3 +: 5], ((p2[27 + s2 -: 7] & p2) - x4[20 -: 1])}}) + {2{{2{p1}}}}) | x4[16 + s2 -: 4]);
  assign x6 = ({(p0[18 + s1] ^ (ctrl[1] || !ctrl[0] || ctrl[2] ? (x1[12] | (((p2[8 + s0] + x5) + p2[19 +: 4]) | ((p3[12 + s3 +: 2] + x1) - (p3[17 +: 2] | p2[8 + s0 +: 2])))) : x3)), (x3[9] + (ctrl[1] && !ctrl[0] && ctrl[1] ? (p3[22 + s3 -: 8] & p1[17 -: 3]) : p1[10 + s2]))} - {p2[13 -: 2], x4[16 + s2]});
  assign x7 = x5[15 -: 4];
  assign x8 = p1[14 + s1];
  assign x9 = {({x2[30 + s3 +: 1], (x1[12 -: 4] ^ (x2[12] & x4[5 + s2]))} ^ p2[4 + s1 -: 8]), ({x1, (!ctrl[0] || ctrl[0] && ctrl[2] ? p0[10 +: 1] : p2[8 + s1])} & ({(ctrl[1] && ctrl[0] && !ctrl[0] ? x5[12 +: 4] : (p3 - x3[11 + s1])), (x8[20 -: 2] & (x8[2 + s0 -: 7] - (x1[13 + s1 +: 3] & x0[14 -: 4])))} & p0[19 +: 4]))};
  assign x10 = ({2{(ctrl[3] && !ctrl[1] || !ctrl[3] ? (((x6[8 +: 1] - p1[15]) - p1[15 -: 2]) + p0[15 + s1 -: 5]) : (x4[29 + s1 -: 6] - {x6[17 +: 4], x5}))}} | x2);
  assign x11 = {(x7[11 + s1] & (!ctrl[1] || !ctrl[3] || ctrl[1] ? x2[13 + s0 -: 6] : {((x9[14] & (x6[15 + s1 -: 7] ^ x1)) + (x6[12 + s1] ^ x10[26 + s3 -: 5])), p1})), (!ctrl[3] && !ctrl[2] && ctrl[0] ? p0[23 -: 1] : (((x6[15 -: 2] ^ ((p3 | x7) & p1)) & (x8 ^ p1[20])) + (!ctrl[0] && ctrl[3] && !ctrl[0] ? ((x10 & p0[14]) ^ (p1[4 + s0 -: 2] ^ p3[4 + s0])) : p0[10 + s0])))};
  assign x12 = ({((!ctrl[1] && ctrl[0] || ctrl[2] ? (ctrl[1] && ctrl[3] && !ctrl[2] ? x6[6 + s2] : p1[9 + s2]) : (!ctrl[1] || !ctrl[2] && !ctrl[1] ? x8[19 + s0] : x5[13 + s0])) | p3[26 + s0 +: 1]), p3[20 + s2 -: 4]} & p3[13 + s2 -: 1]);
  assign x13 = (ctrl[3] && !ctrl[1] && !ctrl[1] ? {2{{2{(!ctrl[2] && !ctrl[3] || ctrl[1] ? x0[13] : {x5[17 +: 1], x12[20 -: 3]})}}}} : x0[9]);
  assign x14 = p2[14 + s2 -: 2];
  assign x15 = p3;
  assign y0 = {x5, x0[0 + s2 -: 5]};
  assign y1 = p3[3 + s1 -: 5];
  assign y2 = p2[18 + s3];
  assign y3 = x3[7 + s1 +: 1];
endmodule
