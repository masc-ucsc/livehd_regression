module partsel_00309(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire [3:28] x4;
  wire [29:2] x5;
  wire signed [24:4] x6;
  wire signed [25:0] x7;
  wire [1:31] x8;
  wire signed [24:5] x9;
  wire [24:0] x10;
  wire signed [0:28] x11;
  wire signed [26:6] x12;
  wire signed [24:6] x13;
  wire [1:31] x14;
  wire [25:6] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [29:0] p0 = 69130739;
  localparam [29:2] p1 = 751402956;
  localparam signed [30:0] p2 = 694364228;
  localparam [4:31] p3 = 308930293;
  assign x4 = (ctrl[0] && !ctrl[3] && !ctrl[0] ? ({2{{2{p2[16 -: 4]}}}} ^ {{(!ctrl[1] || !ctrl[0] && ctrl[1] ? x1[5 + s0 -: 1] : x2), (p2[4 + s3 +: 7] + x1[11])}, (x3[20 + s2 -: 1] ^ p2)}) : {2{p2}});
  assign x5 = (x1[15 + s3] + (x4[14 +: 4] & (!ctrl[3] || !ctrl[0] || !ctrl[2] ? {x0[25 + s1 -: 5], p2[14 -: 1]} : ((x0[11] + x1[11 +: 3]) - {2{p0[23]}}))));
  assign x6 = {2{((((x2 + p0[8 + s1]) - (p3 & x5)) + ({p1, x4} | p1[9])) | ({2{{(p1[10 + s2 -: 1] - p1), x2[9]}}} | x4[12 + s2]))}};
  assign x7 = {2{((({x3, x0[6 + s0]} - ((x3 - (p2[11 +: 4] & p2[27 + s2 -: 8])) ^ p3[7 + s3 +: 6])) ^ x3) + {((((x6[18 + s1 -: 2] & ((p2[12] & x4[13]) & x4[15 -: 4])) ^ p1) & (x3[22 + s0 +: 1] + x4[18 + s2 -: 3])) - (!ctrl[3] || ctrl[3] || ctrl[1] ? p1[11 +: 4] : (p3[4 + s2] - p3[16 -: 2]))), (ctrl[2] || !ctrl[3] && !ctrl[0] ? x1 : p0[4 + s2])})}};
  assign x8 = {x3[16], {{x7, {2{(x1[19 +: 4] - p0[12 + s0 +: 7])}}}, {2{(p2[10 + s2] & (x1[31 + s3 -: 4] & x0[16 + s1 +: 7]))}}}};
  assign x9 = p2[5 + s1];
  assign x10 = x0[18 -: 1];
  assign x11 = {{2{(x9[18 -: 2] + p0[11 + s1])}}, (((x3[18] | (p1[22 -: 2] - (p2[21 + s2 +: 1] & p2))) ^ {2{{x8[15 -: 3], x0[13 -: 3]}}}) & {2{x10[17 +: 2]}})};
  assign x12 = ((x9[21] + (ctrl[3] || ctrl[0] && ctrl[0] ? (p1 - (x2[16] + x7)) : p2[13 + s3 -: 2])) + {2{p3[20 + s2 +: 8]}});
  assign x13 = {({2{((((p3[17] + x8) + (x2[14 + s2] - x3[10 +: 2])) | x1[14 + s0]) | {2{x8[4 + s3 +: 7]}})}} | {((ctrl[0] || !ctrl[3] || !ctrl[0] ? x8[29 + s1 -: 8] : (p3[24 + s2 -: 1] - ((p1[12 -: 1] | p1) & x6[8 + s3]))) - (ctrl[3] && !ctrl[0] && ctrl[2] ? p2 : p1)), (!ctrl[2] && !ctrl[3] || ctrl[3] ? ((p3[17] ^ ((p1 ^ x8) | (x10[26 + s1 +: 5] - x10[14 + s1 +: 7]))) | x4[13]) : {2{p2[4 + s3 -: 7]}})}), x8[14 +: 1]};
  assign x14 = x5;
  assign x15 = x0[16 + s3 -: 4];
  assign y0 = (p1[10 +: 2] - p3[0 + s1 +: 2]);
  assign y1 = (p1[16 -: 2] - p2[6 + s0 +: 1]);
  assign y2 = x10[13];
  assign y3 = (p0[28 + s2 -: 7] + p3[11]);
endmodule
