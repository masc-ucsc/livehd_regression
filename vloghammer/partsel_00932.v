module partsel_00932(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [29:3] x4;
  wire signed [26:4] x5;
  wire signed [30:7] x6;
  wire [7:24] x7;
  wire signed [27:1] x8;
  wire [1:25] x9;
  wire [24:5] x10;
  wire [1:29] x11;
  wire [3:25] x12;
  wire signed [0:31] x13;
  wire [30:5] x14;
  wire signed [7:30] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [29:5] p0 = 227505171;
  localparam signed [29:3] p1 = 220254247;
  localparam signed [4:25] p2 = 202609245;
  localparam [1:28] p3 = 168098573;
  assign x4 = {2{(((x0 - p2[9 + s1 -: 1]) + (((p0[12 +: 4] + x3[17 +: 3]) + p0[13 -: 3]) ^ p3)) | (p3 - {x3[16], {(p0[22] & p0[18 -: 2]), (p3[15 +: 4] - p2[12])}}))}};
  assign x5 = (!ctrl[0] && !ctrl[1] || !ctrl[1] ? p3[6 + s0] : ({2{p3[9 + s3]}} ^ p1[11 + s1]));
  assign x6 = ((x4[7 + s1] ^ {x1[13 + s2 -: 2], {2{(!ctrl[0] && ctrl[3] && !ctrl[1] ? (p1[24 + s1 +: 7] & x4[17 + s3]) : p2)}}}) + {2{((((p0[17 +: 2] | p1[18]) + ((p2[19 +: 2] & x0) & x3[18 +: 4])) - p1[8 + s3 -: 3]) + p1[17])}});
  assign x7 = (p3[12] & p1);
  assign x8 = p2[17];
  assign x9 = p1[12 +: 4];
  assign x10 = (ctrl[2] && ctrl[0] || !ctrl[0] ? p2[9 +: 3] : x1);
  assign x11 = (p0 + {p2[4 + s0 +: 2], p1[9]});
  assign x12 = {2{{2{{2{(ctrl[2] && !ctrl[3] || ctrl[2] ? p3[12 -: 1] : x3[22])}}}}}};
  assign x13 = x4[16];
  assign x14 = (ctrl[0] || !ctrl[1] || !ctrl[2] ? {x9[5 + s1 +: 2], {2{(p1[2 + s1 -: 8] - x13[19])}}} : x0[17 -: 2]);
  assign x15 = (ctrl[1] || !ctrl[2] || ctrl[3] ? x3[4 + s3] : (x5[14 + s3 +: 5] + {2{x5[18 + s0]}}));
  assign y0 = (((p3[18] & {(p0[18 +: 4] - x4), p0}) ^ ((x3[10 + s3] | (x2[10 + s1 +: 2] + (p1 - p2[19 -: 4]))) | p1)) ^ x2);
  assign y1 = ((ctrl[3] && !ctrl[2] && ctrl[0] ? ((p0[19 -: 2] & x6) + p0[5 + s2 -: 3]) : ({2{(ctrl[1] || ctrl[3] && !ctrl[3] ? x15 : x2[11 + s3 -: 6])}} | (ctrl[2] || !ctrl[3] || !ctrl[2] ? {p1[10 + s2 -: 8], (x13 ^ x0[3 + s1 -: 1])} : (ctrl[0] && !ctrl[0] && !ctrl[3] ? ((p3[23] - (p2[17 +: 1] | p0)) | x10[9]) : x7)))) & {x13[7 + s3 +: 4], (p2[11 +: 4] + (ctrl[2] && !ctrl[0] && !ctrl[0] ? p3[10 +: 3] : (p1[13 +: 3] | x15)))});
  assign y2 = {2{{((!ctrl[1] && ctrl[1] && ctrl[1] ? {2{p3}} : (!ctrl[3] || ctrl[1] || ctrl[1] ? p1 : p3[9 +: 4])) & ({p3[20 -: 3], p3[23 -: 1]} & (!ctrl[2] && ctrl[0] || !ctrl[0] ? x0[4 + s0] : (x3[15 + s2 -: 8] | x12[6 + s3])))), x12}}};
  assign y3 = p3[8 +: 3];
endmodule
