module partsel_00417(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [5:25] x4;
  wire [24:1] x5;
  wire [31:3] x6;
  wire [25:0] x7;
  wire [25:5] x8;
  wire signed [25:3] x9;
  wire [28:1] x10;
  wire [4:30] x11;
  wire signed [28:2] x12;
  wire [1:24] x13;
  wire [31:4] x14;
  wire [3:31] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [31:5] p0 = 639044360;
  localparam signed [1:24] p1 = 223274514;
  localparam [1:28] p2 = 255429576;
  localparam [24:1] p3 = 690270366;
  assign x4 = (x0 ^ (ctrl[0] || !ctrl[0] && !ctrl[0] ? (p2[30 + s0 +: 1] - {2{{2{x3[5 + s0]}}}}) : {2{x3[8 + s2 +: 3]}}));
  assign x5 = (x2 - (!ctrl[2] || ctrl[3] && !ctrl[3] ? x1[9] : (x4[16 -: 4] - (ctrl[2] || ctrl[3] && !ctrl[2] ? p2[13] : (x2[19 +: 4] + x4)))));
  assign x6 = p3[24 + s2 -: 1];
  assign x7 = ((p1[18 -: 3] | x6[18 +: 4]) + (!ctrl[2] && !ctrl[1] || !ctrl[0] ? ((p0[17 -: 3] & {p0[20 -: 2], x5[31 + s1 -: 6]}) - ((p2[11] & ((x0[9 + s2] & p2[15]) & x2)) & {(p0[1 + s1 +: 3] + ((p2 & p0) - x0)), (p3 ^ p1[21])})) : (p0[22 + s2 +: 7] + (p1[17] | {2{p0[19 + s3 -: 7]}}))));
  assign x8 = {{2{(!ctrl[0] || ctrl[0] && ctrl[0] ? {{2{p2[18 + s2 +: 8]}}, p2[19 + s3 +: 8]} : x1[21 -: 2])}}, p1[8 +: 2]};
  assign x9 = (p3[17 -: 4] | p3);
  assign x10 = p3[21 -: 3];
  assign x11 = (ctrl[1] || ctrl[3] && ctrl[1] ? (x9[16] & ((ctrl[1] && ctrl[0] || ctrl[1] ? x10[11 +: 2] : x0[18 + s3]) - {2{(ctrl[3] && ctrl[1] || !ctrl[1] ? p1[13 +: 3] : x6)}})) : p3);
  assign x12 = (p3[12] ^ {2{p0}});
  assign x13 = p3[14 +: 3];
  assign x14 = (p1[17] - (x3 + (((ctrl[1] || !ctrl[1] || ctrl[1] ? x7 : x12[30 + s0 +: 4]) + {2{(p0[19 +: 1] - p0[20])}}) - x2)));
  assign x15 = {x13[9 +: 4], {2{p0}}};
  assign y0 = (({{{x15, x15[14 + s0]}, (x9 ^ p1[22])}, ({2{p0[12 + s0]}} + p3[6 + s3 +: 7])} ^ (ctrl[3] || ctrl[1] || ctrl[1] ? (p0 ^ p2) : p2[19 + s2 -: 5])) ^ x10);
  assign y1 = (x11 + x0[15 +: 2]);
  assign y2 = (x0[6 + s2] & (p0[15 +: 1] & (((x10 & x9[30 + s2 +: 8]) | {2{x1[17]}}) + ((x10[18] ^ x7[10 + s1 +: 4]) - x10[5 + s3 -: 7]))));
  assign y3 = p0;
endmodule
