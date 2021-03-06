module partsel_00107(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [26:6] x4;
  wire signed [31:5] x5;
  wire signed [2:26] x6;
  wire signed [26:0] x7;
  wire signed [3:31] x8;
  wire signed [31:2] x9;
  wire [26:2] x10;
  wire [0:25] x11;
  wire signed [0:27] x12;
  wire [4:27] x13;
  wire [6:26] x14;
  wire [4:31] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [25:0] p0 = 27552697;
  localparam signed [2:24] p1 = 227695837;
  localparam [0:24] p2 = 730479716;
  localparam [6:30] p3 = 865448610;
  assign x4 = x1[12 + s0 -: 1];
  assign x5 = (p1[14 + s1 +: 5] & {2{(p0[18 -: 3] + (p2 - x4[31 + s2 -: 4]))}});
  assign x6 = x3;
  assign x7 = x4[16 -: 2];
  assign x8 = {{(ctrl[2] || ctrl[0] && !ctrl[0] ? ((ctrl[3] || !ctrl[3] || ctrl[3] ? (x4 & x2[7 + s3 +: 7]) : p1) ^ (p3[7 + s2] & x5[12 + s2])) : p0[13 -: 1]), (!ctrl[0] && ctrl[2] || ctrl[0] ? x3[17] : x0[22])}, ((p3[12 +: 4] & x0) | {2{p0[15 -: 3]}})};
  assign x9 = (!ctrl[3] || ctrl[0] && ctrl[1] ? p3[10 + s2 -: 8] : (p2[9 +: 4] & {(ctrl[3] || !ctrl[0] && !ctrl[2] ? (ctrl[2] || !ctrl[3] || ctrl[0] ? x8[28 + s3 -: 7] : p0[17]) : x4), p1[17]}));
  assign x10 = p3[13 -: 4];
  assign x11 = ((ctrl[3] && !ctrl[2] || ctrl[1] ? {x4[16 +: 4], (p3[26 + s2 -: 7] - x4[0 + s1 +: 4])} : p1) - ((ctrl[1] || ctrl[3] && !ctrl[1] ? p3[13 +: 3] : ((x4[27 + s1 +: 3] ^ x4[16 +: 4]) ^ ((x5[15 -: 1] - p1) - p1[5 + s3 -: 7]))) - x9));
  assign x12 = ((p3[20 -: 1] ^ {2{p0[19 +: 3]}}) ^ {x5[19 -: 3], {2{x3[18 +: 1]}}});
  assign x13 = x5[22 -: 2];
  assign x14 = p2[19];
  assign x15 = ({2{{2{(!ctrl[1] || ctrl[2] && ctrl[2] ? p3 : (p3[7 + s3] ^ x12[21 -: 4]))}}}} + (ctrl[3] && ctrl[3] && ctrl[2] ? ((x4[29 + s3 +: 3] | (((((x4 + p1) & p1[1 + s3 +: 5]) | p2[20 -: 4]) & p1[17 +: 2]) & x6[25 + s1 -: 3])) + ((p3 & p1[14]) & p2[10 +: 3])) : p3));
  assign y0 = ((((!ctrl[0] || !ctrl[1] && !ctrl[2] ? x4[13 + s2 -: 3] : (p0[12 +: 3] & x5[17])) ^ {2{{x5[21 -: 4], p2[28 + s3 +: 2]}}}) - (ctrl[3] || ctrl[1] || ctrl[2] ? (x1[7 + s3] + ((x11[15 -: 1] & x0[22 + s2 -: 2]) | ((x8[14 + s0] ^ x7[19 + s0]) ^ (x8[19 + s3 +: 7] + (p1[19 -: 4] + x2[22 + s2 -: 6]))))) : {2{p3}})) | {2{x8[4 + s2 -: 4]}});
  assign y1 = x6[15 + s3 -: 3];
  assign y2 = (x14 + {2{((!ctrl[2] || ctrl[2] || ctrl[3] ? (ctrl[3] && ctrl[1] && !ctrl[3] ? x2[16 -: 4] : p0[8]) : (ctrl[1] && !ctrl[1] && ctrl[3] ? p3[21] : x3[19])) - x3[9 +: 1])}});
  assign y3 = (x3[22] & ((p3 - ((x1 + ((p2[5 + s3] & x14[18 -: 1]) | p2[7 + s0 +: 4])) | (!ctrl[1] && ctrl[3] && !ctrl[3] ? x0 : p0[9]))) | (!ctrl[0] && ctrl[1] && ctrl[1] ? (((p1[5 + s1] - (p2[15 -: 1] & (x4 & x5[19 + s0]))) ^ x3[12 +: 1]) + {2{p2[7 + s3 -: 8]}}) : ({2{p3[4 + s2]}} & {2{p1[22 + s0 +: 4]}}))));
endmodule
