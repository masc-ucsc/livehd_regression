module partsel_00478(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [6:29] x4;
  wire [26:1] x5;
  wire [4:26] x6;
  wire signed [3:26] x7;
  wire [30:6] x8;
  wire [4:24] x9;
  wire [6:26] x10;
  wire [25:2] x11;
  wire [29:7] x12;
  wire signed [24:6] x13;
  wire signed [25:0] x14;
  wire [6:28] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [6:24] p0 = 203959482;
  localparam [0:31] p1 = 210519782;
  localparam [27:2] p2 = 722645770;
  localparam [2:27] p3 = 582467269;
  assign x4 = p1[23 -: 3];
  assign x5 = x0;
  assign x6 = (p2[4 + s1] + {{2{(x1 - (x4[22] | ((x1[20 -: 4] & (x0[1 + s3 +: 1] - p2[8])) + x1[23 + s1 +: 6])))}}, ({2{(p0 & p2[24 + s1 -: 6])}} & x4)});
  assign x7 = (x2 ^ (p2 & (x5 ^ {2{(x6[11 +: 2] - x3[15 +: 2])}})));
  assign x8 = x0[15 -: 2];
  assign x9 = {{(!ctrl[3] || ctrl[2] && !ctrl[2] ? x8[20] : ({x0[4 + s3], p3[22]} - (x1[13] ^ (x1[17 + s2 -: 3] + x6)))), x6}, {2{(x6[14 +: 3] ^ p1)}}};
  assign x10 = ((p0[18 -: 2] - (!ctrl[2] || ctrl[3] && ctrl[2] ? ((x1[5 + s0 +: 3] - x0[17 +: 2]) - (x9[13] | x0[22 + s1 +: 7])) : {2{((((x6 - p3[17]) + p2[17 + s3]) ^ x1[15 -: 2]) ^ (x4 + (p2 ^ p2[15 + s0 -: 8])))}})) & x9[8 +: 3]);
  assign x11 = {x3[17], (ctrl[1] || ctrl[1] && !ctrl[2] ? {x4, x9[10 +: 1]} : {p1[22 -: 2], {((p3[21 -: 1] + x0[5 + s1 -: 3]) - x4[1 + s0 -: 7]), x9[17]}})};
  assign x12 = p2[31 + s0 +: 8];
  assign x13 = x5[12 -: 2];
  assign x14 = ((p1[12 + s2] & (x11[23] - ((!ctrl[0] && ctrl[2] && !ctrl[3] ? x10 : x8[19 +: 4]) - ((x9 + x11[8]) & p2)))) - x11[26 + s0 -: 7]);
  assign x15 = x12[19 +: 3];
  assign y0 = p2[9 + s0 +: 7];
  assign y1 = {{p3, ((p1[8 + s1] - (!ctrl[3] && !ctrl[3] && ctrl[2] ? x8[21 -: 1] : p2)) | x14)}, ({2{{2{x2[16 +: 2]}}}} ^ ({(p0[21 + s0 -: 3] & x6), p0[2 + s0 +: 1]} + {{2{(x13[17 + s1] + (x4[13] ^ x4[14 + s1 -: 4]))}}, x13}))};
  assign y2 = p1;
  assign y3 = x1[23 -: 3];
endmodule
