module partsel_00391(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [0:26] x4;
  wire [28:3] x5;
  wire signed [6:30] x6;
  wire [3:29] x7;
  wire [2:26] x8;
  wire [30:5] x9;
  wire signed [1:29] x10;
  wire signed [5:25] x11;
  wire signed [6:29] x12;
  wire [2:28] x13;
  wire signed [24:1] x14;
  wire [27:4] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [30:0] p0 = 967682475;
  localparam [27:5] p1 = 944138613;
  localparam signed [31:0] p2 = 439286847;
  localparam [5:27] p3 = 89109859;
  assign x4 = (ctrl[0] && !ctrl[1] || ctrl[1] ? {2{((!ctrl[2] || ctrl[0] || ctrl[3] ? ((p0[18] & p2) - x1[8]) : {2{p1[8 +: 4]}}) + {2{p2[19 +: 2]}})}} : p1[8 + s0 +: 2]);
  assign x5 = x2[20 -: 1];
  assign x6 = {(ctrl[1] && !ctrl[3] && ctrl[0] ? x0[5 + s0 +: 8] : x5[9 + s2]), (ctrl[0] || ctrl[0] || !ctrl[0] ? {({2{x2}} ^ {x2[12 +: 3], (x3[11 +: 3] & p2[26 + s0 -: 5])}), x3} : (({2{x4[18 + s2]}} & (!ctrl[2] && !ctrl[2] && !ctrl[2] ? x0[13 + s3] : p0[11 + s1])) | ((x4[31 + s2 -: 8] | x5[1 + s3 -: 5]) & (p3[20] ^ (x2[5 + s3 -: 3] | p2[21 -: 3])))))};
  assign x7 = x3[17 + s0];
  assign x8 = {x3[7 + s2], {2{({(x6[16 + s0 -: 7] - x5[14 + s1 -: 7]), p1[20]} + (p3[13 +: 1] ^ x0[17 + s2]))}}};
  assign x9 = ((x3[14 +: 2] + {((p0[8 +: 2] & x2[19 -: 4]) | x8[23 -: 1]), ({((x6[15 -: 3] | (p1[17 -: 4] & p1[30 + s2 +: 1])) ^ p0[10 + s0 -: 3]), x6[21 -: 4]} ^ p2[17 +: 3])}) | ({2{(!ctrl[2] || !ctrl[1] || ctrl[2] ? (ctrl[3] || ctrl[0] && !ctrl[2] ? x8[2 + s1 +: 1] : p3[14]) : {x4[7 + s2 +: 8], x0[27 + s2 -: 4]})}} & {2{{2{p0}}}}));
  assign x10 = ((!ctrl[3] && !ctrl[2] || ctrl[1] ? {2{(!ctrl[3] && !ctrl[3] || ctrl[2] ? x5[4 + s2] : x0[9 + s0 +: 1])}} : p2) + x7[15 + s2]);
  assign x11 = (p2[9 + s2 +: 2] - p3);
  assign x12 = ((!ctrl[3] || !ctrl[3] || !ctrl[1] ? p2[20] : p0) ^ x0);
  assign x13 = (p2[17 +: 1] & p2[24 + s0 +: 4]);
  assign x14 = x11[12 +: 1];
  assign x15 = p1[24 + s2 -: 6];
  assign y0 = {(x2[13 + s1] & (((p3[11 +: 3] & p3[17]) | (p0[3 + s3 +: 6] | x6[19 + s1])) - x14)), {p2, x2[10 +: 4]}};
  assign y1 = p0[6 + s3 +: 3];
  assign y2 = p1[15 +: 3];
  assign y3 = x12[12 + s1];
endmodule
