module partsel_00610(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [27:0] x4;
  wire signed [29:3] x5;
  wire [24:3] x6;
  wire [31:4] x7;
  wire signed [7:31] x8;
  wire signed [4:28] x9;
  wire [31:2] x10;
  wire signed [5:30] x11;
  wire signed [27:3] x12;
  wire [26:0] x13;
  wire signed [29:5] x14;
  wire [28:3] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [0:24] p0 = 129452319;
  localparam signed [5:29] p1 = 88659680;
  localparam [4:27] p2 = 557099995;
  localparam signed [6:26] p3 = 859532880;
  assign x4 = ({2{(x1[13 + s0] ^ (!ctrl[0] && ctrl[0] && ctrl[1] ? p2[10] : {x0, x1[14 -: 2]}))}} ^ (ctrl[2] || ctrl[2] || ctrl[1] ? p1 : p3[12 -: 2]));
  assign x5 = (p1[20 -: 4] - (ctrl[3] || !ctrl[2] || !ctrl[0] ? {x0[10], (ctrl[3] || ctrl[0] || ctrl[2] ? x3[4 + s2 -: 5] : (!ctrl[2] || !ctrl[3] && !ctrl[1] ? (x3[14 + s1 +: 7] + p2[21 + s2 +: 2]) : p0[19]))} : {2{x1[13 +: 4]}}));
  assign x6 = {2{{2{(x2 & p1)}}}};
  assign x7 = (p2[6 + s0] ^ {2{p0[15 + s1]}});
  assign x8 = ({{x1, x4[9 + s0]}, {({p1, ((x5[15] - p3[28 + s0 -: 1]) & p1[15])} + (x6[9 +: 3] + x2[12])), ((!ctrl[3] || !ctrl[3] && ctrl[2] ? x3[20 -: 3] : p2[18]) & (((p3[8 +: 1] - (p3[18 + s2 -: 1] + p2)) ^ p3[13 -: 4]) - x6[18 + s3]))}} - ({x4[21 -: 4], (x7[2 + s0 +: 7] & (x7 ^ x1[26 + s0 +: 2]))} & (((x0[23 + s3 -: 2] - (p1 + x7[15])) ^ (ctrl[2] || ctrl[2] && ctrl[0] ? x2[13 + s2 +: 6] : (x3 & p1))) & (ctrl[0] && ctrl[2] || ctrl[0] ? {2{x0[22 -: 4]}} : {2{x0[17 +: 4]}}))));
  assign x9 = (ctrl[2] || !ctrl[1] || !ctrl[1] ? {({(x5 + p1[22 + s1 +: 5]), (p2[25 + s3 -: 6] | x8[12 + s0 -: 3])} ^ x4[2 + s0 -: 6]), ((x7[23] ^ x5[25 + s1 +: 6]) & (((p0[22 + s3 +: 6] + x0) - x5[18 -: 3]) + x3[7 + s1]))} : {{x4[11 + s1], p2}, {{(x4 ^ (x5[17 -: 4] | x5[23])), p3}, x7}});
  assign x10 = x1[25 + s1 +: 8];
  assign x11 = p3[12];
  assign x12 = {p2[6 + s2], {(p1[21] | p3), x2}};
  assign x13 = {2{(!ctrl[0] || !ctrl[0] || !ctrl[3] ? p1[0 + s1 +: 5] : {2{(x11[12 -: 3] & (ctrl[3] && !ctrl[0] && !ctrl[2] ? ((x0[8 + s0] | x6[15 + s3]) + p1[15 -: 3]) : p1[18 + s1]))}})}};
  assign x14 = (p0[15 +: 2] + x5[11 +: 3]);
  assign x15 = (({p0[13 + s3 +: 5], {2{p2}}} & {{x8[25 + s3 +: 8], x12[16 + s1 -: 5]}, (!ctrl[2] && ctrl[1] && ctrl[1] ? x10 : (p2[15 +: 3] ^ p2[5 + s2 -: 8]))}) | p2[15 + s2]);
  assign y0 = (!ctrl[1] || ctrl[0] || ctrl[3] ? {2{(!ctrl[0] || !ctrl[2] && !ctrl[0] ? p0 : p1)}} : (p2[1 + s1 -: 1] ^ p0));
  assign y1 = p2[8 +: 3];
  assign y2 = x0[15];
  assign y3 = (p1[10 + s3 -: 4] | p3[20]);
endmodule
