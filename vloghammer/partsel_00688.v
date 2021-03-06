module partsel_00688(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [3:28] x4;
  wire signed [0:25] x5;
  wire [25:7] x6;
  wire signed [0:25] x7;
  wire [25:2] x8;
  wire signed [3:26] x9;
  wire [7:26] x10;
  wire [7:30] x11;
  wire signed [2:28] x12;
  wire signed [24:3] x13;
  wire [7:28] x14;
  wire [30:2] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [2:26] p0 = 963504943;
  localparam [27:6] p1 = 330391843;
  localparam [5:31] p2 = 645793051;
  localparam signed [4:31] p3 = 890755840;
  assign x4 = x2[14 + s1 -: 8];
  assign x5 = x2;
  assign x6 = (ctrl[2] || ctrl[3] || !ctrl[0] ? {x3[5 + s2], (x1 | x2[31 + s3 -: 6])} : {p0[12 -: 2], p3[27 + s3 -: 7]});
  assign x7 = x5;
  assign x8 = ({(!ctrl[2] || ctrl[2] && !ctrl[3] ? (ctrl[3] || !ctrl[2] && ctrl[1] ? p2[4 + s3 -: 6] : (p3[26 + s1 +: 5] & p3[15 + s3])) : x6[12 + s3 -: 5]), x7[13 +: 4]} & (!ctrl[1] && ctrl[1] && !ctrl[2] ? p2[12 +: 1] : (p0[11 +: 4] ^ {p0, (p2[24 + s0 -: 6] & x4[19 + s3 +: 2])})));
  assign x9 = x8[16 + s0];
  assign x10 = ((ctrl[2] && ctrl[0] || ctrl[3] ? (x2[15 +: 4] ^ {2{p2[15 + s3 +: 4]}}) : (p2 ^ {2{p0}})) & (((x1[20 + s1 -: 1] - (x3 + x5[8])) | p1[10]) - p2));
  assign x11 = (x1[11 +: 4] | x1[8 + s1 -: 8]);
  assign x12 = (x6[17 -: 3] ^ x4[20]);
  assign x13 = (((ctrl[0] && ctrl[3] && !ctrl[1] ? p0[16 + s0 -: 6] : x3[18 + s0]) & p1[20 -: 3]) ^ (p2 + ({(x1 ^ p3), x10[17 + s0]} - x12[17])));
  assign x14 = x3[1 + s1 +: 4];
  assign x15 = {x6[8 +: 4], ((ctrl[1] || !ctrl[0] || !ctrl[1] ? (((x6[5 + s3 -: 3] & p3[23 -: 4]) + p1[25 + s1 +: 6]) & {x7[18 + s3 -: 6], x13[11 + s0]}) : p1[24 + s1 +: 8]) - p3)};
  assign y0 = (!ctrl[1] && ctrl[0] && ctrl[3] ? x2[1 + s0 -: 2] : p0);
  assign y1 = x3[26 + s3 -: 3];
  assign y2 = x15[23 + s1 -: 3];
  assign y3 = p3[10 +: 2];
endmodule
