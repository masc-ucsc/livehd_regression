module partsel_00494(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [25:3] x4;
  wire signed [2:24] x5;
  wire [1:25] x6;
  wire [5:31] x7;
  wire signed [24:5] x8;
  wire signed [6:30] x9;
  wire signed [29:7] x10;
  wire signed [5:25] x11;
  wire [25:7] x12;
  wire [4:24] x13;
  wire [24:2] x14;
  wire [25:1] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [27:3] p0 = 399308003;
  localparam [6:26] p1 = 64930462;
  localparam [29:2] p2 = 829465537;
  localparam [4:26] p3 = 94077137;
  assign x4 = x3[12 -: 2];
  assign x5 = p1[13 -: 4];
  assign x6 = ((x3[25 + s2 -: 1] | {(ctrl[1] && !ctrl[0] && ctrl[1] ? (p3[8 + s3] | p1[19]) : (ctrl[3] || !ctrl[1] && ctrl[1] ? (x2 + p0[11 + s3]) : p1[30 + s2 -: 8])), (x4[19 + s0] + {2{x1[15]}})}) - x5[21 + s3 -: 8]);
  assign x7 = x3[9];
  assign x8 = {2{(x3[11 +: 2] ^ x3[15 +: 3])}};
  assign x9 = p0[18 +: 2];
  assign x10 = (!ctrl[1] || !ctrl[0] || ctrl[3] ? p2 : {2{{x2[16 -: 2], (!ctrl[3] || !ctrl[2] || ctrl[0] ? x0[21 + s1 -: 3] : p1[16 -: 2])}}});
  assign x11 = x1[19 -: 1];
  assign x12 = (p3 - p2);
  assign x13 = (x12 + x0[27 + s0 -: 2]);
  assign x14 = p3;
  assign x15 = {2{p2[15 +: 1]}};
  assign y0 = x3[16 +: 1];
  assign y1 = {x8[22 + s1 +: 7], (x1[13 +: 4] | x8[20 + s1 +: 1])};
  assign y2 = ({2{((x11[24 + s1 -: 1] ^ x15[11 +: 2]) & {2{x13[18 -: 3]}})}} - p3[4 + s3]);
  assign y3 = (ctrl[2] || ctrl[3] && ctrl[2] ? {p0[18 +: 3], {2{((x11[22 -: 1] | x14) & p1)}}} : (x7 & ({((p0[13 +: 1] - p2[31 + s2 -: 8]) & x1[14 -: 4]), {p0[14 +: 2], x3[6 + s3 -: 5]}} + x9[8])));
endmodule
