module partsel_00172(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [25:3] x4;
  wire [4:26] x5;
  wire signed [3:29] x6;
  wire signed [24:4] x7;
  wire [31:5] x8;
  wire signed [31:3] x9;
  wire signed [2:26] x10;
  wire [6:31] x11;
  wire [31:1] x12;
  wire signed [24:7] x13;
  wire signed [29:6] x14;
  wire [27:7] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [4:27] p0 = 416288902;
  localparam signed [31:4] p1 = 638191688;
  localparam signed [0:31] p2 = 276710158;
  localparam [1:27] p3 = 486223773;
  assign x4 = {((ctrl[1] || ctrl[1] || ctrl[0] ? {(!ctrl[3] && !ctrl[3] || ctrl[2] ? p1[21 + s2 -: 5] : p1[19 +: 4]), (((((x1[13 + s0 +: 4] & p3) | p0[19 +: 3]) | p3[22]) | x1) & x3)} : x2) + (p1 | x1[18 +: 1])), (ctrl[3] && !ctrl[1] || !ctrl[1] ? ((p2[12 + s2] - p3[18 + s3 -: 1]) ^ (p0[30 + s2 +: 1] + x0[28 + s1 -: 5])) : (!ctrl[2] && ctrl[2] || !ctrl[3] ? ((((p3[19 + s0 -: 3] | (x2 & x0[18 + s2 -: 5])) & (x2 & x1)) | p0[30 + s0 -: 5]) - {2{(p0[8 +: 2] & x0[19])}}) : (p2 - (x3[21] | p3[8]))))};
  assign x5 = {2{x1[16 + s0 -: 3]}};
  assign x6 = x1[0 + s1 -: 7];
  assign x7 = {2{p0}};
  assign x8 = p1[21];
  assign x9 = {2{({x7[18 -: 1], {2{x2[11 +: 3]}}} ^ ((p0 ^ (x7[10 +: 2] & x6[23 -: 3])) ^ ({2{x5[24 + s1 -: 2]}} | ((p3[18 -: 3] ^ p1[21 -: 3]) ^ p2))))}};
  assign x10 = {x5[12 -: 4], ({2{(x7 & x6[17 -: 3])}} + {2{p0}})};
  assign x11 = {2{{(!ctrl[0] && !ctrl[1] && ctrl[3] ? ((((p2[14 + s1 -: 7] ^ p3) ^ x4[12 -: 3]) | (x1[14 -: 2] + x6[16 + s3])) | {p0[21 -: 4], x0[6 + s2]}) : p0), p1}}};
  assign x12 = (((!ctrl[0] || !ctrl[0] || !ctrl[0] ? x5 : x10[31 + s3 -: 7]) & x2[10 + s2 +: 8]) + (p0[13 + s1 +: 5] + ({2{{2{x2[5 + s0 -: 2]}}}} | x5[8 +: 2])));
  assign x13 = p2[19 + s1];
  assign x14 = (x1[6 + s1] ^ p1[16 +: 3]);
  assign x15 = x7[13 + s2 +: 7];
  assign y0 = x4[10 +: 3];
  assign y1 = {2{x13}};
  assign y2 = {2{p2[5 + s3 +: 7]}};
  assign y3 = {p2[12 -: 4], (x3 | {2{({x12[14 -: 2], x1[8]} & p1[9 +: 2])}})};
endmodule
