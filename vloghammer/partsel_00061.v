module partsel_00061(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [31:5] x4;
  wire signed [27:7] x5;
  wire [27:7] x6;
  wire signed [0:29] x7;
  wire signed [24:0] x8;
  wire [24:4] x9;
  wire signed [7:30] x10;
  wire signed [1:30] x11;
  wire signed [26:4] x12;
  wire [7:31] x13;
  wire signed [1:31] x14;
  wire [28:4] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [24:5] p0 = 429954842;
  localparam [24:5] p1 = 940044218;
  localparam signed [30:4] p2 = 56832403;
  localparam [27:4] p3 = 263266143;
  assign x4 = ((p1[12 + s1 +: 5] - {({2{x2}} + {(x0[17 -: 2] + p0[19 -: 2]), x1}), p1[26 + s1 -: 1]}) & {2{x0[23]}});
  assign x5 = ({2{{x2[4 + s0], (x3 & p0[12 -: 4])}}} - (!ctrl[2] || ctrl[1] && !ctrl[1] ? ((ctrl[2] && ctrl[1] || !ctrl[3] ? (((x4[22 + s3 +: 1] ^ (p1 ^ (p2[20 -: 2] & p0[15]))) & x2[15 + s0]) ^ x0[16]) : p2[10 +: 1]) & x4[4 + s1 -: 2]) : x4));
  assign x6 = {2{{(p1 & {2{{(p0[23 -: 2] | x0[23 + s3 +: 8]), x3[13 +: 4]}}}), {2{(x4[19] | (p3[11] & x3[8 + s2 -: 3]))}}}}};
  assign x7 = x4;
  assign x8 = ({(ctrl[2] && !ctrl[0] || ctrl[1] ? ({x5[19], p1[8 + s1]} | (ctrl[1] && !ctrl[2] && ctrl[0] ? (p2[21] + p2) : p2)) : (ctrl[0] || ctrl[2] && ctrl[3] ? p3[6 + s2 -: 5] : {2{x1[20 -: 3]}})), p2[6 + s2 +: 4]} + p2[15 +: 1]);
  assign x9 = x5[1 + s3 -: 4];
  assign x10 = {2{x1[2 + s1 +: 4]}};
  assign x11 = ((p0[22 -: 4] | p0) + p2);
  assign x12 = {2{p0}};
  assign x13 = (({{(p2[8 + s1 +: 5] ^ (x11 - (p1[24 + s3 -: 4] + p0[5 + s3]))), x2[15 + s2]}, (ctrl[2] && !ctrl[2] && ctrl[0] ? p2[11 + s2 -: 3] : p2[23 -: 4])} + ({2{x7}} - {(x12[23 -: 3] + p0[15 +: 1]), (ctrl[0] && ctrl[3] && !ctrl[0] ? x2[12 + s2] : (x11 & p0[14]))})) | ((((((p3 | x7[15 +: 3]) & x10[31 + s2 -: 5]) + (((((x2 ^ x7) | x9[7 + s1]) ^ x7[17 + s3]) + ((x6[19] | x2[14 -: 1]) - (p0[13 -: 4] & (p0 + x7[1 + s0 -: 1])))) - p3[18 + s0])) + x4[10 +: 1]) - ((x5[13] & p3[5 + s2]) ^ x4)) | {x6[31 + s2 -: 6], {p2[20 -: 3], p2[19 +: 4]}}));
  assign x14 = p1[16 -: 4];
  assign x15 = p2[13 +: 1];
  assign y0 = p2[11 +: 1];
  assign y1 = p0[7 + s1];
  assign y2 = {2{(({2{p2[10 + s2 -: 6]}} & x11) - ({p0[23 -: 3], p0} - {2{(p2[14] | p2[17 + s2])}}))}};
  assign y3 = x4[10 +: 2];
endmodule
