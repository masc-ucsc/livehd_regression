module partsel_00861(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [5:28] x4;
  wire [30:6] x5;
  wire [7:26] x6;
  wire [6:31] x7;
  wire signed [25:2] x8;
  wire signed [2:30] x9;
  wire [1:31] x10;
  wire [4:25] x11;
  wire [1:30] x12;
  wire signed [28:2] x13;
  wire [5:25] x14;
  wire signed [25:3] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [2:27] p0 = 560080304;
  localparam [25:3] p1 = 327401651;
  localparam signed [7:26] p2 = 423937338;
  localparam signed [24:4] p3 = 467372654;
  assign x4 = x1[13 + s3];
  assign x5 = p3[18 + s3 +: 4];
  assign x6 = p3[17 + s2];
  assign x7 = ({(((p2[13 + s2 -: 3] ^ p3[25 + s1 -: 5]) + x1[9 + s3 +: 4]) ^ {{2{x0[19 + s2]}}, {2{(x0 & x2[14 +: 2])}}}), (((ctrl[2] || ctrl[3] && ctrl[3] ? p0 : x4[17 -: 3]) + {((x4[7 + s0 -: 4] ^ x1[2 + s2 +: 8]) - x2[8 + s3 +: 4]), p0[17 + s1 -: 3]}) & {(p3[10 + s1] + x3[10]), (x4[10 + s2 -: 2] + (x3[14 -: 1] + p0[15 +: 4]))})} | p3[12 -: 2]);
  assign x8 = x0[18 +: 1];
  assign x9 = (ctrl[1] || ctrl[2] || !ctrl[2] ? {x3[13 + s3 +: 1], ({2{(p0[3 + s3 -: 6] ^ x4[28 + s0 -: 4])}} + (!ctrl[2] || ctrl[0] || ctrl[2] ? (x1[23 + s3 +: 7] & p0) : (((x5[21] & p1) | x7[20 + s3 -: 4]) ^ (p1[17 + s3 -: 5] & p3[17 + s1 +: 8]))))} : ((x3 & {2{x3}}) & ((p1[7 + s2 +: 3] ^ (p2[12 + s0] - (x5[31 + s3 +: 8] + (x5[9 +: 1] + p2)))) ^ x5[14 + s1])));
  assign x10 = x4[16 + s3];
  assign x11 = p1;
  assign x12 = p2[14 -: 1];
  assign x13 = {2{(((ctrl[3] && ctrl[3] || !ctrl[1] ? x7[17 + s1] : (p2[10 +: 2] & x9[19 +: 1])) | ((x8 - x0[7 + s3]) | p3)) + (x10[19 -: 1] - x2[14 + s2]))}};
  assign x14 = (x5[12 +: 3] + p1);
  assign x15 = (x8[18 + s3 -: 5] | ((ctrl[3] || ctrl[1] || ctrl[1] ? ({2{p2[23 + s1 +: 3]}} | x10[14 -: 2]) : x14) & ({x3, p2[19]} & p0[6 + s0 +: 3])));
  assign y0 = ({2{(p2[7 + s3] ^ x15[3 + s2 +: 7])}} | p2[22 -: 1]);
  assign y1 = ((x12[14 + s1 -: 5] ^ p1[13 -: 3]) + (x1[18] ^ ({2{p3[5 + s2 -: 7]}} - {2{x10}})));
  assign y2 = x8[11];
  assign y3 = (ctrl[2] && ctrl[0] || !ctrl[0] ? p3[14 + s3] : p1);
endmodule
