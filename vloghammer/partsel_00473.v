module partsel_00473(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [3:30] x4;
  wire [5:26] x5;
  wire signed [30:6] x6;
  wire signed [27:7] x7;
  wire [6:28] x8;
  wire [3:29] x9;
  wire [2:31] x10;
  wire signed [4:24] x11;
  wire [28:7] x12;
  wire [29:6] x13;
  wire signed [3:27] x14;
  wire [31:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [29:0] p0 = 17417403;
  localparam [29:2] p1 = 228852491;
  localparam [1:28] p2 = 473739778;
  localparam [26:2] p3 = 90459056;
  assign x4 = {({2{(p2[20 + s0 +: 8] + {2{(x0[16 -: 3] - x3[31 + s3 +: 6])}})}} & x0), (x0 & x2[4 + s3 +: 5])};
  assign x5 = p2[10];
  assign x6 = p0[8 + s0 +: 2];
  assign x7 = {2{x6}};
  assign x8 = ((!ctrl[3] || ctrl[3] && !ctrl[2] ? x1[22 -: 3] : x7[20 -: 2]) + (({2{(p1[23 -: 2] & p2[19 +: 3])}} + ((p0[30 + s0 +: 2] - (x3 ^ x6[21 + s3 -: 5])) - {2{x7[19 + s1]}})) - (!ctrl[2] && ctrl[0] || !ctrl[2] ? (((p1[20 -: 4] & x4) ^ p2) & {(x0 & ((p1[10 + s2] ^ p1[12 -: 1]) - ((x0 + x0[11]) ^ (x3 & p2[14])))), x6[15 -: 3]}) : (p3[12 -: 3] ^ (p0[14 -: 4] - x1)))));
  assign x9 = {(x0 | ({(p0[4 + s1] - p0[8 + s0 -: 8]), p3} ^ p0)), (!ctrl[2] || !ctrl[3] && ctrl[1] ? (ctrl[2] && !ctrl[0] && ctrl[2] ? {(x4 ^ x1[9 +: 1]), x8[22]} : p3[13 +: 1]) : ({((p2 - (p3 & x2[10 + s2 -: 5])) & x6), (p1[21 + s1 +: 1] ^ p0[20])} ^ (ctrl[3] && ctrl[2] || ctrl[1] ? {2{x5}} : (p0[1 + s1 +: 1] | (x4 - p3[1 + s0 -: 2])))))};
  assign x10 = p1;
  assign x11 = p3;
  assign x12 = p3[16];
  assign x13 = p2;
  assign x14 = {(({2{(x7[19 +: 2] - p1[18 +: 2])}} | ({2{(p2[12 + s2] & x4[20])}} + (x2 ^ p3[12 +: 2]))) | {{p0[29 + s3 +: 1], p1}, p0}), x12};
  assign x15 = {p3[9], p0[12]};
  assign y0 = p1[13 + s3];
  assign y1 = (((x15[13 + s1 -: 2] + (x1[21] + p2[12 + s3 +: 2])) + ((p3 - p2) & p0[19 +: 4])) & {2{p2[9 + s0]}});
  assign y2 = p1[16];
  assign y3 = (p3[14 -: 3] - p0[13 + s3]);
endmodule
