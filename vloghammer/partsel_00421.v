module partsel_00421(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [7:26] x4;
  wire signed [1:24] x5;
  wire signed [4:27] x6;
  wire [24:2] x7;
  wire [29:7] x8;
  wire [0:29] x9;
  wire [24:7] x10;
  wire signed [31:6] x11;
  wire [29:3] x12;
  wire signed [25:1] x13;
  wire [1:30] x14;
  wire [0:27] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [1:25] p0 = 874186890;
  localparam signed [3:27] p1 = 736624649;
  localparam [7:24] p2 = 570234994;
  localparam [31:2] p3 = 26618722;
  assign x4 = x0[8 + s1];
  assign x5 = {2{x4[11 + s3]}};
  assign x6 = (({(ctrl[0] || ctrl[3] || ctrl[0] ? {x2[21 + s3 +: 2], ((x1[19 +: 3] - (x1 + x5[9 +: 3])) - x1[22 + s3 -: 1])} : {(p0 + p2[26 + s2 +: 2]), (p3 - p0[23])}), p1[17 + s0]} ^ {({x5[8 + s3 +: 8], (x0[17 + s0 -: 2] & x5[8 + s0])} & {(p2 | x3[21 -: 2]), ((p3[1 + s3 -: 6] | p3) + (x3[26 + s2 -: 4] | (p3[12 + s1 -: 2] - (p1[16 -: 3] + p0[9 +: 4]))))}), x1[13]}) & (!ctrl[1] && !ctrl[1] || !ctrl[1] ? p3[23 + s3 -: 2] : p3));
  assign x7 = (x2[11 + s0] - p1);
  assign x8 = ((p2[8 + s0] & {2{x3[17 -: 4]}}) ^ (ctrl[3] && ctrl[3] || !ctrl[0] ? (p1[23 + s0 +: 5] & (ctrl[1] && !ctrl[2] && !ctrl[3] ? p2[19] : {x5[2 + s2 +: 4], x1[17 + s2 +: 3]})) : {{x0[5 + s3 -: 5], x2[9]}, ((x7 | x1[13 -: 2]) - p2[28 + s1 +: 5])}));
  assign x9 = x5;
  assign x10 = (ctrl[2] && !ctrl[2] && ctrl[1] ? x6[1 + s2 +: 4] : p0[4 + s0]);
  assign x11 = x0[11 +: 4];
  assign x12 = p1;
  assign x13 = x3[15 -: 2];
  assign x14 = (ctrl[1] || ctrl[1] && ctrl[0] ? p2[17 + s2] : {2{(({((p3[19 +: 4] + p3[12 -: 3]) & x3[19 -: 1]), x7[19 +: 1]} | x2[15 + s1 -: 4]) ^ {2{x13[13 +: 3]}})}});
  assign x15 = ((x4[18 + s3] & x5) - (x1[27 + s0 -: 6] - (x3[11 +: 3] & p3)));
  assign y0 = (x1[17 + s0 +: 3] & x8[17]);
  assign y1 = (ctrl[3] || !ctrl[3] || ctrl[0] ? (((x14 + {2{((p1[27 + s2 -: 5] - p3[15]) & p1[23])}}) | {2{x5[2 + s2 -: 7]}}) & ({(x8 & p2[19 -: 3]), x7[23 -: 2]} - p0[14 + s3 +: 7])) : x15[19 + s3]);
  assign y2 = {2{((p0[0 + s1 +: 3] | (!ctrl[2] || !ctrl[2] || !ctrl[2] ? (((x0[10 +: 3] + x5[14 +: 4]) | x9[14 +: 4]) - p0[25 + s2 -: 1]) : (p0 & p3))) | (({2{x1[19]}} & (p3[7 + s3] & x10[15 -: 4])) | (x6 & {2{p3[17]}})))}};
  assign y3 = {2{((p3 & ((x8[6 + s2 -: 5] & x12) & (p2 | p2))) + (p3[1 + s2 +: 4] & x3))}};
endmodule
