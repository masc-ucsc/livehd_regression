module partsel_00713(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [1:28] x4;
  wire signed [3:30] x5;
  wire signed [29:2] x6;
  wire [25:2] x7;
  wire signed [2:31] x8;
  wire signed [28:5] x9;
  wire [2:25] x10;
  wire signed [31:5] x11;
  wire signed [0:28] x12;
  wire [6:28] x13;
  wire [27:4] x14;
  wire [0:28] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [2:29] p0 = 11478474;
  localparam [2:30] p1 = 815065364;
  localparam signed [2:28] p2 = 443320752;
  localparam signed [5:29] p3 = 107056213;
  assign x4 = (x2[17] & {x0[30 + s3 -: 7], p0});
  assign x5 = p0;
  assign x6 = p2[11];
  assign x7 = p1[10 + s3 -: 2];
  assign x8 = p3;
  assign x9 = ({2{x7[22 -: 4]}} - (!ctrl[3] || !ctrl[1] && !ctrl[3] ? (((!ctrl[0] && ctrl[1] && !ctrl[0] ? (p3[18 -: 1] & (x6[12 + s1 -: 2] + p1[22 -: 4])) : x4[14 + s3 +: 3]) & x7[31 + s0 +: 2]) & p0) : x0[21 -: 1]));
  assign x10 = ({(p0[9 +: 4] + x5[12 -: 4]), {2{{2{{2{p0}}}}}}} & x7);
  assign x11 = x4[0 + s0 +: 6];
  assign x12 = ((ctrl[3] && !ctrl[1] || ctrl[0] ? (({(x7 ^ p0), ((p2[6 + s0] ^ p0[18 + s2 -: 2]) | x4[23 + s3 +: 4])} & {p0[8], p3}) - x3) : (!ctrl[3] && ctrl[3] || !ctrl[1] ? (ctrl[0] || ctrl[0] || !ctrl[0] ? {x5, x7[15 +: 4]} : (x9 & p0[16 + s1 +: 2])) : (!ctrl[3] || ctrl[1] && ctrl[2] ? x6[23 -: 4] : ((x2[17 -: 1] & p1[13 +: 3]) - p1[8 +: 1])))) - {{x11[16 -: 3], {2{x11[9 + s2 +: 7]}}}, {(p3 - (p1[21] | p2[29 + s1 +: 2])), (x6[21] & p3[21])}});
  assign x13 = (ctrl[1] || !ctrl[1] && !ctrl[0] ? (!ctrl[0] && !ctrl[1] || !ctrl[0] ? p3[12 +: 4] : (p0[23 + s1 -: 6] ^ x0[13 -: 4])) : p3[27 + s3 +: 1]);
  assign x14 = (x8[18 -: 3] - (!ctrl[1] && ctrl[1] || ctrl[2] ? (x13[19 -: 4] ^ (((p1[15] + (p2[21 -: 1] - (x8[14] & p0))) + (x3[23 -: 2] + x8[23 -: 2])) - p1)) : ((ctrl[0] || ctrl[2] || !ctrl[2] ? p2[28 + s3 -: 4] : {2{x2[13 +: 4]}}) & ((ctrl[0] && !ctrl[0] || !ctrl[3] ? x10 : x2) - p2[10 + s0]))));
  assign x15 = p2[21];
  assign y0 = (ctrl[3] && ctrl[1] && ctrl[1] ? x13[21 -: 2] : x7[3 + s2 -: 2]);
  assign y1 = {2{(!ctrl[2] && ctrl[3] || ctrl[2] ? x2[18 -: 4] : x14[14 + s0 -: 4])}};
  assign y2 = {(!ctrl[0] && ctrl[1] || ctrl[1] ? x0[13 + s0 -: 8] : (p3 - x10)), (ctrl[1] || !ctrl[1] && ctrl[3] ? p2[13 + s1] : ({x3[4 + s1 -: 8], p1[6 + s0 +: 5]} | (!ctrl[1] && !ctrl[3] || ctrl[2] ? p1[26 + s0 -: 5] : (p3[8] - x0))))};
  assign y3 = p2[4 + s0];
endmodule
