module partsel_00993(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [5:29] x4;
  wire signed [7:25] x5;
  wire [29:4] x6;
  wire signed [30:1] x7;
  wire [2:27] x8;
  wire [31:4] x9;
  wire signed [3:28] x10;
  wire [31:3] x11;
  wire [31:1] x12;
  wire signed [25:0] x13;
  wire [24:1] x14;
  wire signed [3:24] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [6:29] p0 = 353518397;
  localparam signed [5:24] p1 = 188611794;
  localparam [29:3] p2 = 193576082;
  localparam signed [5:27] p3 = 430865674;
  assign x4 = (x1 + ((p0[13 +: 4] | p0[21 + s0 -: 6]) - p1[9]));
  assign x5 = {2{p1[28 + s0 -: 1]}};
  assign x6 = {({(x5[14 -: 2] ^ p3), p3[16 + s1]} - x5[23 -: 2]), x5};
  assign x7 = {x2, (!ctrl[2] && !ctrl[3] && !ctrl[2] ? (({2{p2[21]}} ^ (x4[9 +: 4] ^ p0)) & (ctrl[2] && ctrl[2] && !ctrl[1] ? x6 : (x5[20] ^ x4[20]))) : x0)};
  assign x8 = ((!ctrl[3] || !ctrl[3] || ctrl[1] ? (p1[12 + s3 +: 4] + (((p3[13 +: 1] | p3[13 + s2]) - p1) | {(p0[15 + s3] + p2[14 + s2]), x3[9 +: 3]})) : (p1 ^ ((p2[1 + s0 +: 7] ^ x2[10]) + p2[8 +: 3]))) - ({x7[16 + s3 +: 5], x4[20 -: 4]} + (((p3 | p2[27 + s3 +: 2]) ^ (x1[23] + (p3[23] | p3[19 + s2 -: 2]))) | (!ctrl[0] || !ctrl[0] || ctrl[2] ? (x1 - p2[13 + s1]) : {2{(p3[12 + s1 -: 1] - p0[22])}}))));
  assign x9 = p1[13 + s0 +: 4];
  assign x10 = p3[17 + s1 -: 4];
  assign x11 = (x1[8 + s1] ^ p3);
  assign x12 = x7[11];
  assign x13 = (!ctrl[2] && !ctrl[1] || ctrl[2] ? p3[20 -: 1] : p2[22 -: 4]);
  assign x14 = (({2{((x10[20 + s2 -: 5] - p2) & (!ctrl[2] || ctrl[1] && !ctrl[2] ? x1 : x12[13 + s3]))}} - (x6[13 -: 3] - ((((x3[7 + s2] + p1) + (p0 & ((p3[14 + s2 -: 5] & p0[9]) & p2[11 + s0]))) & ((p2[31 + s0 +: 7] + p2[7 + s1 -: 2]) & p3[21 + s0 -: 6])) | x10[26 + s2 -: 4]))) & x1[18 + s3 -: 7]);
  assign x15 = ({(p3 + x12), (p0[5 + s1] & p3[9 + s0 -: 4])} & p2[14 -: 1]);
  assign y0 = {2{{2{{((ctrl[3] || ctrl[3] && !ctrl[2] ? x12 : p3[8 + s3]) + p2), p2[20]}}}}};
  assign y1 = {2{({p0[10 + s3], p2} | x1[19 + s2])}};
  assign y2 = p2;
  assign y3 = (p1[21 -: 4] & (x9[14 +: 4] - (x14[13 +: 4] + x2[12 + s0 +: 2])));
endmodule
