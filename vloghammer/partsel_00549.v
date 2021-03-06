module partsel_00549(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [1:30] x4;
  wire signed [27:6] x5;
  wire signed [27:0] x6;
  wire [27:5] x7;
  wire signed [5:28] x8;
  wire [7:29] x9;
  wire [24:6] x10;
  wire signed [27:1] x11;
  wire [6:29] x12;
  wire signed [3:28] x13;
  wire signed [25:0] x14;
  wire [6:31] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [2:29] p0 = 67451010;
  localparam [2:30] p1 = 265853395;
  localparam [29:0] p2 = 221500406;
  localparam signed [27:0] p3 = 9597200;
  assign x4 = (x0[15 + s0 -: 5] + (!ctrl[0] || ctrl[1] || !ctrl[1] ? x0[17 + s2] : {x2[13 + s3 -: 5], ({2{p0[19 -: 4]}} ^ (x2[13 +: 4] | p1[13]))}));
  assign x5 = (x2[17 + s2] ^ ((x2[17 + s0] - (ctrl[1] && ctrl[1] && !ctrl[2] ? (p0[8 +: 2] | p3) : ((x1[13 + s0] | x2[16 + s3 +: 7]) + x0[9 + s2 +: 4]))) ^ (p1[16 -: 4] | ((x3[19 + s2 +: 1] ^ p2) - (x2[15 + s0 +: 7] | p3)))));
  assign x6 = x3[23 + s2 -: 6];
  assign x7 = (p0 + {(p3 & p1[14 + s0]), {2{x3[9 + s2]}}});
  assign x8 = (x4 | ((!ctrl[2] && ctrl[3] && ctrl[0] ? (ctrl[1] || ctrl[0] && ctrl[2] ? {p3, ((x5 ^ x2) & (x7[9 + s1 -: 5] | x0[22 -: 4]))} : p0) : (ctrl[2] && ctrl[0] || ctrl[1] ? (x1[17 + s0 -: 4] + (p1 - (p0 & x5))) : (!ctrl[2] || ctrl[2] && !ctrl[3] ? (p1[9 +: 3] | (p0[23 -: 1] - ((p0[16 + s2 +: 8] + p1[23]) + p3))) : x7[25 + s2 -: 1]))) | p2));
  assign x9 = ((p2[14] - (ctrl[0] || !ctrl[0] && !ctrl[3] ? ((x5[15 + s2 +: 1] + p0[22 -: 3]) | x4[22 -: 4]) : x5[6 + s0 +: 5])) ^ (((x0 + x8) - (((x8[10 +: 4] ^ (x2[16 -: 3] - x2[10 + s3 -: 4])) + x1[10]) - (x2 ^ p1))) | x6[4 + s2]));
  assign x10 = (({2{p2[22 -: 4]}} + x7[26 + s0 -: 2]) - p2[14 -: 2]);
  assign x11 = (ctrl[2] && ctrl[1] && ctrl[2] ? {2{x5[12 + s2]}} : {p0[13 + s3 -: 1], {p2[7 + s3], x2}});
  assign x12 = p2[7 + s1 +: 6];
  assign x13 = (ctrl[2] && ctrl[1] || ctrl[0] ? x8[31 + s0 -: 6] : ({2{p0[10 + s3]}} - p0[11 + s3 -: 7]));
  assign x14 = x12[21];
  assign x15 = (x12[17 -: 3] ^ {({2{(x7 | x12[9])}} + {2{{x4[5 + s3 +: 1], x3[19 +: 3]}}}), (ctrl[2] && !ctrl[2] && !ctrl[2] ? ((ctrl[3] && ctrl[0] || ctrl[1] ? p3[0 + s2 +: 5] : x0[21 -: 3]) ^ x5) : (ctrl[0] || ctrl[2] && !ctrl[2] ? (x11[12 + s3 +: 6] - (p3 + p1)) : p2[15]))});
  assign y0 = p3[16 -: 4];
  assign y1 = p3[14 -: 1];
  assign y2 = {((p0[9 + s2 +: 5] | p1[23 + s0 +: 5]) & x8[11 +: 3]), p0};
  assign y3 = p1;
endmodule
