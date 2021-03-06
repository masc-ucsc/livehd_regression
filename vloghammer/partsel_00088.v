module partsel_00088(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [6:31] x4;
  wire signed [4:27] x5;
  wire signed [0:28] x6;
  wire [28:6] x7;
  wire signed [30:5] x8;
  wire signed [6:29] x9;
  wire [3:24] x10;
  wire signed [30:0] x11;
  wire signed [29:0] x12;
  wire signed [1:25] x13;
  wire signed [30:0] x14;
  wire [2:25] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [25:0] p0 = 406945175;
  localparam signed [25:1] p1 = 416335607;
  localparam [25:3] p2 = 922945923;
  localparam [25:7] p3 = 694933708;
  assign x4 = p2[14 -: 1];
  assign x5 = p3[28 + s2 -: 7];
  assign x6 = (ctrl[0] && !ctrl[0] || ctrl[3] ? ({2{x4[19 -: 1]}} & {2{p1[7 + s3]}}) : x4[0 + s0 +: 5]);
  assign x7 = (!ctrl[0] || ctrl[0] && ctrl[0] ? p1 : p3[11 +: 3]);
  assign x8 = (ctrl[1] || ctrl[0] || ctrl[3] ? {p2[10 + s2 -: 7], x1} : (p1[18 -: 1] ^ x0));
  assign x9 = x6;
  assign x10 = {2{p2[9 +: 2]}};
  assign x11 = x7[12 + s3];
  assign x12 = (!ctrl[2] && ctrl[3] && !ctrl[0] ? (!ctrl[3] || ctrl[0] && !ctrl[3] ? {x0, (x8[23 + s3 -: 8] & {p3[16], p1[23]})} : ((x3 & (ctrl[0] || ctrl[3] || ctrl[1] ? (x2[8] + x3[16 + s2]) : x3[17])) | ({2{x5[9 +: 1]}} | (!ctrl[0] || !ctrl[1] && !ctrl[3] ? x5[22] : x3[26 + s1 -: 5])))) : x5[12 +: 4]);
  assign x13 = (ctrl[3] || ctrl[2] && ctrl[2] ? {p0, x11[15 + s2 +: 8]} : (p1[10 + s1] - p3[5 + s0 +: 6]));
  assign x14 = {2{p2[12 +: 4]}};
  assign x15 = (x0[5 + s3 +: 7] + x3[14 +: 3]);
  assign y0 = {p2[26 + s3 -: 6], (!ctrl[1] && ctrl[3] && !ctrl[0] ? (x8[14 + s0] - {{2{p1[22 -: 2]}}, x4}) : p0[16])};
  assign y1 = (x8 ^ (((x11[16 +: 4] - (p0 ^ (x1[21 -: 3] - x2[6 + s3]))) - {2{{2{p1}}}}) + x6[16 -: 1]));
  assign y2 = (x14[20 + s3 -: 3] + {{2{(((x2 | p3[5 + s2 -: 3]) & x2) ^ x9)}}, p2[31 + s0 -: 5]});
  assign y3 = ((!ctrl[2] || !ctrl[0] || ctrl[2] ? (!ctrl[3] && ctrl[1] && ctrl[0] ? p2[12 + s1] : ({2{p2[5 + s3 +: 5]}} - p0[30 + s3 -: 8])) : ((x1 + p1[19 + s1 -: 1]) & {p1[13 +: 1], (x2[8] | p0[28 + s0 +: 2])})) | p1[15 -: 1]);
endmodule
