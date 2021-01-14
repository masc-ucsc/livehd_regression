module partsel_00911(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire signed [1:26] x4;
  wire signed [1:26] x5;
  wire signed [28:1] x6;
  wire signed [1:30] x7;
  wire signed [6:27] x8;
  wire [24:6] x9;
  wire [1:31] x10;
  wire signed [31:4] x11;
  wire [30:2] x12;
  wire [5:29] x13;
  wire signed [6:31] x14;
  wire signed [1:24] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [29:5] p0 = 928062525;
  localparam signed [6:26] p1 = 111884813;
  localparam signed [29:2] p2 = 199515066;
  localparam [30:5] p3 = 257551203;
  assign x4 = p0[19 -: 4];
  assign x5 = x2[23 -: 2];
  assign x6 = x5[12 -: 4];
  assign x7 = x1[17];
  assign x8 = (!ctrl[1] || !ctrl[1] && ctrl[0] ? {2{{(p1[12 + s0 -: 3] + x2[20 + s3 +: 5]), x1}}} : ((!ctrl[0] || ctrl[0] || ctrl[3] ? (((p2[6 + s1 +: 1] | x0) ^ x3[14 +: 3]) | (ctrl[1] && !ctrl[0] || ctrl[0] ? p2[8 + s0 +: 4] : p1[17 + s3 +: 5])) : p2) | p2[5 + s1]));
  assign x9 = ((ctrl[0] || !ctrl[2] && ctrl[0] ? p1[2 + s1 -: 8] : x6[13]) & p0[12]);
  assign x10 = (({2{{2{{2{x6[27 + s2 -: 8]}}}}}} ^ p3[12 +: 2]) - ({{2{p1[11 + s3]}}, (p1[13 -: 3] - (!ctrl[3] || ctrl[0] && ctrl[3] ? x7[11 +: 4] : p3[20 + s3 +: 7]))} ^ {2{x6[13]}}));
  assign x11 = ((p1[18] | ({2{(!ctrl[1] && ctrl[1] && ctrl[3] ? p1[19 +: 2] : p0[28 + s0 +: 7])}} ^ (p2[30 + s1 +: 4] + x2))) | x4[13 + s3 +: 2]);
  assign x12 = ({2{(((p1 + p2[5 + s2]) | (p0 & p3[20 -: 3])) + x10)}} - ((x2[7 + s3] ^ p3[13 + s2]) - (!ctrl[3] && !ctrl[3] && ctrl[3] ? {2{{x10, x6}}} : x8[30 + s2 +: 8])));
  assign x13 = x0[17 -: 1];
  assign x14 = (ctrl[0] || !ctrl[0] || ctrl[0] ? {2{{2{p3}}}} : x11[21]);
  assign x15 = {2{(x6[22 -: 4] ^ (((p3 + (x0 + p1)) + (p3[7 + s1 +: 6] | (p0[18 + s0 +: 8] | x3[2 + s2 +: 4]))) & p0))}};
  assign y0 = {x2, (ctrl[1] || ctrl[0] && !ctrl[0] ? {x0[17], (!ctrl[0] && ctrl[0] || !ctrl[0] ? x15 : p2[24 + s2 -: 1])} : ((!ctrl[2] && !ctrl[3] && !ctrl[2] ? x3 : p2) ^ ((p2[8] & x3[15 +: 1]) & {p3[13 + s1], x9})))};
  assign y1 = (p1 - (p0[8 + s0 +: 5] - ((p2[15] - (p2[12 +: 2] + x3[10])) | x0)));
  assign y2 = {2{{2{p0}}}};
  assign y3 = p0[8];
endmodule
