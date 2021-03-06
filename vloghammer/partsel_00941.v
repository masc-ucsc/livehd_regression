module partsel_00941(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [6:26] x4;
  wire [28:1] x5;
  wire signed [30:4] x6;
  wire signed [26:1] x7;
  wire signed [25:6] x8;
  wire [6:30] x9;
  wire signed [24:5] x10;
  wire signed [5:27] x11;
  wire signed [5:28] x12;
  wire signed [30:0] x13;
  wire [31:0] x14;
  wire signed [26:7] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [2:28] p0 = 618904860;
  localparam [30:4] p1 = 461705073;
  localparam [5:26] p2 = 12991479;
  localparam [4:28] p3 = 181012834;
  assign x4 = p3[7 + s0];
  assign x5 = p1[9 + s3 -: 1];
  assign x6 = ((ctrl[0] || ctrl[1] || !ctrl[0] ? (((x2[10] - p3[15 + s2 +: 8]) & p0[22 -: 4]) | p0) : {{x5[14], (ctrl[2] || !ctrl[2] && ctrl[1] ? ((x4[21] ^ x1[8 +: 4]) ^ x2[6 + s0]) : p3[28 + s3 -: 4])}, ({p2[7 + s0], p0} ^ (p3 - p3[2 + s2 -: 2]))}) + x4);
  assign x7 = x6[17];
  assign x8 = ((((x7[19 -: 2] - {2{x3[16 + s3]}}) | {2{(x4[26 + s0 -: 7] & x4[22])}}) - (!ctrl[3] || ctrl[1] || !ctrl[1] ? p3[25 + s2 +: 4] : x3[14 -: 2])) ^ (p0 - p1[19 + s3 -: 1]));
  assign x9 = p3[9 + s0 +: 2];
  assign x10 = {2{x2[21 -: 1]}};
  assign x11 = {2{{2{p1[19 + s1 +: 5]}}}};
  assign x12 = {x7[14], p0[23 -: 4]};
  assign x13 = {2{(x0[21 -: 4] | p0[16 + s1 +: 8])}};
  assign x14 = (((p3[8] | ((x4 ^ x4[24 + s0 +: 3]) - x3[23 -: 1])) | ({2{(!ctrl[1] && !ctrl[0] && ctrl[2] ? p0 : p2[24 + s2 -: 7])}} + x11)) - {{{{2{x11[16 + s3]}}, {2{p2[16 -: 1]}}}, p1}, (({(p0[31 + s0 +: 7] - x12), x5[12 +: 4]} & {x10[23 -: 2], p2}) - x2[18 + s0 +: 1])});
  assign x15 = x10[31 + s1 -: 5];
  assign y0 = (((x9[17 +: 2] ^ x15[18 -: 4]) ^ (!ctrl[3] || !ctrl[1] || ctrl[3] ? {2{p1[13 +: 1]}} : p1[3 + s0 +: 5])) | {2{x8}});
  assign y1 = ({{2{(!ctrl[2] || !ctrl[0] || !ctrl[2] ? {p0, (((p0[22 -: 1] + p3[9 + s2]) ^ x1) | x9[16 +: 4])} : (p3 & x14[18 + s1]))}}, {p1[1 + s2 +: 4], p2[7 + s2]}} - p1);
  assign y2 = (ctrl[1] && ctrl[0] || !ctrl[0] ? p3[6 + s1] : (p1[29 + s0 +: 8] & (!ctrl[2] && !ctrl[1] || !ctrl[0] ? (p0 & p0[14 + s2]) : p1[10])));
  assign y3 = x4[26 + s1 +: 8];
endmodule
