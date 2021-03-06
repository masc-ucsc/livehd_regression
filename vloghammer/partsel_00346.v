module partsel_00346(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [7:27] x4;
  wire [0:24] x5;
  wire [26:0] x6;
  wire signed [4:31] x7;
  wire signed [6:26] x8;
  wire [31:4] x9;
  wire [3:26] x10;
  wire [28:6] x11;
  wire signed [0:26] x12;
  wire signed [2:31] x13;
  wire [2:31] x14;
  wire [26:4] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [28:5] p0 = 178229329;
  localparam signed [25:0] p1 = 613476249;
  localparam signed [26:3] p2 = 67853715;
  localparam signed [26:2] p3 = 44728852;
  assign x4 = ((x1 | (!ctrl[3] && ctrl[0] && ctrl[3] ? x3[20 + s0 +: 7] : p3[11 + s3 -: 7])) | (p3[10 + s1 +: 2] + ({2{(x1[10 + s1 -: 3] + p2[23])}} & (ctrl[0] && ctrl[0] && ctrl[2] ? (p3[6 + s0] & x0) : (x2 & p0)))));
  assign x5 = p0[18];
  assign x6 = {2{((!ctrl[1] && ctrl[3] && ctrl[2] ? x2[23 + s2 +: 3] : x0[18 -: 1]) & {x2, ({2{x0[18 + s0 +: 2]}} + (x3 + p0[4 + s0]))})}};
  assign x7 = x4[22 + s0 -: 4];
  assign x8 = (((ctrl[1] || !ctrl[0] && !ctrl[1] ? p0 : {p3, p2[25 + s1 +: 8]}) | (ctrl[3] && !ctrl[0] || !ctrl[2] ? ((p2[18] + x1[8 + s0 -: 3]) + x3[14]) : {(p2[12 +: 3] | p0[8 +: 2]), x7[10 + s2]})) & x0);
  assign x9 = x7;
  assign x10 = (p2[12 +: 3] - x1[11 +: 3]);
  assign x11 = x1;
  assign x12 = {((!ctrl[1] && ctrl[2] || ctrl[1] ? {(p0[16] + x10[12]), (p1[22 + s1 -: 3] | p2[19 -: 2])} : (ctrl[0] || ctrl[1] || ctrl[2] ? (p3[14 + s0] | (x2 + p1[19 +: 3])) : p1[9 +: 4])) - {2{{{p1, p0[21 + s3 +: 2]}, {p3, x4[24 + s1 -: 4]}}}}), (ctrl[2] && !ctrl[1] || ctrl[0] ? (x0 - p1[16]) : x3[25 + s1 +: 5])};
  assign x13 = x8[10];
  assign x14 = p2[19 + s2];
  assign x15 = x14;
  assign y0 = x7[17 +: 2];
  assign y1 = {((ctrl[0] || !ctrl[2] || !ctrl[0] ? p1[19] : (p1[16 -: 1] | (ctrl[3] || ctrl[1] || !ctrl[1] ? x0[10 +: 2] : x9[5 + s1 +: 2]))) & (!ctrl[3] && !ctrl[2] && !ctrl[1] ? p0 : x12[17 +: 2])), {x1[20], ({2{(p2[11 + s2] | x4[5 + s3])}} ^ (x12[11 +: 1] - ((x12[9 + s3 +: 3] ^ p2) | x1[12 + s0 +: 4])))}};
  assign y2 = {(ctrl[0] || !ctrl[0] || !ctrl[2] ? x10[20 + s1 -: 7] : x8[17 +: 4]), (({2{(p1[11] | (x11[1 + s3 -: 4] ^ (x7[10 +: 3] - p0[31 + s2 -: 8])))}} & (((x6[19 -: 4] - p1) & (p0[13 -: 3] ^ p0[14])) - {p0, p0[21 -: 2]})) + p3[20 -: 1])};
  assign y3 = (({2{((p3[10] - ((x12 | x5[9 + s3 -: 3]) + p2)) ^ x8[21 -: 1])}} + ({{x13[18 +: 3], x8}, x1[16 -: 2]} + x8[14 -: 2])) ^ (p2[15 -: 4] + {(p2[14] ^ x10[12]), p1[14 -: 1]}));
endmodule
