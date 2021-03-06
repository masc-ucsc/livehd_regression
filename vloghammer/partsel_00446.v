module partsel_00446(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [1:30] x4;
  wire [5:27] x5;
  wire signed [29:7] x6;
  wire [4:31] x7;
  wire signed [30:0] x8;
  wire [30:2] x9;
  wire [7:27] x10;
  wire signed [24:4] x11;
  wire signed [6:30] x12;
  wire [27:1] x13;
  wire [28:4] x14;
  wire [0:29] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [30:0] p0 = 577118378;
  localparam [5:26] p1 = 998340167;
  localparam [5:31] p2 = 702534687;
  localparam signed [6:28] p3 = 491422335;
  assign x4 = x2;
  assign x5 = (({p3[16 + s1 -: 5], (p0[31 + s2 -: 8] & {2{x1[13 + s3]}})} - ((!ctrl[2] && ctrl[1] || ctrl[0] ? (x2[21 -: 3] + x1[19 +: 2]) : (p3 | x3)) & p1)) ^ ((x2[17 + s0] - p2) | (ctrl[1] && ctrl[3] || !ctrl[0] ? p3[13 -: 4] : p3[10 + s0])));
  assign x6 = x3;
  assign x7 = (((!ctrl[2] || ctrl[0] && !ctrl[0] ? p2[15] : x3[8]) & x1[20 -: 4]) + x4[17 -: 1]);
  assign x8 = x5[15 +: 1];
  assign x9 = (ctrl[3] || !ctrl[2] || !ctrl[2] ? {2{p3}} : p2[15 + s2]);
  assign x10 = {2{x1[29 + s2 -: 5]}};
  assign x11 = p0[12 -: 3];
  assign x12 = (x9[11] - ((((p2[20] + x9[19 +: 3]) + p0[7 + s1]) ^ x5[20 -: 1]) - (!ctrl[1] || !ctrl[0] || ctrl[2] ? {2{p3}} : p0[5 + s1 -: 5])));
  assign x13 = {2{((ctrl[2] && !ctrl[2] || !ctrl[1] ? ((ctrl[1] && !ctrl[0] && ctrl[1] ? x9[8 +: 3] : p2[18 -: 3]) & (ctrl[1] || ctrl[2] || ctrl[2] ? x0[10] : ((p1[4 + s3] | x3[4 + s2 +: 4]) ^ p0))) : ({x11[19], x7[4 + s2 +: 4]} | x7)) + p0)}};
  assign x14 = (ctrl[1] && !ctrl[2] && !ctrl[3] ? x11 : ({p2[16 + s1], (x7[19 +: 1] - (p1[10 + s2 +: 3] ^ p3[18 +: 2]))} ^ x13));
  assign x15 = (({p3[13 + s3 -: 8], {2{(!ctrl[1] && ctrl[2] && ctrl[0] ? p1[20] : p2[20 -: 3])}}} ^ p1[14]) - {(ctrl[1] && ctrl[2] || !ctrl[1] ? (x0 - x12) : (x8[6 + s0] + (!ctrl[3] || ctrl[1] || !ctrl[3] ? x2 : p3))), ({x9[18 +: 1], (p0[20 -: 3] + p1[19])} + p0[20 + s0 +: 7])});
  assign y0 = p2;
  assign y1 = {2{({(p3[31 + s0 +: 8] | x8[12 + s2 -: 4]), x3[8 + s2 -: 3]} | (ctrl[1] || ctrl[2] || ctrl[2] ? (p2[5 + s0 +: 3] | (p0[14] - p1[9 + s2 +: 5])) : ({2{p1[22]}} | {p2[28 + s1 +: 4], p1[13 + s2]})))}};
  assign y2 = p3[23 -: 2];
  assign y3 = p3;
endmodule
