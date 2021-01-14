module partsel_00616(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [25:0] x4;
  wire signed [6:27] x5;
  wire [24:3] x6;
  wire signed [2:28] x7;
  wire [28:6] x8;
  wire [25:0] x9;
  wire signed [3:31] x10;
  wire signed [5:31] x11;
  wire [26:5] x12;
  wire signed [26:3] x13;
  wire signed [31:4] x14;
  wire [2:25] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [25:5] p0 = 941443500;
  localparam [26:5] p1 = 156648742;
  localparam signed [4:26] p2 = 174685497;
  localparam [31:7] p3 = 882845975;
  assign x4 = p3[8 + s0];
  assign x5 = x1[8 +: 4];
  assign x6 = {p2[20 -: 3], (ctrl[1] && ctrl[1] && !ctrl[1] ? ((!ctrl[0] || ctrl[0] && ctrl[3] ? p3[12 +: 4] : x1[7 + s2]) - x2) : p0)};
  assign x7 = p3[14 +: 4];
  assign x8 = x7[28 + s3 -: 2];
  assign x9 = x6[8 + s2];
  assign x10 = ((x8[9 + s3] - (((x1[21 + s3 +: 8] + x7[8 + s1 -: 1]) & p1[22 + s3 +: 7]) - {2{x6[21 -: 1]}})) | (({(x6[19 + s1] & x2[0 + s0 +: 5]), x1[13]} & ((x7 - p1) | p2[20 -: 1])) | (({2{p3}} | (ctrl[1] && !ctrl[3] || ctrl[0] ? p0[7 + s2] : x3)) ^ x6[29 + s2 +: 6])));
  assign x11 = {2{{2{((x0[17 + s3 +: 3] ^ (p0 - x4[23 -: 3])) | x2[23])}}}};
  assign x12 = p3[14 + s3];
  assign x13 = ((((!ctrl[2] || ctrl[3] || ctrl[2] ? x0 : x2[19 + s0 -: 2]) | (x8[14] | (p1[21 + s3 +: 6] - p1[1 + s0 +: 5]))) + x6[12 + s1 -: 7]) + x5[16 -: 4]);
  assign x14 = (ctrl[1] && ctrl[0] && !ctrl[2] ? p1 : p0[7 + s2]);
  assign x15 = x12[12 +: 3];
  assign y0 = {((({2{x4[1 + s0 +: 2]}} & (!ctrl[1] && ctrl[1] || !ctrl[1] ? x12[14 + s3] : (x4[17 -: 1] - p0))) & (ctrl[2] || ctrl[0] && ctrl[0] ? (!ctrl[2] || ctrl[3] || ctrl[1] ? x1[27 + s3 -: 1] : x13[14]) : x15[4 + s3])) & (!ctrl[2] || !ctrl[0] || ctrl[0] ? (x11[8 + s0] - ((p0[23 -: 1] - p2) & x6[13 + s3])) : {2{x10}})), (p2[27 + s2 -: 2] - x9[10 + s1])};
  assign y1 = x0[17 + s2];
  assign y2 = {2{{(ctrl[1] && !ctrl[2] || ctrl[2] ? p0[13 +: 1] : x12), {2{p2[11]}}}}};
  assign y3 = x0[14 + s2 +: 4];
endmodule
