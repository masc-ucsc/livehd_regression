module partsel_00169(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [6:29] x4;
  wire signed [7:26] x5;
  wire signed [5:31] x6;
  wire [28:1] x7;
  wire signed [26:3] x8;
  wire signed [29:6] x9;
  wire signed [0:30] x10;
  wire signed [6:25] x11;
  wire [0:30] x12;
  wire signed [2:29] x13;
  wire signed [1:26] x14;
  wire [5:24] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [3:29] p0 = 528570493;
  localparam [30:1] p1 = 479303866;
  localparam [2:29] p2 = 807724346;
  localparam [2:25] p3 = 596894465;
  assign x4 = {x1, (({2{{2{x0}}}} ^ p0) - x0)};
  assign x5 = x1;
  assign x6 = p0[21 + s2 +: 3];
  assign x7 = p3[26 + s2 +: 1];
  assign x8 = {p0[19 +: 4], (({(x2[15 + s1] - x6[7 + s2]), (p0[6 + s3] + (p0[7 + s1 -: 2] & p2))} + x5[15 + s1 +: 8]) - ({p2[15 +: 4], {(p0[12] - x1), x1[10 + s1 -: 7]}} + (ctrl[1] && ctrl[0] || ctrl[1] ? p2[13 + s3] : x3)))};
  assign x9 = {(p0[12 +: 1] ^ x0[12 +: 3]), ((((x7[12] & x0[10]) | {2{p0[18]}}) | {2{p1[14 +: 3]}}) | x4[14 + s3])};
  assign x10 = p1[16];
  assign x11 = (x7[15] + (!ctrl[2] && !ctrl[3] || ctrl[1] ? {2{{p0[0 + s1 +: 1], (p1[13 -: 4] - p1[22 -: 4])}}} : (p3[15 +: 4] & x6[13 +: 3])));
  assign x12 = {((x8[16 + s2] - p2[18 -: 4]) - x9), (p3[10 + s3] - (ctrl[3] && !ctrl[1] && ctrl[3] ? x0[15 + s0] : ((p0 & p0[19 + s1 -: 3]) ^ x8[17 + s0 +: 7])))};
  assign x13 = (ctrl[3] || !ctrl[3] && !ctrl[2] ? x5[16 + s0] : (ctrl[3] || ctrl[0] || !ctrl[2] ? x3[21 -: 1] : (ctrl[2] || !ctrl[0] || !ctrl[2] ? x0[7 + s2 +: 4] : (!ctrl[3] || !ctrl[2] && !ctrl[2] ? x1[30 + s2 +: 7] : {2{p3[28 + s1 -: 6]}}))));
  assign x14 = p3[10 + s3 -: 8];
  assign x15 = ((p0[8 +: 4] - (x13[14] - x6[21 -: 2])) - (p0[18 + s1 -: 5] ^ p1[9]));
  assign y0 = {2{{2{{2{p0[12 +: 1]}}}}}};
  assign y1 = x1[22 + s1 -: 8];
  assign y2 = p3[8 +: 4];
  assign y3 = p2[20 + s3 +: 5];
endmodule
