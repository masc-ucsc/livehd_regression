module partsel_00922(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [28:7] x4;
  wire signed [27:3] x5;
  wire [1:27] x6;
  wire [4:25] x7;
  wire [7:31] x8;
  wire signed [3:29] x9;
  wire [7:29] x10;
  wire signed [4:26] x11;
  wire signed [0:28] x12;
  wire signed [7:30] x13;
  wire signed [4:25] x14;
  wire signed [28:3] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [4:31] p0 = 696993604;
  localparam [5:28] p1 = 697729252;
  localparam [25:4] p2 = 173039668;
  localparam [26:4] p3 = 472598019;
  assign x4 = p1[13 + s2];
  assign x5 = (ctrl[0] || ctrl[3] || ctrl[2] ? x4 : {2{(p0[12 + s3] - p0)}});
  assign x6 = (x4[24 + s3 -: 6] | {2{p2[21 + s1 +: 2]}});
  assign x7 = x0[14];
  assign x8 = p3[5 + s0];
  assign x9 = {p0[7 + s1 -: 4], p0};
  assign x10 = p0;
  assign x11 = x9[22 -: 2];
  assign x12 = ({2{p0[10 + s3]}} ^ {{{2{x2[20 -: 1]}}, (ctrl[3] || !ctrl[0] && !ctrl[1] ? ((x2 & (x1[31 + s2 +: 1] & x9)) + ((p1[16 + s0] ^ x4[21 + s0 +: 5]) & x1[17 -: 3])) : (p3[8] - x7[24 + s0 +: 3]))}, ({2{((x2[21 + s0 +: 3] + p0) | p1[12 -: 4])}} | x3[14 +: 4])});
  assign x13 = x5[10 +: 1];
  assign x14 = p3[13 + s0];
  assign x15 = x12[10 + s0 +: 3];
  assign y0 = x5;
  assign y1 = x13[16 + s2];
  assign y2 = {2{x9[12 -: 3]}};
  assign y3 = x6[10 + s1 -: 5];
endmodule
