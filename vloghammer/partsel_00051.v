module partsel_00051(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [27:2] x4;
  wire signed [29:4] x5;
  wire signed [26:2] x6;
  wire signed [31:2] x7;
  wire [28:0] x8;
  wire [31:6] x9;
  wire [5:29] x10;
  wire [1:25] x11;
  wire signed [27:7] x12;
  wire signed [27:2] x13;
  wire [31:1] x14;
  wire [30:4] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [3:29] p0 = 878820378;
  localparam [27:7] p1 = 13029221;
  localparam [30:5] p2 = 289580731;
  localparam signed [0:26] p3 = 35489078;
  assign x4 = x1[10 + s0];
  assign x5 = (p0[16 +: 1] & {2{x4[31 + s2 -: 2]}});
  assign x6 = {2{x4[15]}};
  assign x7 = p2[14 + s3 -: 2];
  assign x8 = p2[18 +: 1];
  assign x9 = {p2[23 -: 3], (x7[8 +: 3] | x0[17 -: 3])};
  assign x10 = {({2{{x1[14 + s2], x5}}} + p1[18 -: 3]), ((p1[8] ^ x5) | (p0[15 +: 4] + x2[14 +: 1]))};
  assign x11 = (ctrl[2] || ctrl[2] && !ctrl[2] ? (({(p0[22 -: 3] - (x9 + ((p1[16] | x8[23]) - p0[21 + s3 -: 5]))), (p2[0 + s3 +: 4] - p1[21 -: 2])} ^ p3[8 + s2 -: 8]) + x7[22]) : ({(x7[11 + s1] ^ p3[8 + s3]), p3[9 + s1]} & (!ctrl[1] && ctrl[3] && ctrl[2] ? x1 : x0[9])));
  assign x12 = x8;
  assign x13 = x5;
  assign x14 = ({2{x3[22 + s0 +: 8]}} - (p3[19 +: 3] | p0[20]));
  assign x15 = (x13 + (((p1 | p2[12]) & p2[18 -: 3]) - ((!ctrl[0] || ctrl[1] && ctrl[2] ? (x4 & x6[8 +: 3]) : {2{(x1[27 + s3 +: 3] ^ p1[9 + s3 -: 1])}}) | p3[18])));
  assign y0 = p2[24 + s0 -: 8];
  assign y1 = p1;
  assign y2 = p3;
  assign y3 = ((ctrl[1] && !ctrl[2] || ctrl[1] ? (p0 | p1[17 + s1 -: 2]) : (((x3[18 -: 3] & p1[16 + s2 -: 3]) & {x6[19 -: 4], ((x4[16 -: 1] - p2) - x12[16 + s1 -: 1])}) ^ (p1[11 +: 2] ^ ((p1[22 + s3 +: 1] | p2) - p1[11 + s3])))) ^ p0[2 + s3 +: 4]);
endmodule
