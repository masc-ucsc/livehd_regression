module partsel_00731(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [30:1] x4;
  wire signed [25:6] x5;
  wire [3:25] x6;
  wire [3:29] x7;
  wire signed [27:7] x8;
  wire [26:1] x9;
  wire [1:31] x10;
  wire signed [24:7] x11;
  wire signed [4:27] x12;
  wire signed [2:24] x13;
  wire signed [6:29] x14;
  wire [2:31] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [24:7] p0 = 360918690;
  localparam signed [25:0] p1 = 199710897;
  localparam [2:25] p2 = 197027363;
  localparam [29:2] p3 = 573261050;
  assign x4 = p1[26 + s1 -: 6];
  assign x5 = p3[16 + s3 +: 2];
  assign x6 = p0;
  assign x7 = p1[18 + s3];
  assign x8 = {(!ctrl[2] || !ctrl[0] && ctrl[0] ? x5[16 -: 3] : (((p3[16 +: 2] | ((x1 - x7[20]) & (x1[26 + s2 +: 7] & x4))) & (p1[11 + s2] + (p1 ^ p1[0 + s2 -: 3]))) | (x2[20 + s1 +: 8] + p0))), x4};
  assign x9 = p1[11 +: 1];
  assign x10 = ({2{((p0[9 + s3] & (ctrl[1] || !ctrl[1] && ctrl[0] ? x3[17] : p2[16 +: 3])) - (p0 | x0[18]))}} | ({p3[9 + s2 +: 2], x5[22 -: 2]} ^ (((x2[6 + s2 +: 2] - x8[12 +: 3]) - {p2, p2[8 + s1]}) & x0[9 +: 3])));
  assign x11 = x1[12 -: 4];
  assign x12 = p1[11 + s2 -: 3];
  assign x13 = {({2{(x3[15 -: 2] & p0[8])}} - x7[19 +: 2]), p3[17 +: 3]};
  assign x14 = (p1 + p2[8 + s0]);
  assign x15 = x10[18 + s3];
  assign y0 = p3;
  assign y1 = p3[14 +: 2];
  assign y2 = p0[16 +: 2];
  assign y3 = ({2{x9[9 + s0]}} | (p3 & ({x2, {2{(p1[22 + s2 -: 2] ^ x3[16])}}} - ((!ctrl[0] || !ctrl[2] && !ctrl[3] ? x2[13 +: 1] : x7[23]) & (x8[10 +: 3] & p1[12 -: 4])))));
endmodule
