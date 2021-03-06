module partsel_00479(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [25:3] x4;
  wire signed [25:1] x5;
  wire [2:24] x6;
  wire [7:31] x7;
  wire signed [27:0] x8;
  wire [6:29] x9;
  wire [4:30] x10;
  wire signed [25:4] x11;
  wire [2:24] x12;
  wire signed [2:28] x13;
  wire signed [5:28] x14;
  wire [24:3] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [1:30] p0 = 333548609;
  localparam signed [1:26] p1 = 382687764;
  localparam signed [25:0] p2 = 256806718;
  localparam [1:25] p3 = 468142681;
  assign x4 = x2[17];
  assign x5 = p0[20 + s0 +: 2];
  assign x6 = {2{(((x1[10 +: 1] - (!ctrl[0] || ctrl[1] || !ctrl[3] ? x3[12 -: 4] : p3[6 + s3])) - {(p3[10 + s1 -: 8] - p2[16 + s3]), (x4 & p0[17 -: 4])}) + p3)}};
  assign x7 = x6[17 + s1 -: 6];
  assign x8 = (p0[13] - (p1 & (({(p2[13 + s1 -: 2] - x0[17 +: 4]), p1[0 + s1 -: 4]} & (!ctrl[3] || !ctrl[1] || !ctrl[2] ? x0[9 + s2] : p2[10])) | (p2[15 +: 4] | (x7[29 + s0 -: 4] + x5[19 + s0])))));
  assign x9 = p2;
  assign x10 = p2[3 + s1 -: 7];
  assign x11 = x5[2 + s2 -: 2];
  assign x12 = ({{((p0[12 + s3] & x8[16 -: 4]) + {x3, x10[17]}), {2{{x0, x2[12 +: 2]}}}}, ((!ctrl[0] || ctrl[2] && !ctrl[3] ? x9[14 -: 2] : (p1[12 + s1 +: 5] + p2[11 + s1])) - x4)} & ({2{{(((x2[9 +: 4] & x9[26 + s2 +: 8]) ^ (x1[19 +: 1] - (x6[14 +: 2] ^ x10))) & p0[21]), (p2[13 -: 3] & p0[18 + s0])}}} + ((ctrl[0] || !ctrl[3] && !ctrl[3] ? p1[13 + s3 -: 2] : (!ctrl[0] || ctrl[0] && ctrl[0] ? p3 : x10[19 + s2])) + x9)));
  assign x13 = {2{p2[14]}};
  assign x14 = x7[14 -: 3];
  assign x15 = {p1[17 +: 4], (ctrl[1] || ctrl[1] || !ctrl[0] ? x0[19 +: 3] : (((x9[5 + s3] + x2[18 + s3 -: 8]) ^ (x9[22 + s1 -: 2] + p2[12 + s1 +: 1])) | x14[16 + s3]))};
  assign y0 = p3;
  assign y1 = x10[10];
  assign y2 = p1[30 + s3 -: 7];
  assign y3 = {x1, p1};
endmodule
