module partsel_00711(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire [26:6] x4;
  wire signed [28:3] x5;
  wire [5:24] x6;
  wire [26:1] x7;
  wire [28:6] x8;
  wire [31:3] x9;
  wire signed [3:27] x10;
  wire signed [28:7] x11;
  wire [29:1] x12;
  wire signed [6:29] x13;
  wire signed [27:4] x14;
  wire [1:25] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [0:24] p0 = 156360022;
  localparam signed [27:2] p1 = 829283605;
  localparam [1:24] p2 = 657549757;
  localparam [27:0] p3 = 932357129;
  assign x4 = ({(({p1[21], x2[13 + s0]} ^ (ctrl[0] && !ctrl[0] && !ctrl[3] ? (p3[8 +: 1] ^ p0[16]) : p2[13 + s3 -: 4])) - ({2{(x2[7 + s1 -: 7] - p2[19 -: 2])}} ^ (x0 ^ p0))), (ctrl[2] || !ctrl[3] || !ctrl[2] ? {(p0[19] - (x2[22 -: 3] - (x1[13 -: 1] | p2[2 + s3 +: 6]))), (ctrl[3] && ctrl[2] || ctrl[3] ? x0[6 + s0 -: 1] : p2[8])} : ({x1[15 + s2 -: 8], x1[16 -: 3]} - (p1[17 + s3] ^ x3)))} & p1);
  assign x5 = (!ctrl[2] && !ctrl[2] && ctrl[0] ? p1[8 + s2] : x4);
  assign x6 = x2[18 +: 1];
  assign x7 = p3[19 +: 3];
  assign x8 = (x0[18 +: 1] | p3);
  assign x9 = (((p1[21 -: 4] + {2{((p3[14 + s3] + (x8[30 + s1 +: 8] - p2[22 + s2 -: 3])) + p3[23 + s1 -: 1])}}) + (p0[22 -: 1] - {{2{p2}}, {2{x1[17 +: 1]}}})) | x6);
  assign x10 = (!ctrl[2] || !ctrl[3] && !ctrl[0] ? {2{(((x9[23 + s0 -: 3] + p0[6 + s3 +: 3]) & p0) ^ (x9[12 +: 3] ^ x0[14 + s3 +: 3]))}} : x9);
  assign x11 = p3;
  assign x12 = ((x9[8] | ((p2[13 + s3 -: 1] - x9) + (p3[10 + s1] & {2{p0[22 -: 1]}}))) & (x5[23 + s0 +: 2] | (x9 ^ x3[21 -: 3])));
  assign x13 = p1[15 + s0 -: 8];
  assign x14 = {(ctrl[2] || !ctrl[2] && !ctrl[0] ? {{2{x7[6 + s2]}}, {2{(p0[21 + s0 +: 1] + p0[16 +: 1])}}} : (ctrl[3] && ctrl[1] || ctrl[1] ? {2{x5[24 + s2 -: 4]}} : (p0[11] - x2[16 +: 4]))), (ctrl[2] || ctrl[1] && !ctrl[2] ? x1[14 + s1 -: 7] : x13[2 + s3 +: 5])};
  assign x15 = {{2{{{x4[9 +: 1], x1[31 + s2 -: 8]}, {2{(p0[10 + s2 +: 6] | (x1[12 -: 1] & p0[18 + s1]))}}}}}, p2[9 +: 2]};
  assign y0 = p3[19 + s2];
  assign y1 = (!ctrl[1] && !ctrl[1] && ctrl[2] ? p0[7 + s3] : ((x4 - p1) - {2{x14[13 +: 3]}}));
  assign y2 = {2{{2{({(p3 - x13[14 +: 4]), {2{p0}}} & {p0[9 + s1 +: 4], (p0[9 + s3] + p3[10 + s1 +: 8])})}}}};
  assign y3 = {p3[21], (x5[0 + s3 +: 4] - x11[28 + s2 +: 6])};
endmodule
