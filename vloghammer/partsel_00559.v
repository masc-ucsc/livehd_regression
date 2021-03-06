module partsel_00559(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [7:25] x4;
  wire signed [5:27] x5;
  wire signed [29:1] x6;
  wire signed [31:1] x7;
  wire signed [25:4] x8;
  wire signed [31:3] x9;
  wire [6:31] x10;
  wire signed [31:0] x11;
  wire [30:1] x12;
  wire [7:26] x13;
  wire signed [6:24] x14;
  wire [27:3] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [3:31] p0 = 191491525;
  localparam signed [31:4] p1 = 503568817;
  localparam signed [30:0] p2 = 90668170;
  localparam [4:31] p3 = 243907748;
  assign x4 = (p0 ^ {2{{2{x3[23 -: 1]}}}});
  assign x5 = {x1, p2[30 + s1 -: 4]};
  assign x6 = (p2[6 + s1 -: 3] | ((p3[9 +: 2] & p2) | x4));
  assign x7 = (({2{((((p0[17 -: 1] - p3[23]) & x4[17]) + x1[16 +: 2]) & {p1[8 + s1 -: 6], p3[10]})}} & (x5 + {(!ctrl[1] || ctrl[1] || !ctrl[3] ? p2[9] : x0[12 -: 3]), x5[2 + s1 -: 7]})) & p1[18 -: 1]);
  assign x8 = (ctrl[2] && !ctrl[2] && !ctrl[0] ? ({({(p1[11 + s0 +: 1] | x1[2 + s1 -: 4]), x5[9 +: 1]} & {x6[19], p1[9 + s0]}), x7[30 + s1 -: 6]} | (!ctrl[0] || !ctrl[3] || !ctrl[3] ? x3 : ((x7[8 + s0 +: 8] - x2[18]) - {x0[18], (x7[26 + s3 +: 6] + (x5 | x6[18 -: 2]))}))) : (p2[11] ^ {p1[23], p1[9 + s2 +: 2]}));
  assign x9 = {2{p0}};
  assign x10 = (p0[5 + s1 +: 2] | ({2{x7}} + ((x8[15] + (p2[16 + s3] - p0)) & (p1[15 + s1] | {2{x0[18 -: 3]}}))));
  assign x11 = (!ctrl[2] && !ctrl[3] || ctrl[0] ? p1[19 +: 1] : x9);
  assign x12 = ((x9[28 + s3 -: 5] ^ p2[4 + s3]) | x5[15 +: 2]);
  assign x13 = {((ctrl[3] || !ctrl[0] || ctrl[3] ? p0[11 +: 3] : x7[4 + s0]) | {2{((x8[18 +: 3] - (x7[14 + s2] + x11)) + p0[8 + s2])}}), {x7[11], (!ctrl[3] || ctrl[2] && !ctrl[3] ? p0[17] : (x0 + (x6[8 +: 4] - (p3 | x10[10 + s2]))))}};
  assign x14 = x12;
  assign x15 = p0[22 + s3 +: 5];
  assign y0 = p3[15 +: 1];
  assign y1 = (x2 - p3[0 + s2 +: 1]);
  assign y2 = {((({2{p2[9]}} + x6[13]) & x15[23 -: 4]) & ((((p0[18] ^ x13) - p2[13 + s0]) + (p0[13] - x15)) ^ {(x1[9] & (p2[8] - ((x13 | x14[16 +: 3]) + (p2[28 + s1 +: 6] & x4[21 + s1 +: 6])))), (p1[10 +: 2] ^ x10)})), x4[14 +: 2]};
  assign y3 = x12;
endmodule
