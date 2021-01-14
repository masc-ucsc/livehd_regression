module partsel_00398(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [25:0] x4;
  wire [3:31] x5;
  wire [29:5] x6;
  wire signed [31:6] x7;
  wire [4:31] x8;
  wire signed [0:28] x9;
  wire [5:27] x10;
  wire signed [26:7] x11;
  wire signed [1:25] x12;
  wire signed [4:26] x13;
  wire signed [7:30] x14;
  wire [5:25] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [31:5] p0 = 784959270;
  localparam signed [26:1] p1 = 420630584;
  localparam [24:7] p2 = 305121839;
  localparam [7:24] p3 = 583716592;
  assign x4 = {2{{(((x1[17] ^ p3[21 -: 2]) & ((x1[5 + s2] - x0) + x0[21])) & (((p2[17 + s0 -: 5] + p1[14 + s3]) | (x0[4 + s3] | p1)) | (ctrl[1] || ctrl[3] || !ctrl[1] ? p3 : p2[13]))), p1[22]}}};
  assign x5 = {p0[15 + s0 +: 4], p0};
  assign x6 = x3[15 -: 4];
  assign x7 = (ctrl[0] && ctrl[0] && ctrl[0] ? (x5[3 + s3 -: 1] - p3[20 + s0 -: 7]) : x3[17]);
  assign x8 = (ctrl[3] || !ctrl[0] || ctrl[1] ? {2{((x3[15] - (p3[13 + s1 +: 7] + (x4 & p1[21]))) - p1)}} : x7[11 +: 2]);
  assign x9 = x6[21 + s3 -: 5];
  assign x10 = x8[9 +: 1];
  assign x11 = {p2[17 + s1 +: 7], ((p0[15] ^ {{2{p1[10 + s1]}}, (p1[13 + s2 +: 8] & p1[0 + s0 -: 5])}) | p2[8 + s3 -: 5])};
  assign x12 = x0[6 + s3];
  assign x13 = {2{x5[18]}};
  assign x14 = x2[9 + s3 -: 4];
  assign x15 = (p1[23] ^ (p1[18] & {(!ctrl[3] && !ctrl[3] || !ctrl[1] ? x3[13 -: 2] : x0), {p0, {(p3 + (p0[20 + s1 -: 5] + (x11[9 + s3] - x8))), p0}}}));
  assign y0 = p1[6 + s3];
  assign y1 = (x12[17 + s1 -: 4] - x4[29 + s3 +: 4]);
  assign y2 = (((ctrl[3] && ctrl[1] && ctrl[0] ? {2{{x0[13], x1[18 +: 4]}}} : x11[18 + s1]) + p0) - (!ctrl[1] || !ctrl[1] && !ctrl[3] ? (x2 | x4[27 + s3 +: 2]) : x10[4 + s2]));
  assign y3 = (p0[23 + s0 -: 8] ^ (((ctrl[3] && ctrl[2] || !ctrl[3] ? p2[13 -: 2] : p1[16 + s2]) - x0[9 + s0]) - x7[23 -: 1]));
endmodule
